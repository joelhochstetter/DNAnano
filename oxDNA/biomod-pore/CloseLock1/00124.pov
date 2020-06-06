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
	<24.647287, 34.993492, 34.934368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252457, 35.006531, 34.997131>,  <24.015558, 35.014355, 35.034790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252457, 35.006531, 34.997131>,  <24.647287, 34.993492, 34.934368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252457, 35.006531, 34.997131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057790, -0.840809, 0.538239,
		0.149475, 0.540350, 0.828057,
		-0.987075, 0.032600, 0.156907,
		23.956333, 35.016312, 35.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544415, 35.035343, 35.677860>,  <24.647287, 34.993492, 34.934368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544415, 35.035343, 35.677860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295273, 34.826191, 35.445084>,  <24.145788, 34.700699, 35.305420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295273, 34.826191, 35.445084>,  <24.544415, 35.035343, 35.677860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295273, 34.826191, 35.445084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344894, -0.851179, 0.395654,
		-0.702213, 0.045727, 0.710497,
		-0.622852, -0.522880, -0.581938,
		24.108418, 34.669327, 35.270504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081951, 34.675919, 36.019146>,  <24.544415, 35.035343, 35.677860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081951, 34.675919, 36.019146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.135571, 34.476192, 35.676750>,  <24.167742, 34.356358, 35.471313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.135571, 34.476192, 35.676750>,  <24.081951, 34.675919, 36.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.135571, 34.476192, 35.676750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528841, -0.694459, 0.487907,
		-0.838068, -0.518086, 0.170965,
		0.134050, -0.499313, -0.855989,
		24.175785, 34.326397, 35.419952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900949, 34.814468, 36.251537>,  <24.081951, 34.675919, 36.019146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900949, 34.814468, 36.251537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049860, 34.929722, 35.898632>,  <25.139206, 34.998875, 35.686890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049860, 34.929722, 35.898632>,  <24.900949, 34.814468, 36.251537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049860, 34.929722, 35.898632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571478, 0.677857, 0.462518,
		0.731318, -0.676377, 0.087685,
		0.372274, 0.288137, -0.882263,
		25.161543, 35.016163, 35.633953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647442, 34.598335, 36.149261>,  <24.900949, 34.814468, 36.251537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647442, 34.598335, 36.149261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546240, 34.937283, 35.962517>,  <25.485519, 35.140652, 35.850471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546240, 34.937283, 35.962517>,  <25.647442, 34.598335, 36.149261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546240, 34.937283, 35.962517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793293, 0.457921, 0.401241,
		0.553783, -0.268841, -0.788067,
		-0.253003, 0.847368, -0.466859,
		25.470339, 35.191494, 35.822460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060131, 35.190018, 36.148235>,  <25.647442, 34.598335, 36.149261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060131, 35.190018, 36.148235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995848, 35.182449, 36.542965>,  <25.957277, 35.177906, 36.779800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995848, 35.182449, 36.542965>,  <26.060131, 35.190018, 36.148235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995848, 35.182449, 36.542965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470076, -0.880607, 0.059667,
		0.867871, 0.473470, 0.150418,
		-0.160710, -0.018924, 0.986820,
		25.947636, 35.176773, 36.839012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733143, 35.790550, 36.080593>,  <26.060131, 35.190018, 36.148235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733143, 35.790550, 36.080593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814096, 36.173103, 36.164848>,  <26.862669, 36.402637, 36.215401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814096, 36.173103, 36.164848>,  <26.733143, 35.790550, 36.080593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814096, 36.173103, 36.164848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947069, -0.136412, -0.290605,
		-0.249198, 0.258300, -0.933371,
		0.202386, 0.956385, 0.210635,
		26.874813, 36.460018, 36.228039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235577, 35.677654, 35.666237>,  <26.733143, 35.790550, 36.080593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235577, 35.677654, 35.666237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554325, 35.692047, 35.425007>,  <27.745573, 35.700684, 35.280270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554325, 35.692047, 35.425007>,  <27.235577, 35.677654, 35.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554325, 35.692047, 35.425007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556404, 0.432650, -0.709387,
		0.235399, 0.900844, 0.364784,
		0.796870, 0.035978, -0.603078,
		27.793386, 35.702839, 35.244083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283329, 36.365139, 35.380081>,  <27.235577, 35.677654, 35.666237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283329, 36.365139, 35.380081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489090, 36.149891, 35.113003>,  <27.612547, 36.020741, 34.952755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489090, 36.149891, 35.113003>,  <27.283329, 36.365139, 35.380081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489090, 36.149891, 35.113003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596926, 0.334314, -0.729324,
		0.615685, 0.773730, -0.149247,
		0.514404, -0.538123, -0.667692,
		27.643412, 35.988453, 34.912697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270014, 36.781921, 34.871273>,  <27.283329, 36.365139, 35.380081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270014, 36.781921, 34.871273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374767, 36.427540, 34.718174>,  <27.437620, 36.214909, 34.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374767, 36.427540, 34.718174>,  <27.270014, 36.781921, 34.871273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374767, 36.427540, 34.718174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535072, 0.196771, -0.821571,
		0.803190, 0.419957, -0.422519,
		0.261885, -0.885956, -0.382752,
		27.453333, 36.161755, 34.603348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433434, 37.008419, 34.164852>,  <27.270014, 36.781921, 34.871273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433434, 37.008419, 34.164852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392958, 36.612244, 34.202362>,  <27.368671, 36.374538, 34.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392958, 36.612244, 34.202362>,  <27.433434, 37.008419, 34.164852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392958, 36.612244, 34.202362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512410, -0.028906, -0.858254,
		0.852758, -0.134898, -0.504586,
		-0.101191, -0.990438, 0.093772,
		27.362600, 36.315113, 34.230495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670567, 36.674015, 33.558651>,  <27.433434, 37.008419, 34.164852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670567, 36.674015, 33.558651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420732, 36.407780, 33.722057>,  <27.270832, 36.248039, 33.820099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420732, 36.407780, 33.722057>,  <27.670567, 36.674015, 33.558651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420732, 36.407780, 33.722057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456218, -0.113587, -0.882589,
		0.633845, -0.737622, -0.232710,
		-0.624584, -0.665591, 0.408513,
		27.233356, 36.208103, 33.844612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648630, 36.252079, 33.036995>,  <27.670567, 36.674015, 33.558651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648630, 36.252079, 33.036995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338446, 36.153713, 33.269611>,  <27.152336, 36.094692, 33.409180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338446, 36.153713, 33.269611>,  <27.648630, 36.252079, 33.036995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338446, 36.153713, 33.269611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524156, -0.262780, -0.810066,
		0.352026, -0.932990, 0.074877,
		-0.775460, -0.245917, 0.581538,
		27.105808, 36.079937, 33.444073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344067, 35.675728, 32.822094>,  <27.648630, 36.252079, 33.036995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344067, 35.675728, 32.822094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044062, 35.846035, 33.024563>,  <26.864059, 35.948219, 33.146042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044062, 35.846035, 33.024563>,  <27.344067, 35.675728, 32.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044062, 35.846035, 33.024563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600446, -0.117327, -0.791012,
		-0.277399, -0.897194, 0.343646,
		-0.750010, 0.425767, 0.506170,
		26.819059, 35.973766, 33.176414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744741, 35.223305, 32.724670>,  <27.344067, 35.675728, 32.822094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744741, 35.223305, 32.724670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611582, 35.587349, 32.823368>,  <26.531687, 35.805775, 32.882587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611582, 35.587349, 32.823368>,  <26.744741, 35.223305, 32.724670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611582, 35.587349, 32.823368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740504, -0.090314, -0.665955,
		-0.583808, -0.404409, 0.704005,
		-0.332899, 0.910108, 0.246740,
		26.511711, 35.860382, 32.897388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002359, 35.202675, 32.608391>,  <26.744741, 35.223305, 32.724670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002359, 35.202675, 32.608391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099892, 35.589066, 32.642872>,  <26.158411, 35.820900, 32.663563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099892, 35.589066, 32.642872>,  <26.002359, 35.202675, 32.608391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099892, 35.589066, 32.642872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561462, 0.213080, -0.799598,
		-0.790763, 0.146566, 0.594316,
		0.243831, 0.965979, 0.086204,
		26.173040, 35.878860, 32.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439993, 35.434093, 32.456886>,  <26.002359, 35.202675, 32.608391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439993, 35.434093, 32.456886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678003, 35.752079, 32.409584>,  <25.820808, 35.942871, 32.381203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678003, 35.752079, 32.409584>,  <25.439993, 35.434093, 32.456886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678003, 35.752079, 32.409584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352866, 0.126201, -0.927124,
		-0.722103, 0.593390, 0.355607,
		0.595024, 0.794960, -0.118257,
		25.856510, 35.990566, 32.374107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062279, 35.960819, 32.107758>,  <25.439993, 35.434093, 32.456886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062279, 35.960819, 32.107758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435873, 36.067970, 32.013172>,  <25.660028, 36.132263, 31.956421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435873, 36.067970, 32.013172>,  <25.062279, 35.960819, 32.107758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435873, 36.067970, 32.013172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280617, 0.140233, -0.949520,
		-0.221200, 0.953191, 0.206148,
		0.933983, 0.267882, -0.236462,
		25.716068, 36.148335, 31.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105679, 36.478821, 31.538210>,  <25.062279, 35.960819, 32.107758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105679, 36.478821, 31.538210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483337, 36.347286, 31.529745>,  <25.709934, 36.268364, 31.524666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483337, 36.347286, 31.529745>,  <25.105679, 36.478821, 31.538210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483337, 36.347286, 31.529745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028734, -0.018181, -0.999422,
		0.328262, 0.944212, -0.026614,
		0.944149, -0.328837, -0.021163,
		25.766582, 36.248634, 31.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412205, 36.876118, 31.070551>,  <25.105679, 36.478821, 31.538210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412205, 36.876118, 31.070551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620724, 36.536930, 31.108902>,  <25.745836, 36.333416, 31.131912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620724, 36.536930, 31.108902>,  <25.412205, 36.876118, 31.070551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620724, 36.536930, 31.108902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068454, -0.153540, -0.985768,
		0.850624, 0.507318, -0.138087,
		0.521300, -0.847971, 0.095877,
		25.777113, 36.282539, 31.137665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791992, 36.926247, 30.489883>,  <25.412205, 36.876118, 31.070551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791992, 36.926247, 30.489883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909983, 36.558437, 30.593782>,  <25.980776, 36.337753, 30.656122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909983, 36.558437, 30.593782>,  <25.791992, 36.926247, 30.489883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909983, 36.558437, 30.593782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176065, -0.214884, -0.960638,
		0.939144, 0.329097, 0.098510,
		0.294974, -0.919522, 0.259750,
		25.998474, 36.282581, 30.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478426, 36.770260, 30.167301>,  <25.791992, 36.926247, 30.489883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478426, 36.770260, 30.167301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330009, 36.404007, 30.229200>,  <26.240959, 36.184254, 30.266340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330009, 36.404007, 30.229200>,  <26.478426, 36.770260, 30.167301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330009, 36.404007, 30.229200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093226, -0.202528, -0.974829,
		0.923924, -0.347277, 0.160507,
		-0.371043, -0.915631, 0.154746,
		26.218697, 36.129318, 30.275623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042580, 36.313633, 29.952400>,  <26.478426, 36.770260, 30.167301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042580, 36.313633, 29.952400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680721, 36.145027, 29.927282>,  <26.463606, 36.043865, 29.912212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680721, 36.145027, 29.927282>,  <27.042580, 36.313633, 29.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680721, 36.145027, 29.927282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254419, -0.415966, -0.873065,
		0.341890, -0.805790, 0.483543,
		-0.904645, -0.421514, -0.062793,
		26.409328, 36.018574, 29.908443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284124, 35.669651, 29.852295>,  <27.042580, 36.313633, 29.952400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284124, 35.669651, 29.852295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899450, 35.715332, 29.752600>,  <26.668646, 35.742741, 29.692783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899450, 35.715332, 29.752600>,  <27.284124, 35.669651, 29.852295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899450, 35.715332, 29.752600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159364, -0.506866, -0.847166,
		-0.223081, -0.854426, 0.469245,
		-0.961685, 0.114206, -0.249237,
		26.610945, 35.749596, 29.677828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033489, 35.029823, 29.522390>,  <27.284124, 35.669651, 29.852295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033489, 35.029823, 29.522390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770214, 35.310383, 29.412968>,  <26.612249, 35.478718, 29.347315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770214, 35.310383, 29.412968>,  <27.033489, 35.029823, 29.522390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770214, 35.310383, 29.412968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224817, -0.163665, -0.960558,
		-0.718505, -0.693725, -0.049965,
		-0.658185, 0.701398, -0.273555,
		26.572758, 35.520802, 29.330902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502945, 34.798931, 28.956081>,  <27.033489, 35.029823, 29.522390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502945, 34.798931, 28.956081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568558, 35.193295, 28.942991>,  <26.607925, 35.429913, 28.935137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568558, 35.193295, 28.942991>,  <26.502945, 34.798931, 28.956081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568558, 35.193295, 28.942991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019090, -0.029995, -0.999368,
		-0.986270, 0.164551, 0.013901,
		0.164030, 0.985912, -0.032724,
		26.617767, 35.489067, 28.933174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874868, 35.302750, 28.724081>,  <26.502945, 34.798931, 28.956081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874868, 35.302750, 28.724081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254719, 35.388893, 28.633017>,  <26.482630, 35.440578, 28.578379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254719, 35.388893, 28.633017>,  <25.874868, 35.302750, 28.724081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254719, 35.388893, 28.633017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184973, -0.201222, -0.961922,
		-0.252972, 0.955578, -0.151250,
		0.949626, 0.215362, -0.227660,
		26.539606, 35.453503, 28.564718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881638, 35.909210, 28.169405>,  <25.874868, 35.302750, 28.724081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881638, 35.909210, 28.169405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198658, 35.665585, 28.181446>,  <26.388870, 35.519409, 28.188671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198658, 35.665585, 28.181446>,  <25.881638, 35.909210, 28.169405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198658, 35.665585, 28.181446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076266, -0.147979, -0.986046,
		0.605016, 0.779197, -0.163732,
		0.792552, -0.609061, 0.030104,
		26.436424, 35.482868, 28.190477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584688, 36.205791, 27.932789>,  <25.881638, 35.909210, 28.169405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584688, 36.205791, 27.932789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491570, 35.823563, 27.860462>,  <26.435699, 35.594227, 27.817066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491570, 35.823563, 27.860462>,  <26.584688, 36.205791, 27.932789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491570, 35.823563, 27.860462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053908, 0.198320, -0.978654,
		0.971030, -0.218079, -0.097681,
		-0.232795, -0.955568, -0.180819,
		26.421730, 35.536892, 27.806217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058504, 35.885693, 27.546125>,  <26.584688, 36.205791, 27.932789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058504, 35.885693, 27.546125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712654, 35.700077, 27.469091>,  <26.505144, 35.588707, 27.422871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712654, 35.700077, 27.469091>,  <27.058504, 35.885693, 27.546125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712654, 35.700077, 27.469091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084163, 0.244123, -0.966085,
		0.495315, -0.851512, -0.172020,
		-0.864627, -0.464039, -0.192583,
		26.453266, 35.560867, 27.411316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133635, 35.405197, 27.066957>,  <27.058504, 35.885693, 27.546125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133635, 35.405197, 27.066957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749348, 35.512344, 27.037922>,  <26.518776, 35.576633, 27.020500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749348, 35.512344, 27.037922>,  <27.133635, 35.405197, 27.066957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749348, 35.512344, 27.037922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129761, 0.202348, -0.970679,
		-0.245322, -0.941968, -0.229158,
		-0.960718, 0.267864, -0.072591,
		26.461132, 35.592705, 27.016144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983053, 34.986465, 26.520891>,  <27.133635, 35.405197, 27.066957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983053, 34.986465, 26.520891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733707, 35.297993, 26.548765>,  <26.584101, 35.484909, 26.565491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733707, 35.297993, 26.548765>,  <26.983053, 34.986465, 26.520891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733707, 35.297993, 26.548765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296542, 0.317928, -0.900547,
		-0.723521, -0.540702, -0.429137,
		-0.623362, 0.778822, 0.069687,
		26.546700, 35.531639, 26.569672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448277, 35.121555, 25.951010>,  <26.983053, 34.986465, 26.520891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448277, 35.121555, 25.951010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584978, 35.454311, 26.125898>,  <26.667000, 35.653965, 26.230831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584978, 35.454311, 26.125898>,  <26.448277, 35.121555, 25.951010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584978, 35.454311, 26.125898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449758, 0.263722, -0.853328,
		-0.825179, 0.488274, -0.284020,
		0.341756, 0.831889, 0.437223,
		26.687506, 35.703876, 26.257065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190502, 35.682766, 25.490185>,  <26.448277, 35.121555, 25.951010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190502, 35.682766, 25.490185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370850, 35.622757, 25.138227>,  <26.479057, 35.586750, 24.927053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370850, 35.622757, 25.138227>,  <26.190502, 35.682766, 25.490185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370850, 35.622757, 25.138227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590119, 0.789698, 0.167737,
		0.669685, -0.594869, 0.444582,
		0.450867, -0.150025, -0.879893,
		26.506109, 35.577751, 24.874260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853319, 35.876385, 25.705303>,  <26.190502, 35.682766, 25.490185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853319, 35.876385, 25.705303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743509, 35.940323, 25.326023>,  <26.677624, 35.978687, 25.098455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743509, 35.940323, 25.326023>,  <26.853319, 35.876385, 25.705303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743509, 35.940323, 25.326023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468144, 0.883551, 0.013412,
		0.839927, -0.440212, -0.317390,
		-0.274526, 0.159849, -0.948200,
		26.661152, 35.988277, 25.041563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507856, 35.510319, 26.002300>,  <26.853319, 35.876385, 25.705303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507856, 35.510319, 26.002300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842890, 35.666492, 25.849451>,  <28.043909, 35.760197, 25.757742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842890, 35.666492, 25.849451>,  <27.507856, 35.510319, 26.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842890, 35.666492, 25.849451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491099, -0.231681, 0.839730,
		0.239329, -0.891002, -0.385793,
		0.837582, 0.390435, -0.382122,
		28.094164, 35.783623, 25.734814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055874, 35.024513, 26.034994>,  <27.507856, 35.510319, 26.002300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055874, 35.024513, 26.034994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203590, 35.396065, 26.046396>,  <28.292219, 35.618996, 26.053238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203590, 35.396065, 26.046396>,  <28.055874, 35.024513, 26.034994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203590, 35.396065, 26.046396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667916, -0.286618, 0.686832,
		0.646153, -0.234600, -0.726257,
		0.369289, 0.928877, 0.028506,
		28.314377, 35.674728, 26.054949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875059, 34.994621, 25.986879>,  <28.055874, 35.024513, 26.034994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875059, 34.994621, 25.986879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758320, 35.337086, 26.157436>,  <28.688276, 35.542564, 26.259771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758320, 35.337086, 26.157436>,  <28.875059, 34.994621, 25.986879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758320, 35.337086, 26.157436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576115, -0.198502, 0.792899,
		0.763490, 0.477057, -0.435316,
		-0.291847, 0.856162, 0.426394,
		28.670765, 35.593933, 26.285355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479713, 35.294735, 26.199776>,  <28.875059, 34.994621, 25.986879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479713, 35.294735, 26.199776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192074, 35.472458, 26.413498>,  <29.019489, 35.579094, 26.541731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192074, 35.472458, 26.413498>,  <29.479713, 35.294735, 26.199776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192074, 35.472458, 26.413498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598300, 0.004778, 0.801258,
		0.353455, 0.895860, -0.269268,
		-0.719101, 0.444311, 0.534304,
		28.976343, 35.605751, 26.573790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795652, 35.963745, 26.462700>,  <29.479713, 35.294735, 26.199776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795652, 35.963745, 26.462700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492235, 35.829269, 26.685980>,  <29.310184, 35.748585, 26.819948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492235, 35.829269, 26.685980>,  <29.795652, 35.963745, 26.462700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492235, 35.829269, 26.685980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540453, 0.153980, 0.827164,
		-0.364038, 0.929120, 0.064896,
		-0.758542, -0.336193, 0.558200,
		29.264673, 35.728413, 26.853439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818275, 36.385578, 27.103033>,  <29.795652, 35.963745, 26.462700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818275, 36.385578, 27.103033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599749, 36.058052, 27.173548>,  <29.468632, 35.861538, 27.215857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599749, 36.058052, 27.173548>,  <29.818275, 36.385578, 27.103033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599749, 36.058052, 27.173548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291204, 0.011654, 0.956590,
		-0.785325, 0.573939, 0.232076,
		-0.546319, -0.818815, 0.176285,
		29.435852, 35.812408, 27.226433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694605, 36.516788, 27.772394>,  <29.818275, 36.385578, 27.103033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694605, 36.516788, 27.772394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572582, 36.137836, 27.733606>,  <29.499369, 35.910465, 27.710333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572582, 36.137836, 27.733606>,  <29.694605, 36.516788, 27.772394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572582, 36.137836, 27.733606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324223, -0.199058, 0.924800,
		-0.895444, 0.250675, 0.367887,
		-0.305056, -0.947385, -0.096971,
		29.481066, 35.853622, 27.704515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189779, 36.436279, 28.350681>,  <29.694605, 36.516788, 27.772394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189779, 36.436279, 28.350681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350405, 36.087914, 28.237370>,  <29.446779, 35.878895, 28.169382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350405, 36.087914, 28.237370>,  <29.189779, 36.436279, 28.350681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350405, 36.087914, 28.237370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290366, -0.172284, 0.941279,
		-0.868582, -0.460238, 0.183702,
		0.401564, -0.870918, -0.283280,
		29.470875, 35.826637, 28.152386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066887, 36.067379, 28.882963>,  <29.189779, 36.436279, 28.350681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066887, 36.067379, 28.882963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335541, 35.832485, 28.702271>,  <29.496733, 35.691547, 28.593855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335541, 35.832485, 28.702271>,  <29.066887, 36.067379, 28.882963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335541, 35.832485, 28.702271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428491, -0.189519, 0.883446,
		-0.604402, -0.786917, 0.124337,
		0.671635, -0.587234, -0.451733,
		29.537031, 35.656315, 28.566751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142582, 35.413055, 29.265079>,  <29.066887, 36.067379, 28.882963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142582, 35.413055, 29.265079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472580, 35.474586, 29.047560>,  <29.670578, 35.511505, 28.917048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472580, 35.474586, 29.047560>,  <29.142582, 35.413055, 29.265079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472580, 35.474586, 29.047560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556907, -0.057641, 0.828573,
		0.096110, -0.986415, -0.133220,
		0.824996, 0.153825, -0.543801,
		29.720079, 35.520733, 28.884418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605461, 34.833103, 29.380692>,  <29.142582, 35.413055, 29.265079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605461, 34.833103, 29.380692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817984, 35.136684, 29.230116>,  <29.945498, 35.318832, 29.139771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817984, 35.136684, 29.230116>,  <29.605461, 34.833103, 29.380692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817984, 35.136684, 29.230116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574477, 0.003818, 0.818512,
		0.622647, -0.651137, -0.433971,
		0.531307, 0.758950, -0.376441,
		29.977375, 35.364368, 29.117184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312147, 34.654427, 29.417471>,  <29.605461, 34.833103, 29.380692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312147, 34.654427, 29.417471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317894, 35.054386, 29.417604>,  <30.321342, 35.294361, 29.417685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317894, 35.054386, 29.417604>,  <30.312147, 34.654427, 29.417471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317894, 35.054386, 29.417604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577872, -0.008574, 0.816083,
		0.816001, -0.011533, -0.577935,
		0.014367, 0.999897, 0.000332,
		30.322205, 35.354355, 29.417704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019627, 34.794350, 29.484972>,  <30.312147, 34.654427, 29.417471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019627, 34.794350, 29.484972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798658, 35.107983, 29.598146>,  <30.666077, 35.296162, 29.666052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798658, 35.107983, 29.598146>,  <31.019627, 34.794350, 29.484972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798658, 35.107983, 29.598146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561945, 0.099601, 0.821156,
		0.615669, 0.612619, -0.495630,
		-0.552421, 0.784078, 0.282937,
		30.632933, 35.343204, 29.683027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470360, 35.051456, 29.946993>,  <31.019627, 34.794350, 29.484972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470360, 35.051456, 29.946993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136992, 35.253864, 30.035852>,  <30.936970, 35.375309, 30.089169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136992, 35.253864, 30.035852>,  <31.470360, 35.051456, 29.946993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136992, 35.253864, 30.035852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252309, -0.009234, 0.967603,
		0.491680, 0.862471, -0.119978,
		-0.833421, 0.506023, 0.222149,
		30.886965, 35.405670, 30.102497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724955, 35.620342, 30.507408>,  <31.470360, 35.051456, 29.946993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724955, 35.620342, 30.507408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329832, 35.565544, 30.536983>,  <31.092758, 35.532665, 30.554729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329832, 35.565544, 30.536983>,  <31.724955, 35.620342, 30.507408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329832, 35.565544, 30.536983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077345, -0.019689, 0.996810,
		-0.135101, 0.990376, 0.030045,
		-0.987808, -0.136994, 0.073941,
		31.033489, 35.524445, 30.559166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578211, 35.986507, 31.138466>,  <31.724955, 35.620342, 30.507408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578211, 35.986507, 31.138466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235607, 35.788643, 31.079546>,  <31.030045, 35.669922, 31.044193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235607, 35.788643, 31.079546>,  <31.578211, 35.986507, 31.138466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235607, 35.788643, 31.079546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201063, 0.056936, 0.977922,
		-0.475356, 0.867218, -0.148225,
		-0.856511, -0.494663, -0.147300,
		30.978653, 35.640244, 31.035357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970066, 36.389256, 31.443199>,  <31.578211, 35.986507, 31.138466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970066, 36.389256, 31.443199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849535, 36.007851, 31.441183>,  <30.777216, 35.779007, 31.439974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849535, 36.007851, 31.441183>,  <30.970066, 36.389256, 31.443199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849535, 36.007851, 31.441183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348433, 0.105188, 0.931413,
		-0.887579, 0.282416, -0.363929,
		-0.301327, -0.953508, -0.005041,
		30.759136, 35.721798, 31.439671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345665, 36.438908, 31.661306>,  <30.970066, 36.389256, 31.443199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345665, 36.438908, 31.661306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460518, 36.062408, 31.732416>,  <30.529430, 35.836510, 31.775082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460518, 36.062408, 31.732416>,  <30.345665, 36.438908, 31.661306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460518, 36.062408, 31.732416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257210, 0.103012, 0.960849,
		-0.922712, -0.321618, -0.212520,
		0.287134, -0.941250, 0.177774,
		30.546658, 35.780033, 31.785748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753016, 36.080631, 31.976667>,  <30.345665, 36.438908, 31.661306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753016, 36.080631, 31.976667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072876, 35.856651, 32.063400>,  <30.264791, 35.722263, 32.115440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072876, 35.856651, 32.063400>,  <29.753016, 36.080631, 31.976667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072876, 35.856651, 32.063400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295669, -0.052883, 0.953825,
		-0.522626, -0.826838, -0.207848,
		0.799651, -0.559948, 0.216832,
		30.312771, 35.688667, 32.128448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522341, 35.425808, 32.234844>,  <29.753016, 36.080631, 31.976667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522341, 35.425808, 32.234844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884569, 35.521080, 32.375252>,  <30.101906, 35.578243, 32.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884569, 35.521080, 32.375252>,  <29.522341, 35.425808, 32.234844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884569, 35.521080, 32.375252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344843, -0.068566, 0.936153,
		0.247038, -0.968798, 0.020042,
		0.905569, 0.238177, 0.351022,
		30.156240, 35.592533, 32.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623861, 34.902493, 32.795685>,  <29.522341, 35.425808, 32.234844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623861, 34.902493, 32.795685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911121, 35.168495, 32.877693>,  <30.083477, 35.328094, 32.926899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911121, 35.168495, 32.877693>,  <29.623861, 34.902493, 32.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911121, 35.168495, 32.877693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130796, -0.160372, 0.978352,
		0.683487, -0.729419, -0.028191,
		0.718149, 0.665003, 0.205018,
		30.126566, 35.367996, 32.939198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207846, 34.551311, 33.234283>,  <29.623861, 34.902493, 32.795685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207846, 34.551311, 33.234283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182171, 34.946159, 33.292889>,  <30.166767, 35.183067, 33.328053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182171, 34.946159, 33.292889>,  <30.207846, 34.551311, 33.234283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182171, 34.946159, 33.292889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061149, -0.150430, 0.986728,
		0.996063, 0.054375, 0.070017,
		-0.064186, 0.987124, 0.146513,
		30.162914, 35.242298, 33.336842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521242, 34.644848, 33.883282>,  <30.207846, 34.551311, 33.234283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521242, 34.644848, 33.883282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340721, 34.997780, 33.829884>,  <30.232409, 35.209538, 33.797844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340721, 34.997780, 33.829884>,  <30.521242, 34.644848, 33.883282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340721, 34.997780, 33.829884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062232, 0.118111, 0.991048,
		0.890198, 0.455571, 0.001605,
		-0.451303, 0.882329, -0.133493,
		30.205330, 35.262478, 33.789837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836662, 35.166191, 34.405888>,  <30.521242, 34.644848, 33.883282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836662, 35.166191, 34.405888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469627, 35.284981, 34.300175>,  <30.249407, 35.356255, 34.236748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469627, 35.284981, 34.300175>,  <30.836662, 35.166191, 34.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469627, 35.284981, 34.300175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212513, 0.195395, 0.957423,
		0.335970, 0.934680, -0.116181,
		-0.917585, 0.296976, -0.264279,
		30.194351, 35.374073, 34.220890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765165, 35.882133, 34.454525>,  <30.836662, 35.166191, 34.405888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765165, 35.882133, 34.454525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437334, 35.673599, 34.549606>,  <30.240635, 35.548477, 34.606655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437334, 35.673599, 34.549606>,  <30.765165, 35.882133, 34.454525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437334, 35.673599, 34.549606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156053, 0.196070, 0.968093,
		-0.551308, 0.830521, -0.079338,
		-0.819577, -0.521336, 0.237700,
		30.191462, 35.517197, 34.620914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319017, 36.357716, 34.918388>,  <30.765165, 35.882133, 34.454525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319017, 36.357716, 34.918388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253107, 35.969810, 34.990391>,  <30.213560, 35.737068, 35.033592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253107, 35.969810, 34.990391>,  <30.319017, 36.357716, 34.918388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253107, 35.969810, 34.990391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046424, 0.189926, 0.980700,
		-0.985238, 0.153240, -0.076315,
		-0.164776, -0.969766, 0.180008,
		30.203674, 35.678879, 35.044392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679775, 36.209656, 35.293236>,  <30.319017, 36.357716, 34.918388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679775, 36.209656, 35.293236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941437, 35.916519, 35.368092>,  <30.098434, 35.740635, 35.413006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941437, 35.916519, 35.368092>,  <29.679775, 36.209656, 35.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941437, 35.916519, 35.368092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230052, 0.042919, 0.972232,
		-0.720527, -0.679040, -0.140517,
		0.654153, -0.732846, 0.187139,
		30.137682, 35.696667, 35.424232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353367, 35.669838, 35.587559>,  <29.679775, 36.209656, 35.293236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353367, 35.669838, 35.587559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730921, 35.672695, 35.719635>,  <29.957453, 35.674412, 35.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730921, 35.672695, 35.719635>,  <29.353367, 35.669838, 35.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730921, 35.672695, 35.719635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329905, 0.067358, 0.941608,
		-0.015515, -0.997703, 0.065935,
		0.943886, 0.007144, 0.330192,
		30.014088, 35.674839, 35.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342522, 35.767868, 36.268291>,  <29.353367, 35.669838, 35.587559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342522, 35.767868, 36.268291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737942, 35.716385, 36.236797>,  <29.975195, 35.685493, 36.217899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737942, 35.716385, 36.236797>,  <29.342522, 35.767868, 36.268291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737942, 35.716385, 36.236797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104529, 0.207865, 0.972556,
		-0.108812, -0.969652, 0.218940,
		0.988551, -0.128711, -0.078738,
		30.034508, 35.677773, 36.213177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469984, 35.520412, 36.874249>,  <29.342522, 35.767868, 36.268291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469984, 35.520412, 36.874249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824448, 35.644188, 36.736279>,  <30.037127, 35.718452, 36.653496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824448, 35.644188, 36.736279>,  <29.469984, 35.520412, 36.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824448, 35.644188, 36.736279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315003, 0.143639, 0.938158,
		0.339847, -0.940008, 0.029813,
		0.886159, 0.309439, -0.344921,
		30.090296, 35.737019, 36.632801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839006, 35.244915, 37.409698>,  <29.469984, 35.520412, 36.874249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839006, 35.244915, 37.409698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070877, 35.522240, 37.238449>,  <30.209999, 35.688637, 37.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070877, 35.522240, 37.238449>,  <29.839006, 35.244915, 37.409698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070877, 35.522240, 37.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451714, 0.163865, 0.876985,
		0.678180, -0.701758, -0.218190,
		0.579677, 0.693313, -0.428124,
		30.244780, 35.730232, 37.110012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481586, 35.019314, 37.540234>,  <29.839006, 35.244915, 37.409698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481586, 35.019314, 37.540234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543589, 35.411995, 37.495987>,  <30.580790, 35.647602, 37.469440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543589, 35.411995, 37.495987>,  <30.481586, 35.019314, 37.540234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543589, 35.411995, 37.495987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758898, -0.046638, 0.649537,
		0.632493, -0.184625, -0.752241,
		0.155004, 0.981702, -0.110614,
		30.590090, 35.706505, 37.462803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164726, 35.171120, 37.713879>,  <30.481586, 35.019314, 37.540234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164726, 35.171120, 37.713879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994675, 35.532040, 37.742477>,  <30.892643, 35.748592, 37.759636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994675, 35.532040, 37.742477>,  <31.164726, 35.171120, 37.713879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994675, 35.532040, 37.742477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508117, 0.172536, 0.843830,
		0.749055, 0.395067, -0.531827,
		-0.425128, 0.902305, 0.071501,
		30.867136, 35.802731, 37.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653334, 35.625404, 37.814270>,  <31.164726, 35.171120, 37.713879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653334, 35.625404, 37.814270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331341, 35.811172, 37.961956>,  <31.138145, 35.922634, 38.050568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331341, 35.811172, 37.961956>,  <31.653334, 35.625404, 37.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331341, 35.811172, 37.961956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508279, 0.218837, 0.832924,
		0.306027, 0.858154, -0.412214,
		-0.804985, 0.464417, 0.369211,
		31.089846, 35.950497, 38.072720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035999, 36.124928, 38.301811>,  <31.653334, 35.625404, 37.814270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035999, 36.124928, 38.301811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650343, 36.166142, 38.399639>,  <31.418949, 36.190868, 38.458336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650343, 36.166142, 38.399639>,  <32.035999, 36.124928, 38.301811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650343, 36.166142, 38.399639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264248, 0.287350, 0.920653,
		0.024578, 0.952268, -0.304272,
		-0.964141, 0.103032, 0.244573,
		31.361101, 36.197052, 38.473011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983509, 36.791618, 38.603352>,  <32.035999, 36.124928, 38.301811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983509, 36.791618, 38.603352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664948, 36.590733, 38.738121>,  <31.473810, 36.470200, 38.818985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664948, 36.590733, 38.738121>,  <31.983509, 36.791618, 38.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664948, 36.590733, 38.738121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312854, 0.134651, 0.940208,
		-0.517556, 0.854194, 0.049885,
		-0.796403, -0.502217, 0.336927,
		31.426027, 36.440067, 38.839199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673727, 37.257290, 39.167229>,  <31.983509, 36.791618, 38.603352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673727, 37.257290, 39.167229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514475, 36.898594, 39.244534>,  <31.418924, 36.683376, 39.290916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514475, 36.898594, 39.244534>,  <31.673727, 37.257290, 39.167229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514475, 36.898594, 39.244534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100992, 0.166549, 0.980847,
		-0.911753, 0.410022, 0.024255,
		-0.398130, -0.896740, 0.193261,
		31.395037, 36.629570, 39.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121174, 37.386715, 39.723042>,  <31.673727, 37.257290, 39.167229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121174, 37.386715, 39.723042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223848, 37.000164, 39.717049>,  <31.285454, 36.768234, 39.713451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223848, 37.000164, 39.717049>,  <31.121174, 37.386715, 39.723042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223848, 37.000164, 39.717049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, 0.017116, 0.992337,
		-0.958717, -0.256554, 0.122648,
		0.256687, -0.966378, -0.014985,
		31.300854, 36.710251, 39.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840509, 37.257587, 40.376484>,  <31.121174, 37.386715, 39.723042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840509, 37.257587, 40.376484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130493, 36.995045, 40.292931>,  <31.304483, 36.837521, 40.242798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130493, 36.995045, 40.292931>,  <30.840509, 37.257587, 40.376484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130493, 36.995045, 40.292931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271406, -0.006520, 0.962443,
		-0.633067, -0.754423, 0.173412,
		0.724959, -0.656356, -0.208882,
		31.347980, 36.798138, 40.230267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882675, 36.894257, 41.031940>,  <30.840509, 37.257587, 40.376484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882675, 36.894257, 41.031940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212299, 36.775196, 40.839138>,  <31.410074, 36.703758, 40.723457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212299, 36.775196, 40.839138>,  <30.882675, 36.894257, 41.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212299, 36.775196, 40.839138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453248, -0.164000, 0.876168,
		-0.339844, -0.940482, -0.000235,
		0.824059, -0.297654, -0.482006,
		31.459517, 36.685902, 40.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161812, 36.221642, 41.323780>,  <30.882675, 36.894257, 41.031940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161812, 36.221642, 41.323780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498192, 36.387569, 41.184799>,  <31.700020, 36.487125, 41.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498192, 36.387569, 41.184799>,  <31.161812, 36.221642, 41.323780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498192, 36.387569, 41.184799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437204, -0.142538, 0.887995,
		0.318833, -0.898669, -0.301228,
		0.840951, 0.414821, -0.347456,
		31.750477, 36.512016, 41.080563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540926, 35.935764, 41.793884>,  <31.161812, 36.221642, 41.323780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540926, 35.935764, 41.793884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787598, 36.204128, 41.629158>,  <31.935600, 36.365147, 41.530323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787598, 36.204128, 41.629158>,  <31.540926, 35.935764, 41.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787598, 36.204128, 41.629158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592437, -0.051045, 0.803998,
		0.518386, -0.739783, -0.428948,
		0.616680, 0.670906, -0.411814,
		31.972601, 36.405399, 41.505615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243202, 35.637531, 41.744461>,  <31.540926, 35.935764, 41.793884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243202, 35.637531, 41.744461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244511, 36.037251, 41.759369>,  <32.245296, 36.277084, 41.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244511, 36.037251, 41.759369>,  <32.243202, 35.637531, 41.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244511, 36.037251, 41.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717260, -0.028310, 0.696230,
		0.696798, 0.024453, -0.716851,
		0.003269, 0.999300, 0.037265,
		32.245491, 36.337040, 41.770550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901844, 35.795338, 41.982517>,  <32.243202, 35.637531, 41.744461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901844, 35.795338, 41.982517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698067, 36.135761, 42.033386>,  <32.575802, 36.340015, 42.063908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698067, 36.135761, 42.033386>,  <32.901844, 35.795338, 41.982517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698067, 36.135761, 42.033386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517098, 0.184646, 0.835772,
		0.687809, 0.491535, -0.534146,
		-0.509439, 0.851058, 0.127171,
		32.545235, 36.391079, 42.071537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345932, 36.245121, 42.352612>,  <32.901844, 35.795338, 41.982517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345932, 36.245121, 42.352612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988571, 36.421543, 42.386795>,  <32.774155, 36.527397, 42.407303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988571, 36.421543, 42.386795>,  <33.345932, 36.245121, 42.352612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988571, 36.421543, 42.386795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232006, 0.290057, 0.928461,
		0.384719, 0.849314, -0.361466,
		-0.893400, 0.441059, 0.085456,
		32.720551, 36.553860, 42.412434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518368, 36.876305, 42.507580>,  <33.345932, 36.245121, 42.352612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518368, 36.876305, 42.507580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130779, 36.850689, 42.603077>,  <32.898228, 36.835320, 42.660378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130779, 36.850689, 42.603077>,  <33.518368, 36.876305, 42.507580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130779, 36.850689, 42.603077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186231, 0.445985, 0.875452,
		-0.162537, 0.892747, -0.420220,
		-0.968968, -0.064036, 0.238746,
		32.840088, 36.831478, 42.674702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307186, 37.519199, 42.938652>,  <33.518368, 36.876305, 42.507580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307186, 37.519199, 42.938652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068829, 37.217144, 43.047966>,  <32.925816, 37.035912, 43.113556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068829, 37.217144, 43.047966>,  <33.307186, 37.519199, 42.938652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068829, 37.217144, 43.047966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228250, 0.167009, 0.959172,
		-0.769945, 0.633940, 0.072840,
		-0.595892, -0.755135, 0.273284,
		32.890060, 36.990604, 43.129951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812374, 37.737267, 43.564884>,  <33.307186, 37.519199, 42.938652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812374, 37.737267, 43.564884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840294, 37.338440, 43.552261>,  <32.857044, 37.099144, 43.544685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840294, 37.338440, 43.552261>,  <32.812374, 37.737267, 43.564884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840294, 37.338440, 43.552261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063065, -0.035984, 0.997360,
		-0.995566, -0.067621, -0.065392,
		0.069796, -0.997062, -0.031560,
		32.861233, 37.039322, 43.542793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819546, 37.553646, 44.187889>,  <32.812374, 37.737267, 43.564884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819546, 37.553646, 44.187889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871830, 37.175423, 44.068676>,  <32.903202, 36.948486, 43.997147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871830, 37.175423, 44.068676>,  <32.819546, 37.553646, 44.187889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871830, 37.175423, 44.068676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118116, -0.283622, 0.951634,
		-0.984359, -0.159595, 0.074613,
		0.130714, -0.945562, -0.298036,
		32.911045, 36.891754, 43.979263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423054, 37.165512, 44.594032>,  <32.819546, 37.553646, 44.187889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423054, 37.165512, 44.594032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699669, 36.911400, 44.456512>,  <32.865639, 36.758934, 44.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699669, 36.911400, 44.456512>,  <32.423054, 37.165512, 44.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699669, 36.911400, 44.456512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161534, -0.327888, 0.930804,
		-0.704046, -0.699222, -0.124128,
		0.691539, -0.635278, -0.343797,
		32.907131, 36.720818, 44.353374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335419, 36.584503, 44.943668>,  <32.423054, 37.165512, 44.594032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335419, 36.584503, 44.943668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707485, 36.518295, 44.812580>,  <32.930725, 36.478569, 44.733929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707485, 36.518295, 44.812580>,  <32.335419, 36.584503, 44.943668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707485, 36.518295, 44.812580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225381, -0.447204, 0.865570,
		-0.289824, -0.878983, -0.378669,
		0.930164, -0.165518, -0.327716,
		32.986534, 36.468639, 44.714264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578403, 35.843258, 45.185131>,  <32.335419, 36.584503, 44.943668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578403, 35.843258, 45.185131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898037, 36.074032, 45.117470>,  <33.089817, 36.212498, 45.076874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898037, 36.074032, 45.117470>,  <32.578403, 35.843258, 45.185131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898037, 36.074032, 45.117470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416581, -0.328450, 0.847691,
		0.433509, -0.747838, -0.502800,
		0.799080, 0.576939, -0.169149,
		33.137760, 36.247112, 45.066727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111526, 35.355694, 45.212509>,  <32.578403, 35.843258, 45.185131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111526, 35.355694, 45.212509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247826, 35.725998, 45.278061>,  <33.329605, 35.948181, 45.317390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247826, 35.725998, 45.278061>,  <33.111526, 35.355694, 45.212509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247826, 35.725998, 45.278061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555089, -0.338791, 0.759669,
		0.758792, -0.167891, -0.629323,
		0.340750, 0.925761, 0.163877,
		33.350052, 36.003727, 45.327225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766842, 35.267784, 45.444527>,  <33.111526, 35.355694, 45.212509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766842, 35.267784, 45.444527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698200, 35.644886, 45.558907>,  <33.657017, 35.871147, 45.627533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698200, 35.644886, 45.558907>,  <33.766842, 35.267784, 45.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698200, 35.644886, 45.558907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402065, -0.197963, 0.893954,
		0.899387, 0.268374, -0.345078,
		-0.171601, 0.942755, 0.285949,
		33.646721, 35.927711, 45.644691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443241, 35.527191, 45.725002>,  <33.766842, 35.267784, 45.444527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443241, 35.527191, 45.725002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172817, 35.767532, 45.895611>,  <34.010563, 35.911736, 45.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172817, 35.767532, 45.895611>,  <34.443241, 35.527191, 45.725002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172817, 35.767532, 45.895611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369170, -0.224761, 0.901774,
		0.637696, 0.767114, -0.069863,
		-0.676060, 0.600848, 0.426525,
		33.969997, 35.947788, 46.023567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809906, 35.875893, 46.175236>,  <34.443241, 35.527191, 45.725002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809906, 35.875893, 46.175236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426628, 35.896595, 46.287796>,  <34.196663, 35.909016, 46.355331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426628, 35.896595, 46.287796>,  <34.809906, 35.875893, 46.175236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426628, 35.896595, 46.287796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274887, -0.106370, 0.955575,
		0.079387, 0.992979, 0.087696,
		-0.958194, 0.051754, 0.281401,
		34.139172, 35.912121, 46.372215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848755, 36.318222, 46.713081>,  <34.809906, 35.875893, 46.175236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848755, 36.318222, 46.713081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497997, 36.132881, 46.764248>,  <34.287544, 36.021675, 46.794949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497997, 36.132881, 46.764248>,  <34.848755, 36.318222, 46.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497997, 36.132881, 46.764248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260733, -0.234926, 0.936391,
		-0.403831, 0.854465, 0.326817,
		-0.876891, -0.463356, 0.127917,
		34.234928, 35.993874, 46.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714664, 36.462593, 47.350494>,  <34.848755, 36.318222, 46.713081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714664, 36.462593, 47.350494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472229, 36.151463, 47.283981>,  <34.326767, 35.964783, 47.244072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472229, 36.151463, 47.283981>,  <34.714664, 36.462593, 47.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472229, 36.151463, 47.283981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017591, -0.222113, 0.974862,
		-0.795206, 0.587924, 0.148303,
		-0.606085, -0.777825, -0.166283,
		34.290405, 35.918114, 47.234097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167278, 36.549664, 47.788124>,  <34.714664, 36.462593, 47.350494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167278, 36.549664, 47.788124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162960, 36.165257, 47.677620>,  <34.160370, 35.934612, 47.611317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162960, 36.165257, 47.677620>,  <34.167278, 36.549664, 47.788124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162960, 36.165257, 47.677620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094709, -0.276017, 0.956475,
		-0.995446, -0.015836, 0.093997,
		-0.010798, -0.961022, -0.276260,
		34.159721, 35.876949, 47.594742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634777, 36.283649, 48.161057>,  <34.167278, 36.549664, 47.788124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634777, 36.283649, 48.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875931, 35.978714, 48.066936>,  <34.020622, 35.795753, 48.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875931, 35.978714, 48.066936>,  <33.634777, 36.283649, 48.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875931, 35.978714, 48.066936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114667, -0.209074, 0.971154,
		-0.789546, -0.612474, -0.038632,
		0.602884, -0.762341, -0.235304,
		34.056797, 35.750011, 47.996346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324528, 35.705467, 48.514568>,  <33.634777, 36.283649, 48.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324528, 35.705467, 48.514568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711567, 35.644852, 48.433784>,  <33.943790, 35.608482, 48.385315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711567, 35.644852, 48.433784>,  <33.324528, 35.705467, 48.514568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711567, 35.644852, 48.433784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173186, -0.183742, 0.967598,
		-0.183742, -0.971223, -0.151543,
		-0.967598, 0.151543, 0.201963,
		34.001846, 35.599388, 48.373196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583866, 35.055996, 48.949852>,  <33.324528, 35.705467, 48.514568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583866, 35.055996, 48.949852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913376, 35.248653, 48.830242>,  <34.111080, 35.364250, 48.758476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913376, 35.248653, 48.830242>,  <33.583866, 35.055996, 48.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913376, 35.248653, 48.830242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356385, -0.029756, 0.933865,
		0.440896, -0.875860, -0.196164,
		0.823772, 0.481647, -0.299024,
		34.160507, 35.393147, 48.740536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152992, 34.719475, 49.174931>,  <33.583866, 35.055996, 48.949852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152992, 34.719475, 49.174931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362537, 35.054523, 49.113018>,  <34.488262, 35.255554, 49.075871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362537, 35.054523, 49.113018>,  <34.152992, 34.719475, 49.174931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362537, 35.054523, 49.113018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383408, -0.069604, 0.920953,
		0.760639, -0.541794, -0.357615,
		0.523858, 0.837624, -0.154785,
		34.519695, 35.305809, 49.066582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842892, 34.628139, 49.478008>,  <34.152992, 34.719475, 49.174931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842892, 34.628139, 49.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774269, 35.021694, 49.457901>,  <34.733093, 35.257828, 49.445839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774269, 35.021694, 49.457901>,  <34.842892, 34.628139, 49.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774269, 35.021694, 49.457901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345746, 0.107906, 0.932103,
		0.922511, 0.142534, -0.358689,
		-0.171561, 0.983890, -0.050264,
		34.722801, 35.316860, 49.442822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454678, 35.018333, 49.645237>,  <34.842892, 34.628139, 49.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454678, 35.018333, 49.645237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144829, 35.255432, 49.733437>,  <34.958920, 35.397690, 49.786358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144829, 35.255432, 49.733437>,  <35.454678, 35.018333, 49.645237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144829, 35.255432, 49.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316614, 0.061644, 0.946549,
		0.547468, 0.803029, -0.235422,
		-0.774619, 0.592743, 0.220502,
		34.912441, 35.433254, 49.799587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714520, 35.476795, 50.080750>,  <35.454678, 35.018333, 49.645237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714520, 35.476795, 50.080750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326084, 35.544468, 50.148125>,  <35.093025, 35.585072, 50.188549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326084, 35.544468, 50.148125>,  <35.714520, 35.476795, 50.080750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326084, 35.544468, 50.148125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176121, 0.031404, 0.983867,
		0.161162, 0.985085, -0.060292,
		-0.971086, 0.169181, 0.168433,
		35.034760, 35.595222, 50.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696175, 36.048782, 50.590271>,  <35.714520, 35.476795, 50.080750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696175, 36.048782, 50.590271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368256, 35.820129, 50.603996>,  <35.171505, 35.682938, 50.612232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368256, 35.820129, 50.603996>,  <35.696175, 36.048782, 50.590271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368256, 35.820129, 50.603996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140726, -0.143012, 0.979665,
		-0.555098, 0.807953, 0.197684,
		-0.819794, -0.571629, 0.034314,
		35.122318, 35.648640, 50.614292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244648, 36.317036, 51.181973>,  <35.696175, 36.048782, 50.590271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244648, 36.317036, 51.181973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095150, 35.951080, 51.120926>,  <35.005451, 35.731506, 51.084297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095150, 35.951080, 51.120926>,  <35.244648, 36.317036, 51.181973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095150, 35.951080, 51.120926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159791, -0.225587, 0.961029,
		-0.913663, 0.334796, 0.230504,
		-0.373747, -0.914889, -0.152613,
		34.983025, 35.676613, 51.075142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717445, 36.183392, 51.742165>,  <35.244648, 36.317036, 51.181973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717445, 36.183392, 51.742165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817604, 35.815327, 51.621761>,  <34.877701, 35.594490, 51.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817604, 35.815327, 51.621761>,  <34.717445, 36.183392, 51.742165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817604, 35.815327, 51.621761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007176, -0.309139, 0.950990,
		-0.968116, -0.240289, -0.070806,
		0.250401, -0.920160, -0.301007,
		34.892723, 35.539280, 51.531460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321831, 35.723240, 52.130852>,  <34.717445, 36.183392, 51.742165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321831, 35.723240, 52.130852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627335, 35.498886, 52.003056>,  <34.810638, 35.364273, 51.926376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627335, 35.498886, 52.003056>,  <34.321831, 35.723240, 52.130852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627335, 35.498886, 52.003056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135622, -0.344474, 0.928948,
		-0.631092, -0.752824, -0.187027,
		0.763760, -0.560887, -0.319494,
		34.856464, 35.330620, 51.907207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286526, 34.854870, 52.047989>,  <34.321831, 35.723240, 52.130852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286526, 34.854870, 52.047989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651112, 35.001751, 52.122177>,  <34.869862, 35.089878, 52.166691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651112, 35.001751, 52.122177>,  <34.286526, 34.854870, 52.047989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651112, 35.001751, 52.122177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034173, -0.516874, 0.855379,
		0.409961, -0.773308, -0.483660,
		0.911463, 0.367200, 0.185472,
		34.924549, 35.111912, 52.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665379, 34.314869, 52.329235>,  <34.286526, 34.854870, 52.047989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665379, 34.314869, 52.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841335, 34.653046, 52.450378>,  <34.946907, 34.855953, 52.523064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841335, 34.653046, 52.450378>,  <34.665379, 34.314869, 52.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841335, 34.653046, 52.450378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045023, -0.357574, 0.932799,
		0.896923, -0.396692, -0.195357,
		0.439888, 0.845445, 0.302856,
		34.973301, 34.906677, 52.541237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392319, 34.083942, 52.658333>,  <34.665379, 34.314869, 52.329235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392319, 34.083942, 52.658333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202511, 34.404713, 52.803516>,  <35.088627, 34.597176, 52.890629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202511, 34.404713, 52.803516>,  <35.392319, 34.083942, 52.658333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202511, 34.404713, 52.803516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048665, -0.387812, 0.920453,
		0.878901, 0.454434, 0.144997,
		-0.474516, 0.801930, 0.362963,
		35.060158, 34.645290, 52.912407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684258, 34.353397, 53.326572>,  <35.392319, 34.083942, 52.658333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684258, 34.353397, 53.326572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304890, 34.479988, 53.319244>,  <35.077267, 34.555943, 53.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304890, 34.479988, 53.319244>,  <35.684258, 34.353397, 53.326572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304890, 34.479988, 53.319244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052439, -0.099638, 0.993641,
		0.312637, 0.943354, 0.111095,
		-0.948424, 0.316475, -0.018318,
		35.020363, 34.574932, 53.313747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423843, 34.176796, 53.078300>,  <35.684258, 34.353397, 53.326572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423843, 34.176796, 53.078300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719215, 34.442379, 53.031162>,  <36.896439, 34.601730, 53.002880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719215, 34.442379, 53.031162>,  <36.423843, 34.176796, 53.078300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719215, 34.442379, 53.031162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598528, -0.725831, -0.339018,
		-0.310631, 0.179804, -0.933370,
		0.738426, 0.663957, -0.117848,
		36.940742, 34.641567, 52.995808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623531, 34.255299, 52.230133>,  <36.423843, 34.176796, 53.078300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623531, 34.255299, 52.230133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868095, 34.307449, 52.542336>,  <37.014832, 34.338737, 52.729656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868095, 34.307449, 52.542336>,  <36.623531, 34.255299, 52.230133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868095, 34.307449, 52.542336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720004, -0.500853, -0.480355,
		0.328291, 0.855657, -0.400096,
		0.611408, 0.130374, 0.780502,
		37.051517, 34.346561, 52.776485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317883, 34.579468, 51.972115>,  <36.623531, 34.255299, 52.230133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317883, 34.579468, 51.972115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373135, 34.345818, 52.292042>,  <37.406284, 34.205627, 52.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373135, 34.345818, 52.292042>,  <37.317883, 34.579468, 51.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373135, 34.345818, 52.292042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756977, -0.458497, -0.465581,
		0.638675, 0.669756, 0.378841,
		0.138128, -0.584129, 0.799821,
		37.414574, 34.170578, 52.531986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881920, 34.285454, 51.721848>,  <37.317883, 34.579468, 51.972115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881920, 34.285454, 51.721848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815334, 34.083084, 52.060394>,  <37.775383, 33.961662, 52.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815334, 34.083084, 52.060394>,  <37.881920, 34.285454, 51.721848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815334, 34.083084, 52.060394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790605, -0.581427, -0.192058,
		0.589265, 0.637168, 0.496773,
		-0.166465, -0.505924, 0.846363,
		37.765396, 33.931305, 52.314304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800400, 33.752083, 51.198257>,  <37.881920, 34.285454, 51.721848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800400, 33.752083, 51.198257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648563, 33.568466, 51.519550>,  <37.557461, 33.458294, 51.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648563, 33.568466, 51.519550>,  <37.800400, 33.752083, 51.198257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648563, 33.568466, 51.519550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666879, -0.466007, -0.581472,
		0.641235, -0.756383, -0.129235,
		-0.379591, -0.459045, 0.803236,
		37.534687, 33.430752, 51.760521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890816, 33.045189, 51.195183>,  <37.800400, 33.752083, 51.198257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890816, 33.045189, 51.195183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557945, 33.158386, 51.385925>,  <37.358223, 33.226303, 51.500370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557945, 33.158386, 51.385925>,  <37.890816, 33.045189, 51.195183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557945, 33.158386, 51.385925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554505, -0.425107, -0.715407,
		0.000264, -0.859768, 0.510685,
		-0.832180, 0.282989, 0.476858,
		37.308292, 33.243282, 51.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388397, 32.519951, 51.316051>,  <37.890816, 33.045189, 51.195183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388397, 32.519951, 51.316051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179047, 32.860329, 51.298302>,  <37.053436, 33.064556, 51.287651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179047, 32.860329, 51.298302>,  <37.388397, 32.519951, 51.316051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179047, 32.860329, 51.298302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707100, -0.462786, -0.534639,
		-0.475485, -0.248440, 0.843914,
		-0.523378, 0.850944, -0.044376,
		37.022034, 33.115612, 51.284992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644810, 32.361191, 51.420910>,  <37.388397, 32.519951, 51.316051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644810, 32.361191, 51.420910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640747, 32.704205, 51.215176>,  <36.638309, 32.910011, 51.091736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640747, 32.704205, 51.215176>,  <36.644810, 32.361191, 51.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640747, 32.704205, 51.215176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697051, -0.374861, -0.611227,
		-0.716949, 0.352308, 0.601551,
		-0.010157, 0.857530, -0.514333,
		36.637699, 32.961464, 51.060875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959984, 32.426487, 51.187614>,  <36.644810, 32.361191, 51.420910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959984, 32.426487, 51.187614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162491, 32.652321, 50.926865>,  <36.283993, 32.787819, 50.770412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162491, 32.652321, 50.926865>,  <35.959984, 32.426487, 51.187614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162491, 32.652321, 50.926865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486553, -0.437108, -0.756441,
		-0.712013, 0.700132, 0.053407,
		0.506264, 0.564581, -0.651878,
		36.314369, 32.821693, 50.731300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469296, 32.657906, 50.825130>,  <35.959984, 32.426487, 51.187614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469296, 32.657906, 50.825130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794838, 32.728325, 50.603630>,  <35.990166, 32.770576, 50.470730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794838, 32.728325, 50.603630>,  <35.469296, 32.657906, 50.825130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794838, 32.728325, 50.603630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530997, -0.161656, -0.831811,
		-0.235956, 0.971017, -0.038084,
		0.813860, 0.176048, -0.553750,
		36.038998, 32.781139, 50.437504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273144, 33.056164, 50.251640>,  <35.469296, 32.657906, 50.825130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273144, 33.056164, 50.251640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617508, 32.888885, 50.135754>,  <35.824127, 32.788517, 50.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617508, 32.888885, 50.135754>,  <35.273144, 33.056164, 50.251640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617508, 32.888885, 50.135754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390038, -0.176914, -0.903644,
		0.326643, 0.890963, -0.315420,
		0.860915, -0.418195, -0.289721,
		35.875782, 32.763428, 50.048836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479588, 33.424477, 49.603268>,  <35.273144, 33.056164, 50.251640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479588, 33.424477, 49.603268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677727, 33.077015, 49.606564>,  <35.796608, 32.868538, 49.608540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677727, 33.077015, 49.606564>,  <35.479588, 33.424477, 49.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677727, 33.077015, 49.606564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310301, -0.185790, -0.932307,
		0.811385, 0.459258, -0.361575,
		0.495346, -0.868657, 0.008239,
		35.826332, 32.816418, 49.609035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884705, 33.486671, 49.034435>,  <35.479588, 33.424477, 49.603268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884705, 33.486671, 49.034435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913254, 33.090252, 49.079575>,  <35.930386, 32.852402, 49.106659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913254, 33.090252, 49.079575>,  <35.884705, 33.486671, 49.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913254, 33.090252, 49.079575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105485, -0.120000, -0.987154,
		0.991856, 0.058556, -0.113106,
		0.071376, -0.991045, 0.112846,
		35.934666, 32.792938, 49.113430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417484, 33.212887, 48.525257>,  <35.884705, 33.486671, 49.034435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417484, 33.212887, 48.525257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214455, 32.883499, 48.626656>,  <36.092636, 32.685867, 48.687496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214455, 32.883499, 48.626656>,  <36.417484, 33.212887, 48.525257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214455, 32.883499, 48.626656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122780, -0.222084, -0.967266,
		0.852813, -0.522087, 0.011620,
		-0.507578, -0.823470, 0.253498,
		36.062180, 32.636459, 48.702705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763889, 32.606655, 48.168133>,  <36.417484, 33.212887, 48.525257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763889, 32.606655, 48.168133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385326, 32.508957, 48.252666>,  <36.158188, 32.450336, 48.303387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385326, 32.508957, 48.252666>,  <36.763889, 32.606655, 48.168133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385326, 32.508957, 48.252666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172173, -0.172103, -0.969916,
		0.273270, -0.954319, 0.120826,
		-0.946404, -0.244246, 0.211339,
		36.101406, 32.435684, 48.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631104, 32.037647, 47.732655>,  <36.763889, 32.606655, 48.168133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631104, 32.037647, 47.732655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262611, 32.126904, 47.860115>,  <36.041515, 32.180458, 47.936592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262611, 32.126904, 47.860115>,  <36.631104, 32.037647, 47.732655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262611, 32.126904, 47.860115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367929, -0.233759, -0.899992,
		-0.126337, -0.946343, 0.297446,
		-0.921231, 0.223141, 0.318655,
		35.986240, 32.193848, 47.955711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077984, 31.398426, 47.607166>,  <36.631104, 32.037647, 47.732655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077984, 31.398426, 47.607166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912693, 31.761766, 47.632904>,  <35.813519, 31.979771, 47.648346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912693, 31.761766, 47.632904>,  <36.077984, 31.398426, 47.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912693, 31.761766, 47.632904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466784, -0.150621, -0.871451,
		-0.781891, -0.390146, 0.486244,
		-0.413231, 0.908350, 0.064345,
		35.788723, 32.034271, 47.652206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485134, 31.316740, 47.099953>,  <36.077984, 31.398426, 47.607166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485134, 31.316740, 47.099953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530834, 31.706415, 47.177830>,  <35.558254, 31.940220, 47.224556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530834, 31.706415, 47.177830>,  <35.485134, 31.316740, 47.099953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530834, 31.706415, 47.177830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348301, 0.222814, -0.910516,
		-0.930394, 0.036214, 0.364767,
		0.114248, 0.974188, 0.194692,
		35.565109, 31.998672, 47.236237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930378, 31.580278, 46.847897>,  <35.485134, 31.316740, 47.099953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930378, 31.580278, 46.847897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160686, 31.906370, 46.872849>,  <35.298870, 32.102024, 46.887821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160686, 31.906370, 46.872849>,  <34.930378, 31.580278, 46.847897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160686, 31.906370, 46.872849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372090, 0.329202, -0.867857,
		-0.728037, 0.476475, 0.492883,
		0.575770, 0.815229, 0.062380,
		35.333416, 32.150940, 46.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492779, 32.114540, 46.690487>,  <34.930378, 31.580278, 46.847897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492779, 32.114540, 46.690487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859722, 32.253490, 46.612740>,  <35.079887, 32.336861, 46.566090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859722, 32.253490, 46.612740>,  <34.492779, 32.114540, 46.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859722, 32.253490, 46.612740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321904, 0.360156, -0.875595,
		-0.234160, 0.865803, 0.442215,
		0.917359, 0.347380, -0.194371,
		35.134930, 32.357704, 46.554428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379280, 32.689468, 46.461620>,  <34.492779, 32.114540, 46.690487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379280, 32.689468, 46.461620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745457, 32.618057, 46.317348>,  <34.965164, 32.575211, 46.230785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745457, 32.618057, 46.317348>,  <34.379280, 32.689468, 46.461620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745457, 32.618057, 46.317348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232840, 0.496042, -0.836497,
		0.328253, 0.849747, 0.412530,
		0.915443, -0.178529, -0.360682,
		35.020088, 32.564499, 46.209145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497833, 33.315407, 46.207901>,  <34.379280, 32.689468, 46.461620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497833, 33.315407, 46.207901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770390, 33.082485, 46.030533>,  <34.933922, 32.942730, 45.924110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770390, 33.082485, 46.030533>,  <34.497833, 33.315407, 46.207901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770390, 33.082485, 46.030533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269018, 0.364178, -0.891630,
		0.680687, 0.726838, 0.091497,
		0.681392, -0.582306, -0.443424,
		34.974808, 32.907795, 45.897507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957329, 33.726624, 45.744701>,  <34.497833, 33.315407, 46.207901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957329, 33.726624, 45.744701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977272, 33.347534, 45.618633>,  <34.989239, 33.120079, 45.542992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977272, 33.347534, 45.618633>,  <34.957329, 33.726624, 45.744701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977272, 33.347534, 45.618633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473208, 0.255481, -0.843091,
		0.879538, 0.191179, -0.435732,
		0.049860, -0.947724, -0.315173,
		34.992229, 33.063217, 45.524082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154320, 33.789589, 45.011642>,  <34.957329, 33.726624, 45.744701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154320, 33.789589, 45.011642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996464, 33.423603, 45.045372>,  <34.901752, 33.204014, 45.065609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996464, 33.423603, 45.045372>,  <35.154320, 33.789589, 45.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996464, 33.423603, 45.045372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337418, 0.058948, -0.939508,
		0.854641, -0.399215, -0.331987,
		-0.394636, -0.914960, 0.084323,
		34.878075, 33.149117, 45.070667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331768, 33.510277, 44.359119>,  <35.154320, 33.789589, 45.011642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331768, 33.510277, 44.359119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048183, 33.283611, 44.527058>,  <34.878033, 33.147610, 44.627819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048183, 33.283611, 44.527058>,  <35.331768, 33.510277, 44.359119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048183, 33.283611, 44.527058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404200, -0.161355, -0.900326,
		0.577930, -0.807993, -0.114654,
		-0.708956, -0.566668, 0.419842,
		34.835495, 33.113609, 44.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305431, 32.839901, 44.028580>,  <35.331768, 33.510277, 44.359119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305431, 32.839901, 44.028580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943981, 32.893429, 44.191330>,  <34.727112, 32.925545, 44.288982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943981, 32.893429, 44.191330>,  <35.305431, 32.839901, 44.028580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943981, 32.893429, 44.191330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427466, -0.221870, -0.876382,
		-0.027000, -0.965850, 0.257690,
		-0.903628, 0.133816, 0.406878,
		34.672894, 32.933575, 44.313393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864079, 32.329494, 43.691265>,  <35.305431, 32.839901, 44.028580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864079, 32.329494, 43.691265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594276, 32.583858, 43.841282>,  <34.432396, 32.736477, 43.931290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594276, 32.583858, 43.841282>,  <34.864079, 32.329494, 43.691265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594276, 32.583858, 43.841282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459794, 0.035603, -0.887311,
		-0.577606, -0.770939, 0.268374,
		-0.674508, 0.635913, 0.375038,
		34.391922, 32.774632, 43.953793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139679, 32.085781, 43.543594>,  <34.864079, 32.329494, 43.691265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139679, 32.085781, 43.543594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097546, 32.479420, 43.600819>,  <34.072266, 32.715603, 43.635155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097546, 32.479420, 43.600819>,  <34.139679, 32.085781, 43.543594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097546, 32.479420, 43.600819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626012, 0.046160, -0.778446,
		-0.772666, -0.171556, 0.611192,
		-0.105334, 0.984092, 0.143063,
		34.065945, 32.774647, 43.643738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528984, 32.110279, 43.130630>,  <34.139679, 32.085781, 43.543594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528984, 32.110279, 43.130630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645447, 32.487221, 43.196606>,  <33.715324, 32.713387, 43.236191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645447, 32.487221, 43.196606>,  <33.528984, 32.110279, 43.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645447, 32.487221, 43.196606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376941, 0.271460, -0.885564,
		-0.879287, 0.195663, 0.434248,
		0.291153, 0.942351, 0.164938,
		33.732792, 32.769928, 43.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931087, 32.595543, 43.015564>,  <33.528984, 32.110279, 43.130630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931087, 32.595543, 43.015564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251595, 32.828136, 42.959217>,  <33.443897, 32.967693, 42.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251595, 32.828136, 42.959217>,  <32.931087, 32.595543, 43.015564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251595, 32.828136, 42.959217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426891, 0.390668, -0.815563,
		-0.419205, 0.713621, 0.561261,
		0.801269, 0.581485, -0.140868,
		33.491974, 33.002583, 42.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664089, 33.285549, 42.864666>,  <32.931087, 32.595543, 43.015564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664089, 33.285549, 42.864666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034298, 33.253407, 42.716637>,  <33.256424, 33.234123, 42.627819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034298, 33.253407, 42.716637>,  <32.664089, 33.285549, 42.864666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034298, 33.253407, 42.716637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323974, 0.338002, -0.883626,
		0.196088, 0.937709, 0.286796,
		0.925522, -0.080354, -0.370072,
		33.311954, 33.229301, 42.605614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815159, 33.893242, 42.440723>,  <32.664089, 33.285549, 42.864666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815159, 33.893242, 42.440723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091824, 33.631542, 42.318367>,  <33.257824, 33.474522, 42.244953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091824, 33.631542, 42.318367>,  <32.815159, 33.893242, 42.440723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091824, 33.631542, 42.318367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252463, 0.177792, -0.951132,
		0.676657, 0.735088, -0.042201,
		0.691663, -0.654245, -0.305886,
		33.299324, 33.435268, 42.226601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246250, 34.239193, 41.903431>,  <32.815159, 33.893242, 42.440723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246250, 34.239193, 41.903431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314007, 33.848522, 41.850666>,  <33.354660, 33.614120, 41.819008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314007, 33.848522, 41.850666>,  <33.246250, 34.239193, 41.903431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314007, 33.848522, 41.850666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090070, 0.117946, -0.988927,
		0.981424, 0.179398, -0.067990,
		0.169393, -0.976681, -0.131913,
		33.364826, 33.555519, 41.811092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677261, 34.196262, 41.228096>,  <33.246250, 34.239193, 41.903431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677261, 34.196262, 41.228096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532276, 33.825111, 41.263088>,  <33.445286, 33.602421, 41.284084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532276, 33.825111, 41.263088>,  <33.677261, 34.196262, 41.228096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532276, 33.825111, 41.263088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213393, -0.008749, -0.976927,
		0.907238, -0.372772, -0.194832,
		-0.362466, -0.927882, 0.087484,
		33.423534, 33.546745, 41.289333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963146, 33.786037, 40.618923>,  <33.677261, 34.196262, 41.228096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963146, 33.786037, 40.618923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630901, 33.594067, 40.731888>,  <33.431553, 33.478886, 40.799667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630901, 33.594067, 40.731888>,  <33.963146, 33.786037, 40.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630901, 33.594067, 40.731888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288855, -0.062255, -0.955347,
		0.476076, -0.875098, -0.086919,
		-0.830611, -0.479925, 0.282415,
		33.381718, 33.450089, 40.816612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938972, 33.192764, 40.309818>,  <33.963146, 33.786037, 40.618923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938972, 33.192764, 40.309818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552280, 33.235199, 40.402931>,  <33.320267, 33.260658, 40.458797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552280, 33.235199, 40.402931>,  <33.938972, 33.192764, 40.309818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552280, 33.235199, 40.402931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240412, -0.065800, -0.968438,
		-0.087431, -0.992176, 0.089118,
		-0.966725, 0.106097, 0.232778,
		33.262264, 33.267025, 40.472767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642181, 32.633492, 40.006931>,  <33.938972, 33.192764, 40.309818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642181, 32.633492, 40.006931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353115, 32.901993, 40.072872>,  <33.179676, 33.063095, 40.112438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353115, 32.901993, 40.072872>,  <33.642181, 32.633492, 40.006931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353115, 32.901993, 40.072872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275561, -0.061063, -0.959342,
		-0.633898, -0.738706, 0.229100,
		-0.722661, 0.671256, 0.164851,
		33.136318, 33.103371, 40.122326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084152, 32.352413, 39.630310>,  <33.642181, 32.633492, 40.006931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084152, 32.352413, 39.630310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997509, 32.734966, 39.708698>,  <32.945522, 32.964500, 39.755730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997509, 32.734966, 39.708698>,  <33.084152, 32.352413, 39.630310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997509, 32.734966, 39.708698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415139, 0.091443, -0.905150,
		-0.883594, -0.277421, 0.377226,
		-0.216613, 0.956387, 0.195967,
		32.932526, 33.021881, 39.767487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336449, 32.502430, 39.554821>,  <33.084152, 32.352413, 39.630310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336449, 32.502430, 39.554821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499611, 32.860523, 39.483086>,  <32.597507, 33.075378, 39.440044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499611, 32.860523, 39.483086>,  <32.336449, 32.502430, 39.554821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499611, 32.860523, 39.483086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453301, 0.028067, -0.890915,
		-0.792547, 0.444706, 0.417261,
		0.407907, 0.895237, -0.179341,
		32.621983, 33.129093, 39.429283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741745, 32.929825, 39.235767>,  <32.336449, 32.502430, 39.554821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741745, 32.929825, 39.235767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083645, 33.118332, 39.148762>,  <32.288784, 33.231434, 39.096558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083645, 33.118332, 39.148762>,  <31.741745, 32.929825, 39.235767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083645, 33.118332, 39.148762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349529, 0.212824, -0.912434,
		-0.383707, 0.855929, 0.346632,
		0.854751, 0.471265, -0.217510,
		32.340069, 33.259712, 39.083508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416870, 33.547195, 38.832664>,  <31.741745, 32.929825, 39.235767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416870, 33.547195, 38.832664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806313, 33.531105, 38.742802>,  <32.039978, 33.521450, 38.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806313, 33.531105, 38.742802>,  <31.416870, 33.547195, 38.832664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806313, 33.531105, 38.742802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207183, 0.257140, -0.943904,
		0.095741, 0.965536, 0.242019,
		0.973606, -0.040228, -0.224662,
		32.098396, 33.519035, 38.675404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668465, 34.151981, 38.441746>,  <31.416870, 33.547195, 38.832664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668465, 34.151981, 38.441746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956942, 33.888504, 38.355946>,  <32.130028, 33.730419, 38.304466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956942, 33.888504, 38.355946>,  <31.668465, 34.151981, 38.441746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956942, 33.888504, 38.355946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090131, 0.217786, -0.971826,
		0.686848, 0.720205, 0.097697,
		0.721191, -0.658691, -0.214498,
		32.173298, 33.690895, 38.291595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204990, 34.497910, 38.072548>,  <31.668465, 34.151981, 38.441746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204990, 34.497910, 38.072548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184330, 34.106037, 37.995037>,  <32.171936, 33.870914, 37.948528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184330, 34.106037, 37.995037>,  <32.204990, 34.497910, 38.072548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184330, 34.106037, 37.995037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090407, 0.197830, -0.976058,
		0.994565, -0.032892, -0.098788,
		-0.051647, -0.979684, -0.193781,
		32.168835, 33.812130, 37.936901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700665, 34.330929, 37.558167>,  <32.204990, 34.497910, 38.072548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700665, 34.330929, 37.558167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443317, 34.024883, 37.547779>,  <32.288910, 33.841255, 37.541546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443317, 34.024883, 37.547779>,  <32.700665, 34.330929, 37.558167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443317, 34.024883, 37.547779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083729, -0.036612, -0.995816,
		0.760963, -0.642852, 0.087617,
		-0.643370, -0.765115, -0.025965,
		32.250305, 33.795349, 37.539989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785786, 34.167404, 36.892487>,  <32.700665, 34.330929, 37.558167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785786, 34.167404, 36.892487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474419, 33.932579, 36.981422>,  <32.287598, 33.791683, 37.034782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474419, 33.932579, 36.981422>,  <32.785786, 34.167404, 36.892487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474419, 33.932579, 36.981422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188519, -0.119222, -0.974806,
		0.598777, -0.800716, -0.017868,
		-0.778413, -0.587060, 0.222337,
		32.240894, 33.756462, 37.048122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909836, 33.469372, 36.551178>,  <32.785786, 34.167404, 36.892487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909836, 33.469372, 36.551178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521023, 33.561668, 36.568710>,  <32.287735, 33.617046, 36.579227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521023, 33.561668, 36.568710>,  <32.909836, 33.469372, 36.551178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521023, 33.561668, 36.568710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090280, -0.194813, -0.976677,
		-0.216820, -0.953314, 0.210195,
		-0.972029, 0.230739, 0.043826,
		32.229416, 33.630890, 36.581860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524731, 34.024113, 36.577789>,  <32.909836, 33.469372, 36.551178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524731, 34.024113, 36.577789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776825, 34.167454, 36.302288>,  <33.928082, 34.253460, 36.136986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776825, 34.167454, 36.302288>,  <33.524731, 34.024113, 36.577789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776825, 34.167454, 36.302288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748483, -0.044680, 0.661647,
		0.206329, -0.932516, -0.296380,
		0.630240, 0.358353, -0.688754,
		33.965897, 34.274960, 36.095661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171436, 33.686584, 36.784943>,  <33.524731, 34.024113, 36.577789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171436, 33.686584, 36.784943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257866, 34.000881, 36.553104>,  <34.309723, 34.189457, 36.414001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257866, 34.000881, 36.553104>,  <34.171436, 33.686584, 36.784943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257866, 34.000881, 36.553104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791316, 0.206808, 0.575369,
		0.571954, -0.582961, -0.577083,
		0.216072, 0.785739, -0.579591,
		34.322689, 34.236603, 36.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807705, 33.810898, 36.427044>,  <34.171436, 33.686584, 36.784943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807705, 33.810898, 36.427044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669212, 34.179726, 36.496220>,  <34.586117, 34.401024, 36.537724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669212, 34.179726, 36.496220>,  <34.807705, 33.810898, 36.427044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669212, 34.179726, 36.496220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572618, 0.061688, 0.817498,
		0.743124, 0.382071, -0.549353,
		-0.346231, 0.922072, 0.172939,
		34.565342, 34.456348, 36.548100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367741, 34.168030, 36.487297>,  <34.807705, 33.810898, 36.427044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367741, 34.168030, 36.487297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090481, 34.397469, 36.661892>,  <34.924126, 34.535133, 36.766647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090481, 34.397469, 36.661892>,  <35.367741, 34.168030, 36.487297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090481, 34.397469, 36.661892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616077, 0.157132, 0.771854,
		0.374149, 0.803923, -0.462298,
		-0.693153, 0.573600, 0.436488,
		34.882534, 34.569550, 36.792839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658237, 34.867245, 36.644196>,  <35.367741, 34.168030, 36.487297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658237, 34.867245, 36.644196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368416, 34.766766, 36.900921>,  <35.194523, 34.706478, 37.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368416, 34.766766, 36.900921>,  <35.658237, 34.867245, 36.644196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368416, 34.766766, 36.900921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641939, 0.093006, 0.761094,
		-0.250879, 0.963457, 0.093866,
		-0.724551, -0.251199, 0.641814,
		35.151051, 34.691406, 37.093464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918182, 35.082649, 37.303036>,  <35.658237, 34.867245, 36.644196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918182, 35.082649, 37.303036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592033, 34.911316, 37.458832>,  <35.396343, 34.808517, 37.552307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592033, 34.911316, 37.458832>,  <35.918182, 35.082649, 37.303036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592033, 34.911316, 37.458832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425433, 0.012981, 0.904897,
		-0.392655, 0.903527, 0.171643,
		-0.815371, -0.428334, 0.389487,
		35.347424, 34.782814, 37.575680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838299, 35.406357, 37.907448>,  <35.918182, 35.082649, 37.303036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838299, 35.406357, 37.907448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640881, 35.059586, 37.935299>,  <35.522430, 34.851524, 37.952011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640881, 35.059586, 37.935299>,  <35.838299, 35.406357, 37.907448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640881, 35.059586, 37.935299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330518, -0.112902, 0.937022,
		-0.804470, 0.485477, 0.342258,
		-0.493545, -0.866929, 0.069632,
		35.492817, 34.799507, 37.956188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537540, 35.416393, 38.557636>,  <35.838299, 35.406357, 37.907448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537540, 35.416393, 38.557636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484482, 35.025436, 38.491787>,  <35.452648, 34.790863, 38.452278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484482, 35.025436, 38.491787>,  <35.537540, 35.416393, 38.557636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484482, 35.025436, 38.491787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329247, -0.200112, 0.922795,
		-0.934880, 0.068203, 0.348349,
		-0.132647, -0.977396, -0.164625,
		35.444687, 34.732216, 38.442398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071262, 35.021526, 39.120026>,  <35.537540, 35.416393, 38.557636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071262, 35.021526, 39.120026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302853, 34.752815, 38.935200>,  <35.441807, 34.591591, 38.824303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302853, 34.752815, 38.935200>,  <35.071262, 35.021526, 39.120026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302853, 34.752815, 38.935200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318240, -0.335568, 0.886633,
		-0.750671, -0.660389, 0.019499,
		0.578979, -0.671774, -0.462063,
		35.476547, 34.551285, 38.796581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941982, 34.458054, 39.598694>,  <35.071262, 35.021526, 39.120026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941982, 34.458054, 39.598694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291885, 34.421165, 39.408409>,  <35.501827, 34.399033, 39.294239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291885, 34.421165, 39.408409>,  <34.941982, 34.458054, 39.598694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291885, 34.421165, 39.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419587, -0.346925, 0.838803,
		-0.242390, -0.933348, -0.264780,
		0.874754, -0.092219, -0.475712,
		35.554310, 34.393501, 39.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214294, 33.852028, 39.942402>,  <34.941982, 34.458054, 39.598694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214294, 33.852028, 39.942402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534901, 33.979504, 39.740013>,  <35.727264, 34.055988, 39.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534901, 33.979504, 39.740013>,  <35.214294, 33.852028, 39.942402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534901, 33.979504, 39.740013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595825, -0.353953, 0.720909,
		0.050655, -0.879292, -0.473582,
		0.801515, 0.318689, -0.505974,
		35.775356, 34.075111, 39.588223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690704, 33.267498, 39.919834>,  <35.214294, 33.852028, 39.942402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690704, 33.267498, 39.919834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933044, 33.581261, 39.866699>,  <36.078449, 33.769520, 39.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933044, 33.581261, 39.866699>,  <35.690704, 33.267498, 39.919834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933044, 33.581261, 39.866699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661107, -0.403500, 0.632554,
		0.442583, -0.471052, -0.763040,
		0.605853, 0.784409, -0.132834,
		36.114799, 33.816582, 39.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439678, 33.063171, 39.731827>,  <35.690704, 33.267498, 39.919834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439678, 33.063171, 39.731827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471016, 33.426132, 39.896988>,  <36.489819, 33.643909, 39.996086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471016, 33.426132, 39.896988>,  <36.439678, 33.063171, 39.731827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471016, 33.426132, 39.896988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508558, -0.392611, 0.766306,
		0.857456, 0.149952, -0.492223,
		0.078343, 0.907398, 0.412906,
		36.494518, 33.698353, 40.020859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106899, 33.099213, 39.972675>,  <36.439678, 33.063171, 39.731827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106899, 33.099213, 39.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935905, 33.402363, 40.169807>,  <36.833309, 33.584251, 40.288086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935905, 33.402363, 40.169807>,  <37.106899, 33.099213, 39.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935905, 33.402363, 40.169807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497138, -0.258249, 0.828349,
		0.755056, 0.599115, -0.266368,
		-0.427487, 0.757871, 0.492835,
		36.807659, 33.629723, 40.317657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586594, 33.543312, 40.334606>,  <37.106899, 33.099213, 39.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586594, 33.543312, 40.334606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255833, 33.628616, 40.542744>,  <37.057377, 33.679798, 40.667625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255833, 33.628616, 40.542744>,  <37.586594, 33.543312, 40.334606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255833, 33.628616, 40.542744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496129, -0.158956, 0.853574,
		0.264741, 0.963979, 0.025638,
		-0.826903, 0.213256, 0.520340,
		37.007763, 33.692593, 40.698845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731453, 33.925255, 40.977188>,  <37.586594, 33.543312, 40.334606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731453, 33.925255, 40.977188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362244, 33.806622, 41.075218>,  <37.140717, 33.735443, 41.134037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362244, 33.806622, 41.075218>,  <37.731453, 33.925255, 40.977188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362244, 33.806622, 41.075218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267241, -0.035990, 0.962957,
		-0.276774, 0.954330, 0.112478,
		-0.923027, -0.296580, 0.245075,
		37.085335, 33.717648, 41.148743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377880, 34.395721, 41.487328>,  <37.731453, 33.925255, 40.977188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377880, 34.395721, 41.487328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233841, 34.023483, 41.513611>,  <37.147419, 33.800140, 41.529381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233841, 34.023483, 41.513611>,  <37.377880, 34.395721, 41.487328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233841, 34.023483, 41.513611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128768, 0.020175, 0.991470,
		-0.923987, 0.365482, 0.112567,
		-0.360093, -0.930600, 0.065704,
		37.125813, 33.744305, 41.533321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270821, 34.396515, 42.123650>,  <37.377880, 34.395721, 41.487328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270821, 34.396515, 42.123650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208591, 34.006042, 42.063164>,  <37.171253, 33.771759, 42.026875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208591, 34.006042, 42.063164>,  <37.270821, 34.396515, 42.123650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208591, 34.006042, 42.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160861, -0.176068, 0.971146,
		-0.974639, 0.126756, 0.184420,
		-0.155569, -0.976183, -0.151212,
		37.161922, 33.713188, 42.017799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691097, 34.218792, 42.626324>,  <37.270821, 34.396515, 42.123650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691097, 34.218792, 42.626324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868519, 33.880470, 42.507751>,  <36.974972, 33.677475, 42.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868519, 33.880470, 42.507751>,  <36.691097, 34.218792, 42.626324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868519, 33.880470, 42.507751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156269, -0.398666, 0.903684,
		-0.882520, -0.354508, -0.309003,
		0.443552, -0.845807, -0.296432,
		37.001583, 33.626728, 42.418823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269466, 33.693417, 42.834038>,  <36.691097, 34.218792, 42.626324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269466, 33.693417, 42.834038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640984, 33.547863, 42.805954>,  <36.863895, 33.460529, 42.789104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640984, 33.547863, 42.805954>,  <36.269466, 33.693417, 42.834038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640984, 33.547863, 42.805954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048426, -0.306995, 0.950478,
		-0.367420, -0.879398, -0.302756,
		0.928794, -0.363886, -0.070210,
		36.919621, 33.438698, 42.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227654, 32.909325, 43.109337>,  <36.269466, 33.693417, 42.834038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227654, 32.909325, 43.109337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577824, 33.100204, 43.140110>,  <36.787926, 33.214733, 43.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577824, 33.100204, 43.140110>,  <36.227654, 32.909325, 43.109337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577824, 33.100204, 43.140110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030133, -0.212740, 0.976644,
		0.482422, -0.852656, -0.200616,
		0.875420, 0.477200, 0.076937,
		36.840450, 33.243362, 43.163193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344982, 32.674911, 43.728184>,  <36.227654, 32.909325, 43.109337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344982, 32.674911, 43.728184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637299, 32.936584, 43.650215>,  <36.812687, 33.093590, 43.603436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637299, 32.936584, 43.650215>,  <36.344982, 32.674911, 43.728184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637299, 32.936584, 43.650215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372060, -0.142331, 0.917231,
		0.572294, -0.742823, -0.347410,
		0.730788, 0.654184, -0.194920,
		36.856533, 33.132839, 43.591740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989483, 32.367783, 43.869946>,  <36.344982, 32.674911, 43.728184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989483, 32.367783, 43.869946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046112, 32.757389, 43.940655>,  <37.080090, 32.991154, 43.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046112, 32.757389, 43.940655>,  <36.989483, 32.367783, 43.869946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046112, 32.757389, 43.940655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324610, -0.214372, 0.921235,
		0.935193, -0.073039, -0.346524,
		0.141571, 0.974017, 0.176770,
		37.088585, 33.049595, 43.993687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745701, 32.533146, 44.125542>,  <36.989483, 32.367783, 43.869946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745701, 32.533146, 44.125542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524681, 32.850452, 44.227848>,  <37.392067, 33.040836, 44.289230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524681, 32.850452, 44.227848>,  <37.745701, 32.533146, 44.125542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524681, 32.850452, 44.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488848, 0.059901, 0.870310,
		0.675065, 0.605924, -0.420884,
		-0.552553, 0.793264, 0.255767,
		37.358913, 33.088432, 44.304577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239807, 32.873337, 44.557674>,  <37.745701, 32.533146, 44.125542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239807, 32.873337, 44.557674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880009, 33.014278, 44.661022>,  <37.664131, 33.098843, 44.723030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880009, 33.014278, 44.661022>,  <38.239807, 32.873337, 44.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880009, 33.014278, 44.661022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270866, -0.014306, 0.962511,
		0.342845, 0.935756, -0.082574,
		-0.899494, 0.352358, 0.258369,
		37.610161, 33.119987, 44.738533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344238, 33.504063, 44.978981>,  <38.239807, 32.873337, 44.557674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344238, 33.504063, 44.978981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980488, 33.368694, 45.075737>,  <37.762238, 33.287476, 45.133789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980488, 33.368694, 45.075737>,  <38.344238, 33.504063, 44.978981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980488, 33.368694, 45.075737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212166, 0.122834, 0.969483,
		-0.357802, 0.932944, -0.039901,
		-0.909375, -0.338418, 0.241889,
		37.707676, 33.267170, 45.148304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960442, 34.014088, 45.283340>,  <38.344238, 33.504063, 44.978981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960442, 34.014088, 45.283340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789616, 33.684460, 45.432209>,  <37.687119, 33.486683, 45.521530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789616, 33.684460, 45.432209>,  <37.960442, 34.014088, 45.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789616, 33.684460, 45.432209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250275, 0.287790, 0.924413,
		-0.868893, 0.487934, 0.083339,
		-0.427068, -0.824074, 0.372176,
		37.661495, 33.437237, 45.543861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783470, 34.251991, 45.973087>,  <37.960442, 34.014088, 45.283340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783470, 34.251991, 45.973087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729576, 33.855644, 45.971077>,  <37.697239, 33.617836, 45.969872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729576, 33.855644, 45.971077>,  <37.783470, 34.251991, 45.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729576, 33.855644, 45.971077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096349, -0.018152, 0.995182,
		-0.986186, 0.133606, 0.097915,
		-0.134739, -0.990868, -0.005028,
		37.689156, 33.558384, 45.969570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272392, 34.145950, 46.439442>,  <37.783470, 34.251991, 45.973087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272392, 34.145950, 46.439442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472080, 33.799629, 46.425777>,  <37.591892, 33.591835, 46.417580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472080, 33.799629, 46.425777>,  <37.272392, 34.145950, 46.439442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472080, 33.799629, 46.425777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027851, -0.023372, 0.999339,
		-0.866029, -0.499839, 0.012446,
		0.499217, -0.865803, -0.034161,
		37.621845, 33.539886, 46.415527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014420, 33.620800, 46.992805>,  <37.272392, 34.145950, 46.439442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014420, 33.620800, 46.992805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386684, 33.499519, 46.910881>,  <37.610043, 33.426750, 46.861725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386684, 33.499519, 46.910881>,  <37.014420, 33.620800, 46.992805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386684, 33.499519, 46.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168335, -0.142195, 0.975420,
		-0.324869, -0.942258, -0.081295,
		0.930657, -0.303199, -0.204810,
		37.665882, 33.408558, 46.849438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109245, 33.063103, 47.439842>,  <37.014420, 33.620800, 46.992805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109245, 33.063103, 47.439842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481777, 33.171345, 47.342354>,  <37.705296, 33.236290, 47.283863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481777, 33.171345, 47.342354>,  <37.109245, 33.063103, 47.439842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481777, 33.171345, 47.342354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286324, -0.130535, 0.949199,
		0.225047, -0.953799, -0.199052,
		0.931329, 0.270608, -0.243719,
		37.761177, 33.252525, 47.269238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552959, 32.681042, 47.946182>,  <37.109245, 33.063103, 47.439842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552959, 32.681042, 47.946182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813808, 32.953773, 47.813606>,  <37.970318, 33.117413, 47.734062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813808, 32.953773, 47.813606>,  <37.552959, 32.681042, 47.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813808, 32.953773, 47.813606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330811, 0.137444, 0.933634,
		0.682134, -0.718483, -0.135927,
		0.652118, 0.681830, -0.331437,
		38.009445, 33.158321, 47.714176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179932, 32.323029, 48.075542>,  <37.552959, 32.681042, 47.946182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179932, 32.323029, 48.075542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218597, 32.715385, 48.007996>,  <38.241795, 32.950798, 47.967468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218597, 32.715385, 48.007996>,  <38.179932, 32.323029, 48.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218597, 32.715385, 48.007996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362352, 0.123339, 0.923844,
		0.927015, -0.150490, -0.343504,
		0.096662, 0.980887, -0.168868,
		38.247597, 33.009651, 47.957336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833626, 32.514614, 48.381580>,  <38.179932, 32.323029, 48.075542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833626, 32.514614, 48.381580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651039, 32.868576, 48.344517>,  <38.541489, 33.080952, 48.322281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651039, 32.868576, 48.344517>,  <38.833626, 32.514614, 48.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651039, 32.868576, 48.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281811, 0.242569, 0.928301,
		0.843931, 0.397629, -0.360100,
		-0.456468, 0.884902, -0.092655,
		38.514099, 33.134048, 48.316719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361214, 32.942127, 48.536507>,  <38.833626, 32.514614, 48.381580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361214, 32.942127, 48.536507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026867, 33.155746, 48.587292>,  <38.826260, 33.283916, 48.617764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026867, 33.155746, 48.587292>,  <39.361214, 32.942127, 48.536507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026867, 33.155746, 48.587292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373388, 0.383610, 0.844645,
		0.402379, 0.753415, -0.520054,
		-0.835866, 0.534049, 0.126960,
		38.776108, 33.315960, 48.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524639, 33.632679, 48.588734>,  <39.361214, 32.942127, 48.536507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524639, 33.632679, 48.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161613, 33.609985, 48.755157>,  <38.943798, 33.596371, 48.855011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161613, 33.609985, 48.755157>,  <39.524639, 33.632679, 48.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161613, 33.609985, 48.755157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342438, 0.473454, 0.811528,
		-0.243022, 0.878990, -0.410264,
		-0.907566, -0.056730, 0.416059,
		38.889343, 33.592968, 48.879974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375275, 34.297821, 48.880478>,  <39.524639, 33.632679, 48.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375275, 34.297821, 48.880478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155243, 34.030598, 49.080921>,  <39.023224, 33.870262, 49.201187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155243, 34.030598, 49.080921>,  <39.375275, 34.297821, 48.880478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155243, 34.030598, 49.080921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183086, 0.488978, 0.852866,
		-0.814797, 0.560889, -0.146663,
		-0.550078, -0.668060, 0.501108,
		38.990219, 33.830181, 49.231255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683605, 35.016914, 49.149837>,  <39.375275, 34.297821, 48.880478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683605, 35.016914, 49.149837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615170, 35.206509, 49.495338>,  <39.574108, 35.320267, 49.702637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615170, 35.206509, 49.495338>,  <39.683605, 35.016914, 49.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615170, 35.206509, 49.495338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843435, 0.382675, -0.377063,
		-0.509259, -0.793028, 0.334307,
		-0.171091, 0.473989, 0.863749,
		39.563843, 35.348705, 49.754463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066875, 34.874733, 49.435436>,  <39.683605, 35.016914, 49.149837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066875, 34.874733, 49.435436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123276, 35.248260, 49.566952>,  <39.157116, 35.472378, 49.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123276, 35.248260, 49.566952>,  <39.066875, 34.874733, 49.435436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123276, 35.248260, 49.566952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861943, 0.279159, -0.423232,
		-0.487006, -0.223721, 0.844259,
		0.140997, 0.933820, 0.328787,
		39.165573, 35.528408, 49.665588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373890, 35.134918, 49.687073>,  <39.066875, 34.874733, 49.435436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373890, 35.134918, 49.687073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600376, 35.444992, 49.575012>,  <38.736267, 35.631039, 49.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600376, 35.444992, 49.575012>,  <38.373890, 35.134918, 49.687073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600376, 35.444992, 49.575012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653258, 0.214758, -0.726039,
		-0.502652, 0.594105, 0.627997,
		0.566211, 0.775189, -0.280155,
		38.770241, 35.677547, 49.490967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918274, 35.724384, 49.601574>,  <38.373890, 35.134918, 49.687073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918274, 35.724384, 49.601574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243561, 35.812618, 49.386162>,  <38.438732, 35.865559, 49.256916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243561, 35.812618, 49.386162>,  <37.918274, 35.724384, 49.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243561, 35.812618, 49.386162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579351, 0.394316, -0.713350,
		0.054997, 0.892109, 0.448462,
		0.813221, 0.220585, -0.538530,
		38.487526, 35.878792, 49.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725986, 36.384808, 49.281616>,  <37.918274, 35.724384, 49.601574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725986, 36.384808, 49.281616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039200, 36.273266, 49.059231>,  <38.227127, 36.206341, 48.925800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039200, 36.273266, 49.059231>,  <37.725986, 36.384808, 49.281616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039200, 36.273266, 49.059231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435932, 0.391521, -0.810355,
		0.443646, 0.876898, 0.185011,
		0.783034, -0.278858, -0.555964,
		38.274109, 36.189610, 48.892441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979500, 36.966000, 48.911293>,  <37.725986, 36.384808, 49.281616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979500, 36.966000, 48.911293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097511, 36.647713, 48.699711>,  <38.168320, 36.456741, 48.572762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097511, 36.647713, 48.699711>,  <37.979500, 36.966000, 48.911293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097511, 36.647713, 48.699711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316210, 0.441094, -0.839909,
		0.901648, 0.415060, -0.121477,
		0.295030, -0.795714, -0.528957,
		38.186020, 36.408997, 48.541023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144581, 37.233192, 48.286774>,  <37.979500, 36.966000, 48.911293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144581, 37.233192, 48.286774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135128, 36.841007, 48.208656>,  <38.129456, 36.605698, 48.161785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135128, 36.841007, 48.208656>,  <38.144581, 37.233192, 48.286774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135128, 36.841007, 48.208656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509943, 0.179849, -0.841197,
		0.859884, 0.079713, -0.504228,
		-0.023630, -0.980460, -0.195298,
		38.128040, 36.546871, 48.150066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574837, 37.075195, 47.670910>,  <38.144581, 37.233192, 48.286774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574837, 37.075195, 47.670910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298317, 36.787632, 47.699989>,  <38.132404, 36.615093, 47.717438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298317, 36.787632, 47.699989>,  <38.574837, 37.075195, 47.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298317, 36.787632, 47.699989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245548, 0.139100, -0.959353,
		0.679569, -0.681050, -0.272685,
		-0.691297, -0.718904, 0.072702,
		38.090927, 36.571960, 47.721802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654682, 36.736401, 46.952534>,  <38.574837, 37.075195, 47.670910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654682, 36.736401, 46.952534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307648, 36.631264, 47.121395>,  <38.099426, 36.568180, 47.222713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307648, 36.631264, 47.121395>,  <38.654682, 36.736401, 46.952534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307648, 36.631264, 47.121395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415763, -0.082370, -0.905735,
		0.272842, -0.961315, -0.037819,
		-0.867582, -0.262847, 0.422154,
		38.047375, 36.552410, 47.248043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626534, 36.184113, 46.660831>,  <38.654682, 36.736401, 46.952534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626534, 36.184113, 46.660831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256229, 36.285576, 46.772999>,  <38.034046, 36.346455, 46.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256229, 36.285576, 46.772999>,  <38.626534, 36.184113, 46.660831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256229, 36.285576, 46.772999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339021, -0.228396, -0.912634,
		-0.167446, -0.939945, 0.297433,
		-0.925758, 0.253653, 0.280417,
		37.978504, 36.361671, 46.857124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167038, 35.707321, 46.233250>,  <38.626534, 36.184113, 46.660831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167038, 35.707321, 46.233250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917301, 35.981434, 46.383232>,  <37.767460, 36.145901, 46.473221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917301, 35.981434, 46.383232>,  <38.167038, 35.707321, 46.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917301, 35.981434, 46.383232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537783, -0.028939, -0.842586,
		-0.566556, -0.727706, 0.386599,
		-0.624343, 0.685279, 0.374953,
		37.730000, 36.187019, 46.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441235, 35.483154, 46.054035>,  <38.167038, 35.707321, 46.233250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441235, 35.483154, 46.054035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412224, 35.873711, 46.135426>,  <37.394817, 36.108044, 46.184261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412224, 35.873711, 46.135426>,  <37.441235, 35.483154, 46.054035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412224, 35.873711, 46.135426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477806, 0.145064, -0.866405,
		-0.875466, -0.160064, 0.456003,
		-0.072531, 0.976389, 0.203478,
		37.390465, 36.166626, 46.196468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761204, 35.690464, 45.961071>,  <37.441235, 35.483154, 46.054035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761204, 35.690464, 45.961071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003254, 35.996368, 45.872559>,  <37.148483, 36.179909, 45.819450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003254, 35.996368, 45.872559>,  <36.761204, 35.690464, 45.961071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003254, 35.996368, 45.872559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514428, 0.163475, -0.841808,
		-0.607604, 0.623236, 0.492336,
		0.605129, 0.764757, -0.221282,
		37.184792, 36.225796, 45.806175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357059, 36.070812, 45.596127>,  <36.761204, 35.690464, 45.961071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357059, 36.070812, 45.596127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714848, 36.226948, 45.508904>,  <36.929520, 36.320629, 45.456570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714848, 36.226948, 45.508904>,  <36.357059, 36.070812, 45.596127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714848, 36.226948, 45.508904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344642, 0.291223, -0.892418,
		-0.284847, 0.873396, 0.395020,
		0.894474, 0.390343, -0.218055,
		36.983189, 36.344051, 45.443485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274990, 36.659241, 45.222836>,  <36.357059, 36.070812, 45.596127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274990, 36.659241, 45.222836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655449, 36.602097, 45.113354>,  <36.883724, 36.567810, 45.047665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655449, 36.602097, 45.113354>,  <36.274990, 36.659241, 45.222836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655449, 36.602097, 45.113354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224531, 0.288425, -0.930804,
		0.211923, 0.946785, 0.242256,
		0.951144, -0.142864, -0.273706,
		36.940792, 36.559238, 45.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427929, 37.161274, 44.690247>,  <36.274990, 36.659241, 45.222836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427929, 37.161274, 44.690247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696411, 36.870819, 44.630638>,  <36.857502, 36.696545, 44.594875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696411, 36.870819, 44.630638>,  <36.427929, 37.161274, 44.690247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696411, 36.870819, 44.630638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105085, 0.105792, -0.988820,
		0.733784, 0.679363, -0.005298,
		0.671207, -0.726137, -0.149019,
		36.897774, 36.652977, 44.585934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910206, 37.512970, 44.176319>,  <36.427929, 37.161274, 44.690247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910206, 37.512970, 44.176319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944538, 37.115799, 44.143501>,  <36.965137, 36.877495, 44.123810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944538, 37.115799, 44.143501>,  <36.910206, 37.512970, 44.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944538, 37.115799, 44.143501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081522, 0.075073, -0.993840,
		0.992969, 0.091989, -0.074502,
		0.085829, -0.992926, -0.082044,
		36.970287, 36.817921, 44.118889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373951, 37.420776, 43.658993>,  <36.910206, 37.512970, 44.176319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373951, 37.420776, 43.658993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218750, 37.053181, 43.687046>,  <37.125629, 36.832623, 43.703880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218750, 37.053181, 43.687046>,  <37.373951, 37.420776, 43.658993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218750, 37.053181, 43.687046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278971, -0.189630, -0.941391,
		0.878426, -0.345692, 0.329947,
		-0.387999, -0.918987, 0.070138,
		37.102348, 36.777485, 43.708088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790161, 36.940395, 43.170227>,  <37.373951, 37.420776, 43.658993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790161, 36.940395, 43.170227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 36.737587, 43.234013>,  <37.248047, 36.615902, 43.272282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 36.737587, 43.234013>,  <37.790161, 36.940395, 43.170227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451340, 36.737587, 43.234013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033176, -0.349867, -0.936212,
		0.530473, -0.787730, 0.313177,
		-0.847052, -0.507025, 0.159462,
		37.197224, 36.585480, 43.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899136, 36.232483, 42.861347>,  <37.790161, 36.940395, 43.170227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899136, 36.232483, 42.861347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505474, 36.295071, 42.894714>,  <37.269276, 36.332623, 42.914734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505474, 36.295071, 42.894714>,  <37.899136, 36.232483, 42.861347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505474, 36.295071, 42.894714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112396, -0.186600, -0.975986,
		-0.137144, -0.969896, 0.201229,
		-0.984154, 0.156468, 0.083421,
		37.210228, 36.342014, 42.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519497, 35.649742, 42.494362>,  <37.899136, 36.232483, 42.861347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519497, 35.649742, 42.494362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270344, 35.962349, 42.508522>,  <37.120853, 36.149914, 42.517017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270344, 35.962349, 42.508522>,  <37.519497, 35.649742, 42.494362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270344, 35.962349, 42.508522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297252, -0.194574, -0.934763,
		-0.723643, -0.592769, 0.353504,
		-0.622882, 0.781515, 0.035400,
		37.083481, 36.196804, 42.519142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894165, 35.379562, 42.058441>,  <37.519497, 35.649742, 42.494362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894165, 35.379562, 42.058441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850533, 35.775684, 42.092838>,  <36.824352, 36.013359, 42.113476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850533, 35.775684, 42.092838>,  <36.894165, 35.379562, 42.058441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850533, 35.775684, 42.092838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236357, 0.058192, -0.969922,
		-0.965524, -0.126124, 0.227718,
		-0.109079, 0.990306, 0.085996,
		36.817810, 36.072777, 42.118637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311024, 35.538193, 41.612942>,  <36.894165, 35.379562, 42.058441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311024, 35.538193, 41.612942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527924, 35.869976, 41.666573>,  <36.658062, 36.069046, 41.698750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527924, 35.869976, 41.666573>,  <36.311024, 35.538193, 41.612942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527924, 35.869976, 41.666573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066401, 0.201374, -0.977261,
		-0.837592, 0.521012, 0.164271,
		0.542245, 0.829454, 0.134074,
		36.690598, 36.118813, 41.706795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001324, 36.034180, 41.212994>,  <36.311024, 35.538193, 41.612942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001324, 36.034180, 41.212994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361111, 36.188663, 41.294781>,  <36.576981, 36.281353, 41.343853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361111, 36.188663, 41.294781>,  <36.001324, 36.034180, 41.212994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361111, 36.188663, 41.294781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143472, 0.180970, -0.972967,
		-0.412769, 0.904486, 0.107366,
		0.899465, 0.386207, 0.204467,
		36.630951, 36.304527, 41.356121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958340, 36.698135, 40.886566>,  <36.001324, 36.034180, 41.212994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958340, 36.698135, 40.886566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334064, 36.564266, 40.916733>,  <36.559498, 36.483944, 40.934834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334064, 36.564266, 40.916733>,  <35.958340, 36.698135, 40.886566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334064, 36.564266, 40.916733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120481, 0.115990, -0.985916,
		0.321211, 0.935169, 0.149272,
		0.939312, -0.334671, 0.075413,
		36.615860, 36.463863, 40.939358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294327, 37.136906, 40.455837>,  <35.958340, 36.698135, 40.886566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294327, 37.136906, 40.455837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553253, 36.835648, 40.502743>,  <36.708607, 36.654892, 40.530888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553253, 36.835648, 40.502743>,  <36.294327, 37.136906, 40.455837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553253, 36.835648, 40.502743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348814, 0.155908, -0.924133,
		0.677727, 0.639108, 0.363630,
		0.647314, -0.753149, 0.117266,
		36.747448, 36.609703, 40.537922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992657, 37.388828, 40.136082>,  <36.294327, 37.136906, 40.455837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992657, 37.388828, 40.136082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009132, 36.990025, 40.162216>,  <37.019016, 36.750740, 40.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009132, 36.990025, 40.162216>,  <36.992657, 37.388828, 40.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009132, 36.990025, 40.162216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166334, -0.057636, -0.984384,
		0.985209, 0.051411, 0.163463,
		0.041187, -0.997013, 0.065335,
		37.021488, 36.690922, 40.181816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574039, 37.200569, 39.813496>,  <36.992657, 37.388828, 40.136082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574039, 37.200569, 39.813496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351509, 36.868313, 39.804256>,  <37.217991, 36.668957, 39.798714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351509, 36.868313, 39.804256>,  <37.574039, 37.200569, 39.813496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351509, 36.868313, 39.804256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166755, -0.084370, -0.982382,
		0.814060, -0.550377, 0.185451,
		-0.556326, -0.830643, -0.023096,
		37.184612, 36.619122, 39.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913322, 36.774750, 39.429104>,  <37.574039, 37.200569, 39.813496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913322, 36.774750, 39.429104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558239, 36.593410, 39.396992>,  <37.345188, 36.484608, 39.377724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558239, 36.593410, 39.396992>,  <37.913322, 36.774750, 39.429104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558239, 36.593410, 39.396992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151442, -0.122855, -0.980802,
		0.434782, -0.882826, 0.177716,
		-0.887711, -0.453348, -0.080282,
		37.291927, 36.457405, 39.372906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021553, 36.093399, 39.132896>,  <37.913322, 36.774750, 39.429104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021553, 36.093399, 39.132896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637299, 36.140469, 39.032234>,  <37.406746, 36.168713, 38.971836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637299, 36.140469, 39.032234>,  <38.021553, 36.093399, 39.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637299, 36.140469, 39.032234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259578, 0.057427, -0.964013,
		-0.098991, -0.991390, -0.085713,
		-0.960635, 0.117677, -0.251658,
		37.349110, 36.175770, 38.956738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976307, 35.910744, 38.449169>,  <38.021553, 36.093399, 39.132896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976307, 35.910744, 38.449169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609253, 36.069504, 38.457344>,  <37.389019, 36.164761, 38.462250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609253, 36.069504, 38.457344>,  <37.976307, 35.910744, 38.449169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609253, 36.069504, 38.457344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035714, 0.133581, -0.990394,
		-0.395817, -0.908090, -0.136753,
		-0.917635, 0.396899, 0.020442,
		37.333961, 36.188572, 38.463478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720528, 35.622925, 37.922237>,  <37.976307, 35.910744, 38.449169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720528, 35.622925, 37.922237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504459, 35.951958, 37.993309>,  <37.374817, 36.149380, 38.035950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504459, 35.951958, 37.993309>,  <37.720528, 35.622925, 37.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504459, 35.951958, 37.993309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034479, 0.232583, -0.971965,
		-0.840849, -0.518901, -0.153996,
		-0.540171, 0.822585, 0.177676,
		37.342407, 36.198734, 38.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233372, 35.703148, 37.400890>,  <37.720528, 35.622925, 37.922237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233372, 35.703148, 37.400890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265369, 36.072567, 37.550911>,  <37.284569, 36.294220, 37.640923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265369, 36.072567, 37.550911>,  <37.233372, 35.703148, 37.400890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265369, 36.072567, 37.550911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165544, 0.383338, -0.908651,
		-0.982953, 0.010597, 0.183551,
		0.079991, 0.923547, 0.375049,
		37.289368, 36.349632, 37.663425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795395, 36.098534, 36.914463>,  <37.233372, 35.703148, 37.400890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795395, 36.098534, 36.914463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010998, 36.374958, 37.107090>,  <37.140358, 36.540813, 37.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010998, 36.374958, 37.107090>,  <36.795395, 36.098534, 36.914463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010998, 36.374958, 37.107090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031166, 0.587702, -0.808477,
		-0.841724, 0.420767, 0.338313,
		0.539008, 0.691058, 0.481570,
		37.172699, 36.582275, 37.251560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485535, 36.681198, 36.615353>,  <36.795395, 36.098534, 36.914463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485535, 36.681198, 36.615353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838371, 36.790630, 36.768749>,  <37.050076, 36.856289, 36.860786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838371, 36.790630, 36.768749>,  <36.485535, 36.681198, 36.615353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838371, 36.790630, 36.768749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115942, 0.662949, -0.739632,
		-0.456579, 0.696889, 0.553065,
		0.882096, 0.273577, 0.383487,
		37.103001, 36.872704, 36.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507694, 37.432411, 36.554211>,  <36.485535, 36.681198, 36.615353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507694, 37.432411, 36.554211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886806, 37.308880, 36.586060>,  <37.114273, 37.234760, 36.605167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886806, 37.308880, 36.586060>,  <36.507694, 37.432411, 36.554211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886806, 37.308880, 36.586060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258125, 0.596176, -0.760227,
		0.187310, 0.741080, 0.644760,
		0.947780, -0.308827, 0.079622,
		37.171139, 37.216232, 36.609947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916805, 38.098713, 36.486229>,  <36.507694, 37.432411, 36.554211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916805, 38.098713, 36.486229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183281, 37.810040, 36.411007>,  <37.343166, 37.636837, 36.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183281, 37.810040, 36.411007>,  <36.916805, 38.098713, 36.486229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183281, 37.810040, 36.411007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374596, 0.541849, -0.752381,
		0.644875, 0.430788, 0.631315,
		0.666194, -0.721680, -0.188054,
		37.383141, 37.593536, 36.354591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597118, 38.387253, 36.370533>,  <36.916805, 38.098713, 36.486229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597118, 38.387253, 36.370533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595932, 38.028492, 36.193645>,  <37.595219, 37.813236, 36.087513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595932, 38.028492, 36.193645>,  <37.597118, 38.387253, 36.370533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595932, 38.028492, 36.193645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397873, 0.404649, -0.823381,
		0.917436, -0.178386, 0.355655,
		-0.002965, -0.896905, -0.442214,
		37.595043, 37.759422, 36.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293575, 38.439720, 36.011250>,  <37.597118, 38.387253, 36.370533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293575, 38.439720, 36.011250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066715, 38.158417, 35.839775>,  <37.930599, 37.989635, 35.736889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066715, 38.158417, 35.839775>,  <38.293575, 38.439720, 36.011250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066715, 38.158417, 35.839775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250618, 0.348458, -0.903198,
		0.784559, -0.619685, -0.021379,
		-0.567148, -0.703255, -0.428691,
		37.896572, 37.947441, 35.711166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698063, 38.132999, 35.547459>,  <38.293575, 38.439720, 36.011250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698063, 38.132999, 35.547459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322781, 38.062965, 35.428043>,  <38.097610, 38.020947, 35.356396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322781, 38.062965, 35.428043>,  <38.698063, 38.132999, 35.547459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322781, 38.062965, 35.428043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257128, 0.224750, -0.939879,
		0.231674, -0.958554, -0.165835,
		-0.938197, -0.175105, -0.298540,
		38.041321, 38.010441, 35.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796597, 37.835270, 34.908451>,  <38.698063, 38.132999, 35.547459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796597, 37.835270, 34.908451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409763, 37.932983, 34.936958>,  <38.177666, 37.991611, 34.954063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409763, 37.932983, 34.936958>,  <38.796597, 37.835270, 34.908451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409763, 37.932983, 34.936958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002194, 0.288064, -0.957609,
		-0.254459, -0.925929, -0.279117,
		-0.967081, 0.244285, 0.071269,
		38.119640, 38.006268, 34.958340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603458, 37.525372, 34.261925>,  <38.796597, 37.835270, 34.908451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603458, 37.525372, 34.261925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341751, 37.797016, 34.395035>,  <38.184727, 37.960003, 34.474899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341751, 37.797016, 34.395035>,  <38.603458, 37.525372, 34.261925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341751, 37.797016, 34.395035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221824, 0.248338, -0.942933,
		-0.722998, -0.690749, -0.011837,
		-0.654270, 0.679113, 0.332772,
		38.145470, 38.000751, 34.494865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190174, 37.952000, 33.903919>,  <38.603458, 37.525372, 34.261925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190174, 37.952000, 33.903919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394112, 37.848454, 34.232075>,  <39.516476, 37.786327, 34.428970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394112, 37.848454, 34.232075>,  <39.190174, 37.952000, 33.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394112, 37.848454, 34.232075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853067, 0.275250, -0.443300,
		-0.111058, 0.925865, 0.361165,
		0.509846, -0.258866, 0.820393,
		39.547066, 37.770794, 34.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658398, 38.481998, 33.906494>,  <39.190174, 37.952000, 33.903919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658398, 38.481998, 33.906494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783390, 38.142239, 34.076614>,  <39.858387, 37.938385, 34.178688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783390, 38.142239, 34.076614>,  <39.658398, 38.481998, 33.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783390, 38.142239, 34.076614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898085, 0.118281, -0.423618,
		0.309514, 0.514332, 0.799790,
		0.312480, -0.849395, 0.425304,
		39.877132, 37.887421, 34.204205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328148, 38.614513, 34.193779>,  <39.658398, 38.481998, 33.906494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328148, 38.614513, 34.193779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266014, 38.235435, 34.082253>,  <40.228733, 38.007988, 34.015335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266014, 38.235435, 34.082253>,  <40.328148, 38.614513, 34.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266014, 38.235435, 34.082253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775857, 0.057674, -0.628267,
		0.611488, -0.313911, 0.726321,
		-0.155330, -0.947699, -0.278817,
		40.219414, 37.951126, 33.998608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813942, 38.254379, 34.443932>,  <40.328148, 38.614513, 34.193779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813942, 38.254379, 34.443932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694649, 38.056450, 34.117447>,  <40.623074, 37.937691, 33.921555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694649, 38.056450, 34.117447>,  <40.813942, 38.254379, 34.443932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694649, 38.056450, 34.117447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911040, 0.107505, -0.398058,
		0.284716, -0.862317, 0.418743,
		-0.298235, -0.494825, -0.816214,
		40.605179, 37.908001, 33.872581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399502, 37.715744, 34.263329>,  <40.813942, 38.254379, 34.443932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399502, 37.715744, 34.263329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193970, 37.863667, 33.953693>,  <41.070648, 37.952419, 33.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193970, 37.863667, 33.953693>,  <41.399502, 37.715744, 34.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193970, 37.863667, 33.953693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840001, 0.400184, -0.366402,
		0.174280, -0.838507, -0.516268,
		-0.513833, 0.369809, -0.774091,
		41.039822, 37.974609, 33.721466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532467, 38.265965, 33.865501>,  <41.399502, 37.715744, 34.263329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532467, 38.265965, 33.865501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505493, 38.462215, 34.213005>,  <41.489307, 38.579964, 34.421509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505493, 38.462215, 34.213005>,  <41.532467, 38.265965, 33.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505493, 38.462215, 34.213005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759936, 0.538953, -0.363356,
		-0.646491, -0.684703, 0.336499,
		-0.067434, 0.490624, 0.868758,
		41.485264, 38.609402, 34.473633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205082, 38.082546, 33.707054>,  <41.532467, 38.265965, 33.865501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205082, 38.082546, 33.707054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576302, 38.060429, 33.559715>,  <42.799034, 38.047157, 33.471313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576302, 38.060429, 33.559715>,  <42.205082, 38.082546, 33.707054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576302, 38.060429, 33.559715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086225, 0.993949, 0.068046,
		0.362352, -0.094910, 0.927197,
		0.928045, -0.055291, -0.368343,
		42.854713, 38.043842, 33.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543293, 38.433830, 34.131798>,  <42.205082, 38.082546, 33.707054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543293, 38.433830, 34.131798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792091, 38.438389, 33.818623>,  <42.941368, 38.441124, 33.630718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792091, 38.438389, 33.818623>,  <42.543293, 38.433830, 34.131798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792091, 38.438389, 33.818623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111358, 0.988443, 0.102860,
		0.775064, -0.151165, 0.613534,
		0.621992, 0.011401, -0.782940,
		42.978687, 38.441811, 33.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141026, 38.881382, 34.281151>,  <42.543293, 38.433830, 34.131798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141026, 38.881382, 34.281151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194664, 38.851200, 33.885914>,  <43.226849, 38.833092, 33.648773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194664, 38.851200, 33.885914>,  <43.141026, 38.881382, 34.281151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194664, 38.851200, 33.885914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209004, 0.976821, -0.046231,
		0.968677, -0.200316, 0.146760,
		0.134097, -0.075456, -0.988091,
		43.234894, 38.828564, 33.589485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774132, 39.245903, 34.102547>,  <43.141026, 38.881382, 34.281151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774132, 39.245903, 34.102547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539597, 39.246220, 33.778522>,  <43.398876, 39.246410, 33.584106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539597, 39.246220, 33.778522>,  <43.774132, 39.245903, 34.102547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539597, 39.246220, 33.778522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153930, 0.981888, -0.110458,
		0.795305, -0.189459, -0.575843,
		-0.586341, 0.000792, -0.810064,
		43.363693, 39.246456, 33.535503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127254, 39.617603, 33.549610>,  <43.774132, 39.245903, 34.102547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127254, 39.617603, 33.549610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750751, 39.624928, 33.414738>,  <43.524849, 39.629322, 33.333813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750751, 39.624928, 33.414738>,  <44.127254, 39.617603, 33.549610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750751, 39.624928, 33.414738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149309, 0.918183, -0.366942,
		0.302879, -0.395733, -0.866983,
		-0.941261, 0.018310, -0.337185,
		43.468372, 39.630421, 33.313583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251282, 39.945164, 32.991173>,  <44.127254, 39.617603, 33.549610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251282, 39.945164, 32.991173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855644, 39.997883, 33.017445>,  <43.618259, 40.029514, 33.033207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855644, 39.997883, 33.017445>,  <44.251282, 39.945164, 32.991173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855644, 39.997883, 33.017445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082020, 0.863507, -0.497623,
		-0.122303, -0.486811, -0.864903,
		-0.989098, 0.131800, 0.065681,
		43.558914, 40.037422, 33.037148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037411, 40.151100, 32.370796>,  <44.251282, 39.945164, 32.991173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037411, 40.151100, 32.370796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779579, 40.292576, 32.641918>,  <43.624882, 40.377460, 32.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779579, 40.292576, 32.641918>,  <44.037411, 40.151100, 32.370796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779579, 40.292576, 32.641918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019683, 0.893938, -0.447758,
		-0.764287, -0.275273, -0.583173,
		-0.644577, 0.353694, 0.677807,
		43.586205, 40.398685, 32.845261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661739, 40.499157, 31.956848>,  <44.037411, 40.151100, 32.370796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661739, 40.499157, 31.956848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585243, 40.647583, 32.320328>,  <43.539345, 40.736641, 32.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585243, 40.647583, 32.320328>,  <43.661739, 40.499157, 31.956848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585243, 40.647583, 32.320328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188985, 0.922385, -0.336883,
		-0.963179, 0.107307, -0.246520,
		-0.191236, 0.371067, 0.908701,
		43.527874, 40.758904, 32.592937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114666, 40.949913, 31.869993>,  <43.661739, 40.499157, 31.956848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114666, 40.949913, 31.869993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322540, 41.064137, 32.192081>,  <43.447266, 41.132671, 32.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322540, 41.064137, 32.192081>,  <43.114666, 40.949913, 31.869993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322540, 41.064137, 32.192081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084316, 0.920745, -0.380944,
		-0.850187, 0.265864, 0.454420,
		0.519685, 0.285559, 0.805223,
		43.478447, 41.149803, 32.433647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851448, 41.575874, 31.959099>,  <43.114666, 40.949913, 31.869993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851448, 41.575874, 31.959099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161106, 41.591114, 32.211842>,  <43.346901, 41.600258, 32.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161106, 41.591114, 32.211842>,  <42.851448, 41.575874, 31.959099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161106, 41.591114, 32.211842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244897, 0.902431, -0.354464,
		-0.583713, 0.429147, 0.689283,
		0.774148, 0.038103, 0.631857,
		43.393349, 41.602543, 32.401398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861095, 42.249191, 32.149635>,  <42.851448, 41.575874, 31.959099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861095, 42.249191, 32.149635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223324, 42.134300, 32.274498>,  <43.440662, 42.065365, 32.349415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223324, 42.134300, 32.274498>,  <42.861095, 42.249191, 32.149635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223324, 42.134300, 32.274498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343536, 0.928272, -0.142457,
		-0.248852, 0.236243, 0.939288,
		0.905569, -0.287228, 0.312160,
		43.494995, 42.048130, 32.368145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968544, 42.714653, 32.618382>,  <42.861095, 42.249191, 32.149635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968544, 42.714653, 32.618382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314838, 42.546345, 32.509968>,  <43.522614, 42.445358, 32.444920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314838, 42.546345, 32.509968>,  <42.968544, 42.714653, 32.618382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314838, 42.546345, 32.509968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384544, 0.905798, -0.177921,
		0.320367, 0.049808, 0.945984,
		0.865732, -0.420772, -0.271034,
		43.574558, 42.420113, 32.428658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478542, 43.145725, 32.912369>,  <42.968544, 42.714653, 32.618382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478542, 43.145725, 32.912369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675640, 42.948471, 32.625591>,  <43.793900, 42.830116, 32.453526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675640, 42.948471, 32.625591>,  <43.478542, 43.145725, 32.912369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675640, 42.948471, 32.625591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595239, 0.792012, -0.135673,
		0.634736, -0.359902, 0.683799,
		0.492748, -0.493140, -0.716946,
		43.823463, 42.800529, 32.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226486, 43.122524, 32.941284>,  <43.478542, 43.145725, 32.912369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226486, 43.122524, 32.941284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145927, 43.084892, 32.551292>,  <44.097591, 43.062313, 32.317295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145927, 43.084892, 32.551292>,  <44.226486, 43.122524, 32.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145927, 43.084892, 32.551292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566903, 0.800530, -0.194349,
		0.798786, -0.591861, -0.107892,
		-0.201399, -0.094079, -0.974981,
		44.085510, 43.056667, 32.258797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907024, 43.418926, 32.571564>,  <44.226486, 43.122524, 32.941284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907024, 43.418926, 32.571564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631092, 43.380764, 32.284500>,  <44.465534, 43.357868, 32.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631092, 43.380764, 32.284500>,  <44.907024, 43.418926, 32.571564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631092, 43.380764, 32.284500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309342, 0.857393, -0.411321,
		0.654559, -0.505743, -0.561940,
		-0.689826, -0.095402, -0.717661,
		44.424145, 43.352142, 32.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295940, 43.415974, 31.936592>,  <44.907024, 43.418926, 32.571564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295940, 43.415974, 31.936592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918510, 43.534012, 31.876486>,  <44.692051, 43.604836, 31.840422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918510, 43.534012, 31.876486>,  <45.295940, 43.415974, 31.936592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918510, 43.534012, 31.876486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308195, 0.948559, -0.072463,
		0.121150, -0.114685, -0.985987,
		-0.943577, 0.295098, -0.150263,
		44.635437, 43.622540, 31.831408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242252, 43.675194, 31.168571>,  <45.295940, 43.415974, 31.936592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242252, 43.675194, 31.168571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946716, 43.816078, 31.398375>,  <44.769394, 43.900608, 31.536257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946716, 43.816078, 31.398375>,  <45.242252, 43.675194, 31.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946716, 43.816078, 31.398375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246249, 0.934695, -0.256333,
		-0.627272, -0.047918, -0.777325,
		-0.738844, 0.352207, 0.574508,
		44.725063, 43.921741, 31.570726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993893, 44.277294, 30.833555>,  <45.242252, 43.675194, 31.168571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993893, 44.277294, 30.833555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832512, 44.347488, 31.192760>,  <44.735683, 44.389606, 31.408283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832512, 44.347488, 31.192760>,  <44.993893, 44.277294, 30.833555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832512, 44.347488, 31.192760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224259, 0.970467, -0.088890,
		-0.887093, 0.165526, -0.430891,
		-0.403452, 0.175485, 0.898015,
		44.711475, 44.400135, 31.462166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473675, 44.873741, 30.822527>,  <44.993893, 44.277294, 30.833555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473675, 44.873741, 30.822527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628147, 44.832031, 31.189131>,  <44.720833, 44.807003, 31.409092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628147, 44.832031, 31.189131>,  <44.473675, 44.873741, 30.822527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628147, 44.832031, 31.189131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197600, 0.979876, 0.028227,
		-0.901009, 0.170201, 0.399018,
		0.386184, -0.104279, 0.916509,
		44.744003, 44.800747, 31.464083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389721, 45.566147, 31.104902>,  <44.473675, 44.873741, 30.822527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389721, 45.566147, 31.104902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577774, 45.413761, 31.423359>,  <44.690605, 45.322330, 31.614433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577774, 45.413761, 31.423359>,  <44.389721, 45.566147, 31.104902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577774, 45.413761, 31.423359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303605, 0.916803, 0.259415,
		-0.828732, 0.119753, 0.546682,
		0.470134, -0.380961, 0.796142,
		44.718815, 45.299473, 31.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170868, 45.940521, 31.716621>,  <44.389721, 45.566147, 31.104902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170868, 45.940521, 31.716621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525921, 45.772141, 31.791363>,  <44.738953, 45.671112, 31.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525921, 45.772141, 31.791363>,  <44.170868, 45.940521, 31.716621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525921, 45.772141, 31.791363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357553, 0.885572, 0.296509,
		-0.290287, -0.196381, 0.936572,
		0.887631, -0.420947, 0.186854,
		44.792210, 45.645855, 31.847420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407066, 46.089577, 32.436642>,  <44.170868, 45.940521, 31.716621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407066, 46.089577, 32.436642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729450, 46.006920, 32.214748>,  <44.922878, 45.957325, 32.081612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729450, 46.006920, 32.214748>,  <44.407066, 46.089577, 32.436642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729450, 46.006920, 32.214748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443855, 0.831002, 0.335304,
		0.391696, -0.516462, 0.761473,
		0.805957, -0.206646, -0.554735,
		44.971237, 45.944927, 32.048328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036419, 46.188499, 32.860222>,  <44.407066, 46.089577, 32.436642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036419, 46.188499, 32.860222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111195, 46.249302, 32.472008>,  <45.156059, 46.285782, 32.239079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111195, 46.249302, 32.472008>,  <45.036419, 46.188499, 32.860222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111195, 46.249302, 32.472008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394478, 0.893188, 0.215873,
		0.899689, -0.423213, 0.107011,
		0.186942, 0.152005, -0.970540,
		45.167278, 46.294903, 32.180847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754524, 46.433765, 32.752201>,  <45.036419, 46.188499, 32.860222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754524, 46.433765, 32.752201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542931, 46.564571, 32.438961>,  <45.415974, 46.643055, 32.251019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542931, 46.564571, 32.438961>,  <45.754524, 46.433765, 32.752201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542931, 46.564571, 32.438961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333340, 0.928674, 0.162630,
		0.780423, -0.175009, -0.600260,
		-0.528985, 0.327011, -0.783096,
		45.384235, 46.662674, 32.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198948, 46.800869, 32.353687>,  <45.754524, 46.433765, 32.752201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198948, 46.800869, 32.353687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833443, 46.950443, 32.290184>,  <45.614140, 47.040188, 32.252083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833443, 46.950443, 32.290184>,  <46.198948, 46.800869, 32.353687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833443, 46.950443, 32.290184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382054, 0.923855, -0.022959,
		0.138086, -0.081634, -0.987050,
		-0.913765, 0.373937, -0.158760,
		45.559315, 47.062626, 32.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439983, 47.104870, 32.988708>,  <46.198948, 46.800869, 32.353687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439983, 47.104870, 32.988708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477089, 47.492855, 33.078651>,  <46.499352, 47.725647, 33.132618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477089, 47.492855, 33.078651>,  <46.439983, 47.104870, 32.988708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477089, 47.492855, 33.078651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922513, -0.168704, 0.347143,
		0.374652, 0.175235, -0.910455,
		0.092766, 0.969965, 0.224862,
		46.504917, 47.783844, 33.146111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407413, 46.535667, 33.618286>,  <46.439983, 47.104870, 32.988708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407413, 46.535667, 33.618286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691364, 46.538021, 33.900005>,  <46.861736, 46.539433, 34.069038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691364, 46.538021, 33.900005>,  <46.407413, 46.535667, 33.618286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691364, 46.538021, 33.900005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703518, -0.041878, 0.709443,
		0.033673, -0.999105, -0.025585,
		0.709879, 0.005889, 0.704298,
		46.904327, 46.539787, 34.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526085, 45.889111, 34.057884>,  <46.407413, 46.535667, 33.618286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526085, 45.889111, 34.057884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587650, 46.237427, 34.244663>,  <46.624592, 46.446415, 34.356731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587650, 46.237427, 34.244663>,  <46.526085, 45.889111, 34.057884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587650, 46.237427, 34.244663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835527, -0.137567, 0.531950,
		0.527451, -0.472024, 0.706391,
		0.153917, 0.870786, 0.466949,
		46.633827, 46.498661, 34.384747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162151, 45.780014, 34.698753>,  <46.526085, 45.889111, 34.057884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162151, 45.780014, 34.698753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189625, 46.153694, 34.558727>,  <46.206108, 46.377903, 34.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189625, 46.153694, 34.558727>,  <46.162151, 45.780014, 34.698753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189625, 46.153694, 34.558727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946217, 0.172203, 0.273897,
		0.316158, 0.312427, 0.895787,
		0.068685, 0.934203, -0.350067,
		46.210232, 46.433956, 34.453709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553020, 45.671360, 35.205730>,  <46.162151, 45.780014, 34.698753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553020, 45.671360, 35.205730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244373, 45.878700, 35.353199>,  <45.059185, 46.003105, 35.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244373, 45.878700, 35.353199>,  <45.553020, 45.671360, 35.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244373, 45.878700, 35.353199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490236, -0.853929, 0.174568,
		0.405310, -0.046039, 0.913019,
		-0.771617, 0.518349, 0.368676,
		45.012890, 46.034206, 35.463802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422867, 45.669571, 35.987347>,  <45.553020, 45.671360, 35.205730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422867, 45.669571, 35.987347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141403, 45.690311, 35.703892>,  <44.972523, 45.702755, 35.533817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141403, 45.690311, 35.703892>,  <45.422867, 45.669571, 35.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141403, 45.690311, 35.703892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237887, -0.956969, 0.166191,
		-0.669528, 0.285519, 0.685719,
		-0.703663, 0.051854, -0.708639,
		44.930305, 45.705868, 35.491299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764633, 45.351139, 36.238098>,  <45.422867, 45.669571, 35.987347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764633, 45.351139, 36.238098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832397, 45.296715, 35.847656>,  <44.873055, 45.264061, 35.613392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832397, 45.296715, 35.847656>,  <44.764633, 45.351139, 36.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832397, 45.296715, 35.847656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053958, -0.990220, 0.128662,
		-0.984068, 0.030873, -0.175092,
		0.169407, -0.136060, -0.976109,
		44.883221, 45.255898, 35.554825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132599, 45.016636, 35.847710>,  <44.764633, 45.351139, 36.238098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132599, 45.016636, 35.847710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443291, 44.921566, 35.614403>,  <44.629707, 44.864525, 35.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443291, 44.921566, 35.614403>,  <44.132599, 45.016636, 35.847710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443291, 44.921566, 35.614403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208079, -0.970903, 0.118536,
		-0.594466, 0.029294, -0.803587,
		0.776732, -0.237676, -0.583264,
		44.676311, 44.850262, 35.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989231, 44.368004, 35.491913>,  <44.132599, 45.016636, 35.847710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989231, 44.368004, 35.491913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385403, 44.384167, 35.439133>,  <44.623108, 44.393864, 35.407467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385403, 44.384167, 35.439133>,  <43.989231, 44.368004, 35.491913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385403, 44.384167, 35.439133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043465, -0.998848, 0.020345,
		-0.130973, -0.025885, -0.991048,
		0.990433, 0.040411, -0.131947,
		44.682533, 44.396290, 35.399548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102188, 43.861103, 35.003788>,  <43.989231, 44.368004, 35.491913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102188, 43.861103, 35.003788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443493, 43.929359, 35.200897>,  <44.648273, 43.970314, 35.319164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443493, 43.929359, 35.200897>,  <44.102188, 43.861103, 35.003788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443493, 43.929359, 35.200897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, -0.985206, 0.071439,
		0.497677, 0.015807, -0.867218,
		0.853259, 0.170646, 0.492777,
		44.699471, 43.980553, 35.348732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713470, 43.523243, 34.608383>,  <44.102188, 43.861103, 35.003788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713470, 43.523243, 34.608383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800671, 43.551788, 34.997719>,  <44.852993, 43.568916, 35.231319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800671, 43.551788, 34.997719>,  <44.713470, 43.523243, 34.608383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800671, 43.551788, 34.997719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330939, -0.943639, -0.004936,
		0.918125, 0.323191, -0.229333,
		0.218003, 0.071363, 0.973335,
		44.866070, 43.573196, 35.289719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346264, 43.284718, 34.602493>,  <44.713470, 43.523243, 34.608383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346264, 43.284718, 34.602493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216496, 43.244148, 34.978676>,  <45.138634, 43.219807, 35.204388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216496, 43.244148, 34.978676>,  <45.346264, 43.284718, 34.602493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216496, 43.244148, 34.978676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365159, -0.930593, 0.025608,
		0.872589, 0.351725, 0.338937,
		-0.324420, -0.101420, 0.940460,
		45.119171, 43.213722, 35.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992443, 42.895107, 34.875793>,  <45.346264, 43.284718, 34.602493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992443, 42.895107, 34.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721050, 42.845726, 35.165462>,  <45.558216, 42.816097, 35.339264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721050, 42.845726, 35.165462>,  <45.992443, 42.895107, 34.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721050, 42.845726, 35.165462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283037, -0.953605, 0.102608,
		0.677904, 0.274584, 0.681945,
		-0.678481, -0.123457, 0.724170,
		45.517506, 42.808689, 35.382713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342728, 42.608707, 35.477451>,  <45.992443, 42.895107, 34.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342728, 42.608707, 35.477451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956078, 42.507050, 35.490383>,  <45.724087, 42.446056, 35.498142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956078, 42.507050, 35.490383>,  <46.342728, 42.608707, 35.477451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956078, 42.507050, 35.490383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255364, -0.965934, 0.041961,
		0.020566, 0.048816, 0.998596,
		-0.966626, -0.254142, 0.032331,
		45.666088, 42.430805, 35.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317642, 42.121990, 36.016148>,  <46.342728, 42.608707, 35.477451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317642, 42.121990, 36.016148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994678, 42.052658, 35.790565>,  <45.800900, 42.011059, 35.655216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994678, 42.052658, 35.790565>,  <46.317642, 42.121990, 36.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994678, 42.052658, 35.790565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198457, -0.979961, 0.017052,
		-0.555608, -0.098153, 0.825631,
		-0.807412, -0.173326, -0.563953,
		45.752453, 42.000660, 35.621380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792080, 41.574402, 36.378288>,  <46.317642, 42.121990, 36.016148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792080, 41.574402, 36.378288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753391, 41.580837, 35.980217>,  <45.730179, 41.584698, 35.741375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753391, 41.580837, 35.980217>,  <45.792080, 41.574402, 36.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753391, 41.580837, 35.980217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032460, -0.999389, -0.013002,
		-0.994781, 0.031046, 0.097190,
		-0.096727, 0.016089, -0.995181,
		45.724373, 41.585663, 35.681664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582676, 40.920071, 36.226383>,  <45.792080, 41.574402, 36.378288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582676, 40.920071, 36.226383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592949, 41.028610, 35.841526>,  <45.599113, 41.093735, 35.610611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592949, 41.028610, 35.841526>,  <45.582676, 40.920071, 36.226383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592949, 41.028610, 35.841526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232546, -0.934432, -0.269738,
		-0.972246, 0.230669, 0.039104,
		0.025680, 0.271345, -0.962140,
		45.600655, 41.110012, 35.552883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901592, 40.784950, 35.927944>,  <45.582676, 40.920071, 36.226383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901592, 40.784950, 35.927944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175640, 40.760372, 35.637611>,  <45.340069, 40.745625, 35.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175640, 40.760372, 35.637611>,  <44.901592, 40.784950, 35.927944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175640, 40.760372, 35.637611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257972, -0.952323, -0.162887,
		-0.681222, 0.298842, -0.668305,
		0.685119, -0.061442, -0.725836,
		45.381176, 40.741940, 35.419861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592545, 40.442368, 35.297672>,  <44.901592, 40.784950, 35.927944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592545, 40.442368, 35.297672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984947, 40.402008, 35.231407>,  <45.220390, 40.377792, 35.191647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984947, 40.402008, 35.231407>,  <44.592545, 40.442368, 35.297672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984947, 40.402008, 35.231407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155334, -0.920170, -0.359387,
		-0.116179, 0.378294, -0.918366,
		0.981007, -0.100901, -0.165666,
		45.279247, 40.371738, 35.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639462, 40.090996, 34.674160>,  <44.592545, 40.442368, 35.297672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639462, 40.090996, 34.674160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997807, 40.033096, 34.842194>,  <45.212814, 39.998356, 34.943016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997807, 40.033096, 34.842194>,  <44.639462, 40.090996, 34.674160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997807, 40.033096, 34.842194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006902, -0.949869, -0.312573,
		0.444270, 0.277124, -0.851954,
		0.895866, -0.144747, 0.420086,
		45.266567, 39.989674, 34.968220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107258, 39.865673, 34.152096>,  <44.639462, 40.090996, 34.674160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107258, 39.865673, 34.152096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247562, 39.730160, 34.501308>,  <45.331745, 39.648849, 34.710838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247562, 39.730160, 34.501308>,  <45.107258, 39.865673, 34.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247562, 39.730160, 34.501308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068814, -0.920421, -0.384824,
		0.933934, 0.195058, -0.299533,
		0.350760, -0.338788, 0.873035,
		45.352791, 39.628525, 34.763218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504681, 39.314316, 34.054443>,  <45.107258, 39.865673, 34.152096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504681, 39.314316, 34.054443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446690, 39.246941, 34.444439>,  <45.411896, 39.206516, 34.678436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446690, 39.246941, 34.444439>,  <45.504681, 39.314316, 34.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446690, 39.246941, 34.444439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026125, -0.984408, -0.173950,
		0.989089, -0.050691, 0.138321,
		-0.144982, -0.168438, 0.974992,
		45.403194, 39.196407, 34.736935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909924, 38.747383, 34.197243>,  <45.504681, 39.314316, 34.054443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909924, 38.747383, 34.197243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684116, 38.757713, 34.527248>,  <45.548634, 38.763912, 34.725254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684116, 38.757713, 34.527248>,  <45.909924, 38.747383, 34.197243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684116, 38.757713, 34.527248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119386, -0.991555, -0.050649,
		0.816743, -0.127087, 0.562832,
		-0.564516, 0.025827, 0.825018,
		45.514763, 38.765461, 34.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067581, 38.171535, 34.461983>,  <45.909924, 38.747383, 34.197243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067581, 38.171535, 34.461983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731144, 38.265717, 34.656765>,  <45.529282, 38.322224, 34.773636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731144, 38.265717, 34.656765>,  <46.067581, 38.171535, 34.461983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731144, 38.265717, 34.656765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238817, -0.969435, 0.056238,
		0.485314, -0.068992, 0.871614,
		-0.841093, 0.235449, 0.486956,
		45.478817, 38.336349, 34.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032696, 37.844597, 35.148998>,  <46.067581, 38.171535, 34.461983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032696, 37.844597, 35.148998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657135, 37.903893, 35.024754>,  <45.431797, 37.939468, 34.950207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657135, 37.903893, 35.024754>,  <46.032696, 37.844597, 35.148998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657135, 37.903893, 35.024754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215212, -0.957157, 0.193736,
		-0.268586, 0.248748, 0.930584,
		-0.938906, 0.148238, -0.310613,
		45.375462, 37.948364, 34.931568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870590, 37.165585, 35.203384>,  <46.032696, 37.844597, 35.148998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870590, 37.165585, 35.203384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101974, 37.131073, 35.527840>,  <46.240803, 37.110367, 35.722511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101974, 37.131073, 35.527840>,  <45.870590, 37.165585, 35.203384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101974, 37.131073, 35.527840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162543, -0.962256, -0.218275,
		0.799354, 0.258107, -0.542599,
		0.578458, -0.086284, 0.811136,
		46.275513, 37.105186, 35.771179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447716, 36.949650, 34.977680>,  <45.870590, 37.165585, 35.203384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447716, 36.949650, 34.977680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418388, 36.850185, 35.364006>,  <46.400791, 36.790504, 35.595802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418388, 36.850185, 35.364006>,  <46.447716, 36.949650, 34.977680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418388, 36.850185, 35.364006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096092, -0.965673, -0.241335,
		0.992669, 0.075112, 0.094695,
		-0.073317, -0.248665, 0.965811,
		46.396393, 36.775585, 35.653748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897751, 36.392807, 35.107796>,  <46.447716, 36.949650, 34.977680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897751, 36.392807, 35.107796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638401, 36.370502, 35.411507>,  <46.482792, 36.357121, 35.593731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638401, 36.370502, 35.411507>,  <46.897751, 36.392807, 35.107796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638401, 36.370502, 35.411507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031539, -0.998425, -0.046395,
		0.760665, -0.006135, 0.649116,
		-0.648378, -0.055763, 0.759273,
		46.443886, 36.353775, 35.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333210, 36.005444, 35.597424>,  <46.897751, 36.392807, 35.107796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333210, 36.005444, 35.597424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674000, 36.038055, 35.390549>,  <47.878475, 36.057621, 35.266422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674000, 36.038055, 35.390549>,  <47.333210, 36.005444, 35.597424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674000, 36.038055, 35.390549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168035, -0.978125, 0.122619,
		-0.495880, -0.191375, -0.847042,
		0.851979, 0.081528, -0.517190,
		47.929592, 36.062515, 35.235394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355202, 35.561214, 35.018776>,  <47.333210, 36.005444, 35.597424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355202, 35.561214, 35.018776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700962, 35.589764, 35.217857>,  <47.908421, 35.606895, 35.337307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700962, 35.589764, 35.217857>,  <47.355202, 35.561214, 35.018776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700962, 35.589764, 35.217857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009702, -0.987321, 0.158443,
		0.502703, -0.141788, -0.852752,
		0.864405, 0.071377, 0.497704,
		47.960285, 35.611176, 35.367168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.718002, 34.857037, 34.802406>,  <47.355202, 35.561214, 35.018776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.718002, 34.857037, 34.802406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879421, 35.040699, 35.118969>,  <47.976273, 35.150898, 35.308907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879421, 35.040699, 35.118969>,  <47.718002, 34.857037, 34.802406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879421, 35.040699, 35.118969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229489, -0.888108, 0.398246,
		0.885711, 0.020908, -0.463765,
		0.403547, 0.459160, 0.791405,
		48.000484, 35.178448, 35.356392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.378567, 39.323551, 44.544380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027733, 39.166988, 44.655754>,  <34.817234, 39.073051, 44.722576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027733, 39.166988, 44.655754>,  <35.378567, 39.323551, 44.544380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027733, 39.166988, 44.655754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362890, 0.160180, -0.917961,
		0.314695, -0.906170, -0.282529,
		-0.877085, -0.391405, 0.278432,
		34.764606, 39.049568, 44.739285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301018, 38.876072, 44.090179>,  <35.378567, 39.323551, 44.544380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301018, 38.876072, 44.090179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931259, 38.929573, 44.233063>,  <34.709404, 38.961674, 44.318794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931259, 38.929573, 44.233063>,  <35.301018, 38.876072, 44.090179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931259, 38.929573, 44.233063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339649, 0.137516, -0.930445,
		-0.173574, -0.981427, -0.081689,
		-0.924397, 0.133756, 0.357210,
		34.653938, 38.969700, 44.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966343, 38.292435, 43.812393>,  <35.301018, 38.876072, 44.090179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966343, 38.292435, 43.812393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708828, 38.586781, 43.896339>,  <34.554317, 38.763386, 43.946705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708828, 38.586781, 43.896339>,  <34.966343, 38.292435, 43.812393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708828, 38.586781, 43.896339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429628, -0.120650, -0.894910,
		-0.633209, -0.666298, 0.393819,
		-0.643791, 0.735860, 0.209863,
		34.515690, 38.807537, 43.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310322, 38.034023, 43.541798>,  <34.966343, 38.292435, 43.812393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310322, 38.034023, 43.541798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200573, 38.413788, 43.602901>,  <34.134724, 38.641647, 43.639565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200573, 38.413788, 43.602901>,  <34.310322, 38.034023, 43.541798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200573, 38.413788, 43.602901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598122, -0.044102, -0.800191,
		-0.752974, -0.310921, 0.579965,
		-0.274373, 0.949412, 0.152761,
		34.118259, 38.698612, 43.648731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484478, 38.081730, 43.561474>,  <34.310322, 38.034023, 43.541798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484478, 38.081730, 43.561474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.644798, 38.429428, 43.445705>,  <33.740990, 38.638046, 43.376244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.644798, 38.429428, 43.445705>,  <33.484478, 38.081730, 43.561474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644798, 38.429428, 43.445705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534030, -0.035026, -0.844740,
		-0.744426, 0.493134, 0.450166,
		0.400802, 0.869249, -0.289423,
		33.765038, 38.690201, 43.358879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865479, 38.402073, 43.270897>,  <33.484478, 38.081730, 43.561474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865479, 38.402073, 43.270897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196930, 38.580547, 43.135670>,  <33.395802, 38.687634, 43.054531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196930, 38.580547, 43.135670>,  <32.865479, 38.402073, 43.270897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196930, 38.580547, 43.135670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398267, 0.045480, -0.916141,
		-0.393398, 0.893782, 0.215389,
		0.828626, 0.446190, -0.338072,
		33.445518, 38.714405, 43.034248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604141, 38.825443, 42.783691>,  <32.865479, 38.402073, 43.270897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604141, 38.825443, 42.783691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.996983, 38.861988, 42.717808>,  <33.232689, 38.883915, 42.678276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.996983, 38.861988, 42.717808>,  <32.604141, 38.825443, 42.783691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996983, 38.861988, 42.717808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178375, 0.170321, -0.969109,
		-0.060482, 0.981144, 0.183569,
		0.982102, 0.091358, -0.164710,
		33.291615, 38.889397, 42.668396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671589, 39.403351, 42.273041>,  <32.604141, 38.825443, 42.783691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671589, 39.403351, 42.273041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000759, 39.176346, 42.262321>,  <33.198261, 39.040142, 42.255890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000759, 39.176346, 42.262321>,  <32.671589, 39.403351, 42.273041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000759, 39.176346, 42.262321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060520, 0.134466, -0.989068,
		0.564912, 0.812311, 0.145002,
		0.822929, -0.567512, -0.026800,
		33.247639, 39.006092, 42.254280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144096, 39.638218, 41.734753>,  <32.671589, 39.403351, 42.273041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144096, 39.638218, 41.734753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.298851, 39.270142, 41.758644>,  <33.391705, 39.049297, 41.772980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.298851, 39.270142, 41.758644>,  <33.144096, 39.638218, 41.734753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298851, 39.270142, 41.758644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195660, 0.018621, -0.980495,
		0.901129, 0.391030, 0.187249,
		0.386889, -0.920190, 0.059729,
		33.414917, 38.994083, 41.776562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699223, 39.665871, 41.379372>,  <33.144096, 39.638218, 41.734753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699223, 39.665871, 41.379372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619507, 39.274830, 41.406452>,  <33.571678, 39.040207, 41.422699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619507, 39.274830, 41.406452>,  <33.699223, 39.665871, 41.379372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619507, 39.274830, 41.406452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312730, -0.128923, -0.941052,
		0.928700, -0.166369, 0.331417,
		-0.199289, -0.977599, 0.067703,
		33.559719, 38.981548, 41.426762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240440, 39.361202, 41.264305>,  <33.699223, 39.665871, 41.379372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240440, 39.361202, 41.264305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961922, 39.095474, 41.155598>,  <33.794811, 38.936039, 41.090374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961922, 39.095474, 41.155598>,  <34.240440, 39.361202, 41.264305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961922, 39.095474, 41.155598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394914, -0.038411, -0.917914,
		0.599348, -0.746463, 0.289094,
		-0.696294, -0.664317, -0.271767,
		33.753033, 38.896179, 41.074066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598736, 38.751976, 40.950352>,  <34.240440, 39.361202, 41.264305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598736, 38.751976, 40.950352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220089, 38.766380, 40.822208>,  <33.992901, 38.775024, 40.745323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220089, 38.766380, 40.822208>,  <34.598736, 38.751976, 40.950352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220089, 38.766380, 40.822208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314941, -0.108849, -0.942849,
		-0.068823, -0.993406, 0.091697,
		-0.946612, 0.036011, -0.320356,
		33.936104, 38.777184, 40.726101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612526, 38.300865, 40.311768>,  <34.598736, 38.751976, 40.950352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612526, 38.300865, 40.311768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262085, 38.488274, 40.266277>,  <34.051819, 38.600719, 40.238983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262085, 38.488274, 40.266277>,  <34.612526, 38.300865, 40.311768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262085, 38.488274, 40.266277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042822, -0.159340, -0.986295,
		-0.480221, -0.868964, 0.119535,
		-0.876101, 0.468521, -0.113730,
		33.999256, 38.628830, 40.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245911, 37.818077, 40.015450>,  <34.612526, 38.300865, 40.311768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245911, 37.818077, 40.015450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048847, 38.152077, 39.917419>,  <33.930611, 38.352478, 39.858601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048847, 38.152077, 39.917419>,  <34.245911, 37.818077, 40.015450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048847, 38.152077, 39.917419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152577, -0.194378, -0.968988,
		-0.856742, -0.514773, -0.031639,
		-0.492659, 0.835000, -0.245075,
		33.901051, 38.402576, 39.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734158, 37.678055, 39.430267>,  <34.245911, 37.818077, 40.015450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734158, 37.678055, 39.430267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806122, 38.071476, 39.423878>,  <33.849300, 38.307529, 39.420044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806122, 38.071476, 39.423878>,  <33.734158, 37.678055, 39.430267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806122, 38.071476, 39.423878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227838, -0.057466, -0.972002,
		-0.956934, 0.171231, -0.234429,
		0.179909, 0.983554, -0.015978,
		33.860096, 38.366543, 39.419083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400772, 37.844284, 38.789043>,  <33.734158, 37.678055, 39.430267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400772, 37.844284, 38.789043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617138, 38.164898, 38.890980>,  <33.746960, 38.357265, 38.952141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617138, 38.164898, 38.890980>,  <33.400772, 37.844284, 38.789043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617138, 38.164898, 38.890980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235186, 0.146769, -0.960805,
		-0.807525, 0.579652, -0.109120,
		0.540917, 0.801538, 0.254846,
		33.779411, 38.405357, 38.967434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191673, 38.460491, 38.423012>,  <33.400772, 37.844284, 38.789043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191673, 38.460491, 38.423012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575958, 38.544518, 38.495560>,  <33.806530, 38.594933, 38.539089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575958, 38.544518, 38.495560>,  <33.191673, 38.460491, 38.423012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575958, 38.544518, 38.495560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145264, 0.176207, -0.973576,
		-0.236476, 0.961677, 0.138770,
		0.960717, 0.210069, 0.181366,
		33.864174, 38.607536, 38.549969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336117, 39.095737, 38.039120>,  <33.191673, 38.460491, 38.423012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336117, 39.095737, 38.039120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698402, 38.945267, 38.117271>,  <33.915775, 38.854984, 38.164162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698402, 38.945267, 38.117271>,  <33.336117, 39.095737, 38.039120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698402, 38.945267, 38.117271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265591, 0.144374, -0.953214,
		0.330369, 0.915231, 0.230671,
		0.905714, -0.376177, 0.195380,
		33.970116, 38.832413, 38.175884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821999, 39.666466, 37.836910>,  <33.336117, 39.095737, 38.039120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821999, 39.666466, 37.836910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029514, 39.325020, 37.855659>,  <34.154022, 39.120152, 37.866909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029514, 39.325020, 37.855659>,  <33.821999, 39.666466, 37.836910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029514, 39.325020, 37.855659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479506, 0.245149, -0.842601,
		0.707767, 0.459608, 0.536495,
		0.518788, -0.853617, 0.046876,
		34.185150, 39.068935, 37.869724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482674, 39.825954, 37.632446>,  <33.821999, 39.666466, 37.836910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482674, 39.825954, 37.632446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454044, 39.430729, 37.577873>,  <34.436867, 39.193596, 37.545128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454044, 39.430729, 37.577873>,  <34.482674, 39.825954, 37.632446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454044, 39.430729, 37.577873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342894, 0.104074, -0.933591,
		0.936643, -0.113606, 0.331350,
		-0.071576, -0.988060, -0.136435,
		34.432571, 39.134312, 37.536942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209469, 39.607716, 37.385105>,  <34.482674, 39.825954, 37.632446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209469, 39.607716, 37.385105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914246, 39.351727, 37.299583>,  <34.737114, 39.198132, 37.248272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914246, 39.351727, 37.299583>,  <35.209469, 39.607716, 37.385105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914246, 39.351727, 37.299583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374121, -0.124437, -0.918993,
		0.561525, -0.758255, 0.331268,
		-0.738053, -0.639972, -0.213804,
		34.692829, 39.159737, 37.235443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608570, 39.189766, 36.994720>,  <35.209469, 39.607716, 37.385105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608570, 39.189766, 36.994720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225807, 39.111832, 36.908592>,  <34.996147, 39.065071, 36.856915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225807, 39.111832, 36.908592>,  <35.608570, 39.189766, 36.994720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225807, 39.111832, 36.908592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234723, -0.082438, -0.968560,
		0.170961, -0.977365, 0.124618,
		-0.956910, -0.194837, -0.215317,
		34.938736, 39.053379, 36.843998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573376, 39.506802, 36.304924>,  <35.608570, 39.189766, 36.994720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573376, 39.506802, 36.304924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961067, 39.562321, 36.223598>,  <36.193680, 39.595634, 36.174805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961067, 39.562321, 36.223598>,  <35.573376, 39.506802, 36.304924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961067, 39.562321, 36.223598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229664, -0.212448, 0.949800,
		0.088640, -0.967264, -0.237788,
		0.969226, 0.138802, -0.203314,
		36.251835, 39.603962, 36.162605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992447, 38.881821, 36.484600>,  <35.573376, 39.506802, 36.304924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992447, 38.881821, 36.484600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269161, 39.170486, 36.494694>,  <36.435188, 39.343685, 36.500751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269161, 39.170486, 36.494694>,  <35.992447, 38.881821, 36.484600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269161, 39.170486, 36.494694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239847, -0.262595, 0.934621,
		0.681111, -0.640501, -0.354748,
		0.691781, 0.721666, 0.025234,
		36.476696, 39.386986, 36.502262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481529, 38.629414, 36.967117>,  <35.992447, 38.881821, 36.484600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481529, 38.629414, 36.967117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587608, 39.014771, 36.951431>,  <36.651257, 39.245987, 36.942020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587608, 39.014771, 36.951431>,  <36.481529, 38.629414, 36.967117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587608, 39.014771, 36.951431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395964, -0.071739, 0.915459,
		0.879137, -0.258305, -0.400495,
		0.265199, 0.963396, -0.039211,
		36.667168, 39.303791, 36.939667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191063, 38.644611, 37.046574>,  <36.481529, 38.629414, 36.967117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191063, 38.644611, 37.046574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025631, 38.990643, 37.160126>,  <36.926373, 39.198261, 37.228256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025631, 38.990643, 37.160126>,  <37.191063, 38.644611, 37.046574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025631, 38.990643, 37.160126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440196, -0.082939, 0.894063,
		0.796982, 0.494727, -0.346504,
		-0.413579, 0.865081, 0.283878,
		36.901558, 39.250168, 37.245289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668129, 38.891136, 37.510586>,  <37.191063, 38.644611, 37.046574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668129, 38.891136, 37.510586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345150, 39.117306, 37.577911>,  <37.151363, 39.253006, 37.618305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345150, 39.117306, 37.577911>,  <37.668129, 38.891136, 37.510586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345150, 39.117306, 37.577911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234307, 0.045528, 0.971096,
		0.541416, 0.823544, -0.169244,
		-0.807446, 0.565422, 0.168313,
		37.102917, 39.286934, 37.628407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868587, 39.312889, 37.972355>,  <37.668129, 38.891136, 37.510586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868587, 39.312889, 37.972355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475342, 39.367645, 38.020924>,  <37.239395, 39.400497, 38.050064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475342, 39.367645, 38.020924>,  <37.868587, 39.312889, 37.972355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475342, 39.367645, 38.020924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143994, 0.169319, 0.974986,
		0.112903, 0.976009, -0.186171,
		-0.983117, 0.136886, 0.121423,
		37.180408, 39.408710, 38.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767784, 39.980145, 38.406258>,  <37.868587, 39.312889, 37.972355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767784, 39.980145, 38.406258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449699, 39.744308, 38.462852>,  <37.258850, 39.602806, 38.496811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449699, 39.744308, 38.462852>,  <37.767784, 39.980145, 38.406258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449699, 39.744308, 38.462852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052617, 0.165367, 0.984827,
		-0.604046, 0.790590, -0.100479,
		-0.795211, -0.589594, 0.141488,
		37.211136, 39.567429, 38.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366570, 40.326977, 38.911255>,  <37.767784, 39.980145, 38.406258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366570, 40.326977, 38.911255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195587, 39.965515, 38.921761>,  <37.092999, 39.748638, 38.928062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195587, 39.965515, 38.921761>,  <37.366570, 40.326977, 38.911255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195587, 39.965515, 38.921761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224854, 0.134409, 0.965078,
		-0.875628, 0.406621, -0.260644,
		-0.427453, -0.903656, 0.026262,
		37.067352, 39.694420, 38.929638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668419, 40.452538, 39.158897>,  <37.366570, 40.326977, 38.911255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668419, 40.452538, 39.158897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771133, 40.069332, 39.209934>,  <36.832760, 39.839409, 39.240559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771133, 40.069332, 39.209934>,  <36.668419, 40.452538, 39.158897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771133, 40.069332, 39.209934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328339, 0.037695, 0.943807,
		-0.908986, -0.284249, -0.304872,
		0.256784, -0.958009, 0.127594,
		36.848167, 39.781929, 39.248211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263519, 40.282219, 39.698856>,  <36.668419, 40.452538, 39.158897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263519, 40.282219, 39.698856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541985, 39.995075, 39.696552>,  <36.709064, 39.822788, 39.695168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541985, 39.995075, 39.696552>,  <36.263519, 40.282219, 39.698856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541985, 39.995075, 39.696552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102505, -0.107346, 0.988923,
		-0.710530, -0.687859, -0.148314,
		0.696161, -0.717863, -0.005764,
		36.750832, 39.779716, 39.694824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027946, 39.783894, 40.172379>,  <36.263519, 40.282219, 39.698856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027946, 39.783894, 40.172379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419537, 39.715145, 40.128452>,  <36.654491, 39.673897, 40.102097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419537, 39.715145, 40.128452>,  <36.027946, 39.783894, 40.172379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419537, 39.715145, 40.128452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112170, 0.003999, 0.993681,
		-0.170349, -0.985111, 0.023194,
		0.978978, -0.171874, -0.109818,
		36.713230, 39.663582, 40.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207760, 39.327785, 40.716625>,  <36.027946, 39.783894, 40.172379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207760, 39.327785, 40.716625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565689, 39.479790, 40.622913>,  <36.780445, 39.570992, 40.566685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565689, 39.479790, 40.622913>,  <36.207760, 39.327785, 40.716625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565689, 39.479790, 40.622913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294845, -0.109016, 0.949306,
		0.335210, -0.918534, -0.209596,
		0.894819, 0.380015, -0.234282,
		36.834133, 39.593796, 40.552628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691063, 38.821228, 40.969440>,  <36.207760, 39.327785, 40.716625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691063, 38.821228, 40.969440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855465, 39.185547, 40.953846>,  <36.954105, 39.404140, 40.944489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855465, 39.185547, 40.953846>,  <36.691063, 38.821228, 40.969440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855465, 39.185547, 40.953846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129358, -0.015938, 0.991470,
		0.902410, -0.412539, -0.124370,
		0.411002, 0.910801, -0.038983,
		36.978767, 39.458786, 40.942150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329330, 38.833035, 41.456734>,  <36.691063, 38.821228, 40.969440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329330, 38.833035, 41.456734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287331, 39.226875, 41.400833>,  <37.262131, 39.463181, 41.367294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287331, 39.226875, 41.400833>,  <37.329330, 38.833035, 41.456734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287331, 39.226875, 41.400833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141853, 0.153916, 0.977848,
		0.984303, 0.082854, -0.155831,
		-0.105004, 0.984604, -0.139747,
		37.255829, 39.522255, 41.358910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877300, 39.151154, 41.876659>,  <37.329330, 38.833035, 41.456734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877300, 39.151154, 41.876659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603020, 39.437183, 41.822266>,  <37.438454, 39.608803, 41.789631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603020, 39.437183, 41.822266>,  <37.877300, 39.151154, 41.876659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603020, 39.437183, 41.822266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015257, 0.200893, 0.979494,
		0.727727, 0.669562, -0.148662,
		-0.685697, 0.715073, -0.135980,
		37.397312, 39.651707, 41.781471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095085, 39.696957, 42.337166>,  <37.877300, 39.151154, 41.876659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095085, 39.696957, 42.337166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719833, 39.794601, 42.238922>,  <37.494682, 39.853188, 42.179977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719833, 39.794601, 42.238922>,  <38.095085, 39.696957, 42.337166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719833, 39.794601, 42.238922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259976, -0.027983, 0.965210,
		0.228747, 0.969343, 0.089715,
		-0.938130, 0.244112, -0.245605,
		37.438393, 39.867836, 42.165241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876320, 40.341026, 42.639275>,  <38.095085, 39.696957, 42.337166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876320, 40.341026, 42.639275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540348, 40.135586, 42.569153>,  <37.338764, 40.012321, 42.527081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540348, 40.135586, 42.569153>,  <37.876320, 40.341026, 42.639275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540348, 40.135586, 42.569153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263498, 0.103558, 0.959085,
		-0.474433, 0.851757, -0.222314,
		-0.839930, -0.513601, -0.175305,
		37.288368, 39.981506, 42.516560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402260, 40.681206, 42.995094>,  <37.876320, 40.341026, 42.639275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402260, 40.681206, 42.995094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266304, 40.308453, 42.944378>,  <37.184731, 40.084801, 42.913948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266304, 40.308453, 42.944378>,  <37.402260, 40.681206, 42.995094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266304, 40.308453, 42.944378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187011, -0.065158, 0.980195,
		-0.921686, 0.356865, -0.152126,
		-0.339885, -0.931881, -0.126793,
		37.164337, 40.028889, 42.906342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.563019, 40.507832, 43.580368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722549, 40.170425, 43.436470>,  <36.818268, 39.967979, 43.350132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722549, 40.170425, 43.436470>,  <36.563019, 40.507832, 43.580368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722549, 40.170425, 43.436470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165985, -0.452216, 0.876327,
		-0.901879, -0.289790, -0.320367,
		0.398826, -0.843518, -0.359743,
		36.842197, 39.917370, 43.328548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188934, 39.906502, 43.959072>,  <36.563019, 40.507832, 43.580368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188934, 39.906502, 43.959072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544857, 39.783493, 43.824211>,  <36.758411, 39.709686, 43.743294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544857, 39.783493, 43.824211>,  <36.188934, 39.906502, 43.959072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544857, 39.783493, 43.824211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136371, -0.525874, 0.839559,
		-0.435485, -0.793024, -0.425989,
		0.889807, -0.307522, -0.337156,
		36.811798, 39.691235, 43.723064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147339, 39.162098, 44.050907>,  <36.188934, 39.906502, 43.959072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147339, 39.162098, 44.050907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539227, 39.241756, 44.042061>,  <36.774361, 39.289551, 44.036755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539227, 39.241756, 44.042061>,  <36.147339, 39.162098, 44.050907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539227, 39.241756, 44.042061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145043, -0.628723, 0.763983,
		0.138237, -0.751697, -0.644858,
		0.979721, 0.199143, -0.022115,
		36.833141, 39.301498, 44.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475227, 38.571461, 44.302547>,  <36.147339, 39.162098, 44.050907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475227, 38.571461, 44.302547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779785, 38.829456, 44.328690>,  <36.962521, 38.984253, 44.344376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779785, 38.829456, 44.328690>,  <36.475227, 38.571461, 44.302547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779785, 38.829456, 44.328690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274654, -0.412244, 0.868688,
		0.587237, -0.643462, -0.491029,
		0.761392, 0.644989, 0.065356,
		37.008202, 39.022953, 44.348297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082462, 38.165634, 44.581375>,  <36.475227, 38.571461, 44.302547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082462, 38.165634, 44.581375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138840, 38.553623, 44.660664>,  <37.172668, 38.786415, 44.708237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138840, 38.553623, 44.660664>,  <37.082462, 38.165634, 44.581375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138840, 38.553623, 44.660664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261993, -0.229629, 0.937353,
		0.954722, -0.080182, -0.286491,
		0.140946, 0.969970, 0.198225,
		37.181122, 38.844616, 44.720131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773144, 38.207989, 44.961182>,  <37.082462, 38.165634, 44.581375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773144, 38.207989, 44.961182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597546, 38.554192, 45.057671>,  <37.492188, 38.761913, 45.115562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597546, 38.554192, 45.057671>,  <37.773144, 38.207989, 44.961182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597546, 38.554192, 45.057671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115599, -0.211836, 0.970445,
		0.891024, 0.453902, -0.007057,
		-0.438992, 0.865505, 0.241222,
		37.465847, 38.813843, 45.130035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222149, 38.464008, 45.468590>,  <37.773144, 38.207989, 44.961182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222149, 38.464008, 45.468590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880001, 38.668137, 45.504173>,  <37.674713, 38.790611, 45.525524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880001, 38.668137, 45.504173>,  <38.222149, 38.464008, 45.468590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880001, 38.668137, 45.504173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119848, 0.027889, 0.992400,
		0.503959, 0.859533, -0.085016,
		-0.855372, 0.510318, 0.088958,
		37.623390, 38.821232, 45.530861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321907, 39.112289, 45.965881>,  <38.222149, 38.464008, 45.468590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321907, 39.112289, 45.965881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928249, 39.045326, 45.942448>,  <37.692055, 39.005150, 45.928387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928249, 39.045326, 45.942448>,  <38.321907, 39.112289, 45.965881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928249, 39.045326, 45.942448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089769, 0.185302, 0.978573,
		-0.152967, 0.968317, -0.197392,
		-0.984146, -0.167409, -0.058580,
		37.633007, 38.995102, 45.924873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918140, 39.688187, 46.195267>,  <38.321907, 39.112289, 45.965881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918140, 39.688187, 46.195267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695866, 39.362183, 46.260956>,  <37.562500, 39.166580, 46.300369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695866, 39.362183, 46.260956>,  <37.918140, 39.688187, 46.195267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695866, 39.362183, 46.260956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005588, 0.193858, 0.981014,
		-0.831370, 0.546059, -0.103171,
		-0.555691, -0.815009, 0.164219,
		37.529160, 39.117680, 46.310223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500309, 39.977108, 46.624882>,  <37.918140, 39.688187, 46.195267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500309, 39.977108, 46.624882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430031, 39.584591, 46.656391>,  <37.387863, 39.349083, 46.675297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430031, 39.584591, 46.656391>,  <37.500309, 39.977108, 46.624882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430031, 39.584591, 46.656391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089593, 0.063748, 0.993936,
		-0.980359, 0.181685, 0.076716,
		-0.175693, -0.981288, 0.078773,
		37.377323, 39.290203, 46.680023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106190, 39.940182, 47.147690>,  <37.500309, 39.977108, 46.624882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106190, 39.940182, 47.147690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258060, 39.570702, 47.127159>,  <37.349182, 39.349014, 47.114841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258060, 39.570702, 47.127159>,  <37.106190, 39.940182, 47.147690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258060, 39.570702, 47.127159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053903, -0.033296, 0.997991,
		-0.923549, -0.381677, 0.037149,
		0.379674, -0.923696, -0.051324,
		37.371964, 39.293594, 47.111763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162151, 39.786987, 47.777004>,  <37.106190, 39.940182, 47.147690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162151, 39.786987, 47.777004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309006, 39.442192, 47.637180>,  <37.397118, 39.235317, 47.553284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309006, 39.442192, 47.637180>,  <37.162151, 39.786987, 47.777004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309006, 39.442192, 47.637180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266084, -0.262778, 0.927441,
		-0.891298, -0.433510, 0.132885,
		0.367135, -0.861984, -0.349563,
		37.419147, 39.183598, 47.532310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860737, 39.247341, 48.168037>,  <37.162151, 39.786987, 47.777004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860737, 39.247341, 48.168037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230923, 39.147346, 48.054176>,  <37.453033, 39.087349, 47.985859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230923, 39.147346, 48.054176>,  <36.860737, 39.247341, 48.168037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230923, 39.147346, 48.054176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220394, -0.255878, 0.941251,
		-0.308136, -0.933828, -0.181710,
		0.925462, -0.249985, -0.284655,
		37.508560, 39.072350, 47.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972099, 38.669827, 48.596104>,  <36.860737, 39.247341, 48.168037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972099, 38.669827, 48.596104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329594, 38.774807, 48.450584>,  <37.544090, 38.837795, 48.363274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329594, 38.774807, 48.450584>,  <36.972099, 38.669827, 48.596104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329594, 38.774807, 48.450584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415881, -0.180770, 0.891271,
		0.168155, -0.947860, -0.270712,
		0.893737, 0.262456, -0.363800,
		37.597713, 38.853542, 48.341446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321499, 38.121552, 48.654419>,  <36.972099, 38.669827, 48.596104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321499, 38.121552, 48.654419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566746, 38.437458, 48.646862>,  <37.713894, 38.627003, 48.642326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566746, 38.437458, 48.646862>,  <37.321499, 38.121552, 48.654419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566746, 38.437458, 48.646862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357584, -0.256120, 0.898073,
		0.704426, -0.557384, -0.439439,
		0.613121, 0.789763, -0.018895,
		37.750683, 38.674385, 48.641193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895763, 37.895676, 48.875210>,  <37.321499, 38.121552, 48.654419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895763, 37.895676, 48.875210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013493, 38.272987, 48.936661>,  <38.084129, 38.499374, 48.973534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013493, 38.272987, 48.936661>,  <37.895763, 37.895676, 48.875210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013493, 38.272987, 48.936661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673870, -0.318822, 0.666522,
		0.677695, -0.092648, -0.729483,
		0.294327, 0.943276, 0.153631,
		38.101791, 38.555969, 48.982750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659176, 38.028481, 49.015213>,  <37.895763, 37.895676, 48.875210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659176, 38.028481, 49.015213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493511, 38.357895, 49.170261>,  <38.394112, 38.555546, 49.263290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493511, 38.357895, 49.170261>,  <38.659176, 38.028481, 49.015213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493511, 38.357895, 49.170261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427758, -0.199795, 0.881536,
		0.803425, 0.530908, -0.269528,
		-0.414164, 0.823541, 0.387620,
		38.369263, 38.604958, 49.286549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207355, 38.468403, 49.366596>,  <38.659176, 38.028481, 49.015213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207355, 38.468403, 49.366596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849964, 38.545589, 49.528809>,  <38.635529, 38.591900, 49.626137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849964, 38.545589, 49.528809>,  <39.207355, 38.468403, 49.366596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849964, 38.545589, 49.528809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378105, -0.164061, 0.911109,
		0.242344, 0.967393, 0.073624,
		-0.893480, 0.192964, 0.405536,
		38.581921, 38.603477, 49.650471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444225, 38.648388, 49.908653>,  <39.207355, 38.468403, 49.366596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444225, 38.648388, 49.908653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050091, 38.632912, 49.975121>,  <38.813610, 38.623627, 50.014999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050091, 38.632912, 49.975121>,  <39.444225, 38.648388, 49.908653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050091, 38.632912, 49.975121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169447, -0.108235, 0.979578,
		-0.019918, 0.993372, 0.113204,
		-0.985338, -0.038693, 0.166168,
		38.754490, 38.621304, 50.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283791, 38.962635, 50.586662>,  <39.444225, 38.648388, 49.908653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283791, 38.962635, 50.586662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990795, 38.695549, 50.533573>,  <38.814999, 38.535297, 50.501720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990795, 38.695549, 50.533573>,  <39.283791, 38.962635, 50.586662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990795, 38.695549, 50.533573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167309, -0.365534, 0.915638,
		-0.659903, 0.648487, 0.379464,
		-0.732486, -0.667719, -0.132720,
		38.771049, 38.495232, 50.493759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030167, 38.950256, 51.241234>,  <39.283791, 38.962635, 50.586662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030167, 38.950256, 51.241234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867214, 38.635361, 51.056068>,  <38.769444, 38.446423, 50.944969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867214, 38.635361, 51.056068>,  <39.030167, 38.950256, 51.241234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867214, 38.635361, 51.056068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026109, -0.496637, 0.867565,
		-0.912884, 0.365519, 0.181768,
		-0.407384, -0.787240, -0.462916,
		38.744999, 38.399189, 50.917194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501804, 38.654362, 51.814510>,  <39.030167, 38.950256, 51.241234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501804, 38.654362, 51.814510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571838, 38.362011, 51.550644>,  <38.613857, 38.186600, 51.392323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571838, 38.362011, 51.550644>,  <38.501804, 38.654362, 51.814510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571838, 38.362011, 51.550644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092669, -0.679278, 0.728006,
		-0.980182, -0.066333, -0.186663,
		0.175087, -0.730877, -0.659670,
		38.624363, 38.142750, 51.352741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089558, 37.973179, 51.988056>,  <38.501804, 38.654362, 51.814510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089558, 37.973179, 51.988056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394932, 37.861858, 51.754917>,  <38.578156, 37.795067, 51.615036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394932, 37.861858, 51.754917>,  <38.089558, 37.973179, 51.988056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394932, 37.861858, 51.754917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099707, -0.840807, 0.532073,
		-0.638137, -0.464319, -0.614157,
		0.763439, -0.278301, -0.582846,
		38.623962, 37.778370, 51.580063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593739, 37.878693, 52.520180>,  <38.089558, 37.973179, 51.988056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593739, 37.878693, 52.520180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317211, 37.660500, 52.709721>,  <37.151295, 37.529583, 52.823444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317211, 37.660500, 52.709721>,  <37.593739, 37.878693, 52.520180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317211, 37.660500, 52.709721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561153, -0.007815, -0.827675,
		0.455183, -0.838088, -0.300695,
		-0.691315, -0.545479, 0.473853,
		37.109818, 37.496857, 52.851875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409409, 37.234840, 52.106392>,  <37.593739, 37.878693, 52.520180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409409, 37.234840, 52.106392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101444, 37.369453, 52.323277>,  <36.916668, 37.450222, 52.453407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101444, 37.369453, 52.323277>,  <37.409409, 37.234840, 52.106392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101444, 37.369453, 52.323277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546511, 0.090993, -0.832494,
		-0.329500, -0.937264, 0.113864,
		-0.769906, 0.336535, 0.542208,
		36.870472, 37.470413, 52.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903557, 36.789917, 51.989185>,  <37.409409, 37.234840, 52.106392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903557, 36.789917, 51.989185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734451, 37.132244, 52.108410>,  <36.632988, 37.337643, 52.179943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734451, 37.132244, 52.108410>,  <36.903557, 36.789917, 51.989185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734451, 37.132244, 52.108410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575502, 0.000524, -0.817800,
		-0.700047, -0.517271, 0.492305,
		-0.422767, 0.855821, 0.298057,
		36.607620, 37.388992, 52.197826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195328, 36.762470, 51.737255>,  <36.903557, 36.789917, 51.989185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195328, 36.762470, 51.737255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193157, 37.156086, 51.808392>,  <36.191853, 37.392258, 51.851074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193157, 37.156086, 51.808392>,  <36.195328, 36.762470, 51.737255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193157, 37.156086, 51.808392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345424, 0.165053, -0.923818,
		-0.938431, -0.066446, 0.339016,
		-0.005429, 0.984044, 0.177843,
		36.191528, 37.451298, 51.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480705, 37.123066, 51.667568>,  <36.195328, 36.762470, 51.737255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480705, 37.123066, 51.667568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768242, 37.382835, 51.568356>,  <35.940762, 37.538696, 51.508827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768242, 37.382835, 51.568356>,  <35.480705, 37.123066, 51.667568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768242, 37.382835, 51.568356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473943, 0.196802, -0.858281,
		-0.508575, 0.734519, 0.449259,
		0.718839, 0.649424, -0.248031,
		35.983894, 37.577663, 51.493946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155483, 37.585293, 51.387207>,  <35.480705, 37.123066, 51.667568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155483, 37.585293, 51.387207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515137, 37.696632, 51.252106>,  <35.730930, 37.763435, 51.171043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515137, 37.696632, 51.252106>,  <35.155483, 37.585293, 51.387207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515137, 37.696632, 51.252106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386844, 0.144461, -0.910759,
		-0.204720, 0.949553, 0.237569,
		0.899134, 0.278353, -0.337755,
		35.784878, 37.780140, 51.150780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956306, 38.123363, 50.955830>,  <35.155483, 37.585293, 51.387207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956306, 38.123363, 50.955830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320946, 38.019646, 50.828232>,  <35.539730, 37.957417, 50.751675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320946, 38.019646, 50.828232>,  <34.956306, 38.123363, 50.955830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320946, 38.019646, 50.828232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306584, 0.088109, -0.947757,
		0.273851, 0.961772, 0.000826,
		0.911599, -0.259291, -0.318993,
		35.594425, 37.941860, 50.732533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044392, 38.522751, 50.466515>,  <34.956306, 38.123363, 50.955830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044392, 38.522751, 50.466515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333736, 38.262436, 50.374241>,  <35.507343, 38.106247, 50.318874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333736, 38.262436, 50.374241>,  <35.044392, 38.522751, 50.466515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333736, 38.262436, 50.374241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104375, 0.227199, -0.968239,
		0.682530, 0.724469, 0.096422,
		0.723366, -0.650788, -0.230687,
		35.550747, 38.067200, 50.305035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345959, 38.877605, 49.912083>,  <35.044392, 38.522751, 50.466515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345959, 38.877605, 49.912083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481880, 38.501865, 49.893513>,  <35.563435, 38.276421, 49.882370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481880, 38.501865, 49.893513>,  <35.345959, 38.877605, 49.912083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481880, 38.501865, 49.893513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012669, 0.053926, -0.998465,
		0.940411, 0.338693, 0.030225,
		0.339803, -0.939350, -0.046422,
		35.583820, 38.220058, 49.879585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782486, 38.839237, 49.393055>,  <35.345959, 38.877605, 49.912083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782486, 38.839237, 49.393055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709545, 38.446404, 49.412045>,  <35.665779, 38.210701, 49.423439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709545, 38.446404, 49.412045>,  <35.782486, 38.839237, 49.393055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709545, 38.446404, 49.412045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137073, -0.073202, -0.987853,
		0.973632, -0.173631, 0.147966,
		-0.182354, -0.982087, 0.047471,
		35.654839, 38.151779, 49.426285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312099, 38.541721, 49.000263>,  <35.782486, 38.839237, 49.393055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312099, 38.541721, 49.000263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004467, 38.287224, 49.024593>,  <35.819885, 38.134525, 49.039192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004467, 38.287224, 49.024593>,  <36.312099, 38.541721, 49.000263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004467, 38.287224, 49.024593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151892, 0.089502, -0.984336,
		0.620837, -0.766276, -0.165476,
		-0.769084, -0.636247, 0.060825,
		35.773743, 38.096352, 49.042839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438873, 38.008518, 48.554413>,  <36.312099, 38.541721, 49.000263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438873, 38.008518, 48.554413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040878, 37.979107, 48.581535>,  <35.802082, 37.961460, 48.597809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040878, 37.979107, 48.581535>,  <36.438873, 38.008518, 48.554413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040878, 37.979107, 48.581535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076558, 0.123627, -0.989371,
		0.064364, -0.989601, -0.128636,
		-0.994985, -0.073528, 0.067804,
		35.742382, 37.957050, 48.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214832, 37.605522, 48.049267>,  <36.438873, 38.008518, 48.554413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214832, 37.605522, 48.049267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871479, 37.789192, 48.140770>,  <35.665466, 37.899395, 48.195671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871479, 37.789192, 48.140770>,  <36.214832, 37.605522, 48.049267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871479, 37.789192, 48.140770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224284, 0.065141, -0.972344,
		-0.461376, -0.885955, 0.047069,
		-0.858387, 0.459173, 0.228760,
		35.613964, 37.926945, 48.209396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738556, 37.242867, 47.669930>,  <36.214832, 37.605522, 48.049267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738556, 37.242867, 47.669930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547394, 37.583149, 47.757473>,  <35.432697, 37.787319, 47.809998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547394, 37.583149, 47.757473>,  <35.738556, 37.242867, 47.669930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547394, 37.583149, 47.757473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238824, 0.113932, -0.964356,
		-0.845322, -0.513140, 0.148721,
		-0.477906, 0.850710, 0.218859,
		35.404022, 37.838364, 47.823132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051464, 37.210884, 47.415779>,  <35.738556, 37.242867, 47.669930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051464, 37.210884, 47.415779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136360, 37.601231, 47.436314>,  <35.187298, 37.835438, 47.448635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136360, 37.601231, 47.436314>,  <35.051464, 37.210884, 47.415779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136360, 37.601231, 47.436314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348506, 0.124666, -0.928979,
		-0.912960, 0.179280, 0.366555,
		0.212245, 0.975867, 0.051334,
		35.200035, 37.893990, 47.451714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700253, 37.369003, 46.917267>,  <35.051464, 37.210884, 47.415779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700253, 37.369003, 46.917267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893723, 37.713657, 46.978775>,  <35.009804, 37.920448, 47.015678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893723, 37.713657, 46.978775>,  <34.700253, 37.369003, 46.917267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893723, 37.713657, 46.978775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220252, 0.289857, -0.931382,
		-0.847081, 0.416619, 0.329973,
		0.483676, 0.861633, 0.153771,
		35.038826, 37.972149, 47.024906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233315, 37.967331, 46.849716>,  <34.700253, 37.369003, 46.917267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233315, 37.967331, 46.849716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606754, 38.086727, 46.770416>,  <34.830818, 38.158363, 46.722836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606754, 38.086727, 46.770416>,  <34.233315, 37.967331, 46.849716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606754, 38.086727, 46.770416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328826, 0.493808, -0.805001,
		-0.142387, 0.816735, 0.559168,
		0.933595, 0.298491, -0.198252,
		34.886833, 38.176273, 46.710941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174740, 38.707874, 46.669689>,  <34.233315, 37.967331, 46.849716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174740, 38.707874, 46.669689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526958, 38.604515, 46.510757>,  <34.738289, 38.542500, 46.415398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526958, 38.604515, 46.510757>,  <34.174740, 38.707874, 46.669689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526958, 38.604515, 46.510757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179391, 0.594243, -0.784024,
		0.438698, 0.761647, 0.476905,
		0.880547, -0.258397, -0.397326,
		34.791122, 38.526997, 46.391560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439762, 39.350258, 46.307354>,  <34.174740, 38.707874, 46.669689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439762, 39.350258, 46.307354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649609, 39.053223, 46.140816>,  <34.775517, 38.875004, 46.040894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649609, 39.053223, 46.140816>,  <34.439762, 39.350258, 46.307354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649609, 39.053223, 46.140816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145258, 0.403803, -0.903240,
		0.838857, 0.534330, 0.103974,
		0.524614, -0.742586, -0.416349,
		34.806992, 38.830448, 46.015911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890778, 39.709152, 45.785221>,  <34.439762, 39.350258, 46.307354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890778, 39.709152, 45.785221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858543, 39.327412, 45.670170>,  <34.839203, 39.098370, 45.601139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858543, 39.327412, 45.670170>,  <34.890778, 39.709152, 45.785221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858543, 39.327412, 45.670170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252539, 0.298697, -0.920328,
		0.964225, -0.001525, -0.265080,
		-0.080582, -0.954347, -0.287626,
		34.834370, 39.041107, 45.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111443, 39.740250, 45.108101>,  <34.890778, 39.709152, 45.785221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111443, 39.740250, 45.108101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927639, 39.386436, 45.140236>,  <34.817356, 39.174149, 45.159515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927639, 39.386436, 45.140236>,  <35.111443, 39.740250, 45.108101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927639, 39.386436, 45.140236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235550, 0.034154, -0.971262,
		0.856367, -0.465230, -0.224046,
		-0.459512, -0.884530, 0.080336,
		34.789783, 39.121078, 45.164337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.917824, 45.070076, 32.090210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571781, 45.270687, 32.093304>,  <45.364155, 45.391052, 32.095161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571781, 45.270687, 32.093304>,  <45.917824, 45.070076, 32.090210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571781, 45.270687, 32.093304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489999, -0.841727, -0.226706,
		-0.107186, -0.199917, 0.973932,
		-0.865108, 0.501526, 0.007738,
		45.312248, 45.421146, 32.095627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402279, 44.865932, 32.652695>,  <45.917824, 45.070076, 32.090210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402279, 44.865932, 32.652695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190456, 44.996479, 32.339504>,  <45.063362, 45.074806, 32.151588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190456, 44.996479, 32.339504>,  <45.402279, 44.865932, 32.652695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190456, 44.996479, 32.339504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307588, -0.934085, -0.181316,
		-0.790544, 0.144818, 0.595036,
		-0.529556, 0.326364, -0.782979,
		45.031590, 45.094387, 32.104610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749744, 44.667137, 32.768925>,  <45.402279, 44.865932, 32.652695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749744, 44.667137, 32.768925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740955, 44.726437, 32.373444>,  <44.735680, 44.762016, 32.136154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740955, 44.726437, 32.373444>,  <44.749744, 44.667137, 32.768925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740955, 44.726437, 32.373444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475129, -0.871676, -0.120137,
		-0.879641, 0.467123, 0.089592,
		-0.021977, 0.148246, -0.988706,
		44.734364, 44.770912, 32.076832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091625, 44.508556, 32.626534>,  <44.749744, 44.667137, 32.768925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091625, 44.508556, 32.626534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283947, 44.484688, 32.276615>,  <44.399342, 44.470367, 32.066666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283947, 44.484688, 32.276615>,  <44.091625, 44.508556, 32.626534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283947, 44.484688, 32.276615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421731, -0.890441, -0.171049,
		-0.768747, 0.451169, -0.453293,
		0.480803, -0.059674, -0.874796,
		44.428188, 44.466785, 32.014175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634705, 44.368576, 32.203568>,  <44.091625, 44.508556, 32.626534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634705, 44.368576, 32.203568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964939, 44.242519, 32.016338>,  <44.163078, 44.166885, 31.904001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964939, 44.242519, 32.016338>,  <43.634705, 44.368576, 32.203568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964939, 44.242519, 32.016338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373773, -0.926851, -0.035234,
		-0.422728, 0.204041, -0.882988,
		0.825588, -0.315142, -0.468071,
		44.212616, 44.147976, 31.875917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406174, 43.941269, 31.572794>,  <43.634705, 44.368576, 32.203568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406174, 43.941269, 31.572794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786572, 43.841381, 31.645729>,  <44.014809, 43.781448, 31.689491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786572, 43.841381, 31.645729>,  <43.406174, 43.941269, 31.572794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786572, 43.841381, 31.645729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237584, -0.967554, -0.085988,
		0.197897, 0.038453, -0.979468,
		0.950995, -0.249722, 0.182340,
		44.071869, 43.766464, 31.700432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484917, 43.314110, 31.155563>,  <43.406174, 43.941269, 31.572794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484917, 43.314110, 31.155563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792725, 43.317360, 31.410992>,  <43.977409, 43.319309, 31.564249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792725, 43.317360, 31.410992>,  <43.484917, 43.314110, 31.155563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792725, 43.317360, 31.410992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226921, -0.931186, 0.285306,
		0.596948, -0.364454, -0.714721,
		0.769519, 0.008127, 0.638572,
		44.023579, 43.319798, 31.602564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952698, 42.703999, 31.048679>,  <43.484917, 43.314110, 31.155563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952698, 42.703999, 31.048679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990280, 42.827797, 31.427177>,  <44.012829, 42.902077, 31.654276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990280, 42.827797, 31.427177>,  <43.952698, 42.703999, 31.048679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990280, 42.827797, 31.427177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186484, -0.928157, 0.322099,
		0.977955, -0.206724, -0.029493,
		0.093960, 0.309498, 0.946247,
		44.018467, 42.920647, 31.711052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434174, 42.221020, 31.348063>,  <43.952698, 42.703999, 31.048679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434174, 42.221020, 31.348063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242287, 42.398430, 31.650892>,  <44.127155, 42.504875, 31.832590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242287, 42.398430, 31.650892>,  <44.434174, 42.221020, 31.348063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242287, 42.398430, 31.650892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092482, -0.883590, 0.459038,
		0.872536, 0.150192, 0.464890,
		-0.479716, 0.443521, 0.757074,
		44.098373, 42.531487, 31.878016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601604, 41.777107, 31.932894>,  <44.434174, 42.221020, 31.348063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601604, 41.777107, 31.932894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311554, 41.991627, 32.105667>,  <44.137524, 42.120338, 32.209332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311554, 41.991627, 32.105667>,  <44.601604, 41.777107, 31.932894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311554, 41.991627, 32.105667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238823, -0.784186, 0.572727,
		0.645871, 0.312146, 0.696718,
		-0.725130, 0.536300, 0.431935,
		44.094013, 42.152515, 32.235249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709488, 41.621056, 32.592915>,  <44.601604, 41.777107, 31.932894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709488, 41.621056, 32.592915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339569, 41.757366, 32.525242>,  <44.117619, 41.839153, 32.484638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339569, 41.757366, 32.525242>,  <44.709488, 41.621056, 32.592915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339569, 41.757366, 32.525242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374368, -0.735818, 0.564288,
		0.067809, 0.585188, 0.808058,
		-0.924798, 0.340775, -0.169180,
		44.062130, 41.859600, 32.474487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393147, 41.571369, 33.187374>,  <44.709488, 41.621056, 32.592915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393147, 41.571369, 33.187374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063942, 41.612160, 32.963852>,  <43.866421, 41.636635, 32.829739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063942, 41.612160, 32.963852>,  <44.393147, 41.571369, 33.187374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063942, 41.612160, 32.963852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429501, -0.755511, 0.494704,
		-0.371735, 0.647151, 0.665589,
		-0.823008, 0.101972, -0.558802,
		43.817039, 41.642750, 32.796211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795853, 41.564167, 33.636604>,  <44.393147, 41.571369, 33.187374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795853, 41.564167, 33.636604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719379, 41.433720, 33.266285>,  <43.673496, 41.355450, 33.044094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719379, 41.433720, 33.266285>,  <43.795853, 41.564167, 33.636604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719379, 41.433720, 33.266285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317417, -0.871971, 0.372709,
		-0.928813, 0.365120, 0.063194,
		-0.191187, -0.326119, -0.925794,
		43.662022, 41.335884, 32.988548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143291, 41.434185, 33.623329>,  <43.795853, 41.564167, 33.636604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143291, 41.434185, 33.623329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313019, 41.206940, 33.341278>,  <43.414856, 41.070595, 33.172047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313019, 41.206940, 33.341278>,  <43.143291, 41.434185, 33.623329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313019, 41.206940, 33.341278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568165, -0.773380, 0.281199,
		-0.705081, 0.281308, -0.650943,
		0.424322, -0.568111, -0.705125,
		43.440315, 41.036507, 33.129742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634739, 40.909134, 33.542759>,  <43.143291, 41.434185, 33.623329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634739, 40.909134, 33.542759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.932362, 40.743195, 33.333271>,  <43.110935, 40.643631, 33.207581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.932362, 40.743195, 33.333271>,  <42.634739, 40.909134, 33.542759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932362, 40.743195, 33.333271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400946, -0.904285, 0.146662,
		-0.534431, 0.100857, -0.839173,
		0.744060, -0.414844, -0.523716,
		43.155579, 40.618740, 33.176155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306015, 40.308411, 33.218369>,  <42.634739, 40.909134, 33.542759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306015, 40.308411, 33.218369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694710, 40.224876, 33.174324>,  <42.927925, 40.174755, 33.147896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694710, 40.224876, 33.174324>,  <42.306015, 40.308411, 33.218369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694710, 40.224876, 33.174324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215618, -0.975001, -0.053692,
		-0.096145, 0.075916, -0.992468,
		0.971733, -0.208832, -0.110110,
		42.986229, 40.162228, 33.141293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304974, 39.717609, 32.727886>,  <42.306015, 40.308411, 33.218369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304974, 39.717609, 32.727886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652607, 39.673534, 32.920784>,  <42.861187, 39.647091, 33.036522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652607, 39.673534, 32.920784>,  <42.304974, 39.717609, 32.727886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652607, 39.673534, 32.920784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044912, -0.988425, -0.144909,
		0.492629, 0.104279, -0.863969,
		0.869079, -0.110189, 0.482244,
		42.913330, 39.640476, 33.065456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590508, 39.117413, 32.496487>,  <42.304974, 39.717609, 32.727886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590508, 39.117413, 32.496487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852901, 39.157097, 32.795776>,  <43.010338, 39.180908, 32.975349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852901, 39.157097, 32.795776>,  <42.590508, 39.117413, 32.496487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852901, 39.157097, 32.795776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033427, -0.994169, 0.102518,
		0.754037, -0.042239, -0.655472,
		0.655981, 0.099212, 0.748229,
		43.049694, 39.186859, 33.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005032, 38.661667, 32.373390>,  <42.590508, 39.117413, 32.496487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005032, 38.661667, 32.373390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128670, 38.735153, 32.746635>,  <43.202854, 38.779243, 32.970585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128670, 38.735153, 32.746635>,  <43.005032, 38.661667, 32.373390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128670, 38.735153, 32.746635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130520, -0.980076, 0.149721,
		0.942031, 0.075512, -0.326919,
		0.309099, 0.183712, 0.933117,
		43.221401, 38.790268, 33.026569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762589, 38.441166, 32.555714>,  <43.005032, 38.661667, 32.373390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762589, 38.441166, 32.555714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520981, 38.432980, 32.874397>,  <43.376015, 38.428070, 33.065605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520981, 38.432980, 32.874397>,  <43.762589, 38.441166, 32.555714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520981, 38.432980, 32.874397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116936, -0.991127, 0.063198,
		0.788344, 0.131337, 0.601053,
		-0.604020, -0.020463, 0.796707,
		43.339775, 38.426842, 33.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126659, 38.068420, 33.011494>,  <43.762589, 38.441166, 32.555714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126659, 38.068420, 33.011494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741104, 38.041100, 33.114460>,  <43.509773, 38.024708, 33.176239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741104, 38.041100, 33.114460>,  <44.126659, 38.068420, 33.011494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741104, 38.041100, 33.114460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070994, -0.997476, 0.001161,
		0.256685, 0.019394, 0.966301,
		-0.963884, -0.068303, 0.257414,
		43.451939, 38.020607, 33.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027500, 37.606567, 33.620480>,  <44.126659, 38.068420, 33.011494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027500, 37.606567, 33.620480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685028, 37.630329, 33.415180>,  <43.479546, 37.644585, 33.292000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685028, 37.630329, 33.415180>,  <44.027500, 37.606567, 33.620480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685028, 37.630329, 33.415180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018399, -0.996244, -0.084617,
		-0.516344, -0.063004, 0.854061,
		-0.856184, 0.059405, -0.513245,
		43.428173, 37.648151, 33.261208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424622, 37.847191, 34.226856>,  <44.027500, 37.606567, 33.620480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424622, 37.847191, 34.226856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607342, 37.722359, 34.560066>,  <44.716976, 37.647461, 34.759995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607342, 37.722359, 34.560066>,  <44.424622, 37.847191, 34.226856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607342, 37.722359, 34.560066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025564, 0.940660, 0.338386,
		-0.889201, -0.133281, 0.437674,
		0.456802, -0.312082, 0.833029,
		44.744381, 37.628735, 34.809975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091442, 38.038349, 34.833935>,  <44.424622, 37.847191, 34.226856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091442, 38.038349, 34.833935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484825, 38.022350, 34.904602>,  <44.720856, 38.012749, 34.947002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484825, 38.022350, 34.904602>,  <44.091442, 38.038349, 34.833935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484825, 38.022350, 34.904602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021477, 0.942685, 0.332993,
		-0.179862, -0.331278, 0.926231,
		0.983457, -0.040000, 0.176668,
		44.779861, 38.010349, 34.957603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266659, 38.682758, 35.211811>,  <44.091442, 38.038349, 34.833935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266659, 38.682758, 35.211811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640713, 38.571136, 35.124504>,  <44.865147, 38.504162, 35.072121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640713, 38.571136, 35.124504>,  <44.266659, 38.682758, 35.211811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640713, 38.571136, 35.124504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342146, 0.871219, 0.352013,
		0.091926, -0.403860, 0.910190,
		0.935139, -0.279059, -0.218267,
		44.921253, 38.487419, 35.059025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719765, 38.722519, 35.800037>,  <44.266659, 38.682758, 35.211811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719765, 38.722519, 35.800037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965900, 38.753197, 35.486229>,  <45.113583, 38.771603, 35.297943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965900, 38.753197, 35.486229>,  <44.719765, 38.722519, 35.800037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965900, 38.753197, 35.486229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259074, 0.920289, 0.293169,
		0.744469, -0.383648, 0.546424,
		0.615342, 0.076691, -0.784521,
		45.150501, 38.776203, 35.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313629, 38.973335, 36.024639>,  <44.719765, 38.722519, 35.800037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313629, 38.973335, 36.024639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339382, 39.042282, 35.631470>,  <45.354832, 39.083649, 35.395569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339382, 39.042282, 35.631470>,  <45.313629, 38.973335, 36.024639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339382, 39.042282, 35.631470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372002, 0.909830, 0.183914,
		0.925997, -0.377491, -0.005548,
		0.064378, 0.172368, -0.982927,
		45.358696, 39.093994, 35.336594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869381, 39.344387, 35.943001>,  <45.313629, 38.973335, 36.024639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869381, 39.344387, 35.943001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734169, 39.420731, 35.574368>,  <45.653042, 39.466537, 35.353188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734169, 39.420731, 35.574368>,  <45.869381, 39.344387, 35.943001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734169, 39.420731, 35.574368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215721, 0.968863, 0.121526,
		0.916080, -0.157725, -0.368674,
		-0.338027, 0.190858, -0.921581,
		45.632759, 39.477989, 35.297894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399929, 39.728817, 35.527454>,  <45.869381, 39.344387, 35.943001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399929, 39.728817, 35.527454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062576, 39.827187, 35.336365>,  <45.860165, 39.886208, 35.221710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062576, 39.827187, 35.336365>,  <46.399929, 39.728817, 35.527454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062576, 39.827187, 35.336365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257349, 0.965378, 0.042630,
		0.471671, -0.086989, -0.877473,
		-0.843385, 0.245924, -0.477727,
		45.809563, 39.900963, 35.193047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540672, 40.214577, 34.943951>,  <46.399929, 39.728817, 35.527454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540672, 40.214577, 34.943951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.154903, 40.276413, 35.029736>,  <45.923443, 40.313515, 35.081207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.154903, 40.276413, 35.029736>,  <46.540672, 40.214577, 34.943951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154903, 40.276413, 35.029736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137232, 0.986098, -0.093690,
		-0.225961, -0.060926, -0.972229,
		-0.964422, 0.154591, 0.214459,
		45.865578, 40.322792, 35.094074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402054, 40.796120, 34.587837>,  <46.540672, 40.214577, 34.943951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402054, 40.796120, 34.587837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093208, 40.767620, 34.840427>,  <45.907902, 40.750519, 34.991982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093208, 40.767620, 34.840427>,  <46.402054, 40.796120, 34.587837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093208, 40.767620, 34.840427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010348, 0.992154, 0.124595,
		-0.635396, 0.102737, -0.765322,
		-0.772117, -0.071248, 0.631474,
		45.861572, 40.746246, 35.029869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866714, 41.400574, 34.366188>,  <46.402054, 40.796120, 34.587837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866714, 41.400574, 34.366188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794231, 41.299248, 34.746292>,  <45.750740, 41.238453, 34.974354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794231, 41.299248, 34.746292>,  <45.866714, 41.400574, 34.366188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794231, 41.299248, 34.746292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188131, 0.957341, 0.219330,
		-0.965283, -0.139029, -0.221133,
		-0.181206, -0.253317, 0.950260,
		45.739868, 41.223251, 35.031372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238621, 41.732170, 34.432652>,  <45.866714, 41.400574, 34.366188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238621, 41.732170, 34.432652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381931, 41.670658, 34.800995>,  <45.467918, 41.633751, 35.022003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381931, 41.670658, 34.800995>,  <45.238621, 41.732170, 34.432652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381931, 41.670658, 34.800995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300583, 0.914822, 0.269723,
		-0.883904, -0.373432, 0.281537,
		0.358279, -0.153784, 0.920862,
		45.489414, 41.624523, 35.077255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690022, 41.816566, 34.897648>,  <45.238621, 41.732170, 34.432652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690022, 41.816566, 34.897648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022839, 41.884876, 35.108757>,  <45.222530, 41.925861, 35.235424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022839, 41.884876, 35.108757>,  <44.690022, 41.816566, 34.897648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022839, 41.884876, 35.108757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338012, 0.910479, 0.238276,
		-0.439836, -0.376649, 0.815279,
		0.832041, 0.170772, 0.527773,
		45.272449, 41.936108, 35.267090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439240, 42.062305, 35.573639>,  <44.690022, 41.816566, 34.897648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439240, 42.062305, 35.573639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820705, 42.179626, 35.546844>,  <45.049587, 42.250019, 35.530769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820705, 42.179626, 35.546844>,  <44.439240, 42.062305, 35.573639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820705, 42.179626, 35.546844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274753, 0.939777, 0.203297,
		0.122580, -0.175473, 0.976823,
		0.953669, 0.293305, -0.066986,
		45.106808, 42.267616, 35.526749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518730, 42.638172, 36.219501>,  <44.439240, 42.062305, 35.573639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518730, 42.638172, 36.219501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797966, 42.695328, 35.938858>,  <44.965508, 42.729622, 35.770470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797966, 42.695328, 35.938858>,  <44.518730, 42.638172, 36.219501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797966, 42.695328, 35.938858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109304, 0.989668, 0.092794,
		0.707620, 0.011911, 0.706493,
		0.698088, 0.142885, -0.701611,
		45.007393, 42.738194, 35.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893105, 43.198994, 36.540092>,  <44.518730, 42.638172, 36.219501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893105, 43.198994, 36.540092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974026, 43.190529, 36.148453>,  <45.022579, 43.185448, 35.913471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974026, 43.190529, 36.148453>,  <44.893105, 43.198994, 36.540092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974026, 43.190529, 36.148453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016407, 0.999553, -0.024998,
		0.979186, 0.021121, 0.201863,
		0.202301, -0.021166, -0.979095,
		45.034718, 43.184177, 35.854725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300877, 43.803215, 36.496281>,  <44.893105, 43.198994, 36.540092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300877, 43.803215, 36.496281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187000, 43.717884, 36.122448>,  <45.118675, 43.666683, 35.898148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187000, 43.717884, 36.122448>,  <45.300877, 43.803215, 36.496281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187000, 43.717884, 36.122448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052844, 0.976934, -0.206901,
		0.957163, -0.009515, -0.289394,
		-0.284688, -0.213330, -0.934582,
		45.101593, 43.653885, 35.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814960, 44.071056, 35.969307>,  <45.300877, 43.803215, 36.496281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814960, 44.071056, 35.969307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478577, 44.049835, 35.753910>,  <45.276749, 44.037102, 35.624672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478577, 44.049835, 35.753910>,  <45.814960, 44.071056, 35.969307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478577, 44.049835, 35.753910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149342, 0.933771, -0.325221,
		0.520086, -0.353917, -0.777337,
		-0.840956, -0.053054, -0.538496,
		45.226292, 44.033920, 35.592361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953281, 44.423615, 35.365307>,  <45.814960, 44.071056, 35.969307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953281, 44.423615, 35.365307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553349, 44.429146, 35.360348>,  <45.313389, 44.432465, 35.357372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553349, 44.429146, 35.360348>,  <45.953281, 44.423615, 35.365307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553349, 44.429146, 35.360348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017604, 0.918285, -0.395530,
		0.005912, -0.395680, -0.918370,
		-0.999828, 0.013828, -0.012394,
		45.253399, 44.433292, 35.356628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701603, 44.630253, 34.708790>,  <45.953281, 44.423615, 35.365307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701603, 44.630253, 34.708790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399883, 44.718460, 34.956142>,  <45.218849, 44.771385, 35.104553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399883, 44.718460, 34.956142>,  <45.701603, 44.630253, 34.708790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399883, 44.718460, 34.956142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021488, 0.933104, -0.358966,
		-0.656176, -0.284056, -0.699103,
		-0.754302, 0.220522, 0.618384,
		45.173592, 44.784618, 35.141659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114273, 45.019459, 34.291645>,  <45.701603, 44.630253, 34.708790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114273, 45.019459, 34.291645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.055676, 45.099991, 34.679047>,  <45.020515, 45.148312, 34.911488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.055676, 45.099991, 34.679047>,  <45.114273, 45.019459, 34.291645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055676, 45.099991, 34.679047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069396, 0.974565, -0.213091,
		-0.986774, -0.098427, -0.128797,
		-0.146495, 0.201334, 0.968506,
		45.011726, 45.160393, 34.969597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.934452, 40.170177, 40.248211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591820, 39.990044, 40.348988>,  <37.386242, 39.881966, 40.409454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591820, 39.990044, 40.348988>,  <37.934452, 40.170177, 40.248211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591820, 39.990044, 40.348988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078436, -0.368940, -0.926138,
		0.510020, -0.813071, 0.280704,
		-0.856579, -0.450331, 0.251941,
		37.334846, 39.854946, 40.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010201, 39.544037, 40.027683>,  <37.934452, 40.170177, 40.248211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010201, 39.544037, 40.027683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612930, 39.587437, 40.044758>,  <37.374569, 39.613476, 40.055004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612930, 39.587437, 40.044758>,  <38.010201, 39.544037, 40.027683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612930, 39.587437, 40.044758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095174, -0.542891, -0.834393,
		-0.067357, -0.832765, 0.549514,
		-0.993179, 0.108501, 0.042690,
		37.314976, 39.619987, 40.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591053, 38.864323, 39.922493>,  <38.010201, 39.544037, 40.027683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591053, 38.864323, 39.922493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331051, 39.151402, 39.822567>,  <37.175049, 39.323650, 39.762611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331051, 39.151402, 39.822567>,  <37.591053, 38.864323, 39.922493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331051, 39.151402, 39.822567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141276, -0.437122, -0.888237,
		-0.746684, -0.542065, 0.385525,
		-0.650004, 0.717697, -0.249811,
		37.136051, 39.366711, 39.747623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166321, 38.457531, 39.426666>,  <37.591053, 38.864323, 39.922493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166321, 38.457531, 39.426666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067150, 38.843781, 39.395393>,  <37.007648, 39.075531, 39.376629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067150, 38.843781, 39.395393>,  <37.166321, 38.457531, 39.426666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067150, 38.843781, 39.395393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215809, -0.133721, -0.967236,
		-0.944437, -0.222929, 0.241542,
		-0.247924, 0.965620, -0.078181,
		36.992771, 39.133465, 39.371941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537739, 38.510811, 39.057190>,  <37.166321, 38.457531, 39.426666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537739, 38.510811, 39.057190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701946, 38.873947, 39.023022>,  <36.800468, 39.091831, 39.002522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701946, 38.873947, 39.023022>,  <36.537739, 38.510811, 39.057190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701946, 38.873947, 39.023022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250222, 0.022069, -0.967937,
		-0.876850, 0.418728, 0.236222,
		0.410516, 0.907843, -0.085424,
		36.825100, 39.146301, 38.997395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136078, 38.805038, 38.569698>,  <36.537739, 38.510811, 39.057190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136078, 38.805038, 38.569698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460896, 39.038162, 38.557522>,  <36.655785, 39.178036, 38.550217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460896, 39.038162, 38.557522>,  <36.136078, 38.805038, 38.569698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460896, 39.038162, 38.557522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234860, 0.278590, -0.931251,
		-0.534256, 0.763364, 0.363105,
		0.812041, 0.582805, -0.030446,
		36.704510, 39.213005, 38.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869114, 39.362091, 38.192337>,  <36.136078, 38.805038, 38.569698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869114, 39.362091, 38.192337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267044, 39.393810, 38.166920>,  <36.505802, 39.412842, 38.151669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267044, 39.393810, 38.166920>,  <35.869114, 39.362091, 38.192337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267044, 39.393810, 38.166920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079739, 0.221527, -0.971889,
		-0.062996, 0.971924, 0.226704,
		0.994823, 0.079302, -0.063545,
		36.565491, 39.417603, 38.147858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978989, 39.972073, 37.771301>,  <35.869114, 39.362091, 38.192337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978989, 39.972073, 37.771301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338665, 39.800137, 37.738560>,  <36.554470, 39.696976, 37.718914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338665, 39.800137, 37.738560>,  <35.978989, 39.972073, 37.771301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338665, 39.800137, 37.738560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037952, 0.262967, -0.964058,
		0.435912, 0.863764, 0.252771,
		0.899189, -0.429838, -0.081849,
		36.608421, 39.671185, 37.714005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408924, 40.441605, 37.431763>,  <35.978989, 39.972073, 37.771301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408924, 40.441605, 37.431763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598999, 40.091743, 37.393456>,  <36.713043, 39.881824, 37.370472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598999, 40.091743, 37.393456>,  <36.408924, 40.441605, 37.431763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598999, 40.091743, 37.393456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129100, 0.176970, -0.975712,
		0.870360, 0.451286, 0.197013,
		0.475190, -0.874656, -0.095767,
		36.741554, 39.829346, 37.364727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973469, 40.544632, 37.099903>,  <36.408924, 40.441605, 37.431763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973469, 40.544632, 37.099903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948185, 40.152969, 37.022701>,  <36.933014, 39.917973, 36.976379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948185, 40.152969, 37.022701>,  <36.973469, 40.544632, 37.099903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948185, 40.152969, 37.022701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245816, 0.202710, -0.947884,
		0.967253, -0.012470, -0.253506,
		-0.063209, -0.979160, -0.193007,
		36.929222, 39.859222, 36.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342361, 40.370617, 36.447838>,  <36.973469, 40.544632, 37.099903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342361, 40.370617, 36.447838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102955, 40.050934, 36.469913>,  <36.959312, 39.859123, 36.483158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102955, 40.050934, 36.469913>,  <37.342361, 40.370617, 36.447838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102955, 40.050934, 36.469913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274548, 0.139908, -0.951341,
		0.752598, -0.584544, -0.303158,
		-0.598515, -0.799209, 0.055191,
		36.923401, 39.811172, 36.486469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476627, 39.892139, 35.928120>,  <37.342361, 40.370617, 36.447838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476627, 39.892139, 35.928120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094696, 39.800755, 36.004131>,  <36.865540, 39.745922, 36.049740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094696, 39.800755, 36.004131>,  <37.476627, 39.892139, 35.928120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094696, 39.800755, 36.004131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232526, 0.176214, -0.956494,
		0.185024, -0.957475, -0.221375,
		-0.954829, -0.228450, 0.190034,
		36.808247, 39.732216, 36.061142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270718, 39.354378, 35.472256>,  <37.476627, 39.892139, 35.928120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270718, 39.354378, 35.472256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972660, 39.584484, 35.607208>,  <36.793823, 39.722549, 35.688179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972660, 39.584484, 35.607208>,  <37.270718, 39.354378, 35.472256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972660, 39.584484, 35.607208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323917, 0.130018, -0.937109,
		-0.582953, -0.807566, 0.089456,
		-0.745147, 0.575267, 0.337379,
		36.749115, 39.757065, 35.708424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272503, 38.884167, 35.028999>,  <37.270718, 39.354378, 35.472256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272503, 38.884167, 35.028999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518772, 38.626297, 34.847740>,  <37.666534, 38.471573, 34.738983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518772, 38.626297, 34.847740>,  <37.272503, 38.884167, 35.028999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518772, 38.626297, 34.847740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424895, -0.755890, 0.498090,
		-0.663639, -0.114117, -0.739297,
		0.615668, -0.644676, -0.453151,
		37.703472, 38.432896, 34.711796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867088, 38.411964, 34.794674>,  <37.272503, 38.884167, 35.028999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867088, 38.411964, 34.794674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238602, 38.273396, 34.847374>,  <37.461510, 38.190254, 34.878994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238602, 38.273396, 34.847374>,  <36.867088, 38.411964, 34.794674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238602, 38.273396, 34.847374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352524, -0.715979, 0.602579,
		-0.114420, -0.606107, -0.787110,
		0.928781, -0.346422, 0.131745,
		37.517235, 38.169468, 34.886898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810066, 37.715199, 35.028553>,  <36.867088, 38.411964, 34.794674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810066, 37.715199, 35.028553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191860, 37.793365, 35.118675>,  <37.420937, 37.840267, 35.172749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191860, 37.793365, 35.118675>,  <36.810066, 37.715199, 35.028553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191860, 37.793365, 35.118675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058531, -0.618013, 0.783986,
		0.292451, -0.761492, -0.578448,
		0.954488, 0.195420, 0.225309,
		37.478207, 37.851990, 35.186268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244019, 37.071033, 35.080879>,  <36.810066, 37.715199, 35.028553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244019, 37.071033, 35.080879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451649, 37.343864, 35.286919>,  <37.576229, 37.507561, 35.410542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451649, 37.343864, 35.286919>,  <37.244019, 37.071033, 35.080879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451649, 37.343864, 35.286919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002265, -0.603747, 0.797173,
		0.854723, -0.412630, -0.314938,
		0.519080, 0.682075, 0.515102,
		37.607372, 37.548489, 35.441448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734467, 36.625820, 35.502392>,  <37.244019, 37.071033, 35.080879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734467, 36.625820, 35.502392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707836, 36.982796, 35.680885>,  <37.691856, 37.196980, 35.787983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707836, 36.982796, 35.680885>,  <37.734467, 36.625820, 35.502392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707836, 36.982796, 35.680885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021127, -0.448388, 0.893589,
		0.997558, 0.050064, 0.048707,
		-0.066576, 0.892436, 0.446235,
		37.687862, 37.250526, 35.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166046, 36.630833, 36.070732>,  <37.734467, 36.625820, 35.502392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166046, 36.630833, 36.070732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917923, 36.932407, 36.157261>,  <37.769051, 37.113354, 36.209179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917923, 36.932407, 36.157261>,  <38.166046, 36.630833, 36.070732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917923, 36.932407, 36.157261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129477, -0.370440, 0.919788,
		0.773598, 0.542543, 0.327405,
		-0.620308, 0.753937, 0.216325,
		37.731831, 37.158588, 36.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450378, 36.876221, 36.732098>,  <38.166046, 36.630833, 36.070732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450378, 36.876221, 36.732098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068596, 36.995377, 36.725487>,  <37.839527, 37.066872, 36.721519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068596, 36.995377, 36.725487>,  <38.450378, 36.876221, 36.732098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068596, 36.995377, 36.725487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164116, -0.477973, 0.862906,
		0.249154, 0.826319, 0.505094,
		-0.954457, 0.297891, -0.016523,
		37.782257, 37.084743, 36.720531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315559, 37.213825, 37.356850>,  <38.450378, 36.876221, 36.732098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315559, 37.213825, 37.356850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950119, 37.112076, 37.229958>,  <37.730854, 37.051025, 37.153824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950119, 37.112076, 37.229958>,  <38.315559, 37.213825, 37.356850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950119, 37.112076, 37.229958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208550, -0.376605, 0.902594,
		-0.349068, 0.890765, 0.291015,
		-0.913596, -0.254376, -0.317230,
		37.676041, 37.035763, 37.134789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864231, 37.569523, 37.716290>,  <38.315559, 37.213825, 37.356850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864231, 37.569523, 37.716290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643814, 37.258121, 37.596100>,  <37.511562, 37.071281, 37.523987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643814, 37.258121, 37.596100>,  <37.864231, 37.569523, 37.716290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643814, 37.258121, 37.596100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233369, -0.201946, 0.951187,
		-0.801181, 0.594267, -0.070397,
		-0.551043, -0.778501, -0.300479,
		37.478500, 37.024570, 37.505955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259171, 37.562210, 38.188435>,  <37.864231, 37.569523, 37.716290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259171, 37.562210, 38.188435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279877, 37.204460, 38.010708>,  <37.292301, 36.989811, 37.904072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279877, 37.204460, 38.010708>,  <37.259171, 37.562210, 38.188435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279877, 37.204460, 38.010708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267326, -0.441089, 0.856724,
		-0.962215, 0.074431, -0.261921,
		0.051764, -0.894372, -0.444320,
		37.295406, 36.936150, 37.877411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650867, 37.327133, 38.364769>,  <37.259171, 37.562210, 38.188435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650867, 37.327133, 38.364769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869980, 37.007130, 38.266846>,  <37.001446, 36.815128, 38.208092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869980, 37.007130, 38.266846>,  <36.650867, 37.327133, 38.364769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869980, 37.007130, 38.266846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241447, -0.431327, 0.869287,
		-0.801027, -0.417069, -0.429430,
		0.547777, -0.800007, -0.244804,
		37.034313, 36.767128, 38.193405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162071, 36.760281, 38.511517>,  <36.650867, 37.327133, 38.364769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162071, 36.760281, 38.511517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528671, 36.600296, 38.508686>,  <36.748631, 36.504303, 38.506989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528671, 36.600296, 38.508686>,  <36.162071, 36.760281, 38.511517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528671, 36.600296, 38.508686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175874, -0.418768, 0.890900,
		-0.359294, -0.815267, -0.454145,
		0.916502, -0.399967, -0.007077,
		36.803623, 36.480305, 38.506565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073460, 36.087006, 38.680481>,  <36.162071, 36.760281, 38.511517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073460, 36.087006, 38.680481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453579, 36.162731, 38.779346>,  <36.681652, 36.208168, 38.838665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453579, 36.162731, 38.779346>,  <36.073460, 36.087006, 38.680481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453579, 36.162731, 38.779346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215304, -0.173813, 0.960954,
		0.224885, -0.966410, -0.124414,
		0.950300, 0.189317, 0.247160,
		36.738670, 36.219524, 38.853493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079529, 36.001949, 39.364902>,  <36.073460, 36.087006, 38.680481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079529, 36.001949, 39.364902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458557, 36.129673, 39.369873>,  <36.685974, 36.206306, 39.372856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458557, 36.129673, 39.369873>,  <36.079529, 36.001949, 39.364902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458557, 36.129673, 39.369873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026942, 0.041074, 0.998793,
		0.318413, -0.946760, 0.047523,
		0.947569, 0.319309, 0.012429,
		36.742828, 36.225468, 39.373600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428288, 35.520191, 39.749619>,  <36.079529, 36.001949, 39.364902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428288, 35.520191, 39.749619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647476, 35.854347, 39.766850>,  <36.778988, 36.054840, 39.777187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647476, 35.854347, 39.766850>,  <36.428288, 35.520191, 39.749619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647476, 35.854347, 39.766850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111381, -0.123900, 0.986024,
		0.829049, -0.535515, -0.160940,
		0.547971, 0.835387, 0.043073,
		36.811867, 36.104965, 39.779770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836498, 34.888458, 39.681458>,  <36.428288, 35.520191, 39.749619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836498, 34.888458, 39.681458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624657, 34.550686, 39.713589>,  <36.497551, 34.348022, 39.732868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624657, 34.550686, 39.713589>,  <36.836498, 34.888458, 39.681458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624657, 34.550686, 39.713589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429243, 0.185121, -0.884014,
		0.731620, -0.502659, -0.460507,
		-0.529607, -0.844432, 0.080325,
		36.465775, 34.297356, 39.737686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869377, 34.529339, 39.035000>,  <36.836498, 34.888458, 39.681458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869377, 34.529339, 39.035000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528645, 34.406971, 39.205082>,  <36.324207, 34.333549, 39.307133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528645, 34.406971, 39.205082>,  <36.869377, 34.529339, 39.035000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528645, 34.406971, 39.205082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478463, 0.123990, -0.869310,
		0.213224, -0.943946, -0.251993,
		-0.851827, -0.305927, 0.425206,
		36.273098, 34.315193, 39.332645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609257, 34.046818, 38.550869>,  <36.869377, 34.529339, 39.035000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609257, 34.046818, 38.550869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282265, 34.124229, 38.767857>,  <36.086067, 34.170677, 38.898048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282265, 34.124229, 38.767857>,  <36.609257, 34.046818, 38.550869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282265, 34.124229, 38.767857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532387, 0.105432, -0.839909,
		-0.219743, -0.975412, 0.016846,
		-0.817482, 0.193533, 0.542465,
		36.037022, 34.182289, 38.930595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223656, 33.611820, 38.253693>,  <36.609257, 34.046818, 38.550869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223656, 33.611820, 38.253693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002846, 33.904659, 38.413345>,  <35.870358, 34.080360, 38.509136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002846, 33.904659, 38.413345>,  <36.223656, 33.611820, 38.253693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002846, 33.904659, 38.413345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496695, 0.095765, -0.862626,
		-0.669746, -0.674439, 0.310763,
		-0.552028, 0.732094, 0.399128,
		35.837238, 34.124287, 38.533085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561012, 33.557812, 37.915749>,  <36.223656, 33.611820, 38.253693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561012, 33.557812, 37.915749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508743, 33.911213, 38.095680>,  <35.477383, 34.123253, 38.203640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508743, 33.911213, 38.095680>,  <35.561012, 33.557812, 37.915749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508743, 33.911213, 38.095680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568474, 0.304953, -0.764095,
		-0.812258, -0.355557, 0.462402,
		-0.130669, 0.883506, 0.449825,
		35.469543, 34.176266, 38.230629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806980, 33.678215, 38.075623>,  <35.561012, 33.557812, 37.915749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806980, 33.678215, 38.075623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020531, 34.013134, 38.028458>,  <35.148663, 34.214085, 38.000160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020531, 34.013134, 38.028458>,  <34.806980, 33.678215, 38.075623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020531, 34.013134, 38.028458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672352, 0.335804, -0.659680,
		-0.512755, 0.431468, 0.742239,
		0.533878, 0.837300, -0.117913,
		35.180695, 34.264324, 37.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392090, 34.168709, 38.159760>,  <34.806980, 33.678215, 38.075623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392090, 34.168709, 38.159760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683300, 34.344738, 37.949493>,  <34.858025, 34.450356, 37.823334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683300, 34.344738, 37.949493>,  <34.392090, 34.168709, 38.159760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683300, 34.344738, 37.949493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670198, 0.295484, -0.680826,
		-0.144286, 0.847955, 0.510053,
		0.728022, 0.440070, -0.525663,
		34.901707, 34.476761, 37.791794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201809, 34.945232, 38.046379>,  <34.392090, 34.168709, 38.159760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201809, 34.945232, 38.046379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450825, 34.800884, 37.768612>,  <34.600235, 34.714275, 37.601952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450825, 34.800884, 37.768612>,  <34.201809, 34.945232, 38.046379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450825, 34.800884, 37.768612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603743, 0.343121, -0.719557,
		0.497934, 0.867205, -0.004263,
		0.622541, -0.360866, -0.694420,
		34.637589, 34.692623, 37.560287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829933, 35.127659, 37.432487>,  <34.201809, 34.945232, 38.046379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829933, 35.127659, 37.432487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160957, 34.971790, 37.270844>,  <34.359570, 34.878269, 37.173859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160957, 34.971790, 37.270844>,  <33.829933, 35.127659, 37.432487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160957, 34.971790, 37.270844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399379, 0.097218, -0.911617,
		0.394521, 0.915807, -0.075174,
		0.827556, -0.389675, -0.404108,
		34.409225, 34.854889, 37.149612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075058, 35.587780, 36.883499>,  <33.829933, 35.127659, 37.432487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075058, 35.587780, 36.883499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198883, 35.216412, 36.801327>,  <34.273178, 34.993591, 36.752022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198883, 35.216412, 36.801327>,  <34.075058, 35.587780, 36.883499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198883, 35.216412, 36.801327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326873, 0.098979, -0.939871,
		0.892930, 0.358100, -0.272836,
		0.309563, -0.928422, -0.205435,
		34.291752, 34.937885, 36.739697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553169, 35.669498, 36.247143>,  <34.075058, 35.587780, 36.883499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553169, 35.669498, 36.247143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339226, 35.334259, 36.290066>,  <34.210857, 35.133118, 36.315819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339226, 35.334259, 36.290066>,  <34.553169, 35.669498, 36.247143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339226, 35.334259, 36.290066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531626, 0.235091, -0.813699,
		0.656731, -0.492266, -0.571295,
		-0.534863, -0.838097, 0.107310,
		34.178768, 35.082829, 36.322258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467690, 35.489708, 35.606670>,  <34.553169, 35.669498, 36.247143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467690, 35.489708, 35.606670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190266, 35.278374, 35.802563>,  <34.023811, 35.151573, 35.920097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190266, 35.278374, 35.802563>,  <34.467690, 35.489708, 35.606670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190266, 35.278374, 35.802563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592675, 0.032013, -0.804806,
		0.409528, -0.848433, -0.335333,
		-0.693559, -0.528334, 0.489735,
		33.982197, 35.119873, 35.949482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.110615, 33.570263, 43.135735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.718922, 33.490452, 43.150097>,  <37.483906, 33.442566, 43.158714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.718922, 33.490452, 43.150097>,  <38.110615, 33.570263, 43.135735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718922, 33.490452, 43.150097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005844, -0.149238, -0.988784,
		0.202648, -0.968461, 0.144973,
		-0.979234, -0.199528, 0.035902,
		37.425152, 33.430595, 43.160866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082279, 32.927944, 42.865673>,  <38.110615, 33.570263, 43.135735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082279, 32.927944, 42.865673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725544, 33.102013, 42.816269>,  <37.511501, 33.206451, 42.786625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725544, 33.102013, 42.816269>,  <38.082279, 32.927944, 42.865673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725544, 33.102013, 42.816269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132848, -0.009034, -0.991095,
		-0.432409, -0.900304, -0.049754,
		-0.891837, 0.435169, -0.123510,
		37.457993, 33.232563, 42.779217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710579, 32.534359, 42.267651>,  <38.082279, 32.927944, 42.865673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710579, 32.534359, 42.267651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480587, 32.859444, 42.305386>,  <37.342590, 33.054493, 42.328026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480587, 32.859444, 42.305386>,  <37.710579, 32.534359, 42.267651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480587, 32.859444, 42.305386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248816, -0.063855, -0.966444,
		-0.779416, -0.579157, 0.238931,
		-0.574979, 0.812712, 0.094334,
		37.308094, 33.103256, 42.333687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096603, 32.417667, 41.830956>,  <37.710579, 32.534359, 42.267651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096603, 32.417667, 41.830956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088421, 32.815407, 41.872639>,  <37.083511, 33.054050, 41.897648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088421, 32.815407, 41.872639>,  <37.096603, 32.417667, 41.830956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088421, 32.815407, 41.872639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302315, 0.093197, -0.948641,
		-0.952989, -0.050911, 0.298698,
		-0.020458, 0.994345, 0.104207,
		37.082283, 33.113708, 41.903900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416122, 32.671032, 41.563908>,  <37.096603, 32.417667, 41.830956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416122, 32.671032, 41.563908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688824, 32.962811, 41.541534>,  <36.852444, 33.137878, 41.528111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688824, 32.962811, 41.541534>,  <36.416122, 32.671032, 41.563908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688824, 32.962811, 41.541534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284811, 0.194211, -0.938704,
		-0.673870, 0.655890, 0.340158,
		0.681749, 0.729445, -0.055932,
		36.893349, 33.181644, 41.524754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985302, 33.120590, 41.289684>,  <36.416122, 32.671032, 41.563908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985302, 33.120590, 41.289684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314400, 33.345505, 41.256405>,  <36.511860, 33.480453, 41.236439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314400, 33.345505, 41.256405>,  <35.985302, 33.120590, 41.289684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314400, 33.345505, 41.256405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357894, 0.398745, -0.844343,
		-0.441588, 0.724457, 0.529305,
		0.822747, 0.562286, -0.083198,
		36.561222, 33.514191, 41.231445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799809, 33.847027, 41.167950>,  <35.985302, 33.120590, 41.289684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799809, 33.847027, 41.167950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171173, 33.800930, 41.026661>,  <36.393993, 33.773273, 40.941887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171173, 33.800930, 41.026661>,  <35.799809, 33.847027, 41.167950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171173, 33.800930, 41.026661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268507, 0.449008, -0.852230,
		0.256810, 0.886065, 0.385923,
		0.928414, -0.115238, -0.353225,
		36.449696, 33.766357, 40.920692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067627, 34.520298, 40.947983>,  <35.799809, 33.847027, 41.167950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067627, 34.520298, 40.947983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280548, 34.245720, 40.749813>,  <36.408298, 34.080971, 40.630913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280548, 34.245720, 40.749813>,  <36.067627, 34.520298, 40.947983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280548, 34.245720, 40.749813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141396, 0.504912, -0.851511,
		0.834664, 0.523310, 0.171703,
		0.532299, -0.686448, -0.495426,
		36.440239, 34.039787, 40.601185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494663, 34.921856, 40.453552>,  <36.067627, 34.520298, 40.947983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494663, 34.921856, 40.453552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497665, 34.543720, 40.323147>,  <36.499466, 34.316841, 40.244904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497665, 34.543720, 40.323147>,  <36.494663, 34.921856, 40.453552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497665, 34.543720, 40.323147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264599, 0.312525, -0.912313,
		0.964329, 0.093111, -0.247788,
		0.007506, -0.945335, -0.326014,
		36.499916, 34.260120, 40.225342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016182, 35.408142, 40.192204>,  <36.494663, 34.921856, 40.453552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016182, 35.408142, 40.192204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015392, 35.808128, 40.188877>,  <37.014919, 36.048119, 40.186882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015392, 35.808128, 40.188877>,  <37.016182, 35.408142, 40.192204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015392, 35.808128, 40.188877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025756, 0.008264, 0.999634,
		0.999666, 0.002190, 0.025739,
		-0.001977, 0.999963, -0.008318,
		37.014801, 36.108116, 40.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558136, 35.624725, 40.696659>,  <37.016182, 35.408142, 40.192204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558136, 35.624725, 40.696659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315845, 35.940617, 40.657825>,  <37.170471, 36.130150, 40.634525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315845, 35.940617, 40.657825>,  <37.558136, 35.624725, 40.696659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315845, 35.940617, 40.657825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129724, 0.218404, 0.967197,
		0.785024, 0.573266, -0.234741,
		-0.605730, 0.789725, -0.097086,
		37.134125, 36.177536, 40.628700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903744, 36.105721, 41.059555>,  <37.558136, 35.624725, 40.696659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903744, 36.105721, 41.059555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521980, 36.214451, 41.010204>,  <37.292923, 36.279690, 40.980595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521980, 36.214451, 41.010204>,  <37.903744, 36.105721, 41.059555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521980, 36.214451, 41.010204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099953, 0.098439, 0.990111,
		0.281279, 0.957300, -0.066782,
		-0.954406, 0.271822, -0.123374,
		37.235657, 36.295998, 40.973190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834579, 36.689358, 41.597637>,  <37.903744, 36.105721, 41.059555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834579, 36.689358, 41.597637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463726, 36.567348, 41.510567>,  <37.241215, 36.494144, 41.458324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463726, 36.567348, 41.510567>,  <37.834579, 36.689358, 41.597637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463726, 36.567348, 41.510567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240631, 0.039295, 0.969821,
		-0.287264, 0.951534, -0.109829,
		-0.927133, -0.305023, -0.217681,
		37.185585, 36.475842, 41.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336197, 37.236313, 41.854607>,  <37.834579, 36.689358, 41.597637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336197, 37.236313, 41.854607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159748, 36.878975, 41.820339>,  <37.053879, 36.664570, 41.799778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159748, 36.878975, 41.820339>,  <37.336197, 37.236313, 41.854607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159748, 36.878975, 41.820339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120916, -0.035424, 0.992031,
		-0.889263, 0.447967, -0.092393,
		-0.441124, -0.893348, -0.085667,
		37.027412, 36.610970, 41.794640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848507, 37.321896, 42.268272>,  <37.336197, 37.236313, 41.854607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848507, 37.321896, 42.268272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795620, 36.929230, 42.213352>,  <36.763889, 36.693630, 42.180401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795620, 36.929230, 42.213352>,  <36.848507, 37.321896, 42.268272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795620, 36.929230, 42.213352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170601, -0.113916, 0.978733,
		-0.976429, 0.152827, -0.152412,
		-0.132215, -0.981665, -0.137304,
		36.755955, 36.634731, 42.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185032, 37.057747, 42.646381>,  <36.848507, 37.321896, 42.268272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185032, 37.057747, 42.646381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474777, 36.785770, 42.600822>,  <36.648624, 36.622585, 42.573486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474777, 36.785770, 42.600822>,  <36.185032, 37.057747, 42.646381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474777, 36.785770, 42.600822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115505, -0.282560, 0.952270,
		-0.679672, -0.676636, -0.283213,
		0.724365, -0.679944, -0.113894,
		36.692085, 36.581787, 42.566654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940739, 36.606594, 43.095600>,  <36.185032, 37.057747, 42.646381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940739, 36.606594, 43.095600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321171, 36.504955, 43.025307>,  <36.549431, 36.443970, 42.983131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321171, 36.504955, 43.025307>,  <35.940739, 36.606594, 43.095600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321171, 36.504955, 43.025307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144028, -0.138551, 0.979826,
		-0.273323, -0.957202, -0.095175,
		0.951078, -0.254101, -0.175734,
		36.606495, 36.428726, 42.972588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043549, 36.023758, 43.549252>,  <35.940739, 36.606594, 43.095600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043549, 36.023758, 43.549252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394566, 36.195969, 43.464817>,  <36.605175, 36.299297, 43.414154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394566, 36.195969, 43.464817>,  <36.043549, 36.023758, 43.549252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394566, 36.195969, 43.464817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258190, -0.053308, 0.964622,
		0.404046, -0.901001, -0.157939,
		0.877545, 0.430530, -0.211090,
		36.657829, 36.325127, 43.401489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532322, 35.631374, 43.871460>,  <36.043549, 36.023758, 43.549252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532322, 35.631374, 43.871460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715912, 35.980072, 43.802864>,  <36.826065, 36.189289, 43.761707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715912, 35.980072, 43.802864>,  <36.532322, 35.631374, 43.871460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715912, 35.980072, 43.802864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394828, -0.027220, 0.918352,
		0.795896, -0.489212, -0.356681,
		0.458978, 0.871740, -0.171490,
		36.853603, 36.241592, 43.751415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271812, 35.515278, 43.943584>,  <36.532322, 35.631374, 43.871460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271812, 35.515278, 43.943584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167648, 35.888367, 44.043354>,  <37.105148, 36.112221, 44.103214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167648, 35.888367, 44.043354>,  <37.271812, 35.515278, 43.943584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167648, 35.888367, 44.043354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226800, -0.192009, 0.954827,
		0.938481, 0.305217, -0.161541,
		-0.260412, 0.932724, 0.249420,
		37.089523, 36.168182, 44.118179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798943, 35.792980, 44.367229>,  <37.271812, 35.515278, 43.943584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798943, 35.792980, 44.367229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512863, 36.060734, 44.447651>,  <37.341217, 36.221386, 44.495903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512863, 36.060734, 44.447651>,  <37.798943, 35.792980, 44.367229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512863, 36.060734, 44.447651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306046, 0.041312, 0.951120,
		0.628356, 0.741770, -0.234408,
		-0.715196, 0.669381, 0.201057,
		37.298306, 36.261547, 44.507969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129124, 36.294777, 44.726757>,  <37.798943, 35.792980, 44.367229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129124, 36.294777, 44.726757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743412, 36.346558, 44.819195>,  <37.511986, 36.377625, 44.874657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743412, 36.346558, 44.819195>,  <38.129124, 36.294777, 44.726757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743412, 36.346558, 44.819195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240350, 0.060923, 0.968772,
		0.111331, 0.989712, -0.089861,
		-0.964281, 0.129453, 0.231095,
		37.454128, 36.385395, 44.888523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155300, 36.889011, 45.153271>,  <38.129124, 36.294777, 44.726757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155300, 36.889011, 45.153271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820702, 36.684902, 45.233170>,  <37.619942, 36.562439, 45.281109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820702, 36.684902, 45.233170>,  <38.155300, 36.889011, 45.153271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820702, 36.684902, 45.233170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250717, -0.032267, 0.967523,
		-0.487252, 0.859409, 0.154924,
		-0.836497, -0.510269, 0.199746,
		37.569752, 36.531822, 45.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.964664, 36.070786, 46.829109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333035, 36.013535, 46.684109>,  <33.554058, 35.979183, 46.597107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333035, 36.013535, 46.684109>,  <32.964664, 36.070786, 46.829109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333035, 36.013535, 46.684109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297438, 0.342934, -0.891026,
		0.251841, 0.928392, 0.273247,
		0.920927, -0.143123, -0.362504,
		33.609314, 35.970596, 46.575359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100609, 36.801285, 46.506016>,  <32.964664, 36.070786, 46.829109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100609, 36.801285, 46.506016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357975, 36.532322, 46.359657>,  <33.512394, 36.370945, 46.271843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357975, 36.532322, 46.359657>,  <33.100609, 36.801285, 46.506016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357975, 36.532322, 46.359657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291862, 0.226397, -0.929280,
		0.707695, 0.704705, -0.050584,
		0.643416, -0.672410, -0.365896,
		33.550999, 36.330601, 46.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514950, 37.196819, 45.986702>,  <33.100609, 36.801285, 46.506016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514950, 37.196819, 45.986702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.570595, 36.813431, 45.887115>,  <33.603981, 36.583397, 45.827362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.570595, 36.813431, 45.887115>,  <33.514950, 37.196819, 45.986702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570595, 36.813431, 45.887115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113277, 0.234361, -0.965527,
		0.983776, 0.162521, -0.075969,
		0.139114, -0.958468, -0.248969,
		33.612328, 36.525890, 45.812424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965656, 37.100639, 45.406708>,  <33.514950, 37.196819, 45.986702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965656, 37.100639, 45.406708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745514, 36.767551, 45.382420>,  <33.613430, 36.567699, 45.367847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745514, 36.767551, 45.382420>,  <33.965656, 37.100639, 45.406708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745514, 36.767551, 45.382420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096996, 0.136004, -0.985949,
		0.829277, -0.536733, -0.155621,
		-0.550357, -0.832719, -0.060724,
		33.580406, 36.517735, 45.364201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294739, 36.795948, 44.864040>,  <33.965656, 37.100639, 45.406708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294739, 36.795948, 44.864040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940456, 36.621281, 44.927097>,  <33.727886, 36.516479, 44.964931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940456, 36.621281, 44.927097>,  <34.294739, 36.795948, 44.864040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940456, 36.621281, 44.927097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216249, 0.087567, -0.972404,
		0.410815, -0.895350, -0.171987,
		-0.885702, -0.436669, 0.157645,
		33.674747, 36.490280, 44.974392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274868, 36.447075, 44.325733>,  <34.294739, 36.795948, 44.864040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274868, 36.447075, 44.325733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.894585, 36.453651, 44.449593>,  <33.666412, 36.457600, 44.523907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.894585, 36.453651, 44.449593>,  <34.274868, 36.447075, 44.325733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894585, 36.453651, 44.449593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310025, -0.031505, -0.950206,
		-0.005851, -0.999369, 0.035044,
		-0.950710, 0.016424, 0.309645,
		33.609371, 36.458584, 44.542484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862644, 35.973339, 43.906326>,  <34.274868, 36.447075, 44.325733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862644, 35.973339, 43.906326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568821, 36.199558, 44.056309>,  <33.392529, 36.335289, 44.146297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568821, 36.199558, 44.056309>,  <33.862644, 35.973339, 43.906326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568821, 36.199558, 44.056309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453398, 0.002041, -0.891306,
		-0.504838, -0.824716, 0.254918,
		-0.734554, 0.565544, 0.374954,
		33.348454, 36.369221, 44.168797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341591, 35.704891, 43.655258>,  <33.862644, 35.973339, 43.906326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341591, 35.704891, 43.655258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.208530, 36.069801, 43.750843>,  <33.128693, 36.288746, 43.808193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.208530, 36.069801, 43.750843>,  <33.341591, 35.704891, 43.655258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208530, 36.069801, 43.750843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476519, 0.056066, -0.877375,
		-0.813801, -0.405731, 0.416064,
		-0.332651, 0.912271, 0.238965,
		33.108734, 36.343483, 43.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632156, 35.760380, 43.427540>,  <33.341591, 35.704891, 43.655258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632156, 35.760380, 43.427540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689541, 36.153053, 43.477673>,  <32.723972, 36.388657, 43.507751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689541, 36.153053, 43.477673>,  <32.632156, 35.760380, 43.427540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689541, 36.153053, 43.477673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443851, 0.177015, -0.878443,
		-0.884542, 0.070398, 0.461118,
		0.143465, 0.981687, 0.125331,
		32.732582, 36.447559, 43.515270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955641, 36.177441, 43.473331>,  <32.632156, 35.760380, 43.427540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955641, 36.177441, 43.473331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249149, 36.421577, 43.353962>,  <32.425255, 36.568062, 43.282341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249149, 36.421577, 43.353962>,  <31.955641, 36.177441, 43.473331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249149, 36.421577, 43.353962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444085, 0.098463, -0.890558,
		-0.514164, 0.785992, 0.343295,
		0.733773, 0.610345, -0.298421,
		32.469280, 36.604683, 43.264435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677780, 36.524689, 43.004677>,  <31.955641, 36.177441, 43.473331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677780, 36.524689, 43.004677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057060, 36.607784, 42.908543>,  <32.284630, 36.657642, 42.850864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057060, 36.607784, 42.908543>,  <31.677780, 36.524689, 43.004677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057060, 36.607784, 42.908543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256964, 0.056771, -0.964752,
		-0.186774, 0.976535, 0.107212,
		0.948201, 0.207740, -0.240331,
		32.341522, 36.670105, 42.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561960, 37.071133, 42.633492>,  <31.677780, 36.524689, 43.004677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561960, 37.071133, 42.633492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925980, 36.925121, 42.554939>,  <32.144390, 36.837513, 42.507809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925980, 36.925121, 42.554939>,  <31.561960, 37.071133, 42.633492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925980, 36.925121, 42.554939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178956, 0.081334, -0.980489,
		0.373883, 0.927435, 0.008693,
		0.910047, -0.365032, -0.196380,
		32.198994, 36.815613, 42.496025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867027, 37.519314, 42.178482>,  <31.561960, 37.071133, 42.633492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867027, 37.519314, 42.178482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093681, 37.190376, 42.157776>,  <32.229675, 36.993015, 42.145351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093681, 37.190376, 42.157776>,  <31.867027, 37.519314, 42.178482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093681, 37.190376, 42.157776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089132, 0.001285, -0.996019,
		0.819133, 0.568994, -0.072569,
		0.566635, -0.822341, -0.051768,
		32.263672, 36.943672, 42.142246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252472, 37.670162, 41.680172>,  <31.867027, 37.519314, 42.178482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252472, 37.670162, 41.680172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251217, 37.271122, 41.707825>,  <32.250462, 37.031696, 41.724419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251217, 37.271122, 41.707825>,  <32.252472, 37.670162, 41.680172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251217, 37.271122, 41.707825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300463, -0.064998, -0.951576,
		0.953788, -0.023761, -0.299538,
		-0.003141, -0.997603, 0.069133,
		32.250275, 36.971840, 41.728565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018890, 37.790470, 41.571609>,  <32.252472, 37.670162, 41.680172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018890, 37.790470, 41.571609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236217, 38.122200, 41.519432>,  <33.366615, 38.321239, 41.488125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236217, 38.122200, 41.519432>,  <33.018890, 37.790470, 41.571609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236217, 38.122200, 41.519432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163198, 0.048076, 0.985421,
		0.823510, -0.556688, -0.109224,
		0.543321, 0.829329, -0.130441,
		33.399216, 38.370998, 41.480301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569057, 37.728516, 41.999172>,  <33.018890, 37.790470, 41.571609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569057, 37.728516, 41.999172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503689, 38.117416, 41.932217>,  <33.464466, 38.350758, 41.892044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503689, 38.117416, 41.932217>,  <33.569057, 37.728516, 41.999172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503689, 38.117416, 41.932217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127970, 0.189127, 0.973578,
		0.978221, 0.137687, -0.155328,
		-0.163426, 0.972252, -0.167388,
		33.454662, 38.409092, 41.882000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166443, 38.140549, 42.176968>,  <33.569057, 37.728516, 41.999172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166443, 38.140549, 42.176968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895187, 38.434444, 42.183819>,  <33.732433, 38.610783, 42.187931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895187, 38.434444, 42.183819>,  <34.166443, 38.140549, 42.176968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895187, 38.434444, 42.183819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317105, 0.271494, 0.908700,
		0.663005, 0.621654, -0.417098,
		-0.678137, 0.734736, 0.017128,
		33.691746, 38.654865, 42.188957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524227, 38.821030, 42.264313>,  <34.166443, 38.140549, 42.176968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524227, 38.821030, 42.264313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149612, 38.857315, 42.399769>,  <33.924843, 38.879086, 42.481041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149612, 38.857315, 42.399769>,  <34.524227, 38.821030, 42.264313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149612, 38.857315, 42.399769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350576, 0.244189, 0.904139,
		-0.000676, 0.965476, -0.260493,
		-0.936534, 0.090712, 0.338637,
		33.868652, 38.884529, 42.501362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436481, 39.410885, 42.664009>,  <34.524227, 38.821030, 42.264313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436481, 39.410885, 42.664009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109440, 39.206532, 42.770241>,  <33.913216, 39.083920, 42.833981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109440, 39.206532, 42.770241>,  <34.436481, 39.410885, 42.664009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109440, 39.206532, 42.770241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176043, 0.217358, 0.960086,
		-0.548213, 0.831720, -0.087776,
		-0.817601, -0.510879, 0.265577,
		33.864159, 39.053268, 42.849915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034489, 39.918671, 43.157188>,  <34.436481, 39.410885, 42.664009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034489, 39.918671, 43.157188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971298, 39.527390, 43.211102>,  <33.933384, 39.292622, 43.243450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971298, 39.527390, 43.211102>,  <34.034489, 39.918671, 43.157188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971298, 39.527390, 43.211102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129319, 0.114823, 0.984933,
		-0.978939, 0.173023, 0.108361,
		-0.157974, -0.978202, 0.134780,
		33.923904, 39.233929, 43.251537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888000, 39.931896, 43.874477>,  <34.034489, 39.918671, 43.157188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888000, 39.931896, 43.874477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924847, 39.538078, 43.814892>,  <33.946953, 39.301788, 43.779140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924847, 39.538078, 43.814892>,  <33.888000, 39.931896, 43.874477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924847, 39.538078, 43.814892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378856, -0.103698, 0.919628,
		-0.920860, -0.141149, 0.363448,
		0.092116, -0.984542, -0.148967,
		33.952480, 39.242714, 43.770203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617390, 39.582970, 44.488377>,  <33.888000, 39.931896, 43.874477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617390, 39.582970, 44.488377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875328, 39.338512, 44.304779>,  <34.030090, 39.191837, 44.194622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875328, 39.338512, 44.304779>,  <33.617390, 39.582970, 44.488377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875328, 39.338512, 44.304779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372492, -0.273095, 0.886944,
		-0.667397, -0.742917, 0.051540,
		0.644850, -0.611141, -0.458993,
		34.068783, 39.155170, 44.167080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485268, 39.056171, 44.781254>,  <33.617390, 39.582970, 44.488377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485268, 39.056171, 44.781254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856705, 39.014309, 44.638836>,  <34.079567, 38.989189, 44.553387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856705, 39.014309, 44.638836>,  <33.485268, 39.056171, 44.781254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856705, 39.014309, 44.638836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296637, -0.367171, 0.881585,
		-0.222993, -0.924247, -0.309906,
		0.928591, -0.104658, -0.356042,
		34.135281, 38.982910, 44.532024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737480, 38.316063, 44.944611>,  <33.485268, 39.056171, 44.781254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737480, 38.316063, 44.944611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048824, 38.559608, 44.883377>,  <34.235630, 38.705734, 44.846638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048824, 38.559608, 44.883377>,  <33.737480, 38.316063, 44.944611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048824, 38.559608, 44.883377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440922, -0.356569, 0.823679,
		0.446921, -0.708621, -0.546001,
		0.778363, 0.608863, -0.153088,
		34.282333, 38.742268, 44.837452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197815, 37.980331, 45.175316>,  <33.737480, 38.316063, 44.944611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197815, 37.980331, 45.175316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379898, 38.336411, 45.182583>,  <34.489147, 38.550060, 45.186943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379898, 38.336411, 45.182583>,  <34.197815, 37.980331, 45.175316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379898, 38.336411, 45.182583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409419, -0.227388, 0.883556,
		0.790674, -0.394760, -0.467973,
		0.455204, 0.890202, 0.018167,
		34.516460, 38.603470, 45.188034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854527, 37.761261, 45.365341>,  <34.197815, 37.980331, 45.175316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854527, 37.761261, 45.365341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886211, 38.158020, 45.405079>,  <34.905224, 38.396076, 45.428921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886211, 38.158020, 45.405079>,  <34.854527, 37.761261, 45.365341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886211, 38.158020, 45.405079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611355, -0.127053, 0.781091,
		0.787382, -0.001138, -0.616464,
		0.079213, 0.991895, 0.099343,
		34.909977, 38.455589, 45.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594826, 37.974670, 45.477154>,  <34.854527, 37.761261, 45.365341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594826, 37.974670, 45.477154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.339619, 38.235596, 45.640823>,  <35.186493, 38.392151, 45.739025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.339619, 38.235596, 45.640823>,  <35.594826, 37.974670, 45.477154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339619, 38.235596, 45.640823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436474, -0.131409, 0.890069,
		0.634370, 0.746475, -0.200875,
		-0.638017, 0.652309, 0.409178,
		35.148212, 38.431290, 45.763577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011669, 38.216232, 46.012932>,  <35.594826, 37.974670, 45.477154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011669, 38.216232, 46.012932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637779, 38.323734, 46.105934>,  <35.413445, 38.388237, 46.161736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637779, 38.323734, 46.105934>,  <36.011669, 38.216232, 46.012932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637779, 38.323734, 46.105934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230247, -0.040343, 0.972296,
		0.270693, 0.962362, -0.024172,
		-0.934726, 0.268759, 0.232501,
		35.357361, 38.404362, 46.175686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341278, 38.892452, 45.902485>,  <36.011669, 38.216232, 46.012932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341278, 38.892452, 45.902485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740276, 38.910378, 45.924366>,  <36.979675, 38.921131, 45.937496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740276, 38.910378, 45.924366>,  <36.341278, 38.892452, 45.902485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740276, 38.910378, 45.924366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047957, 0.139780, -0.989021,
		-0.051966, 0.989168, 0.137281,
		0.997497, 0.044812, 0.054701,
		37.039524, 38.923820, 45.940777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442753, 39.431427, 45.513741>,  <36.341278, 38.892452, 45.902485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442753, 39.431427, 45.513741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788399, 39.231289, 45.535538>,  <36.995785, 39.111206, 45.548618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788399, 39.231289, 45.535538>,  <36.442753, 39.431427, 45.513741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788399, 39.231289, 45.535538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162977, 0.175723, -0.970855,
		0.476184, 0.847808, 0.233388,
		0.864111, -0.500343, 0.054497,
		37.047630, 39.081184, 45.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954124, 39.958473, 45.435040>,  <36.442753, 39.431427, 45.513741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954124, 39.958473, 45.435040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124077, 39.609138, 45.339748>,  <37.226048, 39.399536, 45.282574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124077, 39.609138, 45.339748>,  <36.954124, 39.958473, 45.435040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124077, 39.609138, 45.339748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108822, 0.310528, -0.944315,
		0.898685, 0.375296, 0.226975,
		0.424880, -0.873342, -0.238227,
		37.251541, 39.347137, 45.268280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561138, 40.071888, 45.035736>,  <36.954124, 39.958473, 45.435040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561138, 40.071888, 45.035736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422295, 39.714024, 44.923241>,  <37.338989, 39.499306, 44.855743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422295, 39.714024, 44.923241>,  <37.561138, 40.071888, 45.035736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422295, 39.714024, 44.923241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073552, 0.272987, -0.959202,
		0.934935, -0.353635, -0.028953,
		-0.347111, -0.894662, -0.281235,
		37.318161, 39.445625, 44.838871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834141, 39.947197, 44.428951>,  <37.561138, 40.071888, 45.035736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834141, 39.947197, 44.428951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569500, 39.647411, 44.419235>,  <37.410717, 39.467541, 44.413406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569500, 39.647411, 44.419235>,  <37.834141, 39.947197, 44.428951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569500, 39.647411, 44.419235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140046, 0.155324, -0.977886,
		0.736663, -0.643567, -0.207722,
		-0.661600, -0.749464, -0.024293,
		37.371021, 39.422573, 44.411949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096382, 39.565598, 43.833939>,  <37.834141, 39.947197, 44.428951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096382, 39.565598, 43.833939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.711460, 39.473072, 43.891159>,  <37.480507, 39.417557, 43.925491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.711460, 39.473072, 43.891159>,  <38.096382, 39.565598, 43.833939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711460, 39.473072, 43.891159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175876, 0.128043, -0.976049,
		0.207463, -0.964415, -0.163899,
		-0.962303, -0.231320, 0.143053,
		37.422768, 39.403679, 43.934074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965469, 39.111675, 43.273598>,  <38.096382, 39.565598, 43.833939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965469, 39.111675, 43.273598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621769, 39.265228, 43.408844>,  <37.415550, 39.357361, 43.489994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621769, 39.265228, 43.408844>,  <37.965469, 39.111675, 43.273598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621769, 39.265228, 43.408844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232279, 0.296119, -0.926477,
		-0.455779, -0.874614, -0.165273,
		-0.859251, 0.383880, 0.338120,
		37.363995, 39.380394, 43.510281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466106, 38.829468, 42.948322>,  <37.965469, 39.111675, 43.273598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466106, 38.829468, 42.948322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308968, 39.174290, 43.076401>,  <37.214684, 39.381184, 43.153248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308968, 39.174290, 43.076401>,  <37.466106, 38.829468, 42.948322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308968, 39.174290, 43.076401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212545, 0.253644, -0.943657,
		-0.894703, -0.438772, 0.083582,
		-0.392851, 0.862058, 0.320195,
		37.191113, 39.432907, 43.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746326, 38.844070, 42.681030>,  <37.466106, 38.829468, 42.948322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746326, 38.844070, 42.681030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858734, 39.220970, 42.753902>,  <36.926178, 39.447109, 42.797626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858734, 39.220970, 42.753902>,  <36.746326, 38.844070, 42.681030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858734, 39.220970, 42.753902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297244, 0.265952, -0.917014,
		-0.912508, 0.203551, 0.354817,
		0.281023, 0.942251, 0.182179,
		36.943043, 39.503647, 42.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279953, 39.250454, 42.235607>,  <36.746326, 38.844070, 42.681030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279953, 39.250454, 42.235607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588886, 39.486816, 42.328850>,  <36.774246, 39.628632, 42.384796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588886, 39.486816, 42.328850>,  <36.279953, 39.250454, 42.235607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588886, 39.486816, 42.328850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002606, 0.369911, -0.929063,
		-0.635213, 0.716939, 0.287234,
		0.772333, 0.590901, 0.233104,
		36.820587, 39.664085, 42.398781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215363, 39.852985, 41.788273>,  <36.279953, 39.250454, 42.235607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215363, 39.852985, 41.788273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590473, 39.874714, 41.925461>,  <36.815540, 39.887749, 42.007774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590473, 39.874714, 41.925461>,  <36.215363, 39.852985, 41.788273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590473, 39.874714, 41.925461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298177, 0.380225, -0.875511,
		-0.177963, 0.923298, 0.340368,
		0.937774, 0.054319, 0.342972,
		36.871807, 39.891010, 42.028351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488903, 40.588585, 41.603844>,  <36.215363, 39.852985, 41.788273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488903, 40.588585, 41.603844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.764984, 40.302917, 41.650459>,  <36.930634, 40.131516, 41.678429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.764984, 40.302917, 41.650459>,  <36.488903, 40.588585, 41.603844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764984, 40.302917, 41.650459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198223, 0.031705, -0.979644,
		0.695938, 0.699253, 0.163447,
		0.690201, -0.714170, 0.116544,
		36.972046, 40.088665, 41.685421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220440, 40.848804, 41.260036>,  <36.488903, 40.588585, 41.603844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220440, 40.848804, 41.260036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191711, 40.450558, 41.283985>,  <37.174473, 40.211609, 41.298355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191711, 40.450558, 41.283985>,  <37.220440, 40.848804, 41.260036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191711, 40.450558, 41.283985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078551, -0.065490, -0.994757,
		0.994319, -0.066745, 0.082910,
		-0.071825, -0.995619, 0.059875,
		37.170162, 40.151871, 41.301949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604828, 40.684998, 40.699669>,  <37.220440, 40.848804, 41.260036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604828, 40.684998, 40.699669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434219, 40.333649, 40.785969>,  <37.331856, 40.122841, 40.837749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434219, 40.333649, 40.785969>,  <37.604828, 40.684998, 40.699669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434219, 40.333649, 40.785969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206345, -0.137750, -0.968735,
		0.880627, -0.457702, -0.122495,
		-0.426518, -0.878370, 0.215750,
		37.306263, 40.070137, 40.850693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.664913, 36.312531, 28.976116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941935, 36.046825, 29.088631>,  <26.108147, 35.887402, 29.156139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941935, 36.046825, 29.088631>,  <25.664913, 36.312531, 28.976116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941935, 36.046825, 29.088631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302298, 0.086794, 0.949254,
		-0.654970, -0.742441, -0.140697,
		0.692553, -0.664265, 0.281286,
		26.149700, 35.847546, 29.173018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285769, 35.811989, 29.375711>,  <25.664913, 36.312531, 28.976116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285769, 35.811989, 29.375711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.679070, 35.806446, 29.448399>,  <25.915051, 35.803120, 29.492012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.679070, 35.806446, 29.448399>,  <25.285769, 35.811989, 29.375711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679070, 35.806446, 29.448399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181883, -0.011532, 0.983253,
		-0.011532, -0.999838, -0.013860,
		-0.983253, 0.013860, -0.181720,
		25.974045, 35.802288, 29.502914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335846, 35.278042, 29.850557>,  <25.285769, 35.811989, 29.375711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335846, 35.278042, 29.850557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.655973, 35.513348, 29.896919>,  <25.848049, 35.654530, 29.924736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.655973, 35.513348, 29.896919>,  <25.335846, 35.278042, 29.850557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655973, 35.513348, 29.896919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119649, -0.032728, 0.992277,
		0.587516, -0.808005, 0.044192,
		0.800318, 0.588266, 0.115905,
		25.896069, 35.689827, 29.931690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602871, 35.056137, 30.493505>,  <25.335846, 35.278042, 29.850557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602871, 35.056137, 30.493505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.777178, 35.409172, 30.422909>,  <25.881762, 35.620991, 30.380550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.777178, 35.409172, 30.422909>,  <25.602871, 35.056137, 30.493505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777178, 35.409172, 30.422909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048502, 0.218831, 0.974557,
		0.898751, -0.416120, 0.138166,
		0.435768, 0.882586, -0.176492,
		25.907907, 35.673946, 30.369961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189590, 35.042763, 30.973421>,  <25.602871, 35.056137, 30.493505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189590, 35.042763, 30.973421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118830, 35.421810, 30.867050>,  <26.076374, 35.649239, 30.803228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118830, 35.421810, 30.867050>,  <26.189590, 35.042763, 30.973421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118830, 35.421810, 30.867050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183255, 0.297176, 0.937072,
		0.967018, 0.117038, -0.226228,
		-0.176903, 0.947623, -0.265926,
		26.065760, 35.706097, 30.787271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740021, 35.416744, 31.142157>,  <26.189590, 35.042763, 30.973421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740021, 35.416744, 31.142157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436945, 35.677696, 31.135042>,  <26.255100, 35.834267, 31.130774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436945, 35.677696, 31.135042>,  <26.740021, 35.416744, 31.142157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436945, 35.677696, 31.135042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198881, 0.256770, 0.945788,
		0.621576, 0.713075, -0.324297,
		-0.757687, 0.652375, -0.017785,
		26.209639, 35.873409, 31.129707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030352, 35.948647, 31.538809>,  <26.740021, 35.416744, 31.142157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030352, 35.948647, 31.538809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640860, 36.039711, 31.537035>,  <26.407164, 36.094349, 31.535971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640860, 36.039711, 31.537035>,  <27.030352, 35.948647, 31.538809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640860, 36.039711, 31.537035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087184, 0.390740, 0.916363,
		0.210351, 0.891904, -0.400324,
		-0.973731, 0.227660, -0.004433,
		26.348740, 36.108009, 31.535706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977814, 36.483315, 31.941608>,  <27.030352, 35.948647, 31.538809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977814, 36.483315, 31.941608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584684, 36.409508, 31.943134>,  <26.348806, 36.365223, 31.944050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584684, 36.409508, 31.943134>,  <26.977814, 36.483315, 31.941608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584684, 36.409508, 31.943134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046037, 0.265135, 0.963112,
		-0.178722, 0.946392, -0.269075,
		-0.982822, -0.184516, 0.003817,
		26.289837, 36.354153, 31.944279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640995, 37.079533, 32.164467>,  <26.977814, 36.483315, 31.941608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640995, 37.079533, 32.164467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438503, 36.742569, 32.238308>,  <26.317009, 36.540390, 32.282612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438503, 36.742569, 32.238308>,  <26.640995, 37.079533, 32.164467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438503, 36.742569, 32.238308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038778, 0.236077, 0.970960,
		-0.861526, 0.484371, -0.152176,
		-0.506230, -0.842409, 0.184603,
		26.286634, 36.489845, 32.293690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173531, 37.152164, 32.714260>,  <26.640995, 37.079533, 32.164467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173531, 37.152164, 32.714260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.203199, 36.753414, 32.725105>,  <26.221001, 36.514164, 32.731613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.203199, 36.753414, 32.725105>,  <26.173531, 37.152164, 32.714260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203199, 36.753414, 32.725105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187277, 0.040629, 0.981467,
		-0.979503, -0.067719, 0.189705,
		0.074171, -0.996877, 0.027114,
		26.225451, 36.454350, 32.733238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955894, 36.917881, 33.341820>,  <26.173531, 37.152164, 32.714260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955894, 36.917881, 33.341820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154598, 36.602859, 33.195946>,  <26.273821, 36.413849, 33.108421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154598, 36.602859, 33.195946>,  <25.955894, 36.917881, 33.341820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154598, 36.602859, 33.195946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273302, -0.256863, 0.926999,
		-0.823732, -0.560165, 0.087639,
		0.496761, -0.787551, -0.364681,
		26.303627, 36.366592, 33.086540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774502, 36.388851, 33.774803>,  <25.955894, 36.917881, 33.341820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774502, 36.388851, 33.774803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.105701, 36.251743, 33.597298>,  <26.304422, 36.169479, 33.490795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.105701, 36.251743, 33.597298>,  <25.774502, 36.388851, 33.774803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105701, 36.251743, 33.597298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418703, -0.148441, 0.895909,
		-0.372964, -0.927617, 0.020610,
		0.828001, -0.342771, -0.443759,
		26.354101, 36.148911, 33.464169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046547, 35.830116, 34.178288>,  <25.774502, 36.388851, 33.774803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046547, 35.830116, 34.178288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.371979, 35.913513, 33.961170>,  <26.567238, 35.963551, 33.830902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.371979, 35.913513, 33.961170>,  <26.046547, 35.830116, 34.178288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371979, 35.913513, 33.961170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559169, -0.024570, 0.828690,
		0.159441, -0.977715, -0.136573,
		0.813578, 0.208495, -0.542790,
		26.616053, 35.976063, 33.798332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469557, 35.295731, 34.407288>,  <26.046547, 35.830116, 34.178288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469557, 35.295731, 34.407288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692581, 35.569939, 34.220016>,  <26.826397, 35.734463, 34.107655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692581, 35.569939, 34.220016>,  <26.469557, 35.295731, 34.407288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692581, 35.569939, 34.220016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745469, -0.165334, 0.645709,
		0.365238, -0.709036, -0.603215,
		0.557563, 0.685516, -0.468178,
		26.859850, 35.775593, 34.079563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036417, 35.013062, 34.170723>,  <26.469557, 35.295731, 34.407288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036417, 35.013062, 34.170723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.120481, 35.402225, 34.209267>,  <27.170919, 35.635723, 34.232395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.120481, 35.402225, 34.209267>,  <27.036417, 35.013062, 34.170723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120481, 35.402225, 34.209267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734019, -0.222123, 0.641777,
		0.645793, -0.064146, -0.760813,
		0.210161, 0.972906, 0.096362,
		27.183531, 35.694096, 34.238174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713678, 34.885441, 34.270008>,  <27.036417, 35.013062, 34.170723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713678, 34.885441, 34.270008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659248, 35.274422, 34.345703>,  <27.626591, 35.507812, 34.391121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659248, 35.274422, 34.345703>,  <27.713678, 34.885441, 34.270008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659248, 35.274422, 34.345703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790802, -0.008441, 0.612014,
		0.596754, 0.232932, -0.767872,
		-0.136076, 0.972457, 0.189240,
		27.618425, 35.566158, 34.402473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417080, 35.217789, 34.188377>,  <27.713678, 34.885441, 34.270008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417080, 35.217789, 34.188377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184029, 35.463669, 34.401054>,  <28.044199, 35.611195, 34.528660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184029, 35.463669, 34.401054>,  <28.417080, 35.217789, 34.188377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184029, 35.463669, 34.401054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704671, 0.056109, 0.707312,
		0.404950, 0.786765, -0.465850,
		-0.582627, 0.614697, 0.531689,
		28.009241, 35.648079, 34.560562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752024, 35.824528, 34.372158>,  <28.417080, 35.217789, 34.188377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752024, 35.824528, 34.372158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455835, 35.780296, 34.637329>,  <28.278122, 35.753757, 34.796432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455835, 35.780296, 34.637329>,  <28.752024, 35.824528, 34.372158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455835, 35.780296, 34.637329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665139, 0.020916, 0.746427,
		-0.096401, 0.993648, 0.058060,
		-0.740471, -0.110574, 0.662930,
		28.233694, 35.747124, 34.836208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160467, 36.278606, 33.998421>,  <28.752024, 35.824528, 34.372158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160467, 36.278606, 33.998421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486826, 36.051003, 34.039482>,  <29.682640, 35.914440, 34.064117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486826, 36.051003, 34.039482>,  <29.160467, 36.278606, 33.998421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486826, 36.051003, 34.039482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305765, 0.273932, -0.911849,
		0.490736, 0.775361, 0.397485,
		0.815896, -0.569014, 0.102650,
		29.731594, 35.880299, 34.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662935, 36.519566, 33.615688>,  <29.160467, 36.278606, 33.998421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662935, 36.519566, 33.615688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824776, 36.157745, 33.669491>,  <29.921881, 35.940655, 33.701771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824776, 36.157745, 33.669491>,  <29.662935, 36.519566, 33.615688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824776, 36.157745, 33.669491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363887, 0.024308, -0.931126,
		0.838978, 0.425679, 0.338988,
		0.404601, -0.904548, 0.134505,
		29.946156, 35.886379, 33.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359213, 36.518421, 33.498672>,  <29.662935, 36.519566, 33.615688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359213, 36.518421, 33.498672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288816, 36.127796, 33.449100>,  <30.246578, 35.893421, 33.419357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288816, 36.127796, 33.449100>,  <30.359213, 36.518421, 33.498672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288816, 36.127796, 33.449100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379717, 0.048805, -0.923815,
		0.908208, -0.209643, 0.362227,
		-0.175993, -0.976559, -0.123930,
		30.236019, 35.834827, 33.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003242, 36.235580, 33.260471>,  <30.359213, 36.518421, 33.498672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003242, 36.235580, 33.260471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742456, 35.954765, 33.145866>,  <30.585985, 35.786278, 33.077103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742456, 35.954765, 33.145866>,  <31.003242, 36.235580, 33.260471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742456, 35.954765, 33.145866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337946, 0.069223, -0.938616,
		0.678775, -0.708770, 0.192119,
		-0.651964, -0.702035, -0.286513,
		30.546867, 35.744156, 33.059914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387960, 35.807549, 32.911716>,  <31.003242, 36.235580, 33.260471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387960, 35.807549, 32.911716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015110, 35.733273, 32.787354>,  <30.791399, 35.688705, 32.712738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015110, 35.733273, 32.787354>,  <31.387960, 35.807549, 32.911716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015110, 35.733273, 32.787354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339647, -0.150454, -0.928442,
		0.125625, -0.971022, 0.203311,
		-0.932126, -0.185689, -0.310904,
		30.735472, 35.677567, 32.694084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405386, 35.149200, 32.522148>,  <31.387960, 35.807549, 32.911716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405386, 35.149200, 32.522148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.043983, 35.267792, 32.398357>,  <30.827143, 35.338947, 32.324081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.043983, 35.267792, 32.398357>,  <31.405386, 35.149200, 32.522148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043983, 35.267792, 32.398357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217717, -0.304480, -0.927303,
		-0.369159, -0.905202, 0.210550,
		-0.903505, 0.296482, -0.309479,
		30.772932, 35.356735, 32.305515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079597, 34.640522, 31.973431>,  <31.405386, 35.149200, 32.522148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079597, 34.640522, 31.973431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870207, 34.976368, 31.915442>,  <30.744574, 35.177876, 31.880648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870207, 34.976368, 31.915442>,  <31.079597, 34.640522, 31.973431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870207, 34.976368, 31.915442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031745, -0.150813, -0.988052,
		-0.851449, -0.521824, 0.052294,
		-0.523476, 0.839616, -0.144975,
		30.713163, 35.228252, 31.871948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605724, 34.467289, 31.295486>,  <31.079597, 34.640522, 31.973431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605724, 34.467289, 31.295486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639360, 34.862064, 31.350445>,  <30.659542, 35.098930, 31.383421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639360, 34.862064, 31.350445>,  <30.605724, 34.467289, 31.295486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639360, 34.862064, 31.350445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178605, 0.120724, -0.976487,
		-0.980321, 0.106655, -0.166121,
		0.084092, 0.986940, 0.137397,
		30.664589, 35.158146, 31.391665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080233, 34.744019, 30.829372>,  <30.605724, 34.467289, 31.295486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080233, 34.744019, 30.829372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354267, 35.022743, 30.914326>,  <30.518688, 35.189980, 30.965298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354267, 35.022743, 30.914326>,  <30.080233, 34.744019, 30.829372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354267, 35.022743, 30.914326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042710, 0.252629, -0.966620,
		-0.727211, 0.671287, 0.143311,
		0.685084, 0.696816, 0.212385,
		30.559792, 35.231789, 30.978041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759407, 35.346043, 30.695843>,  <30.080233, 34.744019, 30.829372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759407, 35.346043, 30.695843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154350, 35.382557, 30.644014>,  <30.391317, 35.404465, 30.612917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154350, 35.382557, 30.644014>,  <29.759407, 35.346043, 30.695843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154350, 35.382557, 30.644014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150371, 0.281130, -0.947816,
		-0.050093, 0.955319, 0.291303,
		0.987360, 0.091283, -0.129570,
		30.450558, 35.409943, 30.605143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809008, 36.021805, 30.374519>,  <29.759407, 35.346043, 30.695843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809008, 36.021805, 30.374519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157793, 35.841640, 30.297773>,  <30.367064, 35.733543, 30.251726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157793, 35.841640, 30.297773>,  <29.809008, 36.021805, 30.374519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157793, 35.841640, 30.297773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057431, 0.295090, -0.953742,
		0.486191, 0.842647, 0.231440,
		0.871963, -0.450409, -0.191864,
		30.419382, 35.706516, 30.240213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219656, 36.487869, 30.075554>,  <29.809008, 36.021805, 30.374519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219656, 36.487869, 30.075554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343786, 36.131702, 29.942379>,  <30.418264, 35.918003, 29.862474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343786, 36.131702, 29.942379>,  <30.219656, 36.487869, 30.075554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343786, 36.131702, 29.942379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095539, 0.319242, -0.942845,
		0.945817, 0.324399, 0.013999,
		0.310327, -0.890421, -0.332937,
		30.436884, 35.864574, 29.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474844, 36.629791, 29.350630>,  <30.219656, 36.487869, 30.075554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474844, 36.629791, 29.350630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426863, 36.232727, 29.356739>,  <30.398073, 35.994488, 29.360405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426863, 36.232727, 29.356739>,  <30.474844, 36.629791, 29.350630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426863, 36.232727, 29.356739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273861, 0.018299, -0.961596,
		0.954260, -0.119530, -0.274046,
		-0.119955, -0.992662, 0.015273,
		30.390877, 35.934929, 29.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855820, 36.275833, 28.664896>,  <30.474844, 36.629791, 29.350630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855820, 36.275833, 28.664896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.570728, 36.037327, 28.812668>,  <30.399673, 35.894222, 28.901331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.570728, 36.037327, 28.812668>,  <30.855820, 36.275833, 28.664896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570728, 36.037327, 28.812668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286896, -0.232799, -0.929245,
		0.640083, -0.768289, -0.005144,
		-0.712730, -0.596269, 0.369429,
		30.356909, 35.858444, 28.923496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850040, 35.685944, 28.204088>,  <30.855820, 36.275833, 28.664896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850040, 35.685944, 28.204088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504988, 35.643509, 28.401920>,  <30.297956, 35.618046, 28.520620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504988, 35.643509, 28.401920>,  <30.850040, 35.685944, 28.204088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504988, 35.643509, 28.401920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420423, -0.393299, -0.817656,
		0.281263, -0.913269, 0.294670,
		-0.862633, -0.106091, 0.494580,
		30.246199, 35.611683, 28.550295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567474, 35.162834, 27.935183>,  <30.850040, 35.685944, 28.204088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567474, 35.162834, 27.935183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238855, 35.299522, 28.117737>,  <30.041683, 35.381535, 28.227268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238855, 35.299522, 28.117737>,  <30.567474, 35.162834, 27.935183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238855, 35.299522, 28.117737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539393, -0.206537, -0.816332,
		-0.184687, -0.916830, 0.353996,
		-0.821551, 0.341709, 0.456387,
		29.992390, 35.402039, 28.254652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975462, 34.657284, 27.788538>,  <30.567474, 35.162834, 27.935183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975462, 34.657284, 27.788538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813656, 35.010208, 27.884779>,  <29.716572, 35.221962, 27.942524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813656, 35.010208, 27.884779>,  <29.975462, 34.657284, 27.788538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813656, 35.010208, 27.884779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536020, -0.015579, -0.844062,
		-0.740980, -0.470402, 0.479240,
		-0.404515, 0.882315, 0.240601,
		29.692301, 35.274902, 27.956959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237823, 34.585415, 27.661579>,  <29.975462, 34.657284, 27.788538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237823, 34.585415, 27.661579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314114, 34.978069, 27.662956>,  <29.359888, 35.213661, 27.663782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314114, 34.978069, 27.662956>,  <29.237823, 34.585415, 27.661579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314114, 34.978069, 27.662956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566087, 0.112849, -0.816585,
		-0.801979, 0.153794, 0.577215,
		0.190724, 0.981638, 0.003442,
		29.371330, 35.272560, 27.663988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594276, 34.949127, 27.514339>,  <29.237823, 34.585415, 27.661579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594276, 34.949127, 27.514339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890797, 35.202160, 27.424620>,  <29.068708, 35.353981, 27.370789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890797, 35.202160, 27.424620>,  <28.594276, 34.949127, 27.514339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890797, 35.202160, 27.424620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519392, 0.329015, -0.788658,
		-0.425097, 0.701131, 0.572458,
		0.741300, 0.632586, -0.224298,
		29.113186, 35.391937, 27.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197924, 35.456306, 27.540993>,  <28.594276, 34.949127, 27.514339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197924, 35.456306, 27.540993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523645, 35.538383, 27.323809>,  <28.719078, 35.587631, 27.193499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523645, 35.538383, 27.323809>,  <28.197924, 35.456306, 27.540993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523645, 35.538383, 27.323809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578647, 0.360429, -0.731614,
		0.045577, 0.909938, 0.412233,
		0.814304, 0.205193, -0.542960,
		28.767937, 35.599941, 27.160921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057144, 36.173420, 27.304958>,  <28.197924, 35.456306, 27.540993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057144, 36.173420, 27.304958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348553, 36.009869, 27.085114>,  <28.523397, 35.911736, 26.953207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348553, 36.009869, 27.085114>,  <28.057144, 36.173420, 27.304958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348553, 36.009869, 27.085114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441604, 0.333030, -0.833113,
		0.523681, 0.849651, 0.062056,
		0.728522, -0.408881, -0.549611,
		28.567110, 35.887203, 26.920231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154934, 36.629734, 26.845278>,  <28.057144, 36.173420, 27.304958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154934, 36.629734, 26.845278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343193, 36.320274, 26.675594>,  <28.456148, 36.134598, 26.573784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343193, 36.320274, 26.675594>,  <28.154934, 36.629734, 26.845278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343193, 36.320274, 26.675594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353704, 0.275031, -0.894009,
		0.808321, 0.570810, -0.144200,
		0.470650, -0.773650, -0.424210,
		28.484388, 36.088181, 26.548330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459759, 36.979984, 26.266314>,  <28.154934, 36.629734, 26.845278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459759, 36.979984, 26.266314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412756, 36.589695, 26.192398>,  <28.384554, 36.355522, 26.148048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412756, 36.589695, 26.192398>,  <28.459759, 36.979984, 26.266314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412756, 36.589695, 26.192398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607898, 0.217817, -0.763555,
		0.785272, 0.022609, -0.618738,
		-0.117509, -0.975728, -0.184790,
		28.377502, 36.296978, 26.136961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414122, 36.981430, 25.578320>,  <28.459759, 36.979984, 26.266314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414122, 36.981430, 25.578320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268116, 36.625546, 25.688000>,  <28.180513, 36.412014, 25.753809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268116, 36.625546, 25.688000>,  <28.414122, 36.981430, 25.578320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268116, 36.625546, 25.688000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789985, 0.140143, -0.596896,
		0.492635, -0.434490, -0.754009,
		-0.365014, -0.889707, 0.274201,
		28.158611, 36.358635, 25.770260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.784599, 37.350960, 45.787922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.601196, 36.995483, 45.788277>,  <37.491154, 36.782196, 45.788490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.601196, 36.995483, 45.788277>,  <37.784599, 37.350960, 45.787922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601196, 36.995483, 45.788277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005009, 0.003584, 0.999981,
		-0.888676, 0.458495, -0.006095,
		-0.458509, -0.888690, 0.000888,
		37.463642, 36.728878, 45.788544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265869, 37.437462, 46.288086>,  <37.784599, 37.350960, 45.787922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265869, 37.437462, 46.288086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271114, 37.037525, 46.292789>,  <37.274261, 36.797562, 46.295612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271114, 37.037525, 46.292789>,  <37.265869, 37.437462, 46.288086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271114, 37.037525, 46.292789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264253, 0.014808, 0.964340,
		-0.964364, -0.009537, 0.264406,
		0.013113, -0.999845, 0.011760,
		37.275047, 36.737572, 46.296318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988049, 37.186680, 46.949081>,  <37.265869, 37.437462, 46.288086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988049, 37.186680, 46.949081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205875, 36.884338, 46.803684>,  <37.336571, 36.702934, 46.716446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205875, 36.884338, 46.803684>,  <36.988049, 37.186680, 46.949081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205875, 36.884338, 46.803684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357973, -0.182471, 0.915729,
		-0.758486, -0.628798, 0.171208,
		0.544568, -0.755855, -0.363494,
		37.369247, 36.657581, 46.694637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761765, 36.625538, 47.296692>,  <36.988049, 37.186680, 46.949081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761765, 36.625538, 47.296692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127010, 36.533695, 47.161930>,  <37.346157, 36.478592, 47.081074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127010, 36.533695, 47.161930>,  <36.761765, 36.625538, 47.296692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127010, 36.533695, 47.161930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285586, -0.229552, 0.930455,
		-0.290973, -0.945827, -0.144036,
		0.913113, -0.229603, -0.336908,
		37.400944, 36.464813, 47.060856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009544, 36.067860, 47.736198>,  <36.761765, 36.625538, 47.296692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009544, 36.067860, 47.736198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.348389, 36.195419, 47.566158>,  <37.551697, 36.271954, 47.464134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.348389, 36.195419, 47.566158>,  <37.009544, 36.067860, 47.736198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348389, 36.195419, 47.566158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507661, -0.249110, 0.824757,
		0.157118, -0.914466, -0.372916,
		0.847109, 0.318899, -0.425099,
		37.602520, 36.291088, 47.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415810, 35.488628, 47.789539>,  <37.009544, 36.067860, 47.736198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415810, 35.488628, 47.789539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634373, 35.822323, 47.759922>,  <37.765511, 36.022541, 47.742149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634373, 35.822323, 47.759922>,  <37.415810, 35.488628, 47.789539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634373, 35.822323, 47.759922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613835, -0.338759, 0.713056,
		0.569776, -0.435071, -0.697186,
		0.546408, 0.834239, -0.074045,
		37.798294, 36.072594, 47.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058350, 35.287357, 47.684246>,  <37.415810, 35.488628, 47.789539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058350, 35.287357, 47.684246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093884, 35.654984, 47.837833>,  <38.115204, 35.875557, 47.929985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093884, 35.654984, 47.837833>,  <38.058350, 35.287357, 47.684246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093884, 35.654984, 47.837833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711711, -0.328264, 0.621055,
		0.696832, 0.218103, -0.683269,
		0.088838, 0.919061, 0.383971,
		38.120537, 35.930702, 47.953026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696869, 35.278225, 48.069569>,  <38.058350, 35.287357, 47.684246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696869, 35.278225, 48.069569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543251, 35.624912, 48.196888>,  <38.451080, 35.832924, 48.273281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543251, 35.624912, 48.196888>,  <38.696869, 35.278225, 48.069569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543251, 35.624912, 48.196888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555404, -0.058536, 0.829518,
		0.737588, 0.495357, -0.458897,
		-0.384045, 0.866715, 0.318299,
		38.428036, 35.884926, 48.292377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231899, 35.879593, 48.079781>,  <38.696869, 35.278225, 48.069569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231899, 35.879593, 48.079781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934547, 35.950039, 48.337887>,  <38.756138, 35.992306, 48.492752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934547, 35.950039, 48.337887>,  <39.231899, 35.879593, 48.079781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934547, 35.950039, 48.337887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637350, -0.106152, 0.763228,
		0.202911, 0.978630, -0.033335,
		-0.743379, 0.176113, 0.645269,
		38.711533, 36.002872, 48.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482616, 36.351936, 48.580078>,  <39.231899, 35.879593, 48.079781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482616, 36.351936, 48.580078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170860, 36.189846, 48.771217>,  <38.983807, 36.092590, 48.885902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170860, 36.189846, 48.771217>,  <39.482616, 36.351936, 48.580078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170860, 36.189846, 48.771217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516370, 0.016496, 0.856207,
		-0.354843, 0.914066, 0.196391,
		-0.779390, -0.405229, 0.477850,
		38.937042, 36.068275, 48.914574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400959, 36.762718, 49.107357>,  <39.482616, 36.351936, 48.580078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400959, 36.762718, 49.107357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241516, 36.413536, 49.219826>,  <39.145851, 36.204025, 49.287308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241516, 36.413536, 49.219826>,  <39.400959, 36.762718, 49.107357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241516, 36.413536, 49.219826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626711, -0.035440, 0.778446,
		-0.669586, 0.486505, 0.561219,
		-0.398607, -0.872959, 0.281168,
		39.121933, 36.151649, 49.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515678, 36.754646, 49.758186>,  <39.400959, 36.762718, 49.107357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515678, 36.754646, 49.758186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425922, 36.367676, 49.711323>,  <39.372066, 36.135494, 49.683205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425922, 36.367676, 49.711323>,  <39.515678, 36.754646, 49.758186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425922, 36.367676, 49.711323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481237, -0.214549, 0.849929,
		-0.847383, 0.134338, 0.513707,
		-0.224393, -0.967431, -0.117157,
		39.358604, 36.077446, 49.676174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972931, 37.286320, 50.125786>,  <39.515678, 36.754646, 49.758186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972931, 37.286320, 50.125786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.103394, 37.660973, 50.176918>,  <40.181671, 37.885765, 50.207596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.103394, 37.660973, 50.176918>,  <39.972931, 37.286320, 50.125786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103394, 37.660973, 50.176918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852622, -0.349873, 0.388105,
		0.408235, -0.017596, -0.912707,
		0.326161, 0.936632, 0.127827,
		40.201241, 37.941963, 50.215267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468979, 37.381901, 50.751343>,  <39.972931, 37.286320, 50.125786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468979, 37.381901, 50.751343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159599, 37.448303, 50.996037>,  <38.973972, 37.488144, 51.142853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159599, 37.448303, 50.996037>,  <39.468979, 37.381901, 50.751343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159599, 37.448303, 50.996037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391572, 0.633779, -0.667080,
		-0.498439, -0.755491, -0.425196,
		-0.773453, 0.166003, 0.611730,
		38.927563, 37.498104, 51.179554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841927, 37.217300, 50.489368>,  <39.468979, 37.381901, 50.751343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841927, 37.217300, 50.489368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776466, 37.518021, 50.744873>,  <38.737190, 37.698452, 50.898174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776466, 37.518021, 50.744873>,  <38.841927, 37.217300, 50.489368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776466, 37.518021, 50.744873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434088, 0.526560, -0.730960,
		-0.885881, -0.396903, 0.240173,
		-0.163655, 0.751799, 0.638760,
		38.727371, 37.743561, 50.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146530, 37.433254, 50.308125>,  <38.841927, 37.217300, 50.489368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146530, 37.433254, 50.308125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331375, 37.739586, 50.486992>,  <38.442280, 37.923386, 50.594315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331375, 37.739586, 50.486992>,  <38.146530, 37.433254, 50.308125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331375, 37.739586, 50.486992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306307, 0.611041, -0.729936,
		-0.832245, 0.200338, 0.516945,
		0.462108, 0.765829, 0.447171,
		38.470009, 37.969334, 50.621143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662170, 37.927578, 50.418377>,  <38.146530, 37.433254, 50.308125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662170, 37.927578, 50.418377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013870, 38.117382, 50.435196>,  <38.224888, 38.231262, 50.445286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013870, 38.117382, 50.435196>,  <37.662170, 37.927578, 50.418377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013870, 38.117382, 50.435196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278097, 0.582953, -0.763431,
		-0.386764, 0.659552, 0.644519,
		0.879247, 0.474506, 0.042046,
		38.277645, 38.259735, 50.447811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520588, 38.593815, 50.450722>,  <37.662170, 37.927578, 50.418377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520588, 38.593815, 50.450722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895180, 38.600521, 50.310596>,  <38.119934, 38.604546, 50.226521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895180, 38.600521, 50.310596>,  <37.520588, 38.593815, 50.450722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895180, 38.600521, 50.310596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295146, 0.577223, -0.761382,
		0.189446, 0.816414, 0.545507,
		0.936482, 0.016763, -0.350314,
		38.176125, 38.605549, 50.205502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643864, 39.259312, 50.226940>,  <37.520588, 38.593815, 50.450722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643864, 39.259312, 50.226940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911171, 39.044472, 50.021049>,  <38.071556, 38.915565, 49.897514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911171, 39.044472, 50.021049>,  <37.643864, 39.259312, 50.226940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911171, 39.044472, 50.021049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230005, 0.508836, -0.829569,
		0.707475, 0.672760, 0.216500,
		0.668264, -0.537103, -0.514727,
		38.111649, 38.883343, 49.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841072, 39.698368, 49.709881>,  <37.643864, 39.259312, 50.226940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841072, 39.698368, 49.709881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.999516, 39.353127, 49.584560>,  <38.094582, 39.145981, 49.509369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.999516, 39.353127, 49.584560>,  <37.841072, 39.698368, 49.709881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999516, 39.353127, 49.584560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072221, 0.310872, -0.947704,
		0.915361, 0.398017, 0.060804,
		0.396105, -0.863100, -0.313305,
		38.118347, 39.094196, 49.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328968, 39.891144, 49.138329>,  <37.841072, 39.698368, 49.709881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328968, 39.891144, 49.138329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245304, 39.502953, 49.090302>,  <38.195107, 39.270039, 49.061485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245304, 39.502953, 49.090302>,  <38.328968, 39.891144, 49.138329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245304, 39.502953, 49.090302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131906, 0.149662, -0.979899,
		0.968944, -0.189119, -0.159316,
		-0.209161, -0.970482, -0.120069,
		38.182556, 39.211807, 49.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772770, 39.519100, 48.645855>,  <38.328968, 39.891144, 49.138329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772770, 39.519100, 48.645855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461460, 39.268311, 48.632069>,  <38.274673, 39.117836, 48.623795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461460, 39.268311, 48.632069>,  <38.772770, 39.519100, 48.645855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461460, 39.268311, 48.632069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088497, 0.163869, -0.982505,
		0.621653, -0.761611, -0.183021,
		-0.778277, -0.626974, -0.034469,
		38.227978, 39.080219, 48.621727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774265, 39.255360, 47.948402>,  <38.772770, 39.519100, 48.645855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774265, 39.255360, 47.948402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.414642, 39.125675, 48.066101>,  <38.198868, 39.047863, 48.136723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.414642, 39.125675, 48.066101>,  <38.774265, 39.255360, 47.948402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414642, 39.125675, 48.066101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310392, -0.002026, -0.950606,
		0.308794, -0.945982, -0.098812,
		-0.899057, -0.324212, 0.294251,
		38.144924, 39.028412, 48.154377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690578, 38.600212, 47.643330>,  <38.774265, 39.255360, 47.948402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690578, 38.600212, 47.643330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344929, 38.783283, 47.727058>,  <38.137539, 38.893124, 47.777298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344929, 38.783283, 47.727058>,  <38.690578, 38.600212, 47.643330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344929, 38.783283, 47.727058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291999, -0.117182, -0.949213,
		-0.409900, -0.881365, 0.234900,
		-0.864129, 0.457673, 0.209325,
		38.085690, 38.920586, 47.789856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362396, 38.274502, 47.224327>,  <38.690578, 38.600212, 47.643330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362396, 38.274502, 47.224327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066071, 38.522709, 47.327209>,  <37.888275, 38.671635, 47.388939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066071, 38.522709, 47.327209>,  <38.362396, 38.274502, 47.224327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066071, 38.522709, 47.327209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357937, -0.040660, -0.932860,
		-0.568400, -0.783136, 0.252228,
		-0.740812, 0.620519, 0.257202,
		37.843826, 38.708866, 47.404369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741669, 37.985195, 47.039852>,  <38.362396, 38.274502, 47.224327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741669, 37.985195, 47.039852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656242, 38.375393, 47.061024>,  <37.604984, 38.609512, 47.073727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656242, 38.375393, 47.061024>,  <37.741669, 37.985195, 47.039852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656242, 38.375393, 47.061024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437015, -0.046946, -0.898228,
		-0.873731, -0.214963, 0.436332,
		-0.213570, 0.975493, 0.052924,
		37.592171, 38.668041, 47.076900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080734, 38.092442, 46.988781>,  <37.741669, 37.985195, 47.039852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080734, 38.092442, 46.988781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183685, 38.460777, 46.871601>,  <37.245457, 38.681778, 46.801292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183685, 38.460777, 46.871601>,  <37.080734, 38.092442, 46.988781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183685, 38.460777, 46.871601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202654, -0.244983, -0.948111,
		-0.944822, 0.303387, 0.123559,
		0.257375, 0.920836, -0.292948,
		37.260899, 38.737030, 46.783718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660545, 38.149502, 46.469013>,  <37.080734, 38.092442, 46.988781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660545, 38.149502, 46.469013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933369, 38.438160, 46.421661>,  <37.097065, 38.611355, 46.393250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933369, 38.438160, 46.421661>,  <36.660545, 38.149502, 46.469013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933369, 38.438160, 46.421661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055842, -0.110005, -0.992361,
		-0.729159, 0.683462, -0.034732,
		0.682062, 0.721650, -0.118377,
		37.137989, 38.654655, 46.386147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092731, 38.669304, 46.667797>,  <36.660545, 38.149502, 46.469013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092731, 38.669304, 46.667797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716618, 38.533962, 46.652924>,  <35.490948, 38.452759, 46.644001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716618, 38.533962, 46.652924>,  <36.092731, 38.669304, 46.667797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716618, 38.533962, 46.652924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001163, -0.112430, 0.993659,
		-0.340387, 0.934279, 0.106110,
		-0.940285, -0.338352, -0.037183,
		35.434532, 38.432457, 46.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720245, 39.044563, 47.162075>,  <36.092731, 38.669304, 46.667797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720245, 39.044563, 47.162075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479279, 38.726974, 47.129326>,  <35.334698, 38.536423, 47.109676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479279, 38.726974, 47.129326>,  <35.720245, 39.044563, 47.162075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479279, 38.726974, 47.129326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066605, -0.052214, 0.996412,
		-0.795395, 0.605713, -0.021428,
		-0.602421, -0.793968, -0.081874,
		35.298553, 38.488785, 47.104763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248043, 39.118870, 47.676132>,  <35.720245, 39.044563, 47.162075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248043, 39.118870, 47.676132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233864, 38.725822, 47.603241>,  <35.225357, 38.489994, 47.559505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233864, 38.725822, 47.603241>,  <35.248043, 39.118870, 47.676132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233864, 38.725822, 47.603241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170686, -0.173709, 0.969893,
		-0.984688, 0.065485, -0.161561,
		-0.035449, -0.982617, -0.182227,
		35.223228, 38.431038, 47.548573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659595, 38.885941, 47.968128>,  <35.248043, 39.118870, 47.676132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659595, 38.885941, 47.968128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917389, 38.580982, 47.944847>,  <35.072067, 38.398006, 47.930878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917389, 38.580982, 47.944847>,  <34.659595, 38.885941, 47.968128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917389, 38.580982, 47.944847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172482, -0.219115, 0.960332,
		-0.744908, -0.608883, -0.272717,
		0.644486, -0.762398, -0.058200,
		35.110733, 38.352264, 47.927387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491005, 38.507378, 48.637936>,  <34.659595, 38.885941, 47.968128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491005, 38.507378, 48.637936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801388, 38.311016, 48.479492>,  <34.987617, 38.193199, 48.384426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801388, 38.311016, 48.479492>,  <34.491005, 38.507378, 48.637936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801388, 38.311016, 48.479492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179138, -0.430607, 0.884583,
		-0.604813, -0.757357, -0.246194,
		0.775958, -0.490905, -0.396108,
		35.034176, 38.163746, 48.360661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504227, 37.830769, 48.908577>,  <34.491005, 38.507378, 48.637936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504227, 37.830769, 48.908577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887909, 37.869888, 48.802467>,  <35.118118, 37.893360, 48.738804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887909, 37.869888, 48.802467>,  <34.504227, 37.830769, 48.908577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887909, 37.869888, 48.802467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282700, -0.343971, 0.895413,
		-0.003674, -0.933873, -0.357585,
		0.959201, 0.097799, -0.265270,
		35.175671, 37.899227, 48.722885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873814, 37.131947, 48.925953>,  <34.504227, 37.830769, 48.908577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873814, 37.131947, 48.925953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123432, 37.439030, 48.984184>,  <35.273205, 37.623280, 49.019123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123432, 37.439030, 48.984184>,  <34.873814, 37.131947, 48.925953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123432, 37.439030, 48.984184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275168, -0.390286, 0.878612,
		0.731331, -0.508239, -0.454805,
		0.624049, 0.767704, 0.145577,
		35.310646, 37.669342, 49.027859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164581, 36.402763, 48.949203>,  <34.873814, 37.131947, 48.925953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164581, 36.402763, 48.949203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940067, 36.072269, 48.968357>,  <34.805359, 35.873974, 48.979847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940067, 36.072269, 48.968357>,  <35.164581, 36.402763, 48.949203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940067, 36.072269, 48.968357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043957, -0.087532, -0.995191,
		0.826453, -0.556484, 0.085450,
		-0.561287, -0.826235, 0.047880,
		34.771683, 35.824398, 48.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235477, 36.058182, 48.312321>,  <35.164581, 36.402763, 48.949203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235477, 36.058182, 48.312321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927345, 35.841339, 48.446609>,  <34.742466, 35.711231, 48.527184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927345, 35.841339, 48.446609>,  <35.235477, 36.058182, 48.312321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927345, 35.841339, 48.446609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253593, -0.222608, -0.941348,
		0.585047, -0.810286, 0.034006,
		-0.770332, -0.542109, 0.335719,
		34.696247, 35.678707, 48.547325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276264, 35.289974, 48.052959>,  <35.235477, 36.058182, 48.312321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276264, 35.289974, 48.052959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896526, 35.367710, 48.151726>,  <34.668682, 35.414352, 48.210987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896526, 35.367710, 48.151726>,  <35.276264, 35.289974, 48.052959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896526, 35.367710, 48.151726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270400, -0.104967, -0.957009,
		-0.160073, -0.975301, 0.152201,
		-0.949347, 0.194346, 0.246919,
		34.611721, 35.426014, 48.225803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795151, 34.742699, 47.726646>,  <35.276264, 35.289974, 48.052959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795151, 34.742699, 47.726646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578068, 35.065403, 47.820114>,  <34.447819, 35.259026, 47.876194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578068, 35.065403, 47.820114>,  <34.795151, 34.742699, 47.726646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578068, 35.065403, 47.820114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378720, 0.013265, -0.925416,
		-0.749691, -0.590727, 0.298338,
		-0.542710, 0.806763, 0.233665,
		34.415253, 35.307430, 47.890213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278851, 34.593384, 47.250492>,  <34.795151, 34.742699, 47.726646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278851, 34.593384, 47.250492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239296, 34.972427, 47.371986>,  <34.215565, 35.199852, 47.444885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239296, 34.972427, 47.371986>,  <34.278851, 34.593384, 47.250492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239296, 34.972427, 47.371986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415553, 0.238024, -0.877873,
		-0.904178, -0.213028, 0.370245,
		-0.098884, 0.947610, 0.303740,
		34.209629, 35.256710, 47.463108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729870, 34.795940, 46.968277>,  <34.278851, 34.593384, 47.250492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729870, 34.795940, 46.968277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863937, 35.158504, 47.071110>,  <33.944378, 35.376041, 47.132809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863937, 35.158504, 47.071110>,  <33.729870, 34.795940, 46.968277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863937, 35.158504, 47.071110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350081, 0.373142, -0.859190,
		-0.874703, 0.197973, 0.442381,
		0.335168, 0.906406, 0.257082,
		33.964489, 35.430428, 47.148235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148090, 35.279079, 47.013409>,  <33.729870, 34.795940, 46.968277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148090, 35.279079, 47.013409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482296, 35.486481, 46.940662>,  <33.682819, 35.610920, 46.897015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482296, 35.486481, 46.940662>,  <33.148090, 35.279079, 47.013409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482296, 35.486481, 46.940662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426249, 0.402749, -0.810003,
		-0.346742, 0.754287, 0.557513,
		0.835513, 0.518501, -0.181864,
		33.732948, 35.642033, 46.886105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.882832, 32.632542, 49.470932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537716, 32.453472, 49.376968>,  <38.330647, 32.346031, 49.320591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537716, 32.453472, 49.376968>,  <38.882832, 32.632542, 49.470932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537716, 32.453472, 49.376968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387518, 0.287201, 0.875983,
		-0.324692, 0.846818, -0.421276,
		-0.862789, -0.447677, -0.234905,
		38.278881, 32.319168, 49.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223923, 32.965843, 49.813522>,  <38.882832, 32.632542, 49.470932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223923, 32.965843, 49.813522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435329, 33.249420, 49.626732>,  <38.562172, 33.419567, 49.514656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435329, 33.249420, 49.626732>,  <38.223923, 32.965843, 49.813522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435329, 33.249420, 49.626732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449372, -0.233058, -0.862409,
		-0.720233, 0.665644, 0.195405,
		0.528517, 0.708944, -0.466977,
		38.593884, 33.462105, 49.486637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723019, 33.311897, 49.407070>,  <38.223923, 32.965843, 49.813522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723019, 33.311897, 49.407070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.069611, 33.436642, 49.251141>,  <38.277565, 33.511490, 49.157585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.069611, 33.436642, 49.251141>,  <37.723019, 33.311897, 49.407070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069611, 33.436642, 49.251141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397338, -0.041914, -0.916715,
		-0.302227, 0.949203, 0.087597,
		0.866476, 0.311862, -0.389822,
		38.329552, 33.530201, 49.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570179, 33.756256, 48.901646>,  <37.723019, 33.311897, 49.407070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570179, 33.756256, 48.901646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.939930, 33.633331, 48.811237>,  <38.161781, 33.559574, 48.756992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.939930, 33.633331, 48.811237>,  <37.570179, 33.756256, 48.901646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939930, 33.633331, 48.811237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256001, -0.060450, -0.964784,
		0.282831, 0.949685, -0.134552,
		0.924375, -0.307317, -0.226023,
		38.217243, 33.541138, 48.743431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777676, 34.173721, 48.331699>,  <37.570179, 33.756256, 48.901646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777676, 34.173721, 48.331699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035492, 33.869225, 48.303181>,  <38.190182, 33.686527, 48.286068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035492, 33.869225, 48.303181>,  <37.777676, 34.173721, 48.331699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035492, 33.869225, 48.303181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046250, 0.054266, -0.997455,
		0.763169, 0.646199, -0.000230,
		0.644541, -0.761238, -0.071301,
		38.228855, 33.640854, 48.281792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251465, 34.300568, 47.758446>,  <37.777676, 34.173721, 48.331699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251465, 34.300568, 47.758446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.273586, 33.906940, 47.826038>,  <38.286858, 33.670765, 47.866592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.273586, 33.906940, 47.826038>,  <38.251465, 34.300568, 47.758446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273586, 33.906940, 47.826038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200589, -0.176739, -0.963601,
		0.978113, 0.019393, -0.207167,
		0.055301, -0.984067, 0.168981,
		38.290176, 33.611721, 47.876732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746841, 34.100754, 47.301003>,  <38.251465, 34.300568, 47.758446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746841, 34.100754, 47.301003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.556175, 33.763630, 47.400974>,  <38.441776, 33.561356, 47.460957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.556175, 33.763630, 47.400974>,  <38.746841, 34.100754, 47.301003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556175, 33.763630, 47.400974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216275, -0.163138, -0.962606,
		0.852065, -0.512895, -0.104516,
		-0.476665, -0.842808, 0.249931,
		38.413177, 33.510788, 47.475952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019848, 33.497284, 46.982056>,  <38.746841, 34.100754, 47.301003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019848, 33.497284, 46.982056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.640285, 33.410267, 47.073490>,  <38.412548, 33.358059, 47.128353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.640285, 33.410267, 47.073490>,  <39.019848, 33.497284, 46.982056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640285, 33.410267, 47.073490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163139, -0.281886, -0.945476,
		0.270114, -0.934461, 0.231995,
		-0.948907, -0.217539, 0.228588,
		38.355614, 33.345005, 47.142067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798622, 32.880219, 46.628193>,  <39.019848, 33.497284, 46.982056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798622, 32.880219, 46.628193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.448956, 33.060120, 46.701469>,  <38.239155, 33.168060, 46.745438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.448956, 33.060120, 46.701469>,  <38.798622, 32.880219, 46.628193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448956, 33.060120, 46.701469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340542, -0.298768, -0.891498,
		-0.346226, -0.841698, 0.414333,
		-0.874162, 0.449757, 0.183192,
		38.186707, 33.195045, 46.756428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365112, 32.469414, 46.243141>,  <38.798622, 32.880219, 46.628193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365112, 32.469414, 46.243141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143425, 32.795876, 46.308552>,  <38.010414, 32.991753, 46.347797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143425, 32.795876, 46.308552>,  <38.365112, 32.469414, 46.243141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143425, 32.795876, 46.308552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397399, -0.086818, -0.913530,
		-0.731381, -0.571279, 0.372454,
		-0.554216, 0.816152, 0.163529,
		37.977161, 33.040722, 46.357609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689701, 32.229870, 45.916477>,  <38.365112, 32.469414, 46.243141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689701, 32.229870, 45.916477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.675076, 32.626625, 45.965168>,  <37.666302, 32.864677, 45.994381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.675076, 32.626625, 45.965168>,  <37.689701, 32.229870, 45.916477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675076, 32.626625, 45.965168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678719, 0.064756, -0.731537,
		-0.733487, -0.109367, 0.670847,
		-0.036564, 0.991890, 0.121727,
		37.664104, 32.924191, 46.001686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932652, 32.431061, 45.852001>,  <37.689701, 32.229870, 45.916477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932652, 32.431061, 45.852001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.166691, 32.743504, 45.764805>,  <37.307114, 32.930969, 45.712486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.166691, 32.743504, 45.764805>,  <36.932652, 32.431061, 45.852001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166691, 32.743504, 45.764805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489362, 0.125724, -0.862971,
		-0.646669, 0.611604, 0.455807,
		0.585102, 0.781111, -0.217994,
		37.342220, 32.977837, 45.699406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350807, 32.675686, 46.258587>,  <36.932652, 32.431061, 45.852001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350807, 32.675686, 46.258587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968655, 32.601917, 46.350872>,  <35.739361, 32.557655, 46.406242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968655, 32.601917, 46.350872>,  <36.350807, 32.675686, 46.258587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968655, 32.601917, 46.350872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236684, -0.010728, 0.971528,
		-0.176700, 0.982788, 0.053900,
		-0.955384, -0.184426, 0.230714,
		35.682041, 32.546589, 46.420086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029053, 33.171276, 46.765156>,  <36.350807, 32.675686, 46.258587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029053, 33.171276, 46.765156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.818394, 32.833260, 46.802120>,  <35.691998, 32.630447, 46.824299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.818394, 32.833260, 46.802120>,  <36.029053, 33.171276, 46.765156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818394, 32.833260, 46.802120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092373, 0.051179, 0.994408,
		-0.845049, 0.532241, 0.051106,
		-0.526650, -0.845044, 0.092413,
		35.660400, 32.579746, 46.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871174, 33.261292, 47.430573>,  <36.029053, 33.171276, 46.765156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871174, 33.261292, 47.430573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762264, 32.881191, 47.370049>,  <35.696918, 32.653133, 47.333733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762264, 32.881191, 47.370049>,  <35.871174, 33.261292, 47.430573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762264, 32.881191, 47.370049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071654, -0.176836, 0.981629,
		-0.959548, 0.256431, 0.116238,
		-0.272274, -0.950248, -0.151309,
		35.680580, 32.596115, 47.324657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176353, 33.161438, 47.788696>,  <35.871174, 33.261292, 47.430573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176353, 33.161438, 47.788696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363174, 32.809410, 47.754421>,  <35.475266, 32.598194, 47.733856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363174, 32.809410, 47.754421>,  <35.176353, 33.161438, 47.788696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363174, 32.809410, 47.754421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083204, -0.052736, 0.995136,
		-0.880307, -0.471910, 0.048595,
		0.467052, -0.880068, -0.085688,
		35.503288, 32.545391, 47.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839905, 32.665298, 48.224281>,  <35.176353, 33.161438, 47.788696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839905, 32.665298, 48.224281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.196396, 32.503048, 48.143116>,  <35.410290, 32.405697, 48.094418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.196396, 32.503048, 48.143116>,  <34.839905, 32.665298, 48.224281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196396, 32.503048, 48.143116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200257, -0.049493, 0.978492,
		-0.406944, -0.912698, 0.037120,
		0.891231, -0.405625, -0.202915,
		35.463764, 32.381359, 48.082241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922321, 32.070286, 48.619194>,  <34.839905, 32.665298, 48.224281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922321, 32.070286, 48.619194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292477, 32.192276, 48.529171>,  <35.514568, 32.265472, 48.475159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292477, 32.192276, 48.529171>,  <34.922321, 32.070286, 48.619194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292477, 32.192276, 48.529171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234875, 0.004617, 0.972015,
		0.297484, -0.952348, -0.067360,
		0.925385, 0.304980, -0.225056,
		35.570091, 32.283772, 48.461655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249180, 31.678078, 49.099922>,  <34.922321, 32.070286, 48.619194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249180, 31.678078, 49.099922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477840, 31.974602, 48.959251>,  <35.615036, 32.152515, 48.874847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477840, 31.974602, 48.959251>,  <35.249180, 31.678078, 49.099922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477840, 31.974602, 48.959251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282928, 0.224229, 0.932562,
		0.770175, -0.632597, -0.081558,
		0.571648, 0.741311, -0.351675,
		35.649334, 32.196995, 48.853748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841507, 31.542074, 49.405308>,  <35.249180, 31.678078, 49.099922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841507, 31.542074, 49.405308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.878345, 31.928133, 49.307316>,  <35.900448, 32.159767, 49.248520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.878345, 31.928133, 49.307316>,  <35.841507, 31.542074, 49.405308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878345, 31.928133, 49.307316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502788, 0.167283, 0.848068,
		0.859490, -0.201274, -0.469858,
		0.092095, 0.965145, -0.244976,
		35.905975, 32.217678, 49.233822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576145, 31.721901, 49.512772>,  <35.841507, 31.542074, 49.405308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576145, 31.721901, 49.512772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368668, 32.063263, 49.533382>,  <36.244183, 32.268082, 49.545750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368668, 32.063263, 49.533382>,  <36.576145, 31.721901, 49.512772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368668, 32.063263, 49.533382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586149, 0.311092, 0.748098,
		0.622402, 0.418236, -0.661585,
		-0.518695, 0.853405, 0.051524,
		36.213058, 32.319286, 49.548840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005539, 32.187634, 49.784733>,  <36.576145, 31.721901, 49.512772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005539, 32.187634, 49.784733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659702, 32.378269, 49.848404>,  <36.452198, 32.492649, 49.886608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659702, 32.378269, 49.848404>,  <37.005539, 32.187634, 49.784733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659702, 32.378269, 49.848404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341370, 0.324681, 0.882071,
		0.368703, 0.816973, -0.443411,
		-0.864595, 0.476590, 0.159179,
		36.400322, 32.521248, 49.896156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090904, 33.002647, 49.692070>,  <37.005539, 32.187634, 49.784733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090904, 33.002647, 49.692070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.783066, 32.919189, 49.933460>,  <36.598362, 32.869114, 50.078297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.783066, 32.919189, 49.933460>,  <37.090904, 33.002647, 49.692070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783066, 32.919189, 49.933460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397066, 0.583776, 0.708197,
		-0.500055, 0.784649, -0.366430,
		-0.769600, -0.208640, 0.603478,
		36.552185, 32.856598, 50.114502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999844, 33.607227, 49.950611>,  <37.090904, 33.002647, 49.692070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999844, 33.607227, 49.950611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790974, 33.364929, 50.190750>,  <36.665653, 33.219551, 50.334831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790974, 33.364929, 50.190750>,  <36.999844, 33.607227, 49.950611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790974, 33.364929, 50.190750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379730, 0.465171, 0.799638,
		-0.763638, 0.645516, -0.012880,
		-0.522170, -0.605743, 0.600345,
		36.634323, 33.183205, 50.370853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592232, 34.034954, 50.407486>,  <36.999844, 33.607227, 49.950611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592232, 34.034954, 50.407486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.650345, 33.684746, 50.591820>,  <36.685211, 33.474621, 50.702419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.650345, 33.684746, 50.591820>,  <36.592232, 34.034954, 50.407486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650345, 33.684746, 50.591820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416027, 0.476651, 0.774419,
		-0.897672, 0.079212, 0.433486,
		0.145279, -0.875516, 0.460831,
		36.693928, 33.422092, 50.730068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226719, 34.012711, 51.013992>,  <36.592232, 34.034954, 50.407486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226719, 34.012711, 51.013992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528095, 33.756428, 51.073090>,  <36.708920, 33.602657, 51.108547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528095, 33.756428, 51.073090>,  <36.226719, 34.012711, 51.013992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528095, 33.756428, 51.073090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350235, 0.581228, 0.734513,
		-0.556479, -0.501665, 0.662317,
		0.753437, -0.640707, 0.147740,
		36.754128, 33.564217, 51.117413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719025, 34.470924, 51.374279>,  <36.226719, 34.012711, 51.013992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719025, 34.470924, 51.374279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460567, 34.729973, 51.535816>,  <35.305492, 34.885403, 51.632740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460567, 34.729973, 51.535816>,  <35.719025, 34.470924, 51.374279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460567, 34.729973, 51.535816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361124, 0.206734, -0.909313,
		-0.672379, -0.733381, 0.100293,
		-0.646139, 0.647621, 0.403845,
		35.266727, 34.924259, 51.656971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199860, 34.387039, 51.028519>,  <35.719025, 34.470924, 51.374279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199860, 34.387039, 51.028519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104721, 34.741707, 51.187138>,  <35.047638, 34.954506, 51.282310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104721, 34.741707, 51.187138>,  <35.199860, 34.387039, 51.028519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104721, 34.741707, 51.187138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462852, 0.255464, -0.848826,
		-0.853931, -0.385431, 0.349636,
		-0.237845, 0.886668, 0.396546,
		35.033367, 35.007706, 51.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451511, 34.538910, 50.873306>,  <35.199860, 34.387039, 51.028519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451511, 34.538910, 50.873306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.636341, 34.887753, 50.937698>,  <34.747238, 35.097057, 50.976334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.636341, 34.887753, 50.937698>,  <34.451511, 34.538910, 50.873306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636341, 34.887753, 50.937698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408993, 0.370623, -0.833884,
		-0.786899, 0.319479, 0.527942,
		0.462076, 0.872108, 0.160979,
		34.774963, 35.149384, 50.985992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922939, 35.049042, 50.635166>,  <34.451511, 34.538910, 50.873306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922939, 35.049042, 50.635166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288059, 35.212402, 50.636375>,  <34.507130, 35.310417, 50.637100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288059, 35.212402, 50.636375>,  <33.922939, 35.049042, 50.635166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288059, 35.212402, 50.636375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168734, 0.383858, -0.907845,
		-0.371923, 0.828170, 0.419296,
		0.912799, 0.408398, 0.003025,
		34.561897, 35.334923, 50.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778641, 35.763412, 50.416401>,  <33.922939, 35.049042, 50.635166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778641, 35.763412, 50.416401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.163704, 35.688473, 50.338226>,  <34.394741, 35.643509, 50.291321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.163704, 35.688473, 50.338226>,  <33.778641, 35.763412, 50.416401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163704, 35.688473, 50.338226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168827, 0.148907, -0.974333,
		0.211647, 0.970940, 0.111716,
		0.962654, -0.187354, -0.195436,
		34.452499, 35.632267, 50.279594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070652, 36.366074, 50.034542>,  <33.778641, 35.763412, 50.416401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070652, 36.366074, 50.034542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326019, 36.068295, 49.956333>,  <34.479240, 35.889629, 49.909409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326019, 36.068295, 49.956333>,  <34.070652, 36.366074, 50.034542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326019, 36.068295, 49.956333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108259, 0.338349, -0.934773,
		0.762042, 0.575605, 0.296600,
		0.638414, -0.744445, -0.195521,
		34.517544, 35.844959, 49.897678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650845, 36.663414, 49.507061>,  <34.070652, 36.366074, 50.034542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650845, 36.663414, 49.507061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627384, 36.266312, 49.465103>,  <34.613308, 36.028049, 49.439930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627384, 36.266312, 49.465103>,  <34.650845, 36.663414, 49.507061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627384, 36.266312, 49.465103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195073, 0.091650, -0.976497,
		0.979033, -0.077739, 0.188284,
		-0.058656, -0.992752, -0.104893,
		34.609787, 35.968487, 49.433636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297070, 36.929539, 49.514057>,  <34.650845, 36.663414, 49.507061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297070, 36.929539, 49.514057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402283, 37.315170, 49.499264>,  <35.465408, 37.546551, 49.490387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402283, 37.315170, 49.499264>,  <35.297070, 36.929539, 49.514057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402283, 37.315170, 49.499264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497613, -0.102726, 0.861295,
		0.826557, -0.244949, -0.506758,
		0.263030, 0.964079, -0.036981,
		35.481194, 37.604393, 49.488171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833416, 36.881447, 49.880932>,  <35.297070, 36.929539, 49.514057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833416, 36.881447, 49.880932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.786079, 37.278465, 49.869255>,  <35.757675, 37.516674, 49.862247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.786079, 37.278465, 49.869255>,  <35.833416, 36.881447, 49.880932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786079, 37.278465, 49.869255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377871, 0.072204, 0.923039,
		0.918264, 0.098206, -0.383598,
		-0.118345, 0.992543, -0.029193,
		35.750576, 37.576229, 49.860497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430645, 37.090691, 50.103191>,  <35.833416, 36.881447, 49.880932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430645, 37.090691, 50.103191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.176842, 37.392883, 50.168472>,  <36.024559, 37.574200, 50.207642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.176842, 37.392883, 50.168472>,  <36.430645, 37.090691, 50.103191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176842, 37.392883, 50.168472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379215, 0.120300, 0.917455,
		0.673490, 0.644026, -0.362824,
		-0.634513, 0.755485, 0.163204,
		35.986488, 37.619530, 50.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880589, 37.702316, 50.330147>,  <36.430645, 37.090691, 50.103191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880589, 37.702316, 50.330147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.500809, 37.768066, 50.437119>,  <36.272942, 37.807514, 50.501301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.500809, 37.768066, 50.437119>,  <36.880589, 37.702316, 50.330147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500809, 37.768066, 50.437119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300629, 0.230991, 0.925346,
		0.090326, 0.958971, -0.268730,
		-0.949454, 0.164371, 0.267430,
		36.215973, 37.817379, 50.517349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953499, 38.168957, 50.840439>,  <36.880589, 37.702316, 50.330147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953499, 38.168957, 50.840439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580566, 38.051155, 50.924377>,  <36.356808, 37.980476, 50.974739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580566, 38.051155, 50.924377>,  <36.953499, 38.168957, 50.840439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580566, 38.051155, 50.924377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154958, 0.198950, 0.967681,
		-0.326731, 0.934713, -0.139852,
		-0.932328, -0.294500, 0.209845,
		36.300869, 37.962807, 50.987331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725624, 38.593536, 51.360378>,  <36.953499, 38.168957, 50.840439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725624, 38.593536, 51.360378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495674, 38.267586, 51.390015>,  <36.357704, 38.072014, 51.407799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495674, 38.267586, 51.390015>,  <36.725624, 38.593536, 51.360378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495674, 38.267586, 51.390015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241054, -0.082129, 0.967031,
		-0.781929, 0.573782, 0.243643,
		-0.574874, -0.814880, 0.074093,
		36.323212, 38.023121, 51.412243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418060, 38.723255, 51.988987>,  <36.725624, 38.593536, 51.360378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418060, 38.723255, 51.988987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374950, 38.327511, 51.949902>,  <36.349083, 38.090065, 51.926449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374950, 38.327511, 51.949902>,  <36.418060, 38.723255, 51.988987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374950, 38.327511, 51.949902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174457, -0.115582, 0.977858,
		-0.978749, 0.088342, 0.185058,
		-0.107775, -0.989362, -0.097714,
		36.342617, 38.030701, 51.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929886, 38.479511, 52.496830>,  <36.418060, 38.723255, 51.988987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929886, 38.479511, 52.496830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145424, 38.152931, 52.413822>,  <36.274746, 37.956985, 52.364017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145424, 38.152931, 52.413822>,  <35.929886, 38.479511, 52.496830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145424, 38.152931, 52.413822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123045, -0.167418, 0.978177,
		-0.833372, -0.552617, 0.010248,
		0.538842, -0.816447, -0.207518,
		36.307076, 37.907997, 52.351566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837860, 37.971615, 53.091206>,  <35.929886, 38.479511, 52.496830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837860, 37.971615, 53.091206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152016, 37.794655, 52.918026>,  <36.340508, 37.688480, 52.814117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152016, 37.794655, 52.918026>,  <35.837860, 37.971615, 53.091206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152016, 37.794655, 52.918026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472728, -0.022873, 0.880912,
		-0.399618, -0.896526, 0.191171,
		0.785388, -0.442400, -0.432953,
		36.387630, 37.661934, 52.788139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.709045, 38.632565, 36.715324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091518, 38.749660, 36.717243>,  <34.321003, 38.819920, 36.718395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091518, 38.749660, 36.717243>,  <33.709045, 38.632565, 36.715324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091518, 38.749660, 36.717243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052521, -0.187616, 0.980837,
		0.288032, -0.937605, -0.194770,
		0.956180, 0.292742, 0.004795,
		34.378372, 38.837482, 36.718681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013950, 38.104813, 36.917805>,  <33.709045, 38.632565, 36.715324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013950, 38.104813, 36.917805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197651, 38.449085, 37.005726>,  <34.307869, 38.655651, 37.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197651, 38.449085, 37.005726>,  <34.013950, 38.104813, 36.917805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197651, 38.449085, 37.005726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021444, -0.258112, 0.965877,
		0.888049, -0.438863, -0.136994,
		0.459248, 0.860684, 0.219805,
		34.335426, 38.707291, 37.071667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266815, 37.861942, 37.472607>,  <34.013950, 38.104813, 36.917805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266815, 37.861942, 37.472607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 38.252399, 37.463539>,  <34.405018, 38.486675, 37.458099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 38.252399, 37.463539>,  <34.266815, 37.861942, 37.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353191, 38.252399, 37.463539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123484, 0.050328, 0.991070,
		0.968566, -0.211216, 0.131406,
		0.215944, 0.976143, -0.022664,
		34.417976, 38.545242, 37.456741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799870, 37.856998, 37.906448>,  <34.266815, 37.861942, 37.472607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799870, 37.856998, 37.906448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613274, 38.210407, 37.889614>,  <34.501316, 38.422455, 37.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613274, 38.210407, 37.889614>,  <34.799870, 37.856998, 37.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613274, 38.210407, 37.889614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132277, -0.022636, 0.990954,
		0.874581, 0.467835, 0.127429,
		-0.466488, 0.883526, -0.042087,
		34.473328, 38.475464, 37.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107307, 38.308311, 38.395821>,  <34.799870, 37.856998, 37.906448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107307, 38.308311, 38.395821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739964, 38.452934, 38.331451>,  <34.519558, 38.539707, 38.292828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739964, 38.452934, 38.331451>,  <35.107307, 38.308311, 38.395821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739964, 38.452934, 38.331451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142318, 0.077716, 0.986765,
		0.369277, 0.929106, -0.019916,
		-0.918357, 0.361555, -0.160927,
		34.464455, 38.561401, 38.283173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045258, 38.862541, 38.871548>,  <35.107307, 38.308311, 38.395821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045258, 38.862541, 38.871548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662659, 38.797565, 38.774616>,  <34.433098, 38.758579, 38.716457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662659, 38.797565, 38.774616>,  <35.045258, 38.862541, 38.871548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662659, 38.797565, 38.774616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271188, 0.188838, 0.943821,
		-0.107553, 0.968480, -0.224675,
		-0.956499, -0.162440, -0.242330,
		34.375710, 38.748833, 38.701916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583981, 39.421776, 39.239597>,  <35.045258, 38.862541, 38.871548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583981, 39.421776, 39.239597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361309, 39.101078, 39.152599>,  <34.227707, 38.908657, 39.100399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361309, 39.101078, 39.152599>,  <34.583981, 39.421776, 39.239597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361309, 39.101078, 39.152599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538532, 0.148940, 0.829337,
		-0.632525, 0.578807, -0.514679,
		-0.556682, -0.801748, -0.217498,
		34.194305, 38.860554, 39.087349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937904, 39.648628, 39.282112>,  <34.583981, 39.421776, 39.239597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937904, 39.648628, 39.282112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915733, 39.255352, 39.351707>,  <33.902431, 39.019386, 39.393463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915733, 39.255352, 39.351707>,  <33.937904, 39.648628, 39.282112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915733, 39.255352, 39.351707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459080, 0.179834, 0.870003,
		-0.886664, -0.031655, -0.461329,
		-0.055423, -0.983187, 0.173984,
		33.899105, 38.960396, 39.403904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325977, 39.586327, 39.583405>,  <33.937904, 39.648628, 39.282112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325977, 39.586327, 39.583405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491280, 39.231644, 39.666325>,  <33.590462, 39.018833, 39.716076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491280, 39.231644, 39.666325>,  <33.325977, 39.586327, 39.583405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491280, 39.231644, 39.666325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469072, -0.012161, 0.883076,
		-0.780507, -0.462177, -0.420954,
		0.413256, -0.886705, 0.207302,
		33.615257, 38.965633, 39.728516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894569, 39.263176, 40.007454>,  <33.325977, 39.586327, 39.583405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894569, 39.263176, 40.007454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223942, 39.049377, 40.083649>,  <33.421566, 38.921101, 40.129364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223942, 39.049377, 40.083649>,  <32.894569, 39.263176, 40.007454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223942, 39.049377, 40.083649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354453, -0.222383, 0.908245,
		-0.443091, -0.815391, -0.372569,
		0.823428, -0.534494, 0.190482,
		33.470970, 38.889030, 40.140793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643120, 38.643993, 40.306458>,  <32.894569, 39.263176, 40.007454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643120, 38.643993, 40.306458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023117, 38.684624, 40.424568>,  <33.251118, 38.709000, 40.495434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023117, 38.684624, 40.424568>,  <32.643120, 38.643993, 40.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023117, 38.684624, 40.424568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254284, -0.297180, 0.920339,
		0.181233, -0.949403, -0.256492,
		0.949997, 0.101574, 0.295277,
		33.308117, 38.715096, 40.513153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775497, 38.098366, 40.758495>,  <32.643120, 38.643993, 40.306458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775497, 38.098366, 40.758495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063210, 38.359097, 40.854626>,  <33.235836, 38.515533, 40.912304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063210, 38.359097, 40.854626>,  <32.775497, 38.098366, 40.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063210, 38.359097, 40.854626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193461, -0.144311, 0.970437,
		0.667238, -0.744511, 0.022303,
		0.719282, 0.651827, 0.240324,
		33.278996, 38.554646, 40.926723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713585, 37.439491, 41.014885>,  <32.775497, 38.098366, 40.758495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713585, 37.439491, 41.014885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464542, 37.156361, 41.148357>,  <32.315117, 36.986481, 41.228439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464542, 37.156361, 41.148357>,  <32.713585, 37.439491, 41.014885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464542, 37.156361, 41.148357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348252, -0.131234, -0.928169,
		0.700774, -0.694088, -0.164795,
		-0.622605, -0.707827, 0.333683,
		32.277760, 36.944012, 41.248463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840977, 36.818920, 40.609531>,  <32.713585, 37.439491, 41.014885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840977, 36.818920, 40.609531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470139, 36.773472, 40.752407>,  <32.247635, 36.746204, 40.838131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470139, 36.773472, 40.752407>,  <32.840977, 36.818920, 40.609531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470139, 36.773472, 40.752407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337018, -0.164389, -0.927036,
		0.164045, -0.979830, 0.114114,
		-0.927097, -0.113617, 0.357187,
		32.192009, 36.739388, 40.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580528, 36.418011, 40.063328>,  <32.840977, 36.818920, 40.609531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580528, 36.418011, 40.063328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241539, 36.504795, 40.257122>,  <32.038147, 36.556866, 40.373398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241539, 36.504795, 40.257122>,  <32.580528, 36.418011, 40.063328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241539, 36.504795, 40.257122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495812, 0.002556, -0.868426,
		-0.189652, -0.976177, 0.105405,
		-0.847468, 0.216959, 0.484485,
		31.987299, 36.569881, 40.402470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206657, 35.881939, 39.963711>,  <32.580528, 36.418011, 40.063328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206657, 35.881939, 39.963711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939123, 36.167358, 40.047142>,  <31.778603, 36.338612, 40.097202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939123, 36.167358, 40.047142>,  <32.206657, 35.881939, 39.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939123, 36.167358, 40.047142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535132, -0.267354, -0.801346,
		-0.516034, -0.647588, 0.560659,
		-0.668837, 0.713548, 0.208581,
		31.738472, 36.381424, 40.109718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660856, 35.521175, 39.671181>,  <32.206657, 35.881939, 39.963711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660856, 35.521175, 39.671181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544762, 35.903286, 39.693863>,  <31.475105, 36.132553, 39.707474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544762, 35.903286, 39.693863>,  <31.660856, 35.521175, 39.671181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544762, 35.903286, 39.693863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525131, -0.109450, -0.843954,
		-0.800000, -0.274724, 0.533410,
		-0.290236, 0.955273, 0.056706,
		31.457691, 36.189869, 39.710876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963964, 35.412693, 39.539627>,  <31.660856, 35.521175, 39.671181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963964, 35.412693, 39.539627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085421, 35.788876, 39.478519>,  <31.158295, 36.014587, 39.441853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085421, 35.788876, 39.478519>,  <30.963964, 35.412693, 39.539627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085421, 35.788876, 39.478519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463613, 0.005753, -0.886019,
		-0.832386, 0.339858, 0.437756,
		0.303639, 0.940459, -0.152773,
		31.176512, 36.071014, 39.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447725, 35.681110, 39.140842>,  <30.963964, 35.412693, 39.539627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447725, 35.681110, 39.140842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750477, 35.930573, 39.062675>,  <30.932127, 36.080250, 39.015774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750477, 35.930573, 39.062675>,  <30.447725, 35.681110, 39.140842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750477, 35.930573, 39.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344660, 0.126841, -0.930119,
		-0.555288, 0.771338, 0.310953,
		0.756878, 0.623657, -0.195416,
		30.977541, 36.117668, 39.004051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040869, 36.307335, 38.860958>,  <30.447725, 35.681110, 39.140842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040869, 36.307335, 38.860958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424038, 36.308910, 38.746159>,  <30.653938, 36.309856, 38.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424038, 36.308910, 38.746159>,  <30.040869, 36.307335, 38.860958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424038, 36.308910, 38.746159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284835, 0.136473, -0.948812,
		0.035433, 0.990636, 0.131851,
		0.957922, 0.003936, -0.287004,
		30.711414, 36.310093, 38.660057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103264, 36.852589, 38.427120>,  <30.040869, 36.307335, 38.860958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103264, 36.852589, 38.427120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382948, 36.581463, 38.336193>,  <30.550758, 36.418789, 38.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382948, 36.581463, 38.336193>,  <30.103264, 36.852589, 38.427120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382948, 36.581463, 38.336193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206351, 0.113082, -0.971922,
		0.684487, 0.726485, -0.060799,
		0.699212, -0.677814, -0.227314,
		30.592710, 36.378120, 38.267998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398024, 37.005016, 37.784958>,  <30.103264, 36.852589, 38.427120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398024, 37.005016, 37.784958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527796, 36.626930, 37.770462>,  <30.605659, 36.400078, 37.761765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527796, 36.626930, 37.770462>,  <30.398024, 37.005016, 37.784958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527796, 36.626930, 37.770462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205918, -0.033184, -0.978007,
		0.923224, 0.324757, -0.205402,
		0.324430, -0.945215, -0.036237,
		30.625124, 36.343365, 37.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482838, 37.049191, 37.078136>,  <30.398024, 37.005016, 37.784958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482838, 37.049191, 37.078136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536137, 36.668575, 37.189007>,  <30.568115, 36.440208, 37.255531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536137, 36.668575, 37.189007>,  <30.482838, 37.049191, 37.078136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536137, 36.668575, 37.189007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129102, -0.293953, -0.947061,
		0.982638, 0.090408, -0.162013,
		0.133246, -0.951534, 0.277178,
		30.576111, 36.383114, 37.272160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989149, 36.653709, 36.545567>,  <30.482838, 37.049191, 37.078136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989149, 36.653709, 36.545567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753531, 36.381252, 36.719494>,  <30.612160, 36.217777, 36.823853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753531, 36.381252, 36.719494>,  <30.989149, 36.653709, 36.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753531, 36.381252, 36.719494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101350, -0.471562, -0.875989,
		0.801719, -0.560067, 0.208738,
		-0.589046, -0.681141, 0.434823,
		30.576817, 36.176910, 36.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242355, 36.134979, 36.212337>,  <30.989149, 36.653709, 36.545567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242355, 36.134979, 36.212337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895884, 35.999222, 36.359058>,  <30.688000, 35.917767, 36.447090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895884, 35.999222, 36.359058>,  <31.242355, 36.134979, 36.212337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895884, 35.999222, 36.359058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151495, -0.521119, -0.839931,
		0.476217, -0.783100, 0.399966,
		-0.866179, -0.339397, 0.366801,
		30.636030, 35.897404, 36.469097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259312, 35.344650, 36.099033>,  <31.242355, 36.134979, 36.212337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259312, 35.344650, 36.099033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885426, 35.482010, 36.135670>,  <30.661095, 35.564426, 36.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885426, 35.482010, 36.135670>,  <31.259312, 35.344650, 36.099033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885426, 35.482010, 36.135670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249417, -0.450233, -0.857369,
		-0.253183, -0.824238, 0.506488,
		-0.934714, 0.343398, 0.091588,
		30.605011, 35.585030, 36.163147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363462, 34.526352, 36.205559>,  <31.259312, 35.344650, 36.099033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363462, 34.526352, 36.205559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267231, 34.138317, 36.218582>,  <31.209492, 33.905499, 36.226398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267231, 34.138317, 36.218582>,  <31.363462, 34.526352, 36.205559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267231, 34.138317, 36.218582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546481, -0.107648, 0.830524,
		-0.802173, 0.217599, 0.556030,
		-0.240577, -0.970084, 0.032562,
		31.195059, 33.847294, 36.228352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349609, 34.348000, 36.842766>,  <31.363462, 34.526352, 36.205559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349609, 34.348000, 36.842766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415920, 33.996853, 36.663044>,  <31.455708, 33.786167, 36.555210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415920, 33.996853, 36.663044>,  <31.349609, 34.348000, 36.842766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415920, 33.996853, 36.663044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648395, -0.246252, 0.720378,
		-0.743035, -0.410747, 0.528380,
		0.165779, -0.877865, -0.449300,
		31.465654, 33.733494, 36.528255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135788, 33.752415, 37.286915>,  <31.349609, 34.348000, 36.842766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135788, 33.752415, 37.286915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430332, 33.634590, 37.043274>,  <31.607058, 33.563896, 36.897087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430332, 33.634590, 37.043274>,  <31.135788, 33.752415, 37.286915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430332, 33.634590, 37.043274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559294, -0.241608, 0.792979,
		-0.380742, -0.924588, -0.013166,
		0.736359, -0.294557, -0.609107,
		31.651239, 33.546223, 36.860542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252766, 33.000225, 37.372936>,  <31.135788, 33.752415, 37.286915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252766, 33.000225, 37.372936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582605, 33.188526, 37.247440>,  <31.780510, 33.301506, 37.172142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582605, 33.188526, 37.247440>,  <31.252766, 33.000225, 37.372936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582605, 33.188526, 37.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437876, -0.179972, 0.880838,
		0.358189, -0.863716, -0.354534,
		0.824600, 0.470748, -0.313737,
		31.829985, 33.329750, 37.153320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846312, 32.584122, 37.572826>,  <31.252766, 33.000225, 37.372936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846312, 32.584122, 37.572826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983027, 32.959484, 37.552509>,  <32.065056, 33.184700, 37.540318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983027, 32.959484, 37.552509>,  <31.846312, 32.584122, 37.572826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983027, 32.959484, 37.552509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552512, -0.156929, 0.818598,
		0.760206, -0.307849, -0.572116,
		0.341786, 0.938404, -0.050792,
		32.085564, 33.241005, 37.537273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547997, 32.541573, 37.694717>,  <31.846312, 32.584122, 37.572826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547997, 32.541573, 37.694717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450710, 32.919483, 37.782581>,  <32.392338, 33.146229, 37.835300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450710, 32.919483, 37.782581>,  <32.547997, 32.541573, 37.694717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450710, 32.919483, 37.782581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393285, -0.110960, 0.912696,
		0.886665, 0.308369, -0.344578,
		-0.243213, 0.944773, 0.219661,
		32.377747, 33.202915, 37.848480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977840, 32.742622, 38.104553>,  <32.547997, 32.541573, 37.694717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977840, 32.742622, 38.104553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722519, 33.044594, 38.164768>,  <32.569328, 33.225777, 38.200897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722519, 33.044594, 38.164768>,  <32.977840, 32.742622, 38.104553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722519, 33.044594, 38.164768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340081, 0.101112, 0.934945,
		0.690593, 0.647969, -0.321276,
		-0.638300, 0.754926, 0.150535,
		32.531029, 33.271072, 38.209930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305973, 33.265545, 38.395451>,  <32.977840, 32.742622, 38.104553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305973, 33.265545, 38.395451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931210, 33.368839, 38.489700>,  <32.706352, 33.430817, 38.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931210, 33.368839, 38.489700>,  <33.305973, 33.265545, 38.395451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931210, 33.368839, 38.489700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288054, 0.188411, 0.938896,
		0.198064, 0.947531, -0.250909,
		-0.936908, 0.258237, 0.235623,
		32.650139, 33.446312, 38.560387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340889, 33.996544, 38.731533>,  <33.305973, 33.265545, 38.395451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340889, 33.996544, 38.731533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037315, 33.756191, 38.831898>,  <32.855171, 33.611980, 38.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037315, 33.756191, 38.831898>,  <33.340889, 33.996544, 38.731533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037315, 33.756191, 38.831898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289452, 0.033863, 0.956593,
		-0.583296, 0.798620, 0.148227,
		-0.758936, -0.600882, 0.250914,
		32.809635, 33.575928, 38.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071777, 34.313915, 39.275829>,  <33.340889, 33.996544, 38.731533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071777, 34.313915, 39.275829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948925, 33.935028, 39.312603>,  <32.875214, 33.707695, 39.334667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948925, 33.935028, 39.312603>,  <33.071777, 34.313915, 39.275829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948925, 33.935028, 39.312603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299329, -0.004447, 0.954140,
		-0.903369, 0.320562, 0.284896,
		-0.307128, -0.947217, 0.091936,
		32.856785, 33.650864, 39.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715240, 34.282669, 40.000767>,  <33.071777, 34.313915, 39.275829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715240, 34.282669, 40.000767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805565, 33.902149, 39.916828>,  <32.859760, 33.673836, 39.866467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805565, 33.902149, 39.916828>,  <32.715240, 34.282669, 40.000767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805565, 33.902149, 39.916828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067579, -0.199595, 0.977545,
		-0.971825, -0.234918, 0.019218,
		0.225807, -0.951302, -0.209847,
		32.873306, 33.616760, 39.853874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235363, 33.949112, 40.413364>,  <32.715240, 34.282669, 40.000767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235363, 33.949112, 40.413364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519199, 33.683483, 40.319149>,  <32.689503, 33.524105, 40.262619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519199, 33.683483, 40.319149>,  <32.235363, 33.949112, 40.413364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519199, 33.683483, 40.319149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046982, -0.288947, 0.956192,
		-0.703042, -0.689574, -0.173835,
		0.709594, -0.664076, -0.235539,
		32.732079, 33.484261, 40.248486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021320, 33.379509, 40.827991>,  <32.235363, 33.949112, 40.413364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021320, 33.379509, 40.827991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412689, 33.371143, 40.745762>,  <32.647511, 33.366123, 40.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412689, 33.371143, 40.745762>,  <32.021320, 33.379509, 40.827991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412689, 33.371143, 40.745762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203247, -0.082073, 0.975682,
		-0.037275, -0.996407, -0.076051,
		0.978418, -0.020911, -0.205576,
		32.706215, 33.364868, 40.684090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336964, 32.814026, 41.231194>,  <32.021320, 33.379509, 40.827991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336964, 32.814026, 41.231194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665390, 33.005264, 41.106441>,  <32.862446, 33.120007, 41.031590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665390, 33.005264, 41.106441>,  <32.336964, 32.814026, 41.231194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665390, 33.005264, 41.106441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441424, -0.185377, 0.877941,
		0.361926, -0.858521, -0.363251,
		0.821069, 0.478098, -0.311879,
		32.911709, 33.148693, 41.012878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859753, 32.340923, 41.471874>,  <32.336964, 32.814026, 41.231194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859753, 32.340923, 41.471874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044804, 32.687050, 41.394718>,  <33.155834, 32.894726, 41.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044804, 32.687050, 41.394718>,  <32.859753, 32.340923, 41.471874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044804, 32.687050, 41.394718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570504, -0.124030, 0.811876,
		0.678602, -0.485644, -0.551044,
		0.462628, 0.865313, -0.192895,
		33.183594, 32.946644, 41.336849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591068, 32.315662, 41.590908>,  <32.859753, 32.340923, 41.471874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591068, 32.315662, 41.590908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533604, 32.708317, 41.641125>,  <33.499126, 32.943909, 41.671257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533604, 32.708317, 41.641125>,  <33.591068, 32.315662, 41.590908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533604, 32.708317, 41.641125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665308, 0.001886, 0.746567,
		0.732617, 0.190777, -0.653358,
		-0.143660, 0.981632, 0.125544,
		33.490505, 33.002808, 41.678787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220657, 32.601326, 41.829075>,  <33.591068, 32.315662, 41.590908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220657, 32.601326, 41.829075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927422, 32.850311, 41.938705>,  <33.751480, 32.999702, 42.004482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927422, 32.850311, 41.938705>,  <34.220657, 32.601326, 41.829075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927422, 32.850311, 41.938705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448879, 0.140061, 0.882548,
		0.510966, 0.770014, -0.382088,
		-0.733090, 0.622464, 0.274077,
		33.707493, 33.037052, 42.020927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555515, 33.107750, 42.329903>,  <34.220657, 32.601326, 41.829075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555515, 33.107750, 42.329903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163635, 33.157478, 42.392811>,  <33.928509, 33.187317, 42.430557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163635, 33.157478, 42.392811>,  <34.555515, 33.107750, 42.329903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163635, 33.157478, 42.392811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171744, 0.115783, 0.978314,
		0.103416, 0.985464, -0.134784,
		-0.979698, 0.124322, 0.157274,
		33.869724, 33.194775, 42.439991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471714, 33.742577, 42.644974>,  <34.555515, 33.107750, 42.329903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471714, 33.742577, 42.644974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166714, 33.505909, 42.749680>,  <33.983715, 33.363911, 42.812504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166714, 33.505909, 42.749680>,  <34.471714, 33.742577, 42.644974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166714, 33.505909, 42.749680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177596, 0.197648, 0.964051,
		-0.622134, 0.781580, -0.045630,
		-0.762502, -0.591665, 0.261769,
		33.937962, 33.328411, 42.828209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146275, 34.071220, 43.215069>,  <34.471714, 33.742577, 42.644974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146275, 34.071220, 43.215069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028469, 33.689426, 43.233898>,  <33.957787, 33.460350, 43.245197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028469, 33.689426, 43.233898>,  <34.146275, 34.071220, 43.215069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028469, 33.689426, 43.233898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256102, -0.031373, 0.966140,
		-0.920692, 0.296595, 0.253686,
		-0.294512, -0.954488, 0.047074,
		33.940117, 33.403080, 43.248020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911484, 33.988937, 43.917145>,  <34.146275, 34.071220, 43.215069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911484, 33.988937, 43.917145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966652, 33.609646, 43.802711>,  <33.999752, 33.382072, 43.734051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966652, 33.609646, 43.802711>,  <33.911484, 33.988937, 43.917145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966652, 33.609646, 43.802711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167354, -0.262384, 0.950341,
		-0.976202, -0.178950, 0.122501,
		0.137921, -0.948226, -0.286087,
		34.008030, 33.325180, 43.716885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566101, 33.659164, 44.503670>,  <33.911484, 33.988937, 43.917145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566101, 33.659164, 44.503670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811470, 33.396969, 44.327469>,  <33.958691, 33.239651, 44.221748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811470, 33.396969, 44.327469>,  <33.566101, 33.659164, 44.503670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811470, 33.396969, 44.327469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344172, -0.280145, 0.896139,
		-0.710819, -0.701318, 0.053756,
		0.613419, -0.655494, -0.440506,
		33.995495, 33.200321, 44.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516384, 33.030499, 44.883564>,  <33.566101, 33.659164, 44.503670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516384, 33.030499, 44.883564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863789, 33.003475, 44.687149>,  <34.072231, 32.987263, 44.569298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863789, 33.003475, 44.687149>,  <33.516384, 33.030499, 44.883564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863789, 33.003475, 44.687149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448601, -0.314203, 0.836680,
		-0.210807, -0.946949, -0.242585,
		0.868514, -0.067554, -0.491039,
		34.124344, 32.983208, 44.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823753, 32.442425, 45.263687>,  <33.516384, 33.030499, 44.883564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823753, 32.442425, 45.263687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123657, 32.633480, 45.080502>,  <34.303600, 32.748112, 44.970589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123657, 32.633480, 45.080502>,  <33.823753, 32.442425, 45.263687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123657, 32.633480, 45.080502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556137, -0.079799, 0.827251,
		0.358579, -0.874927, -0.325460,
		0.749756, 0.477635, -0.457964,
		34.348583, 32.776772, 44.943111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343571, 32.005917, 45.361603>,  <33.823753, 32.442425, 45.263687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343571, 32.005917, 45.361603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502407, 32.353146, 45.242428>,  <34.597710, 32.561485, 45.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502407, 32.353146, 45.242428>,  <34.343571, 32.005917, 45.361603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502407, 32.353146, 45.242428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758383, -0.127521, 0.639214,
		0.516893, -0.479774, -0.708971,
		0.397086, 0.868076, -0.297938,
		34.621532, 32.613567, 45.153046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999428, 31.811079, 45.145107>,  <34.343571, 32.005917, 45.361603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999428, 31.811079, 45.145107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993084, 32.192696, 45.264805>,  <34.989277, 32.421665, 45.336624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993084, 32.192696, 45.264805>,  <34.999428, 31.811079, 45.145107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993084, 32.192696, 45.264805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641509, -0.219856, 0.734936,
		0.766952, 0.203627, -0.608540,
		-0.015862, 0.954044, 0.299247,
		34.988327, 32.478909, 45.354580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690269, 31.900700, 45.273640>,  <34.999428, 31.811079, 45.145107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690269, 31.900700, 45.273640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483585, 32.193348, 45.451515>,  <35.359577, 32.368938, 45.558239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483585, 32.193348, 45.451515>,  <35.690269, 31.900700, 45.273640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483585, 32.193348, 45.451515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428731, -0.228473, 0.874065,
		0.741083, 0.642285, -0.195616,
		-0.516706, 0.731622, 0.444685,
		35.328575, 32.412834, 45.584919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162292, 32.275085, 45.685036>,  <35.690269, 31.900700, 45.273640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162292, 32.275085, 45.685036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803692, 32.353737, 45.843842>,  <35.588531, 32.400928, 45.939125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803692, 32.353737, 45.843842>,  <36.162292, 32.275085, 45.685036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803692, 32.353737, 45.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386775, -0.089686, 0.917802,
		0.216070, 0.976368, 0.004353,
		-0.896503, 0.196626, 0.397014,
		35.534740, 32.412724, 45.962944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502846, 32.967213, 45.465233>,  <36.162292, 32.275085, 45.685036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502846, 32.967213, 45.465233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878902, 33.071178, 45.377064>,  <37.104534, 33.133556, 45.324162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878902, 33.071178, 45.377064>,  <36.502846, 32.967213, 45.465233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878902, 33.071178, 45.377064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279341, 0.217217, -0.935300,
		-0.195220, 0.940883, 0.276819,
		0.940137, 0.259916, -0.220422,
		37.160942, 33.149155, 45.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448128, 33.522106, 45.044678>,  <36.502846, 32.967213, 45.465233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448128, 33.522106, 45.044678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817326, 33.399853, 44.951160>,  <37.038845, 33.326500, 44.895050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817326, 33.399853, 44.951160>,  <36.448128, 33.522106, 45.044678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817326, 33.399853, 44.951160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194689, 0.153165, -0.968833,
		0.331919, 0.939749, 0.081867,
		0.922998, -0.305635, -0.233797,
		37.094227, 33.308163, 44.881020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663506, 34.112659, 44.606842>,  <36.448128, 33.522106, 45.044678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663506, 34.112659, 44.606842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894825, 33.798664, 44.517975>,  <37.033615, 33.610268, 44.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894825, 33.798664, 44.517975>,  <36.663506, 34.112659, 44.606842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894825, 33.798664, 44.517975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179076, 0.143543, -0.973307,
		0.795928, 0.602649, -0.057562,
		0.578300, -0.784990, -0.222170,
		37.068314, 33.563168, 44.451324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150501, 34.342003, 44.086990>,  <36.663506, 34.112659, 44.606842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150501, 34.342003, 44.086990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125881, 33.943626, 44.060699>,  <37.111107, 33.704601, 44.044926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125881, 33.943626, 44.060699>,  <37.150501, 34.342003, 44.086990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125881, 33.943626, 44.060699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021422, 0.067158, -0.997512,
		0.997874, -0.059993, -0.025469,
		-0.061554, -0.995937, -0.065730,
		37.107414, 33.644844, 44.040981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672211, 34.098049, 43.620815>,  <37.150501, 34.342003, 44.086990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672211, 34.098049, 43.620815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420486, 33.787685, 43.603188>,  <37.269451, 33.601467, 43.592609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420486, 33.787685, 43.603188>,  <37.672211, 34.098049, 43.620815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420486, 33.787685, 43.603188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142626, -0.059562, -0.987983,
		0.763956, -0.628032, 0.148147,
		-0.629309, -0.775905, -0.044071,
		37.231693, 33.554913, 43.589966>
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
