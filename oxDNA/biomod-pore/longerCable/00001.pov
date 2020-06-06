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
	<24.103191, 34.739845, 34.912384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142904, 35.129723, 34.832275>,  <24.166731, 35.363651, 34.784210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142904, 35.129723, 34.832275>,  <24.103191, 34.739845, 34.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.142904, 35.129723, 34.832275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927903, -0.017999, 0.372387,
		0.359360, -0.222803, -0.906211,
		0.099280, 0.974697, -0.200272,
		24.172688, 35.422131, 34.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687763, 34.920795, 34.538769>,  <24.103191, 34.739845, 34.912384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687763, 34.920795, 34.538769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621916, 35.257004, 34.745235>,  <24.582407, 35.458729, 34.869114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621916, 35.257004, 34.745235>,  <24.687763, 34.920795, 34.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621916, 35.257004, 34.745235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933478, -0.036283, 0.356796,
		0.318622, 0.540561, -0.778636,
		-0.164619, 0.840522, 0.516162,
		24.572531, 35.509159, 34.900085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384865, 35.315033, 34.504944>,  <24.687763, 34.920795, 34.538769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384865, 35.315033, 34.504944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162655, 35.459633, 34.804466>,  <25.029329, 35.546391, 34.984180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162655, 35.459633, 34.804466>,  <25.384865, 35.315033, 34.504944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162655, 35.459633, 34.804466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817681, 0.074002, 0.570896,
		0.150963, 0.929432, -0.336698,
		-0.555525, 0.361496, 0.748808,
		24.995996, 35.568081, 35.029110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585745, 35.976994, 34.729397>,  <25.384865, 35.315033, 34.504944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585745, 35.976994, 34.729397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380234, 35.859268, 35.051743>,  <25.256927, 35.788635, 35.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380234, 35.859268, 35.051743>,  <25.585745, 35.976994, 34.729397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380234, 35.859268, 35.051743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718863, 0.365006, 0.591614,
		-0.468262, 0.883263, 0.024037,
		-0.513777, -0.294309, 0.805863,
		25.226101, 35.770977, 35.293503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639067, 36.495075, 35.127758>,  <25.585745, 35.976994, 34.729397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639067, 36.495075, 35.127758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588865, 36.178192, 35.366638>,  <25.558744, 35.988060, 35.509968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588865, 36.178192, 35.366638>,  <25.639067, 36.495075, 35.127758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588865, 36.178192, 35.366638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499732, 0.469536, 0.727876,
		-0.857039, 0.389793, 0.336965,
		-0.125503, -0.792211, 0.597203,
		25.551214, 35.940529, 35.545799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384502, 36.757568, 35.835529>,  <25.639067, 36.495075, 35.127758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384502, 36.757568, 35.835529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601721, 36.421692, 35.837521>,  <25.732052, 36.220165, 35.838715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601721, 36.421692, 35.837521>,  <25.384502, 36.757568, 35.835529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601721, 36.421692, 35.837521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430551, 0.283527, 0.856877,
		-0.720921, -0.463179, 0.515497,
		0.543045, -0.839689, 0.004978,
		25.764635, 36.169785, 35.839012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857300, 36.395279, 36.324684>,  <25.384502, 36.757568, 35.835529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857300, 36.395279, 36.324684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589481, 36.660645, 36.191059>,  <24.428791, 36.819862, 36.110886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589481, 36.660645, 36.191059>,  <24.857300, 36.395279, 36.324684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589481, 36.660645, 36.191059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372419, -0.089301, -0.923758,
		-0.642662, -0.742909, -0.187275,
		-0.669544, 0.663409, -0.334063,
		24.388618, 36.859669, 36.090839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630646, 36.439217, 37.051704>,  <24.857300, 36.395279, 36.324684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630646, 36.439217, 37.051704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481962, 36.768013, 37.224289>,  <24.392752, 36.965290, 37.327839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481962, 36.768013, 37.224289>,  <24.630646, 36.439217, 37.051704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481962, 36.768013, 37.224289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923897, 0.373006, 0.085327,
		-0.090801, 0.430346, -0.898085,
		-0.371711, 0.821991, 0.431465,
		24.370449, 37.014610, 37.353729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963757, 37.151894, 36.708153>,  <24.630646, 36.439217, 37.051704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963757, 37.151894, 36.708153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856844, 37.187042, 37.091995>,  <24.792696, 37.208130, 37.322300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856844, 37.187042, 37.091995>,  <24.963757, 37.151894, 36.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856844, 37.187042, 37.091995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887596, 0.410137, 0.209670,
		-0.375145, 0.907781, -0.187618,
		-0.267283, 0.087872, 0.959603,
		24.776659, 37.213406, 37.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011972, 37.894768, 36.915924>,  <24.963757, 37.151894, 36.708153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011972, 37.894768, 36.915924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029495, 37.669716, 37.246143>,  <25.040009, 37.534687, 37.444275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029495, 37.669716, 37.246143>,  <25.011972, 37.894768, 36.915924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.029495, 37.669716, 37.246143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904691, 0.372888, 0.206126,
		-0.423810, 0.737838, 0.525338,
		0.043805, -0.562627, 0.825550,
		25.042637, 37.500927, 37.493809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236546, 38.366642, 37.459030>,  <25.011972, 37.894768, 36.915924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236546, 38.366642, 37.459030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329002, 37.994835, 37.573971>,  <25.384476, 37.771751, 37.642937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329002, 37.994835, 37.573971>,  <25.236546, 38.366642, 37.459030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329002, 37.994835, 37.573971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915529, 0.307744, 0.259037,
		-0.329211, 0.203208, 0.922131,
		0.231142, -0.929516, 0.287356,
		25.398344, 37.715981, 37.660179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618116, 38.422306, 38.173145>,  <25.236546, 38.366642, 37.459030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618116, 38.422306, 38.173145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710182, 38.066051, 38.016285>,  <25.765421, 37.852299, 37.922169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710182, 38.066051, 38.016285>,  <25.618116, 38.422306, 38.173145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710182, 38.066051, 38.016285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956178, 0.132041, 0.261321,
		-0.180963, -0.435116, 0.882001,
		0.230165, -0.890640, -0.392154,
		25.779232, 37.798859, 37.898640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908371, 37.970993, 38.674442>,  <25.618116, 38.422306, 38.173145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908371, 37.970993, 38.674442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062544, 37.863678, 38.321293>,  <26.155048, 37.799290, 38.109402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062544, 37.863678, 38.321293>,  <25.908371, 37.970993, 38.674442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062544, 37.863678, 38.321293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880185, -0.180302, 0.439051,
		-0.276974, -0.946316, 0.166646,
		0.385434, -0.268285, -0.882872,
		26.178175, 37.783192, 38.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374462, 37.437069, 38.660686>,  <25.908371, 37.970993, 38.674442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374462, 37.437069, 38.660686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119017, 37.150948, 38.774193>,  <25.965750, 36.979275, 38.842297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119017, 37.150948, 38.774193>,  <26.374462, 37.437069, 38.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119017, 37.150948, 38.774193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748823, 0.492673, -0.443326,
		0.177309, -0.495601, -0.850259,
		-0.638612, -0.715299, 0.283762,
		25.927433, 36.936359, 38.859322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887371, 37.133503, 38.105423>,  <26.374462, 37.437069, 38.660686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887371, 37.133503, 38.105423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698769, 37.131218, 38.458160>,  <25.585608, 37.129848, 38.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698769, 37.131218, 38.458160>,  <25.887371, 37.133503, 38.105423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698769, 37.131218, 38.458160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751305, 0.526213, -0.398298,
		-0.461763, -0.850334, -0.252403,
		-0.471504, -0.005713, 0.881846,
		25.557318, 37.129505, 38.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584143, 36.455402, 37.949524>,  <25.887371, 37.133503, 38.105423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584143, 36.455402, 37.949524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510361, 36.846272, 37.907379>,  <25.466091, 37.080795, 37.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510361, 36.846272, 37.907379>,  <25.584143, 36.455402, 37.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510361, 36.846272, 37.907379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953599, -0.203891, -0.221534,
		-0.237960, 0.059610, 0.969444,
		-0.184456, 0.977177, -0.105362,
		25.455025, 37.139423, 37.875771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071848, 36.802380, 38.556889>,  <25.584143, 36.455402, 37.949524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071848, 36.802380, 38.556889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072676, 36.995667, 38.206688>,  <25.073172, 37.111641, 37.996567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072676, 36.995667, 38.206688>,  <25.071848, 36.802380, 38.556889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072676, 36.995667, 38.206688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961624, -0.239245, -0.134321,
		-0.274365, 0.842177, 0.464179,
		0.002070, 0.483218, -0.875497,
		25.073298, 37.140633, 37.944038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491539, 37.351139, 38.622154>,  <25.071848, 36.802380, 38.556889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491539, 37.351139, 38.622154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571404, 37.250572, 38.243328>,  <24.619322, 37.190231, 38.016033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571404, 37.250572, 38.243328>,  <24.491539, 37.351139, 38.622154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.571404, 37.250572, 38.243328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974238, -0.154364, -0.164410,
		-0.104857, 0.955491, -0.275757,
		0.199660, -0.251413, -0.947062,
		24.631302, 37.175148, 37.959209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095350, 37.545471, 39.283344>,  <24.491539, 37.351139, 38.622154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095350, 37.545471, 39.283344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051203, 37.188492, 39.458317>,  <24.024715, 36.974304, 39.563301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051203, 37.188492, 39.458317>,  <24.095350, 37.545471, 39.283344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051203, 37.188492, 39.458317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983321, -0.162067, -0.082550,
		0.144566, 0.421025, 0.895454,
		-0.110368, -0.892453, 0.437432,
		24.018093, 36.920757, 39.589546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434668, 37.523220, 39.884743>,  <24.095350, 37.545471, 39.283344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434668, 37.523220, 39.884743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463099, 37.159336, 39.721092>,  <24.480156, 36.941006, 39.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463099, 37.159336, 39.721092>,  <24.434668, 37.523220, 39.884743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463099, 37.159336, 39.721092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994563, 0.033338, 0.098654,
		-0.076107, -0.413914, 0.907129,
		0.071076, -0.909705, -0.409127,
		24.484421, 36.886425, 39.598354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124674, 37.340668, 40.069073>,  <24.434668, 37.523220, 39.884743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124674, 37.340668, 40.069073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021399, 37.079269, 39.784458>,  <24.959433, 36.922432, 39.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021399, 37.079269, 39.784458>,  <25.124674, 37.340668, 40.069073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021399, 37.079269, 39.784458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965890, -0.159441, -0.204048,
		0.019897, -0.739947, 0.672371,
		-0.258188, -0.653496, -0.711535,
		24.943943, 36.883221, 39.570999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654593, 36.839573, 40.049225>,  <25.124674, 37.340668, 40.069073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654593, 36.839573, 40.049225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456699, 36.690434, 39.735226>,  <25.337963, 36.600948, 39.546825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456699, 36.690434, 39.735226>,  <25.654593, 36.839573, 40.049225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456699, 36.690434, 39.735226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849686, -0.397121, -0.346884,
		-0.182403, -0.838617, 0.513275,
		-0.494735, -0.372850, -0.784997,
		25.308279, 36.578579, 39.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738989, 36.021610, 39.932396>,  <25.654593, 36.839573, 40.049225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738989, 36.021610, 39.932396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732048, 36.268826, 39.618011>,  <25.727884, 36.417152, 39.429382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732048, 36.268826, 39.618011>,  <25.738989, 36.021610, 39.932396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732048, 36.268826, 39.618011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890831, -0.347379, -0.292826,
		-0.454003, -0.705238, -0.544537,
		-0.017352, 0.618035, -0.785959,
		25.726843, 36.454235, 39.382225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625469, 35.598194, 39.430511>,  <25.738989, 36.021610, 39.932396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625469, 35.598194, 39.430511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827641, 35.940220, 39.384209>,  <25.948944, 36.145435, 39.356426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827641, 35.940220, 39.384209>,  <25.625469, 35.598194, 39.430511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827641, 35.940220, 39.384209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861582, -0.507434, 0.013646,
		-0.047072, -0.106633, -0.993184,
		0.505431, 0.855067, -0.115759,
		25.979269, 36.196739, 39.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065638, 35.601097, 38.841064>,  <25.625469, 35.598194, 39.430511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065638, 35.601097, 38.841064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188290, 35.821545, 39.151482>,  <26.261881, 35.953815, 39.337730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188290, 35.821545, 39.151482>,  <26.065638, 35.601097, 38.841064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188290, 35.821545, 39.151482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802997, -0.587538, 0.099971,
		0.511051, 0.592505, -0.622708,
		0.306631, 0.551123, 0.776042,
		26.280279, 35.986881, 39.384293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665480, 36.011429, 38.596836>,  <26.065638, 35.601097, 38.841064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665480, 36.011429, 38.596836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675371, 35.895836, 38.979641>,  <26.681305, 35.826481, 39.209324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675371, 35.895836, 38.979641>,  <26.665480, 36.011429, 38.596836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675371, 35.895836, 38.979641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866832, -0.470675, -0.164524,
		0.497988, 0.833639, 0.238861,
		0.024727, -0.288983, 0.957015,
		26.682789, 35.809139, 39.266747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281507, 35.961861, 38.743988>,  <26.665480, 36.011429, 38.596836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281507, 35.961861, 38.743988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122673, 35.757801, 39.049160>,  <27.027372, 35.635365, 39.232265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122673, 35.757801, 39.049160>,  <27.281507, 35.961861, 38.743988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122673, 35.757801, 39.049160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762041, -0.646544, -0.035703,
		0.511484, 0.567209, 0.645491,
		-0.397087, -0.510152, 0.762933,
		27.003548, 35.604755, 39.278038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389807, 36.681839, 39.025845>,  <27.281507, 35.961861, 38.743988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389807, 36.681839, 39.025845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429565, 36.988884, 39.279106>,  <27.453421, 37.173111, 39.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429565, 36.988884, 39.279106>,  <27.389807, 36.681839, 39.025845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429565, 36.988884, 39.279106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980873, -0.031437, 0.192093,
		0.167358, -0.640140, 0.749808,
		0.099395, 0.767615, 0.633157,
		27.459383, 37.219170, 39.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771481, 36.782364, 39.336353>,  <27.389807, 36.681839, 39.025845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771481, 36.782364, 39.336353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953339, 37.123013, 39.440689>,  <27.062454, 37.327400, 39.503292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953339, 37.123013, 39.440689>,  <26.771481, 36.782364, 39.336353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953339, 37.123013, 39.440689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862050, 0.347094, 0.369319,
		0.223984, -0.392766, 0.891945,
		0.454645, 0.851622, 0.260840,
		27.089731, 37.378498, 39.518940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649502, 36.984432, 40.054939>,  <26.771481, 36.782364, 39.336353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649502, 36.984432, 40.054939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765331, 37.315693, 39.862980>,  <26.834829, 37.514450, 39.747803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765331, 37.315693, 39.862980>,  <26.649502, 36.984432, 40.054939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765331, 37.315693, 39.862980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816235, 0.475524, 0.328081,
		0.499906, 0.296707, 0.813670,
		0.289576, 0.828156, -0.479900,
		26.852203, 37.564140, 39.719009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233953, 37.412312, 40.442631>,  <26.649502, 36.984432, 40.054939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233953, 37.412312, 40.442631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393534, 37.684513, 40.196785>,  <26.489283, 37.847836, 40.049278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393534, 37.684513, 40.196785>,  <26.233953, 37.412312, 40.442631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393534, 37.684513, 40.196785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761576, 0.619214, 0.191248,
		0.510724, 0.391779, 0.765291,
		0.398953, 0.680503, -0.614617,
		26.513220, 37.888664, 40.012402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347368, 37.994328, 40.828342>,  <26.233953, 37.412312, 40.442631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347368, 37.994328, 40.828342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283865, 38.091927, 40.445667>,  <26.245762, 38.150486, 40.216061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283865, 38.091927, 40.445667>,  <26.347368, 37.994328, 40.828342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283865, 38.091927, 40.445667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795672, 0.542076, 0.270294,
		0.584552, 0.804125, 0.108084,
		-0.158760, 0.244000, -0.956692,
		26.236237, 38.165127, 40.158661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242287, 38.673481, 40.925137>,  <26.347368, 37.994328, 40.828342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242287, 38.673481, 40.925137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080820, 38.537384, 40.585423>,  <25.983940, 38.455727, 40.381592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080820, 38.537384, 40.585423>,  <26.242287, 38.673481, 40.925137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080820, 38.537384, 40.585423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832319, 0.521987, 0.186480,
		0.379867, 0.782153, -0.493900,
		-0.403665, -0.340245, -0.849287,
		25.959721, 38.435310, 40.330635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542171, 38.757996, 40.685799>,  <26.242287, 38.673481, 40.925137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542171, 38.757996, 40.685799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173058, 38.767384, 40.839638>,  <24.951590, 38.773018, 40.931942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173058, 38.767384, 40.839638>,  <25.542171, 38.757996, 40.685799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173058, 38.767384, 40.839638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370937, 0.215986, -0.903192,
		-0.104267, -0.976114, -0.190602,
		-0.922786, 0.023472, 0.384597,
		24.896221, 38.774426, 40.955017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218023, 38.395599, 40.095367>,  <25.542171, 38.757996, 40.685799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218023, 38.395599, 40.095367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498602, 38.665966, 40.004936>,  <25.666948, 38.828186, 39.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498602, 38.665966, 40.004936>,  <25.218023, 38.395599, 40.095367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498602, 38.665966, 40.004936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645622, -0.736958, -0.200162,
		-0.301905, -0.005561, -0.953322,
		0.701445, 0.675915, -0.226082,
		25.709036, 38.868740, 39.937111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439194, 38.350735, 39.364586>,  <25.218023, 38.395599, 40.095367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439194, 38.350735, 39.364586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724884, 38.521267, 39.586620>,  <25.896297, 38.623589, 39.719841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724884, 38.521267, 39.586620>,  <25.439194, 38.350735, 39.364586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724884, 38.521267, 39.586620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679996, -0.610526, -0.406032,
		0.165788, 0.667455, -0.725960,
		0.714226, 0.426335, 0.555085,
		25.939152, 38.649166, 39.753147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039980, 38.635292, 38.938683>,  <25.439194, 38.350735, 39.364586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039980, 38.635292, 38.938683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122677, 38.508949, 39.309086>,  <26.172295, 38.433144, 39.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122677, 38.508949, 39.309086>,  <26.039980, 38.635292, 38.938683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122677, 38.508949, 39.309086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644486, -0.668142, -0.371784,
		0.736136, 0.673664, 0.065430,
		0.206741, -0.315853, 0.926010,
		26.184700, 38.414192, 39.586887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726986, 38.591854, 38.960564>,  <26.039980, 38.635292, 38.938683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726986, 38.591854, 38.960564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666609, 38.380695, 39.294880>,  <26.630383, 38.254002, 39.495468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666609, 38.380695, 39.294880>,  <26.726986, 38.591854, 38.960564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666609, 38.380695, 39.294880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769299, -0.593685, -0.236045,
		0.620802, 0.607343, 0.495721,
		-0.150941, -0.527895, 0.835789,
		26.621326, 38.222328, 39.545616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350451, 38.650959, 39.227680>,  <26.726986, 38.591854, 38.960564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350451, 38.650959, 39.227680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201740, 38.317810, 39.391685>,  <27.112514, 38.117920, 39.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201740, 38.317810, 39.391685>,  <27.350451, 38.650959, 39.227680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201740, 38.317810, 39.391685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678800, -0.545180, -0.491945,
		0.633255, 0.095420, 0.768038,
		-0.371778, -0.832871, 0.410009,
		27.090206, 38.067947, 39.514687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937138, 38.263779, 39.534264>,  <27.350451, 38.650959, 39.227680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937138, 38.263779, 39.534264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625525, 38.039783, 39.421463>,  <27.438557, 37.905388, 39.353783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625525, 38.039783, 39.421463>,  <27.937138, 38.263779, 39.534264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625525, 38.039783, 39.421463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616046, -0.600019, -0.510357,
		0.116587, -0.571311, 0.812411,
		-0.779034, -0.559984, -0.281999,
		27.391815, 37.871788, 39.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148817, 37.663624, 39.893845>,  <27.937138, 38.263779, 39.534264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148817, 37.663624, 39.893845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904657, 37.604076, 39.582653>,  <27.758162, 37.568348, 39.395939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904657, 37.604076, 39.582653>,  <28.148817, 37.663624, 39.893845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904657, 37.604076, 39.582653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772043, -0.331410, -0.542326,
		-0.177096, -0.931669, 0.317223,
		-0.610399, -0.148866, -0.777980,
		27.721539, 37.559418, 39.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126818, 37.066231, 39.439758>,  <28.148817, 37.663624, 39.893845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126818, 37.066231, 39.439758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315252, 36.969120, 39.100552>,  <28.428312, 36.910854, 38.897026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315252, 36.969120, 39.100552>,  <28.126818, 37.066231, 39.439758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315252, 36.969120, 39.100552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761704, 0.596793, 0.252280,
		0.444845, -0.764786, 0.466064,
		0.471084, -0.242777, -0.848020,
		28.456577, 36.896286, 38.846146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804010, 36.751049, 39.609108>,  <28.126818, 37.066231, 39.439758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804010, 36.751049, 39.609108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814217, 36.919422, 39.246414>,  <28.820341, 37.020447, 39.028797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814217, 36.919422, 39.246414>,  <28.804010, 36.751049, 39.609108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814217, 36.919422, 39.246414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866543, 0.442943, 0.230010,
		0.498450, -0.791594, -0.353450,
		0.025516, 0.420928, -0.906735,
		28.821871, 37.045700, 38.974392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490229, 37.027477, 39.566395>,  <28.804010, 36.751049, 39.609108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490229, 37.027477, 39.566395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337004, 37.133606, 39.212475>,  <29.245068, 37.197285, 39.000122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337004, 37.133606, 39.212475>,  <29.490229, 37.027477, 39.566395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337004, 37.133606, 39.212475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864936, 0.439277, -0.242739,
		0.324266, -0.858276, -0.397761,
		-0.383064, 0.265325, -0.884796,
		29.222084, 37.213203, 38.947037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860180, 36.856197, 38.975128>,  <29.490229, 37.027477, 39.566395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860180, 36.856197, 38.975128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653814, 37.189102, 38.893970>,  <29.529995, 37.388847, 38.845276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653814, 37.189102, 38.893970>,  <29.860180, 36.856197, 38.975128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653814, 37.189102, 38.893970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854447, 0.483016, -0.191354,
		-0.061257, -0.272084, -0.960322,
		-0.515915, 0.832265, -0.202893,
		29.499041, 37.438782, 38.833103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106859, 37.113857, 38.346859>,  <29.860180, 36.856197, 38.975128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106859, 37.113857, 38.346859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930319, 37.434521, 38.508129>,  <29.824394, 37.626919, 38.604889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930319, 37.434521, 38.508129>,  <30.106859, 37.113857, 38.346859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930319, 37.434521, 38.508129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776543, 0.566363, -0.276069,
		-0.449656, 0.191239, -0.872489,
		-0.441350, 0.801661, 0.403174,
		29.797915, 37.675018, 38.629082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829153, 37.653698, 37.919136>,  <30.106859, 37.113857, 38.346859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829153, 37.653698, 37.919136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853453, 37.861996, 38.259754>,  <29.868032, 37.986973, 38.464127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853453, 37.861996, 38.259754>,  <29.829153, 37.653698, 37.919136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853453, 37.861996, 38.259754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175341, 0.834290, -0.522701,
		-0.982632, 0.181065, -0.040625,
		0.060750, 0.520746, 0.851548,
		29.871677, 38.018219, 38.515217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531338, 37.668888, 37.802841>,  <29.829153, 37.653698, 37.919136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531338, 37.668888, 37.802841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773678, 37.950615, 37.654850>,  <30.919081, 38.119652, 37.566055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773678, 37.950615, 37.654850>,  <30.531338, 37.668888, 37.802841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773678, 37.950615, 37.654850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707214, -0.263766, 0.655954,
		0.364410, -0.659065, -0.657905,
		0.605849, 0.704316, -0.369981,
		30.955433, 38.161911, 37.543854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091404, 37.341293, 37.452950>,  <30.531338, 37.668888, 37.802841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091404, 37.341293, 37.452950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179985, 37.701195, 37.603363>,  <31.233133, 37.917137, 37.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179985, 37.701195, 37.603363>,  <31.091404, 37.341293, 37.452950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179985, 37.701195, 37.603363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665654, -0.421275, 0.615981,
		0.712646, 0.113901, -0.692215,
		0.221452, 0.899752, 0.376039,
		31.246420, 37.971119, 37.716175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738138, 37.365627, 37.447205>,  <31.091404, 37.341293, 37.452950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738138, 37.365627, 37.447205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625305, 37.596016, 37.754108>,  <31.557606, 37.734249, 37.938251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625305, 37.596016, 37.754108>,  <31.738138, 37.365627, 37.447205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625305, 37.596016, 37.754108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678967, -0.445168, 0.583806,
		0.677816, 0.685622, -0.265495,
		-0.282081, 0.575975, 0.767257,
		31.540682, 37.768810, 37.984287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291115, 37.869514, 37.673393>,  <31.738138, 37.365627, 37.447205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291115, 37.869514, 37.673393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031239, 37.758450, 37.956463>,  <31.875313, 37.691811, 38.126305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031239, 37.758450, 37.956463>,  <32.291115, 37.869514, 37.673393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031239, 37.758450, 37.956463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759966, -0.260316, 0.595556,
		0.018856, 0.924737, 0.380139,
		-0.649689, -0.277664, 0.707677,
		31.836332, 37.675152, 38.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263779, 38.295284, 38.314796>,  <32.291115, 37.869514, 37.673393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263779, 38.295284, 38.314796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189598, 37.916336, 38.419178>,  <32.145088, 37.688969, 38.481808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189598, 37.916336, 38.419178>,  <32.263779, 38.295284, 38.314796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189598, 37.916336, 38.419178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871081, -0.035588, 0.489847,
		-0.454779, 0.318159, 0.831836,
		-0.185453, -0.947369, 0.260958,
		32.133961, 37.632126, 38.497467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175266, 37.908447, 39.011337>,  <32.263779, 38.295284, 38.314796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175266, 37.908447, 39.011337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361195, 37.632858, 38.788895>,  <32.472752, 37.467506, 38.655430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361195, 37.632858, 38.788895>,  <32.175266, 37.908447, 39.011337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361195, 37.632858, 38.788895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585850, -0.231606, 0.776620,
		-0.663868, -0.686786, 0.295979,
		0.464821, -0.688973, -0.556110,
		32.500641, 37.426167, 38.622063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086250, 37.302563, 39.314987>,  <32.175266, 37.908447, 39.011337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086250, 37.302563, 39.314987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430431, 37.304089, 39.111183>,  <32.636940, 37.305004, 38.988899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430431, 37.304089, 39.111183>,  <32.086250, 37.302563, 39.314987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430431, 37.304089, 39.111183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482553, -0.327136, 0.812481,
		-0.163581, -0.944970, -0.283326,
		0.860456, 0.003814, -0.509511,
		32.688568, 37.305233, 38.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421497, 36.624504, 39.346027>,  <32.086250, 37.302563, 39.314987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421497, 36.624504, 39.346027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678417, 36.926205, 39.291546>,  <32.832569, 37.107224, 39.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678417, 36.926205, 39.291546>,  <32.421497, 36.624504, 39.346027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678417, 36.926205, 39.291546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375158, -0.154424, 0.914008,
		0.668358, -0.638169, -0.382150,
		0.642304, 0.754251, -0.136204,
		32.871109, 37.152481, 39.250687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132942, 36.472141, 39.555927>,  <32.421497, 36.624504, 39.346027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132942, 36.472141, 39.555927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104771, 36.869133, 39.595989>,  <33.087868, 37.107327, 39.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104771, 36.869133, 39.595989>,  <33.132942, 36.472141, 39.555927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104771, 36.869133, 39.595989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315857, -0.073051, 0.945990,
		0.946189, 0.098263, -0.308335,
		-0.070431, 0.992476, 0.100157,
		33.083641, 37.166874, 39.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789341, 36.681423, 39.843292>,  <33.132942, 36.472141, 39.555927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789341, 36.681423, 39.843292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490067, 36.928852, 39.939274>,  <33.310501, 37.077309, 39.996864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490067, 36.928852, 39.939274>,  <33.789341, 36.681423, 39.843292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490067, 36.928852, 39.939274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360235, 0.075019, 0.929840,
		0.557173, 0.782137, -0.278961,
		-0.748190, 0.618574, 0.239955,
		33.265610, 37.114426, 40.011261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998158, 37.045200, 40.485046>,  <33.789341, 36.681423, 39.843292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998158, 37.045200, 40.485046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598392, 37.055813, 40.493660>,  <33.358532, 37.062180, 40.498829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598392, 37.055813, 40.493660>,  <33.998158, 37.045200, 40.485046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598392, 37.055813, 40.493660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017288, -0.151133, 0.988362,
		0.029475, 0.988157, 0.150586,
		-0.999416, 0.026528, 0.021538,
		33.298569, 37.063770, 40.500122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869362, 37.617889, 41.061760>,  <33.998158, 37.045200, 40.485046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869362, 37.617889, 41.061760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619019, 37.311916, 41.000866>,  <33.468811, 37.128334, 40.964329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619019, 37.311916, 41.000866>,  <33.869362, 37.617889, 41.061760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619019, 37.311916, 41.000866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049143, -0.233475, 0.971120,
		-0.778384, 0.600306, 0.183714,
		-0.625862, -0.764933, -0.152232,
		33.431259, 37.082436, 40.955196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583553, 37.525570, 41.079952>,  <33.869362, 37.617889, 41.061760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583553, 37.525570, 41.079952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976990, 37.502136, 41.011700>,  <35.213051, 37.488075, 40.970749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976990, 37.502136, 41.011700>,  <34.583553, 37.525570, 41.079952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976990, 37.502136, 41.011700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179978, -0.253660, -0.950402,
		0.012397, 0.965518, -0.260042,
		0.983592, -0.058584, -0.170628,
		35.272068, 37.484562, 40.960510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761162, 37.807632, 40.515694>,  <34.583553, 37.525570, 41.079952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761162, 37.807632, 40.515694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036572, 37.518353, 40.537289>,  <35.201817, 37.344784, 40.550247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036572, 37.518353, 40.537289>,  <34.761162, 37.807632, 40.515694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036572, 37.518353, 40.537289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238121, -0.295763, -0.925107,
		0.685009, 0.624099, -0.375850,
		0.688521, -0.723204, 0.053989,
		35.243126, 37.301392, 40.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267223, 37.961327, 39.990341>,  <34.761162, 37.807632, 40.515694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267223, 37.961327, 39.990341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240700, 37.576344, 40.095627>,  <35.224785, 37.345352, 40.158798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240700, 37.576344, 40.095627>,  <35.267223, 37.961327, 39.990341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240700, 37.576344, 40.095627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029200, -0.265549, -0.963655,
		0.997372, -0.056210, 0.045711,
		-0.066305, -0.962457, 0.263209,
		35.220810, 37.287605, 40.174591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205799, 38.062885, 39.339321>,  <35.267223, 37.961327, 39.990341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205799, 38.062885, 39.339321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127682, 37.670944, 39.322632>,  <35.080811, 37.435780, 39.312618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127682, 37.670944, 39.322632>,  <35.205799, 38.062885, 39.339321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127682, 37.670944, 39.322632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973522, 0.188531, 0.129270,
		-0.118801, 0.065862, -0.990731,
		-0.195298, -0.979856, -0.041720,
		35.069092, 37.376987, 39.310116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562286, 38.515678, 39.275452>,  <35.205799, 38.062885, 39.339321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562286, 38.515678, 39.275452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435497, 38.479538, 38.897804>,  <34.359425, 38.457851, 38.671215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435497, 38.479538, 38.897804>,  <34.562286, 38.515678, 39.275452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435497, 38.479538, 38.897804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585284, 0.801937, 0.119752,
		0.746306, 0.590537, -0.307075,
		-0.316972, -0.090354, -0.944121,
		34.340405, 38.452431, 38.614567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163639, 38.020691, 39.413906>,  <34.562286, 38.515678, 39.275452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163639, 38.020691, 39.413906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825058, 38.123432, 39.227341>,  <33.621910, 38.185078, 39.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825058, 38.123432, 39.227341>,  <34.163639, 38.020691, 39.413906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825058, 38.123432, 39.227341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061866, -0.822586, -0.565265,
		-0.528852, -0.507327, 0.680393,
		-0.846456, 0.256848, -0.466413,
		33.571121, 38.200485, 39.087418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231659, 37.555275, 38.917892>,  <34.163639, 38.020691, 39.413906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231659, 37.555275, 38.917892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877728, 37.730389, 38.854115>,  <33.665367, 37.835457, 38.815849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877728, 37.730389, 38.854115>,  <34.231659, 37.555275, 38.917892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877728, 37.730389, 38.854115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197769, -0.662760, -0.722244,
		-0.421860, -0.607530, 0.673010,
		-0.884829, 0.437786, -0.159441,
		33.612278, 37.861725, 38.806282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758617, 37.095127, 39.007439>,  <34.231659, 37.555275, 38.917892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758617, 37.095127, 39.007439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659554, 37.352203, 38.717442>,  <33.600117, 37.506451, 38.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659554, 37.352203, 38.717442>,  <33.758617, 37.095127, 39.007439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659554, 37.352203, 38.717442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071047, -0.758333, -0.647984,
		-0.966238, -0.108972, 0.233471,
		-0.247661, 0.642695, -0.724988,
		33.585255, 37.545013, 38.499947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350651, 36.584927, 38.747562>,  <33.758617, 37.095127, 39.007439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350651, 36.584927, 38.747562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457397, 36.886127, 38.506977>,  <33.521446, 37.066849, 38.362625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457397, 36.886127, 38.506977>,  <33.350651, 36.584927, 38.747562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457397, 36.886127, 38.506977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090362, -0.640903, -0.762285,
		-0.959488, 0.149078, -0.239078,
		0.266866, 0.753007, -0.601468,
		33.537457, 37.112030, 38.326538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908165, 36.417130, 38.017601>,  <33.350651, 36.584927, 38.747562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908165, 36.417130, 38.017601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182632, 36.695995, 37.934521>,  <33.347313, 36.863316, 37.884674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182632, 36.695995, 37.934521>,  <32.908165, 36.417130, 38.017601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182632, 36.695995, 37.934521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091625, -0.366075, -0.926063,
		-0.721653, 0.616401, -0.315065,
		0.686164, 0.697164, -0.207702,
		33.388481, 36.905144, 37.872211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807983, 36.628342, 37.262280>,  <32.908165, 36.417130, 38.017601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807983, 36.628342, 37.262280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183167, 36.727737, 37.359013>,  <33.408276, 36.787376, 37.417053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183167, 36.727737, 37.359013>,  <32.807983, 36.628342, 37.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183167, 36.727737, 37.359013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318680, -0.342917, -0.883658,
		-0.136652, 0.905903, -0.400831,
		0.937960, 0.248491, 0.241833,
		33.464554, 36.802284, 37.431564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058830, 37.070740, 36.755280>,  <32.807983, 36.628342, 37.262280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058830, 37.070740, 36.755280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379230, 36.905022, 36.928146>,  <33.571468, 36.805592, 37.031868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379230, 36.905022, 36.928146>,  <33.058830, 37.070740, 36.755280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379230, 36.905022, 36.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294768, -0.355385, -0.887025,
		0.521073, 0.837892, -0.162542,
		0.800996, -0.414292, 0.432166,
		33.619530, 36.780735, 37.057796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639275, 37.232277, 36.296383>,  <33.058830, 37.070740, 36.755280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639275, 37.232277, 36.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728184, 36.914997, 36.523163>,  <33.781528, 36.724628, 36.659233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728184, 36.914997, 36.523163>,  <33.639275, 37.232277, 36.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728184, 36.914997, 36.523163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277428, -0.506009, -0.816694,
		0.934681, 0.338816, 0.107583,
		0.222271, -0.793195, 0.566954,
		33.794865, 36.677040, 36.693249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363567, 37.197361, 36.206715>,  <33.639275, 37.232277, 36.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363567, 37.197361, 36.206715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190239, 36.846664, 36.290188>,  <34.086243, 36.636246, 36.340271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190239, 36.846664, 36.290188>,  <34.363567, 37.197361, 36.206715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190239, 36.846664, 36.290188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398463, -0.394070, -0.828213,
		0.808369, -0.275728, 0.520109,
		-0.433321, -0.876746, 0.208687,
		34.060242, 36.583641, 36.352795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676109, 36.765476, 35.814171>,  <34.363567, 37.197361, 36.206715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676109, 36.765476, 35.814171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399464, 36.499496, 35.926960>,  <34.233475, 36.339909, 35.994633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399464, 36.499496, 35.926960>,  <34.676109, 36.765476, 35.814171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399464, 36.499496, 35.926960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301322, -0.620445, -0.724054,
		0.656409, -0.415802, 0.629473,
		-0.691616, -0.664949, 0.281975,
		34.191978, 36.300011, 36.011551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030361, 36.121746, 35.760979>,  <34.676109, 36.765476, 35.814171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030361, 36.121746, 35.760979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647690, 36.005630, 35.769901>,  <34.418087, 35.935959, 35.775253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647690, 36.005630, 35.769901>,  <35.030361, 36.121746, 35.760979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647690, 36.005630, 35.769901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173138, -0.628828, -0.758023,
		0.234074, -0.721322, 0.651847,
		-0.956678, -0.290293, 0.022304,
		34.360687, 35.918541, 35.776592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069637, 35.416084, 35.840313>,  <35.030361, 36.121746, 35.760979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069637, 35.416084, 35.840313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703865, 35.490574, 35.696564>,  <34.484402, 35.535267, 35.610313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703865, 35.490574, 35.696564>,  <35.069637, 35.416084, 35.840313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703865, 35.490574, 35.696564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106284, -0.746241, -0.657136,
		-0.390548, -0.639098, 0.662590,
		-0.914426, 0.186220, -0.359369,
		34.429539, 35.546440, 35.588753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687923, 34.740047, 35.807884>,  <35.069637, 35.416084, 35.840313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687923, 34.740047, 35.807884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538387, 34.988014, 35.531929>,  <34.448666, 35.136795, 35.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538387, 34.988014, 35.531929>,  <34.687923, 34.740047, 35.807884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538387, 34.988014, 35.531929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030548, -0.751648, -0.658857,
		-0.926991, -0.225231, 0.299931,
		-0.373838, 0.619917, -0.689891,
		34.426235, 35.173988, 35.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381443, 34.300621, 35.310181>,  <34.687923, 34.740047, 35.807884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381443, 34.300621, 35.310181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398911, 34.652390, 35.120567>,  <34.409389, 34.863453, 35.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398911, 34.652390, 35.120567>,  <34.381443, 34.300621, 35.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398911, 34.652390, 35.120567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154060, -0.474737, -0.866539,
		-0.987096, -0.035188, -0.156216,
		0.043670, 0.879424, -0.474032,
		34.412010, 34.916218, 34.978359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937309, 34.293327, 34.843491>,  <34.381443, 34.300621, 35.310181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937309, 34.293327, 34.843491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187248, 34.569603, 34.697876>,  <34.337212, 34.735367, 34.610508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187248, 34.569603, 34.697876>,  <33.937309, 34.293327, 34.843491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187248, 34.569603, 34.697876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013258, -0.475589, -0.879568,
		-0.780637, 0.544766, -0.306326,
		0.624844, 0.690685, -0.364039,
		34.374702, 34.776810, 34.588665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629780, 34.628651, 34.365837>,  <33.937309, 34.293327, 34.843491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629780, 34.628651, 34.365837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012489, 34.702568, 34.275997>,  <34.242115, 34.746918, 34.222092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012489, 34.702568, 34.275997>,  <33.629780, 34.628651, 34.365837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012489, 34.702568, 34.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144960, -0.366497, -0.919058,
		-0.252150, 0.911884, -0.323865,
		0.956769, 0.184793, -0.224599,
		34.299519, 34.758007, 34.208618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589333, 34.992905, 33.825848>,  <33.629780, 34.628651, 34.365837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589333, 34.992905, 33.825848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965446, 34.856777, 33.822914>,  <34.191113, 34.775101, 33.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965446, 34.856777, 33.822914>,  <33.589333, 34.992905, 33.825848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965446, 34.856777, 33.822914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058552, -0.140473, -0.988352,
		0.335326, 0.929758, -0.152010,
		0.940281, -0.340321, -0.007335,
		34.247532, 34.754681, 33.820713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096569, 35.416557, 33.386101>,  <33.589333, 34.992905, 33.825848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096569, 35.416557, 33.386101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259727, 35.051979, 33.407570>,  <34.357624, 34.833233, 33.420452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259727, 35.051979, 33.407570>,  <34.096569, 35.416557, 33.386101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259727, 35.051979, 33.407570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103590, -0.012209, -0.994545,
		0.907132, 0.411234, 0.089437,
		0.407899, -0.911448, 0.053675,
		34.382095, 34.778545, 33.423672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745544, 35.432228, 33.016888>,  <34.096569, 35.416557, 33.386101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745544, 35.432228, 33.016888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676678, 35.038204, 33.015854>,  <34.635357, 34.801788, 33.015236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676678, 35.038204, 33.015854>,  <34.745544, 35.432228, 33.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676678, 35.038204, 33.015854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309971, -0.051690, -0.949340,
		0.935027, -0.164247, 0.314241,
		-0.172170, -0.985064, -0.002581,
		34.625027, 34.742683, 33.015079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263672, 35.186771, 32.669144>,  <34.745544, 35.432228, 33.016888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263672, 35.186771, 32.669144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988831, 34.897404, 32.642143>,  <34.823925, 34.723782, 32.625942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988831, 34.897404, 32.642143>,  <35.263672, 35.186771, 32.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988831, 34.897404, 32.642143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091753, 0.005762, -0.995765,
		0.720744, -0.690386, 0.062417,
		-0.687102, -0.723419, -0.067498,
		34.782700, 34.680378, 32.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457985, 34.912792, 32.092785>,  <35.263672, 35.186771, 32.669144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457985, 34.912792, 32.092785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097206, 34.757004, 32.167419>,  <34.880741, 34.663532, 32.212200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097206, 34.757004, 32.167419>,  <35.457985, 34.912792, 32.092785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097206, 34.757004, 32.167419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255398, 0.132654, -0.957692,
		0.348240, -0.911437, -0.219116,
		-0.901943, -0.389468, 0.186584,
		34.826622, 34.640163, 32.223396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363197, 34.764755, 31.513264>,  <35.457985, 34.912792, 32.092785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363197, 34.764755, 31.513264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.706879, 31.650068>,  <34.768963, 34.672153, 31.732151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.706879, 31.650068>,  <35.363197, 34.764755, 31.513264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991802, 34.706879, 31.650068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352569, 0.054231, -0.934213,
		0.116631, -0.987989, -0.101369,
		-0.928489, -0.144698, 0.342009,
		34.713257, 34.663471, 31.752672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031052, 34.217857, 31.168602>,  <35.363197, 34.764755, 31.513264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031052, 34.217857, 31.168602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735775, 34.450684, 31.304996>,  <34.558609, 34.590382, 31.386833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735775, 34.450684, 31.304996>,  <35.031052, 34.217857, 31.168602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735775, 34.450684, 31.304996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313613, 0.151417, -0.937400,
		-0.597263, -0.798917, 0.070770,
		-0.738189, 0.582069, 0.340987,
		34.514317, 34.625305, 31.407293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332458, 33.936047, 30.902803>,  <35.031052, 34.217857, 31.168602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332458, 33.936047, 30.902803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241096, 34.312111, 31.003935>,  <34.186279, 34.537750, 31.064613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241096, 34.312111, 31.003935>,  <34.332458, 33.936047, 30.902803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241096, 34.312111, 31.003935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508114, 0.106401, -0.854693,
		-0.830453, -0.323680, 0.453408,
		-0.228403, 0.940165, 0.252827,
		34.172577, 34.594162, 31.079782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625610, 33.989452, 30.794924>,  <34.332458, 33.936047, 30.902803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625610, 33.989452, 30.794924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762676, 34.365005, 30.781776>,  <33.844913, 34.590336, 30.773888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762676, 34.365005, 30.781776>,  <33.625610, 33.989452, 30.794924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762676, 34.365005, 30.781776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434612, 0.127410, -0.891560,
		-0.832883, 0.319789, 0.451709,
		0.342663, 0.938883, -0.032867,
		33.865475, 34.646671, 30.771915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069016, 34.351887, 30.494286>,  <33.625610, 33.989452, 30.794924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069016, 34.351887, 30.494286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391750, 34.584724, 30.453926>,  <33.585392, 34.724426, 30.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391750, 34.584724, 30.453926>,  <33.069016, 34.351887, 30.494286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391750, 34.584724, 30.453926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239857, 0.166687, -0.956391,
		-0.539889, 0.795854, 0.274108,
		0.806838, 0.582092, -0.100899,
		33.633801, 34.759354, 30.423656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886395, 34.974609, 30.135860>,  <33.069016, 34.351887, 30.494286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886395, 34.974609, 30.135860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276237, 34.931580, 30.057316>,  <33.510143, 34.905762, 30.010189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276237, 34.931580, 30.057316>,  <32.886395, 34.974609, 30.135860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276237, 34.931580, 30.057316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188011, 0.083045, -0.978650,
		0.121587, 0.990722, 0.060711,
		0.974612, -0.107577, -0.196364,
		33.568623, 34.899307, 29.998407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041325, 35.567463, 29.772354>,  <32.886395, 34.974609, 30.135860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041325, 35.567463, 29.772354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326103, 35.299332, 29.688646>,  <33.496971, 35.138454, 29.638422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326103, 35.299332, 29.688646>,  <33.041325, 35.567463, 29.772354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326103, 35.299332, 29.688646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035891, 0.262880, -0.964161,
		0.701317, 0.693941, 0.163098,
		0.711946, -0.670328, -0.209268,
		33.539688, 35.098232, 29.625866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509689, 35.897541, 29.317976>,  <33.041325, 35.567463, 29.772354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509689, 35.897541, 29.317976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546482, 35.501930, 29.271744>,  <33.568558, 35.264565, 29.244003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546482, 35.501930, 29.271744>,  <33.509689, 35.897541, 29.317976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546482, 35.501930, 29.271744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211971, 0.093966, -0.972748,
		0.972938, 0.113975, -0.201002,
		0.091982, -0.989030, -0.115582,
		33.574078, 35.205223, 29.237070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678272, 35.896484, 28.649204>,  <33.509689, 35.897541, 29.317976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678272, 35.896484, 28.649204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613701, 35.510201, 28.730541>,  <33.574959, 35.278431, 28.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613701, 35.510201, 28.730541>,  <33.678272, 35.896484, 28.649204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613701, 35.510201, 28.730541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339408, -0.139147, -0.930291,
		0.926684, -0.219190, -0.305307,
		-0.161428, -0.965709, 0.203340,
		33.565273, 35.220490, 28.791544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995667, 35.514275, 28.098246>,  <33.678272, 35.896484, 28.649204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995667, 35.514275, 28.098246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709538, 35.289425, 28.264294>,  <33.537861, 35.154514, 28.363922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709538, 35.289425, 28.264294>,  <33.995667, 35.514275, 28.098246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709538, 35.289425, 28.264294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233659, -0.367450, -0.900213,
		0.658570, -0.740941, 0.131500,
		-0.715325, -0.562127, 0.415119,
		33.494942, 35.120789, 28.388830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059238, 34.864059, 27.823072>,  <33.995667, 35.514275, 28.098246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059238, 34.864059, 27.823072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681877, 34.920826, 27.942968>,  <33.455460, 34.954887, 28.014906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681877, 34.920826, 27.942968>,  <34.059238, 34.864059, 27.823072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681877, 34.920826, 27.942968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327153, -0.250112, -0.911271,
		-0.054357, -0.957760, 0.282386,
		-0.943407, 0.141917, 0.299739,
		33.398853, 34.963402, 28.032890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792294, 34.242249, 27.627748>,  <34.059238, 34.864059, 27.823072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792294, 34.242249, 27.627748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504398, 34.518501, 27.656050>,  <33.331661, 34.684254, 27.673031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504398, 34.518501, 27.656050>,  <33.792294, 34.242249, 27.627748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504398, 34.518501, 27.656050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395750, -0.324414, -0.859149,
		-0.570403, -0.646362, 0.506810,
		-0.719738, 0.690631, 0.070751,
		33.288475, 34.725689, 27.677275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245548, 33.841949, 27.402805>,  <33.792294, 34.242249, 27.627748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245548, 33.841949, 27.402805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097500, 34.213322, 27.415571>,  <33.008671, 34.436146, 27.423231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097500, 34.213322, 27.415571>,  <33.245548, 33.841949, 27.402805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097500, 34.213322, 27.415571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538353, -0.186365, -0.821854,
		-0.757091, -0.321366, 0.568803,
		-0.370122, 0.928435, 0.031913,
		32.986462, 34.491852, 27.425146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443718, 33.785946, 27.431171>,  <33.245548, 33.841949, 27.402805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443718, 33.785946, 27.431171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583855, 34.126007, 27.273943>,  <32.667938, 34.330044, 27.179605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583855, 34.126007, 27.273943>,  <32.443718, 33.785946, 27.431171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583855, 34.126007, 27.273943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611683, -0.110136, -0.783399,
		-0.709299, 0.514891, 0.481438,
		0.350341, 0.850151, -0.393070,
		32.688957, 34.381054, 27.156021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856546, 34.148300, 27.003088>,  <32.443718, 33.785946, 27.431171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856546, 34.148300, 27.003088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167118, 34.373764, 26.890345>,  <32.353462, 34.509041, 26.822699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167118, 34.373764, 26.890345>,  <31.856546, 34.148300, 27.003088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167118, 34.373764, 26.890345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442434, 0.169033, -0.880727,
		-0.448788, 0.808526, 0.380624,
		0.776429, 0.563661, -0.281859,
		32.400047, 34.542862, 26.805786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587389, 34.745365, 26.684492>,  <31.856546, 34.148300, 27.003088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587389, 34.745365, 26.684492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961872, 34.738861, 26.544064>,  <32.186562, 34.734959, 26.459806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961872, 34.738861, 26.544064>,  <31.587389, 34.745365, 26.684492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961872, 34.738861, 26.544064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342223, 0.185204, -0.921186,
		0.080003, 0.982565, 0.167824,
		0.936207, -0.016265, -0.351073,
		32.242733, 34.733982, 26.438742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582680, 35.223839, 26.110411>,  <31.587389, 34.745365, 26.684492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582680, 35.223839, 26.110411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905447, 34.994736, 26.052679>,  <32.099110, 34.857273, 26.018040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905447, 34.994736, 26.052679>,  <31.582680, 35.223839, 26.110411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905447, 34.994736, 26.052679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078846, 0.137713, -0.987329,
		0.585374, 0.808076, 0.065964,
		0.806921, -0.572756, -0.144327,
		32.147522, 34.822910, 26.009380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002060, 35.668884, 25.698030>,  <31.582680, 35.223839, 26.110411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002060, 35.668884, 25.698030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151360, 35.304989, 25.625301>,  <32.240940, 35.086651, 25.581663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151360, 35.304989, 25.625301>,  <32.002060, 35.668884, 25.698030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151360, 35.304989, 25.625301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054188, 0.174276, -0.983205,
		0.926146, 0.376836, 0.015752,
		0.373252, -0.909738, -0.181825,
		32.263336, 35.032066, 25.570753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517975, 35.735332, 25.171106>,  <32.002060, 35.668884, 25.698030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517975, 35.735332, 25.171106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392017, 35.355682, 25.172134>,  <32.316441, 35.127892, 25.172750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392017, 35.355682, 25.172134>,  <32.517975, 35.735332, 25.171106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392017, 35.355682, 25.172134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074817, -0.027523, -0.996817,
		0.946172, -0.313703, 0.079677,
		-0.314897, -0.949122, 0.002571,
		32.297546, 35.070946, 25.172905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882637, 35.421837, 24.712479>,  <32.517975, 35.735332, 25.171106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882637, 35.421837, 24.712479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590317, 35.153141, 24.760969>,  <32.414925, 34.991924, 24.790064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590317, 35.153141, 24.760969>,  <32.882637, 35.421837, 24.712479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590317, 35.153141, 24.760969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005328, -0.171981, -0.985086,
		0.682573, -0.720545, 0.122104,
		-0.730798, -0.671743, 0.121228,
		32.371078, 34.951618, 24.797338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057072, 34.839455, 24.519978>,  <32.882637, 35.421837, 24.712479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057072, 34.839455, 24.519978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659721, 34.837910, 24.474037>,  <32.421310, 34.836983, 24.446474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659721, 34.837910, 24.474037>,  <33.057072, 34.839455, 24.519978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659721, 34.837910, 24.474037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114596, -0.107603, -0.987567,
		-0.008542, -0.994187, 0.107333,
		-0.993375, -0.003865, -0.114849,
		32.361710, 34.836750, 24.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986919, 34.418976, 24.029072>,  <33.057072, 34.839455, 24.519978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986919, 34.418976, 24.029072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631073, 34.601051, 24.014202>,  <32.417564, 34.710297, 24.005280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631073, 34.601051, 24.014202>,  <32.986919, 34.418976, 24.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631073, 34.601051, 24.014202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003256, -0.087713, -0.996140,
		-0.456695, -0.886063, 0.079513,
		-0.889617, 0.455191, -0.037174,
		32.364189, 34.737610, 24.003050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629234, 34.062031, 23.540462>,  <32.986919, 34.418976, 24.029072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629234, 34.062031, 23.540462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428616, 34.408085, 23.540316>,  <32.308243, 34.615715, 23.540228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428616, 34.408085, 23.540316>,  <32.629234, 34.062031, 23.540462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428616, 34.408085, 23.540316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061816, 0.035415, -0.997459,
		-0.862920, -0.500293, -0.071241,
		-0.501545, 0.865131, -0.000366,
		32.278152, 34.667625, 23.540205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144398, 34.038380, 22.985678>,  <32.629234, 34.062031, 23.540462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144398, 34.038380, 22.985678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152206, 34.431866, 23.057137>,  <32.156891, 34.667957, 23.100012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152206, 34.431866, 23.057137>,  <32.144398, 34.038380, 22.985678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152206, 34.431866, 23.057137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169711, 0.172829, -0.970221,
		-0.985300, 0.049261, -0.163574,
		0.019524, 0.983719, 0.178649,
		32.158062, 34.726982, 23.110731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954937, 34.373585, 22.397980>,  <32.144398, 34.038380, 22.985678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954937, 34.373585, 22.397980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115116, 34.696629, 22.571142>,  <32.211224, 34.890453, 22.675039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115116, 34.696629, 22.571142>,  <31.954937, 34.373585, 22.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115116, 34.696629, 22.571142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098121, 0.431929, -0.896554,
		-0.911051, 0.401500, 0.093721,
		0.400447, 0.807611, 0.432905,
		32.235249, 34.938911, 22.701014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745838, 35.060791, 22.129631>,  <31.954937, 34.373585, 22.397980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745838, 35.060791, 22.129631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121571, 35.061462, 22.266834>,  <32.347012, 35.061863, 22.349155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121571, 35.061462, 22.266834>,  <31.745838, 35.060791, 22.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121571, 35.061462, 22.266834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337113, 0.180117, -0.924074,
		-0.063329, 0.983644, 0.168625,
		0.939332, 0.001675, 0.343006,
		32.403370, 35.061966, 22.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431780, 34.519108, 21.613487>,  <31.745838, 35.060791, 22.129631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431780, 34.519108, 21.613487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627001, 34.833336, 21.461332>,  <31.744133, 35.021873, 21.370039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627001, 34.833336, 21.461332>,  <31.431780, 34.519108, 21.613487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627001, 34.833336, 21.461332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821303, -0.265832, 0.504773,
		0.295413, -0.558767, -0.774926,
		0.488050, 0.785566, -0.380387,
		31.773417, 35.069004, 21.347216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072014, 34.191032, 21.353735>,  <31.431780, 34.519108, 21.613487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072014, 34.191032, 21.353735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105835, 34.583813, 21.421417>,  <32.126129, 34.819481, 21.462027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105835, 34.583813, 21.421417>,  <32.072014, 34.191032, 21.353735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105835, 34.583813, 21.421417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797128, -0.168547, 0.579809,
		0.597861, 0.085853, -0.796989,
		0.084552, 0.981948, 0.169203,
		32.131199, 34.878399, 21.472178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781136, 34.259727, 21.348089>,  <32.072014, 34.191032, 21.353735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781136, 34.259727, 21.348089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641182, 34.610661, 21.479458>,  <32.557209, 34.821220, 21.558279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641182, 34.610661, 21.479458>,  <32.781136, 34.259727, 21.348089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641182, 34.610661, 21.479458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765891, 0.066023, 0.639572,
		0.539436, 0.475314, -0.695044,
		-0.349886, 0.877335, 0.328424,
		32.536217, 34.873859, 21.577986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262474, 34.706291, 21.224470>,  <32.781136, 34.259727, 21.348089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262474, 34.706291, 21.224470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054241, 34.836502, 21.540199>,  <32.929302, 34.914631, 21.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054241, 34.836502, 21.540199>,  <33.262474, 34.706291, 21.224470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054241, 34.836502, 21.540199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832641, -0.011045, 0.553703,
		0.188965, 0.945467, -0.265301,
		-0.520578, 0.325531, 0.789322,
		32.898067, 34.934162, 21.776997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394878, 35.461113, 21.478067>,  <33.262474, 34.706291, 21.224470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394878, 35.461113, 21.478067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311783, 35.166302, 21.735327>,  <33.261925, 34.989414, 21.889683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311783, 35.166302, 21.735327>,  <33.394878, 35.461113, 21.478067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311783, 35.166302, 21.735327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870123, 0.161165, 0.465737,
		-0.446913, 0.656370, 0.607822,
		-0.207736, -0.737024, 0.643150,
		33.249462, 34.945194, 21.928272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109612, 35.940742, 20.927343>,  <33.394878, 35.461113, 21.478067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109612, 35.940742, 20.927343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202259, 36.291897, 20.759693>,  <33.257847, 36.502590, 20.659103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202259, 36.291897, 20.759693>,  <33.109612, 35.940742, 20.927343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202259, 36.291897, 20.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085916, 0.447620, 0.890087,
		0.969005, -0.170153, 0.179103,
		0.231621, 0.877886, -0.419127,
		33.271744, 36.555264, 20.633955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805813, 36.224880, 21.256023>,  <33.109612, 35.940742, 20.927343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805813, 36.224880, 21.256023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522427, 36.484951, 21.146227>,  <33.352394, 36.640995, 21.080349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522427, 36.484951, 21.146227>,  <33.805813, 36.224880, 21.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522427, 36.484951, 21.146227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005475, 0.393990, 0.919098,
		0.705725, 0.649647, -0.282688,
		-0.708465, 0.650178, -0.274492,
		33.309887, 36.680004, 21.063879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943802, 36.957691, 21.337572>,  <33.805813, 36.224880, 21.256023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943802, 36.957691, 21.337572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544296, 36.938820, 21.343737>,  <33.304592, 36.927498, 21.347435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544296, 36.938820, 21.343737>,  <33.943802, 36.957691, 21.337572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544296, 36.938820, 21.343737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000122, 0.312833, 0.949808,
		-0.049627, 0.948636, -0.312453,
		-0.998768, -0.047174, 0.015409,
		33.244667, 36.924667, 21.348360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507114, 37.578415, 21.556633>,  <33.943802, 36.957691, 21.337572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507114, 37.578415, 21.556633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280445, 37.258617, 21.636322>,  <33.144444, 37.066738, 21.684135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280445, 37.258617, 21.636322>,  <33.507114, 37.578415, 21.556633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280445, 37.258617, 21.636322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218759, 0.379104, 0.899125,
		-0.794368, 0.465933, -0.389726,
		-0.566678, -0.799492, 0.199221,
		33.110443, 37.018768, 21.696089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938362, 37.861027, 21.754128>,  <33.507114, 37.578415, 21.556633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938362, 37.861027, 21.754128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991070, 37.498154, 21.913952>,  <33.022694, 37.280430, 22.009848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991070, 37.498154, 21.913952>,  <32.938362, 37.861027, 21.754128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991070, 37.498154, 21.913952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037130, 0.407310, 0.912535,
		-0.990585, -0.105404, 0.087353,
		0.131765, -0.907187, 0.399562,
		33.030598, 37.225998, 22.033821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416950, 37.748459, 22.255072>,  <32.938362, 37.861027, 21.754128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416950, 37.748459, 22.255072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716316, 37.503231, 22.356279>,  <32.895935, 37.356094, 22.417004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716316, 37.503231, 22.356279>,  <32.416950, 37.748459, 22.255072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716316, 37.503231, 22.356279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020867, 0.403069, 0.914932,
		-0.662905, -0.679467, 0.314454,
		0.748413, -0.613075, 0.253018,
		32.940842, 37.319309, 22.432184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208920, 37.512859, 22.767897>,  <32.416950, 37.748459, 22.255072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208920, 37.512859, 22.767897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600601, 37.440628, 22.804874>,  <32.835609, 37.397289, 22.827061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600601, 37.440628, 22.804874>,  <32.208920, 37.512859, 22.767897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600601, 37.440628, 22.804874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031909, 0.312932, 0.949239,
		-0.200336, -0.932452, 0.300663,
		0.979207, -0.180574, 0.092445,
		32.894363, 37.386456, 22.832607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313286, 37.301315, 23.462898>,  <32.208920, 37.512859, 22.767897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313286, 37.301315, 23.462898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701939, 37.368603, 23.396399>,  <32.935131, 37.408978, 23.356499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701939, 37.368603, 23.396399>,  <32.313286, 37.301315, 23.462898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701939, 37.368603, 23.396399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133339, 0.190957, 0.972500,
		0.195368, -0.967072, 0.163104,
		0.971623, 0.168248, -0.166256,
		32.993427, 37.419067, 23.346523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674877, 36.864864, 23.824196>,  <32.313286, 37.301315, 23.462898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674877, 36.864864, 23.824196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967941, 37.135147, 23.791618>,  <33.143780, 37.297318, 23.772072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967941, 37.135147, 23.791618>,  <32.674877, 36.864864, 23.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967941, 37.135147, 23.791618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098286, 0.013368, 0.995068,
		0.673460, -0.737053, -0.056618,
		0.732661, 0.675703, -0.081445,
		33.187740, 37.337856, 23.767185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229740, 36.618851, 24.168493>,  <32.674877, 36.864864, 23.824196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229740, 36.618851, 24.168493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296040, 37.011734, 24.133184>,  <33.335819, 37.247463, 24.112000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296040, 37.011734, 24.133184>,  <33.229740, 36.618851, 24.168493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296040, 37.011734, 24.133184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370637, 0.020902, 0.928542,
		0.913868, -0.186624, -0.360579,
		0.165752, 0.982209, -0.088271,
		33.345764, 37.306396, 24.106703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845428, 36.753525, 24.383570>,  <33.229740, 36.618851, 24.168493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845428, 36.753525, 24.383570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650803, 37.099640, 24.431784>,  <33.534027, 37.307308, 24.460712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650803, 37.099640, 24.431784>,  <33.845428, 36.753525, 24.383570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650803, 37.099640, 24.431784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382760, 0.087112, 0.919732,
		0.785336, 0.493641, -0.373584,
		-0.486561, 0.865292, 0.120534,
		33.504833, 37.359226, 24.467943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266994, 37.078911, 24.737020>,  <33.845428, 36.753525, 24.383570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266994, 37.078911, 24.737020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939739, 37.297855, 24.807495>,  <33.743385, 37.429222, 24.849781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939739, 37.297855, 24.807495>,  <34.266994, 37.078911, 24.737020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939739, 37.297855, 24.807495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244934, 0.054515, 0.968006,
		0.520245, 0.835119, -0.178669,
		-0.818140, 0.547362, 0.176188,
		33.694298, 37.462063, 24.860352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475689, 37.759125, 25.107399>,  <34.266994, 37.078911, 24.737020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475689, 37.759125, 25.107399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086651, 37.696362, 25.176033>,  <33.853230, 37.658703, 25.217213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086651, 37.696362, 25.176033>,  <34.475689, 37.759125, 25.107399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086651, 37.696362, 25.176033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184995, -0.075167, 0.979861,
		-0.140855, 0.984748, 0.102135,
		-0.972593, -0.156913, 0.171585,
		33.794872, 37.649288, 25.227509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371456, 38.234962, 25.612017>,  <34.475689, 37.759125, 25.107399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371456, 38.234962, 25.612017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092178, 37.949574, 25.635582>,  <33.924610, 37.778339, 25.649721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092178, 37.949574, 25.635582>,  <34.371456, 38.234962, 25.612017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092178, 37.949574, 25.635582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073669, 0.010250, 0.997230,
		-0.712104, 0.700605, 0.045404,
		-0.698199, -0.713476, 0.058912,
		33.882717, 37.735531, 25.653255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988029, 38.419567, 26.093197>,  <34.371456, 38.234962, 25.612017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988029, 38.419567, 26.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868061, 38.038002, 26.089396>,  <33.796082, 37.809063, 26.087114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868061, 38.038002, 26.089396>,  <33.988029, 38.419567, 26.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868061, 38.038002, 26.089396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090312, 0.018473, 0.995742,
		-0.949680, 0.299500, -0.091690,
		-0.299919, -0.953917, -0.009505,
		33.778084, 37.751827, 26.086544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345554, 38.412930, 26.560431>,  <33.988029, 38.419567, 26.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345554, 38.412930, 26.560431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527691, 38.058659, 26.524115>,  <33.636974, 37.846096, 26.502325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527691, 38.058659, 26.524115>,  <33.345554, 38.412930, 26.560431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527691, 38.058659, 26.524115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048655, -0.126579, 0.990763,
		-0.888985, -0.446720, -0.100730,
		0.455344, -0.885674, -0.090791,
		33.664295, 37.792957, 26.496878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880013, 38.000023, 26.792007>,  <33.345554, 38.412930, 26.560431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880013, 38.000023, 26.792007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220390, 37.790665, 26.809713>,  <33.424618, 37.665051, 26.820337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220390, 37.790665, 26.809713>,  <32.880013, 38.000023, 26.792007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220390, 37.790665, 26.809713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175744, -0.204285, 0.963007,
		-0.494991, -0.827240, -0.265817,
		0.850940, -0.523395, 0.044263,
		33.475674, 37.633648, 26.822992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688835, 37.365013, 27.135273>,  <32.880013, 38.000023, 26.792007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688835, 37.365013, 27.135273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084801, 37.406216, 27.174177>,  <33.322380, 37.430939, 27.197519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084801, 37.406216, 27.174177>,  <32.688835, 37.365013, 27.135273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084801, 37.406216, 27.174177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067783, -0.258482, 0.963635,
		0.124406, -0.960508, -0.248893,
		0.989913, 0.103011, 0.097263,
		33.381775, 37.437119, 27.203356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873375, 36.898617, 27.633837>,  <32.688835, 37.365013, 27.135273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873375, 36.898617, 27.633837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189175, 37.144047, 27.639757>,  <33.378654, 37.291306, 27.643309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189175, 37.144047, 27.639757>,  <32.873375, 36.898617, 27.633837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189175, 37.144047, 27.639757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051877, -0.090739, 0.994523,
		0.611560, -0.784404, -0.103468,
		0.789496, 0.613578, 0.014800,
		33.426022, 37.328121, 27.644197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409161, 36.576481, 27.980381>,  <32.873375, 36.898617, 27.633837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409161, 36.576481, 27.980381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501598, 36.964184, 28.014162>,  <33.557060, 37.196808, 28.034431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501598, 36.964184, 28.014162>,  <33.409161, 36.576481, 27.980381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501598, 36.964184, 28.014162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092662, -0.064482, 0.993607,
		0.968510, -0.237439, 0.074913,
		0.231091, 0.969260, 0.084453,
		33.570927, 37.254963, 28.039497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806446, 36.596893, 28.518990>,  <33.409161, 36.576481, 27.980381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806446, 36.596893, 28.518990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698330, 36.981655, 28.502594>,  <33.633461, 37.212513, 28.492756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698330, 36.981655, 28.502594>,  <33.806446, 36.596893, 28.518990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698330, 36.981655, 28.502594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104459, 0.013024, 0.994444,
		0.957096, 0.273066, 0.096960,
		-0.270286, 0.961907, -0.040990,
		33.617245, 37.270226, 28.490297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238716, 37.075344, 28.993961>,  <33.806446, 36.596893, 28.518990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238716, 37.075344, 28.993961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888786, 37.252220, 28.914816>,  <33.678829, 37.358345, 28.867329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888786, 37.252220, 28.914816>,  <34.238716, 37.075344, 28.993961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888786, 37.252220, 28.914816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156383, 0.128799, 0.979263,
		0.458506, 0.887625, -0.043525,
		-0.874824, 0.442191, -0.197865,
		33.626339, 37.384876, 28.855457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173035, 37.596169, 29.454226>,  <34.238716, 37.075344, 28.993961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173035, 37.596169, 29.454226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798843, 37.593731, 29.312897>,  <33.574329, 37.592266, 29.228100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798843, 37.593731, 29.312897>,  <34.173035, 37.596169, 29.454226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798843, 37.593731, 29.312897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346842, 0.207177, 0.914756,
		0.067622, 0.978284, -0.195926,
		-0.935483, -0.006097, -0.353320,
		33.518200, 37.591900, 29.206902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938343, 38.180786, 29.722927>,  <34.173035, 37.596169, 29.454226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938343, 38.180786, 29.722927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603828, 38.001049, 29.597250>,  <33.403118, 37.893208, 29.521845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603828, 38.001049, 29.597250>,  <33.938343, 38.180786, 29.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603828, 38.001049, 29.597250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427372, 0.175235, 0.886931,
		-0.343475, 0.876006, -0.338582,
		-0.836288, -0.449339, -0.314191,
		33.352943, 37.866249, 29.502993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406937, 38.581795, 30.030149>,  <33.938343, 38.180786, 29.722927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406937, 38.581795, 30.030149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224201, 38.234749, 29.951626>,  <33.114559, 38.026520, 29.904510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224201, 38.234749, 29.951626>,  <33.406937, 38.581795, 30.030149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224201, 38.234749, 29.951626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522553, 0.083152, 0.848542,
		-0.719887, 0.490229, -0.491364,
		-0.456837, -0.867618, -0.196311,
		33.087151, 37.974464, 29.892733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675133, 38.783936, 30.097776>,  <33.406937, 38.581795, 30.030149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675133, 38.783936, 30.097776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664150, 38.387047, 30.146334>,  <32.657558, 38.148914, 30.175468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664150, 38.387047, 30.146334>,  <32.675133, 38.783936, 30.097776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664150, 38.387047, 30.146334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605698, 0.113121, 0.787613,
		-0.795221, -0.051899, -0.604095,
		-0.027459, -0.992225, 0.121392,
		32.655910, 38.089378, 30.182751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970186, 38.649628, 30.145313>,  <32.675133, 38.783936, 30.097776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970186, 38.649628, 30.145313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152454, 38.335365, 30.312695>,  <32.261814, 38.146809, 30.413124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152454, 38.335365, 30.312695>,  <31.970186, 38.649628, 30.145313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152454, 38.335365, 30.312695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545602, 0.124924, 0.828681,
		-0.703336, -0.605916, -0.371733,
		0.455672, -0.785659, 0.418452,
		32.289158, 38.099667, 30.438231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452654, 38.170349, 30.389971>,  <31.970186, 38.649628, 30.145313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452654, 38.170349, 30.389971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769424, 38.099094, 30.623592>,  <31.959488, 38.056343, 30.763765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769424, 38.099094, 30.623592>,  <31.452654, 38.170349, 30.389971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769424, 38.099094, 30.623592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536394, 0.254104, 0.804806,
		-0.291775, -0.950631, 0.105680,
		0.791927, -0.178136, 0.584054,
		32.007004, 38.045654, 30.798809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174139, 37.753639, 30.992781>,  <31.452654, 38.170349, 30.389971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174139, 37.753639, 30.992781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520237, 37.920124, 31.104582>,  <31.727896, 38.020016, 31.171661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520237, 37.920124, 31.104582>,  <31.174139, 37.753639, 30.992781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520237, 37.920124, 31.104582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374455, 0.165796, 0.912302,
		0.333369, -0.894025, 0.299306,
		0.865245, 0.416210, 0.279501,
		31.779810, 38.044987, 31.188433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215757, 37.592243, 31.713020>,  <31.174139, 37.753639, 30.992781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215757, 37.592243, 31.713020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502768, 37.869343, 31.684002>,  <31.674973, 38.035603, 31.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502768, 37.869343, 31.684002>,  <31.215757, 37.592243, 31.713020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502768, 37.869343, 31.684002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084204, 0.189660, 0.978233,
		0.691426, -0.695796, 0.194418,
		0.717524, 0.692746, -0.072547,
		31.718025, 38.077168, 31.662237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882380, 37.445187, 32.169250>,  <31.215757, 37.592243, 31.713020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882380, 37.445187, 32.169250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861273, 37.839638, 32.106308>,  <31.848608, 38.076309, 32.068542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861273, 37.839638, 32.106308>,  <31.882380, 37.445187, 32.169250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861273, 37.839638, 32.106308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111712, 0.162415, 0.980378,
		0.992339, 0.034154, -0.118733,
		-0.052768, 0.986131, -0.157355,
		31.845442, 38.135479, 32.059101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299343, 37.617939, 32.677429>,  <31.882380, 37.445187, 32.169250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299343, 37.617939, 32.677429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159061, 37.975895, 32.567024>,  <32.074890, 38.190666, 32.500782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159061, 37.975895, 32.567024>,  <32.299343, 37.617939, 32.677429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159061, 37.975895, 32.567024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058463, 0.315079, 0.947263,
		0.934659, 0.316074, -0.162818,
		-0.350706, 0.894887, -0.276013,
		32.053848, 38.244362, 32.484219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864803, 38.203674, 32.856369>,  <32.299343, 37.617939, 32.677429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864803, 38.203674, 32.856369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497803, 38.360447, 32.829273>,  <32.277603, 38.454510, 32.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497803, 38.360447, 32.829273>,  <32.864803, 38.203674, 32.856369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497803, 38.360447, 32.829273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062915, 0.311176, 0.948268,
		0.392734, 0.865771, -0.310161,
		-0.917498, 0.391931, -0.067740,
		32.222553, 38.478027, 32.808952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978241, 38.841888, 33.020809>,  <32.864803, 38.203674, 32.856369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978241, 38.841888, 33.020809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602768, 38.719353, 33.084087>,  <32.377483, 38.645832, 33.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602768, 38.719353, 33.084087>,  <32.978241, 38.841888, 33.020809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602768, 38.719353, 33.084087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004537, 0.447834, 0.894105,
		-0.344743, 0.840002, -0.418985,
		-0.938686, -0.306336, 0.158199,
		32.321163, 38.627453, 33.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746105, 39.398109, 33.415627>,  <32.978241, 38.841888, 33.020809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746105, 39.398109, 33.415627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481579, 39.101868, 33.463223>,  <32.322865, 38.924122, 33.491779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481579, 39.101868, 33.463223>,  <32.746105, 39.398109, 33.415627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481579, 39.101868, 33.463223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165365, 0.298675, 0.939919,
		-0.731652, 0.601907, -0.319989,
		-0.661317, -0.740609, 0.118991,
		32.283184, 38.879684, 33.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264900, 39.692753, 33.868568>,  <32.746105, 39.398109, 33.415627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264900, 39.692753, 33.868568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238934, 39.293674, 33.860744>,  <32.223354, 39.054226, 33.856049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238934, 39.293674, 33.860744>,  <32.264900, 39.692753, 33.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238934, 39.293674, 33.860744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263587, -0.036051, 0.963962,
		-0.962449, 0.057424, 0.265321,
		-0.064919, -0.997699, -0.019561,
		32.219460, 38.994366, 33.854877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828705, 39.552647, 34.435543>,  <32.264900, 39.692753, 33.868568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828705, 39.552647, 34.435543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047337, 39.229008, 34.349178>,  <32.178516, 39.034824, 34.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047337, 39.229008, 34.349178>,  <31.828705, 39.552647, 34.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047337, 39.229008, 34.349178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161331, -0.151265, 0.975239,
		-0.821721, -0.567877, 0.047853,
		0.546578, -0.809095, -0.215914,
		32.211311, 38.986279, 34.284405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556566, 39.095646, 34.912010>,  <31.828705, 39.552647, 34.435543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556566, 39.095646, 34.912010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919529, 38.954033, 34.821438>,  <32.137306, 38.869064, 34.767094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919529, 38.954033, 34.821438>,  <31.556566, 39.095646, 34.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919529, 38.954033, 34.821438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195101, -0.122336, 0.973124,
		-0.372218, -0.927197, -0.041937,
		0.907408, -0.354032, -0.226433,
		32.191750, 38.847824, 34.753510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665524, 38.556931, 35.325077>,  <31.556566, 39.095646, 34.912010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665524, 38.556931, 35.325077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027962, 38.676281, 35.205105>,  <32.245426, 38.747890, 35.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027962, 38.676281, 35.205105>,  <31.665524, 38.556931, 35.325077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027962, 38.676281, 35.205105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319766, -0.018793, 0.947310,
		0.277019, -0.954263, -0.112439,
		0.906096, 0.298377, -0.299935,
		32.299789, 38.765793, 35.115124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102833, 38.161179, 35.781399>,  <31.665524, 38.556931, 35.325077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102833, 38.161179, 35.781399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311287, 38.463940, 35.623657>,  <32.436359, 38.645596, 35.529015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311287, 38.463940, 35.623657>,  <32.102833, 38.161179, 35.781399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311287, 38.463940, 35.623657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355516, 0.227542, 0.906550,
		0.775906, -0.612631, -0.150513,
		0.521133, 0.756907, -0.394351,
		32.467628, 38.691013, 35.505352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751934, 38.092159, 36.043385>,  <32.102833, 38.161179, 35.781399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751934, 38.092159, 36.043385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724743, 38.471745, 35.920197>,  <32.708427, 38.699497, 35.846283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724743, 38.471745, 35.920197>,  <32.751934, 38.092159, 36.043385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724743, 38.471745, 35.920197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, 0.305013, 0.841355,
		0.892351, -0.080223, -0.444156,
		-0.067977, 0.948963, -0.307974,
		32.704350, 38.756435, 35.827805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424988, 38.438507, 35.972809>,  <32.751934, 38.092159, 36.043385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424988, 38.438507, 35.972809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184689, 38.756180, 36.009438>,  <33.040508, 38.946781, 36.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184689, 38.756180, 36.009438>,  <33.424988, 38.438507, 35.972809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184689, 38.756180, 36.009438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545367, 0.323373, 0.773308,
		0.584535, 0.514499, -0.627384,
		-0.600745, 0.794179, 0.091568,
		33.004467, 38.994434, 36.036907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927658, 39.014076, 35.954060>,  <33.424988, 38.438507, 35.972809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927658, 39.014076, 35.954060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575928, 39.106449, 36.120655>,  <33.364891, 39.161873, 36.220612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575928, 39.106449, 36.120655>,  <33.927658, 39.014076, 35.954060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575928, 39.106449, 36.120655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430370, 0.010915, 0.902586,
		0.203894, 0.972908, -0.108985,
		-0.879323, 0.230936, 0.416485,
		33.312130, 39.175732, 36.245602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345631, 39.185085, 35.331192>,  <33.927658, 39.014076, 35.954060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345631, 39.185085, 35.331192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604382, 39.463829, 35.455090>,  <34.759632, 39.631077, 35.529430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604382, 39.463829, 35.455090>,  <34.345631, 39.185085, 35.331192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604382, 39.463829, 35.455090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267603, 0.172917, -0.947886,
		-0.714103, 0.696052, -0.074626,
		0.646874, 0.696858, 0.309746,
		34.798443, 39.672886, 35.548012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260391, 39.798248, 34.903370>,  <34.345631, 39.185085, 35.331192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260391, 39.798248, 34.903370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628372, 39.807220, 35.059925>,  <34.849159, 39.812603, 35.153858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628372, 39.807220, 35.059925>,  <34.260391, 39.798248, 34.903370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628372, 39.807220, 35.059925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382535, 0.167021, -0.908719,
		-0.085752, 0.985698, 0.145072,
		0.919953, 0.022429, 0.391386,
		34.904358, 39.813950, 35.177341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577538, 40.380440, 34.626163>,  <34.260391, 39.798248, 34.903370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577538, 40.380440, 34.626163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890648, 40.169838, 34.758865>,  <35.078514, 40.043476, 34.838486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890648, 40.169838, 34.758865>,  <34.577538, 40.380440, 34.626163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890648, 40.169838, 34.758865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509338, 0.235750, -0.827645,
		0.357546, 0.816834, 0.452707,
		0.782774, -0.526502, 0.331753,
		35.125481, 40.011887, 34.858391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247311, 40.816593, 34.594971>,  <34.577538, 40.380440, 34.626163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247311, 40.816593, 34.594971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339375, 40.427433, 34.586140>,  <35.394611, 40.193935, 34.580841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339375, 40.427433, 34.586140>,  <35.247311, 40.816593, 34.594971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339375, 40.427433, 34.586140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456302, 0.127931, -0.880581,
		0.859543, 0.192601, 0.473382,
		0.230161, -0.972902, -0.022078,
		35.408424, 40.135563, 34.579517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979565, 40.800152, 34.491795>,  <35.247311, 40.816593, 34.594971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979565, 40.800152, 34.491795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840183, 40.450687, 34.355976>,  <35.756554, 40.241009, 34.274487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840183, 40.450687, 34.355976>,  <35.979565, 40.800152, 34.491795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840183, 40.450687, 34.355976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582772, 0.081790, -0.808509,
		0.734138, -0.479603, 0.480648,
		-0.348451, -0.873665, -0.339545,
		35.735649, 40.188587, 34.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469067, 40.560791, 33.959675>,  <35.979565, 40.800152, 34.491795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469067, 40.560791, 33.959675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160782, 40.315792, 33.889423>,  <35.975811, 40.168793, 33.847271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160782, 40.315792, 33.889423>,  <36.469067, 40.560791, 33.959675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160782, 40.315792, 33.889423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492766, -0.398199, -0.773704,
		0.403958, -0.682848, 0.608716,
		-0.770713, -0.612499, -0.175629,
		35.929569, 40.132042, 33.836735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826954, 39.891163, 33.756165>,  <36.469067, 40.560791, 33.959675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826954, 39.891163, 33.756165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455170, 39.893768, 33.608616>,  <36.232098, 39.895332, 33.520088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455170, 39.893768, 33.608616>,  <36.826954, 39.891163, 33.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455170, 39.893768, 33.608616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346438, -0.328331, -0.878737,
		-0.126832, -0.944540, 0.302915,
		-0.929459, 0.006511, -0.368867,
		36.176331, 39.895721, 33.497955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775276, 39.278240, 33.363457>,  <36.826954, 39.891163, 33.756165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775276, 39.278240, 33.363457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497047, 39.523655, 33.213924>,  <36.330109, 39.670902, 33.124207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497047, 39.523655, 33.213924>,  <36.775276, 39.278240, 33.363457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497047, 39.523655, 33.213924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241874, -0.289977, -0.925965,
		-0.676517, -0.734496, 0.053301,
		-0.695574, 0.613538, -0.373829,
		36.288376, 39.707718, 33.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452602, 38.884945, 32.881741>,  <36.775276, 39.278240, 33.363457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452602, 38.884945, 32.881741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337093, 39.252857, 32.775444>,  <36.267788, 39.473602, 32.711666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337093, 39.252857, 32.775444>,  <36.452602, 38.884945, 32.881741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337093, 39.252857, 32.775444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114304, -0.242462, -0.963404,
		-0.950549, -0.308582, -0.035117,
		-0.288775, 0.919776, -0.265745,
		36.250462, 39.528790, 32.695721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962570, 38.798649, 32.299103>,  <36.452602, 38.884945, 32.881741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962570, 38.798649, 32.299103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134575, 39.159718, 32.305763>,  <36.237778, 39.376358, 32.309761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134575, 39.159718, 32.305763>,  <35.962570, 38.798649, 32.299103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134575, 39.159718, 32.305763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064087, -0.012121, -0.997871,
		-0.900546, 0.430163, -0.063062,
		0.430011, 0.902670, 0.016652,
		36.263577, 39.430519, 32.310760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651314, 39.048717, 31.721027>,  <35.962570, 38.798649, 32.299103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651314, 39.048717, 31.721027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977776, 39.274078, 31.772360>,  <36.173653, 39.409294, 31.803160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977776, 39.274078, 31.772360>,  <35.651314, 39.048717, 31.721027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977776, 39.274078, 31.772360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120680, 0.050997, -0.991381,
		-0.565094, 0.824605, -0.026370,
		0.816153, 0.563405, 0.128332,
		36.222622, 39.443100, 31.810860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501640, 39.611740, 31.331427>,  <35.651314, 39.048717, 31.721027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501640, 39.611740, 31.331427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898560, 39.618420, 31.380522>,  <36.136711, 39.622429, 31.409979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898560, 39.618420, 31.380522>,  <35.501640, 39.611740, 31.331427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898560, 39.618420, 31.380522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121159, 0.075226, -0.989779,
		-0.025765, 0.997027, 0.072623,
		0.992299, 0.016703, 0.122737,
		36.196251, 39.623432, 31.417343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718559, 40.144806, 31.026163>,  <35.501640, 39.611740, 31.331427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718559, 40.144806, 31.026163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039703, 39.906761, 31.040384>,  <36.232391, 39.763935, 31.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039703, 39.906761, 31.040384>,  <35.718559, 40.144806, 31.026163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039703, 39.906761, 31.040384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032539, -0.015801, -0.999345,
		0.595280, 0.803491, 0.006678,
		0.802859, -0.595108, 0.035551,
		36.280560, 39.728230, 31.051050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109833, 40.323807, 30.477314>,  <35.718559, 40.144806, 31.026163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109833, 40.323807, 30.477314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255165, 39.962669, 30.569281>,  <36.342365, 39.745987, 30.624460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255165, 39.962669, 30.569281>,  <36.109833, 40.323807, 30.477314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255165, 39.962669, 30.569281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024926, -0.256112, -0.966326,
		0.931327, 0.345365, -0.115558,
		0.363331, -0.902845, 0.229916,
		36.364162, 39.691814, 30.638256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699047, 40.233665, 30.091787>,  <36.109833, 40.323807, 30.477314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699047, 40.233665, 30.091787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587051, 39.865784, 30.201874>,  <36.519855, 39.645054, 30.267925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587051, 39.865784, 30.201874>,  <36.699047, 40.233665, 30.091787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587051, 39.865784, 30.201874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081050, -0.263014, -0.961382,
		0.956577, -0.291479, -0.000902,
		-0.279986, -0.919708, 0.275217,
		36.503056, 39.589870, 30.284439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114738, 39.831955, 29.723856>,  <36.699047, 40.233665, 30.091787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114738, 39.831955, 29.723856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814060, 39.596848, 29.843508>,  <36.633652, 39.455784, 29.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814060, 39.596848, 29.843508>,  <37.114738, 39.831955, 29.723856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814060, 39.596848, 29.843508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111465, -0.333818, -0.936024,
		0.650018, -0.736952, 0.185416,
		-0.751700, -0.587765, 0.299132,
		36.588551, 39.420517, 29.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230965, 39.226334, 29.423929>,  <37.114738, 39.831955, 29.723856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230965, 39.226334, 29.423929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839188, 39.240284, 29.503399>,  <36.604122, 39.248653, 29.551081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839188, 39.240284, 29.503399>,  <37.230965, 39.226334, 29.423929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839188, 39.240284, 29.503399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201567, -0.206558, -0.957447,
		0.007645, -0.977812, 0.209342,
		-0.979445, 0.034876, 0.198674,
		36.545353, 39.250748, 29.563002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906609, 38.603798, 29.138142>,  <37.230965, 39.226334, 29.423929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906609, 38.603798, 29.138142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610825, 38.870373, 29.176229>,  <36.433353, 39.030315, 29.199083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610825, 38.870373, 29.176229>,  <36.906609, 38.603798, 29.138142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610825, 38.870373, 29.176229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359013, -0.270729, -0.893205,
		-0.569482, -0.694674, 0.439451,
		-0.739459, 0.666433, 0.095221,
		36.388988, 39.070301, 29.204796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363880, 38.238796, 28.959652>,  <36.906609, 38.603798, 29.138142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363880, 38.238796, 28.959652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277798, 38.623753, 28.893333>,  <36.226147, 38.854725, 28.853542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277798, 38.623753, 28.893333>,  <36.363880, 38.238796, 28.959652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277798, 38.623753, 28.893333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411651, -0.243353, -0.878250,
		-0.885568, -0.120753, 0.448540,
		-0.215205, 0.962392, -0.165797,
		36.213238, 38.912472, 28.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795544, 38.211098, 28.597996>,  <36.363880, 38.238796, 28.959652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795544, 38.211098, 28.597996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913368, 38.583435, 28.511501>,  <35.984062, 38.806839, 28.459604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913368, 38.583435, 28.511501>,  <35.795544, 38.211098, 28.597996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913368, 38.583435, 28.511501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373718, -0.096051, -0.922556,
		-0.879528, 0.352560, 0.319581,
		0.294560, 0.930847, -0.216237,
		36.001736, 38.862690, 28.446630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273476, 38.468201, 28.300268>,  <35.795544, 38.211098, 28.597996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273476, 38.468201, 28.300268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516129, 38.748951, 28.150942>,  <35.661720, 38.917400, 28.061346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516129, 38.748951, 28.150942>,  <35.273476, 38.468201, 28.300268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516129, 38.748951, 28.150942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209608, -0.311756, -0.926754,
		-0.766849, 0.640451, -0.042004,
		0.606636, 0.701876, -0.373313,
		35.698120, 38.959515, 28.038948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043751, 38.742989, 27.655806>,  <35.273476, 38.468201, 28.300268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043751, 38.742989, 27.655806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442070, 38.779179, 27.661442>,  <35.681061, 38.800892, 27.664824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442070, 38.779179, 27.661442>,  <35.043751, 38.742989, 27.655806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442070, 38.779179, 27.661442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064837, -0.588047, -0.806224,
		-0.064657, 0.803750, -0.591443,
		0.995799, 0.090476, 0.014091,
		35.740810, 38.806320, 27.665668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240723, 38.971935, 26.980503>,  <35.043751, 38.742989, 27.655806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240723, 38.971935, 26.980503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580574, 38.823734, 27.130627>,  <35.784485, 38.734814, 27.220701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580574, 38.823734, 27.130627>,  <35.240723, 38.971935, 26.980503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580574, 38.823734, 27.130627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111226, -0.569750, -0.814257,
		0.515519, 0.733560, -0.442866,
		0.849629, -0.370507, 0.375308,
		35.835464, 38.712582, 27.243219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843121, 39.012177, 26.483217>,  <35.240723, 38.971935, 26.980503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843121, 39.012177, 26.483217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934345, 38.706684, 26.724777>,  <35.989082, 38.523388, 26.869713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934345, 38.706684, 26.724777>,  <35.843121, 39.012177, 26.483217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934345, 38.706684, 26.724777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104607, -0.597437, -0.795064,
		0.968011, 0.244498, -0.056362,
		0.228064, -0.763734, 0.603902,
		36.002766, 38.477562, 26.905947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270664, 38.576241, 26.076326>,  <35.843121, 39.012177, 26.483217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270664, 38.576241, 26.076326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184433, 38.336697, 26.384844>,  <36.132694, 38.192970, 26.569954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184433, 38.336697, 26.384844>,  <36.270664, 38.576241, 26.076326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184433, 38.336697, 26.384844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108558, -0.799666, -0.590550,
		0.970434, -0.043577, 0.237398,
		-0.215574, -0.598861, 0.771293,
		36.119762, 38.157040, 26.616232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715378, 38.026649, 26.073158>,  <36.270664, 38.576241, 26.076326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715378, 38.026649, 26.073158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424992, 37.870323, 26.299517>,  <36.250759, 37.776527, 26.435331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424992, 37.870323, 26.299517>,  <36.715378, 38.026649, 26.073158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424992, 37.870323, 26.299517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078431, -0.770432, -0.632680,
		0.683243, -0.503688, 0.528656,
		-0.725966, -0.390811, 0.565897,
		36.207203, 37.753078, 26.469286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894474, 37.384907, 26.436998>,  <36.715378, 38.026649, 26.073158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894474, 37.384907, 26.436998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503139, 37.388924, 26.354286>,  <36.268337, 37.391335, 26.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503139, 37.388924, 26.354286>,  <36.894474, 37.384907, 26.436998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503139, 37.388924, 26.354286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078493, -0.906260, -0.415370,
		-0.191569, -0.422602, 0.885838,
		-0.978335, 0.010040, -0.206782,
		36.209641, 37.391937, 26.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803177, 36.727623, 26.264431>,  <36.894474, 37.384907, 26.436998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803177, 36.727623, 26.264431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433971, 36.844433, 26.164215>,  <36.212448, 36.914516, 26.104086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433971, 36.844433, 26.164215>,  <36.803177, 36.727623, 26.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433971, 36.844433, 26.164215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164553, -0.888185, -0.429010,
		-0.347805, -0.354755, 0.867860,
		-0.923013, 0.292020, -0.250540,
		36.157066, 36.932037, 26.089052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295731, 36.213745, 26.568146>,  <36.803177, 36.727623, 26.264431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295731, 36.213745, 26.568146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124432, 36.421413, 26.272289>,  <36.021652, 36.546013, 26.094776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124432, 36.421413, 26.272289>,  <36.295731, 36.213745, 26.568146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124432, 36.421413, 26.272289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195546, -0.852341, -0.485053,
		-0.882252, -0.063088, 0.466532,
		-0.428245, 0.519167, -0.739643,
		35.995956, 36.577164, 26.050398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640579, 35.939655, 26.461882>,  <36.295731, 36.213745, 26.568146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640579, 35.939655, 26.461882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695061, 36.135555, 26.117418>,  <35.727749, 36.253094, 25.910740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695061, 36.135555, 26.117418>,  <35.640579, 35.939655, 26.461882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695061, 36.135555, 26.117418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322385, -0.800033, -0.505979,
		-0.936758, 0.346541, 0.048920,
		0.136205, 0.489751, -0.861157,
		35.735924, 36.282482, 25.859072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909332, 36.096451, 26.147602>,  <35.640579, 35.939655, 26.461882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909332, 36.096451, 26.147602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204803, 36.122013, 25.879194>,  <35.382088, 36.137352, 25.718149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204803, 36.122013, 25.879194>,  <34.909332, 36.096451, 26.147602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204803, 36.122013, 25.879194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404197, -0.754660, -0.516830,
		-0.539420, 0.652996, -0.531622,
		0.738682, 0.063909, -0.671018,
		35.426407, 36.141186, 25.677889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584351, 35.967388, 25.500820>,  <34.909332, 36.096451, 26.147602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584351, 35.967388, 25.500820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968830, 35.910099, 25.406517>,  <35.199516, 35.875725, 25.349936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968830, 35.910099, 25.406517>,  <34.584351, 35.967388, 25.500820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968830, 35.910099, 25.406517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268193, -0.685233, -0.677147,
		-0.064565, 0.714102, -0.697057,
		0.961199, -0.143225, -0.235759,
		35.257191, 35.867130, 25.335789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518116, 35.881824, 24.851454>,  <34.584351, 35.967388, 25.500820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518116, 35.881824, 24.851454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892220, 35.755234, 24.914877>,  <35.116680, 35.679279, 24.952930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892220, 35.755234, 24.914877>,  <34.518116, 35.881824, 24.851454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892220, 35.755234, 24.914877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131861, -0.727190, -0.673652,
		0.328497, 0.609129, -0.721839,
		0.935255, -0.316475, 0.158560,
		35.172794, 35.660290, 24.962444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833275, 35.926891, 24.230822>,  <34.518116, 35.881824, 24.851454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833275, 35.926891, 24.230822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045563, 35.663139, 24.443823>,  <35.172935, 35.504890, 24.571623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045563, 35.663139, 24.443823>,  <34.833275, 35.926891, 24.230822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045563, 35.663139, 24.443823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059187, -0.655586, -0.752797,
		0.845478, 0.368008, -0.386960,
		0.530721, -0.659376, 0.532502,
		35.204781, 35.465328, 24.603573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323185, 35.643475, 23.802227>,  <34.833275, 35.926891, 24.230822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323185, 35.643475, 23.802227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272732, 35.372665, 24.092255>,  <35.242458, 35.210178, 24.266272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272732, 35.372665, 24.092255>,  <35.323185, 35.643475, 23.802227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272732, 35.372665, 24.092255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140736, -0.711301, -0.688654,
		0.981980, -0.188904, -0.005564,
		-0.126132, -0.677027, 0.725068,
		35.234894, 35.169556, 24.309774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779293, 35.048203, 23.514231>,  <35.323185, 35.643475, 23.802227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779293, 35.048203, 23.514231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577198, 34.873550, 23.811979>,  <35.455940, 34.768761, 23.990629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577198, 34.873550, 23.811979>,  <35.779293, 35.048203, 23.514231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577198, 34.873550, 23.811979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062909, -0.841629, -0.536379,
		0.860685, -0.317825, 0.397753,
		-0.505236, -0.436631, 0.744372,
		35.425629, 34.742561, 24.035292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013531, 34.423378, 23.492901>,  <35.779293, 35.048203, 23.514231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013531, 34.423378, 23.492901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671909, 34.375828, 23.695467>,  <35.466934, 34.347298, 23.817007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671909, 34.375828, 23.695467>,  <36.013531, 34.423378, 23.492901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671909, 34.375828, 23.695467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158647, -0.867626, -0.471228,
		0.495397, -0.482796, 0.722142,
		-0.854056, -0.118879, 0.506414,
		35.415691, 34.340164, 23.847391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040989, 33.781380, 24.021854>,  <36.013531, 34.423378, 23.492901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040989, 33.781380, 24.021854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670712, 33.883312, 23.910027>,  <35.448547, 33.944473, 23.842930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670712, 33.883312, 23.910027>,  <36.040989, 33.781380, 24.021854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670712, 33.883312, 23.910027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145326, -0.921901, -0.359135,
		-0.349252, -0.291819, 0.890429,
		-0.925690, 0.254831, -0.279567,
		35.393005, 33.959763, 23.826157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829094, 33.922531, 23.732859>,  <36.040989, 33.781380, 24.021854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829094, 33.922531, 23.732859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122761, 33.818073, 23.482161>,  <37.298962, 33.755398, 23.331741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122761, 33.818073, 23.482161>,  <36.829094, 33.922531, 23.732859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122761, 33.818073, 23.482161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678815, 0.302187, 0.669248,
		0.014626, -0.916781, 0.399120,
		0.734163, -0.261141, -0.626745,
		37.343010, 33.739731, 23.294136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293579, 33.696423, 24.121826>,  <36.829094, 33.922531, 23.732859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293579, 33.696423, 24.121826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508804, 33.753147, 23.789471>,  <37.637939, 33.787182, 23.590057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508804, 33.753147, 23.789471>,  <37.293579, 33.696423, 24.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508804, 33.753147, 23.789471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764174, 0.333919, 0.551848,
		0.355707, -0.931874, 0.071302,
		0.538062, 0.141809, -0.830891,
		37.670223, 33.795689, 23.540203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859798, 33.404419, 24.274706>,  <37.293579, 33.696423, 24.121826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859798, 33.404419, 24.274706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955139, 33.655239, 23.978060>,  <38.012344, 33.805733, 23.800072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955139, 33.655239, 23.978060>,  <37.859798, 33.404419, 24.274706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955139, 33.655239, 23.978060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577876, 0.522159, 0.627224,
		0.780543, -0.578062, -0.237900,
		0.238353, 0.627052, -0.741616,
		38.026646, 33.843353, 23.755575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435352, 33.556786, 24.538111>,  <37.859798, 33.404419, 24.274706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435352, 33.556786, 24.538111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363941, 33.830791, 24.255587>,  <38.321095, 33.995197, 24.086073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363941, 33.830791, 24.255587>,  <38.435352, 33.556786, 24.538111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363941, 33.830791, 24.255587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546598, 0.665936, 0.507700,
		0.818142, -0.295427, -0.493321,
		-0.178532, 0.685020, -0.706311,
		38.310383, 34.036297, 24.043694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017490, 33.673477, 24.179743>,  <38.435352, 33.556786, 24.538111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017490, 33.673477, 24.179743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779152, 33.994701, 24.176596>,  <38.636150, 34.187435, 24.174707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779152, 33.994701, 24.176596>,  <39.017490, 33.673477, 24.179743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779152, 33.994701, 24.176596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600359, 0.451907, 0.659811,
		0.533425, 0.388419, -0.751391,
		-0.595842, 0.803063, -0.007867,
		38.600399, 34.235619, 24.174236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499214, 34.324429, 24.282825>,  <39.017490, 33.673477, 24.179743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499214, 34.324429, 24.282825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120731, 34.439915, 24.341269>,  <38.893642, 34.509205, 24.376333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120731, 34.439915, 24.341269>,  <39.499214, 34.324429, 24.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120731, 34.439915, 24.341269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294839, 0.583249, 0.756895,
		0.133308, 0.759254, -0.636995,
		-0.946202, 0.288711, 0.146106,
		38.836872, 34.526527, 24.385099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540890, 34.961231, 24.301729>,  <39.499214, 34.324429, 24.282825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540890, 34.961231, 24.301729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192207, 34.889835, 24.484276>,  <38.982998, 34.847000, 24.593803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192207, 34.889835, 24.484276>,  <39.540890, 34.961231, 24.301729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192207, 34.889835, 24.484276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292160, 0.558377, 0.776439,
		-0.393408, 0.810159, -0.434595,
		-0.871707, -0.178486, 0.456366,
		38.930695, 34.836288, 24.621185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571232, 35.510761, 24.725918>,  <39.540890, 34.961231, 24.301729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571232, 35.510761, 24.725918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253136, 35.316051, 24.870495>,  <39.062279, 35.199226, 24.957241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253136, 35.316051, 24.870495>,  <39.571232, 35.510761, 24.725918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253136, 35.316051, 24.870495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055347, 0.651949, 0.756240,
		-0.603757, 0.581392, -0.545400,
		-0.795245, -0.486771, 0.361440,
		39.014561, 35.170021, 24.978928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175907, 36.038277, 24.996420>,  <39.571232, 35.510761, 24.725918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175907, 36.038277, 24.996420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037914, 35.695515, 25.149626>,  <38.955116, 35.489857, 25.241549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037914, 35.695515, 25.149626>,  <39.175907, 36.038277, 24.996420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037914, 35.695515, 25.149626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243123, 0.475721, 0.845329,
		-0.906574, 0.198508, -0.372450,
		-0.344987, -0.856904, 0.383014,
		38.934418, 35.438442, 25.264530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488098, 36.209743, 25.307768>,  <39.175907, 36.038277, 24.996420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488098, 36.209743, 25.307768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634293, 35.880901, 25.482378>,  <38.722012, 35.683594, 25.587145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634293, 35.880901, 25.482378>,  <38.488098, 36.209743, 25.307768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634293, 35.880901, 25.482378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169203, 0.402478, 0.899656,
		-0.915308, -0.402675, 0.007997,
		0.365488, -0.822109, 0.436526,
		38.743938, 35.634270, 25.613337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023701, 36.038624, 25.785074>,  <38.488098, 36.209743, 25.307768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023701, 36.038624, 25.785074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379318, 35.903545, 25.908720>,  <38.592690, 35.822498, 25.982908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379318, 35.903545, 25.908720>,  <38.023701, 36.038624, 25.785074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379318, 35.903545, 25.908720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161974, 0.399513, 0.902305,
		-0.428203, -0.852261, 0.300489,
		0.889049, -0.337698, 0.309116,
		38.646034, 35.802235, 26.001455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961346, 35.740715, 26.470282>,  <38.023701, 36.038624, 25.785074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961346, 35.740715, 26.470282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338207, 35.864880, 26.419691>,  <38.564323, 35.939377, 26.389336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338207, 35.864880, 26.419691>,  <37.961346, 35.740715, 26.470282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338207, 35.864880, 26.419691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008286, 0.398787, 0.917006,
		0.335083, -0.862911, 0.378290,
		0.942152, 0.310407, -0.126477,
		38.620853, 35.958004, 26.381748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308914, 35.609955, 27.090425>,  <37.961346, 35.740715, 26.470282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308914, 35.609955, 27.090425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508907, 35.903294, 26.906157>,  <38.628902, 36.079296, 26.795595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508907, 35.903294, 26.906157>,  <38.308914, 35.609955, 27.090425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508907, 35.903294, 26.906157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086107, 0.487204, 0.869032,
		0.861744, -0.474168, 0.180447,
		0.499983, 0.733346, -0.460675,
		38.658901, 36.123299, 26.767954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796318, 35.755054, 27.560827>,  <38.308914, 35.609955, 27.090425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796318, 35.755054, 27.560827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749653, 36.090218, 27.347548>,  <38.721653, 36.291317, 27.219580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749653, 36.090218, 27.347548>,  <38.796318, 35.755054, 27.560827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749653, 36.090218, 27.347548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337301, 0.538384, 0.772250,
		0.934140, -0.089752, -0.345439,
		-0.116668, 0.837907, -0.533199,
		38.714653, 36.341591, 27.187588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379642, 36.134262, 27.689028>,  <38.796318, 35.755054, 27.560827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379642, 36.134262, 27.689028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134892, 36.414577, 27.542334>,  <38.988041, 36.582767, 27.454317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134892, 36.414577, 27.542334>,  <39.379642, 36.134262, 27.689028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134892, 36.414577, 27.542334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068290, 0.508741, 0.858206,
		0.787998, 0.500074, -0.359146,
		-0.611879, 0.700791, -0.366737,
		38.951328, 36.624813, 27.432312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765278, 36.811638, 27.786499>,  <39.379642, 36.134262, 27.689028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765278, 36.811638, 27.786499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372429, 36.883671, 27.764559>,  <39.136719, 36.926891, 27.751394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372429, 36.883671, 27.764559>,  <39.765278, 36.811638, 27.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372429, 36.883671, 27.764559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042029, 0.493772, 0.868576,
		0.183502, 0.850740, -0.492512,
		-0.982121, 0.180085, -0.054852,
		39.077793, 36.937695, 27.748102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724602, 37.470417, 27.990131>,  <39.765278, 36.811638, 27.786499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724602, 37.470417, 27.990131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327957, 37.425240, 27.964983>,  <39.089970, 37.398132, 27.949894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327957, 37.425240, 27.964983>,  <39.724602, 37.470417, 27.990131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327957, 37.425240, 27.964983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120815, 0.636818, 0.761490,
		-0.045972, 0.762696, -0.645120,
		-0.991610, -0.112948, -0.062870,
		39.030476, 37.391354, 27.946121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455154, 38.047947, 27.901861>,  <39.724602, 37.470417, 27.990131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455154, 38.047947, 27.901861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154572, 37.845448, 28.071106>,  <38.974220, 37.723946, 28.172653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154572, 37.845448, 28.071106>,  <39.455154, 38.047947, 27.901861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154572, 37.845448, 28.071106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037632, 0.607358, 0.793537,
		-0.658709, 0.612231, -0.437351,
		-0.751456, -0.506251, 0.423112,
		38.929134, 37.693573, 28.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877136, 38.477032, 28.156624>,  <39.455154, 38.047947, 27.901861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877136, 38.477032, 28.156624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856670, 38.147793, 28.382862>,  <38.844391, 37.950249, 28.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856670, 38.147793, 28.382862>,  <38.877136, 38.477032, 28.156624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856670, 38.147793, 28.382862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104011, 0.567649, 0.816674,
		-0.993259, -0.017041, -0.114656,
		-0.051168, -0.823094, 0.565595,
		38.841320, 37.900864, 28.552540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339890, 38.577343, 28.555393>,  <38.877136, 38.477032, 28.156624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339890, 38.577343, 28.555393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525120, 38.273140, 28.737465>,  <38.636257, 38.090618, 28.846708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525120, 38.273140, 28.737465>,  <38.339890, 38.577343, 28.555393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525120, 38.273140, 28.737465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139449, 0.444649, 0.884783,
		-0.875280, -0.473195, 0.099854,
		0.463075, -0.760509, 0.455179,
		38.664043, 38.044987, 28.874018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861813, 38.269184, 29.045877>,  <38.339890, 38.577343, 28.555393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861813, 38.269184, 29.045877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237759, 38.206909, 29.167482>,  <38.463326, 38.169544, 29.240446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237759, 38.206909, 29.167482>,  <37.861813, 38.269184, 29.045877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237759, 38.206909, 29.167482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226828, 0.380959, 0.896337,
		-0.255365, -0.911390, 0.322734,
		0.939861, -0.155688, 0.304012,
		38.519718, 38.160202, 29.258686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717896, 38.194206, 29.775194>,  <37.861813, 38.269184, 29.045877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717896, 38.194206, 29.775194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114674, 38.227337, 29.736862>,  <38.352741, 38.247215, 29.713863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114674, 38.227337, 29.736862>,  <37.717896, 38.194206, 29.775194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114674, 38.227337, 29.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064963, 0.316820, 0.946258,
		0.108733, -0.944863, 0.308888,
		0.991946, 0.082823, -0.095830,
		38.412258, 38.252186, 29.708113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036945, 37.873669, 30.384787>,  <37.717896, 38.194206, 29.775194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036945, 37.873669, 30.384787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302311, 38.135143, 30.239147>,  <38.461529, 38.292030, 30.151764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302311, 38.135143, 30.239147>,  <38.036945, 37.873669, 30.384787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302311, 38.135143, 30.239147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113583, 0.392983, 0.912504,
		0.739581, -0.646724, 0.186462,
		0.663415, 0.653692, -0.364099,
		38.501335, 38.331249, 30.129917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595810, 37.819942, 30.824026>,  <38.036945, 37.873669, 30.384787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595810, 37.819942, 30.824026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637848, 38.186535, 30.669615>,  <38.663071, 38.406490, 30.576967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637848, 38.186535, 30.669615>,  <38.595810, 37.819942, 30.824026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637848, 38.186535, 30.669615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028481, 0.385244, 0.922375,
		0.994054, -0.107929, 0.014384,
		0.105092, 0.916481, -0.386028,
		38.669376, 38.461479, 30.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011776, 38.134674, 31.369804>,  <38.595810, 37.819942, 30.824026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011776, 38.134674, 31.369804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913403, 38.451935, 31.146942>,  <38.854378, 38.642292, 31.013224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913403, 38.451935, 31.146942>,  <39.011776, 38.134674, 31.369804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913403, 38.451935, 31.146942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191126, 0.603210, 0.774344,
		0.950256, 0.083953, -0.299944,
		-0.245938, 0.793152, -0.557158,
		38.839622, 38.689880, 30.979795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536213, 38.612236, 31.332521>,  <39.011776, 38.134674, 31.369804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536213, 38.612236, 31.332521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195438, 38.809959, 31.263397>,  <38.990974, 38.928593, 31.221924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195438, 38.809959, 31.263397>,  <39.536213, 38.612236, 31.332521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195438, 38.809959, 31.263397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169160, 0.572108, 0.802544,
		0.495573, 0.654483, -0.571016,
		-0.851934, 0.494313, -0.172809,
		38.939857, 38.958252, 31.211555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680862, 39.324181, 31.339422>,  <39.536213, 38.612236, 31.332521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680862, 39.324181, 31.339422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303852, 39.248657, 31.449686>,  <39.077644, 39.203342, 31.515844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303852, 39.248657, 31.449686>,  <39.680862, 39.324181, 31.339422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303852, 39.248657, 31.449686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167437, 0.447057, 0.878695,
		-0.289141, 0.874352, -0.389751,
		-0.942530, -0.188808, 0.275661,
		39.021091, 39.192017, 31.532385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442394, 39.933159, 31.565487>,  <39.680862, 39.324181, 31.339422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442394, 39.933159, 31.565487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190556, 39.664623, 31.721899>,  <39.039452, 39.503502, 31.815746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190556, 39.664623, 31.721899>,  <39.442394, 39.933159, 31.565487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190556, 39.664623, 31.721899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093495, 0.565120, 0.819694,
		-0.771275, 0.479518, -0.418565,
		-0.629598, -0.671343, 0.391030,
		39.001675, 39.463219, 31.839209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872414, 40.330387, 31.896587>,  <39.442394, 39.933159, 31.565487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872414, 40.330387, 31.896587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863098, 39.960613, 32.048836>,  <38.857510, 39.738747, 32.140186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863098, 39.960613, 32.048836>,  <38.872414, 40.330387, 31.896587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863098, 39.960613, 32.048836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045142, 0.379364, 0.924146,
		-0.998709, 0.038700, 0.032898,
		-0.023285, -0.924438, 0.380621,
		38.856113, 39.683281, 32.163021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473637, 40.340160, 32.460079>,  <38.872414, 40.330387, 31.896587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473637, 40.340160, 32.460079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715027, 40.024769, 32.507614>,  <38.859859, 39.835533, 32.536137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715027, 40.024769, 32.507614>,  <38.473637, 40.340160, 32.460079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715027, 40.024769, 32.507614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009109, 0.142208, 0.989795,
		-0.797330, -0.598398, 0.078637,
		0.603474, -0.788477, 0.118838,
		38.896069, 39.788227, 32.543266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310440, 40.160442, 33.185917>,  <38.473637, 40.340160, 32.460079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310440, 40.160442, 33.185917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647686, 39.960396, 33.106888>,  <38.850033, 39.840366, 33.059471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647686, 39.960396, 33.106888>,  <38.310440, 40.160442, 33.185917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647686, 39.960396, 33.106888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254503, 0.047464, 0.965907,
		-0.473690, -0.864656, 0.167299,
		0.843117, -0.500118, -0.197574,
		38.900620, 39.810360, 33.047615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325081, 39.643631, 33.790424>,  <38.310440, 40.160442, 33.185917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325081, 39.643631, 33.790424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689651, 39.684063, 33.630878>,  <38.908394, 39.708324, 33.535152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689651, 39.684063, 33.630878>,  <38.325081, 39.643631, 33.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689651, 39.684063, 33.630878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408888, -0.114065, 0.905428,
		0.046028, -0.988317, -0.145294,
		0.911423, 0.101084, -0.398861,
		38.963078, 39.714390, 33.511219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702740, 39.058708, 34.028763>,  <38.325081, 39.643631, 33.790424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702740, 39.058708, 34.028763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986145, 39.320587, 33.923401>,  <39.156189, 39.477715, 33.860184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986145, 39.320587, 33.923401>,  <38.702740, 39.058708, 34.028763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986145, 39.320587, 33.923401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461375, -0.147300, 0.874892,
		0.533992, -0.741398, -0.406425,
		0.708510, 0.654700, -0.263406,
		39.198696, 39.516998, 33.844379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269535, 38.804436, 34.072994>,  <38.702740, 39.058708, 34.028763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269535, 38.804436, 34.072994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381310, 39.186493, 34.112209>,  <39.448372, 39.415730, 34.135738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381310, 39.186493, 34.112209>,  <39.269535, 38.804436, 34.072994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381310, 39.186493, 34.112209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514153, -0.235084, 0.824853,
		0.810904, -0.180083, -0.556781,
		0.279432, 0.955147, 0.098040,
		39.465137, 39.473038, 34.141621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895512, 38.749794, 34.300186>,  <39.269535, 38.804436, 34.072994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895512, 38.749794, 34.300186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791878, 39.125584, 34.389862>,  <39.729698, 39.351059, 34.443668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791878, 39.125584, 34.389862>,  <39.895512, 38.749794, 34.300186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791878, 39.125584, 34.389862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510252, -0.063950, 0.857644,
		0.820071, 0.336600, -0.462800,
		-0.259087, 0.939474, 0.224194,
		39.714153, 39.407425, 34.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518131, 39.229126, 34.494595>,  <39.895512, 38.749794, 34.300186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518131, 39.229126, 34.494595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184601, 39.370461, 34.664249>,  <39.984482, 39.455261, 34.766041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184601, 39.370461, 34.664249>,  <40.518131, 39.229126, 34.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184601, 39.370461, 34.664249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448996, -0.012906, 0.893441,
		0.321160, 0.935407, -0.147886,
		-0.833822, 0.353338, 0.424139,
		39.934456, 39.476463, 34.791492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768200, 39.253918, 35.138836>,  <40.518131, 39.229126, 34.494595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768200, 39.253918, 35.138836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393246, 39.385784, 35.183800>,  <40.168274, 39.464905, 35.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393246, 39.385784, 35.183800>,  <40.768200, 39.253918, 35.138836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393246, 39.385784, 35.183800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128348, 0.026925, 0.991364,
		0.323795, 0.943713, -0.067551,
		-0.937381, 0.329669, 0.112405,
		40.112030, 39.484684, 35.217522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772465, 39.780674, 35.636478>,  <40.768200, 39.253918, 35.138836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772465, 39.780674, 35.636478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405239, 39.622097, 35.636963>,  <40.184906, 39.526951, 35.637253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405239, 39.622097, 35.636963>,  <40.772465, 39.780674, 35.636478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405239, 39.622097, 35.636963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057431, -0.129977, 0.989852,
		-0.392261, 0.908813, 0.142095,
		-0.918060, -0.396441, 0.001209,
		40.129822, 39.503166, 35.637325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503010, 40.057110, 36.265812>,  <40.772465, 39.780674, 35.636478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503010, 40.057110, 36.265812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268902, 39.741726, 36.190136>,  <40.128437, 39.552498, 36.144730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268902, 39.741726, 36.190136>,  <40.503010, 40.057110, 36.265812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268902, 39.741726, 36.190136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040340, -0.261348, 0.964401,
		-0.809832, 0.556807, 0.184766,
		-0.585274, -0.788456, -0.189186,
		40.093319, 39.505188, 36.133381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001293, 40.107861, 36.770771>,  <40.503010, 40.057110, 36.265812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001293, 40.107861, 36.770771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989662, 39.729317, 36.642044>,  <39.982685, 39.502190, 36.564808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989662, 39.729317, 36.642044>,  <40.001293, 40.107861, 36.770771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989662, 39.729317, 36.642044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034791, -0.320796, 0.946509,
		-0.998972, 0.038718, -0.023597,
		-0.029077, -0.946357, -0.321814,
		39.980938, 39.445408, 36.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576897, 39.843166, 37.237335>,  <40.001293, 40.107861, 36.770771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576897, 39.843166, 37.237335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777214, 39.525791, 37.098969>,  <39.897404, 39.335365, 37.015949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777214, 39.525791, 37.098969>,  <39.576897, 39.843166, 37.237335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777214, 39.525791, 37.098969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132185, -0.324849, 0.936483,
		-0.855416, -0.514707, -0.057801,
		0.500791, -0.793442, -0.345917,
		39.927452, 39.287758, 36.995193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351219, 39.250198, 37.596664>,  <39.576897, 39.843166, 37.237335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351219, 39.250198, 37.596664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703121, 39.110420, 37.467716>,  <39.914261, 39.026554, 37.390347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703121, 39.110420, 37.467716>,  <39.351219, 39.250198, 37.596664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703121, 39.110420, 37.467716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073433, -0.570052, 0.818321,
		-0.469721, -0.743595, -0.475845,
		0.879755, -0.349440, -0.322370,
		39.967049, 39.005589, 37.371006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332790, 38.483112, 37.565922>,  <39.351219, 39.250198, 37.596664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332790, 38.483112, 37.565922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718697, 38.576061, 37.615288>,  <39.950241, 38.631828, 37.644909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718697, 38.576061, 37.615288>,  <39.332790, 38.483112, 37.565922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718697, 38.576061, 37.615288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027678, -0.556101, 0.830654,
		0.261652, -0.797970, -0.542939,
		0.964766, 0.232370, 0.123419,
		40.008125, 38.645771, 37.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792049, 37.897144, 37.650127>,  <39.332790, 38.483112, 37.565922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792049, 37.897144, 37.650127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940975, 38.223690, 37.826736>,  <40.030331, 38.419617, 37.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940975, 38.223690, 37.826736>,  <39.792049, 37.897144, 37.650127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940975, 38.223690, 37.826736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085125, -0.503752, 0.859644,
		0.924197, -0.282469, -0.257045,
		0.372310, 0.816361, 0.441521,
		40.052670, 38.468597, 37.959194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298557, 37.635326, 38.062317>,  <39.792049, 37.897144, 37.650127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298557, 37.635326, 38.062317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189648, 37.984341, 38.224571>,  <40.124302, 38.193748, 38.321922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189648, 37.984341, 38.224571>,  <40.298557, 37.635326, 38.062317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189648, 37.984341, 38.224571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157127, -0.456222, 0.875884,
		0.949303, 0.174748, 0.261319,
		-0.272279, 0.872539, 0.405635,
		40.107964, 38.246101, 38.346260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913307, 38.061607, 38.345200>,  <40.298557, 37.635326, 38.062317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913307, 38.061607, 38.345200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720959, 38.367355, 38.517017>,  <40.605549, 38.550804, 38.620106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720959, 38.367355, 38.517017>,  <40.913307, 38.061607, 38.345200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720959, 38.367355, 38.517017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164930, -0.560009, 0.811904,
		0.861142, 0.319574, 0.395357,
		-0.480866, 0.764371, 0.429540,
		40.576698, 38.596668, 38.645878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178497, 38.127480, 38.991798>,  <40.913307, 38.061607, 38.345200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178497, 38.127480, 38.991798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803936, 38.265465, 38.966015>,  <40.579201, 38.348255, 38.950546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803936, 38.265465, 38.966015>,  <41.178497, 38.127480, 38.991798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803936, 38.265465, 38.966015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246693, -0.516427, 0.820028,
		0.249593, 0.783775, 0.568683,
		-0.936400, 0.344963, -0.064455,
		40.523014, 38.368954, 38.946678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916019, 38.349747, 39.604187>,  <41.178497, 38.127480, 38.991798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916019, 38.349747, 39.604187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582214, 38.246853, 39.409283>,  <40.381931, 38.185116, 39.292339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582214, 38.246853, 39.409283>,  <40.916019, 38.349747, 39.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582214, 38.246853, 39.409283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272269, -0.576308, 0.770544,
		-0.479020, 0.775694, 0.410900,
		-0.834511, -0.257231, -0.487261,
		40.331860, 38.169685, 39.263103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274094, 38.493980, 40.051247>,  <40.916019, 38.349747, 39.604187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274094, 38.493980, 40.051247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193794, 38.213890, 39.777199>,  <40.145615, 38.045837, 39.612770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193794, 38.213890, 39.777199>,  <40.274094, 38.493980, 40.051247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193794, 38.213890, 39.777199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276111, -0.630561, 0.725366,
		-0.939926, 0.334788, -0.066752,
		-0.200752, -0.700222, -0.685119,
		40.133568, 38.003822, 39.571663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739811, 38.023357, 40.297443>,  <40.274094, 38.493980, 40.051247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739811, 38.023357, 40.297443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862377, 37.786083, 39.999653>,  <39.935917, 37.643719, 39.820980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862377, 37.786083, 39.999653>,  <39.739811, 38.023357, 40.297443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862377, 37.786083, 39.999653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294801, -0.802779, 0.518302,
		-0.905099, 0.060658, -0.420853,
		0.306413, -0.593183, -0.744477,
		39.954300, 37.608128, 39.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030186, 37.585236, 40.208523>,  <39.739811, 38.023357, 40.297443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030186, 37.585236, 40.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373016, 37.436146, 40.066257>,  <39.578716, 37.346691, 39.980900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373016, 37.436146, 40.066257>,  <39.030186, 37.585236, 40.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373016, 37.436146, 40.066257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318865, -0.926017, 0.202033,
		-0.404652, -0.059749, -0.912517,
		0.857077, -0.372723, -0.355663,
		39.630138, 37.324329, 39.959560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770939, 37.002930, 39.977077>,  <39.030186, 37.585236, 40.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770939, 37.002930, 39.977077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169144, 36.965679, 39.970310>,  <39.408066, 36.943329, 39.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169144, 36.965679, 39.970310>,  <38.770939, 37.002930, 39.977077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169144, 36.965679, 39.970310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087074, -0.971129, 0.222097,
		-0.037110, -0.219627, -0.974878,
		0.995510, -0.093129, -0.016915,
		39.467796, 36.937740, 39.965237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981129, 36.259163, 39.780003>,  <38.770939, 37.002930, 39.977077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981129, 36.259163, 39.780003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341011, 36.388763, 39.896996>,  <39.556942, 36.466522, 39.967194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341011, 36.388763, 39.896996>,  <38.981129, 36.259163, 39.780003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341011, 36.388763, 39.896996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239672, -0.926737, 0.289337,
		0.364804, -0.190219, -0.911447,
		0.899709, 0.323999, 0.292487,
		39.610924, 36.485962, 39.984741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483334, 35.796555, 39.491131>,  <38.981129, 36.259163, 39.780003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483334, 35.796555, 39.491131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675697, 35.978863, 39.790730>,  <39.791115, 36.088249, 39.970490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675697, 35.978863, 39.790730>,  <39.483334, 35.796555, 39.491131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675697, 35.978863, 39.790730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512595, -0.839217, 0.181551,
		0.711319, 0.296624, -0.637212,
		0.480907, 0.455772, 0.748999,
		39.819969, 36.115593, 40.015430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149632, 35.596474, 39.313900>,  <39.483334, 35.796555, 39.491131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149632, 35.596474, 39.313900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105362, 35.711563, 39.694420>,  <40.078800, 35.780617, 39.922729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105362, 35.711563, 39.694420>,  <40.149632, 35.596474, 39.313900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105362, 35.711563, 39.694420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323362, -0.894671, 0.308221,
		0.939780, 0.341726, 0.005981,
		-0.110678, 0.287726, 0.951296,
		40.072159, 35.797882, 39.979809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556911, 35.123680, 39.598816>,  <40.149632, 35.596474, 39.313900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556911, 35.123680, 39.598816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344147, 35.288990, 39.894459>,  <40.216488, 35.388176, 40.071846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344147, 35.288990, 39.894459>,  <40.556911, 35.123680, 39.598816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344147, 35.288990, 39.894459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181107, -0.797105, 0.576041,
		0.827208, 0.440259, 0.349141,
		-0.531909, 0.413274, 0.739106,
		40.184574, 35.412971, 40.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978050, 35.239479, 40.189522>,  <40.556911, 35.123680, 39.598816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978050, 35.239479, 40.189522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594723, 35.192757, 40.293812>,  <40.364727, 35.164722, 40.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594723, 35.192757, 40.293812>,  <40.978050, 35.239479, 40.189522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594723, 35.192757, 40.293812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270061, -0.668123, 0.693310,
		0.093215, 0.734825, 0.671821,
		-0.958320, -0.116806, 0.260727,
		40.307228, 35.157715, 40.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936146, 35.336948, 40.854507>,  <40.978050, 35.239479, 40.189522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936146, 35.336948, 40.854507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611603, 35.127235, 40.751110>,  <40.416878, 35.001408, 40.689072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611603, 35.127235, 40.751110>,  <40.936146, 35.336948, 40.854507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611603, 35.127235, 40.751110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225284, -0.688521, 0.689337,
		-0.539388, 0.501067, 0.676751,
		-0.811361, -0.524282, -0.258498,
		40.368195, 34.969952, 40.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676289, 35.093838, 41.461514>,  <40.936146, 35.336948, 40.854507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676289, 35.093838, 41.461514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492741, 34.845608, 41.207169>,  <40.382610, 34.696671, 41.054562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492741, 34.845608, 41.207169>,  <40.676289, 35.093838, 41.461514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492741, 34.845608, 41.207169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162453, -0.762190, 0.626638,
		-0.873527, 0.184247, 0.450560,
		-0.458869, -0.620580, -0.635862,
		40.355080, 34.659435, 41.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277088, 34.694763, 41.891914>,  <40.676289, 35.093838, 41.461514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277088, 34.694763, 41.891914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316460, 34.515240, 41.536636>,  <40.340084, 34.407524, 41.323471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316460, 34.515240, 41.536636>,  <40.277088, 34.694763, 41.891914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316460, 34.515240, 41.536636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129572, -0.879147, 0.458596,
		-0.986673, -0.160224, -0.028380,
		0.098428, -0.448807, -0.888192,
		40.345989, 34.380596, 41.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761517, 34.211697, 41.918213>,  <40.277088, 34.694763, 41.891914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761517, 34.211697, 41.918213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069500, 34.114586, 41.682175>,  <40.254292, 34.056320, 41.540550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069500, 34.114586, 41.682175>,  <39.761517, 34.211697, 41.918213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069500, 34.114586, 41.682175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094691, -0.871078, 0.481931,
		-0.631024, -0.426945, -0.647708,
		0.769962, -0.242778, -0.590099,
		40.300488, 34.041752, 41.505146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701591, 33.465065, 41.693661>,  <39.761517, 34.211697, 41.918213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701591, 33.465065, 41.693661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073841, 33.600266, 41.749790>,  <40.297192, 33.681385, 41.783466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073841, 33.600266, 41.749790>,  <39.701591, 33.465065, 41.693661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073841, 33.600266, 41.749790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161406, -0.723187, 0.671527,
		0.328456, -0.602292, -0.727572,
		0.930626, 0.338001, 0.140321,
		40.353027, 33.701664, 41.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098080, 32.858067, 41.810608>,  <39.701591, 33.465065, 41.693661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098080, 32.858067, 41.810608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308834, 33.172222, 41.940567>,  <40.435287, 33.360714, 42.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308834, 33.172222, 41.940567>,  <40.098080, 32.858067, 41.810608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308834, 33.172222, 41.940567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254188, -0.510375, 0.821527,
		0.811038, -0.350262, -0.468544,
		0.526883, 0.785388, 0.324901,
		40.466900, 33.407837, 42.038036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698112, 33.059063, 41.472500>,  <40.098080, 32.858067, 41.810608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698112, 33.059063, 41.472500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335304, 33.186813, 41.362732>,  <40.117619, 33.263466, 41.296871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335304, 33.186813, 41.362732>,  <40.698112, 33.059063, 41.472500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335304, 33.186813, 41.362732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381276, 0.899509, -0.213335,
		0.178709, -0.298129, -0.937647,
		-0.907023, 0.319378, -0.274420,
		40.063198, 33.282627, 41.280407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845047, 33.412094, 40.880714>,  <40.698112, 33.059063, 41.472500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845047, 33.412094, 40.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484188, 33.547241, 40.988026>,  <40.267673, 33.628330, 41.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484188, 33.547241, 40.988026>,  <40.845047, 33.412094, 40.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484188, 33.547241, 40.988026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190296, 0.869709, -0.455404,
		-0.387193, -0.359789, -0.848901,
		-0.902147, 0.337872, 0.268279,
		40.213543, 33.648602, 41.068508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422199, 33.585369, 40.300049>,  <40.845047, 33.412094, 40.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422199, 33.585369, 40.300049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332294, 33.811195, 40.617729>,  <40.278351, 33.946690, 40.808338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332294, 33.811195, 40.617729>,  <40.422199, 33.585369, 40.300049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332294, 33.811195, 40.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118472, 0.824838, -0.552817,
		-0.967184, -0.030164, -0.252279,
		-0.224765, 0.564564, 0.794197,
		40.264866, 33.980564, 40.855988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803696, 33.812279, 40.154778>,  <40.422199, 33.585369, 40.300049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803696, 33.812279, 40.154778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955654, 34.062473, 40.427380>,  <40.046829, 34.212589, 40.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955654, 34.062473, 40.427380>,  <39.803696, 33.812279, 40.154778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955654, 34.062473, 40.427380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236368, 0.777918, -0.582215,
		-0.894322, 0.060093, 0.443369,
		0.379892, 0.625486, 0.681506,
		40.069622, 34.250118, 40.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236462, 34.287216, 40.473053>,  <39.803696, 33.812279, 40.154778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236462, 34.287216, 40.473053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582600, 34.480053, 40.527843>,  <39.790283, 34.595757, 40.560719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582600, 34.480053, 40.527843>,  <39.236462, 34.287216, 40.473053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582600, 34.480053, 40.527843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349216, 0.776045, -0.525169,
		-0.359482, 0.406618, 0.839902,
		0.865344, 0.482096, 0.136977,
		39.842201, 34.624683, 40.568935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013248, 34.923592, 40.514374>,  <39.236462, 34.287216, 40.473053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013248, 34.923592, 40.514374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405125, 34.996426, 40.480778>,  <39.640251, 35.040127, 40.460621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405125, 34.996426, 40.480778>,  <39.013248, 34.923592, 40.514374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405125, 34.996426, 40.480778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198852, 0.828247, -0.523893,
		-0.025830, 0.529954, 0.847633,
		0.979689, 0.182086, -0.083988,
		39.699032, 35.051052, 40.455582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108322, 35.655426, 40.841591>,  <39.013248, 34.923592, 40.514374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108322, 35.655426, 40.841591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356750, 35.573502, 40.538982>,  <39.505806, 35.524345, 40.357418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356750, 35.573502, 40.538982>,  <39.108322, 35.655426, 40.841591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356750, 35.573502, 40.538982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220829, 0.880414, -0.419649,
		0.752002, 0.427692, 0.501569,
		0.621069, -0.204816, -0.756521,
		39.543072, 35.512058, 40.312027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712105, 35.703426, 41.118809>,  <39.108322, 35.655426, 40.841591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712105, 35.703426, 41.118809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030708, 35.702679, 40.876961>,  <40.221870, 35.702229, 40.731853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030708, 35.702679, 40.876961>,  <39.712105, 35.703426, 41.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030708, 35.702679, 40.876961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149372, 0.968388, -0.199780,
		0.585879, 0.249440, 0.771055,
		0.796513, -0.001873, -0.604618,
		40.269661, 35.702118, 40.695576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139137, 36.239529, 41.200218>,  <39.712105, 35.703426, 41.118809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139137, 36.239529, 41.200218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176109, 36.121075, 40.819954>,  <40.198292, 36.050003, 40.591797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176109, 36.121075, 40.819954>,  <40.139137, 36.239529, 41.200218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176109, 36.121075, 40.819954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131704, 0.942725, -0.306471,
		0.986970, 0.153534, 0.048138,
		0.092434, -0.296138, -0.950662,
		40.203838, 36.032234, 40.534756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479866, 36.773491, 40.895294>,  <40.139137, 36.239529, 41.200218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479866, 36.773491, 40.895294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264622, 36.570862, 40.625828>,  <40.135475, 36.449284, 40.464149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264622, 36.570862, 40.625828>,  <40.479866, 36.773491, 40.895294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264622, 36.570862, 40.625828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193236, 0.852102, -0.486398,
		0.820426, -0.131559, -0.556411,
		-0.538109, -0.506572, -0.673664,
		40.103188, 36.418892, 40.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773697, 36.927505, 40.341583>,  <40.479866, 36.773491, 40.895294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773697, 36.927505, 40.341583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423759, 36.792667, 40.202435>,  <40.213799, 36.711765, 40.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423759, 36.792667, 40.202435>,  <40.773697, 36.927505, 40.341583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423759, 36.792667, 40.202435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091803, 0.820510, -0.564212,
		0.475628, -0.461661, -0.748764,
		-0.874843, -0.337094, -0.347875,
		40.161308, 36.691540, 40.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879539, 36.945152, 39.670250>,  <40.773697, 36.927505, 40.341583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879539, 36.945152, 39.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484978, 36.945419, 39.735981>,  <40.248241, 36.945580, 39.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484978, 36.945419, 39.735981>,  <40.879539, 36.945152, 39.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484978, 36.945419, 39.735981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103964, 0.771893, -0.627194,
		-0.127258, -0.635752, -0.761331,
		-0.986406, 0.000664, 0.164325,
		40.189056, 36.945618, 39.785278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570023, 36.803940, 39.020611>,  <40.879539, 36.945152, 39.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570023, 36.803940, 39.020611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376999, 37.063614, 39.255791>,  <40.261185, 37.219418, 39.396900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376999, 37.063614, 39.255791>,  <40.570023, 36.803940, 39.020611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376999, 37.063614, 39.255791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080348, 0.701265, -0.708359,
		-0.872169, -0.294585, -0.390564,
		-0.482561, 0.649190, 0.587952,
		40.232231, 37.258369, 39.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926464, 37.074051, 38.653374>,  <40.570023, 36.803940, 39.020611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926464, 37.074051, 38.653374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015400, 37.347446, 38.931484>,  <40.068764, 37.511482, 39.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015400, 37.347446, 38.931484>,  <39.926464, 37.074051, 38.653374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015400, 37.347446, 38.931484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055993, 0.720899, -0.690774,
		-0.973360, 0.114658, 0.198557,
		0.222342, 0.683490, 0.695274,
		40.082104, 37.552494, 39.140068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480751, 37.483292, 38.977318>,  <39.926464, 37.074051, 38.653374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480751, 37.483292, 38.977318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546200, 37.786297, 39.230110>,  <39.585468, 37.968102, 39.381786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546200, 37.786297, 39.230110>,  <39.480751, 37.483292, 38.977318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546200, 37.786297, 39.230110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352035, 0.553604, -0.754714,
		-0.921575, 0.345966, -0.176091,
		0.163621, 0.757515, 0.631980,
		39.595287, 38.013550, 39.419704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197239, 38.141468, 38.791859>,  <39.480751, 37.483292, 38.977318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197239, 38.141468, 38.791859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516617, 38.234886, 39.013828>,  <39.708244, 38.290939, 39.147011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516617, 38.234886, 39.013828>,  <39.197239, 38.141468, 38.791859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516617, 38.234886, 39.013828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398542, 0.485835, -0.777900,
		-0.451281, 0.842270, 0.294833,
		0.798442, 0.233548, 0.554928,
		39.756149, 38.304951, 39.180305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303856, 38.838486, 38.971699>,  <39.197239, 38.141468, 38.791859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303856, 38.838486, 38.971699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673565, 38.686954, 38.952946>,  <39.895390, 38.596035, 38.941692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673565, 38.686954, 38.952946>,  <39.303856, 38.838486, 38.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673565, 38.686954, 38.952946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203084, 0.592005, -0.779927,
		0.323217, 0.711348, 0.624112,
		0.924277, -0.378832, -0.046883,
		39.950848, 38.573303, 38.938881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730602, 39.400436, 38.886208>,  <39.303856, 38.838486, 38.971699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730602, 39.400436, 38.886208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864418, 39.058949, 38.726582>,  <39.944710, 38.854057, 38.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864418, 39.058949, 38.726582>,  <39.730602, 39.400436, 38.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864418, 39.058949, 38.726582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256791, 0.490022, -0.833029,
		0.906719, 0.176207, 0.383159,
		0.334542, -0.853715, -0.399064,
		39.964779, 38.802834, 38.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445908, 39.462658, 38.688343>,  <39.730602, 39.400436, 38.886208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445908, 39.462658, 38.688343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288635, 39.179131, 38.454082>,  <40.194271, 39.009014, 38.313526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288635, 39.179131, 38.454082>,  <40.445908, 39.462658, 38.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288635, 39.179131, 38.454082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331905, 0.484586, -0.809331,
		0.857466, -0.512592, 0.044731,
		-0.393180, -0.708820, -0.585648,
		40.170681, 38.966484, 38.278389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970745, 39.428822, 38.124111>,  <40.445908, 39.462658, 38.688343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970745, 39.428822, 38.124111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811493, 39.062088, 38.112045>,  <40.715942, 38.842049, 38.104805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811493, 39.062088, 38.112045>,  <40.970745, 39.428822, 38.124111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811493, 39.062088, 38.112045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293572, 0.158493, -0.942706,
		0.869087, -0.366461, -0.332257,
		-0.398126, -0.916835, -0.030162,
		40.692055, 38.787037, 38.102997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298782, 39.055328, 37.651852>,  <40.970745, 39.428822, 38.124111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298782, 39.055328, 37.651852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921524, 38.924110, 37.673225>,  <40.695168, 38.845379, 37.686050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921524, 38.924110, 37.673225>,  <41.298782, 39.055328, 37.651852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921524, 38.924110, 37.673225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106162, 0.144977, -0.983723,
		0.314962, -0.933469, -0.171562,
		-0.943148, -0.328049, 0.053437,
		40.638580, 38.825695, 37.689255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130215, 38.672985, 36.974606>,  <41.298782, 39.055328, 37.651852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130215, 38.672985, 36.974606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770271, 38.779560, 37.112743>,  <40.554306, 38.843506, 37.195625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770271, 38.779560, 37.112743>,  <41.130215, 38.672985, 36.974606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770271, 38.779560, 37.112743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280653, 0.252406, -0.926027,
		-0.333893, -0.930217, -0.152354,
		-0.899861, 0.266435, 0.345344,
		40.500313, 38.859489, 37.216347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641808, 38.347073, 36.526287>,  <41.130215, 38.672985, 36.974606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641808, 38.347073, 36.526287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436802, 38.652725, 36.682972>,  <40.313801, 38.836117, 36.776981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436802, 38.652725, 36.682972>,  <40.641808, 38.347073, 36.526287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436802, 38.652725, 36.682972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274008, 0.286794, -0.917970,
		-0.813789, -0.577801, 0.062393,
		-0.512510, 0.764130, 0.391712,
		40.283051, 38.881966, 36.800484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203236, 37.881218, 36.439854>,  <40.641808, 38.347073, 36.526287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203236, 37.881218, 36.439854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054142, 38.212994, 36.273430>,  <40.964687, 38.412060, 36.173576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054142, 38.212994, 36.273430>,  <41.203236, 37.881218, 36.439854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054142, 38.212994, 36.273430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214039, -0.359429, -0.908294,
		-0.902915, -0.427606, -0.043560,
		-0.372736, 0.829436, -0.416059,
		40.942322, 38.461823, 36.148613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576294, 37.054039, 36.409676>,  <41.203236, 37.881218, 36.439854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576294, 37.054039, 36.409676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478859, 37.283325, 36.096733>,  <41.420399, 37.420898, 35.908966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478859, 37.283325, 36.096733>,  <41.576294, 37.054039, 36.409676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478859, 37.283325, 36.096733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906952, 0.151196, 0.393163,
		0.343658, 0.805333, 0.483051,
		-0.243592, 0.573218, -0.782358,
		41.405781, 37.455292, 35.862026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215401, 36.750011, 36.313263>,  <41.576294, 37.054039, 36.409676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215401, 36.750011, 36.313263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488083, 36.528309, 36.504292>,  <42.651691, 36.395287, 36.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488083, 36.528309, 36.504292>,  <42.215401, 36.750011, 36.313263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488083, 36.528309, 36.504292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361563, -0.822691, -0.438693,
		0.636041, 0.126389, -0.761235,
		0.681707, -0.554261, 0.477567,
		42.692596, 36.362030, 36.647560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768898, 36.629093, 35.747391>,  <42.215401, 36.750011, 36.313263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768898, 36.629093, 35.747391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791046, 37.008293, 35.622021>,  <41.804337, 37.235813, 35.546799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791046, 37.008293, 35.622021>,  <41.768898, 36.629093, 35.747391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791046, 37.008293, 35.622021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681279, -0.265352, -0.682237,
		-0.729927, -0.175750, -0.660545,
		0.055374, 0.947998, -0.313422,
		41.807659, 37.292694, 35.527992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207394, 36.200291, 35.380165>,  <41.768898, 36.629093, 35.747391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207394, 36.200291, 35.380165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571281, 36.039036, 35.419952>,  <42.789616, 35.942284, 35.443825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571281, 36.039036, 35.419952>,  <42.207394, 36.200291, 35.380165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571281, 36.039036, 35.419952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267040, -0.751469, -0.603311,
		0.317964, 0.522281, -0.791278,
		0.909719, -0.403134, 0.099470,
		42.844196, 35.918095, 35.449795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787128, 36.172001, 34.832882>,  <42.207394, 36.200291, 35.380165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787128, 36.172001, 34.832882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784634, 35.866405, 35.090961>,  <42.783138, 35.683048, 35.245811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784634, 35.866405, 35.090961>,  <42.787128, 36.172001, 34.832882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784634, 35.866405, 35.090961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241938, -0.624891, -0.742278,
		0.970272, -0.160727, -0.180940,
		-0.006236, -0.763988, 0.645200,
		42.782764, 35.637211, 35.284523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478462, 36.863808, 35.089718>,  <42.787128, 36.172001, 34.832882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478462, 36.863808, 35.089718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390797, 36.731918, 35.457031>,  <42.338196, 36.652782, 35.677422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390797, 36.731918, 35.457031>,  <42.478462, 36.863808, 35.089718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390797, 36.731918, 35.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962934, 0.078580, 0.258037,
		-0.157241, 0.940801, 0.300282,
		-0.219165, -0.329726, 0.918285,
		42.325047, 36.632999, 35.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006573, 37.140610, 35.388889>,  <42.478462, 36.863808, 35.089718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006573, 37.140610, 35.388889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882072, 36.860985, 35.646397>,  <42.807373, 36.693211, 35.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882072, 36.860985, 35.646397>,  <43.006573, 37.140610, 35.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882072, 36.860985, 35.646397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935818, -0.107535, 0.335678,
		-0.165432, 0.706930, 0.687664,
		-0.311249, -0.699060, 0.643769,
		42.788696, 36.651268, 35.839527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218727, 37.268764, 36.150227>,  <43.006573, 37.140610, 35.388889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218727, 37.268764, 36.150227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226967, 36.885464, 36.036152>,  <43.231911, 36.655483, 35.967705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226967, 36.885464, 36.036152>,  <43.218727, 37.268764, 36.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226967, 36.885464, 36.036152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958967, -0.061737, 0.276714,
		-0.282768, -0.279187, 0.917659,
		0.020602, -0.958250, -0.285189,
		43.233147, 36.597988, 35.950596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448483, 36.728352, 36.719021>,  <43.218727, 37.268764, 36.150227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448483, 36.728352, 36.719021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545441, 36.614460, 36.348038>,  <43.603615, 36.546124, 36.125446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545441, 36.614460, 36.348038>,  <43.448483, 36.728352, 36.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545441, 36.614460, 36.348038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959335, -0.072183, 0.272884,
		-0.144644, -0.955887, 0.255654,
		0.242392, -0.284729, -0.927456,
		43.618156, 36.529041, 36.069801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737568, 36.003750, 36.704098>,  <43.448483, 36.728352, 36.719021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737568, 36.003750, 36.704098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873676, 36.270702, 36.439121>,  <43.955341, 36.430874, 36.280136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873676, 36.270702, 36.439121>,  <43.737568, 36.003750, 36.704098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873676, 36.270702, 36.439121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876736, 0.029499, 0.480067,
		0.339927, -0.744136, -0.575075,
		0.340270, 0.667377, -0.662438,
		43.975758, 36.470917, 36.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325661, 35.918137, 37.127785>,  <43.737568, 36.003750, 36.704098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325661, 35.918137, 37.127785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425045, 36.126289, 36.800991>,  <44.484676, 36.251183, 36.604916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425045, 36.126289, 36.800991>,  <44.325661, 35.918137, 37.127785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425045, 36.126289, 36.800991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802962, 0.361099, 0.474194,
		0.541776, -0.773827, -0.328131,
		0.248456, 0.520384, -0.816988,
		44.499580, 36.282406, 36.555893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072639, 35.695812, 37.001839>,  <44.325661, 35.918137, 37.127785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072639, 35.695812, 37.001839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919064, 36.048523, 36.892250>,  <44.826916, 36.260147, 36.826496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919064, 36.048523, 36.892250>,  <45.072639, 35.695812, 37.001839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919064, 36.048523, 36.892250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423277, 0.431781, 0.796493,
		0.820623, 0.189842, -0.539015,
		-0.383944, 0.881774, -0.273974,
		44.803879, 36.313057, 36.810059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691502, 36.213539, 37.012486>,  <45.072639, 35.695812, 37.001839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691502, 36.213539, 37.012486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322659, 36.349899, 37.085690>,  <45.101353, 36.431717, 37.129612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322659, 36.349899, 37.085690>,  <45.691502, 36.213539, 37.012486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322659, 36.349899, 37.085690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325735, 0.428681, 0.842692,
		0.208822, 0.836670, -0.506336,
		-0.922112, 0.340904, 0.183015,
		45.046024, 36.452171, 37.140594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048290, 36.944138, 36.996120>,  <45.691502, 36.213539, 37.012486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048290, 36.944138, 36.996120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054092, 36.611683, 37.218472>,  <46.057575, 36.412209, 37.351883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054092, 36.611683, 37.218472>,  <46.048290, 36.944138, 36.996120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054092, 36.611683, 37.218472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584047, -0.444197, -0.679396,
		0.811590, 0.334517, 0.478978,
		0.014509, -0.831136, 0.555880,
		46.058445, 36.362343, 37.385235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695011, 36.752472, 37.298233>,  <46.048290, 36.944138, 36.996120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695011, 36.752472, 37.298233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455097, 36.458702, 37.171188>,  <46.311150, 36.282440, 37.094959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455097, 36.458702, 37.171188>,  <46.695011, 36.752472, 37.298233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455097, 36.458702, 37.171188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655060, -0.222721, -0.722005,
		0.459521, -0.641102, 0.614678,
		-0.599781, -0.734427, -0.317615,
		46.275162, 36.238373, 37.075905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958843, 36.032135, 37.320435>,  <46.695011, 36.752472, 37.298233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958843, 36.032135, 37.320435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707993, 36.119705, 37.021427>,  <46.557484, 36.172245, 36.842022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707993, 36.119705, 37.021427>,  <46.958843, 36.032135, 37.320435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707993, 36.119705, 37.021427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717955, -0.209728, -0.663743,
		-0.302084, -0.952936, -0.025651,
		-0.627124, 0.218922, -0.747521,
		46.519855, 36.185383, 36.797173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945713, 35.424755, 36.790752>,  <46.958843, 36.032135, 37.320435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945713, 35.424755, 36.790752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866184, 35.780407, 36.625870>,  <46.818466, 35.993797, 36.526939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866184, 35.780407, 36.625870>,  <46.945713, 35.424755, 36.790752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866184, 35.780407, 36.625870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533480, -0.254639, -0.806572,
		-0.822112, -0.380270, -0.423706,
		-0.198823, 0.889131, -0.412208,
		46.806538, 36.047146, 36.502209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.855732, 35.726643, 36.062386>,  <46.945713, 35.424755, 36.790752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.855732, 35.726643, 36.062386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169670, 35.873684, 35.862831>,  <47.358032, 35.961910, 35.743099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169670, 35.873684, 35.862831>,  <46.855732, 35.726643, 36.062386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169670, 35.873684, 35.862831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270364, -0.521279, -0.809427,
		-0.557608, 0.770154, -0.309735,
		0.784842, 0.367602, -0.498891,
		47.405121, 35.983963, 35.713165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074947, 35.726856, 35.255013>,  <46.855732, 35.726643, 36.062386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074947, 35.726856, 35.255013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452457, 35.711910, 35.123627>,  <47.678963, 35.702942, 35.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452457, 35.711910, 35.123627>,  <47.074947, 35.726856, 35.255013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.452457, 35.711910, 35.123627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098946, -0.979969, -0.172828,
		-0.315425, 0.195611, -0.928571,
		0.943778, -0.037365, -0.328462,
		47.735592, 35.700703, 35.025089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190460, 35.090813, 34.961094>,  <47.074947, 35.726856, 35.255013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190460, 35.090813, 34.961094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554958, 35.243656, 34.899609>,  <47.773659, 35.335361, 34.862717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554958, 35.243656, 34.899609>,  <47.190460, 35.090813, 34.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554958, 35.243656, 34.899609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350138, -0.915225, -0.199415,
		-0.216875, 0.127896, -0.967785,
		0.911246, 0.382106, -0.153709,
		47.828331, 35.358288, 34.853497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.751328, 32.185326, 29.592375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361633, 32.220055, 29.675631>,  <36.127815, 32.240894, 29.725584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361633, 32.220055, 29.675631>,  <36.751328, 32.185326, 29.592375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361633, 32.220055, 29.675631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224280, 0.469736, 0.853842,
		-0.023633, 0.878527, -0.477108,
		-0.974238, 0.086827, 0.208137,
		36.069363, 32.246101, 29.738071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596226, 32.832512, 29.819023>,  <36.751328, 32.185326, 29.592375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596226, 32.832512, 29.819023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299007, 32.621037, 29.983156>,  <36.120678, 32.494148, 30.081636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299007, 32.621037, 29.983156>,  <36.596226, 32.832512, 29.819023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299007, 32.621037, 29.983156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186000, 0.425832, 0.885478,
		-0.642879, 0.734269, -0.218074,
		-0.743042, -0.528693, 0.410332,
		36.076096, 32.462429, 30.106256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172604, 33.339294, 30.172455>,  <36.596226, 32.832512, 29.819023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172604, 33.339294, 30.172455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101471, 32.974186, 30.319548>,  <36.058792, 32.755123, 30.407804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101471, 32.974186, 30.319548>,  <36.172604, 33.339294, 30.172455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101471, 32.974186, 30.319548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177081, 0.337907, 0.924371,
		-0.967997, 0.229501, 0.101543,
		-0.177832, -0.912769, 0.367734,
		36.048122, 32.700356, 30.429869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918686, 33.498810, 30.707582>,  <36.172604, 33.339294, 30.172455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918686, 33.498810, 30.707582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979229, 33.109234, 30.775148>,  <36.015556, 32.875488, 30.815687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979229, 33.109234, 30.775148>,  <35.918686, 33.498810, 30.707582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979229, 33.109234, 30.775148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023353, 0.174359, 0.984405,
		-0.988203, -0.145052, 0.049135,
		0.151358, -0.973940, 0.168915,
		36.024635, 32.817051, 30.825823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489849, 33.349678, 31.237553>,  <35.918686, 33.498810, 30.707582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489849, 33.349678, 31.237553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764484, 33.059883, 31.261946>,  <35.929264, 32.886005, 31.276581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764484, 33.059883, 31.261946>,  <35.489849, 33.349678, 31.237553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764484, 33.059883, 31.261946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164098, 0.236131, 0.957765,
		-0.708290, -0.647579, 0.281011,
		0.686584, -0.724488, 0.060983,
		35.970459, 32.842537, 31.280241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265339, 32.952900, 31.802570>,  <35.489849, 33.349678, 31.237553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265339, 32.952900, 31.802570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658901, 32.905895, 31.748720>,  <35.895039, 32.877693, 31.716410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658901, 32.905895, 31.748720>,  <35.265339, 32.952900, 31.802570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658901, 32.905895, 31.748720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154648, 0.182476, 0.970972,
		-0.089531, -0.976163, 0.197711,
		0.983905, -0.117508, -0.134624,
		35.954071, 32.870644, 31.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459007, 32.421757, 32.286613>,  <35.265339, 32.952900, 31.802570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459007, 32.421757, 32.286613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795696, 32.618324, 32.197166>,  <35.997711, 32.736263, 32.143497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795696, 32.618324, 32.197166>,  <35.459007, 32.421757, 32.286613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795696, 32.618324, 32.197166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159172, 0.169896, 0.972522,
		0.515907, -0.854191, 0.064786,
		0.841727, 0.491419, -0.223614,
		36.048214, 32.765751, 32.130081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048698, 32.106136, 32.753002>,  <35.459007, 32.421757, 32.286613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048698, 32.106136, 32.753002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177422, 32.459793, 32.617519>,  <36.254654, 32.671989, 32.536228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177422, 32.459793, 32.617519>,  <36.048698, 32.106136, 32.753002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177422, 32.459793, 32.617519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282777, 0.251662, 0.925583,
		0.903591, -0.393639, -0.169030,
		0.321807, 0.884146, -0.338711,
		36.273964, 32.725037, 32.515907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688541, 32.248878, 33.193531>,  <36.048698, 32.106136, 32.753002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688541, 32.248878, 33.193531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607342, 32.601303, 33.022640>,  <36.558620, 32.812759, 32.920105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607342, 32.601303, 33.022640>,  <36.688541, 32.248878, 33.193531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607342, 32.601303, 33.022640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314925, 0.471874, 0.823503,
		0.927154, 0.032626, -0.373258,
		-0.202998, 0.881062, -0.427225,
		36.546444, 32.865623, 32.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356796, 32.707642, 33.102753>,  <36.688541, 32.248878, 33.193531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356796, 32.707642, 33.102753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034756, 32.943737, 33.126175>,  <36.841530, 33.085392, 33.140228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034756, 32.943737, 33.126175>,  <37.356796, 32.707642, 33.102753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034756, 32.943737, 33.126175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441934, 0.531097, 0.722932,
		0.395603, 0.607912, -0.688433,
		-0.805104, 0.590236, 0.058553,
		36.793224, 33.120808, 33.143742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604721, 33.382908, 33.259338>,  <37.356796, 32.707642, 33.102753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604721, 33.382908, 33.259338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225376, 33.426884, 33.378353>,  <36.997768, 33.453270, 33.449760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225376, 33.426884, 33.378353>,  <37.604721, 33.382908, 33.259338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225376, 33.426884, 33.378353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293059, 0.662612, 0.689248,
		-0.121375, 0.740850, -0.660613,
		-0.948359, 0.109941, 0.297538,
		36.940868, 33.459866, 33.467613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577824, 34.069927, 33.474926>,  <37.604721, 33.382908, 33.259338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577824, 34.069927, 33.474926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241627, 33.936142, 33.645435>,  <37.039909, 33.855869, 33.747742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241627, 33.936142, 33.645435>,  <37.577824, 34.069927, 33.474926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241627, 33.936142, 33.645435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183344, 0.564767, 0.804626,
		-0.509867, 0.754434, -0.413358,
		-0.840488, -0.334466, 0.426277,
		36.989479, 33.835804, 33.773319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077583, 34.707169, 33.520794>,  <37.577824, 34.069927, 33.474926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077583, 34.707169, 33.520794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030270, 34.412113, 33.786697>,  <37.001881, 34.235081, 33.946239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030270, 34.412113, 33.786697>,  <37.077583, 34.707169, 33.520794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030270, 34.412113, 33.786697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078131, 0.660468, 0.746779,
		-0.989902, 0.140268, -0.020489,
		-0.118281, -0.737636, 0.664757,
		36.994785, 34.190823, 33.986126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621407, 34.956509, 34.065300>,  <37.077583, 34.707169, 33.520794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621407, 34.956509, 34.065300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784569, 34.646938, 34.259068>,  <36.882465, 34.461197, 34.375328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784569, 34.646938, 34.259068>,  <36.621407, 34.956509, 34.065300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784569, 34.646938, 34.259068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046046, 0.547327, 0.835651,
		-0.911864, -0.318558, 0.258891,
		0.407901, -0.773921, 0.484419,
		36.906940, 34.414761, 34.404392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253582, 34.972210, 34.633274>,  <36.621407, 34.956509, 34.065300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253582, 34.972210, 34.633274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582798, 34.761971, 34.719398>,  <36.780327, 34.635826, 34.771072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582798, 34.761971, 34.719398>,  <36.253582, 34.972210, 34.633274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582798, 34.761971, 34.719398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130965, 0.544473, 0.828491,
		-0.552681, -0.653682, 0.516956,
		0.823038, -0.525594, 0.215311,
		36.829708, 34.604294, 34.783993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284836, 34.874317, 35.398003>,  <36.253582, 34.972210, 34.633274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284836, 34.874317, 35.398003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657566, 34.782581, 35.285507>,  <36.881207, 34.727539, 35.218010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657566, 34.782581, 35.285507>,  <36.284836, 34.874317, 35.398003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657566, 34.782581, 35.285507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355256, 0.418287, 0.835960,
		-0.074080, -0.878885, 0.471247,
		0.931829, -0.229341, -0.281243,
		36.937115, 34.713779, 35.201134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606686, 34.571918, 36.023666>,  <36.284836, 34.874317, 35.398003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606686, 34.571918, 36.023666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915291, 34.691002, 35.798763>,  <37.100452, 34.762451, 35.663822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915291, 34.691002, 35.798763>,  <36.606686, 34.571918, 36.023666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915291, 34.691002, 35.798763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421167, 0.423403, 0.802090,
		0.476850, -0.855629, 0.201278,
		0.771513, 0.297705, -0.562262,
		37.146744, 34.780315, 35.630085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212811, 34.435833, 36.480251>,  <36.606686, 34.571918, 36.023666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212811, 34.435833, 36.480251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341179, 34.707470, 36.216179>,  <37.418201, 34.870453, 36.057735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341179, 34.707470, 36.216179>,  <37.212811, 34.435833, 36.480251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341179, 34.707470, 36.216179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542534, 0.439540, 0.715864,
		0.776315, -0.587909, -0.227372,
		0.320924, 0.679093, -0.660182,
		37.437454, 34.911198, 36.018124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969612, 34.368137, 36.348614>,  <37.212811, 34.435833, 36.480251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969612, 34.368137, 36.348614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.852203, 34.738823, 36.254765>,  <37.781757, 34.961235, 36.198456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.852203, 34.738823, 36.254765>,  <37.969612, 34.368137, 36.348614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852203, 34.738823, 36.254765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712773, 0.375713, 0.592279,
		0.637022, 0.006617, -0.770817,
		-0.293525, 0.926712, -0.234622,
		37.764145, 35.016838, 36.184380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612171, 34.629444, 36.329029>,  <37.969612, 34.368137, 36.348614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612171, 34.629444, 36.329029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355522, 34.935955, 36.315559>,  <38.201530, 35.119862, 36.307480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355522, 34.935955, 36.315559>,  <38.612171, 34.629444, 36.329029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355522, 34.935955, 36.315559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741805, 0.631101, 0.226799,
		0.195042, 0.120542, -0.973359,
		-0.641627, 0.766278, -0.033672,
		38.163033, 35.165840, 36.305458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901848, 35.106960, 35.927746>,  <38.612171, 34.629444, 36.329029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901848, 35.106960, 35.927746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643906, 35.302349, 36.162884>,  <38.489140, 35.419582, 36.303967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643906, 35.302349, 36.162884>,  <38.901848, 35.106960, 35.927746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643906, 35.302349, 36.162884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696839, 0.691699, 0.189652,
		-0.313970, 0.531929, -0.786431,
		-0.644855, 0.488471, 0.587842,
		38.450451, 35.448891, 36.339237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999016, 35.835617, 35.694145>,  <38.901848, 35.106960, 35.927746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999016, 35.835617, 35.694145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850159, 35.821629, 36.065151>,  <38.760845, 35.813236, 36.287754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850159, 35.821629, 36.065151>,  <38.999016, 35.835617, 35.694145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850159, 35.821629, 36.065151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624987, 0.729357, 0.278261,
		-0.686222, 0.683239, -0.249570,
		-0.372144, -0.034971, 0.927516,
		38.738514, 35.811138, 36.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814880, 36.482285, 35.962738>,  <38.999016, 35.835617, 35.694145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814880, 36.482285, 35.962738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193241, 36.541767, 35.847393>,  <39.420258, 36.577457, 35.778183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193241, 36.541767, 35.847393>,  <38.814880, 36.482285, 35.962738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193241, 36.541767, 35.847393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249427, -0.235118, -0.939418,
		-0.207500, 0.960523, -0.185307,
		0.945902, 0.148708, -0.288367,
		39.477013, 36.586380, 35.760883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737900, 36.863617, 35.333549>,  <38.814880, 36.482285, 35.962738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737900, 36.863617, 35.333549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109886, 36.717358, 35.318272>,  <39.333080, 36.629601, 35.309105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109886, 36.717358, 35.318272>,  <38.737900, 36.863617, 35.333549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109886, 36.717358, 35.318272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110285, -0.178363, -0.977765,
		0.350705, 0.913503, -0.206197,
		0.929969, -0.365648, -0.038193,
		39.388878, 36.607662, 35.306812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091274, 37.188568, 34.802402>,  <38.737900, 36.863617, 35.333549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091274, 37.188568, 34.802402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295853, 36.847149, 34.842171>,  <39.418598, 36.642300, 34.866032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295853, 36.847149, 34.842171>,  <39.091274, 37.188568, 34.802402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295853, 36.847149, 34.842171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102963, -0.175737, -0.979038,
		0.853126, 0.490485, -0.177763,
		0.511443, -0.853546, 0.099424,
		39.449287, 36.591084, 34.871998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666313, 37.185993, 34.296204>,  <39.091274, 37.188568, 34.802402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666313, 37.185993, 34.296204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627060, 36.804546, 34.410038>,  <39.603508, 36.575680, 34.478336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627060, 36.804546, 34.410038>,  <39.666313, 37.185993, 34.296204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627060, 36.804546, 34.410038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191929, -0.298729, -0.934839,
		0.976490, -0.037117, 0.212341,
		-0.098131, -0.953616, 0.284582,
		39.597622, 36.518463, 34.495411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135876, 36.858639, 33.806324>,  <39.666313, 37.185993, 34.296204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135876, 36.858639, 33.806324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863304, 36.600990, 33.945328>,  <39.699760, 36.446400, 34.028728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863304, 36.600990, 33.945328>,  <40.135876, 36.858639, 33.806324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863304, 36.600990, 33.945328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022610, -0.456059, -0.889662,
		0.731539, -0.614095, 0.296206,
		-0.681424, -0.644125, 0.347510,
		39.658878, 36.407753, 34.049580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411407, 36.276672, 33.502888>,  <40.135876, 36.858639, 33.806324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411407, 36.276672, 33.502888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.037285, 36.189022, 33.614017>,  <39.812813, 36.136433, 33.680695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.037285, 36.189022, 33.614017>,  <40.411407, 36.276672, 33.502888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037285, 36.189022, 33.614017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061682, -0.672188, -0.737806,
		0.348421, -0.707212, 0.615186,
		-0.935306, -0.219121, 0.277827,
		39.756691, 36.123287, 33.697365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405293, 35.580387, 33.428551>,  <40.411407, 36.276672, 33.502888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405293, 35.580387, 33.428551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017982, 35.679104, 33.444206>,  <39.785595, 35.738335, 33.453598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017982, 35.679104, 33.444206>,  <40.405293, 35.580387, 33.428551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017982, 35.679104, 33.444206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178786, -0.574828, -0.798504,
		-0.174567, -0.780171, 0.600716,
		-0.968278, 0.246792, 0.039138,
		39.727501, 35.753143, 33.455948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991875, 34.970055, 33.271805>,  <40.405293, 35.580387, 33.428551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991875, 34.970055, 33.271805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738533, 35.266098, 33.181377>,  <39.586529, 35.443726, 33.127121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738533, 35.266098, 33.181377>,  <39.991875, 34.970055, 33.271805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738533, 35.266098, 33.181377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216018, -0.449598, -0.866716,
		-0.743104, -0.500100, 0.444630,
		-0.633350, 0.740109, -0.226068,
		39.548527, 35.488129, 33.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333107, 34.691940, 33.207203>,  <39.991875, 34.970055, 33.271805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333107, 34.691940, 33.207203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321228, 35.029461, 32.992867>,  <39.314102, 35.231972, 32.864265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321228, 35.029461, 32.992867>,  <39.333107, 34.691940, 33.207203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321228, 35.029461, 32.992867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422764, -0.496369, -0.758214,
		-0.905753, 0.204020, 0.371466,
		-0.029694, 0.843797, -0.535840,
		39.312321, 35.282600, 32.832115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711330, 34.635632, 32.828205>,  <39.333107, 34.691940, 33.207203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711330, 34.635632, 32.828205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917328, 34.933388, 32.658184>,  <39.040924, 35.112041, 32.556171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917328, 34.933388, 32.658184>,  <38.711330, 34.635632, 32.828205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917328, 34.933388, 32.658184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208984, -0.371874, -0.904453,
		-0.831331, 0.554614, -0.035947,
		0.514990, 0.744388, -0.425056,
		39.071823, 35.156704, 32.530666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253124, 35.033951, 32.436874>,  <38.711330, 34.635632, 32.828205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253124, 35.033951, 32.436874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614456, 35.081837, 32.272114>,  <38.831257, 35.110569, 32.173256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614456, 35.081837, 32.272114>,  <38.253124, 35.033951, 32.436874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614456, 35.081837, 32.272114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328104, -0.425704, -0.843281,
		-0.276305, 0.896908, -0.345270,
		0.903329, 0.119719, -0.411904,
		38.885456, 35.117752, 32.148544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120087, 35.199772, 31.775799>,  <38.253124, 35.033951, 32.436874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120087, 35.199772, 31.775799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498657, 35.073086, 31.750580>,  <38.725800, 34.997074, 31.735449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498657, 35.073086, 31.750580>,  <38.120087, 35.199772, 31.775799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498657, 35.073086, 31.750580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149662, -0.257179, -0.954704,
		0.286153, 0.912990, -0.290800,
		0.946424, -0.316713, -0.063047,
		38.782585, 34.978073, 31.731667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403728, 35.583931, 31.253536>,  <38.120087, 35.199772, 31.775799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403728, 35.583931, 31.253536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648872, 35.268921, 31.279461>,  <38.795959, 35.079914, 31.295015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648872, 35.268921, 31.279461>,  <38.403728, 35.583931, 31.253536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648872, 35.268921, 31.279461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151262, -0.197424, -0.968578,
		0.775577, 0.583802, -0.240116,
		0.612863, -0.787527, 0.064810,
		38.832729, 35.032661, 31.298904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709934, 35.610634, 30.620102>,  <38.403728, 35.583931, 31.253536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709934, 35.610634, 30.620102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783913, 35.242432, 30.757778>,  <38.828300, 35.021511, 30.840384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783913, 35.242432, 30.757778>,  <38.709934, 35.610634, 30.620102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783913, 35.242432, 30.757778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236978, -0.381672, -0.893402,
		0.953749, 0.083664, -0.288727,
		0.184945, -0.920504, 0.344193,
		38.839397, 34.966282, 30.861036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084904, 35.281445, 30.143824>,  <38.709934, 35.610634, 30.620102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084904, 35.281445, 30.143824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916191, 34.983044, 30.349964>,  <38.814964, 34.804005, 30.473648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916191, 34.983044, 30.349964>,  <39.084904, 35.281445, 30.143824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916191, 34.983044, 30.349964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216188, -0.469246, -0.856196,
		0.880547, -0.472541, 0.036644,
		-0.421783, -0.745998, 0.515351,
		38.789658, 34.759243, 30.504570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393654, 34.677933, 29.895773>,  <39.084904, 35.281445, 30.143824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393654, 34.677933, 29.895773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050041, 34.581837, 30.076593>,  <38.843876, 34.524178, 30.185085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050041, 34.581837, 30.076593>,  <39.393654, 34.677933, 29.895773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050041, 34.581837, 30.076593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282838, -0.513298, -0.810264,
		0.426698, -0.823898, 0.372988,
		-0.859029, -0.240243, 0.452053,
		38.792332, 34.509766, 30.212210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357655, 34.015533, 29.833818>,  <39.393654, 34.677933, 29.895773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357655, 34.015533, 29.833818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975094, 34.108547, 29.904495>,  <38.745556, 34.164356, 29.946901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975094, 34.108547, 29.904495>,  <39.357655, 34.015533, 29.833818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975094, 34.108547, 29.904495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258949, -0.395435, -0.881236,
		-0.135042, -0.888573, 0.438409,
		-0.956404, 0.232530, 0.176695,
		38.688171, 34.178307, 29.957504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975220, 33.308083, 29.890247>,  <39.357655, 34.015533, 29.833818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975220, 33.308083, 29.890247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717350, 33.603870, 29.812708>,  <38.562630, 33.781342, 29.766184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717350, 33.603870, 29.812708>,  <38.975220, 33.308083, 29.890247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717350, 33.603870, 29.812708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293065, -0.473271, -0.830739,
		-0.706051, -0.478746, 0.521819,
		-0.644675, 0.739471, -0.193849,
		38.523949, 33.825710, 29.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.193443, 32.942818, 29.868233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168404, 33.296551, 29.683180>,  <38.153381, 33.508793, 29.572147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168404, 33.296551, 29.683180>,  <38.193443, 32.942818, 29.868233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168404, 33.296551, 29.683180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380552, -0.449673, -0.808068,
		-0.922638, 0.125472, 0.364685,
		-0.062599, 0.884336, -0.462634,
		38.149624, 33.561852, 29.544390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517387, 33.031086, 29.613659>,  <38.193443, 32.942818, 29.868233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517387, 33.031086, 29.613659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749874, 33.275085, 29.398220>,  <37.889366, 33.421486, 29.268957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749874, 33.275085, 29.398220>,  <37.517387, 33.031086, 29.613659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749874, 33.275085, 29.398220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347834, -0.412123, -0.842120,
		-0.735662, 0.676796, -0.027354,
		0.581217, 0.610001, -0.538596,
		37.924240, 33.458084, 29.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036907, 33.410694, 29.130247>,  <37.517387, 33.031086, 29.613659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036907, 33.410694, 29.130247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408676, 33.427639, 28.983612>,  <37.631737, 33.437805, 28.895632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408676, 33.427639, 28.983612>,  <37.036907, 33.410694, 29.130247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408676, 33.427639, 28.983612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326464, -0.368763, -0.870307,
		-0.172051, 0.928558, -0.328906,
		0.929419, 0.042361, -0.366586,
		37.687504, 33.440346, 28.873636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869484, 33.593887, 28.497129>,  <37.036907, 33.410694, 29.130247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869484, 33.593887, 28.497129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255493, 33.496609, 28.457954>,  <37.487099, 33.438240, 28.434450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255493, 33.496609, 28.457954>,  <36.869484, 33.593887, 28.497129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255493, 33.496609, 28.457954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195601, -0.419112, -0.886614,
		0.174574, 0.874757, -0.452021,
		0.965020, -0.243196, -0.097937,
		37.544998, 33.423649, 28.428574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109154, 33.843082, 27.818645>,  <36.869484, 33.593887, 28.497129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109154, 33.843082, 27.818645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373051, 33.568729, 27.941477>,  <37.531391, 33.404118, 28.015175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373051, 33.568729, 27.941477>,  <37.109154, 33.843082, 27.818645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373051, 33.568729, 27.941477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023299, -0.389761, -0.920622,
		0.751127, 0.614531, -0.241163,
		0.659747, -0.685885, 0.307077,
		37.570976, 33.362965, 28.033600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520664, 33.665482, 27.209417>,  <37.109154, 33.843082, 27.818645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520664, 33.665482, 27.209417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547501, 33.368942, 27.476522>,  <37.563602, 33.191021, 27.636786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547501, 33.368942, 27.476522>,  <37.520664, 33.665482, 27.209417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547501, 33.368942, 27.476522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100056, -0.670896, -0.734770,
		0.992717, -0.017514, -0.119190,
		0.067095, -0.741345, 0.667762,
		37.567631, 33.146538, 27.676851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127365, 33.285664, 27.087698>,  <37.520664, 33.665482, 27.209417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127365, 33.285664, 27.087698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849220, 33.043209, 27.242138>,  <37.682331, 32.897736, 27.334801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849220, 33.043209, 27.242138>,  <38.127365, 33.285664, 27.087698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849220, 33.043209, 27.242138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000212, -0.537423, -0.843313,
		0.718658, -0.586327, 0.373833,
		-0.695364, -0.606133, 0.386099,
		37.640610, 32.861370, 27.357967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196426, 32.691933, 26.662975>,  <38.127365, 33.285664, 27.087698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196426, 32.691933, 26.662975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.894520, 32.573994, 26.897371>,  <37.713375, 32.503231, 27.038010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.894520, 32.573994, 26.897371>,  <38.196426, 32.691933, 26.662975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894520, 32.573994, 26.897371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249217, -0.697434, -0.671920,
		0.606805, -0.653184, 0.452921,
		-0.754771, -0.294849, 0.585991,
		37.668087, 32.485538, 27.073168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302158, 32.017654, 26.891743>,  <38.196426, 32.691933, 26.662975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302158, 32.017654, 26.891743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910145, 32.097130, 26.888699>,  <37.674938, 32.144817, 26.886871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910145, 32.097130, 26.888699>,  <38.302158, 32.017654, 26.891743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910145, 32.097130, 26.888699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134795, -0.692033, -0.709169,
		-0.146173, -0.693983, 0.704997,
		-0.980032, 0.198692, -0.007611,
		37.616135, 32.156738, 26.886415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991241, 31.316238, 26.779051>,  <38.302158, 32.017654, 26.891743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991241, 31.316238, 26.779051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729786, 31.612745, 26.718021>,  <37.572914, 31.790649, 26.681404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729786, 31.612745, 26.718021>,  <37.991241, 31.316238, 26.779051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729786, 31.612745, 26.718021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408912, -0.515559, -0.752987,
		-0.636826, -0.429791, 0.640103,
		-0.653638, 0.741268, -0.152574,
		37.533695, 31.835125, 26.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223984, 31.002426, 26.646822>,  <37.991241, 31.316238, 26.779051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223984, 31.002426, 26.646822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281670, 31.366041, 26.490435>,  <37.316280, 31.584209, 26.396603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281670, 31.366041, 26.490435>,  <37.223984, 31.002426, 26.646822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281670, 31.366041, 26.490435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353504, -0.321698, -0.878377,
		-0.924249, 0.264885, 0.274953,
		0.144217, 0.909036, -0.390967,
		37.324936, 31.638752, 26.373144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725471, 31.026470, 26.145493>,  <37.223984, 31.002426, 26.646822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725471, 31.026470, 26.145493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914673, 31.361654, 26.036612>,  <37.028194, 31.562765, 25.971283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914673, 31.361654, 26.036612>,  <36.725471, 31.026470, 26.145493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914673, 31.361654, 26.036612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256491, -0.164605, -0.952427,
		-0.842901, 0.520316, 0.137071,
		0.473001, 0.837959, -0.272203,
		37.056572, 31.613043, 25.954950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289112, 31.414526, 25.803019>,  <36.725471, 31.026470, 26.145493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289112, 31.414526, 25.803019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650028, 31.545322, 25.690632>,  <36.866577, 31.623800, 25.623199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650028, 31.545322, 25.690632>,  <36.289112, 31.414526, 25.803019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650028, 31.545322, 25.690632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242764, -0.153210, -0.957910,
		-0.356274, 0.932526, -0.058859,
		0.902294, 0.326990, -0.280969,
		36.920715, 31.643419, 25.606340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125324, 31.832735, 25.302563>,  <36.289112, 31.414526, 25.803019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125324, 31.832735, 25.302563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511990, 31.760033, 25.230412>,  <36.743988, 31.716412, 25.187120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511990, 31.760033, 25.230412>,  <36.125324, 31.832735, 25.302563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511990, 31.760033, 25.230412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155942, 0.140881, -0.977668,
		0.203107, 0.973200, 0.107840,
		0.966659, -0.181755, -0.180377,
		36.801987, 31.705505, 25.176298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413418, 32.405319, 24.884302>,  <36.125324, 31.832735, 25.302563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413418, 32.405319, 24.884302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636890, 32.077667, 24.832308>,  <36.770973, 31.881077, 24.801111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636890, 32.077667, 24.832308>,  <36.413418, 32.405319, 24.884302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636890, 32.077667, 24.832308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172341, 0.038646, -0.984279,
		0.811276, 0.572304, -0.119579,
		0.558685, -0.819130, -0.129983,
		36.804497, 31.831928, 24.793312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795242, 32.555012, 24.305359>,  <36.413418, 32.405319, 24.884302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795242, 32.555012, 24.305359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802418, 32.158226, 24.355444>,  <36.806721, 31.920155, 24.385494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802418, 32.158226, 24.355444>,  <36.795242, 32.555012, 24.305359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802418, 32.158226, 24.355444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295058, -0.124906, -0.947280,
		0.955311, -0.019954, -0.294929,
		0.017936, -0.991968, 0.125212,
		36.807800, 31.860636, 24.393007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215458, 32.401176, 23.783602>,  <36.795242, 32.555012, 24.305359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215458, 32.401176, 23.783602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003960, 32.068447, 23.851133>,  <36.877060, 31.868811, 23.891653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003960, 32.068447, 23.851133>,  <37.215458, 32.401176, 23.783602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003960, 32.068447, 23.851133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203414, -0.068929, -0.976663,
		0.824046, -0.550748, -0.132758,
		-0.528745, -0.831820, 0.168830,
		36.845337, 31.818901, 23.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315704, 32.074219, 23.178335>,  <37.215458, 32.401176, 23.783602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315704, 32.074219, 23.178335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014828, 31.872702, 23.348227>,  <36.834301, 31.751791, 23.450161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014828, 31.872702, 23.348227>,  <37.315704, 32.074219, 23.178335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014828, 31.872702, 23.348227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376338, -0.200646, -0.904495,
		0.540899, -0.840198, -0.038672,
		-0.752195, -0.503794, 0.424728,
		36.789169, 31.721563, 23.475645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410469, 31.385916, 22.916330>,  <37.315704, 32.074219, 23.178335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410469, 31.385916, 22.916330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028030, 31.457989, 23.008781>,  <36.798569, 31.501232, 23.064253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028030, 31.457989, 23.008781>,  <37.410469, 31.385916, 22.916330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028030, 31.457989, 23.008781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247660, -0.075107, -0.965931,
		-0.156686, -0.980761, 0.116434,
		-0.956093, 0.180184, 0.231127,
		36.741203, 31.512045, 23.078119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913456, 30.793716, 22.554588>,  <37.410469, 31.385916, 22.916330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913456, 30.793716, 22.554588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701805, 31.116203, 22.660446>,  <36.574814, 31.309696, 22.723961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701805, 31.116203, 22.660446>,  <36.913456, 30.793716, 22.554588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701805, 31.116203, 22.660446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330585, 0.091377, -0.939342,
		-0.781497, -0.584519, 0.218174,
		-0.529128, 0.806218, 0.264643,
		36.543068, 31.358068, 22.739840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208775, 30.659651, 22.356733>,  <36.913456, 30.793716, 22.554588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208775, 30.659651, 22.356733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209839, 31.059488, 22.368097>,  <36.210480, 31.299391, 22.374916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209839, 31.059488, 22.368097>,  <36.208775, 30.659651, 22.356733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209839, 31.059488, 22.368097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410529, 0.027001, -0.911447,
		-0.911843, -0.009235, 0.410434,
		0.002665, 0.999592, 0.028412,
		36.210640, 31.359365, 22.376621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582680, 30.918756, 22.061695>,  <36.208775, 30.659651, 22.356733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582680, 30.918756, 22.061695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829960, 31.232996, 22.051395>,  <35.978329, 31.421539, 22.045216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829960, 31.232996, 22.051395>,  <35.582680, 30.918756, 22.061695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829960, 31.232996, 22.051395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338753, 0.236723, -0.910609,
		-0.709277, 0.571662, 0.412466,
		0.618201, 0.785598, -0.025750,
		36.015419, 31.468676, 22.043671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162613, 31.608961, 21.925823>,  <35.582680, 30.918756, 22.061695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162613, 31.608961, 21.925823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537350, 31.625628, 21.786915>,  <35.762192, 31.635628, 21.703569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537350, 31.625628, 21.786915>,  <35.162613, 31.608961, 21.925823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537350, 31.625628, 21.786915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339604, 0.345907, -0.874653,
		0.083680, 0.937343, 0.338209,
		0.936839, 0.041667, -0.347271,
		35.818401, 31.638128, 21.682734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523647, 31.554653, 22.395933>,  <35.162613, 31.608961, 21.925823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523647, 31.554653, 22.395933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389038, 31.875919, 22.199291>,  <34.308273, 32.068680, 22.081306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389038, 31.875919, 22.199291>,  <34.523647, 31.554653, 22.395933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389038, 31.875919, 22.199291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406443, 0.347036, 0.845204,
		0.849443, 0.484243, 0.209653,
		-0.336527, 0.803165, -0.491605,
		34.288078, 32.116867, 22.051809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789845, 32.359005, 22.421780>,  <34.523647, 31.554653, 22.395933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789845, 32.359005, 22.421780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407532, 32.258656, 22.360407>,  <34.178143, 32.198448, 22.323584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407532, 32.258656, 22.360407>,  <34.789845, 32.359005, 22.421780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407532, 32.258656, 22.360407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198237, 0.164277, 0.966290,
		-0.217207, 0.953980, -0.206745,
		-0.955784, -0.250869, -0.153432,
		34.120796, 32.183395, 22.314377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435566, 32.882858, 22.761341>,  <34.789845, 32.359005, 22.421780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435566, 32.882858, 22.761341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210739, 32.552055, 22.756594>,  <34.075844, 32.353573, 22.753746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210739, 32.552055, 22.756594>,  <34.435566, 32.882858, 22.761341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210739, 32.552055, 22.756594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291630, 0.184734, 0.938523,
		-0.773974, 0.530972, -0.345012,
		-0.562065, -0.827008, -0.011868,
		34.042118, 32.303951, 22.753033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739906, 33.093010, 22.981438>,  <34.435566, 32.882858, 22.761341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739906, 33.093010, 22.981438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791534, 32.702721, 23.052214>,  <33.822510, 32.468548, 23.094679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791534, 32.702721, 23.052214>,  <33.739906, 33.093010, 22.981438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791534, 32.702721, 23.052214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380695, 0.116002, 0.917396,
		-0.915648, -0.185768, -0.356480,
		0.129071, -0.975722, 0.176938,
		33.830257, 32.410004, 23.105295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034695, 32.830093, 23.137768>,  <33.739906, 33.093010, 22.981438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034695, 32.830093, 23.137768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336315, 32.609222, 23.280037>,  <33.517288, 32.476700, 23.365398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336315, 32.609222, 23.280037>,  <33.034695, 32.830093, 23.137768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336315, 32.609222, 23.280037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398546, 0.045769, 0.916005,
		-0.522076, -0.832470, -0.185556,
		0.754054, -0.552177, 0.355673,
		33.562531, 32.443569, 23.386738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740971, 32.591080, 23.785946>,  <33.034695, 32.830093, 23.137768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740971, 32.591080, 23.785946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130901, 32.508751, 23.820251>,  <33.364861, 32.459354, 23.840836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130901, 32.508751, 23.820251>,  <32.740971, 32.591080, 23.785946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130901, 32.508751, 23.820251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085988, 0.007877, 0.996265,
		-0.205728, -0.978558, -0.010019,
		0.974824, -0.205821, 0.085765,
		33.423347, 32.447006, 23.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777939, 32.079651, 24.342688>,  <32.740971, 32.591080, 23.785946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777939, 32.079651, 24.342688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148037, 32.230618, 24.327303>,  <33.370094, 32.321198, 24.318073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148037, 32.230618, 24.327303>,  <32.777939, 32.079651, 24.342688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148037, 32.230618, 24.327303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024955, 0.040608, 0.998864,
		0.378552, -0.925152, 0.028154,
		0.925243, 0.377419, -0.038460,
		33.425610, 32.343842, 24.315765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043884, 31.794725, 24.936424>,  <32.777939, 32.079651, 24.342688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043884, 31.794725, 24.936424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311676, 32.077965, 24.846626>,  <33.472351, 32.247910, 24.792747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311676, 32.077965, 24.846626>,  <33.043884, 31.794725, 24.936424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311676, 32.077965, 24.846626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354036, -0.038471, 0.934440,
		0.653039, -0.705065, -0.276448,
		0.669476, 0.708099, -0.224496,
		33.512520, 32.290394, 24.779278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459248, 31.671200, 25.430368>,  <33.043884, 31.794725, 24.936424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459248, 31.671200, 25.430368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.536293, 32.039597, 25.294916>,  <33.582520, 32.260635, 25.213644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.536293, 32.039597, 25.294916>,  <33.459248, 31.671200, 25.430368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536293, 32.039597, 25.294916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461398, 0.219564, 0.859595,
		0.866033, -0.321810, -0.382655,
		0.192609, 0.920994, -0.338632,
		33.594074, 32.315895, 25.193327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074249, 31.734816, 25.630663>,  <33.459248, 31.671200, 25.430368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074249, 31.734816, 25.630663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985027, 32.118927, 25.563591>,  <33.931496, 32.349392, 25.523348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985027, 32.118927, 25.563591>,  <34.074249, 31.734816, 25.630663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985027, 32.118927, 25.563591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426026, 0.250746, 0.869269,
		0.876784, 0.122457, -0.465032,
		-0.223053, 0.960276, -0.167680,
		33.918110, 32.407009, 25.513287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737427, 32.072594, 25.674231>,  <34.074249, 31.734816, 25.630663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737427, 32.072594, 25.674231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452446, 32.339905, 25.759857>,  <34.281456, 32.500290, 25.811234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452446, 32.339905, 25.759857>,  <34.737427, 32.072594, 25.674231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452446, 32.339905, 25.759857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440981, 0.189088, 0.877372,
		0.545848, 0.719482, -0.429412,
		-0.712451, 0.668274, 0.214064,
		34.238712, 32.540386, 25.824076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044212, 32.732956, 25.779364>,  <34.737427, 32.072594, 25.674231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044212, 32.732956, 25.779364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697624, 32.754833, 25.977852>,  <34.489670, 32.767960, 26.096945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697624, 32.754833, 25.977852>,  <35.044212, 32.732956, 25.779364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697624, 32.754833, 25.977852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495654, 0.212907, 0.842020,
		-0.059593, 0.975540, -0.211589,
		-0.866473, 0.054697, 0.496219,
		34.437683, 32.771244, 26.126717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170685, 33.244366, 26.293161>,  <35.044212, 32.732956, 25.779364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170685, 33.244366, 26.293161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829884, 33.069679, 26.408651>,  <34.625401, 32.964867, 26.477945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829884, 33.069679, 26.408651>,  <35.170685, 33.244366, 26.293161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829884, 33.069679, 26.408651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330815, -0.021657, 0.943447,
		-0.405766, 0.899338, 0.162924,
		-0.852007, -0.436717, 0.288727,
		34.574280, 32.938663, 26.495270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003262, 33.589287, 26.856682>,  <35.170685, 33.244366, 26.293161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003262, 33.589287, 26.856682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816441, 33.236881, 26.886803>,  <34.704346, 33.025436, 26.904875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816441, 33.236881, 26.886803>,  <35.003262, 33.589287, 26.856682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816441, 33.236881, 26.886803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373870, -0.119590, 0.919739,
		-0.801299, 0.457723, 0.385240,
		-0.467056, -0.881015, 0.075302,
		34.676323, 32.972576, 26.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806278, 33.489605, 27.628759>,  <35.003262, 33.589287, 26.856682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806278, 33.489605, 27.628759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764996, 33.124451, 27.470781>,  <34.740227, 32.905357, 27.375996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764996, 33.124451, 27.470781>,  <34.806278, 33.489605, 27.628759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764996, 33.124451, 27.470781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282329, -0.407618, 0.868411,
		-0.953750, -0.021882, 0.299803,
		-0.103202, -0.912890, -0.394944,
		34.734035, 32.850582, 27.352299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304466, 33.095692, 28.087955>,  <34.806278, 33.489605, 27.628759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304466, 33.095692, 28.087955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508709, 32.817162, 27.886196>,  <34.631252, 32.650043, 27.765141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508709, 32.817162, 27.886196>,  <34.304466, 33.095692, 28.087955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508709, 32.817162, 27.886196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361617, -0.358319, 0.860721,
		-0.780076, -0.621886, 0.068843,
		0.510603, -0.696322, -0.504400,
		34.661888, 32.608265, 27.734877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296471, 32.474613, 28.599607>,  <34.304466, 33.095692, 28.087955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296471, 32.474613, 28.599607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598652, 32.393581, 28.350370>,  <34.779961, 32.344963, 28.200829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598652, 32.393581, 28.350370>,  <34.296471, 32.474613, 28.599607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598652, 32.393581, 28.350370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524210, -0.383621, 0.760289,
		-0.393064, -0.900994, -0.183604,
		0.755450, -0.202595, -0.623097,
		34.825287, 32.332806, 28.163443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506966, 31.730650, 28.720789>,  <34.296471, 32.474613, 28.599607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506966, 31.730650, 28.720789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805637, 31.932962, 28.547977>,  <34.984840, 32.054352, 28.444290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805637, 31.932962, 28.547977>,  <34.506966, 31.730650, 28.720789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805637, 31.932962, 28.547977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602332, -0.238528, 0.761774,
		0.282240, -0.829029, -0.482753,
		0.746684, 0.505781, -0.432029,
		35.029644, 32.084698, 28.418369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105892, 31.311884, 28.833054>,  <34.506966, 31.730650, 28.720789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105892, 31.311884, 28.833054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237595, 31.681370, 28.754728>,  <35.316616, 31.903061, 28.707733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237595, 31.681370, 28.754728>,  <35.105892, 31.311884, 28.833054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237595, 31.681370, 28.754728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625616, -0.058079, 0.777966,
		0.707246, -0.378652, -0.597014,
		0.329252, 0.923715, -0.195815,
		35.336369, 31.958485, 28.695984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854832, 31.291363, 28.780199>,  <35.105892, 31.311884, 28.833054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854832, 31.291363, 28.780199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729305, 31.660480, 28.869617>,  <35.653988, 31.881950, 28.923267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729305, 31.660480, 28.869617>,  <35.854832, 31.291363, 28.780199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729305, 31.660480, 28.869617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620232, 0.020969, 0.784138,
		0.718910, 0.384725, -0.578926,
		-0.313817, 0.922793, 0.223544,
		35.635159, 31.937319, 28.936680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410328, 31.616053, 29.203505>,  <35.854832, 31.291363, 28.780199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410328, 31.616053, 29.203505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115185, 31.874035, 29.283096>,  <35.938099, 32.028824, 29.330851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115185, 31.874035, 29.283096>,  <36.410328, 31.616053, 29.203505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115185, 31.874035, 29.283096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486068, 0.303216, 0.819632,
		0.468292, 0.701493, -0.537224,
		-0.737862, 0.644955, 0.198980,
		35.893826, 32.067520, 29.342791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.032555, 34.652897, 31.574179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650860, 34.761307, 31.624752>,  <39.421844, 34.826351, 31.655096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650860, 34.761307, 31.624752>,  <40.032555, 34.652897, 31.574179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650860, 34.761307, 31.624752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270524, 0.602008, 0.751268,
		0.127498, 0.751087, -0.647775,
		-0.954233, 0.271023, 0.126432,
		39.364590, 34.842613, 31.662682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942303, 35.394447, 31.502798>,  <40.032555, 34.652897, 31.574179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942303, 35.394447, 31.502798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.627602, 35.282471, 31.722855>,  <39.438782, 35.215286, 31.854889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.627602, 35.282471, 31.722855>,  <39.942303, 35.394447, 31.502798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627602, 35.282471, 31.722855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217341, 0.708547, 0.671360,
		-0.577742, 0.647761, -0.496607,
		-0.786751, -0.279940, 0.550142,
		39.391575, 35.198490, 31.887897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698048, 36.081417, 31.870205>,  <39.942303, 35.394447, 31.502798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698048, 36.081417, 31.870205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529503, 35.787445, 32.082741>,  <39.428375, 35.611061, 32.210262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529503, 35.787445, 32.082741>,  <39.698048, 36.081417, 31.870205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529503, 35.787445, 32.082741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030780, 0.573966, 0.818300,
		-0.906370, 0.361156, -0.219226,
		-0.421363, -0.734935, 0.531342,
		39.403095, 35.566963, 32.242142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283016, 36.464630, 32.359493>,  <39.698048, 36.081417, 31.870205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283016, 36.464630, 32.359493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283176, 36.089458, 32.498222>,  <39.283272, 35.864357, 32.581459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283176, 36.089458, 32.498222>,  <39.283016, 36.464630, 32.359493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283176, 36.089458, 32.498222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004758, 0.346820, 0.937920,
		-0.999989, -0.002026, -0.004324,
		0.000401, -0.937930, 0.346826,
		39.283298, 35.808079, 32.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741402, 36.423801, 32.787079>,  <39.283016, 36.464630, 32.359493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741402, 36.423801, 32.787079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989941, 36.128468, 32.891994>,  <39.139065, 35.951267, 32.954945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989941, 36.128468, 32.891994>,  <38.741402, 36.423801, 32.787079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989941, 36.128468, 32.891994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045019, 0.367831, 0.928802,
		-0.782244, -0.565297, 0.261789,
		0.621343, -0.738336, 0.262285,
		39.176342, 35.906967, 32.970680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442471, 36.089855, 33.446724>,  <38.741402, 36.423801, 32.787079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442471, 36.089855, 33.446724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831348, 35.996250, 33.450310>,  <39.064674, 35.940086, 33.452461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831348, 35.996250, 33.450310>,  <38.442471, 36.089855, 33.446724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831348, 35.996250, 33.450310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066055, 0.310733, 0.948199,
		-0.224678, -0.921239, 0.317550,
		0.972191, -0.234015, 0.008963,
		39.123005, 35.926044, 33.452999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521439, 35.788692, 34.084129>,  <38.442471, 36.089855, 33.446724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521439, 35.788692, 34.084129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891895, 35.882229, 33.965755>,  <39.114170, 35.938351, 33.894730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891895, 35.882229, 33.965755>,  <38.521439, 35.788692, 34.084129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891895, 35.882229, 33.965755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238330, 0.245304, 0.939694,
		0.292333, -0.940821, 0.171455,
		0.926143, 0.233841, -0.295936,
		39.169739, 35.952381, 33.876976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836971, 35.569092, 34.633522>,  <38.521439, 35.788692, 34.084129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836971, 35.569092, 34.633522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074768, 35.825874, 34.439835>,  <39.217445, 35.979946, 34.323624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074768, 35.825874, 34.439835>,  <38.836971, 35.569092, 34.633522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074768, 35.825874, 34.439835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280878, 0.398465, 0.873117,
		0.753450, -0.655067, 0.056572,
		0.594492, 0.641960, -0.484218,
		39.253117, 36.018463, 34.294571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380188, 35.324596, 34.932495>,  <38.836971, 35.569092, 34.633522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380188, 35.324596, 34.932495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466873, 35.689564, 34.793625>,  <39.518883, 35.908543, 34.710300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466873, 35.689564, 34.793625>,  <39.380188, 35.324596, 34.932495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466873, 35.689564, 34.793625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164175, 0.316503, 0.934276,
		0.962332, -0.259467, -0.081205,
		0.216713, 0.912416, -0.347179,
		39.531887, 35.963287, 34.689472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091789, 35.505600, 35.086983>,  <39.380188, 35.324596, 34.932495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091789, 35.505600, 35.086983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907593, 35.852146, 35.009670>,  <39.797073, 36.060074, 34.963284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907593, 35.852146, 35.009670>,  <40.091789, 35.505600, 35.086983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907593, 35.852146, 35.009670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348875, 0.376866, 0.858055,
		0.816231, 0.327695, -0.475797,
		-0.460492, 0.866365, -0.193285,
		39.769444, 36.112057, 34.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568985, 35.972794, 35.130627>,  <40.091789, 35.505600, 35.086983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568985, 35.972794, 35.130627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226822, 36.172401, 35.186150>,  <40.021526, 36.292164, 35.219463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226822, 36.172401, 35.186150>,  <40.568985, 35.972794, 35.130627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226822, 36.172401, 35.186150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386361, 0.436243, 0.812661,
		0.344977, 0.748783, -0.565964,
		-0.855404, 0.499016, 0.138807,
		39.970200, 36.322105, 35.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769512, 36.630054, 35.375660>,  <40.568985, 35.972794, 35.130627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769512, 36.630054, 35.375660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390503, 36.590515, 35.497272>,  <40.163097, 36.566792, 35.570240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390503, 36.590515, 35.497272>,  <40.769512, 36.630054, 35.375660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390503, 36.590515, 35.497272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277053, 0.220619, 0.935184,
		-0.159513, 0.970339, -0.181655,
		-0.947522, -0.098845, 0.304027,
		40.106247, 36.560860, 35.588482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513149, 37.215622, 35.720299>,  <40.769512, 36.630054, 35.375660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513149, 37.215622, 35.720299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313251, 36.904926, 35.873627>,  <40.193314, 36.718510, 35.965622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313251, 36.904926, 35.873627>,  <40.513149, 37.215622, 35.720299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313251, 36.904926, 35.873627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174656, 0.343092, 0.922921,
		-0.848384, 0.528170, -0.035795,
		-0.499741, -0.776739, 0.383321,
		40.163330, 36.671906, 35.988625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158417, 37.590714, 36.308746>,  <40.513149, 37.215622, 35.720299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158417, 37.590714, 36.308746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197216, 37.196800, 36.366436>,  <40.220493, 36.960453, 36.401051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197216, 37.196800, 36.366436>,  <40.158417, 37.590714, 36.308746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197216, 37.196800, 36.366436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200477, 0.161267, 0.966334,
		-0.974885, -0.064815, 0.213067,
		0.096993, -0.984780, 0.144223,
		40.226315, 36.901367, 36.409702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012520, 38.250484, 35.966297>,  <40.158417, 37.590714, 36.308746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012520, 38.250484, 35.966297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965385, 38.602959, 36.149441>,  <39.937103, 38.814442, 36.259327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965385, 38.602959, 36.149441>,  <40.012520, 38.250484, 35.966297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965385, 38.602959, 36.149441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192831, 0.431986, -0.881025,
		-0.974131, -0.192105, 0.119015,
		-0.117837, 0.881183, 0.457855,
		39.930035, 38.867313, 36.286797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313297, 38.559559, 35.767845>,  <40.012520, 38.250484, 35.966297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313297, 38.559559, 35.767845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540691, 38.863468, 35.894062>,  <39.677128, 39.045815, 35.969791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540691, 38.863468, 35.894062>,  <39.313297, 38.559559, 35.767845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540691, 38.863468, 35.894062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268443, 0.533869, -0.801824,
		-0.777663, 0.371122, 0.507453,
		0.568488, 0.759771, 0.315545,
		39.711239, 39.091400, 35.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893726, 39.144054, 35.671135>,  <39.313297, 38.559559, 35.767845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893726, 39.144054, 35.671135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272270, 39.272636, 35.684177>,  <39.499397, 39.349785, 35.692001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272270, 39.272636, 35.684177>,  <38.893726, 39.144054, 35.671135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272270, 39.272636, 35.684177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148253, 0.521682, -0.840160,
		-0.287082, 0.790263, 0.541357,
		0.946364, 0.321453, 0.032607,
		39.556179, 39.369072, 35.693958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928856, 39.900448, 35.625320>,  <38.893726, 39.144054, 35.671135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928856, 39.900448, 35.625320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.274284, 39.754391, 35.486233>,  <39.481541, 39.666756, 35.402779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.274284, 39.754391, 35.486233>,  <38.928856, 39.900448, 35.625320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274284, 39.754391, 35.486233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184393, 0.413158, -0.891796,
		0.469297, 0.834249, 0.289462,
		0.863573, -0.365143, -0.347724,
		39.533356, 39.644848, 35.381916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343719, 40.409267, 35.448639>,  <38.928856, 39.900448, 35.625320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343719, 40.409267, 35.448639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479633, 40.119606, 35.208591>,  <39.561184, 39.945808, 35.064564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479633, 40.119606, 35.208591>,  <39.343719, 40.409267, 35.448639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479633, 40.119606, 35.208591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119956, 0.599501, -0.791334,
		0.932821, 0.340874, 0.116836,
		0.339788, -0.724158, -0.600116,
		39.581570, 39.902359, 35.028557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401962, 40.717583, 34.805439>,  <39.343719, 40.409267, 35.448639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401962, 40.717583, 34.805439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484406, 40.343216, 34.691185>,  <39.533871, 40.118595, 34.622635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484406, 40.343216, 34.691185>,  <39.401962, 40.717583, 34.805439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484406, 40.343216, 34.691185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174981, 0.251944, -0.951791,
		0.962757, 0.246154, -0.111839,
		0.206111, -0.935913, -0.285633,
		39.546238, 40.062443, 34.605495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726154, 40.710575, 34.205425>,  <39.401962, 40.717583, 34.805439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726154, 40.710575, 34.205425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645309, 40.319050, 34.192310>,  <39.596802, 40.084133, 34.184441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645309, 40.319050, 34.192310>,  <39.726154, 40.710575, 34.205425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645309, 40.319050, 34.192310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206140, 0.075242, -0.975625,
		0.957423, -0.190424, -0.216980,
		-0.202109, -0.978814, -0.032784,
		39.584679, 40.025406, 34.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022911, 40.529961, 33.549522>,  <39.726154, 40.710575, 34.205425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022911, 40.529961, 33.549522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782730, 40.223965, 33.642681>,  <39.638622, 40.040367, 33.698578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782730, 40.223965, 33.642681>,  <40.022911, 40.529961, 33.549522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782730, 40.223965, 33.642681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227020, -0.116184, -0.966935,
		0.766757, -0.633473, -0.103905,
		-0.600455, -0.764992, 0.232896,
		39.602592, 39.994469, 33.712551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211880, 39.925663, 33.084957>,  <40.022911, 40.529961, 33.549522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211880, 39.925663, 33.084957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839005, 39.851601, 33.209373>,  <39.615280, 39.807163, 33.284023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839005, 39.851601, 33.209373>,  <40.211880, 39.925663, 33.084957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839005, 39.851601, 33.209373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247589, -0.300685, -0.921026,
		0.264061, -0.935577, 0.234451,
		-0.932186, -0.185160, 0.311038,
		39.559349, 39.796051, 33.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052628, 39.229412, 32.883522>,  <40.211880, 39.925663, 33.084957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052628, 39.229412, 32.883522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694042, 39.393280, 32.951069>,  <39.478889, 39.491600, 32.991596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694042, 39.393280, 32.951069>,  <40.052628, 39.229412, 32.883522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694042, 39.393280, 32.951069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329250, -0.360806, -0.872590,
		-0.296545, -0.837849, 0.458334,
		-0.896469, 0.409669, 0.168867,
		39.425102, 39.516182, 33.001728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561451, 38.690029, 32.735947>,  <40.052628, 39.229412, 32.883522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561451, 38.690029, 32.735947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346985, 39.025627, 32.698807>,  <39.218307, 39.226986, 32.676521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346985, 39.025627, 32.698807>,  <39.561451, 38.690029, 32.735947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346985, 39.025627, 32.698807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489672, -0.398737, -0.775390,
		-0.687569, -0.370270, 0.624619,
		-0.536162, 0.838993, -0.092849,
		39.186134, 39.277325, 32.670952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913250, 38.460724, 32.644012>,  <39.561451, 38.690029, 32.735947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913250, 38.460724, 32.644012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895950, 38.835072, 32.504143>,  <38.885571, 39.059681, 32.420219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895950, 38.835072, 32.504143>,  <38.913250, 38.460724, 32.644012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895950, 38.835072, 32.504143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452370, -0.330416, -0.828364,
		-0.890781, 0.122356, 0.437651,
		-0.043252, 0.935871, -0.349679,
		38.882977, 39.115833, 32.399239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228245, 38.622147, 32.461414>,  <38.913250, 38.460724, 32.644012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228245, 38.622147, 32.461414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468605, 38.864967, 32.253410>,  <38.612823, 39.010658, 32.128609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468605, 38.864967, 32.253410>,  <38.228245, 38.622147, 32.461414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468605, 38.864967, 32.253410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442118, -0.289565, -0.848931,
		-0.665918, 0.740030, 0.094387,
		0.600904, 0.607049, -0.520007,
		38.648876, 39.047081, 32.097408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823235, 38.937702, 31.839872>,  <38.228245, 38.622147, 32.461414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823235, 38.937702, 31.839872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210266, 38.963264, 31.742134>,  <38.442486, 38.978603, 31.683491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210266, 38.963264, 31.742134>,  <37.823235, 38.937702, 31.839872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210266, 38.963264, 31.742134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217564, -0.280455, -0.934886,
		-0.128275, 0.957737, -0.257458,
		0.967580, 0.063909, -0.244345,
		38.500542, 38.982437, 31.668831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462490, 39.621613, 31.617689>,  <37.823235, 38.937702, 31.839872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462490, 39.621613, 31.617689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066921, 39.615944, 31.558596>,  <36.829578, 39.612541, 31.523140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066921, 39.615944, 31.558596>,  <37.462490, 39.621613, 31.617689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066921, 39.615944, 31.558596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140170, 0.416289, 0.898363,
		0.048766, 0.909122, -0.413665,
		-0.988926, -0.014174, -0.147732,
		36.770245, 39.611691, 31.514277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223267, 40.285923, 31.870619>,  <37.462490, 39.621613, 31.617689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223267, 40.285923, 31.870619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922314, 40.022434, 31.871651>,  <36.741741, 39.864342, 31.872269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922314, 40.022434, 31.871651>,  <37.223267, 40.285923, 31.870619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922314, 40.022434, 31.871651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339941, 0.391618, 0.855030,
		-0.564239, 0.642430, -0.518573,
		-0.752379, -0.658726, 0.002578,
		36.696602, 39.824818, 31.872423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771812, 40.558933, 32.349514>,  <37.223267, 40.285923, 31.870619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771812, 40.558933, 32.349514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577377, 40.213585, 32.295387>,  <36.460716, 40.006378, 32.262913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577377, 40.213585, 32.295387>,  <36.771812, 40.558933, 32.349514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577377, 40.213585, 32.295387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460488, 0.121448, 0.879319,
		-0.742743, 0.489739, -0.456605,
		-0.486091, -0.863369, -0.135315,
		36.431549, 39.954575, 32.254791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033958, 40.759930, 32.397697>,  <36.771812, 40.558933, 32.349514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033958, 40.759930, 32.397697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.093506, 40.372433, 32.477074>,  <36.129234, 40.139935, 32.524700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.093506, 40.372433, 32.477074>,  <36.033958, 40.759930, 32.397697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093506, 40.372433, 32.477074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266642, 0.153919, 0.951426,
		-0.952230, -0.194547, -0.235394,
		0.148866, -0.968742, 0.198441,
		36.138165, 40.081810, 32.536606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333130, 40.407379, 32.560337>,  <36.033958, 40.759930, 32.397697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333130, 40.407379, 32.560337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627506, 40.204365, 32.739578>,  <35.804134, 40.082558, 32.847122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627506, 40.204365, 32.739578>,  <35.333130, 40.407379, 32.560337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627506, 40.204365, 32.739578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441221, 0.142479, 0.886016,
		-0.513527, -0.849771, -0.119077,
		0.735944, -0.507533, 0.448104,
		35.848289, 40.052105, 32.874008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940060, 39.822098, 32.986469>,  <35.333130, 40.407379, 32.560337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940060, 39.822098, 32.986469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303009, 39.867710, 33.148293>,  <35.520779, 39.895077, 33.245388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303009, 39.867710, 33.148293>,  <34.940060, 39.822098, 32.986469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303009, 39.867710, 33.148293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409042, 0.018061, 0.912337,
		0.096727, -0.993313, 0.063031,
		0.907375, 0.114031, 0.404560,
		35.575222, 39.901920, 33.269661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892605, 39.386074, 33.551102>,  <34.940060, 39.822098, 32.986469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892605, 39.386074, 33.551102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220253, 39.597561, 33.640106>,  <35.416840, 39.724453, 33.693508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220253, 39.597561, 33.640106>,  <34.892605, 39.386074, 33.551102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220253, 39.597561, 33.640106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194360, -0.109150, 0.974839,
		0.539697, -0.841753, 0.013354,
		0.819116, 0.528714, 0.222511,
		35.465988, 39.756176, 33.706860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412586, 38.945610, 34.049858>,  <34.892605, 39.386074, 33.551102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412586, 38.945610, 34.049858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475628, 39.336720, 34.105156>,  <35.513454, 39.571388, 34.138332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475628, 39.336720, 34.105156>,  <35.412586, 38.945610, 34.049858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475628, 39.336720, 34.105156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137572, -0.116885, 0.983571,
		0.977873, -0.174032, 0.116093,
		0.157604, 0.977778, 0.138240,
		35.522907, 39.630054, 34.146629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838173, 38.958008, 34.623810>,  <35.412586, 38.945610, 34.049858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838173, 38.958008, 34.623810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671738, 39.320175, 34.590134>,  <35.571877, 39.537476, 34.569927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671738, 39.320175, 34.590134>,  <35.838173, 38.958008, 34.623810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671738, 39.320175, 34.590134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180453, 0.008526, 0.983547,
		0.891238, 0.424436, 0.159838,
		-0.416090, 0.905418, -0.084190,
		35.546909, 39.591801, 34.564877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992958, 39.208088, 35.278709>,  <35.838173, 38.958008, 34.623810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992958, 39.208088, 35.278709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743614, 39.490311, 35.143883>,  <35.594009, 39.659645, 35.062984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743614, 39.490311, 35.143883>,  <35.992958, 39.208088, 35.278709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743614, 39.490311, 35.143883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333986, 0.149524, 0.930643,
		0.707018, 0.692703, 0.142438,
		-0.623361, 0.705553, -0.337069,
		35.556606, 39.701977, 35.042763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076012, 39.866920, 35.645832>,  <35.992958, 39.208088, 35.278709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076012, 39.866920, 35.645832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705215, 39.868584, 35.495804>,  <35.482738, 39.869583, 35.405788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705215, 39.868584, 35.495804>,  <36.076012, 39.866920, 35.645832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705215, 39.868584, 35.495804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364238, 0.228851, 0.902750,
		0.089593, 0.973452, -0.210626,
		-0.926986, 0.004163, -0.375072,
		35.427120, 39.869831, 35.383282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843098, 40.501511, 35.779591>,  <36.076012, 39.866920, 35.645832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843098, 40.501511, 35.779591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.517071, 40.271534, 35.750980>,  <35.321457, 40.133549, 35.733814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.517071, 40.271534, 35.750980>,  <35.843098, 40.501511, 35.779591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517071, 40.271534, 35.750980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276425, 0.277406, 0.920128,
		-0.509177, 0.769734, -0.385031,
		-0.815063, -0.574940, -0.071525,
		35.272552, 40.099052, 35.729523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.727158, 39.726707, 27.747673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426662, 39.482315, 27.847540>,  <36.246365, 39.335678, 27.907459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426662, 39.482315, 27.847540>,  <36.727158, 39.726707, 27.747673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426662, 39.482315, 27.847540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017300, 0.359909, 0.932827,
		-0.659801, 0.705097, -0.259808,
		-0.751241, -0.610986, 0.249666,
		36.201290, 39.299019, 27.922440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218601, 40.109325, 28.138571>,  <36.727158, 39.726707, 27.747673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218601, 40.109325, 28.138571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144779, 39.729828, 28.241188>,  <36.100487, 39.502129, 28.302759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144779, 39.729828, 28.241188>,  <36.218601, 40.109325, 28.138571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144779, 39.729828, 28.241188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003577, 0.260379, 0.965500,
		-0.982815, 0.179109, -0.044662,
		-0.184559, -0.948748, 0.256545,
		36.089413, 39.445202, 28.318151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887383, 40.172894, 28.767790>,  <36.218601, 40.109325, 28.138571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887383, 40.172894, 28.767790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978252, 39.783546, 28.780155>,  <36.032772, 39.549938, 28.787575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978252, 39.783546, 28.780155>,  <35.887383, 40.172894, 28.767790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978252, 39.783546, 28.780155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035242, 0.023505, 0.999102,
		-0.973217, -0.228056, -0.028964,
		0.227171, -0.973364, 0.030913,
		36.046402, 39.491539, 28.789429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381718, 39.844040, 29.226688>,  <35.887383, 40.172894, 28.767790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381718, 39.844040, 29.226688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709606, 39.614948, 29.224451>,  <35.906342, 39.477493, 29.223108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709606, 39.614948, 29.224451>,  <35.381718, 39.844040, 29.226688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709606, 39.614948, 29.224451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033950, -0.058332, 0.997720,
		-0.571753, -0.817664, -0.067261,
		0.819723, -0.572733, -0.005591,
		35.955524, 39.443127, 29.222775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278404, 39.237530, 29.731070>,  <35.381718, 39.844040, 29.226688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278404, 39.237530, 29.731070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675591, 39.253944, 29.686661>,  <35.913902, 39.263794, 29.660015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675591, 39.253944, 29.686661>,  <35.278404, 39.237530, 29.731070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675591, 39.253944, 29.686661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113695, -0.069846, 0.991058,
		0.032921, -0.996713, -0.074022,
		0.992970, 0.041042, -0.111022,
		35.973480, 39.266258, 29.653355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535862, 38.714184, 30.292150>,  <35.278404, 39.237530, 29.731070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535862, 38.714184, 30.292150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846107, 38.938198, 30.175684>,  <36.032253, 39.072609, 30.105804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846107, 38.938198, 30.175684>,  <35.535862, 38.714184, 30.292150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846107, 38.938198, 30.175684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359628, -0.012983, 0.933005,
		0.518740, -0.828364, -0.211476,
		0.775614, 0.560040, -0.291168,
		36.078793, 39.106209, 30.088333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165989, 38.390800, 30.623150>,  <35.535862, 38.714184, 30.292150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165989, 38.390800, 30.623150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285629, 38.756229, 30.512934>,  <36.357414, 38.975487, 30.446804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285629, 38.756229, 30.512934>,  <36.165989, 38.390800, 30.623150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285629, 38.756229, 30.512934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426677, 0.130239, 0.894978,
		0.853513, -0.385258, -0.350845,
		0.299103, 0.913572, -0.275541,
		36.375359, 39.030300, 30.430271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816639, 38.522594, 30.883696>,  <36.165989, 38.390800, 30.623150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816639, 38.522594, 30.883696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684196, 38.896687, 30.833567>,  <36.604733, 39.121143, 30.803490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684196, 38.896687, 30.833567>,  <36.816639, 38.522594, 30.883696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684196, 38.896687, 30.833567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249352, 0.214814, 0.944287,
		0.910051, 0.281411, -0.304329,
		-0.331107, 0.935234, -0.125321,
		36.584866, 39.177258, 30.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323605, 38.932346, 31.227409>,  <36.816639, 38.522594, 30.883696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323605, 38.932346, 31.227409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999718, 39.158604, 31.164915>,  <36.805386, 39.294357, 31.127419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999718, 39.158604, 31.164915>,  <37.323605, 38.932346, 31.227409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999718, 39.158604, 31.164915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080264, 0.370491, 0.925361,
		0.581311, 0.736737, -0.345393,
		-0.809713, 0.565645, -0.156237,
		36.756805, 39.328297, 31.118044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861412, 39.533398, 30.949625>,  <37.323605, 38.932346, 31.227409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861412, 39.533398, 30.949625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210632, 39.363865, 31.046078>,  <38.420166, 39.262146, 31.103949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210632, 39.363865, 31.046078>,  <37.861412, 39.533398, 30.949625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210632, 39.363865, 31.046078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166577, -0.205529, -0.964370,
		0.458293, 0.882112, -0.108837,
		0.873052, -0.423834, 0.241132,
		38.472549, 39.236713, 31.118418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262093, 39.653889, 30.326963>,  <37.861412, 39.533398, 30.949625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262093, 39.653889, 30.326963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439030, 39.354595, 30.524738>,  <38.545193, 39.175018, 30.643404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439030, 39.354595, 30.524738>,  <38.262093, 39.653889, 30.326963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439030, 39.354595, 30.524738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040642, -0.534019, -0.844495,
		0.895923, 0.393655, -0.205811,
		0.442347, -0.748238, 0.494439,
		38.571735, 39.130123, 30.673071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870392, 39.564957, 29.916040>,  <38.262093, 39.653889, 30.326963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870392, 39.564957, 29.916040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792980, 39.230347, 30.121086>,  <38.746532, 39.029579, 30.244114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792980, 39.230347, 30.121086>,  <38.870392, 39.564957, 29.916040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792980, 39.230347, 30.121086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069604, -0.509469, -0.857669,
		0.978621, -0.201668, 0.040375,
		-0.193534, -0.836523, 0.512614,
		38.734921, 38.979389, 30.274870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426582, 39.125412, 29.683495>,  <38.870392, 39.564957, 29.916040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426582, 39.125412, 29.683495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147469, 38.880230, 29.831755>,  <38.980000, 38.733120, 29.920712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147469, 38.880230, 29.831755>,  <39.426582, 39.125412, 29.683495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147469, 38.880230, 29.831755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099801, -0.595595, -0.797061,
		0.709319, -0.519188, 0.476772,
		-0.697787, -0.612953, 0.370651,
		38.938133, 38.696342, 29.942949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680820, 38.524509, 29.520063>,  <39.426582, 39.125412, 29.683495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680820, 38.524509, 29.520063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302876, 38.427757, 29.608366>,  <39.076111, 38.369705, 29.661348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302876, 38.427757, 29.608366>,  <39.680820, 38.524509, 29.520063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302876, 38.427757, 29.608366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043359, -0.760591, -0.647782,
		0.324589, -0.602492, 0.729140,
		-0.944861, -0.241878, 0.220756,
		39.019417, 38.355194, 29.674593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712463, 37.811771, 29.581688>,  <39.680820, 38.524509, 29.520063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712463, 37.811771, 29.581688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336697, 37.915562, 29.492094>,  <39.111237, 37.977837, 29.438337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336697, 37.915562, 29.492094>,  <39.712463, 37.811771, 29.581688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336697, 37.915562, 29.492094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049826, -0.749860, -0.659717,
		-0.339140, -0.608588, 0.717359,
		-0.939416, 0.259480, -0.223984,
		39.054871, 37.993404, 29.424898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242409, 37.176144, 29.572599>,  <39.712463, 37.811771, 29.581688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242409, 37.176144, 29.572599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052803, 37.444141, 29.344065>,  <38.939041, 37.604939, 29.206944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052803, 37.444141, 29.344065>,  <39.242409, 37.176144, 29.572599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052803, 37.444141, 29.344065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158481, -0.703184, -0.693121,
		-0.866139, -0.238001, 0.439498,
		-0.474011, 0.669991, -0.571336,
		38.910599, 37.645138, 29.172665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650547, 36.866154, 29.288210>,  <39.242409, 37.176144, 29.572599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650547, 36.866154, 29.288210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704319, 37.181694, 29.048330>,  <38.736584, 37.371017, 28.904402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704319, 37.181694, 29.048330>,  <38.650547, 36.866154, 29.288210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704319, 37.181694, 29.048330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337059, -0.532705, -0.776284,
		-0.931836, 0.306493, 0.194276,
		0.134434, 0.788852, -0.599700,
		38.744648, 37.418350, 28.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096355, 36.892975, 28.835144>,  <38.650547, 36.866154, 29.288210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096355, 36.892975, 28.835144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349400, 37.134869, 28.641607>,  <38.501225, 37.280003, 28.525484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349400, 37.134869, 28.641607>,  <38.096355, 36.892975, 28.835144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349400, 37.134869, 28.641607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291287, -0.393085, -0.872145,
		-0.717604, 0.692665, -0.072519,
		0.632611, 0.604730, -0.483844,
		38.539185, 37.316288, 28.496454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761929, 37.097122, 28.158222>,  <38.096355, 36.892975, 28.835144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761929, 37.097122, 28.158222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146343, 37.170307, 28.075335>,  <38.376991, 37.214218, 28.025602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146343, 37.170307, 28.075335>,  <37.761929, 37.097122, 28.158222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146343, 37.170307, 28.075335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128983, -0.366226, -0.921543,
		-0.244496, 0.912362, -0.328357,
		0.961033, 0.182961, -0.207220,
		38.434654, 37.225197, 28.013168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781425, 37.370533, 27.565533>,  <37.761929, 37.097122, 28.158222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781425, 37.370533, 27.565533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154049, 37.234798, 27.617760>,  <38.377625, 37.153358, 27.649096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154049, 37.234798, 27.617760>,  <37.781425, 37.370533, 27.565533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154049, 37.234798, 27.617760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021672, -0.410284, -0.911700,
		0.362945, 0.846473, -0.389557,
		0.931558, -0.339340, 0.130566,
		38.433517, 37.132996, 27.656929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168884, 37.600994, 27.011309>,  <37.781425, 37.370533, 27.565533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168884, 37.600994, 27.011309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386040, 37.294605, 27.149038>,  <38.516331, 37.110771, 27.231676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386040, 37.294605, 27.149038>,  <38.168884, 37.600994, 27.011309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386040, 37.294605, 27.149038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005370, -0.413160, -0.910642,
		0.839790, 0.492524, -0.228411,
		0.542884, -0.765975, 0.344323,
		38.548904, 37.064812, 27.252335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699490, 37.417801, 26.456940>,  <38.168884, 37.600994, 27.011309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699490, 37.417801, 26.456940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719391, 37.082493, 26.674131>,  <38.731331, 36.881310, 26.804447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719391, 37.082493, 26.674131>,  <38.699490, 37.417801, 26.456940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719391, 37.082493, 26.674131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202243, -0.523935, -0.827399,
		0.978071, 0.150978, 0.143468,
		0.049751, -0.838270, 0.542980,
		38.734318, 36.831013, 26.837025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224953, 37.130623, 25.992338>,  <38.699490, 37.417801, 26.456940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224953, 37.130623, 25.992338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066971, 36.843353, 26.221508>,  <38.972183, 36.670994, 26.359011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066971, 36.843353, 26.221508>,  <39.224953, 37.130623, 25.992338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066971, 36.843353, 26.221508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248855, -0.683941, -0.685781,
		0.884355, -0.128276, 0.448845,
		-0.394953, -0.718171, 0.572924,
		38.948486, 36.627903, 26.393385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.637451, 34.247990, 28.861040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.901077, 34.514812, 28.722090>,  <33.059254, 34.674908, 28.638720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.901077, 34.514812, 28.722090>,  <32.637451, 34.247990, 28.861040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901077, 34.514812, 28.722090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499345, -0.042726, 0.865349,
		0.562394, -0.743781, -0.361251,
		0.659065, 0.667056, -0.347374,
		33.098797, 34.714928, 28.617878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291359, 33.974731, 29.145298>,  <32.637451, 34.247990, 28.861040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291359, 33.974731, 29.145298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369244, 34.349358, 29.028732>,  <33.415974, 34.574135, 28.958792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369244, 34.349358, 29.028732>,  <33.291359, 33.974731, 29.145298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369244, 34.349358, 29.028732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639935, 0.103862, 0.761378,
		0.743351, -0.334738, -0.579120,
		0.194714, 0.936570, -0.291416,
		33.427658, 34.630329, 28.941307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015411, 34.020546, 29.194319>,  <33.291359, 33.974731, 29.145298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015411, 34.020546, 29.194319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864700, 34.390774, 29.209070>,  <33.774273, 34.612911, 29.217922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864700, 34.390774, 29.209070>,  <34.015411, 34.020546, 29.194319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864700, 34.390774, 29.209070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502032, 0.170581, 0.847860,
		0.778462, 0.337969, -0.528936,
		-0.376777, 0.925569, 0.036881,
		33.751667, 34.668446, 29.220135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589592, 34.360279, 29.525040>,  <34.015411, 34.020546, 29.194319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589592, 34.360279, 29.525040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.281071, 34.614502, 29.538635>,  <34.095959, 34.767036, 29.546793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.281071, 34.614502, 29.538635>,  <34.589592, 34.360279, 29.525040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281071, 34.614502, 29.538635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150609, 0.130374, 0.979959,
		0.618388, 0.760967, -0.196279,
		-0.771306, 0.635556, 0.033987,
		34.049679, 34.805168, 29.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809097, 34.956478, 29.808445>,  <34.589592, 34.360279, 29.525040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809097, 34.956478, 29.808445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418106, 34.926476, 29.887344>,  <34.183510, 34.908474, 29.934685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418106, 34.926476, 29.887344>,  <34.809097, 34.956478, 29.808445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418106, 34.926476, 29.887344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185057, 0.144586, 0.972033,
		-0.101427, 0.986645, -0.127449,
		-0.977480, -0.075005, 0.197250,
		34.124863, 34.903973, 29.946520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774815, 35.468983, 30.343370>,  <34.809097, 34.956478, 29.808445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774815, 35.468983, 30.343370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.417198, 35.289852, 30.347984>,  <34.202629, 35.182373, 30.350754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.417198, 35.289852, 30.347984>,  <34.774815, 35.468983, 30.343370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417198, 35.289852, 30.347984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025634, -0.025431, 0.999348,
		-0.447242, 0.893758, 0.034216,
		-0.894045, -0.447828, 0.011537,
		34.148983, 35.155502, 30.351446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263786, 35.887238, 30.815563>,  <34.774815, 35.468983, 30.343370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263786, 35.887238, 30.815563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157780, 35.502468, 30.788839>,  <34.094173, 35.271606, 30.772804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157780, 35.502468, 30.788839>,  <34.263786, 35.887238, 30.815563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157780, 35.502468, 30.788839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192483, -0.120671, 0.973853,
		-0.944836, 0.245229, 0.217134,
		-0.265019, -0.961926, -0.066812,
		34.078274, 35.213890, 30.768795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764740, 35.763905, 31.267260>,  <34.263786, 35.887238, 30.815563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764740, 35.763905, 31.267260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918179, 35.397758, 31.218328>,  <34.010242, 35.178070, 31.188971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918179, 35.397758, 31.218328>,  <33.764740, 35.763905, 31.267260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918179, 35.397758, 31.218328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266845, -0.016945, 0.963591,
		-0.884108, -0.402273, 0.237760,
		0.383597, -0.915363, -0.122326,
		34.033257, 35.123150, 31.181631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594292, 35.379658, 31.896629>,  <33.764740, 35.763905, 31.267260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594292, 35.379658, 31.896629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884708, 35.161804, 31.728708>,  <34.058960, 35.031094, 31.627956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884708, 35.161804, 31.728708>,  <33.594292, 35.379658, 31.896629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884708, 35.161804, 31.728708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328669, -0.261392, 0.907552,
		-0.604016, -0.796899, -0.010778,
		0.726045, -0.544634, -0.419801,
		34.102524, 34.998413, 31.602768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579597, 34.788418, 32.324482>,  <33.594292, 35.379658, 31.896629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579597, 34.788418, 32.324482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.924194, 34.742744, 32.126575>,  <34.130951, 34.715340, 32.007832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.924194, 34.742744, 32.126575>,  <33.579597, 34.788418, 32.324482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924194, 34.742744, 32.126575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349634, -0.573209, 0.741072,
		-0.368218, -0.811415, -0.453895,
		0.861494, -0.114179, -0.494764,
		34.182644, 34.708492, 31.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609947, 34.151066, 32.277439>,  <33.579597, 34.788418, 32.324482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609947, 34.151066, 32.277439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.979031, 34.304073, 32.258286>,  <34.200481, 34.395878, 32.246796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.979031, 34.304073, 32.258286>,  <33.609947, 34.151066, 32.277439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979031, 34.304073, 32.258286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232581, -0.453321, 0.860469,
		0.307441, -0.805095, -0.507249,
		0.922706, 0.382520, -0.047880,
		34.255844, 34.418831, 32.243923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076214, 33.621254, 32.541080>,  <33.609947, 34.151066, 32.277439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076214, 33.621254, 32.541080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270061, 33.969860, 32.571018>,  <34.386372, 34.179024, 32.588982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270061, 33.969860, 32.571018>,  <34.076214, 33.621254, 32.541080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270061, 33.969860, 32.571018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092013, -0.135880, 0.986443,
		0.869873, -0.471162, -0.146041,
		0.484619, 0.871518, 0.074845,
		34.415447, 34.231316, 32.593472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588654, 33.465939, 32.933525>,  <34.076214, 33.621254, 32.541080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588654, 33.465939, 32.933525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555897, 33.863609, 32.961567>,  <34.536243, 34.102211, 32.978394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555897, 33.863609, 32.961567>,  <34.588654, 33.465939, 32.933525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555897, 33.863609, 32.961567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082279, -0.063361, 0.994593,
		0.993239, 0.087216, -0.076611,
		-0.081890, 0.994172, 0.070109,
		34.531330, 34.161861, 32.982601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069927, 33.717209, 33.488129>,  <34.588654, 33.465939, 32.933525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069927, 33.717209, 33.488129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838940, 34.043354, 33.471569>,  <34.700348, 34.239040, 33.461632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838940, 34.043354, 33.471569>,  <35.069927, 33.717209, 33.488129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838940, 34.043354, 33.471569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242937, 0.220026, 0.944759,
		0.779431, 0.535511, -0.325140,
		-0.577468, 0.815363, -0.041400,
		34.665699, 34.287964, 33.459148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730904, 33.892960, 33.122013>,  <35.069927, 33.717209, 33.488129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730904, 33.892960, 33.122013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064579, 33.672539, 33.130711>,  <36.264782, 33.540287, 33.135929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064579, 33.672539, 33.130711>,  <35.730904, 33.892960, 33.122013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064579, 33.672539, 33.130711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200412, -0.339641, -0.918955,
		0.513779, 0.762222, -0.393762,
		0.834186, -0.551055, 0.021742,
		36.314835, 33.507221, 33.137234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082672, 33.967892, 32.403160>,  <35.730904, 33.892960, 33.122013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082672, 33.967892, 32.403160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259361, 33.637783, 32.543907>,  <36.365376, 33.439720, 32.628357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259361, 33.637783, 32.543907>,  <36.082672, 33.967892, 32.403160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259361, 33.637783, 32.543907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073134, -0.424026, -0.902692,
		0.894164, 0.373009, -0.247658,
		0.441726, -0.825267, 0.351869,
		36.391880, 33.390202, 32.649467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720291, 33.858913, 32.066345>,  <36.082672, 33.967892, 32.403160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720291, 33.858913, 32.066345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599514, 33.506535, 32.212090>,  <36.527046, 33.295109, 32.299534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599514, 33.506535, 32.212090>,  <36.720291, 33.858913, 32.066345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599514, 33.506535, 32.212090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065169, -0.362230, -0.929808,
		0.951095, -0.304498, 0.051964,
		-0.301947, -0.880949, 0.364359,
		36.508930, 33.242249, 32.321396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175987, 33.381290, 31.879398>,  <36.720291, 33.858913, 32.066345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175987, 33.381290, 31.879398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846573, 33.164669, 31.946928>,  <36.648922, 33.034695, 31.987446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846573, 33.164669, 31.946928>,  <37.175987, 33.381290, 31.879398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846573, 33.164669, 31.946928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063825, -0.384185, -0.921047,
		0.563656, -0.747744, 0.350956,
		-0.823540, -0.541554, 0.168824,
		36.599510, 33.002201, 31.997576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292469, 32.674301, 31.610661>,  <37.175987, 33.381290, 31.879398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292469, 32.674301, 31.610661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895412, 32.706493, 31.646862>,  <36.657181, 32.725807, 31.668583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895412, 32.706493, 31.646862>,  <37.292469, 32.674301, 31.610661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895412, 32.706493, 31.646862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111822, -0.322019, -0.940106,
		-0.046518, -0.943306, 0.328649,
		-0.992639, 0.080482, 0.090503,
		36.597622, 32.730637, 31.674013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901279, 31.983721, 31.388527>,  <37.292469, 32.674301, 31.610661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901279, 31.983721, 31.388527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613888, 32.259521, 31.351917>,  <36.441452, 32.425003, 31.329950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613888, 32.259521, 31.351917>,  <36.901279, 31.983721, 31.388527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613888, 32.259521, 31.351917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277337, -0.404661, -0.871397,
		-0.637870, -0.600694, 0.481964,
		-0.718475, 0.689504, -0.091526,
		36.398346, 32.466373, 31.324459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151222, 31.668850, 31.363977>,  <36.901279, 31.983721, 31.388527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151222, 31.668850, 31.363977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147186, 32.015121, 31.163778>,  <36.144764, 32.222885, 31.043659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147186, 32.015121, 31.163778>,  <36.151222, 31.668850, 31.363977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147186, 32.015121, 31.163778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424055, -0.456993, -0.781879,
		-0.905580, 0.204348, 0.371707,
		-0.010093, 0.865679, -0.500499,
		36.144157, 32.274826, 31.013628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655453, 31.523525, 30.865416>,  <36.151222, 31.668850, 31.363977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655453, 31.523525, 30.865416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767971, 31.890219, 30.751944>,  <35.835480, 32.110233, 30.683861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767971, 31.890219, 30.751944>,  <35.655453, 31.523525, 30.865416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767971, 31.890219, 30.751944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487740, -0.118004, -0.864977,
		-0.826429, 0.381672, 0.413934,
		0.281292, 0.916734, -0.283678,
		35.852360, 32.165237, 30.666840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053814, 31.831438, 30.618219>,  <35.655453, 31.523525, 30.865416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053814, 31.831438, 30.618219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363728, 32.037731, 30.471939>,  <35.549675, 32.161507, 30.384171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363728, 32.037731, 30.471939>,  <35.053814, 31.831438, 30.618219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363728, 32.037731, 30.471939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442549, 0.029305, -0.896265,
		-0.451516, 0.856249, 0.250941,
		0.774780, 0.515732, -0.365700,
		35.596161, 32.192451, 30.362228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900990, 32.349251, 30.179285>,  <35.053814, 31.831438, 30.618219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900990, 32.349251, 30.179285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276585, 32.340340, 30.041996>,  <35.501942, 32.334995, 29.959623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276585, 32.340340, 30.041996>,  <34.900990, 32.349251, 30.179285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276585, 32.340340, 30.041996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334061, 0.178437, -0.925507,
		0.081860, 0.983699, 0.160109,
		0.938990, -0.022275, -0.343222,
		35.558281, 32.333656, 29.939030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941948, 32.932194, 29.641775>,  <34.900990, 32.349251, 30.179285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941948, 32.932194, 29.641775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234684, 32.675373, 29.550400>,  <35.410324, 32.521282, 29.495575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234684, 32.675373, 29.550400>,  <34.941948, 32.932194, 29.641775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234684, 32.675373, 29.550400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316091, -0.022838, -0.948454,
		0.603736, 0.766324, -0.219659,
		0.731840, -0.642048, -0.228440,
		35.454235, 32.482758, 29.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362507, 33.182091, 29.036970>,  <34.941948, 32.932194, 29.641775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362507, 33.182091, 29.036970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417294, 32.785942, 29.028942>,  <35.450165, 32.548252, 29.024126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417294, 32.785942, 29.028942>,  <35.362507, 33.182091, 29.036970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417294, 32.785942, 29.028942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284599, -0.019938, -0.958439,
		0.948812, 0.136985, -0.284590,
		0.136966, -0.990372, -0.020069,
		35.458382, 32.488831, 29.022921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865601, 33.147949, 28.454580>,  <35.362507, 33.182091, 29.036970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865601, 33.147949, 28.454580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684902, 32.798229, 28.525602>,  <35.576485, 32.588398, 28.568214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684902, 32.798229, 28.525602>,  <35.865601, 33.147949, 28.454580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684902, 32.798229, 28.525602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107622, -0.144160, -0.983684,
		0.885632, -0.463483, -0.028970,
		-0.451745, -0.874300, 0.177554,
		35.549377, 32.535938, 28.578869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043530, 32.717136, 27.845993>,  <35.865601, 33.147949, 28.454580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043530, 32.717136, 27.845993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753872, 32.501293, 28.017776>,  <35.580078, 32.371788, 28.120846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753872, 32.501293, 28.017776>,  <36.043530, 32.717136, 27.845993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753872, 32.501293, 28.017776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438894, -0.119750, -0.890523,
		0.531960, -0.833358, -0.150114,
		-0.724148, -0.539606, 0.429458,
		35.536629, 32.339413, 28.146614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600071, 32.152641, 27.674908>,  <36.043530, 32.717136, 27.845993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600071, 32.152641, 27.674908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941025, 32.234592, 27.482462>,  <37.145596, 32.283764, 27.366995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941025, 32.234592, 27.482462>,  <36.600071, 32.152641, 27.674908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941025, 32.234592, 27.482462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374109, 0.403912, 0.834804,
		0.365354, -0.891562, 0.267644,
		0.852384, 0.204871, -0.481113,
		37.196739, 32.296055, 27.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113380, 31.955242, 28.165270>,  <36.600071, 32.152641, 27.674908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113380, 31.955242, 28.165270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259014, 32.246326, 27.932760>,  <37.346394, 32.420979, 27.793255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259014, 32.246326, 27.932760>,  <37.113380, 31.955242, 28.165270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259014, 32.246326, 27.932760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318993, 0.488929, 0.811906,
		0.875035, -0.481025, -0.054123,
		0.364085, 0.727711, -0.581274,
		37.368240, 32.464642, 27.758379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875546, 32.067745, 28.414864>,  <37.113380, 31.955242, 28.165270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875546, 32.067745, 28.414864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765797, 32.390156, 28.205086>,  <37.699947, 32.583603, 28.079220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765797, 32.390156, 28.205086>,  <37.875546, 32.067745, 28.414864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765797, 32.390156, 28.205086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553168, 0.578400, 0.599548,
		0.786590, -0.125606, -0.604565,
		-0.274374, 0.806025, -0.524445,
		37.683483, 32.631962, 28.047752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465080, 32.480995, 28.547682>,  <37.875546, 32.067745, 28.414864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465080, 32.480995, 28.547682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182571, 32.716621, 28.390615>,  <38.013065, 32.857998, 28.296375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182571, 32.716621, 28.390615>,  <38.465080, 32.480995, 28.547682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182571, 32.716621, 28.390615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226005, 0.713246, 0.663477,
		0.670896, 0.379851, -0.636876,
		-0.706272, 0.589061, -0.392666,
		37.970688, 32.893341, 28.272816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889229, 33.013790, 28.470278>,  <38.465080, 32.480995, 28.547682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889229, 33.013790, 28.470278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503281, 33.116776, 28.449368>,  <38.271709, 33.178566, 28.436821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503281, 33.116776, 28.449368>,  <38.889229, 33.013790, 28.470278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503281, 33.116776, 28.449368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131097, 0.644286, 0.753465,
		0.227668, 0.720146, -0.655407,
		-0.964874, 0.257462, -0.052274,
		38.213818, 33.194016, 28.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900261, 33.716015, 28.416023>,  <38.889229, 33.013790, 28.470278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900261, 33.716015, 28.416023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524700, 33.651627, 28.537714>,  <38.299366, 33.612991, 28.610729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524700, 33.651627, 28.537714>,  <38.900261, 33.716015, 28.416023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524700, 33.651627, 28.537714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162141, 0.572817, 0.803487,
		-0.303607, 0.803722, -0.511717,
		-0.938900, -0.160974, 0.304228,
		38.243031, 33.603333, 28.628983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511066, 34.384594, 28.522118>,  <38.900261, 33.716015, 28.416023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511066, 34.384594, 28.522118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343311, 34.115448, 28.765877>,  <38.242661, 33.953960, 28.912132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343311, 34.115448, 28.765877>,  <38.511066, 34.384594, 28.522118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343311, 34.115448, 28.765877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064442, 0.647524, 0.759315,
		-0.905519, 0.357715, -0.228200,
		-0.419383, -0.672869, 0.609397,
		38.217495, 33.913586, 28.948696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119907, 34.743996, 28.984583>,  <38.511066, 34.384594, 28.522118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119907, 34.743996, 28.984583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130768, 34.377312, 29.144037>,  <38.137283, 34.157303, 29.239710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130768, 34.377312, 29.144037>,  <38.119907, 34.743996, 28.984583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130768, 34.377312, 29.144037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120900, 0.398869, 0.909003,
		-0.992293, 0.023512, 0.121660,
		0.027154, -0.916706, 0.398638,
		38.138912, 34.102299, 29.263628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624756, 34.740658, 29.501774>,  <38.119907, 34.743996, 28.984583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624756, 34.740658, 29.501774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908539, 34.466480, 29.567301>,  <38.078808, 34.301971, 29.606617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908539, 34.466480, 29.567301>,  <37.624756, 34.740658, 29.501774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908539, 34.466480, 29.567301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050418, 0.281219, 0.958318,
		-0.702945, -0.671624, 0.234071,
		0.709455, -0.685446, 0.163820,
		38.121376, 34.260845, 29.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431728, 34.381931, 30.085066>,  <37.624756, 34.740658, 29.501774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431728, 34.381931, 30.085066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827480, 34.327106, 30.065746>,  <38.064934, 34.294212, 30.054155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827480, 34.327106, 30.065746>,  <37.431728, 34.381931, 30.085066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827480, 34.327106, 30.065746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096982, 0.375226, 0.921846,
		-0.108228, -0.916744, 0.384535,
		0.989384, -0.137062, -0.048297,
		38.124294, 34.285988, 30.051256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662659, 34.124725, 30.706398>,  <37.431728, 34.381931, 30.085066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662659, 34.124725, 30.706398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016533, 34.238464, 30.558624>,  <38.228855, 34.306709, 30.469959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016533, 34.238464, 30.558624>,  <37.662659, 34.124725, 30.706398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016533, 34.238464, 30.558624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251913, 0.375212, 0.892052,
		0.392279, -0.882245, 0.260309,
		0.884679, 0.284358, -0.369437,
		38.281937, 34.323769, 30.447794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179901, 33.895565, 31.251741>,  <37.662659, 34.124725, 30.706398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179901, 33.895565, 31.251741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385113, 34.152756, 31.024273>,  <38.508240, 34.307068, 30.887793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385113, 34.152756, 31.024273>,  <38.179901, 33.895565, 31.251741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385113, 34.152756, 31.024273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452636, 0.360259, 0.815680,
		0.729331, -0.675867, -0.106211,
		0.513028, 0.642976, -0.568670,
		38.539021, 34.345650, 30.853672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884167, 33.755821, 31.336061>,  <38.179901, 33.895565, 31.251741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884167, 33.755821, 31.336061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843174, 34.137184, 31.222567>,  <38.818581, 34.366001, 31.154469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843174, 34.137184, 31.222567>,  <38.884167, 33.755821, 31.336061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843174, 34.137184, 31.222567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436707, 0.299403, 0.848319,
		0.893748, -0.036977, -0.447042,
		-0.102477, 0.953410, -0.283739,
		38.812431, 34.423206, 31.137445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584183, 34.037220, 31.387287>,  <38.884167, 33.755821, 31.336061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584183, 34.037220, 31.387287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.316185, 34.333771, 31.371927>,  <39.155388, 34.511700, 31.362711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.316185, 34.333771, 31.371927>,  <39.584183, 34.037220, 31.387287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316185, 34.333771, 31.371927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393724, 0.398714, 0.828256,
		0.629358, 0.539807, -0.559032,
		-0.669993, 0.741374, -0.038399,
		39.115189, 34.556183, 31.360407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.850407, 35.982483, 26.332851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472340, 35.873398, 26.404732>,  <39.245499, 35.807949, 26.447861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472340, 35.873398, 26.404732>,  <39.850407, 35.982483, 26.332851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472340, 35.873398, 26.404732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030187, -0.620824, -0.783369,
		0.325195, -0.734988, 0.595014,
		-0.945165, -0.272709, 0.179702,
		39.188789, 35.791584, 26.458643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706867, 35.201141, 26.418699>,  <39.850407, 35.982483, 26.332851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706867, 35.201141, 26.418699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.370975, 35.370018, 26.282112>,  <39.169441, 35.471344, 26.200159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.370975, 35.370018, 26.282112>,  <39.706867, 35.201141, 26.418699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370975, 35.370018, 26.282112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045830, -0.571503, -0.819319,
		-0.541059, -0.703660, 0.460562,
		-0.839735, 0.422193, -0.341466,
		39.119057, 35.496677, 26.179672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300243, 34.637333, 26.259485>,  <39.706867, 35.201141, 26.418699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300243, 34.637333, 26.259485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139324, 34.929520, 26.038731>,  <39.042770, 35.104832, 25.906279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139324, 34.929520, 26.038731>,  <39.300243, 34.637333, 26.259485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139324, 34.929520, 26.038731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041057, -0.616608, -0.786199,
		-0.914586, -0.293630, 0.278053,
		-0.402301, 0.730463, -0.551885,
		39.018635, 35.148659, 25.873165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737843, 34.277584, 25.900608>,  <39.300243, 34.637333, 26.259485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737843, 34.277584, 25.900608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778473, 34.624790, 25.706192>,  <38.802849, 34.833115, 25.589542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778473, 34.624790, 25.706192>,  <38.737843, 34.277584, 25.900608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778473, 34.624790, 25.706192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338002, -0.429393, -0.837482,
		-0.935648, 0.249349, 0.249775,
		0.101573, 0.868013, -0.486041,
		38.808945, 34.885193, 25.560379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259842, 34.312195, 25.523462>,  <38.737843, 34.277584, 25.900608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259842, 34.312195, 25.523462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480412, 34.592190, 25.341938>,  <38.612755, 34.760189, 25.233023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480412, 34.592190, 25.341938>,  <38.259842, 34.312195, 25.523462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480412, 34.592190, 25.341938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404634, -0.251289, -0.879275,
		-0.729522, 0.668481, 0.144673,
		0.551424, 0.699990, -0.453811,
		38.645840, 34.802185, 25.205795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787251, 34.633263, 25.228741>,  <38.259842, 34.312195, 25.523462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787251, 34.633263, 25.228741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132389, 34.703609, 25.039185>,  <38.339470, 34.745819, 24.925451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132389, 34.703609, 25.039185>,  <37.787251, 34.633263, 25.228741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132389, 34.703609, 25.039185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437873, -0.208317, -0.874569,
		-0.252529, 0.962120, -0.102736,
		0.862842, 0.175868, -0.473892,
		38.391243, 34.756371, 24.897017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680325, 34.993137, 24.773815>,  <37.787251, 34.633263, 25.228741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680325, 34.993137, 24.773815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024311, 34.833218, 24.646936>,  <38.230701, 34.737267, 24.570808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024311, 34.833218, 24.646936>,  <37.680325, 34.993137, 24.773815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024311, 34.833218, 24.646936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467768, -0.368938, -0.803167,
		0.204081, 0.839073, -0.504289,
		0.859967, -0.399802, -0.317198,
		38.282303, 34.713276, 24.551777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778065, 35.205917, 24.064131>,  <37.680325, 34.993137, 24.773815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778065, 35.205917, 24.064131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029125, 34.895168, 24.084261>,  <38.179760, 34.708721, 24.096338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029125, 34.895168, 24.084261>,  <37.778065, 35.205917, 24.064131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029125, 34.895168, 24.084261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239480, -0.254182, -0.937038,
		0.740747, 0.576079, -0.345581,
		0.627649, -0.776868, 0.050325,
		38.217419, 34.662109, 24.099358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954681, 35.154110, 23.450644>,  <37.778065, 35.205917, 24.064131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954681, 35.154110, 23.450644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090652, 34.809109, 23.600599>,  <38.172234, 34.602108, 23.690573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090652, 34.809109, 23.600599>,  <37.954681, 35.154110, 23.450644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090652, 34.809109, 23.600599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333216, -0.483223, -0.809607,
		0.879443, 0.150285, -0.451658,
		0.339923, -0.862502, 0.374890,
		38.192631, 34.550358, 23.713066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231483, 34.733170, 22.870049>,  <37.954681, 35.154110, 23.450644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231483, 34.733170, 22.870049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.153309, 34.459595, 23.151199>,  <38.106403, 34.295448, 23.319889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.153309, 34.459595, 23.151199>,  <38.231483, 34.733170, 22.870049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153309, 34.459595, 23.151199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465360, -0.566199, -0.680337,
		0.863276, -0.460052, -0.207623,
		-0.195434, -0.683938, 0.702876,
		38.094677, 34.254414, 23.362062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456642, 34.167145, 22.602160>,  <38.231483, 34.733170, 22.870049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456642, 34.167145, 22.602160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197872, 34.047634, 22.882792>,  <38.042610, 33.975925, 23.051170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197872, 34.047634, 22.882792>,  <38.456642, 34.167145, 22.602160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197872, 34.047634, 22.882792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469874, -0.568436, -0.675351,
		0.600584, -0.766558, 0.227349,
		-0.646929, -0.298779, 0.701579,
		38.003792, 33.958000, 23.093266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291718, 33.527687, 22.375719>,  <38.456642, 34.167145, 22.602160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291718, 33.527687, 22.375719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001945, 33.589909, 22.644348>,  <37.828083, 33.627239, 22.805525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001945, 33.589909, 22.644348>,  <38.291718, 33.527687, 22.375719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001945, 33.589909, 22.644348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651037, -0.474640, -0.592341,
		0.226615, -0.866326, 0.445113,
		-0.724428, 0.155552, 0.671571,
		37.784618, 33.636574, 22.845819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868816, 32.975563, 22.540815>,  <38.291718, 33.527687, 22.375719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868816, 32.975563, 22.540815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646240, 33.303677, 22.593752>,  <37.512695, 33.500546, 22.625513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646240, 33.303677, 22.593752>,  <37.868816, 32.975563, 22.540815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646240, 33.303677, 22.593752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633500, -0.315773, -0.706375,
		-0.537637, -0.476892, 0.695357,
		-0.556439, 0.820282, 0.132340,
		37.479309, 33.549763, 22.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133526, 32.798878, 22.635059>,  <37.868816, 32.975563, 22.540815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133526, 32.798878, 22.635059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156982, 33.172615, 22.494455>,  <37.171055, 33.396858, 22.410093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156982, 33.172615, 22.494455>,  <37.133526, 32.798878, 22.635059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156982, 33.172615, 22.494455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570999, -0.257436, -0.779543,
		-0.818854, 0.246427, 0.518413,
		0.058643, 0.934345, -0.351512,
		37.174576, 33.452919, 22.389002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804886, 32.485600, 21.991974>,  <37.133526, 32.798878, 22.635059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804886, 32.485600, 21.991974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533398, 32.192703, 22.014479>,  <36.370506, 32.016964, 22.027983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533398, 32.192703, 22.014479>,  <36.804886, 32.485600, 21.991974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533398, 32.192703, 22.014479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069184, 0.012520, 0.997525,
		-0.731135, 0.680929, 0.042162,
		-0.678716, -0.732242, 0.056263,
		36.329784, 31.973030, 22.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213062, 32.625717, 22.566196>,  <36.804886, 32.485600, 21.991974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213062, 32.625717, 22.566196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226471, 32.232452, 22.494341>,  <36.234516, 31.996494, 22.451227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226471, 32.232452, 22.494341>,  <36.213062, 32.625717, 22.566196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226471, 32.232452, 22.494341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033616, -0.178529, 0.983360,
		-0.998873, -0.039000, 0.027066,
		0.033519, -0.983161, -0.179639,
		36.236526, 31.937504, 22.440449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715099, 32.314514, 22.928900>,  <36.213062, 32.625717, 22.566196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715099, 32.314514, 22.928900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964436, 32.007496, 22.869141>,  <36.114037, 31.823286, 22.833284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964436, 32.007496, 22.869141>,  <35.715099, 32.314514, 22.928900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964436, 32.007496, 22.869141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038617, -0.221045, 0.974499,
		-0.780996, -0.601676, -0.167427,
		0.623341, -0.767545, -0.149400,
		36.151440, 31.777233, 22.824320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566154, 31.817257, 23.491959>,  <35.715099, 32.314514, 22.928900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566154, 31.817257, 23.491959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937664, 31.736753, 23.367466>,  <36.160572, 31.688452, 23.292770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937664, 31.736753, 23.367466>,  <35.566154, 31.817257, 23.491959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937664, 31.736753, 23.367466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265744, -0.223749, 0.937719,
		-0.258366, -0.953640, -0.154329,
		0.928778, -0.201263, -0.311233,
		36.216297, 31.676376, 23.274096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751854, 31.081116, 23.815311>,  <35.566154, 31.817257, 23.491959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751854, 31.081116, 23.815311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060074, 31.319235, 23.724213>,  <36.245007, 31.462107, 23.669554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060074, 31.319235, 23.724213>,  <35.751854, 31.081116, 23.815311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060074, 31.319235, 23.724213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404374, -0.180396, 0.896626,
		0.492674, -0.782994, -0.379727,
		0.770554, 0.595297, -0.227746,
		36.291241, 31.497824, 23.655890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194416, 30.707363, 24.119358>,  <35.751854, 31.081116, 23.815311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194416, 30.707363, 24.119358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375305, 31.056240, 24.044764>,  <36.483837, 31.265566, 24.000008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375305, 31.056240, 24.044764>,  <36.194416, 30.707363, 24.119358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375305, 31.056240, 24.044764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502996, -0.076730, 0.860876,
		0.736541, -0.483107, -0.473408,
		0.452220, 0.872193, -0.186486,
		36.510971, 31.317898, 23.988817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869579, 30.553535, 24.352650>,  <36.194416, 30.707363, 24.119358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869579, 30.553535, 24.352650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850830, 30.952908, 24.364880>,  <36.839581, 31.192532, 24.372217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850830, 30.952908, 24.364880>,  <36.869579, 30.553535, 24.352650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850830, 30.952908, 24.364880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614685, 0.004705, 0.788758,
		0.787378, 0.055770, -0.613942,
		-0.046878, 0.998433, 0.030577,
		36.836765, 31.252438, 24.374052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502045, 30.741833, 24.651197>,  <36.869579, 30.553535, 24.352650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502045, 30.741833, 24.651197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302567, 31.087374, 24.679657>,  <37.182880, 31.294699, 24.696732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302567, 31.087374, 24.679657>,  <37.502045, 30.741833, 24.651197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302567, 31.087374, 24.679657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502061, 0.220972, 0.836126,
		0.706568, 0.452693, -0.543904,
		-0.498696, 0.863852, 0.071147,
		37.152958, 31.346529, 24.701002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990349, 31.332878, 24.989462>,  <37.502045, 30.741833, 24.651197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990349, 31.332878, 24.989462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607910, 31.433504, 25.049582>,  <37.378445, 31.493879, 25.085653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607910, 31.433504, 25.049582>,  <37.990349, 31.332878, 24.989462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607910, 31.433504, 25.049582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198244, 0.177532, 0.963941,
		0.215811, 0.951419, -0.219609,
		-0.956099, 0.251565, 0.150299,
		37.321079, 31.508974, 25.094671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067883, 32.033047, 25.285965>,  <37.990349, 31.332878, 24.989462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067883, 32.033047, 25.285965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709702, 31.884081, 25.383512>,  <37.494793, 31.794703, 25.442041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709702, 31.884081, 25.383512>,  <38.067883, 32.033047, 25.285965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709702, 31.884081, 25.383512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080024, 0.404238, 0.911146,
		-0.437901, 0.835405, -0.332176,
		-0.895454, -0.372410, 0.243869,
		37.441067, 31.772358, 25.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755009, 32.625031, 25.551233>,  <38.067883, 32.033047, 25.285965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755009, 32.625031, 25.551233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569988, 32.301228, 25.695869>,  <37.458977, 32.106945, 25.782652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569988, 32.301228, 25.695869>,  <37.755009, 32.625031, 25.551233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569988, 32.301228, 25.695869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091335, 0.362164, 0.927629,
		-0.881878, 0.462098, -0.093582,
		-0.462547, -0.809508, 0.361590,
		37.431225, 32.058376, 25.804346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281788, 32.932640, 25.980513>,  <37.755009, 32.625031, 25.551233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281788, 32.932640, 25.980513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302410, 32.545410, 26.078636>,  <37.314781, 32.313072, 26.137510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302410, 32.545410, 26.078636>,  <37.281788, 32.932640, 25.980513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302410, 32.545410, 26.078636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134627, 0.236657, 0.962221,
		-0.989555, -0.082628, -0.118129,
		0.051551, -0.968074, 0.245309,
		37.317875, 32.254990, 26.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683369, 32.807686, 26.400251>,  <37.281788, 32.932640, 25.980513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683369, 32.807686, 26.400251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951473, 32.523865, 26.487225>,  <37.112335, 32.353573, 26.539408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951473, 32.523865, 26.487225>,  <36.683369, 32.807686, 26.400251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951473, 32.523865, 26.487225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019523, 0.276024, 0.960952,
		-0.741865, -0.648337, 0.171156,
		0.670265, -0.709556, 0.217431,
		37.152554, 32.310997, 26.552454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323212, 32.522697, 26.940252>,  <36.683369, 32.807686, 26.400251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323212, 32.522697, 26.940252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701542, 32.393013, 26.933319>,  <36.928539, 32.315201, 26.929159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701542, 32.393013, 26.933319>,  <36.323212, 32.522697, 26.940252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701542, 32.393013, 26.933319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110298, 0.270640, 0.956341,
		-0.305366, -0.906444, 0.291738,
		0.945826, -0.324213, -0.017335,
		36.985291, 32.295750, 26.928118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847980, 32.198017, 27.334679>,  <36.323212, 32.522697, 26.940252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847980, 32.198017, 27.334679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535950, 32.236492, 27.581980>,  <35.348732, 32.259579, 27.730360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535950, 32.236492, 27.581980>,  <35.847980, 32.198017, 27.334679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535950, 32.236492, 27.581980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609015, 0.109865, -0.785513,
		-0.143486, -0.989281, -0.027120,
		-0.780073, 0.096194, 0.618251,
		35.301929, 32.265350, 27.767454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374832, 31.749502, 27.075464>,  <35.847980, 32.198017, 27.334679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374832, 31.749502, 27.075464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159966, 32.018131, 27.279598>,  <35.031044, 32.179310, 27.402079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159966, 32.018131, 27.279598>,  <35.374832, 31.749502, 27.075464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159966, 32.018131, 27.279598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644803, 0.063098, -0.761740,
		-0.543765, -0.738248, 0.399137,
		-0.537168, 0.671572, 0.510334,
		34.998814, 32.219604, 27.432699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616447, 31.608170, 26.920593>,  <35.374832, 31.749502, 27.075464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616447, 31.608170, 26.920593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661823, 31.983068, 27.052473>,  <34.689049, 32.208008, 27.131601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661823, 31.983068, 27.052473>,  <34.616447, 31.608170, 26.920593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661823, 31.983068, 27.052473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605410, 0.328324, -0.725039,
		-0.787789, -0.117359, 0.604662,
		0.113435, 0.937246, 0.329701,
		34.695854, 32.264244, 27.151382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027737, 31.891905, 27.001654>,  <34.616447, 31.608170, 26.920593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027737, 31.891905, 27.001654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239483, 32.228119, 26.955568>,  <34.366531, 32.429848, 26.927917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239483, 32.228119, 26.955568>,  <34.027737, 31.891905, 27.001654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239483, 32.228119, 26.955568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700021, 0.356013, -0.619052,
		-0.479318, 0.408354, 0.776853,
		0.529362, 0.840536, -0.115213,
		34.398293, 32.480278, 26.921005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579258, 32.423885, 27.082439>,  <34.027737, 31.891905, 27.001654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579258, 32.423885, 27.082439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888268, 32.549194, 26.861504>,  <34.073673, 32.624378, 26.728943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888268, 32.549194, 26.861504>,  <33.579258, 32.423885, 27.082439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888268, 32.549194, 26.861504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631260, 0.284715, -0.721421,
		-0.068740, 0.905980, 0.417702,
		0.772519, 0.313269, -0.552337,
		34.120022, 32.643177, 26.695803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290146, 32.886322, 26.669998>,  <33.579258, 32.423885, 27.082439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290146, 32.886322, 26.669998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646336, 32.828197, 26.497513>,  <33.860050, 32.793324, 26.394022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646336, 32.828197, 26.497513>,  <33.290146, 32.886322, 26.669998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646336, 32.828197, 26.497513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419274, 0.106258, -0.901620,
		0.176837, 0.983663, 0.033694,
		0.890471, -0.145313, -0.431215,
		33.913475, 32.784603, 26.368149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324810, 33.413376, 26.099997>,  <33.290146, 32.886322, 26.669998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324810, 33.413376, 26.099997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607742, 33.139469, 26.029819>,  <33.777500, 32.975124, 25.987713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607742, 33.139469, 26.029819>,  <33.324810, 33.413376, 26.099997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607742, 33.139469, 26.029819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214200, 0.028892, -0.976362,
		0.673651, 0.728188, -0.126241,
		0.707328, -0.684768, -0.175441,
		33.819942, 32.934040, 25.977186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155331, 34.127102, 25.816587>,  <33.324810, 33.413376, 26.099997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155331, 34.127102, 25.816587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845470, 34.373486, 25.873867>,  <32.659554, 34.521317, 25.908236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845470, 34.373486, 25.873867>,  <33.155331, 34.127102, 25.816587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845470, 34.373486, 25.873867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360647, 0.244295, 0.900141,
		0.519466, 0.748943, -0.411388,
		-0.774654, 0.615958, 0.143201,
		32.613075, 34.558273, 25.916828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459915, 34.778511, 25.977833>,  <33.155331, 34.127102, 25.816587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459915, 34.778511, 25.977833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090485, 34.767128, 26.130779>,  <32.868828, 34.760300, 26.222548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090485, 34.767128, 26.130779>,  <33.459915, 34.778511, 25.977833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090485, 34.767128, 26.130779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376478, 0.121618, 0.918408,
		-0.072638, 0.992169, -0.101610,
		-0.923573, -0.028457, 0.382364,
		32.813412, 34.758591, 26.245489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485401, 35.224346, 26.485992>,  <33.459915, 34.778511, 25.977833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485401, 35.224346, 26.485992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158012, 35.010067, 26.569054>,  <32.961578, 34.881500, 26.618891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158012, 35.010067, 26.569054>,  <33.485401, 35.224346, 26.485992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158012, 35.010067, 26.569054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168018, 0.122453, 0.978149,
		-0.549424, 0.835481, -0.010218,
		-0.818476, -0.535702, 0.207654,
		32.912468, 34.849358, 26.631350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953827, 35.589161, 26.806562>,  <33.485401, 35.224346, 26.485992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953827, 35.589161, 26.806562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919258, 35.205482, 26.914246>,  <32.898518, 34.975277, 26.978855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919258, 35.205482, 26.914246>,  <32.953827, 35.589161, 26.806562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919258, 35.205482, 26.914246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057420, 0.264975, 0.962544,
		-0.994603, 0.098642, 0.032177,
		-0.086421, -0.959197, 0.269209,
		32.893333, 34.917725, 26.995008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536228, 35.695847, 27.456305>,  <32.953827, 35.589161, 26.806562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536228, 35.695847, 27.456305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679951, 35.322620, 27.449537>,  <32.766186, 35.098686, 27.445477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679951, 35.322620, 27.449537>,  <32.536228, 35.695847, 27.456305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679951, 35.322620, 27.449537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046873, -0.000063, 0.998901,
		-0.932041, -0.359708, 0.043713,
		0.359310, -0.933065, -0.016919,
		32.787743, 35.042702, 27.444462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195282, 35.349602, 28.059271>,  <32.536228, 35.695847, 27.456305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195282, 35.349602, 28.059271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517754, 35.128937, 27.973726>,  <32.711239, 34.996536, 27.922400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517754, 35.128937, 27.973726>,  <32.195282, 35.349602, 28.059271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517754, 35.128937, 27.973726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252624, -0.005907, 0.967547,
		-0.535026, -0.834044, 0.134602,
		0.806181, -0.551666, -0.213859,
		32.759609, 34.963436, 27.909569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192715, 34.789513, 28.473997>,  <32.195282, 35.349602, 28.059271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192715, 34.789513, 28.473997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577770, 34.827522, 28.372578>,  <32.808804, 34.850330, 28.311726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577770, 34.827522, 28.372578>,  <32.192715, 34.789513, 28.473997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577770, 34.827522, 28.372578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263702, -0.116434, 0.957551,
		0.061471, -0.988642, -0.137143,
		0.962644, 0.095027, -0.253550,
		32.866562, 34.856030, 28.296513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.170380, 34.282024, 23.643362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545818, 34.157581, 23.703024>,  <34.771080, 34.082916, 23.738821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545818, 34.157581, 23.703024>,  <34.170380, 34.282024, 23.643362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545818, 34.157581, 23.703024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213479, 0.863304, 0.457310,
		-0.271038, -0.397388, 0.876710,
		0.938597, -0.311108, 0.149154,
		34.827396, 34.064247, 23.747770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218643, 34.349346, 24.332783>,  <34.170380, 34.282024, 23.643362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218643, 34.349346, 24.332783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593315, 34.326984, 24.194508>,  <34.818119, 34.313568, 24.111542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593315, 34.326984, 24.194508>,  <34.218643, 34.349346, 24.332783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593315, 34.326984, 24.194508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253842, 0.788433, 0.560301,
		0.241229, -0.612574, 0.752703,
		0.936682, -0.055907, -0.345690,
		34.874321, 34.310211, 24.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642456, 34.328590, 24.974119>,  <34.218643, 34.349346, 24.332783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642456, 34.328590, 24.974119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870991, 34.448475, 24.668507>,  <35.008110, 34.520405, 24.485140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870991, 34.448475, 24.668507>,  <34.642456, 34.328590, 24.974119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870991, 34.448475, 24.668507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500527, 0.610525, 0.613786,
		0.650421, -0.733097, 0.198800,
		0.571337, 0.299714, -0.764033,
		35.042393, 34.538387, 24.439297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211903, 34.330540, 25.272402>,  <34.642456, 34.328590, 24.974119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211903, 34.330540, 25.272402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244343, 34.580223, 24.961588>,  <35.263805, 34.730034, 24.775101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244343, 34.580223, 24.961588>,  <35.211903, 34.330540, 25.272402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244343, 34.580223, 24.961588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469063, 0.663971, 0.582343,
		0.879433, -0.411705, -0.238947,
		0.081099, 0.624213, -0.777034,
		35.268673, 34.767487, 24.728477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835030, 34.565960, 25.289158>,  <35.211903, 34.330540, 25.272402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835030, 34.565960, 25.289158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643478, 34.836514, 25.065308>,  <35.528545, 34.998844, 24.930998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643478, 34.836514, 25.065308>,  <35.835030, 34.565960, 25.289158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643478, 34.836514, 25.065308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315126, 0.727433, 0.609538,
		0.819371, 0.115543, -0.561499,
		-0.478880, 0.676381, -0.559627,
		35.499813, 35.039429, 24.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374157, 35.071350, 25.126894>,  <35.835030, 34.565960, 25.289158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374157, 35.071350, 25.126894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.003792, 35.221745, 25.112318>,  <35.781574, 35.311981, 25.103573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.003792, 35.221745, 25.112318>,  <36.374157, 35.071350, 25.126894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003792, 35.221745, 25.112318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314793, 0.821329, 0.475735,
		0.208795, 0.429018, -0.878833,
		-0.925910, 0.375982, -0.036438,
		35.726017, 35.334538, 25.101387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533611, 35.798084, 25.227396>,  <36.374157, 35.071350, 25.126894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533611, 35.798084, 25.227396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133949, 35.814434, 25.225533>,  <35.894154, 35.824242, 25.224415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133949, 35.814434, 25.225533>,  <36.533611, 35.798084, 25.227396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133949, 35.814434, 25.225533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038014, 0.960687, 0.275019,
		0.015717, 0.274609, -0.961428,
		-0.999154, 0.040870, -0.004660,
		35.834202, 35.826694, 25.224134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358673, 36.383751, 24.724045>,  <36.533611, 35.798084, 25.227396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358673, 36.383751, 24.724045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090141, 36.299389, 25.008249>,  <35.929020, 36.248772, 25.178772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090141, 36.299389, 25.008249>,  <36.358673, 36.383751, 24.724045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090141, 36.299389, 25.008249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115305, 0.917263, 0.381227,
		-0.732131, 0.337857, -0.591471,
		-0.671334, -0.210909, 0.710513,
		35.888741, 36.236115, 25.221403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071350, 37.008114, 24.740400>,  <36.358673, 36.383751, 24.724045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071350, 37.008114, 24.740400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.949100, 36.803440, 25.061592>,  <35.875751, 36.680637, 25.254307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.949100, 36.803440, 25.061592>,  <36.071350, 37.008114, 24.740400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949100, 36.803440, 25.061592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118604, 0.816304, 0.565314,
		-0.944737, 0.268009, -0.188793,
		-0.305622, -0.511681, 0.802980,
		35.857414, 36.649937, 25.302486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458939, 37.315155, 25.083035>,  <36.071350, 37.008114, 24.740400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458939, 37.315155, 25.083035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.637230, 37.102680, 25.371246>,  <35.744205, 36.975197, 25.544174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.637230, 37.102680, 25.371246>,  <35.458939, 37.315155, 25.083035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637230, 37.102680, 25.371246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043169, 0.816730, 0.575403,
		-0.894125, -0.225370, 0.386973,
		0.445731, -0.531188, 0.720530,
		35.770950, 36.943325, 25.587406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040768, 37.481659, 25.660679>,  <35.458939, 37.315155, 25.083035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040768, 37.481659, 25.660679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360470, 37.291859, 25.808210>,  <35.552292, 37.177979, 25.896730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360470, 37.291859, 25.808210>,  <35.040768, 37.481659, 25.660679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360470, 37.291859, 25.808210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038790, 0.653153, 0.756232,
		-0.599740, -0.590115, 0.540442,
		0.799255, -0.474506, 0.368831,
		35.600246, 37.149506, 25.918859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956203, 37.353157, 26.390965>,  <35.040768, 37.481659, 25.660679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956203, 37.353157, 26.390965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.355156, 37.362156, 26.363455>,  <35.594528, 37.367558, 26.346949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.355156, 37.362156, 26.363455>,  <34.956203, 37.353157, 26.390965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355156, 37.362156, 26.363455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038210, 0.643333, 0.764633,
		0.061449, -0.765256, 0.640786,
		0.997378, 0.022502, -0.068773,
		35.654369, 37.368908, 26.342823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510895, 36.848316, 26.886473>,  <34.956203, 37.353157, 26.390965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510895, 36.848316, 26.886473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.183811, 37.078491, 26.880514>,  <33.987560, 37.216595, 26.876938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.183811, 37.078491, 26.880514>,  <34.510895, 36.848316, 26.886473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183811, 37.078491, 26.880514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077759, -0.136069, -0.987643,
		-0.570350, -0.806450, 0.156011,
		-0.817713, 0.575434, -0.014899,
		33.938496, 37.251122, 26.876045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963421, 36.480892, 26.538862>,  <34.510895, 36.848316, 26.886473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963421, 36.480892, 26.538862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901340, 36.874657, 26.505745>,  <33.864094, 37.110916, 26.485874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901340, 36.874657, 26.505745>,  <33.963421, 36.480892, 26.538862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901340, 36.874657, 26.505745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130761, -0.103540, -0.985993,
		-0.979191, -0.142197, 0.144791,
		-0.155197, 0.984409, -0.082792,
		33.854782, 37.169979, 26.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534698, 36.478485, 25.962589>,  <33.963421, 36.480892, 26.538862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534698, 36.478485, 25.962589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609119, 36.865509, 26.030947>,  <33.653770, 37.097725, 26.071962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609119, 36.865509, 26.030947>,  <33.534698, 36.478485, 25.962589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609119, 36.865509, 26.030947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198948, 0.207426, -0.957807,
		-0.962188, 0.144201, 0.231086,
		0.186050, 0.967564, 0.170895,
		33.664936, 37.155777, 26.082214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903965, 36.879131, 25.875671>,  <33.534698, 36.478485, 25.962589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903965, 36.879131, 25.875671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198959, 37.138245, 25.799263>,  <33.375957, 37.293713, 25.753418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198959, 37.138245, 25.799263>,  <32.903965, 36.879131, 25.875671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198959, 37.138245, 25.799263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400966, 0.192380, -0.895665,
		-0.543446, 0.737137, 0.401617,
		0.737491, 0.647780, -0.191019,
		33.420208, 37.332581, 25.741957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572678, 37.491428, 25.531317>,  <32.903965, 36.879131, 25.875671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572678, 37.491428, 25.531317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.962463, 37.521580, 25.446716>,  <33.196335, 37.539669, 25.395956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.962463, 37.521580, 25.446716>,  <32.572678, 37.491428, 25.531317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962463, 37.521580, 25.446716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224036, 0.263796, -0.938200,
		-0.014922, 0.961629, 0.273947,
		0.974467, 0.075374, -0.211503,
		33.254803, 37.544193, 25.383265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647072, 38.156418, 25.187902>,  <32.572678, 37.491428, 25.531317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647072, 38.156418, 25.187902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964184, 37.941574, 25.072653>,  <33.154449, 37.812668, 25.003504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964184, 37.941574, 25.072653>,  <32.647072, 38.156418, 25.187902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964184, 37.941574, 25.072653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063039, 0.397924, -0.915250,
		0.606239, 0.743755, 0.281607,
		0.792780, -0.537108, -0.288123,
		33.202019, 37.780441, 24.986216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930504, 38.517464, 24.474949>,  <32.647072, 38.156418, 25.187902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930504, 38.517464, 24.474949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.119713, 38.165958, 24.500343>,  <33.233238, 37.955055, 24.515579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.119713, 38.165958, 24.500343>,  <32.930504, 38.517464, 24.474949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119713, 38.165958, 24.500343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027942, -0.086982, -0.995818,
		0.880608, 0.469268, -0.065699,
		0.473020, -0.878761, 0.063485,
		33.261620, 37.902328, 24.519388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494949, 38.606232, 23.906647>,  <32.930504, 38.517464, 24.474949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494949, 38.606232, 23.906647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447483, 38.220467, 24.001158>,  <33.419003, 37.989006, 24.057865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447483, 38.220467, 24.001158>,  <33.494949, 38.606232, 23.906647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447483, 38.220467, 24.001158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032915, -0.241651, -0.969805,
		0.992389, -0.107305, 0.060419,
		-0.118665, -0.964412, 0.236279,
		33.411884, 37.931145, 24.072042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029095, 38.328541, 23.515905>,  <33.494949, 38.606232, 23.906647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029095, 38.328541, 23.515905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.766186, 38.034515, 23.582443>,  <33.608440, 37.858101, 23.622366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.766186, 38.034515, 23.582443>,  <34.029095, 38.328541, 23.515905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766186, 38.034515, 23.582443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006539, -0.215147, -0.976560,
		0.753625, -0.642953, 0.136604,
		-0.657272, -0.735067, 0.166344,
		33.569004, 37.813995, 23.632347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231770, 37.814640, 23.069292>,  <34.029095, 38.328541, 23.515905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231770, 37.814640, 23.069292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.862057, 37.692928, 23.161480>,  <33.640228, 37.619900, 23.216793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.862057, 37.692928, 23.161480>,  <34.231770, 37.814640, 23.069292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862057, 37.692928, 23.161480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123239, -0.333560, -0.934639,
		0.361268, -0.892273, 0.270805,
		-0.924282, -0.304281, 0.230468,
		33.584770, 37.601643, 23.230619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186562, 37.019222, 22.936743>,  <34.231770, 37.814640, 23.069292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186562, 37.019222, 22.936743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.803543, 37.134483, 22.933376>,  <33.573730, 37.203640, 22.931356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.803543, 37.134483, 22.933376>,  <34.186562, 37.019222, 22.936743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803543, 37.134483, 22.933376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176472, -0.609005, -0.773285,
		-0.227952, -0.738972, 0.634003,
		-0.957546, 0.288155, -0.008416,
		33.516277, 37.220928, 22.930851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835773, 36.422318, 22.656260>,  <34.186562, 37.019222, 22.936743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835773, 36.422318, 22.656260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523983, 36.670448, 22.621351>,  <33.336910, 36.819328, 22.600407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523983, 36.670448, 22.621351>,  <33.835773, 36.422318, 22.656260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523983, 36.670448, 22.621351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233944, -0.417491, -0.878050,
		-0.581113, -0.664000, 0.470545,
		-0.779473, 0.620327, -0.087271,
		33.290142, 36.856544, 22.595171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190445, 36.056141, 22.557968>,  <33.835773, 36.422318, 22.656260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190445, 36.056141, 22.557968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.142952, 36.416248, 22.390438>,  <33.114456, 36.632313, 22.289919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.142952, 36.416248, 22.390438>,  <33.190445, 36.056141, 22.557968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142952, 36.416248, 22.390438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074734, -0.428717, -0.900342,
		-0.990110, -0.075598, 0.118182,
		-0.118731, 0.900270, -0.418827,
		33.107334, 36.686329, 22.264790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946915, 35.874271, 23.274395>,  <33.190445, 36.056141, 22.557968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946915, 35.874271, 23.274395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698971, 35.616882, 23.094740>,  <32.550205, 35.462448, 22.986946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698971, 35.616882, 23.094740>,  <32.946915, 35.874271, 23.274395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698971, 35.616882, 23.094740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328500, -0.307013, 0.893214,
		-0.712646, 0.701207, -0.021075,
		-0.619857, -0.643468, -0.449138,
		32.513012, 35.423843, 22.959999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307270, 35.972115, 23.538994>,  <32.946915, 35.874271, 23.274395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307270, 35.972115, 23.538994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251728, 35.599842, 23.403616>,  <32.218403, 35.376476, 23.322390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251728, 35.599842, 23.403616>,  <32.307270, 35.972115, 23.538994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251728, 35.599842, 23.403616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406733, -0.258004, 0.876357,
		-0.902932, 0.259344, -0.342715,
		-0.138856, -0.930685, -0.338444,
		32.210072, 35.320637, 23.302082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629541, 35.817890, 23.609550>,  <32.307270, 35.972115, 23.538994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629541, 35.817890, 23.609550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.815239, 35.463909, 23.594948>,  <31.926659, 35.251522, 23.586187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.815239, 35.463909, 23.594948>,  <31.629541, 35.817890, 23.609550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815239, 35.463909, 23.594948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301125, -0.196463, 0.933127,
		-0.832947, -0.422207, -0.357689,
		0.464245, -0.884954, -0.036506,
		31.954514, 35.198421, 23.583996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213127, 35.344078, 23.836266>,  <31.629541, 35.817890, 23.609550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213127, 35.344078, 23.836266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.568466, 35.172661, 23.902216>,  <31.781670, 35.069809, 23.941786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.568466, 35.172661, 23.902216>,  <31.213127, 35.344078, 23.836266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568466, 35.172661, 23.902216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204597, -0.047974, 0.977670,
		-0.411067, -0.902245, -0.130297,
		0.888349, -0.428546, 0.164876,
		31.834970, 35.044098, 23.951679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095127, 34.902168, 24.412504>,  <31.213127, 35.344078, 23.836266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095127, 34.902168, 24.412504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494619, 34.913013, 24.395523>,  <31.734314, 34.919521, 24.385334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494619, 34.913013, 24.395523>,  <31.095127, 34.902168, 24.412504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494619, 34.913013, 24.395523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045314, -0.115483, 0.992275,
		0.022003, -0.992939, -0.116565,
		0.998731, 0.027115, -0.042453,
		31.794239, 34.921146, 24.382788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242771, 34.292431, 24.842981>,  <31.095127, 34.902168, 24.412504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242771, 34.292431, 24.842981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.585581, 34.497688, 24.824226>,  <31.791265, 34.620842, 24.812973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.585581, 34.497688, 24.824226>,  <31.242771, 34.292431, 24.842981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585581, 34.497688, 24.824226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180801, -0.214251, 0.959900,
		0.482519, -0.831133, -0.276395,
		0.857022, 0.513142, -0.046889,
		31.842688, 34.651630, 24.810160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907928, 33.845257, 25.011829>,  <31.242771, 34.292431, 24.842981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907928, 33.845257, 25.011829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.007763, 34.225475, 25.085777>,  <32.067665, 34.453606, 25.130146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.007763, 34.225475, 25.085777>,  <31.907928, 33.845257, 25.011829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007763, 34.225475, 25.085777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332023, -0.263342, 0.905766,
		0.909653, -0.164684, -0.381328,
		0.249585, 0.950542, 0.184871,
		32.082638, 34.510639, 25.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571453, 33.751064, 25.410509>,  <31.907928, 33.845257, 25.011829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571453, 33.751064, 25.410509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.496414, 34.141228, 25.456785>,  <32.451393, 34.375328, 25.484550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.496414, 34.141228, 25.456785>,  <32.571453, 33.751064, 25.410509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496414, 34.141228, 25.456785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166589, -0.084478, 0.982401,
		0.968017, 0.203565, -0.146645,
		-0.187594, 0.975410, 0.115688,
		32.440136, 34.433849, 25.491491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313065, 33.550617, 25.400246>,  <32.571453, 33.751064, 25.410509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313065, 33.550617, 25.400246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525440, 33.214493, 25.444031>,  <33.652866, 33.012817, 25.470303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525440, 33.214493, 25.444031>,  <33.313065, 33.550617, 25.400246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525440, 33.214493, 25.444031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036229, -0.106546, -0.993647,
		0.846633, 0.531535, -0.026126,
		0.530942, -0.840309, 0.109463,
		33.684723, 32.962399, 25.476870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830048, 33.566814, 24.879435>,  <33.313065, 33.550617, 25.400246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830048, 33.566814, 24.879435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807331, 33.177368, 24.967840>,  <33.793701, 32.943699, 25.020884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807331, 33.177368, 24.967840>,  <33.830048, 33.566814, 24.879435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807331, 33.177368, 24.967840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128510, -0.226659, -0.965459,
		0.990081, -0.026426, 0.137992,
		-0.056791, -0.973616, 0.221015,
		33.790295, 32.885284, 25.034145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355389, 33.213898, 24.539124>,  <33.830048, 33.566814, 24.879435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355389, 33.213898, 24.539124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090874, 32.920021, 24.599699>,  <33.932167, 32.743694, 24.636045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090874, 32.920021, 24.599699>,  <34.355389, 33.213898, 24.539124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090874, 32.920021, 24.599699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082245, -0.271676, -0.958868,
		0.745614, -0.621628, 0.240080,
		-0.661283, -0.734691, 0.151440,
		33.892490, 32.699615, 24.645130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663383, 32.648067, 24.306067>,  <34.355389, 33.213898, 24.539124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663383, 32.648067, 24.306067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.273869, 32.557083, 24.306293>,  <34.040161, 32.502491, 24.306431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.273869, 32.557083, 24.306293>,  <34.663383, 32.648067, 24.306067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273869, 32.557083, 24.306293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097139, -0.418123, -0.903182,
		0.205675, -0.879452, 0.429258,
		-0.973787, -0.227460, 0.000569,
		33.981731, 32.488846, 24.306463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626270, 32.004322, 24.141785>,  <34.663383, 32.648067, 24.306067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626270, 32.004322, 24.141785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268795, 32.155941, 24.045750>,  <34.054310, 32.246914, 23.988129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268795, 32.155941, 24.045750>,  <34.626270, 32.004322, 24.141785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268795, 32.155941, 24.045750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067111, -0.416149, -0.906816,
		-0.443645, -0.826522, 0.346468,
		-0.893686, 0.379052, -0.240092,
		34.000687, 32.269653, 23.973722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408081, 31.445345, 23.737158>,  <34.626270, 32.004322, 24.141785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408081, 31.445345, 23.737158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160637, 31.744761, 23.641655>,  <34.012169, 31.924410, 23.584354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160637, 31.744761, 23.641655>,  <34.408081, 31.445345, 23.737158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160637, 31.744761, 23.641655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116024, -0.387579, -0.914506,
		-0.777082, -0.538024, 0.326610,
		-0.618614, 0.748541, -0.238757,
		33.975052, 31.969322, 23.570028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934254, 31.127611, 23.271437>,  <34.408081, 31.445345, 23.737158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934254, 31.127611, 23.271437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904659, 31.522442, 23.214584>,  <33.886902, 31.759340, 23.180473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904659, 31.522442, 23.214584>,  <33.934254, 31.127611, 23.271437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904659, 31.522442, 23.214584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064392, -0.146951, -0.987046,
		-0.995178, -0.063879, 0.074432,
		-0.073990, 0.987079, -0.142129,
		33.882462, 31.818565, 23.171946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386829, 31.205156, 22.777266>,  <33.934254, 31.127611, 23.271437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386829, 31.205156, 22.777266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593792, 31.546844, 22.756872>,  <33.717972, 31.751858, 22.744637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593792, 31.546844, 22.756872>,  <33.386829, 31.205156, 22.777266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593792, 31.546844, 22.756872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038638, -0.036198, -0.998598,
		-0.854866, 0.518652, 0.014276,
		0.517408, 0.854219, -0.050984,
		33.749016, 31.803110, 22.741577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016235, 31.677019, 22.380941>,  <33.386829, 31.205156, 22.777266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016235, 31.677019, 22.380941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.414551, 31.701468, 22.353619>,  <33.653542, 31.716137, 22.337225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.414551, 31.701468, 22.353619>,  <33.016235, 31.677019, 22.380941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414551, 31.701468, 22.353619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071065, 0.044147, -0.996494,
		-0.057893, 0.997153, 0.048305,
		0.995790, 0.061123, -0.068307,
		33.713287, 31.719805, 22.333126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.080578, 35.573868, 37.445217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265011, 35.731903, 37.127396>,  <38.375671, 35.826725, 36.936703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265011, 35.731903, 37.127396>,  <38.080578, 35.573868, 37.445217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265011, 35.731903, 37.127396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705134, -0.380444, -0.598371,
		-0.538689, 0.836164, 0.103170,
		0.461085, 0.395085, -0.794549,
		38.403336, 35.850430, 36.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541138, 36.057781, 37.052147>,  <38.080578, 35.573868, 37.445217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541138, 36.057781, 37.052147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825264, 35.878784, 36.834820>,  <37.995739, 35.771385, 36.704422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825264, 35.878784, 36.834820>,  <37.541138, 36.057781, 37.052147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825264, 35.878784, 36.834820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700412, -0.372846, -0.608612,
		0.069778, 0.812855, -0.578272,
		0.710319, -0.447496, -0.543317,
		38.038361, 35.744534, 36.671825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304634, 36.107849, 36.397373>,  <37.541138, 36.057781, 37.052147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304634, 36.107849, 36.397373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580700, 35.819145, 36.376453>,  <37.746342, 35.645924, 36.363903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580700, 35.819145, 36.376453>,  <37.304634, 36.107849, 36.397373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580700, 35.819145, 36.376453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496524, -0.419735, -0.759793,
		0.526435, 0.550352, -0.648058,
		0.690166, -0.721758, -0.052300,
		37.787750, 35.602619, 36.360764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634617, 36.197899, 35.684559>,  <37.304634, 36.107849, 36.397373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634617, 36.197899, 35.684559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683411, 35.831345, 35.837059>,  <37.712685, 35.611412, 35.928558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683411, 35.831345, 35.837059>,  <37.634617, 36.197899, 35.684559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683411, 35.831345, 35.837059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512771, -0.387074, -0.766315,
		0.849815, -0.102020, -0.517113,
		0.121981, -0.916387, 0.381254,
		37.720005, 35.556427, 35.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738937, 35.791595, 35.106739>,  <37.634617, 36.197899, 35.684559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738937, 35.791595, 35.106739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670876, 35.520481, 35.392857>,  <37.630039, 35.357811, 35.564526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670876, 35.520481, 35.392857>,  <37.738937, 35.791595, 35.106739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670876, 35.520481, 35.392857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374988, -0.626733, -0.683074,
		0.911280, -0.384455, -0.147522,
		-0.170155, -0.677790, 0.715295,
		37.619827, 35.317142, 35.607445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050163, 35.229343, 34.807945>,  <37.738937, 35.791595, 35.106739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050163, 35.229343, 34.807945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802818, 35.083363, 35.086349>,  <37.654411, 34.995773, 35.253391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802818, 35.083363, 35.086349>,  <38.050163, 35.229343, 34.807945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802818, 35.083363, 35.086349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346604, -0.668205, -0.658307,
		0.705332, -0.648314, 0.286698,
		-0.618363, -0.364954, 0.696014,
		37.617310, 34.973877, 35.295155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158951, 34.490601, 34.865444>,  <38.050163, 35.229343, 34.807945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158951, 34.490601, 34.865444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775333, 34.568314, 34.947891>,  <37.545162, 34.614941, 34.997360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775333, 34.568314, 34.947891>,  <38.158951, 34.490601, 34.865444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775333, 34.568314, 34.947891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280845, -0.746858, -0.602768,
		0.036827, -0.635968, 0.770836,
		-0.959046, 0.194287, 0.206113,
		37.487621, 34.626598, 35.009724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918407, 33.819057, 34.890362>,  <38.158951, 34.490601, 34.865444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918407, 33.819057, 34.890362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615078, 34.078869, 34.868256>,  <37.433079, 34.234756, 34.854992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615078, 34.078869, 34.868256>,  <37.918407, 33.819057, 34.890362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615078, 34.078869, 34.868256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521826, -0.655662, -0.545715,
		-0.390693, -0.384991, 0.836147,
		-0.758325, 0.649530, -0.055264,
		37.387581, 34.273727, 34.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309788, 33.374447, 34.982777>,  <37.918407, 33.819057, 34.890362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309788, 33.374447, 34.982777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169102, 33.710033, 34.816677>,  <37.084690, 33.911385, 34.717018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169102, 33.710033, 34.816677>,  <37.309788, 33.374447, 34.982777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169102, 33.710033, 34.816677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505213, -0.543561, -0.670299,
		-0.788072, -0.025965, 0.615036,
		-0.351714, 0.838968, -0.415247,
		37.063587, 33.961723, 34.692104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628109, 33.265717, 34.834900>,  <37.309788, 33.374447, 34.982777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628109, 33.265717, 34.834900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731289, 33.560356, 34.584816>,  <36.793198, 33.737141, 34.434765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731289, 33.560356, 34.584816>,  <36.628109, 33.265717, 34.834900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731289, 33.560356, 34.584816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436978, -0.488191, -0.755460,
		-0.861691, 0.468076, 0.195946,
		0.257954, 0.736597, -0.625208,
		36.808674, 33.781334, 34.397255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018410, 33.372139, 34.492184>,  <36.628109, 33.265717, 34.834900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018410, 33.372139, 34.492184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322109, 33.494480, 34.262402>,  <36.504330, 33.567886, 34.124535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322109, 33.494480, 34.262402>,  <36.018410, 33.372139, 34.492184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322109, 33.494480, 34.262402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442776, -0.404142, -0.800387,
		-0.476961, 0.862047, -0.171420,
		0.759248, 0.305852, -0.574453,
		36.549885, 33.586235, 34.090065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723743, 33.671314, 33.941101>,  <36.018410, 33.372139, 34.492184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723743, 33.671314, 33.941101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085499, 33.562103, 33.809929>,  <36.302551, 33.496574, 33.731228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085499, 33.562103, 33.809929>,  <35.723743, 33.671314, 33.941101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085499, 33.562103, 33.809929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413179, -0.368325, -0.832838,
		0.106606, 0.888702, -0.445919,
		0.904388, -0.273030, -0.327927,
		36.356815, 33.480194, 33.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471779, 34.348492, 33.702923>,  <35.723743, 33.671314, 33.941101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471779, 34.348492, 33.702923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092796, 34.468044, 33.748524>,  <34.865406, 34.539776, 33.775883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092796, 34.468044, 33.748524>,  <35.471779, 34.348492, 33.702923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092796, 34.468044, 33.748524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223328, 0.362892, 0.904673,
		0.229018, 0.882599, -0.410573,
		-0.947457, 0.298879, 0.114001,
		34.808559, 34.557709, 33.782722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520649, 34.983727, 34.003422>,  <35.471779, 34.348492, 33.702923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520649, 34.983727, 34.003422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131134, 34.908554, 34.054680>,  <34.897427, 34.863449, 34.085434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131134, 34.908554, 34.054680>,  <35.520649, 34.983727, 34.003422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131134, 34.908554, 34.054680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000433, 0.561838, 0.827247,
		-0.227468, 0.805617, -0.547028,
		-0.973785, -0.187936, 0.128149,
		34.838997, 34.852173, 34.093124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222122, 35.676132, 34.255142>,  <35.520649, 34.983727, 34.003422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222122, 35.676132, 34.255142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966534, 35.386356, 34.358608>,  <34.813179, 35.212490, 34.420689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966534, 35.386356, 34.358608>,  <35.222122, 35.676132, 34.255142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966534, 35.386356, 34.358608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215080, 0.491106, 0.844130,
		-0.738550, 0.483742, -0.469615,
		-0.638972, -0.724437, 0.258662,
		34.774841, 35.169025, 34.436207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489452, 36.005566, 34.360600>,  <35.222122, 35.676132, 34.255142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489452, 36.005566, 34.360600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505310, 35.661282, 34.563618>,  <34.514824, 35.454712, 34.685429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505310, 35.661282, 34.563618>,  <34.489452, 36.005566, 34.360600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505310, 35.661282, 34.563618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274093, 0.479093, 0.833872,
		-0.960886, -0.172170, -0.216924,
		0.039640, -0.860713, 0.507544,
		34.517200, 35.403069, 34.715881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701340, 35.908913, 34.569656>,  <34.489452, 36.005566, 34.360600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701340, 35.908913, 34.569656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958488, 35.697449, 34.791370>,  <34.112778, 35.570572, 34.924400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958488, 35.697449, 34.791370>,  <33.701340, 35.908913, 34.569656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958488, 35.697449, 34.791370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490637, 0.271487, 0.827991,
		-0.588205, -0.804248, -0.084847,
		0.642876, -0.528658, 0.554284,
		34.151352, 35.538853, 34.957657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213970, 35.733936, 35.152721>,  <33.701340, 35.908913, 34.569656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213970, 35.733936, 35.152721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587326, 35.668568, 35.280525>,  <33.811340, 35.629349, 35.357208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587326, 35.668568, 35.280525>,  <33.213970, 35.733936, 35.152721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587326, 35.668568, 35.280525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216209, 0.454519, 0.864098,
		-0.286432, -0.875618, 0.388909,
		0.933386, -0.163420, 0.319506,
		33.867340, 35.619541, 35.376377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129047, 35.453152, 35.852909>,  <33.213970, 35.733936, 35.152721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129047, 35.453152, 35.852909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497517, 35.606834, 35.828186>,  <33.718597, 35.699043, 35.813351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497517, 35.606834, 35.828186>,  <33.129047, 35.453152, 35.852909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497517, 35.606834, 35.828186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080694, 0.343971, 0.935506,
		0.380684, -0.856780, 0.347862,
		0.921178, 0.384203, -0.061807,
		33.773869, 35.722095, 35.809643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398113, 35.400349, 36.529942>,  <33.129047, 35.453152, 35.852909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398113, 35.400349, 36.529942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648781, 35.670300, 36.374084>,  <33.799183, 35.832272, 36.280571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648781, 35.670300, 36.374084>,  <33.398113, 35.400349, 36.529942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648781, 35.670300, 36.374084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261042, 0.289324, 0.920950,
		0.734264, -0.678845, 0.005139,
		0.626669, 0.674878, -0.389647,
		33.836781, 35.872765, 36.257191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988171, 35.339809, 36.871628>,  <33.398113, 35.400349, 36.529942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988171, 35.339809, 36.871628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018166, 35.710789, 36.725086>,  <34.036163, 35.933376, 36.637161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018166, 35.710789, 36.725086>,  <33.988171, 35.339809, 36.871628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018166, 35.710789, 36.725086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110559, 0.357387, 0.927389,
		0.991037, -0.110045, -0.075739,
		0.074986, 0.927451, -0.366351,
		34.040661, 35.989025, 36.615181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146275, 35.729946, 37.465599>,  <33.988171, 35.339809, 36.871628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146275, 35.729946, 37.465599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105225, 36.039314, 37.215389>,  <34.080593, 36.224937, 37.065262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105225, 36.039314, 37.215389>,  <34.146275, 35.729946, 37.465599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105225, 36.039314, 37.215389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077130, 0.620767, 0.780191,
		0.991725, 0.128314, -0.004052,
		-0.102625, 0.773423, -0.625528,
		34.074436, 36.271339, 37.027733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560280, 36.278854, 37.781124>,  <34.146275, 35.729946, 37.465599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560280, 36.278854, 37.781124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292244, 36.442177, 37.533165>,  <34.131424, 36.540169, 37.384392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292244, 36.442177, 37.533165>,  <34.560280, 36.278854, 37.781124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292244, 36.442177, 37.533165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189425, 0.713407, 0.674662,
		0.717706, 0.569505, -0.400701,
		-0.670087, 0.408306, -0.619895,
		34.091217, 36.564667, 37.347195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686226, 37.001434, 37.817432>,  <34.560280, 36.278854, 37.781124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686226, 37.001434, 37.817432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313858, 36.941151, 37.684361>,  <34.090439, 36.904980, 37.604515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313858, 36.941151, 37.684361>,  <34.686226, 37.001434, 37.817432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313858, 36.941151, 37.684361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343430, 0.671196, 0.656926,
		0.124289, 0.725797, -0.676588,
		-0.930918, -0.150712, -0.332683,
		34.034584, 36.895939, 37.584557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349224, 37.717468, 37.666573>,  <34.686226, 37.001434, 37.817432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349224, 37.717468, 37.666573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060204, 37.446980, 37.724030>,  <33.886791, 37.284687, 37.758503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060204, 37.446980, 37.724030>,  <34.349224, 37.717468, 37.666573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060204, 37.446980, 37.724030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385023, 0.566210, 0.728810,
		-0.574170, 0.471301, -0.669480,
		-0.722555, -0.676226, 0.143639,
		33.843437, 37.244110, 37.767120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719242, 38.077068, 37.535656>,  <34.349224, 37.717468, 37.666573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719242, 38.077068, 37.535656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632206, 37.777966, 37.786579>,  <33.579983, 37.598503, 37.937134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632206, 37.777966, 37.786579>,  <33.719242, 38.077068, 37.535656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632206, 37.777966, 37.786579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168725, 0.661848, 0.730403,
		-0.961346, 0.053088, -0.270178,
		-0.217592, -0.747756, 0.627308,
		33.566929, 37.553638, 37.974770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055702, 38.475697, 37.585533>,  <33.719242, 38.077068, 37.535656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055702, 38.475697, 37.585533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068760, 38.421242, 37.981594>,  <33.076595, 38.388569, 38.219231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068760, 38.421242, 37.981594>,  <33.055702, 38.475697, 37.585533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068760, 38.421242, 37.981594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271523, 0.954630, 0.122298,
		-0.961878, 0.264857, 0.068124,
		0.032641, -0.136133, 0.990153,
		33.078552, 38.380402, 38.278641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568043, 39.059971, 37.130615>,  <33.055702, 38.475697, 37.585533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568043, 39.059971, 37.130615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862095, 39.267723, 36.956341>,  <33.038528, 39.392376, 36.851776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862095, 39.267723, 36.956341>,  <32.568043, 39.059971, 37.130615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862095, 39.267723, 36.956341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471880, -0.069391, -0.878928,
		-0.486730, 0.851722, 0.194073,
		0.735135, 0.519380, -0.435685,
		33.082634, 39.423538, 36.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271759, 39.720528, 36.818031>,  <32.568043, 39.059971, 37.130615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271759, 39.720528, 36.818031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590199, 39.560108, 36.636757>,  <32.781261, 39.463856, 36.527992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590199, 39.560108, 36.636757>,  <32.271759, 39.720528, 36.818031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590199, 39.560108, 36.636757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501367, -0.017726, -0.865053,
		0.338897, 0.915884, -0.215185,
		0.796103, -0.401051, -0.453187,
		32.829029, 39.439793, 36.500801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308296, 40.043575, 36.080933>,  <32.271759, 39.720528, 36.818031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308296, 40.043575, 36.080933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506409, 39.696087, 36.078796>,  <32.625275, 39.487595, 36.077515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506409, 39.696087, 36.078796>,  <32.308296, 40.043575, 36.080933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506409, 39.696087, 36.078796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292353, -0.160887, -0.942680,
		0.818065, 0.468448, -0.333657,
		0.495277, -0.868719, -0.005336,
		32.654991, 39.435471, 36.077194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702641, 39.998734, 35.436703>,  <32.308296, 40.043575, 36.080933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702641, 39.998734, 35.436703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696136, 39.614872, 35.548985>,  <32.692234, 39.384556, 35.616356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696136, 39.614872, 35.548985>,  <32.702641, 39.998734, 35.436703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696136, 39.614872, 35.548985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003841, -0.280682, -0.959793,
		0.999860, -0.016684, 0.000877,
		-0.016259, -0.959656, 0.280707,
		32.691257, 39.326977, 35.633198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285030, 39.626930, 35.066505>,  <32.702641, 39.998734, 35.436703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285030, 39.626930, 35.066505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027779, 39.345703, 35.187881>,  <32.873428, 39.176968, 35.260708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027779, 39.345703, 35.187881>,  <33.285030, 39.626930, 35.066505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027779, 39.345703, 35.187881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017645, -0.382550, -0.923766,
		0.765551, -0.599460, 0.233625,
		-0.643134, -0.703068, 0.303438,
		32.834839, 39.134785, 35.278912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515846, 39.019913, 34.727173>,  <33.285030, 39.626930, 35.066505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515846, 39.019913, 34.727173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140194, 38.929897, 34.831009>,  <32.914803, 38.875889, 34.893311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140194, 38.929897, 34.831009>,  <33.515846, 39.019913, 34.727173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140194, 38.929897, 34.831009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150191, -0.410658, -0.899335,
		0.308989, -0.883583, 0.351863,
		-0.939132, -0.225037, 0.259595,
		32.858456, 38.862385, 34.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400543, 38.350880, 34.499489>,  <33.515846, 39.019913, 34.727173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400543, 38.350880, 34.499489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034004, 38.487350, 34.583294>,  <32.814079, 38.569233, 34.633579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034004, 38.487350, 34.583294>,  <33.400543, 38.350880, 34.499489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034004, 38.487350, 34.583294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282006, -0.178548, -0.942652,
		-0.284203, -0.922886, 0.259827,
		-0.916352, 0.341178, 0.209515,
		32.759098, 38.589703, 34.646149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903000, 37.881699, 34.181831>,  <33.400543, 38.350880, 34.499489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903000, 37.881699, 34.181831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681576, 38.212101, 34.224312>,  <32.548721, 38.410343, 34.249802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681576, 38.212101, 34.224312>,  <32.903000, 37.881699, 34.181831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681576, 38.212101, 34.224312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363648, -0.125015, -0.923109,
		-0.749220, -0.549617, 0.369581,
		-0.553560, 0.826010, 0.106204,
		32.515507, 38.459904, 34.256172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204060, 37.674759, 33.871452>,  <32.903000, 37.881699, 34.181831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204060, 37.674759, 33.871452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191601, 38.074562, 33.872730>,  <32.184128, 38.314445, 33.873497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191601, 38.074562, 33.872730>,  <32.204060, 37.674759, 33.871452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191601, 38.074562, 33.872730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471652, -0.011878, -0.881705,
		-0.881235, -0.028968, 0.471791,
		-0.031145, 0.999510, 0.003195,
		32.182259, 38.374416, 33.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390087, 37.931793, 33.716965>,  <32.204060, 37.674759, 33.871452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390087, 37.931793, 33.716965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659634, 38.218098, 33.643658>,  <31.821362, 38.389881, 33.599674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659634, 38.218098, 33.643658>,  <31.390087, 37.931793, 33.716965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659634, 38.218098, 33.643658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295626, 0.033879, -0.954703,
		-0.677131, 0.697522, 0.234428,
		0.673868, 0.715762, -0.183265,
		31.861794, 38.432827, 33.588676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041790, 38.386444, 33.204098>,  <31.390087, 37.931793, 33.716965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041790, 38.386444, 33.204098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432699, 38.470505, 33.192947>,  <31.667244, 38.520943, 33.186256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432699, 38.470505, 33.192947>,  <31.041790, 38.386444, 33.204098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432699, 38.470505, 33.192947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010602, -0.082858, -0.996505,
		-0.211729, 0.974151, -0.078746,
		0.977271, 0.210154, -0.027872,
		31.725880, 38.533550, 33.184586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073433, 39.010197, 32.713291>,  <31.041790, 38.386444, 33.204098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073433, 39.010197, 32.713291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430653, 38.836582, 32.760757>,  <31.644983, 38.732414, 32.789238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430653, 38.836582, 32.760757>,  <31.073433, 39.010197, 32.713291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430653, 38.836582, 32.760757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140269, 0.017946, -0.989951,
		0.427541, 0.900718, 0.076908,
		0.893047, -0.434033, 0.118670,
		31.698566, 38.706371, 32.796360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399580, 39.329987, 32.219501>,  <31.073433, 39.010197, 32.713291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399580, 39.329987, 32.219501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621401, 39.008259, 32.304871>,  <31.754494, 38.815224, 32.356091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621401, 39.008259, 32.304871>,  <31.399580, 39.329987, 32.219501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621401, 39.008259, 32.304871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201198, -0.119263, -0.972263,
		0.807460, 0.582109, 0.095690,
		0.554551, -0.804317, 0.213419,
		31.787766, 38.766964, 32.368896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851820, 39.350830, 31.700817>,  <31.399580, 39.329987, 32.219501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851820, 39.350830, 31.700817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880445, 38.976833, 31.839766>,  <31.897621, 38.752434, 31.923134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880445, 38.976833, 31.839766>,  <31.851820, 39.350830, 31.700817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880445, 38.976833, 31.839766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320553, -0.308228, -0.895679,
		0.944523, 0.175449, 0.277657,
		0.071564, -0.934994, 0.347369,
		31.901915, 38.696335, 31.943975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476192, 39.097713, 31.460064>,  <31.851820, 39.350830, 31.700817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476192, 39.097713, 31.460064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262646, 38.772877, 31.554283>,  <32.134518, 38.577972, 31.610815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262646, 38.772877, 31.554283>,  <32.476192, 39.097713, 31.460064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262646, 38.772877, 31.554283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403452, -0.489461, -0.773081,
		0.743108, -0.317692, 0.588951,
		-0.533870, -0.812096, 0.235549,
		32.102486, 38.529247, 31.624949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921818, 38.533115, 31.597536>,  <32.476192, 39.097713, 31.460064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921818, 38.533115, 31.597536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586720, 38.354500, 31.471819>,  <32.385658, 38.247330, 31.396389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586720, 38.354500, 31.471819>,  <32.921818, 38.533115, 31.597536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586720, 38.354500, 31.471819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505010, -0.414646, -0.756990,
		0.207705, -0.792888, 0.572876,
		-0.837749, -0.446539, -0.314293,
		32.335396, 38.220539, 31.377531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039715, 37.792145, 31.491943>,  <32.921818, 38.533115, 31.597536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039715, 37.792145, 31.491943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716637, 37.898773, 31.281586>,  <32.522789, 37.962749, 31.155371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716637, 37.898773, 31.281586>,  <33.039715, 37.792145, 31.491943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716637, 37.898773, 31.281586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434227, -0.334420, -0.836427,
		-0.398840, -0.903936, 0.154356,
		-0.807696, 0.266575, -0.525894,
		32.474327, 37.978745, 31.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025112, 37.222103, 31.070873>,  <33.039715, 37.792145, 31.491943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025112, 37.222103, 31.070873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790318, 37.483795, 30.880114>,  <32.649441, 37.640812, 30.765657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790318, 37.483795, 30.880114>,  <33.025112, 37.222103, 31.070873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790318, 37.483795, 30.880114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415965, -0.261648, -0.870927,
		-0.694567, -0.709593, -0.118554,
		-0.586983, 0.654231, -0.476898,
		32.614223, 37.680065, 30.737043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911552, 36.822010, 30.477875>,  <33.025112, 37.222103, 31.070873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911552, 36.822010, 30.477875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817108, 37.197170, 30.376209>,  <32.760441, 37.422264, 30.315210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817108, 37.197170, 30.376209>,  <32.911552, 36.822010, 30.477875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817108, 37.197170, 30.376209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392146, -0.147347, -0.908026,
		-0.889085, -0.314067, -0.333002,
		-0.236114, 0.937897, -0.254164,
		32.746273, 37.478539, 30.299959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514359, 36.812286, 29.814423>,  <32.911552, 36.822010, 30.477875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514359, 36.812286, 29.814423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688095, 37.171986, 29.835176>,  <32.792339, 37.387806, 29.847630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688095, 37.171986, 29.835176>,  <32.514359, 36.812286, 29.814423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688095, 37.171986, 29.835176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332652, -0.106609, -0.937005,
		-0.837070, 0.424244, -0.345442,
		0.434345, 0.899251, 0.051887,
		32.818398, 37.441761, 29.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356266, 37.092819, 29.253202>,  <32.514359, 36.812286, 29.814423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356266, 37.092819, 29.253202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656063, 37.342075, 29.342611>,  <32.835941, 37.491631, 29.396255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656063, 37.342075, 29.342611>,  <32.356266, 37.092819, 29.253202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656063, 37.342075, 29.342611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253205, 0.042137, -0.966495,
		-0.611681, 0.780974, -0.126201,
		0.749489, 0.623141, 0.223521,
		32.880909, 37.529018, 29.409668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282200, 37.623161, 28.815599>,  <32.356266, 37.092819, 29.253202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282200, 37.623161, 28.815599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660553, 37.608021, 28.944511>,  <32.887566, 37.598938, 29.021858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660553, 37.608021, 28.944511>,  <32.282200, 37.623161, 28.815599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660553, 37.608021, 28.944511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318939, -0.074570, -0.944837,
		0.059795, 0.996497, -0.058463,
		0.945887, -0.037851, 0.322281,
		32.944321, 37.596664, 29.041195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630169, 38.159031, 28.560511>,  <32.282200, 37.623161, 28.815599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630169, 38.159031, 28.560511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933968, 37.913082, 28.645449>,  <33.116249, 37.765514, 28.696411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933968, 37.913082, 28.645449>,  <32.630169, 38.159031, 28.560511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933968, 37.913082, 28.645449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306117, 0.049802, -0.950690,
		0.573978, 0.787053, 0.226047,
		0.759501, -0.614872, 0.212345,
		33.161819, 37.728619, 28.709152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149559, 38.432526, 28.236115>,  <32.630169, 38.159031, 28.560511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149559, 38.432526, 28.236115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324760, 38.082447, 28.318264>,  <33.429882, 37.872398, 28.367554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324760, 38.082447, 28.318264>,  <33.149559, 38.432526, 28.236115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324760, 38.082447, 28.318264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510271, 0.053961, -0.858319,
		0.740117, 0.480746, 0.470223,
		0.438007, -0.875198, 0.205373,
		33.456161, 37.819889, 28.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867657, 38.523270, 28.050724>,  <33.149559, 38.432526, 28.236115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867657, 38.523270, 28.050724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760471, 38.138298, 28.068241>,  <33.696159, 37.907314, 28.078753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760471, 38.138298, 28.068241>,  <33.867657, 38.523270, 28.050724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760471, 38.138298, 28.068241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145174, -0.085274, -0.985725,
		0.952428, -0.257783, 0.162571,
		-0.267966, -0.962433, 0.043794,
		33.680080, 37.849567, 28.081379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330582, 38.216240, 27.603596>,  <33.867657, 38.523270, 28.050724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330582, 38.216240, 27.603596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053890, 37.929256, 27.636492>,  <33.887875, 37.757069, 27.656229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053890, 37.929256, 27.636492>,  <34.330582, 38.216240, 27.603596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053890, 37.929256, 27.636492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157279, -0.260823, -0.952489,
		0.704819, -0.645932, 0.293260,
		-0.691732, -0.717456, 0.082242,
		33.846371, 37.714020, 27.661165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623863, 37.557556, 27.361734>,  <34.330582, 38.216240, 27.603596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623863, 37.557556, 27.361734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229061, 37.515030, 27.313547>,  <33.992180, 37.489513, 27.284636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229061, 37.515030, 27.313547>,  <34.623863, 37.557556, 27.361734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229061, 37.515030, 27.313547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141680, -0.222284, -0.964633,
		0.075775, -0.969168, 0.234459,
		-0.987008, -0.106313, -0.120468,
		33.932961, 37.483135, 27.277407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197861, 37.291832, 27.127378>,  <34.623863, 37.557556, 27.361734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197861, 37.291832, 27.127378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514683, 37.441673, 26.934576>,  <35.704777, 37.531578, 26.818895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514683, 37.441673, 26.934576>,  <35.197861, 37.291832, 27.127378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514683, 37.441673, 26.934576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260511, 0.506659, 0.821846,
		0.552079, -0.776511, 0.303710,
		0.792050, 0.374605, -0.482005,
		35.752296, 37.554054, 26.789974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736237, 37.315922, 27.596792>,  <35.197861, 37.291832, 27.127378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736237, 37.315922, 27.596792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841106, 37.580059, 27.315308>,  <35.904026, 37.738541, 27.146418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841106, 37.580059, 27.315308>,  <35.736237, 37.315922, 27.596792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841106, 37.580059, 27.315308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320461, 0.628263, 0.708937,
		0.910259, -0.411374, -0.046903,
		0.262171, 0.660346, -0.703711,
		35.919758, 37.778164, 27.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355854, 37.637859, 27.807974>,  <35.736237, 37.315922, 27.596792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355854, 37.637859, 27.807974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239628, 37.899967, 27.529066>,  <36.169891, 38.057232, 27.361721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239628, 37.899967, 27.529066>,  <36.355854, 37.637859, 27.807974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239628, 37.899967, 27.529066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226171, 0.755096, 0.615367,
		0.929740, 0.021103, -0.367611,
		-0.290568, 0.655274, -0.697270,
		36.152458, 38.096550, 27.319885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851257, 38.170677, 27.826471>,  <36.355854, 37.637859, 27.807974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851257, 38.170677, 27.826471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526066, 38.328152, 27.654854>,  <36.330952, 38.422634, 27.551884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526066, 38.328152, 27.654854>,  <36.851257, 38.170677, 27.826471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526066, 38.328152, 27.654854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020105, 0.755357, 0.655005,
		0.581946, 0.523880, -0.622004,
		-0.812979, 0.393683, -0.429044,
		36.282173, 38.446259, 27.526140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005642, 38.885624, 27.723932>,  <36.851257, 38.170677, 27.826471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005642, 38.885624, 27.723932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607140, 38.852211, 27.732882>,  <36.368038, 38.832161, 27.738251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607140, 38.852211, 27.732882>,  <37.005642, 38.885624, 27.723932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607140, 38.852211, 27.732882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039737, 0.671987, 0.739496,
		-0.076810, 0.735836, -0.672789,
		-0.996254, -0.083536, 0.022376,
		36.308262, 38.827148, 27.739594>
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
