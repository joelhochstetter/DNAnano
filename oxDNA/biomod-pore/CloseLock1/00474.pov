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
	<23.915846, 34.485386, 34.618248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126877, 34.813828, 34.705376>,  <24.253496, 35.010895, 34.757652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126877, 34.813828, 34.705376>,  <23.915846, 34.485386, 34.618248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.126877, 34.813828, 34.705376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554466, -0.138570, -0.820589,
		-0.643607, 0.553699, -0.528382,
		0.527578, 0.821106, 0.217823,
		24.285151, 35.060158, 34.770721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.964767, 34.931900, 33.998112>,  <23.915846, 34.485386, 34.618248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.964767, 34.931900, 33.998112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271200, 34.992920, 34.247864>,  <24.455059, 35.029533, 34.397717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271200, 34.992920, 34.247864>,  <23.964767, 34.931900, 33.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271200, 34.992920, 34.247864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641902, -0.231341, -0.731056,
		0.032921, 0.960838, -0.275149,
		0.766080, 0.152552, 0.624379,
		24.501024, 35.038685, 34.435177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536581, 35.459995, 33.789448>,  <23.964767, 34.931900, 33.998112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536581, 35.459995, 33.789448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665842, 35.163147, 34.024338>,  <24.743399, 34.985039, 34.165272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665842, 35.163147, 34.024338>,  <24.536581, 35.459995, 33.789448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665842, 35.163147, 34.024338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704735, -0.225423, -0.672706,
		0.631602, 0.631222, 0.450153,
		0.323152, -0.742121, 0.587222,
		24.762787, 34.940510, 34.200504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231934, 35.555344, 34.059910>,  <24.536581, 35.459995, 33.789448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231934, 35.555344, 34.059910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137733, 35.177555, 33.968239>,  <25.081213, 34.950882, 33.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137733, 35.177555, 33.968239>,  <25.231934, 35.555344, 34.059910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137733, 35.177555, 33.968239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732561, -0.017543, -0.680476,
		0.638667, -0.328136, 0.696011,
		-0.235499, -0.944468, -0.229175,
		25.067083, 34.894215, 33.899487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903069, 35.087757, 34.016865>,  <25.231934, 35.555344, 34.059910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903069, 35.087757, 34.016865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579620, 35.039581, 33.786518>,  <25.385551, 35.010674, 33.648308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579620, 35.039581, 33.786518>,  <25.903069, 35.087757, 34.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579620, 35.039581, 33.786518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530995, 0.272063, -0.802512,
		0.253336, -0.954711, -0.156037,
		-0.808619, -0.120451, -0.575870,
		25.337034, 35.003448, 33.613758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049492, 34.534309, 33.497475>,  <25.903069, 35.087757, 34.016865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049492, 34.534309, 33.497475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795080, 34.821541, 33.384460>,  <25.642433, 34.993881, 33.316650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795080, 34.821541, 33.384460>,  <26.049492, 34.534309, 33.497475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795080, 34.821541, 33.384460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559718, 0.177252, -0.809504,
		-0.531208, -0.673010, -0.514660,
		-0.636029, 0.718080, -0.282538,
		25.604271, 35.036964, 33.299698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807806, 34.431980, 32.830540>,  <26.049492, 34.534309, 33.497475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807806, 34.431980, 32.830540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811691, 34.822475, 32.917133>,  <25.814022, 35.056774, 32.969090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811691, 34.822475, 32.917133>,  <25.807806, 34.431980, 32.830540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811691, 34.822475, 32.917133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611702, 0.165460, -0.773592,
		-0.791029, 0.139940, -0.595559,
		0.009715, 0.976238, 0.216485,
		25.814606, 35.115345, 32.982079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743553, 34.818363, 32.196415>,  <25.807806, 34.431980, 32.830540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743553, 34.818363, 32.196415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882561, 35.086716, 32.458450>,  <25.965965, 35.247726, 32.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882561, 35.086716, 32.458450>,  <25.743553, 34.818363, 32.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882561, 35.086716, 32.458450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565520, 0.407312, -0.717136,
		-0.747942, 0.619686, -0.237850,
		0.347519, 0.670885, 0.655091,
		25.986816, 35.287983, 32.654976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707150, 35.590416, 31.944971>,  <25.743553, 34.818363, 32.196415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707150, 35.590416, 31.944971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020802, 35.585850, 32.193169>,  <26.208992, 35.583111, 32.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020802, 35.585850, 32.193169>,  <25.707150, 35.590416, 31.944971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020802, 35.585850, 32.193169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545604, 0.489134, -0.680488,
		-0.295733, 0.872134, 0.389774,
		0.784129, -0.011419, 0.620493,
		26.256041, 35.582424, 32.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943424, 36.300720, 32.029194>,  <25.707150, 35.590416, 31.944971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943424, 36.300720, 32.029194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246742, 36.051147, 32.104771>,  <26.428732, 35.901405, 32.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246742, 36.051147, 32.104771>,  <25.943424, 36.300720, 32.029194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246742, 36.051147, 32.104771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583945, 0.521229, -0.622357,
		0.289825, 0.582263, 0.759586,
		0.758294, -0.623931, 0.188945,
		26.474230, 35.863968, 32.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490145, 36.723961, 32.052311>,  <25.943424, 36.300720, 32.029194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490145, 36.723961, 32.052311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621531, 36.352337, 31.984249>,  <26.700361, 36.129360, 31.943413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621531, 36.352337, 31.984249>,  <26.490145, 36.723961, 32.052311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621531, 36.352337, 31.984249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551002, 0.334796, -0.764401,
		0.767143, 0.157325, 0.621885,
		0.328464, -0.929064, -0.170150,
		26.720070, 36.073616, 31.933205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246305, 36.723274, 32.046860>,  <26.490145, 36.723961, 32.052311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246305, 36.723274, 32.046860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141941, 36.391277, 31.849665>,  <27.079323, 36.192078, 31.731348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141941, 36.391277, 31.849665>,  <27.246305, 36.723274, 32.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141941, 36.391277, 31.849665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681352, 0.203442, -0.703115,
		0.683875, -0.519348, 0.512438,
		-0.260910, -0.829993, -0.492988,
		27.063667, 36.142281, 31.701769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880980, 36.435802, 31.840073>,  <27.246305, 36.723274, 32.046860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880980, 36.435802, 31.840073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615780, 36.271709, 31.589588>,  <27.456659, 36.173256, 31.439297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615780, 36.271709, 31.589588>,  <27.880980, 36.435802, 31.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615780, 36.271709, 31.589588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562159, 0.279583, -0.778338,
		0.494375, -0.868070, 0.045250,
		-0.663001, -0.410229, -0.626213,
		27.416880, 36.148640, 31.401724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283754, 36.172489, 31.354237>,  <27.880980, 36.435802, 31.840073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283754, 36.172489, 31.354237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934017, 36.205368, 31.162920>,  <27.724174, 36.225098, 31.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934017, 36.205368, 31.162920>,  <28.283754, 36.172489, 31.354237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934017, 36.205368, 31.162920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484047, 0.218629, -0.847289,
		0.034921, -0.972340, -0.230946,
		-0.874345, 0.082201, -0.478293,
		27.671713, 36.230026, 31.019432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472021, 35.998943, 30.717989>,  <28.283754, 36.172489, 31.354237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472021, 35.998943, 30.717989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124252, 36.185020, 30.651424>,  <27.915590, 36.296669, 30.611485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124252, 36.185020, 30.651424>,  <28.472021, 35.998943, 30.717989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124252, 36.185020, 30.651424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375360, 0.402924, -0.834720,
		-0.321258, -0.788190, -0.524928,
		-0.869424, 0.465197, -0.166413,
		27.863424, 36.324581, 30.601501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240126, 35.869949, 30.072805>,  <28.472021, 35.998943, 30.717989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240126, 35.869949, 30.072805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071962, 36.225311, 30.146549>,  <27.971064, 36.438530, 30.190796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071962, 36.225311, 30.146549>,  <28.240126, 35.869949, 30.072805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071962, 36.225311, 30.146549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427605, 0.373202, -0.823331,
		-0.800257, -0.267304, -0.536785,
		-0.420409, 0.888408, 0.184357,
		27.945839, 36.491833, 30.201857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903229, 36.100330, 29.446093>,  <28.240126, 35.869949, 30.072805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903229, 36.100330, 29.446093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938419, 36.428646, 29.671858>,  <27.959534, 36.625637, 29.807318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938419, 36.428646, 29.671858>,  <27.903229, 36.100330, 29.446093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938419, 36.428646, 29.671858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504393, 0.451894, -0.735785,
		-0.858980, 0.349419, -0.374244,
		0.087978, 0.820791, 0.564413,
		27.964813, 36.674885, 29.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720213, 36.679054, 29.036604>,  <27.903229, 36.100330, 29.446093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720213, 36.679054, 29.036604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915224, 36.878719, 29.323143>,  <28.032230, 36.998520, 29.495066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915224, 36.878719, 29.323143>,  <27.720213, 36.679054, 29.036604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915224, 36.878719, 29.323143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386030, 0.612674, -0.689646,
		-0.783134, 0.612751, 0.106001,
		0.487526, 0.499166, 0.716346,
		28.061481, 37.028469, 29.538048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545601, 37.423313, 29.008018>,  <27.720213, 36.679054, 29.036604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545601, 37.423313, 29.008018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897362, 37.421871, 29.198442>,  <28.108419, 37.421005, 29.312696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897362, 37.421871, 29.198442>,  <27.545601, 37.423313, 29.008018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897362, 37.421871, 29.198442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313919, 0.756169, -0.574164,
		-0.357915, 0.654367, 0.666109,
		0.879404, -0.003602, 0.476062,
		28.161182, 37.420792, 29.341261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798594, 38.089218, 28.938787>,  <27.545601, 37.423313, 29.008018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798594, 38.089218, 28.938787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120287, 37.877491, 29.046881>,  <28.313303, 37.750454, 29.111736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120287, 37.877491, 29.046881>,  <27.798594, 38.089218, 28.938787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120287, 37.877491, 29.046881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579866, 0.599235, -0.551972,
		0.130235, 0.600615, 0.788860,
		0.804235, -0.529319, 0.270235,
		28.361557, 37.718697, 29.127951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234907, 38.538937, 29.105482>,  <27.798594, 38.089218, 28.938787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234907, 38.538937, 29.105482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459280, 38.215355, 29.035114>,  <28.593904, 38.021206, 28.992893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459280, 38.215355, 29.035114>,  <28.234907, 38.538937, 29.105482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459280, 38.215355, 29.035114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637619, 0.557695, -0.531430,
		0.528011, 0.185929, 0.828635,
		0.560934, -0.808954, -0.175917,
		28.627560, 37.972668, 28.982340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969952, 38.696072, 29.264364>,  <28.234907, 38.538937, 29.105482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969952, 38.696072, 29.264364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994232, 38.391720, 29.005945>,  <29.008801, 38.209110, 28.850893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994232, 38.391720, 29.005945>,  <28.969952, 38.696072, 29.264364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994232, 38.391720, 29.005945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752957, 0.459802, -0.470783,
		0.655264, -0.457870, 0.600820,
		0.060701, -0.760879, -0.646048,
		29.012442, 38.163456, 28.812130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679750, 38.504604, 29.312613>,  <28.969952, 38.696072, 29.264364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679750, 38.504604, 29.312613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533161, 38.369270, 28.965919>,  <29.445208, 38.288071, 28.757904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533161, 38.369270, 28.965919>,  <29.679750, 38.504604, 29.312613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533161, 38.369270, 28.965919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796100, 0.368133, -0.480315,
		0.481581, -0.866029, 0.134439,
		-0.366475, -0.338338, -0.866732,
		29.423218, 38.267769, 28.705900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230963, 38.387096, 28.923965>,  <29.679750, 38.504604, 29.312613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230963, 38.387096, 28.923965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942593, 38.410984, 28.647791>,  <29.769571, 38.425316, 28.482086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942593, 38.410984, 28.647791>,  <30.230963, 38.387096, 28.923965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942593, 38.410984, 28.647791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616621, 0.509989, -0.599741,
		0.316302, -0.858106, -0.404485,
		-0.720924, 0.059715, -0.690436,
		29.726315, 38.428898, 28.440660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454849, 37.995945, 28.235149>,  <30.230963, 38.387096, 28.923965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454849, 37.995945, 28.235149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204630, 38.306725, 28.206749>,  <30.054499, 38.493191, 28.189709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204630, 38.306725, 28.206749>,  <30.454849, 37.995945, 28.235149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204630, 38.306725, 28.206749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677090, 0.495422, -0.544157,
		-0.387605, -0.388472, -0.835974,
		-0.625550, 0.776947, -0.071003,
		30.016966, 38.539810, 28.185448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267368, 38.263950, 27.520718>,  <30.454849, 37.995945, 28.235149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267368, 38.263950, 27.520718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282690, 38.552063, 27.797768>,  <30.291883, 38.724930, 27.963999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282690, 38.552063, 27.797768>,  <30.267368, 38.263950, 27.520718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282690, 38.552063, 27.797768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773752, 0.417233, -0.476681,
		-0.632330, 0.554180, -0.541335,
		0.038305, 0.720279, 0.692626,
		30.294182, 38.768147, 28.005556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255123, 39.004074, 27.257793>,  <30.267368, 38.263950, 27.520718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255123, 39.004074, 27.257793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451933, 38.995243, 27.605915>,  <30.570019, 38.989944, 27.814787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451933, 38.995243, 27.605915>,  <30.255123, 39.004074, 27.257793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451933, 38.995243, 27.605915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768962, 0.479729, -0.422562,
		-0.408180, 0.877139, 0.253014,
		0.492024, -0.022077, 0.870302,
		30.599541, 38.988621, 27.867006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684160, 39.468315, 27.091053>,  <30.255123, 39.004074, 27.257793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684160, 39.468315, 27.091053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843000, 39.293999, 27.414139>,  <30.938305, 39.189411, 27.607990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843000, 39.293999, 27.414139>,  <30.684160, 39.468315, 27.091053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843000, 39.293999, 27.414139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901001, 0.352599, -0.252727,
		-0.174664, 0.828109, 0.532662,
		0.397101, -0.435787, 0.807713,
		30.962132, 39.163261, 27.656452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995329, 39.200581, 26.450394>,  <30.684160, 39.468315, 27.091053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995329, 39.200581, 26.450394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384405, 39.259975, 26.379038>,  <31.617851, 39.295612, 26.336224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384405, 39.259975, 26.379038>,  <30.995329, 39.200581, 26.450394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384405, 39.259975, 26.379038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082591, -0.496845, -0.863900,
		-0.216912, 0.855041, -0.471013,
		0.972691, 0.148489, -0.178390,
		31.676212, 39.304523, 26.325521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110001, 39.617699, 25.679985>,  <30.995329, 39.200581, 26.450394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110001, 39.617699, 25.679985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404728, 39.387413, 25.821775>,  <31.581564, 39.249241, 25.906849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404728, 39.387413, 25.821775>,  <31.110001, 39.617699, 25.679985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404728, 39.387413, 25.821775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122627, -0.629407, -0.767339,
		0.664877, 0.521921, -0.534356,
		0.736818, -0.575713, 0.354477,
		31.625772, 39.214699, 25.928118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715233, 39.615505, 25.222355>,  <31.110001, 39.617699, 25.679985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715233, 39.615505, 25.222355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685934, 39.266769, 25.416071>,  <31.668356, 39.057529, 25.532301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685934, 39.266769, 25.416071>,  <31.715233, 39.615505, 25.222355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685934, 39.266769, 25.416071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144301, -0.489748, -0.859840,
		0.986819, 0.006904, 0.161679,
		-0.073246, -0.871837, 0.484289,
		31.663960, 39.005219, 25.561357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794434, 40.098564, 25.899206>,  <31.715233, 39.615505, 25.222355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794434, 40.098564, 25.899206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440929, 40.180855, 26.067322>,  <31.228827, 40.230228, 26.168190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440929, 40.180855, 26.067322>,  <31.794434, 40.098564, 25.899206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440929, 40.180855, 26.067322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144171, -0.734768, 0.662820,
		0.445174, 0.646369, 0.619699,
		-0.883761, 0.205728, 0.420288,
		31.175800, 40.242573, 26.193409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801056, 40.280216, 26.728754>,  <31.794434, 40.098564, 25.899206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801056, 40.280216, 26.728754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487944, 40.091034, 26.566977>,  <31.300077, 39.977524, 26.469910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487944, 40.091034, 26.566977>,  <31.801056, 40.280216, 26.728754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487944, 40.091034, 26.566977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170480, -0.788030, 0.591561,
		-0.598492, 0.394113, 0.697483,
		-0.782780, -0.472952, -0.404442,
		31.253109, 39.949150, 26.445644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410961, 40.042198, 27.316628>,  <31.801056, 40.280216, 26.728754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410961, 40.042198, 27.316628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383324, 39.836357, 26.974770>,  <31.366741, 39.712852, 26.769655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383324, 39.836357, 26.974770>,  <31.410961, 40.042198, 27.316628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383324, 39.836357, 26.974770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205260, -0.845694, 0.492616,
		-0.976265, -0.141387, 0.164060,
		-0.069096, -0.514598, -0.854643,
		31.362595, 39.681976, 26.718376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207155, 40.486897, 27.938557>,  <31.410961, 40.042198, 27.316628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207155, 40.486897, 27.938557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108534, 40.864243, 27.849770>,  <31.049362, 41.090652, 27.796497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108534, 40.864243, 27.849770>,  <31.207155, 40.486897, 27.938557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108534, 40.864243, 27.849770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413798, 0.104636, 0.904335,
		0.876347, 0.314815, 0.364566,
		-0.246551, 0.943368, -0.221968,
		31.034569, 41.147251, 27.783180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611641, 40.935177, 28.414513>,  <31.207155, 40.486897, 27.938557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611641, 40.935177, 28.414513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248184, 41.076309, 28.325176>,  <31.030109, 41.160988, 28.271574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248184, 41.076309, 28.325176>,  <31.611641, 40.935177, 28.414513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248184, 41.076309, 28.325176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375469, -0.456274, 0.806745,
		0.182736, 0.816901, 0.547066,
		-0.908642, 0.352827, -0.223343,
		30.975592, 41.182156, 28.258173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457684, 41.271423, 29.015720>,  <31.611641, 40.935177, 28.414513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457684, 41.271423, 29.015720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103750, 41.218491, 28.837032>,  <30.891390, 41.186729, 28.729820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103750, 41.218491, 28.837032>,  <31.457684, 41.271423, 29.015720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103750, 41.218491, 28.837032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383613, -0.337210, 0.859727,
		-0.264408, 0.932083, 0.247610,
		-0.884833, -0.132332, -0.446720,
		30.838301, 41.178791, 28.703016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903437, 41.594662, 29.384666>,  <31.457684, 41.271423, 29.015720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903437, 41.594662, 29.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682074, 41.354626, 29.153620>,  <30.549255, 41.210606, 29.014992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682074, 41.354626, 29.153620>,  <30.903437, 41.594662, 29.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682074, 41.354626, 29.153620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393893, -0.422485, 0.816305,
		-0.733887, 0.679267, -0.002563,
		-0.553406, -0.600085, -0.577615,
		30.516052, 41.174599, 28.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267365, 41.769058, 29.516994>,  <30.903437, 41.594662, 29.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267365, 41.769058, 29.516994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302473, 41.385380, 29.409491>,  <30.323538, 41.155170, 29.344988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302473, 41.385380, 29.409491>,  <30.267365, 41.769058, 29.516994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302473, 41.385380, 29.409491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396687, -0.281143, 0.873841,
		-0.913748, 0.029918, -0.405178,
		0.087769, -0.959199, -0.268762,
		30.328804, 41.097618, 29.328861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552544, 41.534859, 29.695333>,  <30.267365, 41.769058, 29.516994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552544, 41.534859, 29.695333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809362, 41.229210, 29.670389>,  <29.963453, 41.045818, 29.655422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809362, 41.229210, 29.670389>,  <29.552544, 41.534859, 29.695333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809362, 41.229210, 29.670389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228544, -0.268404, 0.935803,
		-0.731810, -0.586575, -0.346964,
		0.642045, -0.764126, -0.062362,
		30.001976, 40.999973, 29.651680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203585, 40.960896, 29.905985>,  <29.552544, 41.534859, 29.695333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203585, 40.960896, 29.905985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582132, 40.837532, 29.944500>,  <29.809261, 40.763512, 29.967609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582132, 40.837532, 29.944500>,  <29.203585, 40.960896, 29.905985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582132, 40.837532, 29.944500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250910, -0.513783, 0.820409,
		-0.203552, -0.800568, -0.563611,
		0.946367, -0.308411, 0.096289,
		29.866043, 40.745007, 29.973387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184940, 40.274120, 29.919313>,  <29.203585, 40.960896, 29.905985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184940, 40.274120, 29.919313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525637, 40.364498, 30.108410>,  <29.730055, 40.418724, 30.221869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525637, 40.364498, 30.108410>,  <29.184940, 40.274120, 29.919313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525637, 40.364498, 30.108410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241591, -0.631263, 0.736981,
		0.464941, -0.741928, -0.483087,
		0.851742, 0.225943, 0.472743,
		29.781158, 40.432281, 30.250233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421230, 39.610798, 30.156261>,  <29.184940, 40.274120, 29.919313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421230, 39.610798, 30.156261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605930, 39.885429, 30.380899>,  <29.716751, 40.050209, 30.515682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605930, 39.885429, 30.380899>,  <29.421230, 39.610798, 30.156261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605930, 39.885429, 30.380899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210087, -0.530467, 0.821260,
		0.861771, -0.497203, -0.100702,
		0.461752, 0.686581, 0.561597,
		29.744455, 40.091404, 30.549379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988228, 39.318672, 30.498407>,  <29.421230, 39.610798, 30.156261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988228, 39.318672, 30.498407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943434, 39.647781, 30.721298>,  <29.916557, 39.845245, 30.855034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943434, 39.647781, 30.721298>,  <29.988228, 39.318672, 30.498407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943434, 39.647781, 30.721298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222107, -0.525844, 0.821070,
		0.968570, 0.215712, -0.123857,
		-0.111986, 0.822773, 0.557228,
		29.909838, 39.894615, 30.888466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593483, 39.350552, 30.904329>,  <29.988228, 39.318672, 30.498407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593483, 39.350552, 30.904329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340269, 39.608971, 31.074926>,  <30.188341, 39.764023, 31.177284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340269, 39.608971, 31.074926>,  <30.593483, 39.350552, 30.904329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340269, 39.608971, 31.074926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234564, -0.364958, 0.900991,
		0.737733, 0.670397, 0.079492,
		-0.633033, 0.646045, 0.426493,
		30.150360, 39.802784, 31.202873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937664, 39.549320, 31.546721>,  <30.593483, 39.350552, 30.904329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937664, 39.549320, 31.546721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542883, 39.594723, 31.592402>,  <30.306015, 39.621964, 31.619810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542883, 39.594723, 31.592402>,  <30.937664, 39.549320, 31.546721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542883, 39.594723, 31.592402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028023, -0.577355, 0.816012,
		0.158557, 0.808565, 0.566641,
		-0.986952, 0.113505, 0.114202,
		30.246798, 39.628773, 31.626661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843857, 39.437794, 32.213078>,  <30.937664, 39.549320, 31.546721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843857, 39.437794, 32.213078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476637, 39.375736, 32.067139>,  <30.256304, 39.338501, 31.979576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476637, 39.375736, 32.067139>,  <30.843857, 39.437794, 32.213078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476637, 39.375736, 32.067139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194784, -0.625020, 0.755916,
		-0.345313, 0.765036, 0.543580,
		-0.918051, -0.155147, -0.364844,
		30.201221, 39.329193, 31.957685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357817, 39.532909, 32.776260>,  <30.843857, 39.437794, 32.213078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357817, 39.532909, 32.776260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176842, 39.301441, 32.504837>,  <30.068256, 39.162560, 32.341984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176842, 39.301441, 32.504837>,  <30.357817, 39.532909, 32.776260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176842, 39.301441, 32.504837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479641, -0.483573, 0.732190,
		-0.751828, 0.656736, -0.058765,
		-0.452438, -0.578667, -0.678561,
		30.041111, 39.127842, 32.301270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641954, 39.445869, 33.061432>,  <30.357817, 39.532909, 32.776260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641954, 39.445869, 33.061432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663624, 39.155651, 32.787014>,  <29.676624, 38.981522, 32.622364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663624, 39.155651, 32.787014>,  <29.641954, 39.445869, 33.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663624, 39.155651, 32.787014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374959, -0.651552, 0.659459,
		-0.925457, 0.221513, -0.307344,
		0.054172, -0.725542, -0.686042,
		29.679876, 38.937988, 32.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987076, 39.032291, 33.055557>,  <29.641954, 39.445869, 33.061432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987076, 39.032291, 33.055557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271105, 38.796711, 32.901188>,  <29.441523, 38.655365, 32.808567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271105, 38.796711, 32.901188>,  <28.987076, 39.032291, 33.055557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271105, 38.796711, 32.901188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325269, -0.760461, 0.562048,
		-0.624498, -0.273566, -0.731549,
		0.710072, -0.588948, -0.385924,
		29.484127, 38.620026, 32.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593021, 38.444710, 32.902081>,  <28.987076, 39.032291, 33.055557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593021, 38.444710, 32.902081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974064, 38.323032, 32.901516>,  <29.202690, 38.250027, 32.901176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974064, 38.323032, 32.901516>,  <28.593021, 38.444710, 32.902081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974064, 38.323032, 32.901516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249108, -0.782735, 0.570325,
		-0.174593, -0.542946, -0.821418,
		0.952608, -0.304196, -0.001408,
		29.259846, 38.231773, 32.901093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571684, 37.671249, 32.766479>,  <28.593021, 38.444710, 32.902081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571684, 37.671249, 32.766479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945696, 37.713444, 32.901886>,  <29.170103, 37.738762, 32.983131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945696, 37.713444, 32.901886>,  <28.571684, 37.671249, 32.766479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945696, 37.713444, 32.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068859, -0.882521, 0.465204,
		0.347821, -0.458289, -0.817919,
		0.935029, 0.105486, 0.338517,
		29.226204, 37.745090, 33.003441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977999, 37.092022, 32.639893>,  <28.571684, 37.671249, 32.766479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977999, 37.092022, 32.639893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201462, 37.260391, 32.925755>,  <29.335539, 37.361412, 33.097271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201462, 37.260391, 32.925755>,  <28.977999, 37.092022, 32.639893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201462, 37.260391, 32.925755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217616, -0.905853, 0.363418,
		0.800342, -0.047505, -0.597659,
		0.558656, 0.420919, 0.714654,
		29.369059, 37.386665, 33.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530605, 36.700302, 32.666512>,  <28.977999, 37.092022, 32.639893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530605, 36.700302, 32.666512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529131, 36.885185, 33.021217>,  <29.528246, 36.996117, 33.234039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529131, 36.885185, 33.021217>,  <29.530605, 36.700302, 32.666512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529131, 36.885185, 33.021217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165518, -0.874255, 0.456379,
		0.986200, 0.148457, -0.073283,
		-0.003685, 0.462211, 0.886762,
		29.528025, 37.023849, 33.287247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072760, 36.375874, 33.012508>,  <29.530605, 36.700302, 32.666512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072760, 36.375874, 33.012508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812052, 36.522839, 33.277901>,  <29.655628, 36.611015, 33.437138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812052, 36.522839, 33.277901>,  <30.072760, 36.375874, 33.012508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812052, 36.522839, 33.277901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060461, -0.897210, 0.437446,
		0.756005, 0.244999, 0.606987,
		-0.651768, 0.367410, 0.663482,
		29.616522, 36.633060, 33.476944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306215, 36.116142, 33.624527>,  <30.072760, 36.375874, 33.012508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306215, 36.116142, 33.624527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930923, 36.233727, 33.697529>,  <29.705748, 36.304276, 33.741329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930923, 36.233727, 33.697529>,  <30.306215, 36.116142, 33.624527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930923, 36.233727, 33.697529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153335, -0.826079, 0.542293,
		0.310178, 0.480812, 0.820128,
		-0.938231, 0.293961, 0.182506,
		29.649454, 36.321915, 33.752281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223053, 35.999893, 34.314346>,  <30.306215, 36.116142, 33.624527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223053, 35.999893, 34.314346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836781, 36.039761, 34.218410>,  <29.605017, 36.063683, 34.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836781, 36.039761, 34.218410>,  <30.223053, 35.999893, 34.314346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836781, 36.039761, 34.218410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229009, -0.762385, 0.605247,
		-0.122530, 0.639402, 0.759046,
		-0.965682, 0.099668, -0.239844,
		29.547075, 36.069660, 34.146458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801771, 35.905884, 34.930813>,  <30.223053, 35.999893, 34.314346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801771, 35.905884, 34.930813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615816, 35.794567, 34.594612>,  <29.504244, 35.727776, 34.392891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615816, 35.794567, 34.594612>,  <29.801771, 35.905884, 34.930813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615816, 35.794567, 34.594612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048553, -0.939875, 0.338050,
		-0.884038, 0.197963, 0.423423,
		-0.464886, -0.278290, -0.840497,
		29.476351, 35.711079, 34.342464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329800, 35.931770, 35.443069>,  <29.801771, 35.905884, 34.930813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329800, 35.931770, 35.443069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595943, 36.215633, 35.535744>,  <30.755630, 36.385952, 35.591351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595943, 36.215633, 35.535744>,  <30.329800, 35.931770, 35.443069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595943, 36.215633, 35.535744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482346, -0.645549, 0.592121,
		0.569771, -0.282219, -0.771824,
		0.665359, 0.709660, 0.231688,
		30.795551, 36.428532, 35.605251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258272, 35.447483, 36.025509>,  <30.329800, 35.931770, 35.443069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258272, 35.447483, 36.025509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566267, 35.444805, 35.770298>,  <30.751064, 35.443199, 35.617172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566267, 35.444805, 35.770298>,  <30.258272, 35.447483, 36.025509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566267, 35.444805, 35.770298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563945, 0.474901, 0.675600,
		0.298471, -0.880014, 0.369447,
		0.769988, -0.006700, -0.638023,
		30.797264, 35.442795, 35.578892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757992, 35.200893, 36.448036>,  <30.258272, 35.447483, 36.025509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757992, 35.200893, 36.448036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940479, 35.387489, 36.144920>,  <31.049973, 35.499447, 35.963051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940479, 35.387489, 36.144920>,  <30.757992, 35.200893, 36.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940479, 35.387489, 36.144920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652613, 0.403518, 0.641302,
		0.604946, -0.787119, -0.120347,
		0.456219, 0.466494, -0.757791,
		31.077345, 35.527439, 35.917583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361992, 35.193928, 36.646622>,  <30.757992, 35.200893, 36.448036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361992, 35.193928, 36.646622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356466, 35.483860, 36.371105>,  <31.353151, 35.657818, 36.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356466, 35.483860, 36.371105>,  <31.361992, 35.193928, 36.646622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356466, 35.483860, 36.371105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785584, 0.434035, 0.440989,
		0.618601, -0.535008, -0.575412,
		-0.013816, 0.724831, -0.688788,
		31.352322, 35.701309, 36.164467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044472, 35.318096, 36.422661>,  <31.361992, 35.193928, 36.646622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044472, 35.318096, 36.422661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847612, 35.654915, 36.334347>,  <31.729496, 35.857006, 36.281357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847612, 35.654915, 36.334347>,  <32.044472, 35.318096, 36.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847612, 35.654915, 36.334347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764913, 0.539391, 0.352087,
		0.415564, 0.004398, -0.909553,
		-0.492153, 0.842044, -0.220787,
		31.699966, 35.907528, 36.268112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400879, 35.986553, 36.039280>,  <32.044472, 35.318096, 36.422661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400879, 35.986553, 36.039280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117523, 36.059814, 36.311935>,  <31.947508, 36.103771, 36.475529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117523, 36.059814, 36.311935>,  <32.400879, 35.986553, 36.039280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117523, 36.059814, 36.311935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690445, 0.380278, 0.615365,
		-0.146507, 0.906556, -0.395844,
		-0.708394, 0.183153, 0.681640,
		31.905005, 36.114761, 36.516426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730991, 36.464195, 35.610172>,  <32.400879, 35.986553, 36.039280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730991, 36.464195, 35.610172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761341, 36.479870, 35.211632>,  <32.779552, 36.489273, 34.972507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761341, 36.479870, 35.211632>,  <32.730991, 36.464195, 35.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761341, 36.479870, 35.211632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991333, 0.110440, -0.071149,
		0.107249, 0.993110, 0.047225,
		0.075874, 0.039185, -0.996347,
		32.784103, 36.491627, 34.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474678, 36.327381, 35.524597>,  <32.730991, 36.464195, 35.610172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474678, 36.327381, 35.524597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839912, 36.170376, 35.568802>,  <34.059052, 36.076172, 35.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839912, 36.170376, 35.568802>,  <33.474678, 36.327381, 35.524597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839912, 36.170376, 35.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115011, 0.507907, 0.853700,
		-0.391222, -0.766787, 0.508904,
		0.913082, -0.392515, 0.110516,
		34.113838, 36.052620, 35.601955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591446, 36.013683, 36.195480>,  <33.474678, 36.327381, 35.524597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591446, 36.013683, 36.195480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960747, 36.095203, 36.065205>,  <34.182327, 36.144115, 35.987038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960747, 36.095203, 36.065205>,  <33.591446, 36.013683, 36.195480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960747, 36.095203, 36.065205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136174, 0.619095, 0.773420,
		0.359253, -0.758411, 0.543828,
		0.923251, 0.203798, -0.325688,
		34.237720, 36.156342, 35.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076130, 35.779148, 36.748676>,  <33.591446, 36.013683, 36.195480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076130, 35.779148, 36.748676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230507, 36.078545, 36.532967>,  <34.323135, 36.258183, 36.403542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230507, 36.078545, 36.532967>,  <34.076130, 35.779148, 36.748676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230507, 36.078545, 36.532967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047071, 0.599778, 0.798781,
		0.921320, -0.282901, 0.266714,
		0.385945, 0.748487, -0.539271,
		34.346291, 36.303089, 36.371185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582752, 36.018932, 37.163338>,  <34.076130, 35.779148, 36.748676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582752, 36.018932, 37.163338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553436, 36.321003, 36.902775>,  <34.535847, 36.502247, 36.746437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553436, 36.321003, 36.902775>,  <34.582752, 36.018932, 37.163338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553436, 36.321003, 36.902775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142740, 0.654384, 0.742567,
		0.987043, -0.038561, -0.155753,
		-0.073288, 0.755178, -0.651410,
		34.531448, 36.547558, 36.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000622, 36.464542, 37.425137>,  <34.582752, 36.018932, 37.163338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000622, 36.464542, 37.425137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763290, 36.691177, 37.196419>,  <34.620892, 36.827156, 37.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763290, 36.691177, 37.196419>,  <35.000622, 36.464542, 37.425137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763290, 36.691177, 37.196419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056285, 0.737795, 0.672674,
		0.802992, 0.366933, -0.469644,
		-0.593327, 0.566585, -0.571791,
		34.585293, 36.861153, 37.024883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351791, 37.086037, 37.471783>,  <35.000622, 36.464542, 37.425137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351791, 37.086037, 37.471783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982857, 37.170795, 37.342545>,  <34.761494, 37.221649, 37.265003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982857, 37.170795, 37.342545>,  <35.351791, 37.086037, 37.471783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982857, 37.170795, 37.342545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053166, 0.758658, 0.649316,
		0.382705, 0.616068, -0.688475,
		-0.922340, 0.211893, -0.323096,
		34.706154, 37.234364, 37.245617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353897, 37.784489, 37.444672>,  <35.351791, 37.086037, 37.471783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353897, 37.784489, 37.444672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968891, 37.676079, 37.448856>,  <34.737888, 37.611031, 37.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968891, 37.676079, 37.448856>,  <35.353897, 37.784489, 37.444672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968891, 37.676079, 37.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177922, 0.660039, 0.729858,
		-0.204718, 0.700637, -0.683519,
		-0.962514, -0.271028, 0.010463,
		34.680138, 37.594769, 37.451996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015591, 38.413467, 37.546474>,  <35.353897, 37.784489, 37.444672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015591, 38.413467, 37.546474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731091, 38.155716, 37.658833>,  <34.560390, 38.001064, 37.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731091, 38.155716, 37.658833>,  <35.015591, 38.413467, 37.546474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731091, 38.155716, 37.658833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207115, 0.573969, 0.792252,
		-0.671734, 0.505311, -0.541695,
		-0.711250, -0.644376, 0.280897,
		34.517715, 37.962402, 37.743103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429169, 38.842667, 37.752155>,  <35.015591, 38.413467, 37.546474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429169, 38.842667, 37.752155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413757, 38.491596, 37.943241>,  <34.404510, 38.280956, 38.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413757, 38.491596, 37.943241>,  <34.429169, 38.842667, 37.752155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413757, 38.491596, 37.943241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238349, 0.472340, 0.848578,
		-0.970415, -0.081164, -0.227392,
		-0.038532, -0.877671, 0.477711,
		34.402199, 38.228294, 38.086555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944336, 38.977295, 38.237984>,  <34.429169, 38.842667, 37.752155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944336, 38.977295, 38.237984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065811, 38.623417, 38.379459>,  <34.138695, 38.411091, 38.464344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065811, 38.623417, 38.379459>,  <33.944336, 38.977295, 38.237984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065811, 38.623417, 38.379459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348776, 0.242226, 0.905363,
		-0.886640, -0.398302, -0.234999,
		0.303685, -0.884693, 0.353685,
		34.156918, 38.358009, 38.485565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334839, 38.589325, 38.476238>,  <33.944336, 38.977295, 38.237984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334839, 38.589325, 38.476238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660378, 38.452724, 38.664291>,  <33.855701, 38.370762, 38.777122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660378, 38.452724, 38.664291>,  <33.334839, 38.589325, 38.476238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660378, 38.452724, 38.664291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453004, 0.133825, 0.881407,
		-0.363919, -0.930304, -0.045789,
		0.813849, -0.341504, 0.470133,
		33.904533, 38.350273, 38.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099594, 38.066715, 38.962482>,  <33.334839, 38.589325, 38.476238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099594, 38.066715, 38.962482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467457, 38.182503, 39.068642>,  <33.688175, 38.251976, 39.132339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467457, 38.182503, 39.068642>,  <33.099594, 38.066715, 38.962482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467457, 38.182503, 39.068642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347438, 0.284677, 0.893446,
		0.183068, -0.913876, 0.362377,
		0.919659, 0.289465, 0.265400,
		33.743355, 38.269344, 39.148262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105087, 38.030968, 39.614109>,  <33.099594, 38.066715, 38.962482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105087, 38.030968, 39.614109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441700, 38.244705, 39.582367>,  <33.643669, 38.372948, 39.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441700, 38.244705, 39.582367>,  <33.105087, 38.030968, 39.614109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441700, 38.244705, 39.582367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200236, 0.444977, 0.872870,
		0.501728, -0.718657, 0.481457,
		0.841531, 0.534348, -0.079356,
		33.694160, 38.405010, 39.558559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386036, 38.017136, 40.283844>,  <33.105087, 38.030968, 39.614109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386036, 38.017136, 40.283844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550663, 38.336899, 40.108776>,  <33.649441, 38.528755, 40.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550663, 38.336899, 40.108776>,  <33.386036, 38.017136, 40.283844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550663, 38.336899, 40.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049217, 0.460034, 0.886536,
		0.910050, -0.386410, 0.149990,
		0.411567, 0.799410, -0.437672,
		33.674133, 38.576721, 39.977474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033943, 38.167690, 40.595367>,  <33.386036, 38.017136, 40.283844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033943, 38.167690, 40.595367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873409, 38.490704, 40.422478>,  <33.777088, 38.684513, 40.318745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873409, 38.490704, 40.422478>,  <34.033943, 38.167690, 40.595367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873409, 38.490704, 40.422478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041475, 0.455385, 0.889328,
		0.914991, 0.374848, -0.149270,
		-0.401338, 0.807536, -0.432220,
		33.753010, 38.732964, 40.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488476, 38.710182, 40.847828>,  <34.033943, 38.167690, 40.595367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488476, 38.710182, 40.847828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165146, 38.906265, 40.717411>,  <33.971149, 39.023914, 40.639160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165146, 38.906265, 40.717411>,  <34.488476, 38.710182, 40.847828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165146, 38.906265, 40.717411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011078, 0.541037, 0.840926,
		0.588632, 0.683354, -0.431904,
		-0.808326, 0.490211, -0.326042,
		33.922649, 39.053329, 40.619598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626743, 39.418457, 41.025627>,  <34.488476, 38.710182, 40.847828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626743, 39.418457, 41.025627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232887, 39.349525, 41.014378>,  <33.996574, 39.308167, 41.007629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232887, 39.349525, 41.014378>,  <34.626743, 39.418457, 41.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232887, 39.349525, 41.014378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110451, 0.489964, 0.864717,
		-0.135239, 0.854539, -0.501471,
		-0.984638, -0.172332, -0.028122,
		33.937496, 39.297825, 41.005939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315521, 39.837467, 41.446774>,  <34.626743, 39.418457, 41.025627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315521, 39.837467, 41.446774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967567, 39.645298, 41.402046>,  <33.758797, 39.529999, 41.375210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967567, 39.645298, 41.402046>,  <34.315521, 39.837467, 41.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967567, 39.645298, 41.402046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345012, 0.430580, 0.834007,
		-0.352525, 0.764067, -0.540303,
		-0.869881, -0.480419, -0.111822,
		33.706604, 39.501171, 41.368500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786617, 40.416763, 41.501183>,  <34.315521, 39.837467, 41.446774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786617, 40.416763, 41.501183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604362, 40.066681, 41.566177>,  <33.495010, 39.856632, 41.605175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604362, 40.066681, 41.566177>,  <33.786617, 40.416763, 41.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604362, 40.066681, 41.566177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391374, 0.360908, 0.846505,
		-0.799513, 0.322105, -0.506978,
		-0.455636, -0.875210, 0.162487,
		33.467670, 39.804119, 41.614925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049156, 40.479969, 41.675148>,  <33.786617, 40.416763, 41.501183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049156, 40.479969, 41.675148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141914, 40.127235, 41.839386>,  <33.197571, 39.915596, 41.937927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141914, 40.127235, 41.839386>,  <33.049156, 40.479969, 41.675148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141914, 40.127235, 41.839386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467675, 0.269045, 0.841959,
		-0.852939, -0.387271, -0.350023,
		0.231894, -0.881837, 0.410596,
		33.211483, 39.862686, 41.962566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540298, 40.383343, 42.198975>,  <33.049156, 40.479969, 41.675148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540298, 40.383343, 42.198975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815269, 40.114304, 42.308556>,  <32.980251, 39.952881, 42.374302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815269, 40.114304, 42.308556>,  <32.540298, 40.383343, 42.198975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815269, 40.114304, 42.308556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358667, 0.013584, 0.933367,
		-0.631503, -0.739883, -0.231901,
		0.687432, -0.672599, 0.273950,
		33.021500, 39.912525, 42.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250202, 40.091095, 42.685314>,  <32.540298, 40.383343, 42.198975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250202, 40.091095, 42.685314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636944, 40.005806, 42.741489>,  <32.868988, 39.954632, 42.775196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636944, 40.005806, 42.741489>,  <32.250202, 40.091095, 42.685314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636944, 40.005806, 42.741489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127098, 0.075112, 0.989042,
		-0.221435, -0.974112, 0.045523,
		0.966857, -0.213223, 0.140440,
		32.927002, 39.941837, 42.783623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354282, 39.788757, 43.327648>,  <32.250202, 40.091095, 42.685314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354282, 39.788757, 43.327648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727570, 39.916012, 43.260853>,  <32.951542, 39.992367, 43.220776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727570, 39.916012, 43.260853>,  <32.354282, 39.788757, 43.327648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727570, 39.916012, 43.260853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160930, 0.045432, 0.985920,
		0.321247, -0.946955, -0.008800,
		0.933221, 0.318140, -0.166988,
		33.007538, 40.011456, 43.210754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752743, 39.431381, 43.694775>,  <32.354282, 39.788757, 43.327648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752743, 39.431381, 43.694775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970707, 39.763058, 43.644939>,  <33.101486, 39.962063, 43.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970707, 39.763058, 43.644939>,  <32.752743, 39.431381, 43.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970707, 39.763058, 43.644939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185627, 0.025601, 0.982287,
		0.817691, -0.558382, -0.139970,
		0.544908, 0.829189, -0.124584,
		33.134178, 40.011814, 43.607563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196976, 39.402157, 44.149693>,  <32.752743, 39.431381, 43.694775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196976, 39.402157, 44.149693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242432, 39.790646, 44.065971>,  <33.269707, 40.023739, 44.015739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242432, 39.790646, 44.065971>,  <33.196976, 39.402157, 44.149693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242432, 39.790646, 44.065971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115604, 0.196308, 0.973704,
		0.986774, -0.134846, -0.089969,
		0.113639, 0.971226, -0.209301,
		33.276524, 40.082012, 44.003181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820358, 39.576580, 44.514412>,  <33.196976, 39.402157, 44.149693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820358, 39.576580, 44.514412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583244, 39.894688, 44.463570>,  <33.440979, 40.085552, 44.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583244, 39.894688, 44.463570>,  <33.820358, 39.576580, 44.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583244, 39.894688, 44.463570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050923, 0.120499, 0.991407,
		0.803753, 0.594159, -0.030931,
		-0.592780, 0.795271, -0.127108,
		33.405411, 40.133270, 44.425438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100208, 39.908119, 44.952999>,  <33.820358, 39.576580, 44.514412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100208, 39.908119, 44.952999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751614, 40.092518, 44.886074>,  <33.542458, 40.203156, 44.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751614, 40.092518, 44.886074>,  <34.100208, 39.908119, 44.952999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751614, 40.092518, 44.886074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069229, 0.222113, 0.972560,
		0.485507, 0.859157, -0.161655,
		-0.871487, 0.460993, -0.167316,
		33.490166, 40.230816, 44.835880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236530, 40.513351, 45.279049>,  <34.100208, 39.908119, 44.952999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236530, 40.513351, 45.279049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842541, 40.447514, 45.258118>,  <33.606148, 40.408009, 45.245560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842541, 40.447514, 45.258118>,  <34.236530, 40.513351, 45.279049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842541, 40.447514, 45.258118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090800, 0.235762, 0.967560,
		-0.146921, 0.957770, -0.247164,
		-0.984972, -0.164597, -0.052327,
		33.547050, 40.398136, 45.242420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918243, 41.135422, 45.495766>,  <34.236530, 40.513351, 45.279049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918243, 41.135422, 45.495766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683334, 40.820835, 45.572266>,  <33.542389, 40.632084, 45.618168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683334, 40.820835, 45.572266>,  <33.918243, 41.135422, 45.495766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683334, 40.820835, 45.572266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094211, 0.301107, 0.948925,
		-0.803889, 0.539258, -0.250925,
		-0.587271, -0.786470, 0.191252,
		33.507153, 40.584892, 45.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513893, 41.479633, 45.967640>,  <33.918243, 41.135422, 45.495766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513893, 41.479633, 45.967640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407101, 41.096272, 46.007992>,  <33.343025, 40.866253, 46.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407101, 41.096272, 46.007992>,  <33.513893, 41.479633, 45.967640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407101, 41.096272, 46.007992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121203, 0.137243, 0.983094,
		-0.956050, 0.250240, -0.152803,
		-0.266981, -0.958407, 0.100881,
		33.327007, 40.808750, 46.038258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022243, 41.529160, 46.443054>,  <33.513893, 41.479633, 45.967640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022243, 41.529160, 46.443054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156048, 41.152405, 46.455360>,  <33.236328, 40.926350, 46.462746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156048, 41.152405, 46.455360>,  <33.022243, 41.529160, 46.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156048, 41.152405, 46.455360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003890, 0.031265, 0.999503,
		-0.942385, -0.334462, 0.006794,
		0.334509, -0.941890, 0.030764,
		33.256401, 40.869839, 46.464588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665756, 41.183407, 46.976765>,  <33.022243, 41.529160, 46.443054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665756, 41.183407, 46.976765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009392, 40.984253, 46.929321>,  <33.215572, 40.864761, 46.900856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009392, 40.984253, 46.929321>,  <32.665756, 41.183407, 46.976765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009392, 40.984253, 46.929321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124972, -0.020659, 0.991945,
		-0.496327, -0.866995, 0.044474,
		0.859094, -0.497888, -0.118604,
		33.267120, 40.834888, 46.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597900, 40.540497, 47.255245>,  <32.665756, 41.183407, 46.976765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597900, 40.540497, 47.255245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988068, 40.626617, 47.236504>,  <33.222168, 40.678291, 47.225258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988068, 40.626617, 47.236504>,  <32.597900, 40.540497, 47.255245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988068, 40.626617, 47.236504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123860, -0.359908, 0.924730,
		0.182236, -0.907805, -0.377730,
		0.975423, 0.215305, -0.046852,
		33.280693, 40.691208, 47.222446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880672, 40.136589, 47.668980>,  <32.597900, 40.540497, 47.255245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880672, 40.136589, 47.668980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197914, 40.372234, 47.607086>,  <33.388260, 40.513622, 47.569950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197914, 40.372234, 47.607086>,  <32.880672, 40.136589, 47.668980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197914, 40.372234, 47.607086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379474, -0.279201, 0.882069,
		0.476434, -0.758286, -0.444987,
		0.793101, 0.589109, -0.154729,
		33.435844, 40.548965, 47.560669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461857, 39.705303, 47.732922>,  <32.880672, 40.136589, 47.668980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461857, 39.705303, 47.732922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605328, 40.076401, 47.774181>,  <33.691410, 40.299061, 47.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605328, 40.076401, 47.774181>,  <33.461857, 39.705303, 47.732922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605328, 40.076401, 47.774181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548292, -0.298817, 0.781079,
		0.755463, -0.223604, -0.615855,
		0.358680, 0.927744, 0.103145,
		33.712933, 40.354725, 47.805126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253197, 39.674587, 47.726162>,  <33.461857, 39.705303, 47.732922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253197, 39.674587, 47.726162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145927, 40.005779, 47.923153>,  <34.081566, 40.204494, 48.041348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145927, 40.005779, 47.923153>,  <34.253197, 39.674587, 47.726162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145927, 40.005779, 47.923153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543716, -0.291914, 0.786866,
		0.795269, 0.478786, -0.371901,
		-0.268177, 0.827979, 0.492474,
		34.065475, 40.254173, 48.070896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891102, 39.981602, 48.057003>,  <34.253197, 39.674587, 47.726162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891102, 39.981602, 48.057003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563332, 40.114475, 48.243847>,  <34.366669, 40.194199, 48.355953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563332, 40.114475, 48.243847>,  <34.891102, 39.981602, 48.057003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563332, 40.114475, 48.243847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506365, 0.037690, 0.861495,
		0.268568, 0.942462, -0.199090,
		-0.819430, 0.332183, 0.467107,
		34.317501, 40.214130, 48.383980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199337, 40.034168, 48.726727>,  <34.891102, 39.981602, 48.057003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199337, 40.034168, 48.726727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814823, 40.124454, 48.789951>,  <34.584114, 40.178627, 48.827885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814823, 40.124454, 48.789951>,  <35.199337, 40.034168, 48.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814823, 40.124454, 48.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109174, -0.214704, 0.970558,
		0.253008, 0.950239, 0.181749,
		-0.961285, 0.225717, 0.158063,
		34.526436, 40.192169, 48.837372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166134, 40.459404, 49.273384>,  <35.199337, 40.034168, 48.726727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166134, 40.459404, 49.273384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790005, 40.323742, 49.262318>,  <34.564327, 40.242344, 49.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790005, 40.323742, 49.262318>,  <35.166134, 40.459404, 49.273384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790005, 40.323742, 49.262318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070283, -0.273118, 0.959410,
		-0.332940, 0.900213, 0.280657,
		-0.940325, -0.339151, -0.027662,
		34.507908, 40.221996, 49.254021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888824, 40.719990, 49.862358>,  <35.166134, 40.459404, 49.273384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888824, 40.719990, 49.862358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639839, 40.420120, 49.772446>,  <34.490448, 40.240196, 49.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639839, 40.420120, 49.772446>,  <34.888824, 40.719990, 49.862358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639839, 40.420120, 49.772446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004709, -0.283606, 0.958929,
		-0.782636, 0.597955, 0.173004,
		-0.622462, -0.749678, -0.224776,
		34.453102, 40.195217, 49.705013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137753, 40.765339, 50.124382>,  <34.888824, 40.719990, 49.862358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137753, 40.765339, 50.124382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262173, 40.385788, 50.102928>,  <34.336826, 40.158058, 50.090057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262173, 40.385788, 50.102928>,  <34.137753, 40.765339, 50.124382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262173, 40.385788, 50.102928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007518, -0.058885, 0.998236,
		-0.950364, -0.310098, -0.025450,
		0.311050, -0.948879, -0.053631,
		34.355488, 40.101124, 50.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821976, 40.278065, 50.664402>,  <34.137753, 40.765339, 50.124382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821976, 40.278065, 50.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151268, 40.070442, 50.572430>,  <34.348843, 39.945869, 50.517246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151268, 40.070442, 50.572430>,  <33.821976, 40.278065, 50.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151268, 40.070442, 50.572430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115835, -0.242922, 0.963105,
		-0.555760, -0.819494, -0.139857,
		0.823233, -0.519056, -0.229933,
		34.398239, 39.914726, 50.503448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873844, 39.512203, 50.758335>,  <33.821976, 40.278065, 50.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873844, 39.512203, 50.758335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207485, 39.719696, 50.833378>,  <34.407669, 39.844193, 50.878403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207485, 39.719696, 50.833378>,  <33.873844, 39.512203, 50.758335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207485, 39.719696, 50.833378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042796, -0.278231, 0.959560,
		0.549951, -0.808398, -0.209873,
		0.834100, 0.518730, 0.187610,
		34.457714, 39.875317, 50.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417442, 39.013699, 50.982338>,  <33.873844, 39.512203, 50.758335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417442, 39.013699, 50.982338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436466, 39.383877, 51.132690>,  <34.447880, 39.605984, 51.222900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436466, 39.383877, 51.132690>,  <34.417442, 39.013699, 50.982338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436466, 39.383877, 51.132690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230232, -0.376332, 0.897423,
		0.971973, 0.043857, -0.230967,
		0.047562, 0.925446, 0.375882,
		34.450733, 39.661510, 51.245457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012257, 39.064102, 51.288441>,  <34.417442, 39.013699, 50.982338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012257, 39.064102, 51.288441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790588, 39.336628, 51.479733>,  <34.657585, 39.500141, 51.594509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790588, 39.336628, 51.479733>,  <35.012257, 39.064102, 51.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790588, 39.336628, 51.479733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146273, -0.485875, 0.861702,
		0.819447, 0.547486, 0.169602,
		-0.554175, 0.681311, 0.478231,
		34.624336, 39.541019, 51.623203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635178, 39.449219, 50.843819>,  <35.012257, 39.064102, 51.288441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635178, 39.449219, 50.843819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695400, 39.355656, 51.228031>,  <35.731533, 39.299519, 51.458557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695400, 39.355656, 51.228031>,  <35.635178, 39.449219, 50.843819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695400, 39.355656, 51.228031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387213, -0.880024, -0.274998,
		0.909614, 0.413334, -0.041924,
		0.150560, -0.233909, 0.960530,
		35.740570, 39.285484, 51.516190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286541, 39.189426, 51.019089>,  <35.635178, 39.449219, 50.843819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286541, 39.189426, 51.019089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275219, 39.058479, 50.641300>,  <36.268425, 38.979912, 50.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275219, 39.058479, 50.641300>,  <36.286541, 39.189426, 51.019089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275219, 39.058479, 50.641300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258301, -0.915156, 0.309467,
		-0.965650, -0.235200, 0.110459,
		-0.028300, -0.327368, -0.944473,
		36.266727, 38.960270, 50.357960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808155, 38.641556, 51.053894>,  <36.286541, 39.189426, 51.019089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808155, 38.641556, 51.053894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100586, 38.628098, 50.781307>,  <36.276043, 38.620022, 50.617756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100586, 38.628098, 50.781307>,  <35.808155, 38.641556, 51.053894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100586, 38.628098, 50.781307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271055, -0.902263, 0.335338,
		-0.626145, -0.429872, -0.650502,
		0.731076, -0.033649, -0.681466,
		36.319908, 38.618004, 50.576866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561649, 37.937691, 51.125076>,  <35.808155, 38.641556, 51.053894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561649, 37.937691, 51.125076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602108, 38.142471, 50.783863>,  <35.626385, 38.265339, 50.579136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602108, 38.142471, 50.783863>,  <35.561649, 37.937691, 51.125076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602108, 38.142471, 50.783863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324088, -0.827619, -0.458273,
		-0.940604, -0.230107, -0.249629,
		0.101146, 0.511955, -0.853036,
		35.632450, 38.296059, 50.527950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867607, 37.888351, 51.179405>,  <35.561649, 37.937691, 51.125076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867607, 37.888351, 51.179405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476322, 37.805939, 51.169262>,  <34.241550, 37.756489, 51.163174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476322, 37.805939, 51.169262>,  <34.867607, 37.888351, 51.179405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476322, 37.805939, 51.169262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024410, 0.007166, -0.999676,
		0.206151, -0.978518, -0.001981,
		-0.978216, -0.206036, -0.025363,
		34.182858, 37.744129, 51.161652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600422, 37.194435, 50.967983>,  <34.867607, 37.888351, 51.179405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600422, 37.194435, 50.967983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365379, 37.503700, 50.872532>,  <34.224354, 37.689259, 50.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365379, 37.503700, 50.872532>,  <34.600422, 37.194435, 50.967983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365379, 37.503700, 50.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215577, -0.134659, -0.967157,
		-0.779903, -0.619747, -0.087550,
		-0.587604, 0.773163, -0.238624,
		34.189098, 37.735649, 50.800945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085529, 36.998848, 50.510788>,  <34.600422, 37.194435, 50.967983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085529, 36.998848, 50.510788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188347, 37.381901, 50.458839>,  <34.250038, 37.611732, 50.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188347, 37.381901, 50.458839>,  <34.085529, 36.998848, 50.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188347, 37.381901, 50.458839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041960, -0.145322, -0.988494,
		-0.965488, 0.248637, -0.077536,
		0.257044, 0.957633, -0.129874,
		34.265461, 37.669189, 50.419876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799686, 37.207703, 49.880478>,  <34.085529, 36.998848, 50.510788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799686, 37.207703, 49.880478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065590, 37.502045, 49.932034>,  <34.225132, 37.678650, 49.962967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065590, 37.502045, 49.932034>,  <33.799686, 37.207703, 49.880478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065590, 37.502045, 49.932034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170403, 0.018629, -0.985198,
		-0.727366, 0.676881, -0.113008,
		0.664757, 0.735856, 0.128893,
		34.265018, 37.722801, 49.970703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624859, 37.817627, 49.450848>,  <33.799686, 37.207703, 49.880478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624859, 37.817627, 49.450848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018860, 37.811951, 49.519638>,  <34.255260, 37.808544, 49.560913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018860, 37.811951, 49.519638>,  <33.624859, 37.817627, 49.450848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018860, 37.811951, 49.519638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172515, 0.058301, -0.983280,
		0.003923, 0.998198, 0.059874,
		0.984999, -0.014187, 0.171976,
		34.314358, 37.807693, 49.571232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799629, 38.175125, 48.937439>,  <33.624859, 37.817627, 49.450848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799629, 38.175125, 48.937439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142479, 38.023922, 49.077412>,  <34.348190, 37.933201, 49.161396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142479, 38.023922, 49.077412>,  <33.799629, 38.175125, 48.937439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142479, 38.023922, 49.077412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366813, -0.029026, -0.929842,
		0.361642, 0.925348, 0.113779,
		0.857125, -0.378006, 0.349927,
		34.399616, 37.910519, 49.182388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337387, 38.501694, 48.632782>,  <33.799629, 38.175125, 48.937439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337387, 38.501694, 48.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510487, 38.161118, 48.751297>,  <34.614346, 37.956772, 48.822407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510487, 38.161118, 48.751297>,  <34.337387, 38.501694, 48.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510487, 38.161118, 48.751297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413301, -0.104708, -0.904554,
		0.801194, 0.513900, 0.306587,
		0.432748, -0.851436, 0.296287,
		34.640312, 37.905685, 48.840183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089058, 38.528095, 48.634602>,  <34.337387, 38.501694, 48.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089058, 38.528095, 48.634602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998367, 38.139141, 48.612480>,  <34.943954, 37.905769, 48.599209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998367, 38.139141, 48.612480>,  <35.089058, 38.528095, 48.634602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998367, 38.139141, 48.612480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490064, -0.064831, -0.869272,
		0.841684, -0.224187, 0.491231,
		-0.226726, -0.972387, -0.055299,
		34.930351, 37.847424, 48.595890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743420, 38.123169, 48.560219>,  <35.089058, 38.528095, 48.634602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743420, 38.123169, 48.560219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473682, 37.872017, 48.404770>,  <35.311840, 37.721325, 48.311501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473682, 37.872017, 48.404770>,  <35.743420, 38.123169, 48.560219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473682, 37.872017, 48.404770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542325, -0.063942, -0.837732,
		0.501145, -0.775680, 0.383633,
		-0.674342, -0.627879, -0.388627,
		35.271381, 37.683655, 48.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107433, 37.680264, 48.267090>,  <35.743420, 38.123169, 48.560219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107433, 37.680264, 48.267090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747746, 37.617756, 48.103630>,  <35.531933, 37.580254, 48.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747746, 37.617756, 48.103630>,  <36.107433, 37.680264, 48.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747746, 37.617756, 48.103630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436424, -0.254757, -0.862921,
		0.030739, -0.954296, 0.297280,
		-0.899216, -0.156265, -0.408647,
		35.477982, 37.570877, 47.981037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195961, 37.045643, 47.968418>,  <36.107433, 37.680264, 48.267090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195961, 37.045643, 47.968418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879353, 37.239635, 47.819672>,  <35.689388, 37.356030, 47.730423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879353, 37.239635, 47.819672>,  <36.195961, 37.045643, 47.968418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879353, 37.239635, 47.819672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217006, -0.345783, -0.912876,
		-0.571312, -0.803260, 0.168452,
		-0.791525, 0.484982, -0.371863,
		35.641895, 37.385132, 47.708115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850685, 36.656944, 47.374157>,  <36.195961, 37.045643, 47.968418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850685, 36.656944, 47.374157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714558, 37.026196, 47.302578>,  <35.632881, 37.247746, 47.259632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714558, 37.026196, 47.302578>,  <35.850685, 36.656944, 47.374157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714558, 37.026196, 47.302578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148366, -0.135207, -0.979646,
		-0.928532, -0.359941, -0.090948,
		-0.340318, 0.923126, -0.178947,
		35.612461, 37.303135, 47.248894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486698, 36.559292, 46.798515>,  <35.850685, 36.656944, 47.374157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486698, 36.559292, 46.798515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542053, 36.953949, 46.832897>,  <35.575264, 37.190742, 46.853527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542053, 36.953949, 46.832897>,  <35.486698, 36.559292, 46.798515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542053, 36.953949, 46.832897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111942, 0.070655, -0.991200,
		-0.984032, 0.146788, -0.100669,
		0.138384, 0.986641, 0.085958,
		35.583569, 37.249943, 46.858685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128464, 36.770809, 46.263748>,  <35.486698, 36.559292, 46.798515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128464, 36.770809, 46.263748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368927, 37.071354, 46.372608>,  <35.513206, 37.251678, 46.437923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368927, 37.071354, 46.372608>,  <35.128464, 36.770809, 46.263748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368927, 37.071354, 46.372608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231857, 0.161922, -0.959179,
		-0.764755, 0.639720, -0.076866,
		0.601160, 0.751358, 0.272154,
		35.549274, 37.296761, 46.454254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978577, 37.302357, 45.749775>,  <35.128464, 36.770809, 46.263748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978577, 37.302357, 45.749775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333389, 37.410011, 45.899837>,  <35.546276, 37.474606, 45.989876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333389, 37.410011, 45.899837>,  <34.978577, 37.302357, 45.749775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333389, 37.410011, 45.899837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373530, 0.059292, -0.925721,
		-0.271389, 0.961275, -0.047937,
		0.887031, 0.269137, 0.375156,
		35.599499, 37.490753, 46.012383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103584, 37.955132, 45.494659>,  <34.978577, 37.302357, 45.749775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103584, 37.955132, 45.494659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452496, 37.793205, 45.604385>,  <35.661842, 37.696049, 45.670219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452496, 37.793205, 45.604385>,  <35.103584, 37.955132, 45.494659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452496, 37.793205, 45.604385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340303, 0.099682, -0.935017,
		0.351166, 0.908949, 0.224711,
		0.872282, -0.404816, 0.274313,
		35.714180, 37.671761, 45.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643936, 38.329681, 45.127045>,  <35.103584, 37.955132, 45.494659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643936, 38.329681, 45.127045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848572, 38.001251, 45.228325>,  <35.971352, 37.804192, 45.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848572, 38.001251, 45.228325>,  <35.643936, 38.329681, 45.127045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848572, 38.001251, 45.228325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505893, 0.049642, -0.861167,
		0.694513, 0.568658, 0.440772,
		0.511590, -0.821075, 0.253203,
		36.002048, 37.754929, 45.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374149, 38.448368, 44.896133>,  <35.643936, 38.329681, 45.127045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374149, 38.448368, 44.896133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285782, 38.059582, 44.928307>,  <36.232761, 37.826309, 44.947609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285782, 38.059582, 44.928307>,  <36.374149, 38.448368, 44.896133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285782, 38.059582, 44.928307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438964, -0.172738, -0.881744,
		0.870923, -0.159484, 0.464821,
		-0.220916, -0.971970, 0.080433,
		36.219505, 37.767990, 44.952438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933815, 38.132225, 44.645367>,  <36.374149, 38.448368, 44.896133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933815, 38.132225, 44.645367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658653, 37.842197, 44.632309>,  <36.493557, 37.668182, 44.624474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658653, 37.842197, 44.632309>,  <36.933815, 38.132225, 44.645367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658653, 37.842197, 44.632309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410578, -0.351657, -0.841286,
		0.598513, -0.592124, 0.539603,
		-0.687901, -0.725070, -0.032642,
		36.452282, 37.624676, 44.622517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265915, 37.569729, 44.398369>,  <36.933815, 38.132225, 44.645367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265915, 37.569729, 44.398369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878445, 37.506493, 44.321774>,  <36.645962, 37.468552, 44.275814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878445, 37.506493, 44.321774>,  <37.265915, 37.569729, 44.398369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878445, 37.506493, 44.321774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239169, -0.386557, -0.890714,
		0.066795, -0.908614, 0.412261,
		-0.968678, -0.158096, -0.191492,
		36.587841, 37.459064, 44.264324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297100, 36.906399, 43.939415>,  <37.265915, 37.569729, 44.398369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297100, 36.906399, 43.939415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931843, 37.060753, 43.886871>,  <36.712688, 37.153366, 43.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931843, 37.060753, 43.886871>,  <37.297100, 36.906399, 43.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931843, 37.060753, 43.886871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040067, -0.405655, -0.913148,
		-0.405655, -0.828575, 0.385884,
		0.913148, -0.385884, 0.131358,
		36.657898, 37.176517, 43.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878376, 36.400387, 43.732059>,  <37.297100, 36.906399, 43.939415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878376, 36.400387, 43.732059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700874, 36.734673, 43.602654>,  <36.594372, 36.935246, 43.525009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700874, 36.734673, 43.602654>,  <36.878376, 36.400387, 43.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700874, 36.734673, 43.602654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036657, -0.343777, -0.938336,
		-0.895399, -0.428248, 0.121917,
		-0.443753, 0.835716, -0.323515,
		36.567749, 36.985386, 43.505600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392128, 36.122570, 43.479923>,  <36.878376, 36.400387, 43.732059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392128, 36.122570, 43.479923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395592, 36.481827, 43.304077>,  <36.397671, 36.697380, 43.198570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395592, 36.481827, 43.304077>,  <36.392128, 36.122570, 43.479923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395592, 36.481827, 43.304077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149051, -0.433562, -0.888711,
		-0.988792, 0.073218, 0.130117,
		0.008656, 0.898144, -0.439615,
		36.398190, 36.751270, 43.172192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114216, 36.038498, 42.847198>,  <36.392128, 36.122570, 43.479923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114216, 36.038498, 42.847198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239746, 36.408855, 42.763069>,  <36.315063, 36.631069, 42.712593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239746, 36.408855, 42.763069>,  <36.114216, 36.038498, 42.847198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239746, 36.408855, 42.763069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110975, -0.184223, -0.976599,
		-0.942972, 0.329824, 0.044937,
		0.313827, 0.925893, -0.210319,
		36.333893, 36.686623, 42.699974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667774, 36.369209, 42.358971>,  <36.114216, 36.038498, 42.847198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667774, 36.369209, 42.358971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009228, 36.568756, 42.299042>,  <36.214100, 36.688484, 42.263084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009228, 36.568756, 42.299042>,  <35.667774, 36.369209, 42.358971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009228, 36.568756, 42.299042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015955, -0.262455, -0.964812,
		-0.520631, 0.825986, -0.216081,
		0.853633, 0.498863, -0.149820,
		36.265316, 36.718414, 42.254097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621597, 36.773018, 41.804527>,  <35.667774, 36.369209, 42.358971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621597, 36.773018, 41.804527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011612, 36.691090, 41.838802>,  <36.245621, 36.641933, 41.859367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011612, 36.691090, 41.838802>,  <35.621597, 36.773018, 41.804527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011612, 36.691090, 41.838802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025836, -0.278639, -0.960048,
		0.220518, 0.938300, -0.266393,
		0.975041, -0.204825, 0.085687,
		36.304123, 36.629642, 41.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858170, 36.966640, 41.166931>,  <35.621597, 36.773018, 41.804527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858170, 36.966640, 41.166931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153515, 36.747009, 41.323566>,  <36.330723, 36.615231, 41.417545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153515, 36.747009, 41.323566>,  <35.858170, 36.966640, 41.166931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153515, 36.747009, 41.323566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231003, -0.339601, -0.911761,
		0.633612, 0.763664, -0.123908,
		0.738359, -0.549080, 0.391584,
		36.375023, 36.582287, 41.441040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433125, 36.996410, 40.676125>,  <35.858170, 36.966640, 41.166931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433125, 36.996410, 40.676125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512466, 36.683002, 40.911667>,  <36.560070, 36.494957, 41.052994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512466, 36.683002, 40.911667>,  <36.433125, 36.996410, 40.676125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512466, 36.683002, 40.911667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157765, -0.567437, -0.808162,
		0.967350, 0.253203, 0.011058,
		0.198354, -0.783520, 0.588856,
		36.571972, 36.447945, 41.088326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047520, 36.706333, 40.479984>,  <36.433125, 36.996410, 40.676125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047520, 36.706333, 40.479984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900459, 36.394375, 40.682606>,  <36.812222, 36.207199, 40.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900459, 36.394375, 40.682606>,  <37.047520, 36.706333, 40.479984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900459, 36.394375, 40.682606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265211, -0.610009, -0.746694,
		0.891344, -0.140182, 0.431109,
		-0.367653, -0.779896, 0.506550,
		36.790165, 36.160404, 40.834572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532940, 36.169086, 40.472057>,  <37.047520, 36.706333, 40.479984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532940, 36.169086, 40.472057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171158, 36.005356, 40.520081>,  <36.954090, 35.907116, 40.548893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171158, 36.005356, 40.520081>,  <37.532940, 36.169086, 40.472057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171158, 36.005356, 40.520081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202451, -0.659631, -0.723810,
		0.375465, -0.630349, 0.679475,
		-0.904455, -0.409326, 0.120054,
		36.899822, 35.882557, 40.556095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722557, 35.466511, 40.543560>,  <37.532940, 36.169086, 40.472057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722557, 35.466511, 40.543560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345692, 35.510445, 40.416901>,  <37.119572, 35.536804, 40.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345692, 35.510445, 40.416901>,  <37.722557, 35.466511, 40.543560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345692, 35.510445, 40.416901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205974, -0.555546, -0.805570,
		-0.264392, -0.824199, 0.500791,
		-0.942163, 0.109837, -0.316645,
		37.063042, 35.543396, 40.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627888, 34.935863, 40.091476>,  <37.722557, 35.466511, 40.543560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627888, 34.935863, 40.091476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296207, 35.132652, 39.985348>,  <37.097198, 35.250725, 39.921669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296207, 35.132652, 39.985348>,  <37.627888, 34.935863, 40.091476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296207, 35.132652, 39.985348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064983, -0.386606, -0.919953,
		-0.555168, -0.780063, 0.288602,
		-0.829196, 0.491974, -0.265322,
		37.047447, 35.280243, 39.905750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173763, 34.429279, 39.626705>,  <37.627888, 34.935863, 40.091476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173763, 34.429279, 39.626705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938442, 34.743450, 39.549759>,  <36.797249, 34.931953, 39.503590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938442, 34.743450, 39.549759>,  <37.173763, 34.429279, 39.626705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938442, 34.743450, 39.549759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044847, -0.269215, -0.962035,
		-0.807397, -0.557339, 0.193604,
		-0.588301, 0.785427, -0.192368,
		36.761951, 34.979076, 39.492050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489262, 34.201477, 39.384010>,  <37.173763, 34.429279, 39.626705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489262, 34.201477, 39.384010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559849, 34.571812, 39.250332>,  <36.602200, 34.794014, 39.170124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559849, 34.571812, 39.250332>,  <36.489262, 34.201477, 39.384010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559849, 34.571812, 39.250332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079876, -0.324935, -0.942357,
		-0.981061, 0.192988, 0.016612,
		0.176466, 0.925836, -0.334196,
		36.612789, 34.849564, 39.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149303, 34.278854, 38.696144>,  <36.489262, 34.201477, 39.384010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149303, 34.278854, 38.696144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396652, 34.593208, 38.695805>,  <36.545063, 34.781822, 38.695602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396652, 34.593208, 38.695805>,  <36.149303, 34.278854, 38.696144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396652, 34.593208, 38.695805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159347, -0.126438, -0.979092,
		-0.769560, 0.605310, -0.203414,
		0.618373, 0.785884, -0.000847,
		36.582165, 34.828972, 38.695549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960442, 34.779308, 38.063217>,  <36.149303, 34.278854, 38.696144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960442, 34.779308, 38.063217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348240, 34.833641, 38.144833>,  <36.580917, 34.866241, 38.193802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348240, 34.833641, 38.144833>,  <35.960442, 34.779308, 38.063217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348240, 34.833641, 38.144833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205241, 0.005232, -0.978697,
		-0.134002, 0.990719, -0.022805,
		0.969494, 0.135828, 0.204038,
		36.639088, 34.874390, 38.206043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151730, 35.032734, 37.505863>,  <35.960442, 34.779308, 38.063217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151730, 35.032734, 37.505863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502430, 34.970848, 37.688015>,  <36.712849, 34.933716, 37.797306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502430, 34.970848, 37.688015>,  <36.151730, 35.032734, 37.505863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502430, 34.970848, 37.688015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422553, -0.204392, -0.882991,
		0.229688, 0.966585, -0.113826,
		0.876751, -0.154715, 0.455380,
		36.765457, 34.924435, 37.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640060, 35.428493, 37.180676>,  <36.151730, 35.032734, 37.505863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640060, 35.428493, 37.180676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830723, 35.122543, 37.354008>,  <36.945118, 34.938972, 37.458008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830723, 35.122543, 37.354008>,  <36.640060, 35.428493, 37.180676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830723, 35.122543, 37.354008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468555, -0.196029, -0.861411,
		0.743813, 0.613633, 0.264946,
		0.476653, -0.764871, 0.433330,
		36.973721, 34.893082, 37.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318825, 35.468079, 36.924641>,  <36.640060, 35.428493, 37.180676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318825, 35.468079, 36.924641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358082, 35.103420, 37.084274>,  <37.381638, 34.884624, 37.180054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358082, 35.103420, 37.084274>,  <37.318825, 35.468079, 36.924641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358082, 35.103420, 37.084274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361127, -0.341060, -0.867908,
		0.927338, 0.229298, 0.295748,
		0.098142, -0.911647, 0.399084,
		37.387524, 34.829926, 37.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058117, 35.182182, 36.727409>,  <37.318825, 35.468079, 36.924641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058117, 35.182182, 36.727409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807858, 34.882343, 36.813820>,  <37.657700, 34.702438, 36.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807858, 34.882343, 36.813820>,  <38.058117, 35.182182, 36.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807858, 34.882343, 36.813820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215342, -0.432112, -0.875732,
		0.749793, -0.501383, 0.431771,
		-0.625650, -0.749596, 0.216026,
		37.620163, 34.657463, 36.878628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493118, 34.589146, 36.722397>,  <38.058117, 35.182182, 36.727409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493118, 34.589146, 36.722397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115761, 34.480556, 36.646183>,  <37.889347, 34.415405, 36.600456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115761, 34.480556, 36.646183>,  <38.493118, 34.589146, 36.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115761, 34.480556, 36.646183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283536, -0.362091, -0.887974,
		0.172068, -0.891737, 0.418567,
		-0.943398, -0.271471, -0.190535,
		37.832741, 34.399117, 36.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872398, 34.280640, 37.287365>,  <38.493118, 34.589146, 36.722397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872398, 34.280640, 37.287365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250069, 34.270893, 37.418781>,  <39.476669, 34.265045, 37.497631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250069, 34.270893, 37.418781>,  <38.872398, 34.280640, 37.287365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250069, 34.270893, 37.418781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281223, 0.459845, 0.842292,
		-0.171600, -0.887665, 0.427323,
		0.944175, -0.024364, 0.328541,
		39.533321, 34.263584, 37.517345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869667, 34.063557, 37.956383>,  <38.872398, 34.280640, 37.287365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869667, 34.063557, 37.956383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234959, 34.222786, 37.991154>,  <39.454132, 34.318325, 38.012016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234959, 34.222786, 37.991154>,  <38.869667, 34.063557, 37.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234959, 34.222786, 37.991154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207487, 0.270724, 0.940031,
		0.350674, -0.876494, 0.329828,
		0.913224, 0.398079, 0.086925,
		39.508926, 34.342209, 38.017231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018467, 33.914284, 38.679539>,  <38.869667, 34.063557, 37.956383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018467, 33.914284, 38.679539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268543, 34.192554, 38.538025>,  <39.418591, 34.359516, 38.453117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268543, 34.192554, 38.538025>,  <39.018467, 33.914284, 38.679539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268543, 34.192554, 38.538025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066106, 0.498871, 0.864151,
		0.777669, -0.516870, 0.357878,
		0.625189, 0.695681, -0.353788,
		39.456100, 34.401260, 38.431889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655899, 33.969658, 39.135414>,  <39.018467, 33.914284, 38.679539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655899, 33.969658, 39.135414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608589, 34.330177, 38.968719>,  <39.580204, 34.546490, 38.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608589, 34.330177, 38.968719>,  <39.655899, 33.969658, 39.135414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608589, 34.330177, 38.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006491, 0.420377, 0.907327,
		0.992959, 0.104611, -0.055571,
		-0.118277, 0.901299, -0.416738,
		39.573105, 34.600567, 38.843697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188206, 34.328232, 39.337227>,  <39.655899, 33.969658, 39.135414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188206, 34.328232, 39.337227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915485, 34.594070, 39.214947>,  <39.751854, 34.753574, 39.141579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915485, 34.594070, 39.214947>,  <40.188206, 34.328232, 39.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915485, 34.594070, 39.214947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208942, 0.577396, 0.789277,
		0.701061, 0.474259, -0.532533,
		-0.681804, 0.664599, -0.305697,
		39.710945, 34.793449, 39.123238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421280, 34.992329, 39.571358>,  <40.188206, 34.328232, 39.337227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421280, 34.992329, 39.571358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044811, 35.084476, 39.472469>,  <39.818928, 35.139767, 39.413136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044811, 35.084476, 39.472469>,  <40.421280, 34.992329, 39.571358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044811, 35.084476, 39.472469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066076, 0.592013, 0.803215,
		0.331395, 0.772302, -0.541966,
		-0.941176, 0.230370, -0.247220,
		39.762459, 35.153587, 39.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435509, 35.749859, 39.549557>,  <40.421280, 34.992329, 39.571358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435509, 35.749859, 39.549557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058605, 35.626217, 39.601105>,  <39.832462, 35.552032, 39.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058605, 35.626217, 39.601105>,  <40.435509, 35.749859, 39.549557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058605, 35.626217, 39.601105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082016, 0.586085, 0.806088,
		-0.324700, 0.748970, -0.577593,
		-0.942255, -0.309109, 0.128874,
		39.775928, 35.533485, 39.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938557, 36.368725, 39.482540>,  <40.435509, 35.749859, 39.549557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938557, 36.368725, 39.482540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767239, 36.074959, 39.693138>,  <39.664448, 35.898701, 39.819496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767239, 36.074959, 39.693138>,  <39.938557, 36.368725, 39.482540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767239, 36.074959, 39.693138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100998, 0.617894, 0.779747,
		-0.897976, 0.280789, -0.338817,
		-0.428298, -0.734414, 0.526495,
		39.638748, 35.854633, 39.851086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423798, 36.681892, 40.026566>,  <39.938557, 36.368725, 39.482540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423798, 36.681892, 40.026566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527618, 36.324932, 40.174217>,  <39.589909, 36.110756, 40.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527618, 36.324932, 40.174217>,  <39.423798, 36.681892, 40.026566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527618, 36.324932, 40.174217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071241, 0.363497, 0.928867,
		-0.963099, -0.267384, 0.030770,
		0.259549, -0.892399, 0.369132,
		39.605484, 36.057213, 40.284958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156025, 36.814251, 40.601669>,  <39.423798, 36.681892, 40.026566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156025, 36.814251, 40.601669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352905, 36.470081, 40.654449>,  <39.471035, 36.263580, 40.686115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352905, 36.470081, 40.654449>,  <39.156025, 36.814251, 40.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352905, 36.470081, 40.654449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107064, 0.090592, 0.990116,
		-0.863873, -0.501462, -0.047531,
		0.492200, -0.860424, 0.131948,
		39.500565, 36.211956, 40.694035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769337, 36.524952, 41.110050>,  <39.156025, 36.814251, 40.601669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769337, 36.524952, 41.110050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131821, 36.355999, 41.102287>,  <39.349312, 36.254627, 41.097630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131821, 36.355999, 41.102287>,  <38.769337, 36.524952, 41.110050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131821, 36.355999, 41.102287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033374, 0.025700, 0.999112,
		-0.421508, -0.906054, 0.037387,
		0.906210, -0.422381, -0.019406,
		39.403683, 36.229286, 41.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632999, 36.039215, 41.608742>,  <38.769337, 36.524952, 41.110050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632999, 36.039215, 41.608742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026562, 36.047287, 41.537720>,  <39.262699, 36.052132, 41.495106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026562, 36.047287, 41.537720>,  <38.632999, 36.039215, 41.608742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026562, 36.047287, 41.537720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178417, -0.055283, 0.982401,
		0.010012, -0.998267, -0.057994,
		0.983904, 0.020183, -0.177554,
		39.321732, 36.053341, 41.484455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822910, 35.468800, 41.779179>,  <38.632999, 36.039215, 41.608742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822910, 35.468800, 41.779179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149845, 35.698032, 41.802967>,  <39.346004, 35.835571, 41.817238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149845, 35.698032, 41.802967>,  <38.822910, 35.468800, 41.779179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149845, 35.698032, 41.802967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070538, -0.201967, 0.976849,
		0.571828, -0.794219, -0.205499,
		0.817335, 0.573085, 0.059468,
		39.395046, 35.869957, 41.820808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294781, 35.113472, 42.226936>,  <38.822910, 35.468800, 41.779179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294781, 35.113472, 42.226936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371609, 35.505959, 42.234074>,  <39.417706, 35.741451, 42.238358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371609, 35.505959, 42.234074>,  <39.294781, 35.113472, 42.226936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371609, 35.505959, 42.234074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115099, 0.004466, 0.993344,
		0.974609, -0.192844, 0.113796,
		0.192069, 0.981219, 0.017844,
		39.429230, 35.800323, 42.239426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737240, 35.198051, 42.781658>,  <39.294781, 35.113472, 42.226936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737240, 35.198051, 42.781658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590916, 35.565636, 42.722733>,  <39.503120, 35.786186, 42.687378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590916, 35.565636, 42.722733>,  <39.737240, 35.198051, 42.781658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590916, 35.565636, 42.722733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224348, 0.066553, 0.972234,
		0.903245, 0.388702, 0.181820,
		-0.365808, 0.918957, -0.147319,
		39.481174, 35.841324, 42.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075569, 35.639561, 43.288174>,  <39.737240, 35.198051, 42.781658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075569, 35.639561, 43.288174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739334, 35.828949, 43.182919>,  <39.537594, 35.942581, 43.119766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739334, 35.828949, 43.182919>,  <40.075569, 35.639561, 43.288174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739334, 35.828949, 43.182919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162828, 0.242445, 0.956403,
		0.516628, 0.846783, -0.126701,
		-0.840584, 0.473475, -0.263134,
		39.487160, 35.970993, 43.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112179, 36.364044, 43.560501>,  <40.075569, 35.639561, 43.288174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112179, 36.364044, 43.560501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724907, 36.298386, 43.484943>,  <39.492542, 36.258991, 43.439610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724907, 36.298386, 43.484943>,  <40.112179, 36.364044, 43.560501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724907, 36.298386, 43.484943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245790, 0.481840, 0.841081,
		-0.047047, 0.860747, -0.506855,
		-0.968181, -0.164150, -0.188894,
		39.434452, 36.249142, 43.428276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803028, 37.037186, 43.755066>,  <40.112179, 36.364044, 43.560501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803028, 37.037186, 43.755066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497959, 36.778511, 43.750710>,  <39.314919, 36.623306, 43.748096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497959, 36.778511, 43.750710>,  <39.803028, 37.037186, 43.755066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497959, 36.778511, 43.750710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264770, 0.296799, 0.917501,
		-0.590105, 0.702639, -0.397585,
		-0.762674, -0.646691, -0.010895,
		39.269157, 36.584503, 43.747440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325310, 37.387035, 44.107613>,  <39.803028, 37.037186, 43.755066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325310, 37.387035, 44.107613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197868, 37.007896, 44.104305>,  <39.121403, 36.780411, 44.102322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197868, 37.007896, 44.104305>,  <39.325310, 37.387035, 44.107613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197868, 37.007896, 44.104305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344683, 0.107728, 0.932517,
		-0.882996, 0.299957, -0.361031,
		-0.318608, -0.947851, -0.008267,
		39.102287, 36.723541, 44.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550648, 37.393322, 44.298252>,  <39.325310, 37.387035, 44.107613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550648, 37.393322, 44.298252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685917, 37.022530, 44.363178>,  <38.767078, 36.800053, 44.402134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685917, 37.022530, 44.363178>,  <38.550648, 37.393322, 44.298252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685917, 37.022530, 44.363178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327858, 0.045624, 0.943625,
		-0.882129, -0.372320, -0.288490,
		0.338168, -0.926982, 0.162314,
		38.787369, 36.744434, 44.411873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968071, 37.101421, 44.546204>,  <38.550648, 37.393322, 44.298252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968071, 37.101421, 44.546204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300446, 36.906361, 44.653339>,  <38.499870, 36.789326, 44.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300446, 36.906361, 44.653339>,  <37.968071, 37.101421, 44.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300446, 36.906361, 44.653339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309620, -0.005329, 0.950845,
		-0.462251, -0.873024, -0.155414,
		0.830939, -0.487648, 0.267843,
		38.549728, 36.760067, 44.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723953, 36.628914, 44.963631>,  <37.968071, 37.101421, 44.546204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723953, 36.628914, 44.963631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113167, 36.640652, 45.055153>,  <38.346695, 36.647694, 45.110065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113167, 36.640652, 45.055153>,  <37.723953, 36.628914, 44.963631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113167, 36.640652, 45.055153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228207, -0.022305, 0.973357,
		0.033663, -0.999321, -0.015008,
		0.973031, 0.029341, 0.228803,
		38.405075, 36.649456, 45.123795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731941, 36.240055, 45.571785>,  <37.723953, 36.628914, 44.963631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731941, 36.240055, 45.571785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076717, 36.442474, 45.584274>,  <38.283585, 36.563927, 45.591770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076717, 36.442474, 45.584274>,  <37.731941, 36.240055, 45.571785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076717, 36.442474, 45.584274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044318, 0.013845, 0.998922,
		0.505070, -0.862394, 0.034360,
		0.861940, 0.506048, 0.031227,
		38.335300, 36.594288, 45.593643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128540, 35.942142, 46.173183>,  <37.731941, 36.240055, 45.571785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128540, 35.942142, 46.173183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316792, 36.286137, 46.094246>,  <38.429741, 36.492531, 46.046883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316792, 36.286137, 46.094246>,  <38.128540, 35.942142, 46.173183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316792, 36.286137, 46.094246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087483, 0.268035, 0.959429,
		0.877985, -0.434269, 0.201379,
		0.470626, 0.859981, -0.197339,
		38.457981, 36.544132, 46.035046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559425, 35.998478, 46.740570>,  <38.128540, 35.942142, 46.173183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559425, 35.998478, 46.740570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495728, 36.361069, 46.584141>,  <38.457508, 36.578625, 46.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495728, 36.361069, 46.584141>,  <38.559425, 35.998478, 46.740570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495728, 36.361069, 46.584141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107340, 0.377882, 0.919611,
		0.981387, 0.188418, 0.037127,
		-0.159242, 0.906479, -0.391073,
		38.447956, 36.633011, 46.466820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763058, 36.395287, 47.297974>,  <38.559425, 35.998478, 46.740570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763058, 36.395287, 47.297974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526939, 36.637810, 47.084831>,  <38.385269, 36.783325, 46.956944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526939, 36.637810, 47.084831>,  <38.763058, 36.395287, 47.297974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526939, 36.637810, 47.084831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266605, 0.476646, 0.837693,
		0.761889, 0.636548, -0.119715,
		-0.590294, 0.606313, -0.532858,
		38.349850, 36.819702, 46.924973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023476, 37.085617, 47.411140>,  <38.763058, 36.395287, 47.297974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023476, 37.085617, 47.411140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642647, 37.105808, 47.290470>,  <38.414150, 37.117924, 47.218067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642647, 37.105808, 47.290470>,  <39.023476, 37.085617, 47.411140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642647, 37.105808, 47.290470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222995, 0.560525, 0.797549,
		0.209353, 0.826598, -0.522406,
		-0.952074, 0.050475, -0.301675,
		38.357025, 37.120953, 47.199966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893459, 37.768574, 47.489048>,  <39.023476, 37.085617, 47.411140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893459, 37.768574, 47.489048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532558, 37.602886, 47.441120>,  <38.316017, 37.503475, 47.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532558, 37.602886, 47.441120>,  <38.893459, 37.768574, 47.489048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532558, 37.602886, 47.441120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382771, 0.641436, 0.664866,
		-0.198542, 0.645743, -0.737290,
		-0.902257, -0.414217, -0.119820,
		38.261883, 37.478622, 47.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514496, 38.230488, 47.103916>,  <38.893459, 37.768574, 47.489048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514496, 38.230488, 47.103916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263199, 37.993561, 47.305698>,  <38.112419, 37.851406, 47.426765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263199, 37.993561, 47.305698>,  <38.514496, 38.230488, 47.103916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263199, 37.993561, 47.305698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389325, 0.800704, 0.455301,
		-0.673599, 0.089645, -0.733641,
		-0.628244, -0.592315, 0.504452,
		38.074726, 37.815865, 47.457035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836510, 38.554806, 47.062977>,  <38.514496, 38.230488, 47.103916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836510, 38.554806, 47.062977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816090, 38.319485, 47.385788>,  <37.803837, 38.178291, 47.579475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816090, 38.319485, 47.385788>,  <37.836510, 38.554806, 47.062977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816090, 38.319485, 47.385788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439105, 0.739004, 0.510941,
		-0.896985, -0.328287, -0.296052,
		-0.051048, -0.588304, 0.807027,
		37.800774, 38.142994, 47.627895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252583, 38.857883, 47.400616>,  <37.836510, 38.554806, 47.062977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252583, 38.857883, 47.400616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435719, 38.639042, 47.680920>,  <37.545601, 38.507736, 47.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435719, 38.639042, 47.680920>,  <37.252583, 38.857883, 47.400616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435719, 38.639042, 47.680920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373141, 0.597178, 0.710032,
		-0.806939, -0.586559, 0.069262,
		0.457837, -0.547108, 0.700755,
		37.573071, 38.474911, 47.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739796, 38.953598, 47.989491>,  <37.252583, 38.857883, 47.400616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739796, 38.953598, 47.989491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085293, 38.840050, 48.156036>,  <37.292591, 38.771923, 48.255966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085293, 38.840050, 48.156036>,  <36.739796, 38.953598, 47.989491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085293, 38.840050, 48.156036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282204, 0.412059, 0.866353,
		-0.417498, -0.865810, 0.275806,
		0.863746, -0.283867, 0.416369,
		37.344418, 38.754890, 48.280949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588116, 38.766106, 48.696342>,  <36.739796, 38.953598, 47.989491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588116, 38.766106, 48.696342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985405, 38.812435, 48.700249>,  <37.223778, 38.840233, 48.702595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985405, 38.812435, 48.700249>,  <36.588116, 38.766106, 48.696342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985405, 38.812435, 48.700249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049187, 0.342680, 0.938164,
		0.105311, -0.932286, 0.346054,
		0.993222, 0.115820, 0.009769,
		37.283371, 38.847183, 48.703178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858017, 38.397495, 49.315228>,  <36.588116, 38.766106, 48.696342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858017, 38.397495, 49.315228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121651, 38.678883, 49.208839>,  <37.279831, 38.847713, 49.145008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121651, 38.678883, 49.208839>,  <36.858017, 38.397495, 49.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121651, 38.678883, 49.208839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053380, 0.396516, 0.916475,
		0.750174, -0.589835, 0.298888,
		0.659083, 0.703469, -0.265971,
		37.319374, 38.889923, 49.129047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262215, 38.497673, 49.972572>,  <36.858017, 38.397495, 49.315228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262215, 38.497673, 49.972572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336411, 38.808662, 49.732197>,  <37.380928, 38.995255, 49.587971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336411, 38.808662, 49.732197>,  <37.262215, 38.497673, 49.972572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336411, 38.808662, 49.732197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045492, 0.617695, 0.785101,
		0.981593, -0.118290, 0.149945,
		0.185490, 0.777471, -0.600944,
		37.392059, 39.041904, 49.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867115, 38.960495, 50.256882>,  <37.262215, 38.497673, 49.972572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867115, 38.960495, 50.256882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665520, 39.197952, 50.005939>,  <37.544563, 39.340427, 49.855373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665520, 39.197952, 50.005939>,  <37.867115, 38.960495, 50.256882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665520, 39.197952, 50.005939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084787, 0.688842, 0.719936,
		0.859538, 0.416032, -0.296836,
		-0.503990, 0.593644, -0.627360,
		37.514324, 39.376045, 49.817730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214916, 39.510269, 50.250172>,  <37.867115, 38.960495, 50.256882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214916, 39.510269, 50.250172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862225, 39.636368, 50.109783>,  <37.650612, 39.712029, 50.025551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862225, 39.636368, 50.109783>,  <38.214916, 39.510269, 50.250172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862225, 39.636368, 50.109783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029005, 0.706319, 0.707299,
		0.470868, 0.633824, -0.613637,
		-0.881727, 0.315246, -0.350968,
		37.597706, 39.730942, 50.004494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285194, 40.250515, 50.243397>,  <38.214916, 39.510269, 50.250172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285194, 40.250515, 50.243397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895325, 40.161072, 50.244598>,  <37.661404, 40.107407, 50.245319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895325, 40.161072, 50.244598>,  <38.285194, 40.250515, 50.243397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895325, 40.161072, 50.244598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159009, 0.702422, 0.693771,
		-0.157246, 0.675723, -0.720189,
		-0.974674, -0.223610, 0.003007,
		37.602921, 40.093990, 50.245499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975521, 40.923939, 50.277813>,  <38.285194, 40.250515, 50.243397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975521, 40.923939, 50.277813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804142, 40.604603, 50.447083>,  <37.701313, 40.413002, 50.548645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804142, 40.604603, 50.447083>,  <37.975521, 40.923939, 50.277813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804142, 40.604603, 50.447083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070749, 0.496543, 0.865124,
		-0.900792, 0.340722, -0.269226,
		-0.428449, -0.798344, 0.423176,
		37.675606, 40.365101, 50.574036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252445, 40.758888, 49.535954>,  <37.975521, 40.923939, 50.277813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252445, 40.758888, 49.535954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589973, 40.854061, 49.728352>,  <38.792492, 40.911167, 49.843788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589973, 40.854061, 49.728352>,  <38.252445, 40.758888, 49.535954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589973, 40.854061, 49.728352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506332, -0.056133, -0.860510,
		-0.177746, 0.969658, -0.167840,
		0.843821, 0.237935, 0.480991,
		38.843121, 40.925442, 49.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560570, 41.092224, 49.046707>,  <38.252445, 40.758888, 49.535954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560570, 41.092224, 49.046707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836132, 40.975910, 49.312298>,  <39.001469, 40.906124, 49.471653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836132, 40.975910, 49.312298>,  <38.560570, 41.092224, 49.046707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836132, 40.975910, 49.312298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599443, -0.286458, -0.747402,
		0.407532, 0.912900, -0.023034,
		0.688901, -0.290783, 0.663973,
		39.042801, 40.888676, 49.511490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100838, 41.511707, 48.908031>,  <38.560570, 41.092224, 49.046707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100838, 41.511707, 48.908031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249794, 41.180706, 49.076107>,  <39.339169, 40.982105, 49.176952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249794, 41.180706, 49.076107>,  <39.100838, 41.511707, 48.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249794, 41.180706, 49.076107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499180, -0.203095, -0.842360,
		0.782395, 0.523442, 0.337442,
		0.372395, -0.827502, 0.420192,
		39.361511, 40.932457, 49.202164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819927, 41.394054, 48.754547>,  <39.100838, 41.511707, 48.908031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819927, 41.394054, 48.754547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704189, 41.025139, 48.857044>,  <39.634747, 40.803787, 48.918541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704189, 41.025139, 48.857044>,  <39.819927, 41.394054, 48.754547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704189, 41.025139, 48.857044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466793, -0.369656, -0.803405,
		0.835694, -0.112847, 0.537476,
		-0.289343, -0.922291, 0.256243,
		39.617386, 40.748451, 48.933918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452354, 41.147495, 48.975651>,  <39.819927, 41.394054, 48.754547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452354, 41.147495, 48.975651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177265, 40.881214, 48.859806>,  <40.012211, 40.721447, 48.790298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177265, 40.881214, 48.859806>,  <40.452354, 41.147495, 48.975651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177265, 40.881214, 48.859806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604646, -0.304457, -0.736009,
		0.401788, -0.681284, 0.611897,
		-0.687728, -0.665701, -0.289609,
		39.970947, 40.681503, 48.772923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849052, 40.616402, 48.741394>,  <40.452354, 41.147495, 48.975651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849052, 40.616402, 48.741394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480686, 40.534401, 48.608795>,  <40.259666, 40.485199, 48.529236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480686, 40.534401, 48.608795>,  <40.849052, 40.616402, 48.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480686, 40.534401, 48.608795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389766, -0.480771, -0.785456,
		0.001646, -0.852545, 0.522652,
		-0.920913, -0.205005, -0.331501,
		40.204411, 40.472900, 48.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865192, 39.886288, 48.505455>,  <40.849052, 40.616402, 48.741394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865192, 39.886288, 48.505455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525185, 40.034534, 48.355732>,  <40.321178, 40.123482, 48.265896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525185, 40.034534, 48.355732>,  <40.865192, 39.886288, 48.505455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525185, 40.034534, 48.355732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170216, -0.479216, -0.861033,
		-0.498490, -0.795610, 0.344258,
		-0.850020, 0.370618, -0.374310,
		40.270180, 40.145718, 48.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457676, 39.309860, 48.269543>,  <40.865192, 39.886288, 48.505455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457676, 39.309860, 48.269543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342155, 39.630844, 48.060677>,  <40.272842, 39.823433, 47.935356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342155, 39.630844, 48.060677>,  <40.457676, 39.309860, 48.269543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342155, 39.630844, 48.060677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100109, -0.517102, -0.850049,
		-0.952141, -0.297767, 0.069006,
		-0.288800, 0.802459, -0.522163,
		40.255516, 39.871582, 47.904026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986870, 39.065247, 47.813869>,  <40.457676, 39.309860, 48.269543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986870, 39.065247, 47.813869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116436, 39.410789, 47.659561>,  <40.194176, 39.618114, 47.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116436, 39.410789, 47.659561>,  <39.986870, 39.065247, 47.813869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116436, 39.410789, 47.659561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030642, -0.417122, -0.908334,
		-0.945588, 0.282406, -0.161585,
		0.323920, 0.863861, -0.385772,
		40.213612, 39.669949, 47.543831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638752, 39.224762, 47.192791>,  <39.986870, 39.065247, 47.813869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638752, 39.224762, 47.192791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950508, 39.470440, 47.143303>,  <40.137562, 39.617847, 47.113609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950508, 39.470440, 47.143303>,  <39.638752, 39.224762, 47.192791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950508, 39.470440, 47.143303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095044, -0.311084, -0.945618,
		-0.619284, 0.725250, -0.300833,
		0.779393, 0.614198, -0.123718,
		40.184326, 39.654701, 47.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521629, 39.437225, 46.558449>,  <39.638752, 39.224762, 47.192791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521629, 39.437225, 46.558449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900623, 39.553707, 46.611317>,  <40.128021, 39.623596, 46.643036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900623, 39.553707, 46.611317>,  <39.521629, 39.437225, 46.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900623, 39.553707, 46.611317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188411, -0.174379, -0.966485,
		-0.258398, 0.940634, -0.220087,
		0.947487, 0.291204, 0.132167,
		40.184868, 39.641068, 46.650967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733761, 39.861000, 45.937321>,  <39.521629, 39.437225, 46.558449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733761, 39.861000, 45.937321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066532, 39.687023, 46.075142>,  <40.266197, 39.582638, 46.157833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066532, 39.687023, 46.075142>,  <39.733761, 39.861000, 45.937321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066532, 39.687023, 46.075142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211782, -0.325042, -0.921681,
		0.512872, 0.839745, -0.178300,
		0.831932, -0.434943, 0.344548,
		40.316113, 39.556541, 46.178505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150314, 39.940701, 45.316826>,  <39.733761, 39.861000, 45.937321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150314, 39.940701, 45.316826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343784, 39.683781, 45.554649>,  <40.459866, 39.529629, 45.697342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343784, 39.683781, 45.554649>,  <40.150314, 39.940701, 45.316826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343784, 39.683781, 45.554649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572776, -0.281362, -0.769912,
		0.661804, 0.712938, 0.231808,
		0.483677, -0.642304, 0.594560,
		40.488888, 39.491089, 45.733017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755524, 39.938820, 45.031738>,  <40.150314, 39.940701, 45.316826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755524, 39.938820, 45.031738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747787, 39.603794, 45.250137>,  <40.743145, 39.402779, 45.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747787, 39.603794, 45.250137>,  <40.755524, 39.938820, 45.031738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747787, 39.603794, 45.250137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706758, -0.397721, -0.585074,
		0.707191, 0.374576, 0.599644,
		-0.019337, -0.837562, 0.545999,
		40.741985, 39.352524, 45.413937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423725, 39.690292, 45.271423>,  <40.755524, 39.938820, 45.031738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423725, 39.690292, 45.271423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198780, 39.359604, 45.278053>,  <41.063812, 39.161190, 45.282032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198780, 39.359604, 45.278053>,  <41.423725, 39.690292, 45.271423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198780, 39.359604, 45.278053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577675, -0.407135, -0.707483,
		0.591639, -0.388292, 0.706536,
		-0.562366, -0.826722, 0.016570,
		41.030071, 39.111588, 45.283024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883865, 39.158138, 44.922375>,  <41.423725, 39.690292, 45.271423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883865, 39.158138, 44.922375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514175, 39.010654, 44.962078>,  <41.292362, 38.922165, 44.985901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514175, 39.010654, 44.962078>,  <41.883865, 39.158138, 44.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514175, 39.010654, 44.962078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029314, -0.327687, -0.944331,
		0.380711, -0.869869, 0.313667,
		-0.924229, -0.368712, 0.099254,
		41.236908, 38.900040, 44.991856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001270, 38.579330, 44.569080>,  <41.883865, 39.158138, 44.922375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001270, 38.579330, 44.569080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602673, 38.612080, 44.575928>,  <41.363514, 38.631729, 44.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602673, 38.612080, 44.575928>,  <42.001270, 38.579330, 44.569080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602673, 38.612080, 44.575928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051687, -0.441896, -0.895576,
		-0.065756, -0.893323, 0.444579,
		-0.996496, 0.081868, 0.017116,
		41.303722, 38.636639, 44.581062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855705, 37.965721, 44.389439>,  <42.001270, 38.579330, 44.569080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855705, 37.965721, 44.389439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536804, 38.194603, 44.312534>,  <41.345463, 38.331932, 44.266392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536804, 38.194603, 44.312534>,  <41.855705, 37.965721, 44.389439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536804, 38.194603, 44.312534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144406, -0.490046, -0.859653,
		-0.586118, -0.657597, 0.473321,
		-0.797254, 0.572208, -0.192263,
		41.297626, 38.366264, 44.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503700, 37.521873, 44.084793>,  <41.855705, 37.965721, 44.389439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503700, 37.521873, 44.084793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343498, 37.871872, 43.975998>,  <41.247375, 38.081871, 43.910721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343498, 37.871872, 43.975998>,  <41.503700, 37.521873, 44.084793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343498, 37.871872, 43.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053779, -0.318774, -0.946304,
		-0.914715, -0.364374, 0.174727,
		-0.400507, 0.874995, -0.271992,
		41.223347, 38.134369, 43.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887386, 37.390629, 43.744495>,  <41.503700, 37.521873, 44.084793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887386, 37.390629, 43.744495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039360, 37.736969, 43.614296>,  <41.130543, 37.944775, 43.536175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039360, 37.736969, 43.614296>,  <40.887386, 37.390629, 43.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039360, 37.736969, 43.614296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113594, -0.305550, -0.945376,
		-0.918013, 0.396154, -0.017733,
		0.379933, 0.865853, -0.325500,
		41.153339, 37.996723, 43.516647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407276, 37.483295, 43.172966>,  <40.887386, 37.390629, 43.744495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407276, 37.483295, 43.172966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679699, 37.770950, 43.117828>,  <40.843151, 37.943542, 43.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679699, 37.770950, 43.117828>,  <40.407276, 37.483295, 43.172966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679699, 37.770950, 43.117828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093825, -0.272410, -0.957596,
		-0.726194, 0.639244, -0.253000,
		0.681057, 0.719138, -0.137845,
		40.884014, 37.986691, 43.076473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057117, 37.808685, 42.708294>,  <40.407276, 37.483295, 43.172966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057117, 37.808685, 42.708294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445709, 37.903294, 42.701519>,  <40.678864, 37.960060, 42.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445709, 37.903294, 42.701519>,  <40.057117, 37.808685, 42.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445709, 37.903294, 42.701519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009467, -0.032701, -0.999420,
		-0.236942, 0.971075, -0.029529,
		0.971478, 0.236525, -0.016942,
		40.737152, 37.974251, 42.696438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089581, 38.374153, 42.239891>,  <40.057117, 37.808685, 42.708294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089581, 38.374153, 42.239891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434448, 38.173851, 42.270634>,  <40.641369, 38.053669, 42.289078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434448, 38.173851, 42.270634>,  <40.089581, 38.374153, 42.239891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434448, 38.173851, 42.270634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008132, -0.137999, -0.990399,
		0.506557, 0.854515, -0.114906,
		0.862168, -0.500759, 0.076853,
		40.693100, 38.023624, 42.293690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321381, 38.473045, 41.604549>,  <40.089581, 38.374153, 42.239891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321381, 38.473045, 41.604549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586376, 38.210060, 41.748135>,  <40.745373, 38.052269, 41.834286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586376, 38.210060, 41.748135>,  <40.321381, 38.473045, 41.604549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586376, 38.210060, 41.748135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314622, -0.190661, -0.929872,
		0.679799, 0.728962, 0.080543,
		0.662485, -0.657466, 0.358958,
		40.785122, 38.012821, 41.855824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960686, 38.751995, 41.330669>,  <40.321381, 38.473045, 41.604549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960686, 38.751995, 41.330669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972588, 38.354256, 41.371433>,  <40.979729, 38.115612, 41.395893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972588, 38.354256, 41.371433>,  <40.960686, 38.751995, 41.330669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972588, 38.354256, 41.371433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307034, -0.087934, -0.947627,
		0.951233, 0.059486, 0.302682,
		0.029754, -0.994348, 0.101910,
		40.981514, 38.055950, 41.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591843, 38.533173, 41.190304>,  <40.960686, 38.751995, 41.330669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591843, 38.533173, 41.190304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359665, 38.218914, 41.104652>,  <41.220360, 38.030361, 41.053261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359665, 38.218914, 41.104652>,  <41.591843, 38.533173, 41.190304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359665, 38.218914, 41.104652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418286, -0.062053, -0.906193,
		0.698658, -0.615559, 0.364642,
		-0.580443, -0.785644, -0.214126,
		41.185532, 37.983219, 41.040413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999207, 38.115566, 40.706429>,  <41.591843, 38.533173, 41.190304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999207, 38.115566, 40.706429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638054, 37.948727, 40.664780>,  <41.421364, 37.848621, 40.639790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638054, 37.948727, 40.664780>,  <41.999207, 38.115566, 40.706429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638054, 37.948727, 40.664780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176919, -0.139760, -0.974252,
		0.391806, -0.898052, 0.199979,
		-0.902877, -0.417098, -0.104124,
		41.367191, 37.823597, 40.633541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143368, 37.356976, 40.563984>,  <41.999207, 38.115566, 40.706429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143368, 37.356976, 40.563984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784451, 37.455662, 40.417557>,  <41.569099, 37.514874, 40.329700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784451, 37.455662, 40.417557>,  <42.143368, 37.356976, 40.563984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784451, 37.455662, 40.417557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276887, -0.331305, -0.901981,
		-0.343828, -0.910693, 0.228958,
		-0.897282, 0.246731, -0.366071,
		41.515263, 37.529675, 40.307735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000088, 36.756355, 40.083290>,  <42.143368, 37.356976, 40.563984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000088, 36.756355, 40.083290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744751, 37.049625, 39.989502>,  <41.591549, 37.225586, 39.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744751, 37.049625, 39.989502>,  <42.000088, 36.756355, 40.083290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744751, 37.049625, 39.989502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128361, -0.198949, -0.971567,
		-0.758976, -0.650287, 0.032886,
		-0.638341, 0.733175, -0.234470,
		41.553249, 37.269577, 39.919163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500664, 36.395103, 39.618759>,  <42.000088, 36.756355, 40.083290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500664, 36.395103, 39.618759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416767, 36.774185, 39.522541>,  <41.366428, 37.001637, 39.464809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416767, 36.774185, 39.522541>,  <41.500664, 36.395103, 39.618759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416767, 36.774185, 39.522541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156421, -0.275369, -0.948527,
		-0.965164, -0.161320, 0.205997,
		-0.209742, 0.947706, -0.240542,
		41.353844, 37.058498, 39.450378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879810, 36.477032, 39.341450>,  <41.500664, 36.395103, 39.618759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879810, 36.477032, 39.341450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048367, 36.809719, 39.196854>,  <41.149502, 37.009331, 39.110096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048367, 36.809719, 39.196854>,  <40.879810, 36.477032, 39.341450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048367, 36.809719, 39.196854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187039, -0.310328, -0.932048,
		-0.887380, 0.460372, 0.024793,
		0.421395, 0.831717, -0.361487,
		41.174786, 37.059235, 39.088409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402950, 36.795265, 38.877159>,  <40.879810, 36.477032, 39.341450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402950, 36.795265, 38.877159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750366, 36.961918, 38.769787>,  <40.958817, 37.061909, 38.705364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750366, 36.961918, 38.769787>,  <40.402950, 36.795265, 38.877159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750366, 36.961918, 38.769787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162952, -0.271447, -0.948558,
		-0.468062, 0.867604, -0.167873,
		0.868542, 0.416629, -0.268432,
		41.010929, 37.086906, 38.689259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270119, 37.263557, 38.305717>,  <40.402950, 36.795265, 38.877159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270119, 37.263557, 38.305717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661110, 37.181381, 38.286427>,  <40.895706, 37.132076, 38.274853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661110, 37.181381, 38.286427>,  <40.270119, 37.263557, 38.305717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661110, 37.181381, 38.286427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053709, -0.021206, -0.998331,
		0.204073, 0.978440, -0.031762,
		0.977481, -0.205438, -0.048224,
		40.954353, 37.119751, 38.271961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695087, 37.865601, 37.919891>,  <40.270119, 37.263557, 38.305717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695087, 37.865601, 37.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879616, 37.511147, 37.902252>,  <40.990334, 37.298473, 37.891670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879616, 37.511147, 37.902252>,  <40.695087, 37.865601, 37.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879616, 37.511147, 37.902252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138607, -0.022889, -0.990083,
		0.876340, 0.462857, -0.133383,
		0.461320, -0.886137, -0.044097,
		41.018013, 37.245304, 37.889023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120941, 37.893047, 37.307182>,  <40.695087, 37.865601, 37.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120941, 37.893047, 37.307182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074280, 37.507198, 37.401752>,  <41.046284, 37.275688, 37.458496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074280, 37.507198, 37.401752>,  <41.120941, 37.893047, 37.307182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074280, 37.507198, 37.401752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215356, -0.207823, -0.954165,
		0.969543, -0.162222, -0.183494,
		-0.116652, -0.964621, 0.236429,
		41.039284, 37.217812, 37.472683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461369, 37.576553, 36.730934>,  <41.120941, 37.893047, 37.307182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461369, 37.576553, 36.730934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257069, 37.283813, 36.911388>,  <41.134487, 37.108170, 37.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257069, 37.283813, 36.911388>,  <41.461369, 37.576553, 36.730934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257069, 37.283813, 36.911388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216195, -0.398545, -0.891303,
		0.832101, -0.552769, 0.045335,
		-0.510753, -0.731853, 0.451135,
		41.103844, 37.064259, 37.046730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724396, 36.981880, 36.422344>,  <41.461369, 37.576553, 36.730934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724396, 36.981880, 36.422344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386047, 36.861435, 36.598454>,  <41.183041, 36.789165, 36.704117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386047, 36.861435, 36.598454>,  <41.724396, 36.981880, 36.422344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386047, 36.861435, 36.598454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320256, -0.373367, -0.870651,
		0.426548, -0.877455, 0.219385,
		-0.845868, -0.301116, 0.440269,
		41.132286, 36.771099, 36.730534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612667, 36.287205, 36.476746>,  <41.724396, 36.981880, 36.422344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612667, 36.287205, 36.476746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238148, 36.427677, 36.475594>,  <41.013435, 36.511963, 36.474903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238148, 36.427677, 36.475594>,  <41.612667, 36.287205, 36.476746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238148, 36.427677, 36.475594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186234, -0.503448, -0.843716,
		-0.297751, -0.789436, 0.536782,
		-0.936302, 0.351184, -0.002883,
		40.957256, 36.533031, 36.474728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977421, 36.219196, 36.964325>,  <41.612667, 36.287205, 36.476746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977421, 36.219196, 36.964325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947594, 35.845486, 37.103786>,  <40.929699, 35.621258, 37.187466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947594, 35.845486, 37.103786>,  <40.977421, 36.219196, 36.964325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947594, 35.845486, 37.103786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054149, 0.345321, 0.936921,
		-0.995745, 0.088741, 0.024841,
		-0.074566, -0.934280, 0.348657,
		40.925224, 35.565201, 37.208382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198093, 35.708862, 36.558170>,  <40.977421, 36.219196, 36.964325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198093, 35.708862, 36.558170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952900, 35.975216, 36.388062>,  <40.805786, 36.135029, 36.285995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952900, 35.975216, 36.388062>,  <41.198093, 35.708862, 36.558170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952900, 35.975216, 36.388062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035274, -0.560775, -0.827216,
		-0.789312, -0.492065, 0.367232,
		-0.612979, 0.665885, -0.425269,
		40.769005, 36.174980, 36.260479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519756, 35.481113, 36.342266>,  <41.198093, 35.708862, 36.558170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519756, 35.481113, 36.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615093, 35.784882, 36.100117>,  <40.672295, 35.967140, 35.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615093, 35.784882, 36.100117>,  <40.519756, 35.481113, 36.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615093, 35.784882, 36.100117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031485, -0.616971, -0.786356,
		-0.970672, 0.206479, -0.123137,
		0.238338, 0.759416, -0.605377,
		40.686596, 36.012707, 35.918503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942173, 35.385902, 35.639515>,  <40.519756, 35.481113, 36.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942173, 35.385902, 35.639515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990841, 35.756126, 35.782925>,  <41.020042, 35.978260, 35.868969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990841, 35.756126, 35.782925>,  <40.942173, 35.385902, 35.639515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990841, 35.756126, 35.782925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885733, 0.061780, -0.460065,
		-0.447966, 0.373532, -0.812281,
		0.121666, 0.925558, 0.358525,
		41.027340, 36.033794, 35.890484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257549, 35.772133, 35.072762>,  <40.942173, 35.385902, 35.639515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257549, 35.772133, 35.072762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409409, 35.892040, 35.422848>,  <41.500523, 35.963985, 35.632900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409409, 35.892040, 35.422848>,  <41.257549, 35.772133, 35.072762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409409, 35.892040, 35.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923138, -0.060690, -0.379647,
		-0.060690, 0.952080, -0.299769,
		0.379647, 0.299769, 0.875218,
		41.523304, 35.981972, 35.685413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876354, 35.726406, 34.644501>,  <41.257549, 35.772133, 35.072762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876354, 35.726406, 34.644501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182625, 35.825020, 34.406860>,  <42.366386, 35.884186, 34.264275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182625, 35.825020, 34.406860>,  <41.876354, 35.726406, 34.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182625, 35.825020, 34.406860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643223, -0.295697, 0.706278,
		-0.001555, -0.922922, -0.384983,
		0.765678, 0.246532, -0.594104,
		42.412327, 35.898979, 34.228630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322567, 35.175560, 34.646313>,  <41.876354, 35.726406, 34.644501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322567, 35.175560, 34.646313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516327, 35.515167, 34.561916>,  <42.632584, 35.718933, 34.511276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516327, 35.515167, 34.561916>,  <42.322567, 35.175560, 34.646313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516327, 35.515167, 34.561916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781265, -0.311291, 0.541039,
		0.393673, -0.426923, -0.814100,
		0.484404, 0.849020, -0.210993,
		42.661648, 35.769875, 34.498619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962933, 34.896748, 34.561913>,  <42.322567, 35.175560, 34.646313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962933, 34.896748, 34.561913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940212, 35.277355, 34.682835>,  <42.926582, 35.505718, 34.755386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940212, 35.277355, 34.682835>,  <42.962933, 34.896748, 34.561913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940212, 35.277355, 34.682835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635256, -0.199150, 0.746183,
		0.770210, 0.234423, -0.593146,
		-0.056797, 0.951517, 0.302305,
		42.923172, 35.562809, 34.773525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980530, 34.191933, 34.553905>,  <42.962933, 34.896748, 34.561913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980530, 34.191933, 34.553905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324608, 34.217628, 34.756264>,  <43.531055, 34.233047, 34.877678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324608, 34.217628, 34.756264>,  <42.980530, 34.191933, 34.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324608, 34.217628, 34.756264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062716, -0.997830, 0.020069,
		0.506091, 0.014465, -0.862359,
		0.860197, 0.064240, 0.505900,
		43.582668, 34.236900, 34.908035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563259, 33.956615, 34.088467>,  <42.980530, 34.191933, 34.553905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563259, 33.956615, 34.088467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690598, 33.906685, 34.464355>,  <43.767002, 33.876728, 34.689888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690598, 33.906685, 34.464355>,  <43.563259, 33.956615, 34.088467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690598, 33.906685, 34.464355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372782, -0.894946, -0.245164,
		0.871602, 0.428358, -0.238370,
		0.318347, -0.124825, 0.939720,
		43.786102, 33.869236, 34.746273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323994, 33.716904, 34.196896>,  <43.563259, 33.956615, 34.088467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323994, 33.716904, 34.196896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110477, 33.601131, 34.514713>,  <43.982368, 33.531670, 34.705406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110477, 33.601131, 34.514713>,  <44.323994, 33.716904, 34.196896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110477, 33.601131, 34.514713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359071, -0.928266, -0.096907,
		0.765598, 0.233571, 0.599420,
		-0.533787, -0.289426, 0.794547,
		43.950340, 33.514305, 34.753078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690094, 33.187561, 34.490509>,  <44.323994, 33.716904, 34.196896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690094, 33.187561, 34.490509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333485, 33.116554, 34.657204>,  <44.119518, 33.073952, 34.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333485, 33.116554, 34.657204>,  <44.690094, 33.187561, 34.490509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333485, 33.116554, 34.657204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189163, -0.981852, -0.013562,
		0.411581, 0.066740, 0.908926,
		-0.891526, -0.177517, 0.416736,
		44.066029, 33.063297, 34.782223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786697, 32.623352, 34.846737>,  <44.690094, 33.187561, 34.490509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786697, 32.623352, 34.846737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387127, 32.630016, 34.864044>,  <44.147385, 32.634014, 34.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387127, 32.630016, 34.864044>,  <44.786697, 32.623352, 34.846737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387127, 32.630016, 34.864044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022500, -0.990136, -0.138292,
		0.040535, -0.139117, 0.989446,
		-0.998925, 0.016657, 0.043265,
		44.087448, 32.635014, 34.877026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666393, 32.016376, 35.055576>,  <44.786697, 32.623352, 34.846737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666393, 32.016376, 35.055576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290512, 32.108521, 34.954464>,  <44.064983, 32.163807, 34.893799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290512, 32.108521, 34.954464>,  <44.666393, 32.016376, 35.055576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290512, 32.108521, 34.954464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191031, -0.966619, -0.170747,
		-0.283673, -0.112163, 0.952339,
		-0.939700, 0.230362, -0.252778,
		44.008602, 32.177628, 34.878632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174870, 31.622438, 35.396347>,  <44.666393, 32.016376, 35.055576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174870, 31.622438, 35.396347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984940, 31.745695, 35.066597>,  <43.870983, 31.819649, 34.868748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984940, 31.745695, 35.066597>,  <44.174870, 31.622438, 35.396347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984940, 31.745695, 35.066597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291191, -0.938950, -0.183250,
		-0.830512, 0.153039, 0.535564,
		-0.474824, 0.308143, -0.824373,
		43.842491, 31.838139, 34.819286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487694, 31.356441, 35.392025>,  <44.174870, 31.622438, 35.396347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487694, 31.356441, 35.392025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519077, 31.458443, 35.006523>,  <43.537907, 31.519644, 34.775223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519077, 31.458443, 35.006523>,  <43.487694, 31.356441, 35.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519077, 31.458443, 35.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272697, -0.924372, -0.266782,
		-0.958896, 0.283744, -0.002984,
		0.078456, 0.255002, -0.963752,
		43.542614, 31.534943, 34.717396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031254, 30.975462, 35.159737>,  <43.487694, 31.356441, 35.392025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031254, 30.975462, 35.159737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201633, 31.091335, 34.816891>,  <43.303860, 31.160860, 34.611183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201633, 31.091335, 34.816891>,  <43.031254, 30.975462, 35.159737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201633, 31.091335, 34.816891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330985, -0.831795, -0.445608,
		-0.842033, 0.473498, -0.258418,
		0.425946, 0.289685, -0.857119,
		43.329418, 31.178240, 34.559753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493706, 30.985054, 34.635979>,  <43.031254, 30.975462, 35.159737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493706, 30.985054, 34.635979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848110, 30.936094, 34.457088>,  <43.060753, 30.906719, 34.349754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848110, 30.936094, 34.457088>,  <42.493706, 30.985054, 34.635979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848110, 30.936094, 34.457088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330467, -0.843263, -0.423910,
		-0.325239, 0.523380, -0.787588,
		0.886009, -0.122399, -0.447221,
		43.113914, 30.899374, 34.322922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410679, 30.799545, 33.956116>,  <42.493706, 30.985054, 34.635979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410679, 30.799545, 33.956116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782497, 30.659889, 34.003525>,  <43.005589, 30.576096, 34.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782497, 30.659889, 34.003525>,  <42.410679, 30.799545, 33.956116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782497, 30.659889, 34.003525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235237, -0.809106, -0.538527,
		0.283923, 0.472702, -0.834230,
		0.929543, -0.349142, 0.118527,
		43.061359, 30.555147, 34.039082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563721, 30.421400, 33.382030>,  <42.410679, 30.799545, 33.956116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563721, 30.421400, 33.382030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838017, 30.269411, 33.630348>,  <43.002594, 30.178217, 33.779339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838017, 30.269411, 33.630348>,  <42.563721, 30.421400, 33.382030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838017, 30.269411, 33.630348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051170, -0.875971, -0.479641,
		0.726045, 0.297144, -0.620133,
		0.685741, -0.379973, 0.620790,
		43.043739, 30.155418, 33.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980755, 29.921595, 32.939831>,  <42.563721, 30.421400, 33.382030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980755, 29.921595, 32.939831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069607, 29.820494, 33.316505>,  <43.122917, 29.759832, 33.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069607, 29.820494, 33.316505>,  <42.980755, 29.921595, 32.939831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069607, 29.820494, 33.316505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157655, -0.962417, -0.221128,
		0.962186, -0.099342, -0.253634,
		0.222135, -0.252753, 0.941686,
		43.136246, 29.744667, 33.599010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505379, 29.402632, 32.850719>,  <42.980755, 29.921595, 32.939831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505379, 29.402632, 32.850719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339760, 29.347528, 33.210629>,  <43.240391, 29.314466, 33.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339760, 29.347528, 33.210629>,  <43.505379, 29.402632, 32.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339760, 29.347528, 33.210629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140813, -0.986276, -0.086207,
		0.899299, 0.091006, 0.427761,
		-0.414045, -0.137760, 0.899771,
		43.215546, 29.306200, 33.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750130, 28.839109, 33.147820>,  <43.505379, 29.402632, 32.850719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750130, 28.839109, 33.147820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424660, 28.891043, 33.374474>,  <43.229378, 28.922203, 33.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424660, 28.891043, 33.374474>,  <43.750130, 28.839109, 33.147820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424660, 28.891043, 33.374474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160064, -0.987100, -0.003674,
		0.558852, -0.093688, 0.823958,
		-0.813673, 0.129833, 0.566639,
		43.180557, 28.929993, 33.544464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821533, 28.330183, 33.760422>,  <43.750130, 28.839109, 33.147820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821533, 28.330183, 33.760422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440918, 28.452726, 33.771145>,  <43.212547, 28.526253, 33.777580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440918, 28.452726, 33.771145>,  <43.821533, 28.330183, 33.760422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440918, 28.452726, 33.771145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307528, -0.947688, -0.085520,
		-0.000790, -0.089621, 0.995976,
		-0.951539, 0.306358, 0.026812,
		43.155457, 28.544634, 33.779190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460388, 27.871929, 34.274132>,  <43.821533, 28.330183, 33.760422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460388, 27.871929, 34.274132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196636, 28.028595, 34.017437>,  <43.038387, 28.122595, 33.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196636, 28.028595, 34.017437>,  <43.460388, 27.871929, 34.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196636, 28.028595, 34.017437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436726, -0.894339, -0.097100,
		-0.611958, 0.216236, 0.760756,
		-0.659377, 0.391663, -0.641734,
		42.998821, 28.146093, 33.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863419, 27.529818, 34.425243>,  <43.460388, 27.871929, 34.274132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863419, 27.529818, 34.425243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840591, 27.675262, 34.053322>,  <42.826897, 27.762529, 33.830170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840591, 27.675262, 34.053322>,  <42.863419, 27.529818, 34.425243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840591, 27.675262, 34.053322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498376, -0.817356, -0.289052,
		-0.865081, 0.446895, 0.227861,
		-0.057068, 0.363614, -0.929800,
		42.823471, 27.784346, 33.774384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213955, 27.289116, 34.178288>,  <42.863419, 27.529818, 34.425243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213955, 27.289116, 34.178288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421276, 27.375381, 33.847267>,  <42.545670, 27.427141, 33.648655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421276, 27.375381, 33.847267>,  <42.213955, 27.289116, 34.178288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421276, 27.375381, 33.847267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436026, -0.765815, -0.472661,
		-0.735690, 0.605820, -0.302893,
		0.518307, 0.215662, -0.827555,
		42.576767, 27.440081, 33.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732143, 27.230278, 33.633526>,  <42.213955, 27.289116, 34.178288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732143, 27.230278, 33.633526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078915, 27.208162, 33.435383>,  <42.286976, 27.194893, 33.316498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078915, 27.208162, 33.435383>,  <41.732143, 27.230278, 33.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078915, 27.208162, 33.435383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262382, -0.895606, -0.359230,
		-0.423782, 0.441399, -0.790934,
		0.866929, -0.055291, -0.495356,
		42.338993, 27.191574, 33.286777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551254, 26.987053, 32.865967>,  <41.732143, 27.230278, 33.633526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551254, 26.987053, 32.865967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911736, 26.896503, 33.013802>,  <42.128025, 26.842175, 33.102501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911736, 26.896503, 33.013802>,  <41.551254, 26.987053, 32.865967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911736, 26.896503, 33.013802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233690, -0.971977, -0.025509,
		0.365004, -0.063380, -0.928846,
		0.901200, -0.226373, 0.369587,
		42.182095, 26.828592, 33.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850239, 26.434395, 32.490059>,  <41.551254, 26.987053, 32.865967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850239, 26.434395, 32.490059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055603, 26.440849, 32.833256>,  <42.178822, 26.444723, 33.039173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055603, 26.440849, 32.833256>,  <41.850239, 26.434395, 32.490059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055603, 26.440849, 32.833256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063778, -0.997776, -0.019398,
		0.855769, 0.064680, -0.513299,
		0.513412, 0.016137, 0.857991,
		42.209625, 26.445690, 33.090652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593582, 26.124388, 32.457443>,  <41.850239, 26.434395, 32.490059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593582, 26.124388, 32.457443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404270, 26.087423, 32.807865>,  <42.290684, 26.065245, 33.018116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404270, 26.087423, 32.807865>,  <42.593582, 26.124388, 32.457443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404270, 26.087423, 32.807865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153792, -0.987878, -0.021121,
		0.867383, 0.124733, 0.481756,
		-0.473282, -0.092410, 0.876051,
		42.262287, 26.059700, 33.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968002, 25.503469, 32.785583>,  <42.593582, 26.124388, 32.457443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968002, 25.503469, 32.785583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586750, 25.584461, 32.875507>,  <42.357998, 25.633057, 32.929462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586750, 25.584461, 32.875507>,  <42.968002, 25.503469, 32.785583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586750, 25.584461, 32.875507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211546, -0.977225, -0.016738,
		0.216303, -0.063511, 0.974258,
		-0.953132, 0.202480, 0.224812,
		42.300812, 25.645205, 32.942951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646572, 25.339533, 33.557480>,  <42.968002, 25.503469, 32.785583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646572, 25.339533, 33.557480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448635, 25.308315, 33.211292>,  <42.329872, 25.289585, 33.003578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448635, 25.308315, 33.211292>,  <42.646572, 25.339533, 33.557480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448635, 25.308315, 33.211292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069740, -0.989180, 0.129071,
		-0.866181, 0.124228, 0.484043,
		-0.494840, -0.078042, -0.865472,
		42.300182, 25.284903, 32.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839779, 25.392015, 34.265835>,  <42.646572, 25.339533, 33.557480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839779, 25.392015, 34.265835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740963, 25.314060, 34.645515>,  <42.681675, 25.267288, 34.873325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740963, 25.314060, 34.645515>,  <42.839779, 25.392015, 34.265835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740963, 25.314060, 34.645515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398474, 0.872480, 0.282838,
		-0.883285, 0.448105, -0.137876,
		-0.247036, -0.194887, 0.949206,
		42.666851, 25.255594, 34.930279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471222, 26.027723, 34.389839>,  <42.839779, 25.392015, 34.265835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471222, 26.027723, 34.389839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678230, 25.840237, 34.676189>,  <42.802437, 25.727745, 34.848000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678230, 25.840237, 34.676189>,  <42.471222, 26.027723, 34.389839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678230, 25.840237, 34.676189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435811, 0.864365, 0.250880,
		-0.736370, 0.182151, 0.651599,
		0.517521, -0.468715, 0.715876,
		42.833488, 25.699623, 34.890953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413967, 26.435545, 34.983757>,  <42.471222, 26.027723, 34.389839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413967, 26.435545, 34.983757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757805, 26.231522, 34.971516>,  <42.964108, 26.109108, 34.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757805, 26.231522, 34.971516>,  <42.413967, 26.435545, 34.983757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757805, 26.231522, 34.971516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507645, 0.859288, -0.062609,
		0.058232, 0.038283, 0.997569,
		0.859596, -0.510057, -0.030604,
		43.015682, 26.078505, 34.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855129, 26.618574, 35.589260>,  <42.413967, 26.435545, 34.983757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855129, 26.618574, 35.589260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066822, 26.541578, 35.258717>,  <43.193836, 26.495380, 35.060390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066822, 26.541578, 35.258717>,  <42.855129, 26.618574, 35.589260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066822, 26.541578, 35.258717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452849, 0.887692, 0.083244,
		0.717526, -0.418270, 0.556961,
		0.529229, -0.192490, -0.826356,
		43.225590, 26.483831, 35.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578953, 26.621027, 35.723763>,  <42.855129, 26.618574, 35.589260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578953, 26.621027, 35.723763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537525, 26.724993, 35.339737>,  <43.512669, 26.787373, 35.109322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537525, 26.724993, 35.339737>,  <43.578953, 26.621027, 35.723763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537525, 26.724993, 35.339737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531014, 0.830625, 0.167587,
		0.841009, -0.492449, -0.224048,
		-0.103572, 0.259915, -0.960061,
		43.506454, 26.802967, 35.051720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190815, 26.554649, 35.226715>,  <43.578953, 26.621027, 35.723763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190815, 26.554649, 35.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954842, 26.863987, 35.133831>,  <43.813259, 27.049589, 35.078102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954842, 26.863987, 35.133831>,  <44.190815, 26.554649, 35.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954842, 26.863987, 35.133831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749970, 0.631352, 0.197332,
		0.299211, -0.057737, -0.952438,
		-0.589930, 0.773344, -0.232209,
		43.777863, 27.095991, 35.064167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674644, 27.006197, 34.940392>,  <44.190815, 26.554649, 35.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674644, 27.006197, 34.940392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380123, 27.254679, 35.047695>,  <44.203411, 27.403767, 35.112076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380123, 27.254679, 35.047695>,  <44.674644, 27.006197, 34.940392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380123, 27.254679, 35.047695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676125, 0.659800, 0.327902,
		0.026696, 0.422812, -0.905824,
		-0.736304, 0.621203, 0.268260,
		44.159233, 27.441040, 35.128174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874416, 27.654280, 34.605907>,  <44.674644, 27.006197, 34.940392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874416, 27.654280, 34.605907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601143, 27.734802, 34.886688>,  <44.437180, 27.783115, 35.055157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601143, 27.734802, 34.886688>,  <44.874416, 27.654280, 34.605907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601143, 27.734802, 34.886688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518355, 0.810761, 0.271983,
		-0.514367, 0.549676, -0.658242,
		-0.683179, 0.201304, 0.701956,
		44.396191, 27.795193, 35.097275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754665, 28.411629, 34.552082>,  <44.874416, 27.654280, 34.605907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754665, 28.411629, 34.552082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652561, 28.275259, 34.913990>,  <44.591297, 28.193438, 35.131134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652561, 28.275259, 34.913990>,  <44.754665, 28.411629, 34.552082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652561, 28.275259, 34.913990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511044, 0.746804, 0.425579,
		-0.820778, 0.571012, -0.016404,
		-0.255261, -0.340923, 0.904773,
		44.575981, 28.172983, 35.185421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275791, 28.925928, 34.845028>,  <44.754665, 28.411629, 34.552082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275791, 28.925928, 34.845028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425766, 28.714594, 35.149734>,  <44.515751, 28.587793, 35.332558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425766, 28.714594, 35.149734>,  <44.275791, 28.925928, 34.845028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425766, 28.714594, 35.149734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313302, 0.845574, 0.432257,
		-0.872506, 0.076596, 0.482562,
		0.374933, -0.528335, 0.761766,
		44.538246, 28.556093, 35.378265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127094, 29.361845, 35.436340>,  <44.275791, 28.925928, 34.845028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127094, 29.361845, 35.436340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396122, 29.107910, 35.588463>,  <44.557541, 28.955549, 35.679737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396122, 29.107910, 35.588463>,  <44.127094, 29.361845, 35.436340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396122, 29.107910, 35.588463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363107, 0.730882, 0.577897,
		-0.644826, -0.250587, 0.722084,
		0.672572, -0.634837, 0.380302,
		44.597893, 28.917459, 35.702553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261799, 29.702131, 35.991299>,  <44.127094, 29.361845, 35.436340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261799, 29.702131, 35.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571152, 29.449678, 35.967445>,  <44.756763, 29.298206, 35.953133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571152, 29.449678, 35.967445>,  <44.261799, 29.702131, 35.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571152, 29.449678, 35.967445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528102, 0.589364, 0.611357,
		-0.350700, -0.504305, 0.789104,
		0.773380, -0.631131, -0.059635,
		44.803165, 29.260340, 35.949554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501774, 29.798565, 36.644287>,  <44.261799, 29.702131, 35.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501774, 29.798565, 36.644287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773281, 29.649326, 36.391281>,  <44.936184, 29.559784, 36.239479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773281, 29.649326, 36.391281>,  <44.501774, 29.798565, 36.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773281, 29.649326, 36.391281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633261, 0.733497, 0.246906,
		0.371829, -0.568139, 0.734140,
		0.678766, -0.373096, -0.632516,
		44.976910, 29.537397, 36.201527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155983, 29.770052, 37.029652>,  <44.501774, 29.798565, 36.644287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155983, 29.770052, 37.029652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209644, 29.813108, 36.635612>,  <45.241840, 29.838942, 36.399189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209644, 29.813108, 36.635612>,  <45.155983, 29.770052, 37.029652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209644, 29.813108, 36.635612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634844, 0.753967, 0.168838,
		0.760905, -0.648033, 0.032809,
		0.134149, 0.107641, -0.985098,
		45.249889, 29.845402, 36.340084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815376, 30.209801, 37.097351>,  <45.155983, 29.770052, 37.029652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815376, 30.209801, 37.097351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715084, 30.223490, 36.710369>,  <45.654907, 30.231703, 36.478180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715084, 30.223490, 36.710369>,  <45.815376, 30.209801, 37.097351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715084, 30.223490, 36.710369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414188, 0.907075, -0.075259,
		0.874975, -0.419577, -0.241608,
		-0.250733, 0.034221, -0.967451,
		45.639866, 30.233757, 36.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376266, 30.331615, 36.680172>,  <45.815376, 30.209801, 37.097351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376266, 30.331615, 36.680172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077202, 30.447294, 36.441051>,  <45.897762, 30.516703, 36.297581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077202, 30.447294, 36.441051>,  <46.376266, 30.331615, 36.680172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077202, 30.447294, 36.441051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377569, 0.925659, -0.024415,
		0.546297, -0.243965, -0.801275,
		-0.747664, 0.289199, -0.597798,
		45.852901, 30.534054, 36.261711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697647, 30.734011, 36.181549>,  <46.376266, 30.331615, 36.680172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697647, 30.734011, 36.181549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310879, 30.827133, 36.139866>,  <46.078815, 30.883007, 36.114857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310879, 30.827133, 36.139866>,  <46.697647, 30.734011, 36.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310879, 30.827133, 36.139866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242130, 0.966245, -0.088002,
		0.080204, -0.110323, -0.990654,
		-0.966923, 0.232809, -0.104209,
		46.020802, 30.896976, 36.108604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802666, 31.234337, 35.720402>,  <46.697647, 30.734011, 36.181549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802666, 31.234337, 35.720402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437618, 31.272902, 35.879318>,  <46.218590, 31.296040, 35.974667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437618, 31.272902, 35.879318>,  <46.802666, 31.234337, 35.720402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437618, 31.272902, 35.879318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099965, 0.994921, -0.011811,
		-0.396412, 0.028936, -0.917617,
		-0.912614, 0.096412, 0.397291,
		46.163834, 31.301825, 35.998505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501720, 31.702393, 35.264877>,  <46.802666, 31.234337, 35.720402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501720, 31.702393, 35.264877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278770, 31.684622, 35.596508>,  <46.145000, 31.673960, 35.795486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278770, 31.684622, 35.596508>,  <46.501720, 31.702393, 35.264877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278770, 31.684622, 35.596508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234041, 0.966480, -0.105551,
		-0.796595, -0.252868, -0.549086,
		-0.557371, -0.044427, 0.829074,
		46.111561, 31.671293, 35.845230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931084, 32.044346, 35.106712>,  <46.501720, 31.702393, 35.264877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931084, 32.044346, 35.106712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940609, 32.049946, 35.506561>,  <45.946323, 32.053307, 35.746471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940609, 32.049946, 35.506561>,  <45.931084, 32.044346, 35.106712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940609, 32.049946, 35.506561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232442, 0.972576, -0.008081,
		-0.972318, -0.232161, 0.026415,
		0.023814, 0.013997, 0.999618,
		45.947754, 32.054146, 35.806446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314541, 32.466709, 35.316620>,  <45.931084, 32.044346, 35.106712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314541, 32.466709, 35.316620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557449, 32.465038, 35.634415>,  <45.703194, 32.464035, 35.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557449, 32.465038, 35.634415>,  <45.314541, 32.466709, 35.316620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557449, 32.465038, 35.634415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184682, 0.971853, 0.146270,
		-0.772732, -0.235553, 0.589407,
		0.607271, -0.004175, 0.794484,
		45.739632, 32.463787, 35.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929573, 32.842510, 35.877991>,  <45.314541, 32.466709, 35.316620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929573, 32.842510, 35.877991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314835, 32.840225, 35.985550>,  <45.545990, 32.838856, 36.050087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314835, 32.840225, 35.985550>,  <44.929573, 32.842510, 35.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314835, 32.840225, 35.985550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057614, 0.972186, 0.227015,
		-0.262715, -0.234142, 0.936033,
		0.963152, -0.005712, 0.268898,
		45.603779, 32.838512, 36.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928616, 33.215267, 36.456047>,  <44.929573, 32.842510, 35.877991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928616, 33.215267, 36.456047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303185, 33.243893, 36.318642>,  <45.527924, 33.261070, 36.236198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303185, 33.243893, 36.318642>,  <44.928616, 33.215267, 36.456047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303185, 33.243893, 36.318642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013847, 0.985754, 0.167623,
		0.350613, -0.152208, 0.924069,
		0.936418, 0.071566, -0.343510,
		45.584110, 33.265362, 36.215588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242744, 33.775272, 36.798229>,  <44.928616, 33.215267, 36.456047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242744, 33.775272, 36.798229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470127, 33.723930, 36.473175>,  <45.606556, 33.693123, 36.278141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470127, 33.723930, 36.473175>,  <45.242744, 33.775272, 36.798229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470127, 33.723930, 36.473175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048236, 0.991255, -0.122828,
		0.821296, 0.030624, 0.569679,
		0.568459, -0.128357, -0.812637,
		45.640663, 33.685425, 36.229385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894657, 34.097313, 36.956543>,  <45.242744, 33.775272, 36.798229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894657, 34.097313, 36.956543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877892, 34.075432, 36.557495>,  <45.867832, 34.062302, 36.318066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877892, 34.075432, 36.557495>,  <45.894657, 34.097313, 36.956543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877892, 34.075432, 36.557495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318023, 0.945837, -0.065224,
		0.947156, -0.320000, -0.022246,
		-0.041912, -0.054702, -0.997623,
		45.865318, 34.059021, 36.258209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460640, 34.540882, 36.701420>,  <45.894657, 34.097313, 36.956543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460640, 34.540882, 36.701420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239960, 34.487705, 36.372070>,  <46.107552, 34.455799, 36.174461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239960, 34.487705, 36.372070>,  <46.460640, 34.540882, 36.701420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239960, 34.487705, 36.372070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139881, 0.958484, -0.248478,
		0.822227, -0.252261, -0.510204,
		-0.551704, -0.132938, -0.823378,
		46.074448, 34.447823, 36.125057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.712128, 34.842636, 36.201485>,  <46.460640, 34.540882, 36.701420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.712128, 34.842636, 36.201485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342384, 34.808857, 36.052658>,  <46.120541, 34.788589, 35.963364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342384, 34.808857, 36.052658>,  <46.712128, 34.842636, 36.201485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342384, 34.808857, 36.052658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158611, 0.801870, -0.576061,
		0.346998, -0.591500, -0.727819,
		-0.924356, -0.084452, -0.372066,
		46.065079, 34.783520, 35.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919697, 35.109524, 35.608208>,  <46.712128, 34.842636, 36.201485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919697, 35.109524, 35.608208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528252, 35.144650, 35.682629>,  <46.293385, 35.165726, 35.727280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528252, 35.144650, 35.682629>,  <46.919697, 35.109524, 35.608208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528252, 35.144650, 35.682629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025419, 0.845793, -0.532905,
		-0.204153, -0.526235, -0.825469,
		-0.978609, 0.087812, 0.186048,
		46.234669, 35.170994, 35.738441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591991, 35.360355, 35.017860>,  <46.919697, 35.109524, 35.608208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591991, 35.360355, 35.017860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353813, 35.461346, 35.322937>,  <46.210907, 35.521942, 35.505985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353813, 35.461346, 35.322937>,  <46.591991, 35.360355, 35.017860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353813, 35.461346, 35.322937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101769, 0.917984, -0.383338,
		-0.796926, -0.305875, -0.520913,
		-0.595443, 0.252480, 0.762694,
		46.175179, 35.537090, 35.551746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932430, 35.968369, 35.265621>,  <46.591991, 35.360355, 35.017860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932430, 35.968369, 35.265621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162083, 35.645824, 35.322407>,  <47.299873, 35.452297, 35.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162083, 35.645824, 35.322407>,  <46.932430, 35.968369, 35.265621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162083, 35.645824, 35.322407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757870, -0.589003, -0.280550,
		0.309843, 0.053482, -0.949282,
		0.574134, -0.806359, 0.141966,
		47.334324, 35.403915, 35.364998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288624, 35.395504, 34.819195>,  <46.932430, 35.968369, 35.265621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288624, 35.395504, 34.819195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679798, 35.364986, 34.896988>,  <47.914501, 35.346676, 34.943665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679798, 35.364986, 34.896988>,  <47.288624, 35.395504, 34.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679798, 35.364986, 34.896988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104625, 0.626933, 0.772016,
		-0.180831, -0.775329, 0.605116,
		0.977933, -0.076294, 0.194487,
		47.973179, 35.342098, 34.955334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.494335, 42.018379, 42.034313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 41.911354, 42.023857>,  <35.877899, 41.847137, 42.017582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 41.911354, 42.023857>,  <36.494335, 42.018379, 42.034313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109062, 41.911354, 42.023857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069857, -0.155188, -0.985412,
		0.259606, -0.950960, 0.168166,
		-0.963185, -0.267566, -0.026143,
		35.820107, 41.831085, 42.016014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467491, 41.438805, 41.674507>,  <36.494335, 42.018379, 42.034313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467491, 41.438805, 41.674507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074680, 41.514282, 41.676052>,  <35.838993, 41.559570, 41.676979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074680, 41.514282, 41.676052>,  <36.467491, 41.438805, 41.674507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074680, 41.514282, 41.676052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063810, -0.312698, -0.947707,
		-0.177623, -0.930921, 0.319119,
		-0.982028, 0.188698, 0.003860,
		35.780071, 41.570892, 41.677212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131504, 40.826897, 41.421165>,  <36.467491, 41.438805, 41.674507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131504, 40.826897, 41.421165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857975, 41.113594, 41.366516>,  <35.693859, 41.285614, 41.333729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857975, 41.113594, 41.366516>,  <36.131504, 40.826897, 41.421165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857975, 41.113594, 41.366516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250545, -0.406511, -0.878621,
		-0.685286, -0.566589, 0.457558,
		-0.683820, 0.716746, -0.136620,
		35.652828, 41.328617, 41.325531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485371, 40.529221, 41.413910>,  <36.131504, 40.826897, 41.421165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485371, 40.529221, 41.413910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457935, 40.873402, 41.211948>,  <35.441475, 41.079910, 41.090771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457935, 40.873402, 41.211948>,  <35.485371, 40.529221, 41.413910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457935, 40.873402, 41.211948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322299, -0.498064, -0.805018,
		-0.944150, 0.107514, 0.311484,
		-0.068589, 0.860449, -0.504899,
		35.437359, 41.131535, 41.060478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894508, 40.344326, 41.028332>,  <35.485371, 40.529221, 41.413910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894508, 40.344326, 41.028332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065235, 40.656574, 40.845703>,  <35.167671, 40.843925, 40.736126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065235, 40.656574, 40.845703>,  <34.894508, 40.344326, 41.028332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065235, 40.656574, 40.845703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062189, -0.478337, -0.875972,
		-0.902199, 0.402270, -0.155615,
		0.426813, 0.780623, -0.456572,
		35.193279, 40.890762, 40.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704487, 40.294868, 40.424137>,  <34.894508, 40.344326, 41.028332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704487, 40.294868, 40.424137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978676, 40.573761, 40.340233>,  <35.143188, 40.741096, 40.289890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978676, 40.573761, 40.340233>,  <34.704487, 40.294868, 40.424137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978676, 40.573761, 40.340233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085641, -0.363300, -0.927727,
		-0.723047, 0.617965, -0.308743,
		0.685470, 0.697232, -0.209760,
		35.184319, 40.782932, 40.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504116, 40.609238, 39.691208>,  <34.704487, 40.294868, 40.424137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504116, 40.609238, 39.691208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.890160, 40.654530, 39.785652>,  <35.121784, 40.681705, 39.842319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.890160, 40.654530, 39.785652>,  <34.504116, 40.609238, 39.691208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890160, 40.654530, 39.785652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261192, -0.480361, -0.837276,
		0.018611, 0.869731, -0.493175,
		0.965108, 0.113230, 0.236107,
		35.179691, 40.688499, 39.856483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810364, 40.942207, 39.151630>,  <34.504116, 40.609238, 39.691208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810364, 40.942207, 39.151630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113235, 40.759918, 39.338818>,  <35.294960, 40.650547, 39.451130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113235, 40.759918, 39.338818>,  <34.810364, 40.942207, 39.151630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113235, 40.759918, 39.338818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296168, -0.399031, -0.867789,
		0.582203, 0.795672, -0.167170,
		0.757181, -0.455720, 0.467970,
		35.340389, 40.623203, 39.479210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283981, 40.971848, 38.675804>,  <34.810364, 40.942207, 39.151630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283981, 40.971848, 38.675804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419529, 40.693554, 38.929138>,  <35.500858, 40.526577, 39.081139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419529, 40.693554, 38.929138>,  <35.283981, 40.971848, 38.675804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419529, 40.693554, 38.929138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332570, -0.541129, -0.772384,
		0.880094, 0.472367, 0.048010,
		0.338869, -0.695737, 0.633339,
		35.521191, 40.484833, 39.119141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940777, 40.815544, 38.475758>,  <35.283981, 40.971848, 38.675804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940777, 40.815544, 38.475758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.846142, 40.495342, 38.696018>,  <35.789360, 40.303223, 38.828175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.846142, 40.495342, 38.696018>,  <35.940777, 40.815544, 38.475758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846142, 40.495342, 38.696018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517690, -0.583455, -0.625761,
		0.822206, 0.137021, 0.552451,
		-0.236588, -0.800503, 0.550655,
		35.775166, 40.255192, 38.861214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538712, 40.465450, 38.692711>,  <35.940777, 40.815544, 38.475758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538712, 40.465450, 38.692711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239765, 40.199825, 38.684151>,  <36.060398, 40.040451, 38.679016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239765, 40.199825, 38.684151>,  <36.538712, 40.465450, 38.692711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239765, 40.199825, 38.684151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544605, -0.593835, -0.592255,
		0.380590, -0.454285, 0.805466,
		-0.747367, -0.664067, -0.021398,
		36.015556, 40.000607, 38.677731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920963, 39.937454, 38.655098>,  <36.538712, 40.465450, 38.692711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920963, 39.937454, 38.655098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561371, 39.790001, 38.560493>,  <36.345615, 39.701530, 38.503731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561371, 39.790001, 38.560493>,  <36.920963, 39.937454, 38.655098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561371, 39.790001, 38.560493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430120, -0.641217, -0.635482,
		0.082607, -0.673016, 0.735001,
		-0.898985, -0.368634, -0.236508,
		36.291676, 39.679409, 38.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936474, 39.243847, 38.693935>,  <36.920963, 39.937454, 38.655098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936474, 39.243847, 38.693935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630589, 39.288540, 38.440094>,  <36.447056, 39.315357, 38.287788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630589, 39.288540, 38.440094>,  <36.936474, 39.243847, 38.693935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630589, 39.288540, 38.440094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380782, -0.716137, -0.584939,
		-0.519823, -0.688958, 0.505094,
		-0.764715, 0.111734, -0.634607,
		36.401173, 39.322060, 38.249710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857285, 38.621849, 38.602848>,  <36.936474, 39.243847, 38.693935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857285, 38.621849, 38.602848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676685, 38.811249, 38.300339>,  <36.568325, 38.924889, 38.118832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676685, 38.811249, 38.300339>,  <36.857285, 38.621849, 38.602848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676685, 38.811249, 38.300339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340382, -0.692083, -0.636523,
		-0.824799, -0.544807, 0.151299,
		-0.451494, 0.473504, -0.756272,
		36.541237, 38.953300, 38.073456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419724, 38.085537, 38.254139>,  <36.857285, 38.621849, 38.602848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419724, 38.085537, 38.254139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496593, 38.359383, 37.972893>,  <36.542717, 38.523689, 37.804146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496593, 38.359383, 37.972893>,  <36.419724, 38.085537, 38.254139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496593, 38.359383, 37.972893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294647, -0.723665, -0.624092,
		-0.936083, -0.087237, -0.340790,
		0.192174, 0.684615, -0.703115,
		36.554245, 38.564766, 37.761959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079193, 37.862907, 37.642281>,  <36.419724, 38.085537, 38.254139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079193, 37.862907, 37.642281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360455, 38.110527, 37.502369>,  <36.529213, 38.259098, 37.418423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360455, 38.110527, 37.502369>,  <36.079193, 37.862907, 37.642281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360455, 38.110527, 37.502369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200719, -0.644738, -0.737580,
		-0.682117, 0.448426, -0.577608,
		0.703156, 0.619053, -0.349779,
		36.571400, 38.296242, 37.397434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888599, 37.870762, 36.870232>,  <36.079193, 37.862907, 37.642281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888599, 37.870762, 36.870232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269211, 37.975986, 36.933979>,  <36.497578, 38.039120, 36.972225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269211, 37.975986, 36.933979>,  <35.888599, 37.870762, 36.870232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269211, 37.975986, 36.933979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278449, -0.516721, -0.809608,
		-0.130627, 0.814739, -0.564922,
		0.951527, 0.263058, 0.159366,
		36.554668, 38.054905, 36.981789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181110, 37.981628, 36.161873>,  <35.888599, 37.870762, 36.870232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181110, 37.981628, 36.161873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480614, 37.919903, 36.419724>,  <36.660316, 37.882866, 36.574436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480614, 37.919903, 36.419724>,  <36.181110, 37.981628, 36.161873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480614, 37.919903, 36.419724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548338, -0.402186, -0.733193,
		0.372404, 0.902460, -0.216523,
		0.748759, -0.154316, 0.644629,
		36.705242, 37.873608, 36.613113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765606, 38.323177, 35.871170>,  <36.181110, 37.981628, 36.161873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765606, 38.323177, 35.871170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901001, 38.033382, 36.111351>,  <36.982239, 37.859505, 36.255459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901001, 38.033382, 36.111351>,  <36.765606, 38.323177, 35.871170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901001, 38.033382, 36.111351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509631, -0.395281, -0.764218,
		0.791014, 0.564688, 0.235424,
		0.338486, -0.724487, 0.600455,
		37.002548, 37.816036, 36.291489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359268, 38.261883, 35.475883>,  <36.765606, 38.323177, 35.871170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359268, 38.261883, 35.475883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331924, 37.946358, 35.720211>,  <37.315517, 37.757042, 35.866810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331924, 37.946358, 35.720211>,  <37.359268, 38.261883, 35.475883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331924, 37.946358, 35.720211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554058, -0.539174, -0.634280,
		0.829667, 0.295076, 0.473902,
		-0.068355, -0.788811, 0.610824,
		37.311417, 37.709713, 35.903458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074936, 38.099514, 35.749191>,  <37.359268, 38.261883, 35.475883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074936, 38.099514, 35.749191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835564, 37.779331, 35.762821>,  <37.691940, 37.587223, 35.771000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835564, 37.779331, 35.762821>,  <38.074936, 38.099514, 35.749191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835564, 37.779331, 35.762821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739008, -0.567916, -0.362407,
		0.309440, -0.191694, 0.931397,
		-0.598427, -0.800453, 0.034073,
		37.656036, 37.539196, 35.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496323, 37.592846, 35.900936>,  <38.074936, 38.099514, 35.749191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496323, 37.592846, 35.900936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173210, 37.390236, 35.780319>,  <37.979343, 37.268669, 35.707951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173210, 37.390236, 35.780319>,  <38.496323, 37.592846, 35.900936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173210, 37.390236, 35.780319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586223, -0.636513, -0.501192,
		0.061932, -0.581622, 0.811099,
		-0.807779, -0.506525, -0.301540,
		37.930878, 37.238277, 35.689857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027309, 37.769272, 35.360458>,  <38.496323, 37.592846, 35.900936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027309, 37.769272, 35.360458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422363, 37.830326, 35.346146>,  <39.659397, 37.866959, 35.337559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422363, 37.830326, 35.346146>,  <39.027309, 37.769272, 35.360458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422363, 37.830326, 35.346146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074558, 0.658080, 0.749248,
		0.137908, -0.737315, 0.661323,
		0.987635, 0.152634, -0.035782,
		39.718655, 37.876118, 35.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226849, 37.611088, 36.096291>,  <39.027309, 37.769272, 35.360458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226849, 37.611088, 36.096291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493649, 37.860172, 35.932659>,  <39.653728, 38.009621, 35.834480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493649, 37.860172, 35.932659>,  <39.226849, 37.611088, 36.096291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493649, 37.860172, 35.932659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202108, 0.679694, 0.705102,
		0.717124, -0.387622, 0.579208,
		0.666997, 0.622708, -0.409084,
		39.693748, 38.046986, 35.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611450, 37.857502, 36.662891>,  <39.226849, 37.611088, 36.096291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611450, 37.857502, 36.662891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718521, 38.127483, 36.387856>,  <39.782764, 38.289474, 36.222832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718521, 38.127483, 36.387856>,  <39.611450, 37.857502, 36.662891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718521, 38.127483, 36.387856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155422, 0.674041, 0.722159,
		0.950890, -0.300173, 0.075523,
		0.267678, 0.674956, -0.687592,
		39.798824, 38.329971, 36.181580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257282, 38.129223, 36.910461>,  <39.611450, 37.857502, 36.662891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257282, 38.129223, 36.910461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091549, 38.395813, 36.662548>,  <39.992107, 38.555767, 36.513798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091549, 38.395813, 36.662548>,  <40.257282, 38.129223, 36.910461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091549, 38.395813, 36.662548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012022, 0.676924, 0.735955,
		0.910045, 0.312383, -0.272461,
		-0.414335, 0.666476, -0.619787,
		39.967247, 38.595757, 36.476612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646538, 38.734875, 37.012745>,  <40.257282, 38.129223, 36.910461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646538, 38.734875, 37.012745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322079, 38.875805, 36.826023>,  <40.127403, 38.960361, 36.713989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322079, 38.875805, 36.826023>,  <40.646538, 38.734875, 37.012745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322079, 38.875805, 36.826023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074519, 0.729403, 0.680013,
		0.580070, 0.586379, -0.565401,
		-0.811151, 0.352322, -0.466801,
		40.078732, 38.981503, 36.685982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736435, 39.420406, 36.899254>,  <40.646538, 38.734875, 37.012745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736435, 39.420406, 36.899254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343254, 39.347069, 36.893658>,  <40.107346, 39.303066, 36.890301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343254, 39.347069, 36.893658>,  <40.736435, 39.420406, 36.899254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343254, 39.347069, 36.893658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148870, 0.748863, 0.645788,
		-0.107921, 0.636861, -0.763388,
		-0.982950, -0.183340, -0.013992,
		40.048370, 39.292068, 36.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418640, 40.006432, 37.136497>,  <40.736435, 39.420406, 36.899254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418640, 40.006432, 37.136497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095356, 39.771378, 37.151878>,  <39.901386, 39.630344, 37.161106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095356, 39.771378, 37.151878>,  <40.418640, 40.006432, 37.136497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095356, 39.771378, 37.151878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413970, 0.613382, 0.672600,
		-0.418829, 0.527686, -0.739006,
		-0.808215, -0.587631, 0.038456,
		39.852890, 39.595089, 37.163414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880581, 40.511078, 37.066498>,  <40.418640, 40.006432, 37.136497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880581, 40.511078, 37.066498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752464, 40.172909, 37.237457>,  <39.675594, 39.970005, 37.340034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752464, 40.172909, 37.237457>,  <39.880581, 40.511078, 37.066498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752464, 40.172909, 37.237457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531478, 0.533839, 0.657683,
		-0.784184, -0.016504, -0.620309,
		-0.320291, -0.845425, 0.427400,
		39.656376, 39.919281, 37.365677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161411, 40.583763, 37.100864>,  <39.880581, 40.511078, 37.066498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161411, 40.583763, 37.100864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279099, 40.318298, 37.375961>,  <39.349712, 40.159019, 37.541019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279099, 40.318298, 37.375961>,  <39.161411, 40.583763, 37.100864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279099, 40.318298, 37.375961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467076, 0.527959, 0.709295,
		-0.833832, -0.529913, -0.154647,
		0.294217, -0.663665, 0.687739,
		39.367363, 40.119198, 37.582283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540234, 40.506413, 37.565174>,  <39.161411, 40.583763, 37.100864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540234, 40.506413, 37.565174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.836853, 40.345478, 37.779922>,  <39.014824, 40.248917, 37.908772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.836853, 40.345478, 37.779922>,  <38.540234, 40.506413, 37.565174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836853, 40.345478, 37.779922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481182, 0.238678, 0.843503,
		-0.467508, -0.883833, -0.016604,
		0.741553, -0.402334, 0.536868,
		39.059319, 40.224777, 37.940983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226398, 40.239273, 38.192490>,  <38.540234, 40.506413, 37.565174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226398, 40.239273, 38.192490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618973, 40.253666, 38.267849>,  <38.854515, 40.262302, 38.313065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618973, 40.253666, 38.267849>,  <38.226398, 40.239273, 38.192490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618973, 40.253666, 38.267849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184332, 0.448368, 0.874636,
		-0.053003, -0.893125, 0.446675,
		0.981434, 0.035978, 0.188396,
		38.913403, 40.264458, 38.324368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300148, 39.994816, 38.832161>,  <38.226398, 40.239273, 38.192490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300148, 39.994816, 38.832161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635319, 40.206264, 38.777847>,  <38.836422, 40.333134, 38.745258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635319, 40.206264, 38.777847>,  <38.300148, 39.994816, 38.832161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635319, 40.206264, 38.777847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114303, 0.413238, 0.903421,
		0.533686, -0.741476, 0.406685,
		0.837923, 0.528628, -0.135787,
		38.886696, 40.364853, 38.737110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754612, 39.762409, 39.315380>,  <38.300148, 39.994816, 38.832161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754612, 39.762409, 39.315380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861885, 40.134537, 39.215313>,  <38.926247, 40.357815, 39.155273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861885, 40.134537, 39.215313>,  <38.754612, 39.762409, 39.315380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861885, 40.134537, 39.215313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029412, 0.267470, 0.963117,
		0.962920, -0.250930, 0.099092,
		0.268179, 0.930319, -0.250172,
		38.942337, 40.413631, 39.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139702, 39.968361, 39.884308>,  <38.754612, 39.762409, 39.315380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139702, 39.968361, 39.884308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094975, 40.323277, 39.705330>,  <39.068138, 40.536228, 39.597942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094975, 40.323277, 39.705330>,  <39.139702, 39.968361, 39.884308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094975, 40.323277, 39.705330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279371, 0.404043, 0.871035,
		0.953650, 0.222401, 0.202704,
		-0.111818, 0.887292, -0.447448,
		39.061428, 40.589462, 39.571095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306492, 40.396866, 40.403965>,  <39.139702, 39.968361, 39.884308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306492, 40.396866, 40.403965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128311, 40.639557, 40.140614>,  <39.021404, 40.785172, 39.982605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128311, 40.639557, 40.140614>,  <39.306492, 40.396866, 40.403965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128311, 40.639557, 40.140614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249900, 0.621879, 0.742170,
		0.859723, 0.495129, -0.125396,
		-0.445451, 0.606724, -0.658376,
		38.994675, 40.821575, 39.943100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543495, 40.978977, 40.616047>,  <39.306492, 40.396866, 40.403965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543495, 40.978977, 40.616047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205311, 41.031048, 40.408875>,  <39.002399, 41.062290, 40.284573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205311, 41.031048, 40.408875>,  <39.543495, 40.978977, 40.616047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205311, 41.031048, 40.408875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363191, 0.570861, 0.736349,
		0.391521, 0.810661, -0.435362,
		-0.845461, 0.130177, -0.517929,
		38.951672, 41.070103, 40.253494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458210, 41.721664, 40.519306>,  <39.543495, 40.978977, 40.616047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458210, 41.721664, 40.519306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101719, 41.541523, 40.497776>,  <38.887825, 41.433437, 40.484859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101719, 41.541523, 40.497776>,  <39.458210, 41.721664, 40.519306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101719, 41.541523, 40.497776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346740, 0.600013, 0.720941,
		-0.292386, 0.661183, -0.690903,
		-0.891225, -0.450357, -0.053824,
		38.834351, 41.406418, 40.481628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076832, 42.145687, 40.904625>,  <39.458210, 41.721664, 40.519306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076832, 42.145687, 40.904625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834171, 41.829472, 40.871132>,  <38.688576, 41.639740, 40.851036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834171, 41.829472, 40.871132>,  <39.076832, 42.145687, 40.904625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834171, 41.829472, 40.871132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491388, 0.290110, 0.821203,
		-0.624905, 0.539331, -0.564460,
		-0.606656, -0.790543, -0.083730,
		38.652176, 41.592308, 40.846012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.216385, 42.423809, 41.108910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223946, 42.026875, 41.157768>,  <38.228481, 41.788715, 41.187084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223946, 42.026875, 41.157768>,  <38.216385, 42.423809, 41.108910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223946, 42.026875, 41.157768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489764, 0.097318, 0.866406,
		-0.871650, -0.076202, -0.484169,
		0.018903, -0.992332, 0.122148,
		38.229618, 41.729176, 41.194412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591385, 42.280758, 41.476543>,  <38.216385, 42.423809, 41.108910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591385, 42.280758, 41.476543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811619, 41.952736, 41.538975>,  <37.943760, 41.755920, 41.576435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811619, 41.952736, 41.538975>,  <37.591385, 42.280758, 41.476543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811619, 41.952736, 41.538975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301383, -0.020917, 0.953274,
		-0.778474, -0.571900, -0.258668,
		0.550588, -0.820057, 0.156078,
		37.976795, 41.706718, 41.585796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191849, 41.805065, 41.887218>,  <37.591385, 42.280758, 41.476543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191849, 41.805065, 41.887218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 41.689846, 41.938751>,  <37.799149, 41.620716, 41.969673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 41.689846, 41.938751>,  <37.191849, 41.805065, 41.887218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571411, 41.689846, 41.938751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163897, -0.101020, 0.981291,
		-0.269646, -0.952272, -0.143069,
		0.948909, -0.288050, 0.128835,
		37.856083, 41.603432, 41.977402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127892, 41.272778, 42.388912>,  <37.191849, 41.805065, 41.887218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127892, 41.272778, 42.388912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512375, 41.381290, 42.408821>,  <37.743065, 41.446400, 42.420765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512375, 41.381290, 42.408821>,  <37.127892, 41.272778, 42.388912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512375, 41.381290, 42.408821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090762, 0.140708, 0.985882,
		0.260449, -0.952159, 0.159873,
		0.961212, 0.271283, 0.049773,
		37.800739, 41.462673, 42.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445534, 40.844791, 42.860275>,  <37.127892, 41.272778, 42.388912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445534, 40.844791, 42.860275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652908, 41.185974, 42.835972>,  <37.777332, 41.390682, 42.821388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652908, 41.185974, 42.835972>,  <37.445534, 40.844791, 42.860275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652908, 41.185974, 42.835972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105014, 0.007008, 0.994446,
		0.848641, -0.521942, -0.085939,
		0.518441, 0.852952, -0.060758,
		37.808441, 41.441860, 42.817745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942997, 40.752926, 43.284660>,  <37.445534, 40.844791, 42.860275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942997, 40.752926, 43.284660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956490, 41.151722, 43.256721>,  <37.964584, 41.390999, 43.239960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956490, 41.151722, 43.256721>,  <37.942997, 40.752926, 43.284660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956490, 41.151722, 43.256721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030638, 0.068820, 0.997158,
		0.998961, -0.035773, -0.028225,
		0.033729, 0.996988, -0.069844,
		37.966610, 41.450817, 43.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194496, 40.882969, 43.964779>,  <37.942997, 40.752926, 43.284660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194496, 40.882969, 43.964779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070778, 41.232674, 43.815113>,  <37.996548, 41.442497, 43.725315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070778, 41.232674, 43.815113>,  <38.194496, 40.882969, 43.964779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070778, 41.232674, 43.815113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076346, 0.415016, 0.906605,
		0.947896, 0.251844, -0.195110,
		-0.309297, 0.874263, -0.374165,
		37.977989, 41.494953, 43.702862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661411, 41.361252, 44.134281>,  <38.194496, 40.882969, 43.964779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661411, 41.361252, 44.134281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316517, 41.553562, 44.070515>,  <38.109581, 41.668949, 44.032257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316517, 41.553562, 44.070515>,  <38.661411, 41.361252, 44.134281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316517, 41.553562, 44.070515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039954, 0.378301, 0.924820,
		0.504936, 0.791040, -0.345392,
		-0.862232, 0.480775, -0.159413,
		38.057846, 41.697796, 44.022690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725964, 42.141041, 44.244930>,  <38.661411, 41.361252, 44.134281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725964, 42.141041, 44.244930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341698, 42.051201, 44.310253>,  <38.111137, 41.997295, 44.349445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341698, 42.051201, 44.310253>,  <38.725964, 42.141041, 44.244930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341698, 42.051201, 44.310253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043786, 0.458201, 0.887770,
		-0.274221, 0.860003, -0.430345,
		-0.960669, -0.224602, 0.163305,
		38.053497, 41.983822, 44.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411430, 42.811096, 44.554790>,  <38.725964, 42.141041, 44.244930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411430, 42.811096, 44.554790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156517, 42.519444, 44.654575>,  <38.003567, 42.344452, 44.714447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156517, 42.519444, 44.654575>,  <38.411430, 42.811096, 44.554790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156517, 42.519444, 44.654575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051612, 0.363374, 0.930213,
		-0.768896, 0.579937, -0.269206,
		-0.637287, -0.729131, 0.249465,
		37.965332, 42.300705, 44.729416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096760, 43.164619, 45.019970>,  <38.411430, 42.811096, 44.554790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096760, 43.164619, 45.019970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981907, 42.788811, 45.094654>,  <37.912994, 42.563328, 45.139465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981907, 42.788811, 45.094654>,  <38.096760, 43.164619, 45.019970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981907, 42.788811, 45.094654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084657, 0.219045, 0.972035,
		-0.954144, 0.263292, -0.142431,
		-0.287128, -0.939519, 0.186711,
		37.895767, 42.506954, 45.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503170, 43.192291, 45.459816>,  <38.096760, 43.164619, 45.019970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503170, 43.192291, 45.459816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647087, 42.822929, 45.513287>,  <37.733437, 42.601311, 45.545368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647087, 42.822929, 45.513287>,  <37.503170, 43.192291, 45.459816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647087, 42.822929, 45.513287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212643, 0.058344, 0.975387,
		-0.908477, -0.379365, -0.175364,
		0.359796, -0.923406, 0.133673,
		37.755028, 42.545906, 45.553391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009171, 42.757584, 45.759167>,  <37.503170, 43.192291, 45.459816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009171, 42.757584, 45.759167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357346, 42.584225, 45.852554>,  <37.566250, 42.480209, 45.908585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357346, 42.584225, 45.852554>,  <37.009171, 42.757584, 45.759167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357346, 42.584225, 45.852554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311707, -0.118158, 0.942803,
		-0.381025, -0.893422, -0.237943,
		0.870436, -0.433400, 0.233465,
		37.618477, 42.454205, 45.922592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909260, 42.537334, 46.372299>,  <37.009171, 42.757584, 45.759167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909260, 42.537334, 46.372299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298656, 42.448406, 46.350792>,  <37.532295, 42.395050, 46.337887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298656, 42.448406, 46.350792>,  <36.909260, 42.537334, 46.372299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298656, 42.448406, 46.350792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045011, -0.044279, 0.998005,
		-0.224259, -0.973968, -0.033098,
		0.973490, -0.222321, -0.053769,
		37.590702, 42.381710, 46.334660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981857, 41.836292, 46.778938>,  <36.909260, 42.537334, 46.372299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981857, 41.836292, 46.778938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325123, 42.041374, 46.768452>,  <37.531082, 42.164425, 46.762161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325123, 42.041374, 46.768452>,  <36.981857, 41.836292, 46.778938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325123, 42.041374, 46.768452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103737, -0.123167, 0.986949,
		0.502788, -0.849682, -0.158884,
		0.858163, 0.512708, -0.026217,
		37.582573, 42.195187, 46.760586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552017, 41.451927, 47.181625>,  <36.981857, 41.836292, 46.778938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552017, 41.451927, 47.181625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650177, 41.838509, 47.151295>,  <37.709072, 42.070457, 47.133099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650177, 41.838509, 47.151295>,  <37.552017, 41.451927, 47.181625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650177, 41.838509, 47.151295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008211, 0.080284, 0.996738,
		0.969387, -0.243977, 0.027637,
		0.245400, 0.966452, -0.075823,
		37.723797, 42.128445, 47.128548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090916, 41.566410, 47.643013>,  <37.552017, 41.451927, 47.181625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090916, 41.566410, 47.643013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903095, 41.915695, 47.590813>,  <37.790401, 42.125267, 47.559494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903095, 41.915695, 47.590813>,  <38.090916, 41.566410, 47.643013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903095, 41.915695, 47.590813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073418, 0.185914, 0.979819,
		0.879848, 0.450493, -0.151405,
		-0.469550, 0.873208, -0.130502,
		37.762230, 42.177658, 47.551662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469933, 41.980640, 48.131500>,  <38.090916, 41.566410, 47.643013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469933, 41.980640, 48.131500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150356, 42.198647, 48.029793>,  <37.958611, 42.329453, 47.968769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150356, 42.198647, 48.029793>,  <38.469933, 41.980640, 48.131500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150356, 42.198647, 48.029793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045506, 0.366796, 0.929188,
		0.599690, 0.753934, -0.268246,
		-0.798937, 0.545018, -0.254273,
		37.910675, 42.362152, 47.953510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681179, 42.631012, 48.315525>,  <38.469933, 41.980640, 48.131500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681179, 42.631012, 48.315525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284672, 42.580898, 48.299042>,  <38.046768, 42.550831, 48.289154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284672, 42.580898, 48.299042>,  <38.681179, 42.631012, 48.315525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284672, 42.580898, 48.299042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086134, 0.378389, 0.921631,
		-0.099870, 0.917130, -0.385874,
		-0.991265, -0.125280, -0.041206,
		37.987293, 42.543316, 48.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454033, 43.079334, 48.755791>,  <38.681179, 42.631012, 48.315525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454033, 43.079334, 48.755791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136322, 42.836319, 48.754265>,  <37.945694, 42.690510, 48.753349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136322, 42.836319, 48.754265>,  <38.454033, 43.079334, 48.755791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136322, 42.836319, 48.754265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047033, 0.055230, 0.997365,
		-0.605730, 0.792365, -0.072443,
		-0.794279, -0.607542, -0.003813,
		37.898037, 42.654057, 48.753120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998768, 43.357708, 49.176720>,  <38.454033, 43.079334, 48.755791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998768, 43.357708, 49.176720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877499, 42.976578, 49.182617>,  <37.804737, 42.747902, 49.186157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877499, 42.976578, 49.182617>,  <37.998768, 43.357708, 49.176720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877499, 42.976578, 49.182617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128272, 0.056134, 0.990149,
		-0.944264, 0.298291, -0.139239,
		-0.303169, -0.952823, 0.014743,
		37.786549, 42.690731, 49.187038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268711, 43.243923, 49.354458>,  <37.998768, 43.357708, 49.176720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268711, 43.243923, 49.354458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483894, 42.932487, 49.483704>,  <37.613003, 42.745625, 49.561253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483894, 42.932487, 49.483704>,  <37.268711, 43.243923, 49.354458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483894, 42.932487, 49.483704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206299, 0.250055, 0.945999,
		-0.817341, -0.575563, -0.026103,
		0.537954, -0.778588, 0.323118,
		37.645279, 42.698910, 49.580639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338772, 43.934422, 49.327911>,  <37.268711, 43.243923, 49.354458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338772, 43.934422, 49.327911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967972, 43.935608, 49.177891>,  <36.745491, 43.936321, 49.087879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967972, 43.935608, 49.177891>,  <37.338772, 43.934422, 49.327911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967972, 43.935608, 49.177891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220550, -0.813128, 0.538684,
		-0.303366, 0.582077, 0.754424,
		-0.926999, 0.002970, -0.375053,
		36.689873, 43.936501, 49.065376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750694, 43.748585, 49.896725>,  <37.338772, 43.934422, 49.327911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750694, 43.748585, 49.896725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643906, 43.666195, 49.520149>,  <36.579830, 43.616760, 49.294205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643906, 43.666195, 49.520149>,  <36.750694, 43.748585, 49.896725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643906, 43.666195, 49.520149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234724, -0.933575, 0.270820,
		-0.934681, 0.293280, 0.200895,
		-0.266976, -0.205975, -0.941434,
		36.563812, 43.604401, 49.237720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086021, 44.030602, 49.467777>,  <36.750694, 43.748585, 49.896725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086021, 44.030602, 49.467777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701023, 44.009407, 49.574200>,  <35.470024, 43.996689, 49.638054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701023, 44.009407, 49.574200>,  <36.086021, 44.030602, 49.467777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701023, 44.009407, 49.574200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201122, -0.518775, -0.830917,
		0.182053, -0.853267, 0.488664,
		-0.962500, -0.052990, 0.266056,
		35.412273, 43.993511, 49.654015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879124, 43.392937, 49.443710>,  <36.086021, 44.030602, 49.467777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879124, 43.392937, 49.443710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524723, 43.574116, 49.404041>,  <35.312084, 43.682823, 49.380241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524723, 43.574116, 49.404041>,  <35.879124, 43.392937, 49.443710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524723, 43.574116, 49.404041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227535, -0.611067, -0.758172,
		-0.404013, -0.649178, 0.644470,
		-0.886003, 0.452950, -0.099168,
		35.258923, 43.710003, 49.374290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418793, 42.891727, 49.248138>,  <35.879124, 43.392937, 49.443710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418793, 42.891727, 49.248138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222588, 43.221691, 49.135761>,  <35.104866, 43.419670, 49.068336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222588, 43.221691, 49.135761>,  <35.418793, 42.891727, 49.248138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222588, 43.221691, 49.135761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255441, -0.444334, -0.858672,
		-0.833156, -0.349424, 0.428665,
		-0.490511, 0.824906, -0.280943,
		35.075436, 43.469162, 49.051479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765636, 42.717445, 49.051865>,  <35.418793, 42.891727, 49.248138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765636, 42.717445, 49.051865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824795, 43.060623, 48.855068>,  <34.860291, 43.266529, 48.736992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824795, 43.060623, 48.855068>,  <34.765636, 42.717445, 49.051865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824795, 43.060623, 48.855068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060173, -0.488730, -0.870358,
		-0.987171, 0.158324, -0.020654,
		0.147893, 0.857949, -0.491987,
		34.869164, 43.318008, 48.707474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317379, 42.704296, 48.495312>,  <34.765636, 42.717445, 49.051865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317379, 42.704296, 48.495312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571762, 42.993515, 48.387409>,  <34.724392, 43.167046, 48.322670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571762, 42.993515, 48.387409>,  <34.317379, 42.704296, 48.495312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571762, 42.993515, 48.387409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094281, -0.419719, -0.902744,
		-0.765946, 0.548672, -0.335091,
		0.635955, 0.723046, -0.269753,
		34.762550, 43.210430, 48.306484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092079, 43.007874, 47.900883>,  <34.317379, 42.704296, 48.495312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092079, 43.007874, 47.900883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477039, 43.114994, 47.882729>,  <34.708015, 43.179264, 47.871834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477039, 43.114994, 47.882729>,  <34.092079, 43.007874, 47.900883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477039, 43.114994, 47.882729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016637, -0.108672, -0.993938,
		-0.271109, 0.957326, -0.100131,
		0.962405, 0.267799, -0.045389,
		34.765762, 43.195335, 47.869110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183941, 43.488083, 47.255024>,  <34.092079, 43.007874, 47.900883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183941, 43.488083, 47.255024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545944, 43.339504, 47.337955>,  <34.763145, 43.250355, 47.387714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545944, 43.339504, 47.337955>,  <34.183941, 43.488083, 47.255024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545944, 43.339504, 47.337955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163071, -0.147220, -0.975569,
		0.392897, 0.916707, -0.072663,
		0.905008, -0.371449, 0.207331,
		34.817448, 43.228069, 47.400154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534950, 43.621334, 46.619335>,  <34.183941, 43.488083, 47.255024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534950, 43.621334, 46.619335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771832, 43.359711, 46.807590>,  <34.913960, 43.202736, 46.920544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771832, 43.359711, 46.807590>,  <34.534950, 43.621334, 46.619335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771832, 43.359711, 46.807590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261742, -0.396252, -0.880043,
		0.762091, 0.644351, -0.063467,
		0.592206, -0.654061, 0.470634,
		34.949493, 43.163494, 46.948780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193069, 43.604702, 46.201614>,  <34.534950, 43.621334, 46.619335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193069, 43.604702, 46.201614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153812, 43.253757, 46.389488>,  <35.130257, 43.043190, 46.502213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153812, 43.253757, 46.389488>,  <35.193069, 43.604702, 46.201614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153812, 43.253757, 46.389488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448607, -0.460298, -0.766079,
		0.888324, 0.135520, 0.438765,
		-0.098144, -0.877360, 0.469689,
		35.124371, 42.990551, 46.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806026, 43.242382, 46.115326>,  <35.193069, 43.604702, 46.201614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806026, 43.242382, 46.115326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539062, 42.954704, 46.192600>,  <35.378883, 42.782097, 46.238964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539062, 42.954704, 46.192600>,  <35.806026, 43.242382, 46.115326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539062, 42.954704, 46.192600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283528, -0.485287, -0.827108,
		0.688601, -0.497250, 0.527799,
		-0.667413, -0.719193, 0.193185,
		35.338837, 42.738945, 46.250557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177608, 42.711781, 45.819588>,  <35.806026, 43.242382, 46.115326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177608, 42.711781, 45.819588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809917, 42.571552, 45.891281>,  <35.589302, 42.487415, 45.934296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809917, 42.571552, 45.891281>,  <36.177608, 42.711781, 45.819588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809917, 42.571552, 45.891281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002145, -0.450751, -0.892647,
		0.393721, -0.820930, 0.413591,
		-0.919228, -0.350567, 0.179231,
		35.534149, 42.466381, 45.945049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216061, 42.016689, 45.618553>,  <36.177608, 42.711781, 45.819588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216061, 42.016689, 45.618553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831642, 42.126358, 45.604538>,  <35.600990, 42.192158, 45.596130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831642, 42.126358, 45.604538>,  <36.216061, 42.016689, 45.618553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831642, 42.126358, 45.604538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071679, -0.369641, -0.926406,
		-0.266945, -0.887804, 0.374893,
		-0.961043, 0.274171, -0.035036,
		35.543331, 42.208611, 45.594028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794502, 41.513653, 45.402466>,  <36.216061, 42.016689, 45.618553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794502, 41.513653, 45.402466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556732, 41.823097, 45.314671>,  <35.414070, 42.008766, 45.261993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556732, 41.823097, 45.314671>,  <35.794502, 41.513653, 45.402466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556732, 41.823097, 45.314671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043745, -0.241436, -0.969430,
		-0.802959, -0.585857, 0.109674,
		-0.594427, 0.773615, -0.219492,
		35.378403, 42.055183, 45.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222904, 41.229309, 44.936718>,  <35.794502, 41.513653, 45.402466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222904, 41.229309, 44.936718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207176, 41.624279, 44.875477>,  <35.197739, 41.861263, 44.838734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207176, 41.624279, 44.875477>,  <35.222904, 41.229309, 44.936718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207176, 41.624279, 44.875477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049004, -0.151131, -0.987298,
		-0.998024, -0.046320, -0.042446,
		-0.039316, 0.987428, -0.153102,
		35.195381, 41.920509, 44.829548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654308, 41.239922, 44.532173>,  <35.222904, 41.229309, 44.936718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654308, 41.239922, 44.532173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873222, 41.574146, 44.512909>,  <35.004570, 41.774681, 44.501350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873222, 41.574146, 44.512909>,  <34.654308, 41.239922, 44.532173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873222, 41.574146, 44.512909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092740, -0.117728, -0.988706,
		-0.831794, 0.536635, -0.141921,
		0.547282, 0.835562, -0.048158,
		35.037407, 41.824814, 44.498463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451355, 41.534367, 43.947437>,  <34.654308, 41.239922, 44.532173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451355, 41.534367, 43.947437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795437, 41.729538, 44.006725>,  <35.001884, 41.846642, 44.042297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795437, 41.729538, 44.006725>,  <34.451355, 41.534367, 43.947437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795437, 41.729538, 44.006725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168826, 0.001785, -0.985644,
		-0.481192, 0.872880, -0.080840,
		0.860205, 0.487932, 0.148223,
		35.053497, 41.875919, 44.051193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475304, 42.165401, 43.490990>,  <34.451355, 41.534367, 43.947437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475304, 42.165401, 43.490990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854511, 42.062443, 43.565823>,  <35.082035, 42.000668, 43.610722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854511, 42.062443, 43.565823>,  <34.475304, 42.165401, 43.490990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854511, 42.062443, 43.565823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247881, 0.228728, -0.941403,
		0.199520, 0.938846, 0.280642,
		0.948023, -0.257395, 0.187086,
		35.138920, 41.985226, 43.621948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807076, 42.592609, 43.063854>,  <34.475304, 42.165401, 43.490990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807076, 42.592609, 43.063854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056667, 42.292618, 43.151657>,  <35.206421, 42.112625, 43.204338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056667, 42.292618, 43.151657>,  <34.807076, 42.592609, 43.063854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056667, 42.292618, 43.151657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237553, -0.085561, -0.967599,
		0.744459, 0.655907, 0.124771,
		0.623979, -0.749977, 0.219509,
		35.243862, 42.067623, 43.217510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431152, 42.866829, 42.702515>,  <34.807076, 42.592609, 43.063854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431152, 42.866829, 42.702515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440414, 42.468960, 42.742676>,  <35.445972, 42.230236, 42.766773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440414, 42.468960, 42.742676>,  <35.431152, 42.866829, 42.702515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440414, 42.468960, 42.742676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481164, -0.076945, -0.873247,
		0.876324, 0.068531, 0.476822,
		0.023155, -0.994677, 0.100403,
		35.447361, 42.170555, 42.772797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944786, 42.674862, 42.316757>,  <35.431152, 42.866829, 42.702515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944786, 42.674862, 42.316757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735214, 42.336876, 42.359695>,  <35.609470, 42.134083, 42.385456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735214, 42.336876, 42.359695>,  <35.944786, 42.674862, 42.316757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735214, 42.336876, 42.359695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198466, -0.243663, -0.949336,
		0.828314, -0.476085, 0.295361,
		-0.523934, -0.844968, 0.107343,
		35.578033, 42.083385, 42.391899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.457600, 26.473043, 33.015457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085136, 26.617523, 33.035393>,  <42.861660, 26.704212, 33.047356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085136, 26.617523, 33.035393>,  <43.457600, 26.473043, 33.015457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085136, 26.617523, 33.035393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359273, 0.885550, 0.294489,
		0.062235, 0.292121, -0.954354,
		-0.931155, 0.361201, 0.049839,
		42.805790, 26.725883, 33.050346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364700, 27.050989, 32.528221>,  <43.457600, 26.473043, 33.015457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364700, 27.050989, 32.528221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061832, 27.107634, 32.783295>,  <42.880112, 27.141621, 32.936337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061832, 27.107634, 32.783295>,  <43.364700, 27.050989, 32.528221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061832, 27.107634, 32.783295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290845, 0.947199, 0.134997,
		-0.584893, 0.287682, -0.758380,
		-0.757172, 0.141612, 0.637680,
		42.834682, 27.150118, 32.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244572, 27.731411, 32.503365>,  <43.364700, 27.050989, 32.528221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244572, 27.731411, 32.503365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041779, 27.659117, 32.840481>,  <42.920101, 27.615740, 33.042751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041779, 27.659117, 32.840481>,  <43.244572, 27.731411, 32.503365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041779, 27.659117, 32.840481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157581, 0.941857, 0.296771,
		-0.847427, 0.283267, -0.449028,
		-0.506986, -0.180733, 0.842793,
		42.889683, 27.604897, 33.093319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679878, 28.289194, 32.582478>,  <43.244572, 27.731411, 32.503365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679878, 28.289194, 32.582478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740273, 28.136793, 32.947342>,  <42.776508, 28.045353, 33.166260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740273, 28.136793, 32.947342>,  <42.679878, 28.289194, 32.582478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740273, 28.136793, 32.947342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035863, 0.920022, 0.390221,
		-0.987885, -0.091631, 0.125246,
		0.150985, -0.381002, 0.912163,
		42.785568, 28.022493, 33.220989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183285, 28.701853, 32.994755>,  <42.679878, 28.289194, 32.582478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183285, 28.701853, 32.994755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440971, 28.529879, 33.247784>,  <42.595581, 28.426695, 33.399601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440971, 28.529879, 33.247784>,  <42.183285, 28.701853, 32.994755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440971, 28.529879, 33.247784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011504, 0.832411, 0.554040,
		-0.764759, -0.349643, 0.541196,
		0.644213, -0.429933, 0.632571,
		42.634235, 28.400898, 33.437553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898743, 28.779648, 33.684860>,  <42.183285, 28.701853, 32.994755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898743, 28.779648, 33.684860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297085, 28.744848, 33.695454>,  <42.536091, 28.723969, 33.701809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297085, 28.744848, 33.695454>,  <41.898743, 28.779648, 33.684860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297085, 28.744848, 33.695454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055194, 0.809664, 0.584293,
		-0.072278, -0.580410, 0.811110,
		0.995856, -0.087000, 0.026486,
		42.595840, 28.718748, 33.703400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071220, 29.133764, 34.245815>,  <41.898743, 28.779648, 33.684860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071220, 29.133764, 34.245815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407040, 29.084240, 34.034218>,  <42.608532, 29.054525, 33.907261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407040, 29.084240, 34.034218>,  <42.071220, 29.133764, 34.245815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407040, 29.084240, 34.034218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372905, 0.839425, 0.395357,
		0.395098, -0.529184, 0.750907,
		0.839547, -0.123812, -0.528991,
		42.658905, 29.047096, 33.875519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760796, 29.367455, 34.709801>,  <42.071220, 29.133764, 34.245815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760796, 29.367455, 34.709801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852581, 29.348536, 34.320934>,  <42.907654, 29.337185, 34.087616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852581, 29.348536, 34.320934>,  <42.760796, 29.367455, 34.709801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852581, 29.348536, 34.320934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549990, 0.830371, 0.089417,
		0.803030, -0.555200, 0.216553,
		0.229464, -0.047298, -0.972167,
		42.921421, 29.334347, 34.029285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523300, 29.367346, 34.772686>,  <42.760796, 29.367455, 34.709801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523300, 29.367346, 34.772686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393627, 29.480600, 34.411636>,  <43.315823, 29.548553, 34.195007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393627, 29.480600, 34.411636>,  <43.523300, 29.367346, 34.772686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393627, 29.480600, 34.411636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404100, 0.904171, 0.138485,
		0.855340, -0.319857, -0.407536,
		-0.324187, 0.283137, -0.902627,
		43.296371, 29.565542, 34.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000332, 29.752611, 34.588669>,  <43.523300, 29.367346, 34.772686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000332, 29.752611, 34.588669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688568, 29.867237, 34.365814>,  <43.501511, 29.936012, 34.232101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688568, 29.867237, 34.365814>,  <44.000332, 29.752611, 34.588669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688568, 29.867237, 34.365814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213329, 0.957513, 0.194062,
		0.589075, 0.032401, -0.807428,
		-0.779411, 0.286565, -0.557135,
		43.454746, 29.953207, 34.198673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285103, 30.213427, 34.205074>,  <44.000332, 29.752611, 34.588669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285103, 30.213427, 34.205074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901211, 30.305603, 34.140793>,  <43.670876, 30.360909, 34.102226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901211, 30.305603, 34.140793>,  <44.285103, 30.213427, 34.205074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901211, 30.305603, 34.140793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189905, 0.953661, 0.233380,
		0.207035, 0.193463, -0.959014,
		-0.959725, 0.230439, -0.160702,
		43.613293, 30.374735, 34.092583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243168, 30.752264, 33.710468>,  <44.285103, 30.213427, 34.205074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243168, 30.752264, 33.710468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883694, 30.796427, 33.880257>,  <43.668011, 30.822926, 33.982128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883694, 30.796427, 33.880257>,  <44.243168, 30.752264, 33.710468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883694, 30.796427, 33.880257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271876, 0.899661, 0.341604,
		-0.344161, 0.422398, -0.838530,
		-0.898686, 0.110409, 0.424468,
		43.614086, 30.829550, 34.007599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041298, 31.340527, 33.480896>,  <44.243168, 30.752264, 33.710468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041298, 31.340527, 33.480896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810925, 31.296721, 33.804947>,  <43.672699, 31.270437, 33.999378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810925, 31.296721, 33.804947>,  <44.041298, 31.340527, 33.480896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810925, 31.296721, 33.804947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131272, 0.965737, 0.223876,
		-0.806885, 0.235285, -0.541827,
		-0.575937, -0.109515, 0.810125,
		43.638142, 31.263866, 34.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628635, 31.890871, 33.465454>,  <44.041298, 31.340527, 33.480896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628635, 31.890871, 33.465454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605400, 31.780340, 33.849178>,  <43.591461, 31.714022, 34.079411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605400, 31.780340, 33.849178>,  <43.628635, 31.890871, 33.465454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605400, 31.780340, 33.849178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115931, 0.956295, 0.268441,
		-0.991557, -0.095621, -0.087583,
		-0.058086, -0.276328, 0.959306,
		43.587975, 31.697441, 34.136971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196346, 32.317226, 33.762383>,  <43.628635, 31.890871, 33.465454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196346, 32.317226, 33.762383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380184, 32.161793, 34.081825>,  <43.490486, 32.068531, 34.273491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380184, 32.161793, 34.081825>,  <43.196346, 32.317226, 33.762383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380184, 32.161793, 34.081825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063425, 0.911266, 0.406905,
		-0.885863, -0.136358, 0.443456,
		0.459591, -0.388588, 0.798608,
		43.518063, 32.045216, 34.321407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831768, 32.560741, 34.263577>,  <43.196346, 32.317226, 33.762383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831768, 32.560741, 34.263577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170589, 32.446621, 34.442955>,  <43.373882, 32.378151, 34.550583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170589, 32.446621, 34.442955>,  <42.831768, 32.560741, 34.263577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170589, 32.446621, 34.442955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080133, 0.902631, 0.422889,
		-0.525428, -0.322276, 0.787441,
		0.847057, -0.285297, 0.448443,
		43.424706, 32.361031, 34.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731567, 32.798748, 34.975327>,  <42.831768, 32.560741, 34.263577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731567, 32.798748, 34.975327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126919, 32.749870, 34.939144>,  <43.364128, 32.720543, 34.917435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126919, 32.749870, 34.939144>,  <42.731567, 32.798748, 34.975327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126919, 32.749870, 34.939144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151733, 0.829811, 0.537020,
		0.009439, -0.544503, 0.838706,
		0.988376, -0.122190, -0.090451,
		43.423431, 32.713215, 34.912010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041958, 33.032970, 35.610317>,  <42.731567, 32.798748, 34.975327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041958, 33.032970, 35.610317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350880, 33.044937, 35.356499>,  <43.536232, 33.052116, 35.204208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350880, 33.044937, 35.356499>,  <43.041958, 33.032970, 35.610317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350880, 33.044937, 35.356499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351788, 0.811600, 0.466425,
		0.528956, -0.583448, 0.616275,
		0.772303, 0.029920, -0.634549,
		43.582569, 33.053913, 35.166134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617844, 33.359653, 36.019375>,  <43.041958, 33.032970, 35.610317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617844, 33.359653, 36.019375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723946, 33.395992, 35.635418>,  <43.787605, 33.417793, 35.405045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723946, 33.395992, 35.635418>,  <43.617844, 33.359653, 36.019375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723946, 33.395992, 35.635418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327282, 0.927960, 0.178262,
		0.906933, -0.361439, 0.216411,
		0.265251, 0.090844, -0.959890,
		43.803520, 33.423244, 35.347450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118549, 33.846416, 36.008484>,  <43.617844, 33.359653, 36.019375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118549, 33.846416, 36.008484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038464, 33.837238, 35.616692>,  <43.990414, 33.831730, 35.381615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038464, 33.837238, 35.616692>,  <44.118549, 33.846416, 36.008484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038464, 33.837238, 35.616692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263931, 0.961505, -0.076474,
		0.943533, -0.273828, -0.186450,
		-0.200214, -0.022945, -0.979484,
		43.978401, 33.830353, 35.322845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654751, 34.007416, 35.525047>,  <44.118549, 33.846416, 36.008484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654751, 34.007416, 35.525047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320408, 34.097301, 35.324707>,  <44.119804, 34.151234, 35.204502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320408, 34.097301, 35.324707>,  <44.654751, 34.007416, 35.525047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320408, 34.097301, 35.324707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240345, 0.970087, 0.034134,
		0.493541, -0.091846, -0.864859,
		-0.835854, 0.224711, -0.500853,
		44.069653, 34.164715, 35.174450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877129, 34.785103, 35.544941>,  <44.654751, 34.007416, 35.525047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877129, 34.785103, 35.544941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247833, 34.821140, 35.690815>,  <45.470257, 34.842762, 35.778339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247833, 34.821140, 35.690815>,  <44.877129, 34.785103, 35.544941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247833, 34.821140, 35.690815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153274, -0.977016, -0.148142,
		0.342955, 0.193189, -0.919272,
		0.926763, 0.090095, 0.364683,
		45.525864, 34.848167, 35.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369621, 34.406418, 35.057827>,  <44.877129, 34.785103, 35.544941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369621, 34.406418, 35.057827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554695, 34.408920, 35.412426>,  <45.665741, 34.410423, 35.625187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554695, 34.408920, 35.412426>,  <45.369621, 34.406418, 35.057827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554695, 34.408920, 35.412426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201384, -0.974575, -0.098228,
		0.863345, 0.223976, -0.452184,
		0.462688, 0.006258, 0.886499,
		45.693501, 34.410797, 35.678375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719097, 33.836964, 34.971188>,  <45.369621, 34.406418, 35.057827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719097, 33.836964, 34.971188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752445, 33.926754, 35.359550>,  <45.772453, 33.980629, 35.592567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752445, 33.926754, 35.359550>,  <45.719097, 33.836964, 34.971188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752445, 33.926754, 35.359550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146254, -0.966505, 0.210898,
		0.985728, 0.124416, -0.113410,
		0.083372, 0.224475, 0.970907,
		45.777458, 33.994095, 35.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359070, 33.493874, 35.175964>,  <45.719097, 33.836964, 34.971188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359070, 33.493874, 35.175964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.127216, 33.545605, 35.497784>,  <45.988106, 33.576645, 35.690876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.127216, 33.545605, 35.497784>,  <46.359070, 33.493874, 35.175964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127216, 33.545605, 35.497784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179839, -0.942679, 0.281096,
		0.794785, 0.307621, 0.523149,
		-0.579633, 0.129328, 0.804549,
		45.953327, 33.584404, 35.739147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788528, 33.403725, 35.829159>,  <46.359070, 33.493874, 35.175964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788528, 33.403725, 35.829159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.414471, 33.367489, 35.966148>,  <46.190037, 33.345749, 36.048344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.414471, 33.367489, 35.966148>,  <46.788528, 33.403725, 35.829159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414471, 33.367489, 35.966148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067965, -0.994671, -0.077520,
		0.347676, -0.049217, 0.936322,
		-0.935149, -0.090589, 0.342478,
		46.133926, 33.340313, 36.068893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888706, 32.894947, 36.330391>,  <46.788528, 33.403725, 35.829159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888706, 32.894947, 36.330391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497448, 32.889999, 36.247375>,  <46.262691, 32.887032, 36.197567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497448, 32.889999, 36.247375>,  <46.888706, 32.894947, 36.330391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497448, 32.889999, 36.247375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008337, -0.999759, 0.020300,
		-0.207744, 0.018126, 0.978015,
		-0.978148, -0.012371, -0.207542,
		46.204002, 32.886288, 36.185112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607304, 32.401646, 36.838009>,  <46.888706, 32.894947, 36.330391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607304, 32.401646, 36.838009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.337559, 32.430725, 36.544083>,  <46.175713, 32.448174, 36.367725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.337559, 32.430725, 36.544083>,  <46.607304, 32.401646, 36.838009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337559, 32.430725, 36.544083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118482, -0.992901, 0.010505,
		-0.728836, 0.094147, 0.678185,
		-0.674359, 0.072697, -0.734816,
		46.135250, 32.452534, 36.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037388, 32.132721, 37.098564>,  <46.607304, 32.401646, 36.838009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037388, 32.132721, 37.098564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998463, 32.112442, 36.700981>,  <45.975109, 32.100277, 36.462429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998463, 32.112442, 36.700981>,  <46.037388, 32.132721, 37.098564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998463, 32.112442, 36.700981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194126, -0.978553, 0.068914,
		-0.976138, 0.199660, 0.085384,
		-0.097312, -0.050694, -0.993962,
		45.969269, 32.097233, 36.402794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411560, 31.813089, 36.947983>,  <46.037388, 32.132721, 37.098564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411560, 31.813089, 36.947983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634537, 31.758778, 36.620369>,  <45.768322, 31.726191, 36.423801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634537, 31.758778, 36.620369>,  <45.411560, 31.813089, 36.947983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634537, 31.758778, 36.620369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252143, -0.967625, -0.011197,
		-0.791002, 0.212757, -0.573629,
		0.557440, -0.135780, -0.819038,
		45.801769, 31.718044, 36.374657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037685, 31.321619, 36.594471>,  <45.411560, 31.813089, 36.947983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037685, 31.321619, 36.594471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392620, 31.330839, 36.410252>,  <45.605579, 31.336370, 36.299721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392620, 31.330839, 36.410252>,  <45.037685, 31.321619, 36.594471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392620, 31.330839, 36.410252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134600, -0.942309, -0.306491,
		-0.441042, 0.333950, -0.833042,
		0.887336, 0.023048, -0.460547,
		45.658821, 31.337753, 36.272087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819572, 31.315792, 35.916279>,  <45.037685, 31.321619, 36.594471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819572, 31.315792, 35.916279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182850, 31.178646, 36.012299>,  <45.400818, 31.096357, 36.069912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182850, 31.178646, 36.012299>,  <44.819572, 31.315792, 35.916279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182850, 31.178646, 36.012299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250356, -0.904632, -0.344911,
		0.335416, 0.253148, -0.907421,
		0.908195, -0.342866, 0.240051,
		45.455307, 31.075787, 36.084312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910736, 30.878920, 35.433399>,  <44.819572, 31.315792, 35.916279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910736, 30.878920, 35.433399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170605, 30.766138, 35.715797>,  <45.326527, 30.698469, 35.885235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170605, 30.766138, 35.715797>,  <44.910736, 30.878920, 35.433399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170605, 30.766138, 35.715797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145950, -0.957663, -0.248154,
		0.746071, 0.058180, -0.663319,
		0.649674, -0.281952, 0.705994,
		45.365505, 30.681553, 35.927597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238239, 30.309525, 35.150482>,  <44.910736, 30.878920, 35.433399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238239, 30.309525, 35.150482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340321, 30.284540, 35.536430>,  <45.401569, 30.269550, 35.767998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340321, 30.284540, 35.536430>,  <45.238239, 30.309525, 35.150482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340321, 30.284540, 35.536430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086961, -0.995350, -0.041431,
		0.962969, -0.073333, -0.259447,
		0.255202, -0.062459, 0.964868,
		45.416882, 30.265802, 35.825890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797539, 29.925709, 35.180538>,  <45.238239, 30.309525, 35.150482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797539, 29.925709, 35.180538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.596767, 29.889791, 35.524632>,  <45.476303, 29.868240, 35.731087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.596767, 29.889791, 35.524632>,  <45.797539, 29.925709, 35.180538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596767, 29.889791, 35.524632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022756, -0.992881, -0.116920,
		0.864608, -0.078261, 0.496315,
		-0.501932, -0.089796, 0.860233,
		45.446186, 29.862852, 35.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871944, 29.204630, 35.411522>,  <45.797539, 29.925709, 35.180538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871944, 29.204630, 35.411522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588055, 29.318655, 35.669212>,  <45.417721, 29.387070, 35.823826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588055, 29.318655, 35.669212>,  <45.871944, 29.204630, 35.411522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588055, 29.318655, 35.669212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350464, -0.936153, 0.028138,
		0.611115, -0.205808, 0.764318,
		-0.709727, 0.285062, 0.644226,
		45.375137, 29.404173, 35.862480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896736, 28.618738, 35.763855>,  <45.871944, 29.204630, 35.411522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896736, 28.618738, 35.763855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542988, 28.796656, 35.820499>,  <45.330738, 28.903406, 35.854485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542988, 28.796656, 35.820499>,  <45.896736, 28.618738, 35.763855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542988, 28.796656, 35.820499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466471, -0.853320, -0.232917,
		0.017237, -0.272040, 0.962132,
		-0.884369, 0.444792, 0.141607,
		45.277676, 28.930094, 35.862980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574440, 28.092823, 36.069679>,  <45.896736, 28.618738, 35.763855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574440, 28.092823, 36.069679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287323, 28.345619, 35.952816>,  <45.115051, 28.497297, 35.882698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287323, 28.345619, 35.952816>,  <45.574440, 28.092823, 36.069679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287323, 28.345619, 35.952816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608864, -0.773300, -0.176893,
		-0.337722, 0.050913, 0.939868,
		-0.717794, 0.631993, -0.292159,
		45.071983, 28.535217, 35.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990685, 27.887306, 36.407734>,  <45.574440, 28.092823, 36.069679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990685, 27.887306, 36.407734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892159, 28.073734, 36.067825>,  <44.833042, 28.185591, 35.863880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892159, 28.073734, 36.067825>,  <44.990685, 27.887306, 36.407734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892159, 28.073734, 36.067825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577772, -0.774565, -0.257348,
		-0.778145, 0.427586, 0.460066,
		-0.246313, 0.466067, -0.849771,
		44.818264, 28.213554, 35.812897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296818, 27.875338, 36.384869>,  <44.990685, 27.887306, 36.407734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296818, 27.875338, 36.384869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353664, 27.987202, 36.005058>,  <44.387772, 28.054319, 35.777172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353664, 27.987202, 36.005058>,  <44.296818, 27.875338, 36.384869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353664, 27.987202, 36.005058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752860, -0.592254, -0.287117,
		-0.642654, 0.755662, 0.126376,
		0.142117, 0.279660, -0.949522,
		44.396301, 28.071100, 35.720203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556347, 28.172199, 36.056396>,  <44.296818, 27.875338, 36.384869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556347, 28.172199, 36.056396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801216, 28.067495, 35.757942>,  <43.948139, 28.004673, 35.578869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801216, 28.067495, 35.757942>,  <43.556347, 28.172199, 36.056396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801216, 28.067495, 35.757942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759415, -0.457517, -0.462565,
		-0.220291, 0.849800, -0.478864,
		0.612176, -0.261758, -0.746139,
		43.984871, 27.988968, 35.534100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148251, 28.229063, 35.465233>,  <43.556347, 28.172199, 36.056396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148251, 28.229063, 35.465233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456573, 27.992666, 35.370083>,  <43.641567, 27.850828, 35.312992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456573, 27.992666, 35.370083>,  <43.148251, 28.229063, 35.465233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456573, 27.992666, 35.370083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632903, -0.667730, -0.391881,
		0.072760, 0.452617, -0.888731,
		0.770805, -0.590994, -0.237879,
		43.687817, 27.815369, 35.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.976997, 41.030117, 38.614479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642319, 40.814789, 38.654789>,  <39.441513, 40.685593, 38.678974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642319, 40.814789, 38.654789>,  <39.976997, 41.030117, 38.614479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642319, 40.814789, 38.654789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309057, -0.616008, -0.724581,
		0.452134, -0.575108, 0.681782,
		-0.836695, -0.538317, 0.100777,
		39.391312, 40.653294, 38.685020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195759, 40.325970, 38.629917>,  <39.976997, 41.030117, 38.614479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195759, 40.325970, 38.629917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809639, 40.311775, 38.526428>,  <39.577969, 40.303257, 38.464333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809639, 40.311775, 38.526428>,  <40.195759, 40.325970, 38.629917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809639, 40.311775, 38.526428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218704, -0.651262, -0.726654,
		-0.142710, -0.758023, 0.636424,
		-0.965299, -0.035487, -0.258724,
		39.520050, 40.301128, 38.448811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093269, 39.633568, 38.487862>,  <40.195759, 40.325970, 38.629917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093269, 39.633568, 38.487862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763290, 39.811298, 38.348129>,  <39.565304, 39.917938, 38.264290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763290, 39.811298, 38.348129>,  <40.093269, 39.633568, 38.487862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763290, 39.811298, 38.348129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058199, -0.548002, -0.834450,
		-0.562219, -0.708701, 0.426208,
		-0.824938, 0.444339, -0.349343,
		39.515804, 39.944595, 38.243328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699673, 39.128571, 38.380421>,  <40.093269, 39.633568, 38.487862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699673, 39.128571, 38.380421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603977, 39.436558, 38.143810>,  <39.546558, 39.621349, 38.001842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603977, 39.436558, 38.143810>,  <39.699673, 39.128571, 38.380421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603977, 39.436558, 38.143810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102938, -0.585675, -0.803983,
		-0.965489, -0.253235, 0.060856,
		-0.239238, 0.769972, -0.591531,
		39.532207, 39.667549, 37.966351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285252, 38.786312, 37.899548>,  <39.699673, 39.128571, 38.380421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285252, 38.786312, 37.899548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379921, 39.143600, 37.746635>,  <39.436722, 39.357975, 37.654888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379921, 39.143600, 37.746635>,  <39.285252, 38.786312, 37.899548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379921, 39.143600, 37.746635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155398, -0.423193, -0.892614,
		-0.959082, 0.151850, -0.238962,
		0.236670, 0.893224, -0.382280,
		39.450920, 39.411568, 37.631950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843479, 38.809471, 37.360504>,  <39.285252, 38.786312, 37.899548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843479, 38.809471, 37.360504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153820, 39.049385, 37.282211>,  <39.340023, 39.193333, 37.235237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153820, 39.049385, 37.282211>,  <38.843479, 38.809471, 37.360504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153820, 39.049385, 37.282211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122593, -0.447639, -0.885771,
		-0.618892, 0.663230, -0.420831,
		0.775850, 0.599788, -0.195733,
		39.386574, 39.229321, 37.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750084, 39.193371, 36.666489>,  <38.843479, 38.809471, 37.360504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750084, 39.193371, 36.666489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141556, 39.236835, 36.736217>,  <39.376438, 39.262913, 36.778053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141556, 39.236835, 36.736217>,  <38.750084, 39.193371, 36.666489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141556, 39.236835, 36.736217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204283, -0.425918, -0.881398,
		-0.021527, 0.898213, -0.439033,
		0.978675, 0.108661, 0.174321,
		39.435158, 39.269432, 36.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058132, 39.399017, 36.041519>,  <38.750084, 39.193371, 36.666489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058132, 39.399017, 36.041519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369965, 39.269814, 36.256153>,  <39.557064, 39.192291, 36.384933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369965, 39.269814, 36.256153>,  <39.058132, 39.399017, 36.041519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369965, 39.269814, 36.256153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364047, -0.463445, -0.807892,
		0.509632, 0.825158, -0.243702,
		0.779580, -0.323008, 0.536582,
		39.603840, 39.172913, 36.417130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693752, 39.533382, 35.564701>,  <39.058132, 39.399017, 36.041519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693752, 39.533382, 35.564701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752094, 39.240719, 35.831055>,  <39.787098, 39.065121, 35.990868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752094, 39.240719, 35.831055>,  <39.693752, 39.533382, 35.564701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752094, 39.240719, 35.831055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303410, -0.607563, -0.734036,
		0.941631, 0.309098, 0.133377,
		0.145854, -0.731659, 0.665884,
		39.795849, 39.021221, 36.030819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224686, 39.241295, 35.327419>,  <39.693752, 39.533382, 35.564701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224686, 39.241295, 35.327419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086830, 38.963722, 35.580299>,  <40.004116, 38.797176, 35.732029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086830, 38.963722, 35.580299>,  <40.224686, 39.241295, 35.327419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086830, 38.963722, 35.580299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286298, -0.719073, -0.633219,
		0.894013, -0.037232, 0.446491,
		-0.344636, -0.693936, 0.632201,
		39.983440, 38.755543, 35.769958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650284, 38.695480, 35.196026>,  <40.224686, 39.241295, 35.327419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650284, 38.695480, 35.196026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361969, 38.518326, 35.409313>,  <40.188980, 38.412033, 35.537285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361969, 38.518326, 35.409313>,  <40.650284, 38.695480, 35.196026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361969, 38.518326, 35.409313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101267, -0.828285, -0.551080,
		0.685722, -0.343213, 0.641865,
		-0.720784, -0.442888, 0.533217,
		40.145733, 38.385460, 35.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919022, 38.110207, 35.594460>,  <40.650284, 38.695480, 35.196026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919022, 38.110207, 35.594460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543041, 38.061035, 35.467106>,  <40.317451, 38.031532, 35.390694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543041, 38.061035, 35.467106>,  <40.919022, 38.110207, 35.594460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543041, 38.061035, 35.467106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315613, -0.668126, -0.673792,
		-0.129892, -0.733822, 0.666808,
		-0.939956, -0.122933, -0.318388,
		40.261055, 38.024155, 35.371590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763020, 37.387112, 35.627815>,  <40.919022, 38.110207, 35.594460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763020, 37.387112, 35.627815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534416, 37.549335, 35.342468>,  <40.397255, 37.646671, 35.171261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534416, 37.549335, 35.342468>,  <40.763020, 37.387112, 35.627815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534416, 37.549335, 35.342468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362400, -0.655217, -0.662840,
		-0.736234, -0.637345, 0.227489,
		-0.571513, 0.405563, -0.713366,
		40.362961, 37.671005, 35.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410774, 36.860191, 35.257366>,  <40.763020, 37.387112, 35.627815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410774, 36.860191, 35.257366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360268, 36.556927, 35.513256>,  <40.329964, 36.374969, 35.666790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360268, 36.556927, 35.513256>,  <40.410774, 36.860191, 35.257366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360268, 36.556927, 35.513256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107032, 0.651533, 0.751031,
		-0.986205, 0.026362, -0.163416,
		-0.126269, -0.758162, 0.639724,
		40.322388, 36.329479, 35.705173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877594, 36.936176, 35.802097>,  <40.410774, 36.860191, 35.257366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877594, 36.936176, 35.802097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145168, 36.687992, 35.965832>,  <40.305714, 36.539082, 36.064072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145168, 36.687992, 35.965832>,  <39.877594, 36.936176, 35.802097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145168, 36.687992, 35.965832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076401, 0.605161, 0.792428,
		-0.739384, -0.498810, 0.452218,
		0.668936, -0.620458, 0.409337,
		40.345848, 36.501854, 36.088634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688774, 36.816406, 36.490128>,  <39.877594, 36.936176, 35.802097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688774, 36.816406, 36.490128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083294, 36.751320, 36.479263>,  <40.320007, 36.712269, 36.472744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083294, 36.751320, 36.479263>,  <39.688774, 36.816406, 36.490128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083294, 36.751320, 36.479263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089081, 0.386726, 0.917882,
		-0.138853, -0.907725, 0.395922,
		0.986298, -0.162720, -0.027164,
		40.379185, 36.702503, 36.471115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868866, 36.468582, 37.168949>,  <39.688774, 36.816406, 36.490128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868866, 36.468582, 37.168949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235645, 36.574074, 37.049175>,  <40.455711, 36.637367, 36.977310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235645, 36.574074, 37.049175>,  <39.868866, 36.468582, 37.168949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235645, 36.574074, 37.049175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286204, 0.088186, 0.954102,
		0.278029, -0.960558, 0.005382,
		0.916945, 0.263728, -0.299433,
		40.510727, 36.653191, 36.959347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441929, 36.039513, 37.567711>,  <39.868866, 36.468582, 37.168949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441929, 36.039513, 37.567711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629757, 36.356560, 37.412144>,  <40.742455, 36.546787, 37.318802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629757, 36.356560, 37.412144>,  <40.441929, 36.039513, 37.567711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629757, 36.356560, 37.412144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437193, 0.173956, 0.882384,
		0.767050, -0.584374, -0.264843,
		0.469571, 0.792620, -0.388918,
		40.770630, 36.594345, 37.295467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174526, 35.984138, 37.828178>,  <40.441929, 36.039513, 37.567711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174526, 35.984138, 37.828178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095936, 36.361214, 37.720295>,  <41.048782, 36.587460, 37.655563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095936, 36.361214, 37.720295>,  <41.174526, 35.984138, 37.828178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095936, 36.361214, 37.720295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602051, 0.333098, 0.725659,
		0.773907, -0.019802, -0.632990,
		-0.196478, 0.942684, -0.269708,
		41.036991, 36.644020, 37.639381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868469, 36.211842, 37.859222>,  <41.174526, 35.984138, 37.828178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868469, 36.211842, 37.859222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607914, 36.514393, 37.883198>,  <41.451580, 36.695923, 37.897583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607914, 36.514393, 37.883198>,  <41.868469, 36.211842, 37.859222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607914, 36.514393, 37.883198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550371, 0.416640, 0.723535,
		0.522293, 0.504286, -0.687681,
		-0.651384, 0.756377, 0.059936,
		41.412498, 36.741306, 37.901180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219482, 36.828678, 38.149036>,  <41.868469, 36.211842, 37.859222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219482, 36.828678, 38.149036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834534, 36.935333, 38.169964>,  <41.603565, 36.999329, 38.182518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834534, 36.935333, 38.169964>,  <42.219482, 36.828678, 38.149036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834534, 36.935333, 38.169964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214064, 0.625387, 0.750379,
		0.167364, 0.733344, -0.658935,
		-0.962375, 0.266641, 0.052315,
		41.545822, 37.015324, 38.185658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144085, 37.541855, 38.352421>,  <42.219482, 36.828678, 38.149036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144085, 37.541855, 38.352421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778168, 37.421917, 38.460674>,  <41.558617, 37.349953, 38.525627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778168, 37.421917, 38.460674>,  <42.144085, 37.541855, 38.352421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778168, 37.421917, 38.460674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100552, 0.479867, 0.871560,
		-0.391199, 0.824513, -0.408831,
		-0.914797, -0.299844, 0.270630,
		41.503727, 37.331963, 38.541862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777802, 38.096748, 38.655621>,  <42.144085, 37.541855, 38.352421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777802, 38.096748, 38.655621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585045, 37.777866, 38.801083>,  <41.469391, 37.586536, 38.888359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585045, 37.777866, 38.801083>,  <41.777802, 38.096748, 38.655621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585045, 37.777866, 38.801083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077552, 0.374594, 0.923940,
		-0.872791, 0.473443, -0.118690,
		-0.481893, -0.797202, 0.363659,
		41.440475, 37.538704, 38.910179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325268, 38.336330, 39.237080>,  <41.777802, 38.096748, 38.655621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325268, 38.336330, 39.237080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338875, 37.942707, 39.306900>,  <41.347038, 37.706532, 39.348793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338875, 37.942707, 39.306900>,  <41.325268, 38.336330, 39.237080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338875, 37.942707, 39.306900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222849, 0.162789, 0.961165,
		-0.974259, -0.071592, -0.213759,
		0.034014, -0.984060, 0.174553,
		41.349079, 37.647488, 39.359264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697247, 38.181686, 39.592186>,  <41.325268, 38.336330, 39.237080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697247, 38.181686, 39.592186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970730, 37.902267, 39.676640>,  <41.134819, 37.734615, 39.727310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970730, 37.902267, 39.676640>,  <40.697247, 38.181686, 39.592186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970730, 37.902267, 39.676640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240543, 0.057423, 0.968938,
		-0.688973, -0.713256, -0.128770,
		0.683706, -0.698547, 0.211132,
		41.175842, 37.692703, 39.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277946, 37.725788, 39.935474>,  <40.697247, 38.181686, 39.592186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277946, 37.725788, 39.935474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657810, 37.652294, 40.036976>,  <40.885727, 37.608200, 40.097878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657810, 37.652294, 40.036976>,  <40.277946, 37.725788, 39.935474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657810, 37.652294, 40.036976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249229, 0.047716, 0.967268,
		-0.189826, -0.981817, -0.000478,
		0.949659, -0.183732, 0.253755,
		40.942707, 37.597176, 40.113102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188019, 37.284821, 40.465820>,  <40.277946, 37.725788, 39.935474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188019, 37.284821, 40.465820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549603, 37.445171, 40.525352>,  <40.766552, 37.541382, 40.561073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549603, 37.445171, 40.525352>,  <40.188019, 37.284821, 40.465820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549603, 37.445171, 40.525352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143984, -0.042388, 0.988672,
		0.402647, -0.915150, 0.019403,
		0.903960, 0.400880, 0.148834,
		40.820789, 37.565434, 40.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530293, 36.872738, 40.953823>,  <40.188019, 37.284821, 40.465820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530293, 36.872738, 40.953823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695419, 37.237003, 40.960426>,  <40.794495, 37.455563, 40.964390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695419, 37.237003, 40.960426>,  <40.530293, 36.872738, 40.953823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695419, 37.237003, 40.960426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178803, 0.063252, 0.981850,
		0.893093, -0.408272, 0.188941,
		0.412813, 0.910667, 0.016511,
		40.819263, 37.510204, 40.965378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586880, 36.310349, 41.402275>,  <40.530293, 36.872738, 40.953823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586880, 36.310349, 41.402275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196213, 36.227547, 41.425175>,  <39.961815, 36.177868, 41.438915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196213, 36.227547, 41.425175>,  <40.586880, 36.310349, 41.402275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196213, 36.227547, 41.425175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011128, -0.314987, -0.949031,
		0.214485, -0.926247, 0.309940,
		-0.976664, -0.207002, 0.057253,
		39.903214, 36.165447, 41.442352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592152, 35.637104, 41.068165>,  <40.586880, 36.310349, 41.402275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592152, 35.637104, 41.068165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228069, 35.802319, 41.080364>,  <40.009621, 35.901447, 41.087685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228069, 35.802319, 41.080364>,  <40.592152, 35.637104, 41.068165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228069, 35.802319, 41.080364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240734, -0.467703, -0.850471,
		-0.337006, -0.781446, 0.525137,
		-0.910206, 0.413032, 0.030502,
		39.955009, 35.926228, 41.089516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145229, 35.125038, 40.898415>,  <40.592152, 35.637104, 41.068165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145229, 35.125038, 40.898415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941956, 35.463486, 40.834122>,  <39.819992, 35.666553, 40.795547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941956, 35.463486, 40.834122>,  <40.145229, 35.125038, 40.898415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941956, 35.463486, 40.834122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305372, -0.351519, -0.884976,
		-0.805294, -0.400648, 0.437017,
		-0.508183, 0.846118, -0.160729,
		39.789501, 35.717319, 40.785904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594307, 34.841141, 40.713360>,  <40.145229, 35.125038, 40.898415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594307, 34.841141, 40.713360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593704, 35.222061, 40.591293>,  <39.593342, 35.450611, 40.518055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593704, 35.222061, 40.591293>,  <39.594307, 34.841141, 40.713360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593704, 35.222061, 40.591293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356358, -0.285639, -0.889618,
		-0.934348, 0.107408, 0.339789,
		-0.001505, 0.952299, -0.305162,
		39.593254, 35.507751, 40.499744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887424, 35.009319, 40.492168>,  <39.594307, 34.841141, 40.713360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887424, 35.009319, 40.492168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138271, 35.247574, 40.291397>,  <39.288780, 35.390526, 40.170933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138271, 35.247574, 40.291397>,  <38.887424, 35.009319, 40.492168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138271, 35.247574, 40.291397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289500, -0.419998, -0.860111,
		-0.723124, 0.684704, -0.090954,
		0.627122, 0.595636, -0.501933,
		39.326408, 35.426266, 40.140816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515259, 35.254368, 39.850281>,  <38.887424, 35.009319, 40.492168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515259, 35.254368, 39.850281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901932, 35.327946, 39.779079>,  <39.133938, 35.372093, 39.736359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901932, 35.327946, 39.779079>,  <38.515259, 35.254368, 39.850281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901932, 35.327946, 39.779079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114429, -0.311498, -0.943332,
		-0.228967, 0.932273, -0.280072,
		0.966685, 0.183944, -0.178002,
		39.191936, 35.383129, 39.725677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569508, 35.608784, 39.199512>,  <38.515259, 35.254368, 39.850281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569508, 35.608784, 39.199512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938339, 35.458267, 39.235691>,  <39.159637, 35.367958, 39.257401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938339, 35.458267, 39.235691>,  <38.569508, 35.608784, 39.199512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938339, 35.458267, 39.235691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027367, -0.296527, -0.954632,
		0.386041, 0.877768, -0.283718,
		0.922076, -0.376291, 0.090450,
		39.214962, 35.345379, 39.262825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862858, 35.642384, 38.551540>,  <38.569508, 35.608784, 39.199512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862858, 35.642384, 38.551540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119984, 35.397663, 38.735928>,  <39.274258, 35.250832, 38.846558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119984, 35.397663, 38.735928>,  <38.862858, 35.642384, 38.551540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119984, 35.397663, 38.735928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162003, -0.479574, -0.862418,
		0.748697, 0.629050, -0.209161,
		0.642812, -0.611805, 0.460964,
		39.312828, 35.214123, 38.874218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454124, 35.705742, 38.074711>,  <38.862858, 35.642384, 38.551540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454124, 35.705742, 38.074711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489872, 35.383190, 38.308556>,  <39.511318, 35.189659, 38.448860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489872, 35.383190, 38.308556>,  <39.454124, 35.705742, 38.074711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489872, 35.383190, 38.308556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400617, -0.508281, -0.762336,
		0.911877, 0.302331, 0.277627,
		0.089365, -0.806379, 0.584608,
		39.516682, 35.141277, 38.483936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089314, 35.381130, 37.864735>,  <39.454124, 35.705742, 38.074711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089314, 35.381130, 37.864735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927383, 35.062992, 38.045197>,  <39.830223, 34.872108, 38.153473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927383, 35.062992, 38.045197>,  <40.089314, 35.381130, 37.864735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927383, 35.062992, 38.045197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455626, -0.603233, -0.654611,
		0.792792, -0.059447, 0.606586,
		-0.404828, -0.795346, 0.451153,
		39.805935, 34.824387, 38.180542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668743, 34.885754, 38.022228>,  <40.089314, 35.381130, 37.864735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668743, 34.885754, 38.022228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304195, 34.724533, 37.988857>,  <40.085468, 34.627800, 37.968834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304195, 34.724533, 37.988857>,  <40.668743, 34.885754, 38.022228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304195, 34.724533, 37.988857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343419, -0.632904, -0.693899,
		0.226879, -0.661046, 0.715223,
		-0.911367, -0.403052, -0.083423,
		40.030785, 34.603619, 37.963829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599163, 34.117874, 38.153397>,  <40.668743, 34.885754, 38.022228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599163, 34.117874, 38.153397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298138, 34.203281, 37.904221>,  <40.117523, 34.254528, 37.754715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298138, 34.203281, 37.904221>,  <40.599163, 34.117874, 38.153397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298138, 34.203281, 37.904221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386236, -0.623050, -0.680170,
		-0.533350, -0.752475, 0.386419,
		-0.752569, 0.213520, -0.622936,
		40.072369, 34.267338, 37.717339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.593033, 36.065754, 45.011833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263416, 36.276798, 44.929283>,  <39.065647, 36.403423, 44.879753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263416, 36.276798, 44.929283>,  <39.593033, 36.065754, 45.011833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263416, 36.276798, 44.929283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042630, -0.305506, -0.951235,
		-0.564929, -0.792652, 0.229257,
		-0.824038, 0.527607, -0.206380,
		39.016205, 36.435081, 44.867371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261696, 35.574711, 44.675091>,  <39.593033, 36.065754, 45.011833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261696, 35.574711, 44.675091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127567, 35.945030, 44.605278>,  <39.047089, 36.167221, 44.563389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127567, 35.945030, 44.605278>,  <39.261696, 35.574711, 44.675091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127567, 35.945030, 44.605278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096672, -0.218096, -0.971127,
		-0.937129, -0.308771, 0.162632,
		-0.335325, 0.925794, -0.174535,
		39.026970, 36.222767, 44.552917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707611, 35.524326, 44.233139>,  <39.261696, 35.574711, 44.675091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707611, 35.524326, 44.233139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.818939, 35.906044, 44.189571>,  <38.885735, 36.135075, 44.163433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.818939, 35.906044, 44.189571>,  <38.707611, 35.524326, 44.233139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818939, 35.906044, 44.189571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064279, -0.094637, -0.993435,
		-0.958335, 0.283493, 0.035001,
		0.278319, 0.954293, -0.108917,
		38.902435, 36.192333, 44.156895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300125, 35.667828, 43.798721>,  <38.707611, 35.524326, 44.233139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300125, 35.667828, 43.798721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596954, 35.934727, 43.773048>,  <38.775051, 36.094864, 43.757645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596954, 35.934727, 43.773048>,  <38.300125, 35.667828, 43.798721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596954, 35.934727, 43.773048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007874, -0.104417, -0.994503,
		-0.670277, 0.737485, -0.082738,
		0.742070, 0.667243, -0.064181,
		38.819576, 36.134899, 43.753796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187176, 36.133389, 43.167084>,  <38.300125, 35.667828, 43.798721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187176, 36.133389, 43.167084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573093, 36.181259, 43.260773>,  <38.804642, 36.209980, 43.316986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573093, 36.181259, 43.260773>,  <38.187176, 36.133389, 43.167084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573093, 36.181259, 43.260773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225046, 0.085339, -0.970604,
		-0.136143, 0.989139, 0.055403,
		0.964790, 0.119672, 0.234220,
		38.862530, 36.217159, 43.331039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386303, 36.668663, 42.850410>,  <38.187176, 36.133389, 43.167084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386303, 36.668663, 42.850410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717384, 36.459499, 42.931862>,  <38.916035, 36.334000, 42.980732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717384, 36.459499, 42.931862>,  <38.386303, 36.668663, 42.850410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717384, 36.459499, 42.931862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239616, 0.001217, -0.970867,
		0.507430, 0.852386, 0.126305,
		0.827707, -0.522912, 0.203628,
		38.965698, 36.302628, 42.992950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845119, 36.933773, 42.474091>,  <38.386303, 36.668663, 42.850410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845119, 36.933773, 42.474091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066101, 36.605412, 42.531940>,  <39.198689, 36.408394, 42.566650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066101, 36.605412, 42.531940>,  <38.845119, 36.933773, 42.474091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066101, 36.605412, 42.531940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321434, 0.049721, -0.945626,
		0.769073, 0.568904, 0.291334,
		0.552455, -0.820900, 0.144626,
		39.231838, 36.359142, 42.575329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533630, 37.109272, 42.231716>,  <38.845119, 36.933773, 42.474091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533630, 37.109272, 42.231716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487862, 36.712364, 42.212494>,  <39.460400, 36.474220, 42.200958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487862, 36.712364, 42.212494>,  <39.533630, 37.109272, 42.231716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487862, 36.712364, 42.212494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286333, 0.013381, -0.958037,
		0.951273, -0.123382, 0.282589,
		-0.114423, -0.992269, -0.048058,
		39.453533, 36.414684, 42.198078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220436, 36.835735, 41.957394>,  <39.533630, 37.109272, 42.231716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220436, 36.835735, 41.957394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949165, 36.545906, 41.908298>,  <39.786404, 36.372009, 41.878841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949165, 36.545906, 41.908298>,  <40.220436, 36.835735, 41.957394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949165, 36.545906, 41.908298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277976, -0.098313, -0.955544,
		0.680298, -0.682146, 0.268089,
		-0.678177, -0.724576, -0.122739,
		39.745712, 36.328533, 41.871475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995094, 36.783848, 41.769360>,  <40.220436, 36.835735, 41.957394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995094, 36.783848, 41.769360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.098793, 37.157322, 41.670551>,  <41.161015, 37.381405, 41.611267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.098793, 37.157322, 41.670551>,  <40.995094, 36.783848, 41.769360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098793, 37.157322, 41.670551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168012, 0.295466, 0.940464,
		0.951084, -0.202312, 0.233470,
		0.259250, 0.933686, -0.247022,
		41.176567, 37.437428, 41.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651402, 37.083881, 42.103657>,  <40.995094, 36.783848, 41.769360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651402, 37.083881, 42.103657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.391914, 37.373611, 42.010258>,  <41.236221, 37.547451, 41.954220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.391914, 37.373611, 42.010258>,  <41.651402, 37.083881, 42.103657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391914, 37.373611, 42.010258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052722, 0.263303, 0.963271,
		0.759204, 0.637197, -0.132620,
		-0.648713, 0.724328, -0.233496,
		41.197300, 37.590908, 41.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920109, 37.639179, 42.326717>,  <41.651402, 37.083881, 42.103657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920109, 37.639179, 42.326717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.533920, 37.743000, 42.335705>,  <41.302208, 37.805290, 42.341099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.533920, 37.743000, 42.335705>,  <41.920109, 37.639179, 42.326717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533920, 37.743000, 42.335705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157387, 0.512368, 0.844221,
		0.207604, 0.818605, -0.535525,
		-0.965469, 0.259548, 0.022468,
		41.244278, 37.820866, 42.342445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028076, 38.258602, 42.628429>,  <41.920109, 37.639179, 42.326717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028076, 38.258602, 42.628429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639675, 38.168774, 42.661209>,  <41.406635, 38.114876, 42.680878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639675, 38.168774, 42.661209>,  <42.028076, 38.258602, 42.628429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639675, 38.168774, 42.661209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048027, 0.519067, 0.853383,
		-0.234181, 0.824705, -0.514802,
		-0.971006, -0.224570, 0.081948,
		41.348373, 38.101402, 42.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797428, 38.863014, 42.959595>,  <42.028076, 38.258602, 42.628429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797428, 38.863014, 42.959595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.489994, 38.609760, 42.996307>,  <41.305534, 38.457809, 43.018333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.489994, 38.609760, 42.996307>,  <41.797428, 38.863014, 42.959595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489994, 38.609760, 42.996307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094808, 0.254595, 0.962389,
		-0.632687, 0.730974, -0.255703,
		-0.768582, -0.633133, 0.091777,
		41.259418, 38.419819, 43.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475887, 39.160370, 43.467113>,  <41.797428, 38.863014, 42.959595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475887, 39.160370, 43.467113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255947, 38.828423, 43.429214>,  <41.123981, 38.629253, 43.406475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255947, 38.828423, 43.429214>,  <41.475887, 39.160370, 43.467113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255947, 38.828423, 43.429214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284108, 0.079156, 0.955519,
		-0.785457, 0.552313, -0.279297,
		-0.549854, -0.829870, -0.094743,
		41.090992, 38.579460, 43.400791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822838, 39.341816, 43.619797>,  <41.475887, 39.160370, 43.467113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822838, 39.341816, 43.619797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898983, 38.956932, 43.697693>,  <40.944672, 38.726002, 43.744431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898983, 38.956932, 43.697693>,  <40.822838, 39.341816, 43.619797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898983, 38.956932, 43.697693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186718, 0.159258, 0.969419,
		-0.963794, -0.220902, -0.149345,
		0.190363, -0.962206, 0.194738,
		40.956093, 38.668270, 43.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264240, 39.117840, 43.968464>,  <40.822838, 39.341816, 43.619797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264240, 39.117840, 43.968464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578728, 38.888027, 44.059486>,  <40.767418, 38.750141, 44.114101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578728, 38.888027, 44.059486>,  <40.264240, 39.117840, 43.968464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578728, 38.888027, 44.059486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214401, 0.091759, 0.972426,
		-0.579567, -0.813325, -0.051037,
		0.786216, -0.574528, 0.227558,
		40.814594, 38.715668, 44.127754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042938, 38.642380, 44.470436>,  <40.264240, 39.117840, 43.968464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042938, 38.642380, 44.470436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440876, 38.655602, 44.508797>,  <40.679638, 38.663536, 44.531811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440876, 38.655602, 44.508797>,  <40.042938, 38.642380, 44.470436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440876, 38.655602, 44.508797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100237, 0.175381, 0.979385,
		0.015557, -0.983946, 0.177790,
		0.994842, 0.033058, 0.095899,
		40.739330, 38.665520, 44.537567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146969, 38.227802, 45.168827>,  <40.042938, 38.642380, 44.470436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146969, 38.227802, 45.168827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.479912, 38.441277, 45.109013>,  <40.679676, 38.569359, 45.073124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.479912, 38.441277, 45.109013>,  <40.146969, 38.227802, 45.168827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479912, 38.441277, 45.109013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000674, 0.268834, 0.963186,
		0.554238, -0.801817, 0.223406,
		0.832358, 0.533683, -0.149539,
		40.729618, 38.601383, 45.064152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552929, 37.979027, 45.624271>,  <40.146969, 38.227802, 45.168827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552929, 37.979027, 45.624271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684887, 38.340771, 45.515968>,  <40.764061, 38.557816, 45.450985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684887, 38.340771, 45.515968>,  <40.552929, 37.979027, 45.624271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684887, 38.340771, 45.515968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104394, 0.320004, 0.941647,
		0.938228, -0.282378, 0.199977,
		0.329894, 0.904356, -0.270758,
		40.783855, 38.612076, 45.434742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564941, 38.319298, 46.190235>,  <40.552929, 37.979027, 45.624271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564941, 38.319298, 46.190235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664871, 38.625767, 45.953400>,  <40.724831, 38.809647, 45.811298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664871, 38.625767, 45.953400>,  <40.564941, 38.319298, 46.190235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664871, 38.625767, 45.953400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233332, 0.641095, 0.731131,
		0.939757, -0.044500, 0.338933,
		0.249824, 0.766170, -0.592091,
		40.739819, 38.855618, 45.775772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048172, 38.534084, 46.485733>,  <40.564941, 38.319298, 46.190235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048172, 38.534084, 46.485733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.901779, 38.831364, 46.261692>,  <40.813942, 39.009731, 46.127270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.901779, 38.831364, 46.261692>,  <41.048172, 38.534084, 46.485733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901779, 38.831364, 46.261692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181253, 0.533405, 0.826212,
		0.912800, 0.403900, -0.060511,
		-0.365984, 0.743198, -0.560101,
		40.791985, 39.054321, 46.093662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475319, 39.122314, 46.637684>,  <41.048172, 38.534084, 46.485733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475319, 39.122314, 46.637684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133366, 39.282814, 46.506126>,  <40.928192, 39.379116, 46.427193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133366, 39.282814, 46.506126>,  <41.475319, 39.122314, 46.637684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133366, 39.282814, 46.506126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048996, 0.693527, 0.718762,
		0.516498, 0.598345, -0.612546,
		-0.854886, 0.401251, -0.328889,
		40.876900, 39.403191, 46.407459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.687981, 41.153584, 44.238632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918026, 40.831062, 44.293953>,  <33.056053, 40.637550, 44.327145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918026, 40.831062, 44.293953>,  <32.687981, 41.153584, 44.238632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918026, 40.831062, 44.293953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160998, -0.054199, -0.985466,
		0.802077, 0.589018, 0.098642,
		0.575111, -0.806300, 0.138302,
		33.090561, 40.589172, 44.335445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454094, 41.350006, 43.883240>,  <32.687981, 41.153584, 44.238632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454094, 41.350006, 43.883240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369102, 40.960121, 43.910908>,  <33.318108, 40.726189, 43.927509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369102, 40.960121, 43.910908>,  <33.454094, 41.350006, 43.883240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369102, 40.960121, 43.910908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213292, -0.115343, -0.970156,
		0.953603, -0.191387, 0.232407,
		-0.212482, -0.974714, 0.069170,
		33.305359, 40.667706, 43.931660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824528, 41.099953, 43.359009>,  <33.454094, 41.350006, 43.883240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824528, 41.099953, 43.359009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629486, 40.763725, 43.453403>,  <33.512463, 40.561989, 43.510040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629486, 40.763725, 43.453403>,  <33.824528, 41.099953, 43.359009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629486, 40.763725, 43.453403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252329, -0.394444, -0.883597,
		0.835806, -0.371299, 0.404432,
		-0.487605, -0.840566, 0.235989,
		33.483204, 40.511555, 43.524200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196983, 40.476234, 43.019016>,  <33.824528, 41.099953, 43.359009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196983, 40.476234, 43.019016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836933, 40.315735, 43.086868>,  <33.620903, 40.219437, 43.127579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836933, 40.315735, 43.086868>,  <34.196983, 40.476234, 43.019016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836933, 40.315735, 43.086868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099227, -0.567996, -0.817028,
		0.424177, -0.718596, 0.551083,
		-0.900126, -0.401247, 0.169627,
		33.566895, 40.195362, 43.137756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150951, 39.641563, 43.026100>,  <34.196983, 40.476234, 43.019016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150951, 39.641563, 43.026100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781479, 39.768410, 42.940071>,  <33.559795, 39.844517, 42.888454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781479, 39.768410, 42.940071>,  <34.150951, 39.641563, 43.026100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781479, 39.768410, 42.940071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017695, -0.525397, -0.850673,
		-0.382756, -0.789555, 0.479688,
		-0.923680, 0.317112, -0.215070,
		33.504375, 39.863544, 42.875549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890469, 39.028252, 42.747803>,  <34.150951, 39.641563, 43.026100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890469, 39.028252, 42.747803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623100, 39.299393, 42.625340>,  <33.462681, 39.462078, 42.551861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623100, 39.299393, 42.625340>,  <33.890469, 39.028252, 42.747803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623100, 39.299393, 42.625340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188858, -0.243455, -0.951348,
		-0.719406, -0.693722, 0.034714,
		-0.668422, 0.677849, -0.306158,
		33.422573, 39.502747, 42.533493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443413, 38.695702, 42.337372>,  <33.890469, 39.028252, 42.747803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443413, 38.695702, 42.337372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.388172, 39.077625, 42.232101>,  <33.355030, 39.306782, 42.168941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.388172, 39.077625, 42.232101>,  <33.443413, 38.695702, 42.337372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388172, 39.077625, 42.232101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134888, -0.245111, -0.960066,
		-0.981190, -0.168083, -0.094944,
		-0.138098, 0.954814, -0.263173,
		33.346741, 39.364071, 42.153149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927929, 38.582699, 41.838745>,  <33.443413, 38.695702, 42.337372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927929, 38.582699, 41.838745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092999, 38.943069, 41.785038>,  <33.192039, 39.159294, 41.752815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092999, 38.943069, 41.785038>,  <32.927929, 38.582699, 41.838745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092999, 38.943069, 41.785038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079271, -0.182363, -0.980030,
		-0.907423, 0.393790, -0.146674,
		0.412674, 0.900929, -0.134264,
		33.216801, 39.213348, 41.744759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578564, 38.893360, 41.316856>,  <32.927929, 38.582699, 41.838745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578564, 38.893360, 41.316856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945625, 39.052258, 41.321110>,  <33.165863, 39.147594, 41.323662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945625, 39.052258, 41.321110>,  <32.578564, 38.893360, 41.316856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945625, 39.052258, 41.321110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052254, -0.094089, -0.994192,
		-0.393935, 0.912878, -0.107098,
		0.917652, 0.397243, 0.010637,
		33.220921, 39.171429, 41.324303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680668, 38.978951, 40.639557>,  <32.578564, 38.893360, 41.316856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680668, 38.978951, 40.639557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042992, 39.115387, 40.740086>,  <33.260387, 39.197250, 40.800404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042992, 39.115387, 40.740086>,  <32.680668, 38.978951, 40.639557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042992, 39.115387, 40.740086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287643, -0.059544, -0.955885,
		-0.311081, 0.938142, -0.152049,
		0.905809, 0.341094, 0.251326,
		33.314735, 39.217716, 40.815483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780437, 39.601967, 40.273293>,  <32.680668, 38.978951, 40.639557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780437, 39.601967, 40.273293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132046, 39.438091, 40.370846>,  <33.343010, 39.339767, 40.429379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132046, 39.438091, 40.370846>,  <32.780437, 39.601967, 40.273293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132046, 39.438091, 40.370846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231798, -0.079779, -0.969487,
		0.416645, 0.908730, 0.024838,
		0.879020, -0.409689, 0.243881,
		33.395752, 39.315186, 40.444012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227974, 39.763390, 39.706501>,  <32.780437, 39.601967, 40.273293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227974, 39.763390, 39.706501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441715, 39.480801, 39.892132>,  <33.569958, 39.311249, 40.003510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441715, 39.480801, 39.892132>,  <33.227974, 39.763390, 39.706501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441715, 39.480801, 39.892132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369949, -0.298181, -0.879901,
		0.760004, 0.641860, 0.102026,
		0.534351, -0.706472, 0.464074,
		33.602020, 39.268860, 40.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997044, 39.760166, 39.504314>,  <33.227974, 39.763390, 39.706501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997044, 39.760166, 39.504314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860466, 39.398628, 39.607456>,  <33.778519, 39.181705, 39.669342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860466, 39.398628, 39.607456>,  <33.997044, 39.760166, 39.504314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860466, 39.398628, 39.607456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333278, -0.372941, -0.865933,
		0.878829, -0.209732, 0.428569,
		-0.341445, -0.903840, 0.257852,
		33.758034, 39.127476, 39.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603977, 39.276299, 39.498337>,  <33.997044, 39.760166, 39.504314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603977, 39.276299, 39.498337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288334, 39.030907, 39.485996>,  <34.098949, 38.883671, 39.478592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288334, 39.030907, 39.485996>,  <34.603977, 39.276299, 39.498337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288334, 39.030907, 39.485996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489002, -0.597011, -0.635968,
		0.371738, -0.516931, 0.771098,
		-0.789106, -0.613482, -0.030848,
		34.051601, 38.846863, 39.476742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345051, 39.232845, 39.544567>,  <34.603977, 39.276299, 39.498337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345051, 39.232845, 39.544567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459267, 39.545162, 39.322277>,  <35.527794, 39.732552, 39.188904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459267, 39.545162, 39.322277>,  <35.345051, 39.232845, 39.544567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459267, 39.545162, 39.322277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006208, 0.578351, 0.815765,
		0.958348, -0.236380, 0.160293,
		0.285536, 0.780792, -0.555729,
		35.544926, 39.779400, 39.155560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799156, 39.555229, 40.001137>,  <35.345051, 39.232845, 39.544567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799156, 39.555229, 40.001137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746273, 39.832237, 39.717464>,  <35.714542, 39.998440, 39.547260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746273, 39.832237, 39.717464>,  <35.799156, 39.555229, 40.001137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746273, 39.832237, 39.717464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047572, 0.710207, 0.702384,
		0.990080, 0.126596, -0.060948,
		-0.132205, 0.692517, -0.709185,
		35.706612, 40.039993, 39.504707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318581, 40.053772, 40.114925>,  <35.799156, 39.555229, 40.001137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318581, 40.053772, 40.114925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021568, 40.230034, 39.913143>,  <35.843361, 40.335789, 39.792072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021568, 40.230034, 39.913143>,  <36.318581, 40.053772, 40.114925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021568, 40.230034, 39.913143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151027, 0.623592, 0.767023,
		0.652564, 0.645724, -0.396485,
		-0.742530, 0.440652, -0.504456,
		35.798809, 40.362228, 39.761806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472355, 40.853142, 40.051987>,  <36.318581, 40.053772, 40.114925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472355, 40.853142, 40.051987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077400, 40.798889, 40.019302>,  <35.840427, 40.766338, 39.999691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077400, 40.798889, 40.019302>,  <36.472355, 40.853142, 40.051987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077400, 40.798889, 40.019302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154544, 0.713054, 0.683864,
		-0.034492, 0.687864, -0.725019,
		-0.987384, -0.135635, -0.081711,
		35.781185, 40.758198, 39.994789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284500, 41.450935, 40.144379>,  <36.472355, 40.853142, 40.051987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284500, 41.450935, 40.144379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939957, 41.252621, 40.188656>,  <35.733231, 41.133633, 40.215221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939957, 41.252621, 40.188656>,  <36.284500, 41.450935, 40.144379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939957, 41.252621, 40.188656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302738, 0.675973, 0.671871,
		-0.407927, 0.545214, -0.732351,
		-0.861363, -0.495784, 0.110690,
		35.681549, 41.103886, 40.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694199, 41.978790, 40.126026>,  <36.284500, 41.450935, 40.144379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694199, 41.978790, 40.126026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557819, 41.653934, 40.315418>,  <35.475990, 41.459023, 40.429054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557819, 41.653934, 40.315418>,  <35.694199, 41.978790, 40.126026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557819, 41.653934, 40.315418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257124, 0.565018, 0.783991,
		-0.904235, 0.145557, -0.401462,
		-0.340949, -0.812138, 0.473483,
		35.455536, 41.410294, 40.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161446, 42.248360, 40.526520>,  <35.694199, 41.978790, 40.126026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161446, 42.248360, 40.526520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223728, 41.889641, 40.692173>,  <35.261097, 41.674408, 40.791565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223728, 41.889641, 40.692173>,  <35.161446, 42.248360, 40.526520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223728, 41.889641, 40.692173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141459, 0.394684, 0.907862,
		-0.977621, -0.199946, -0.065404,
		0.155710, -0.896797, 0.414136,
		35.270443, 41.620602, 40.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735603, 42.210270, 41.047615>,  <35.161446, 42.248360, 40.526520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735603, 42.210270, 41.047615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012001, 41.937469, 41.143444>,  <35.177841, 41.773788, 41.200943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012001, 41.937469, 41.143444>,  <34.735603, 42.210270, 41.047615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012001, 41.937469, 41.143444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056467, 0.279481, 0.958489,
		-0.720651, -0.675839, 0.154609,
		0.690995, -0.682006, 0.239571,
		35.219299, 41.732868, 41.215317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522617, 41.920872, 41.680672>,  <34.735603, 42.210270, 41.047615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522617, 41.920872, 41.680672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904148, 41.800808, 41.685009>,  <35.133068, 41.728771, 41.687611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904148, 41.800808, 41.685009>,  <34.522617, 41.920872, 41.680672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904148, 41.800808, 41.685009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012682, 0.076314, 0.997003,
		-0.300086, -0.950832, 0.076597,
		0.953828, -0.300158, 0.010842,
		35.190296, 41.710762, 41.688263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564442, 41.424427, 42.129997>,  <34.522617, 41.920872, 41.680672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564442, 41.424427, 42.129997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940384, 41.557625, 42.099590>,  <35.165951, 41.637543, 42.081345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940384, 41.557625, 42.099590>,  <34.564442, 41.424427, 42.129997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940384, 41.557625, 42.099590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064492, 0.045549, 0.996878,
		0.335418, -0.941828, 0.021334,
		0.939859, 0.332995, -0.076018,
		35.222343, 41.657524, 42.076786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870392, 41.130367, 42.721943>,  <34.564442, 41.424427, 42.129997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870392, 41.130367, 42.721943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146412, 41.405746, 42.632614>,  <35.312023, 41.570976, 42.579018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146412, 41.405746, 42.632614>,  <34.870392, 41.130367, 42.721943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146412, 41.405746, 42.632614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226966, 0.087156, 0.969995,
		0.687257, -0.720028, -0.096113,
		0.690047, 0.688450, -0.223321,
		35.353428, 41.612282, 42.565617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477146, 40.863224, 43.105862>,  <34.870392, 41.130367, 42.721943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477146, 40.863224, 43.105862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493015, 41.253674, 43.020447>,  <35.502537, 41.487946, 42.969196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493015, 41.253674, 43.020447>,  <35.477146, 40.863224, 43.105862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493015, 41.253674, 43.020447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092696, 0.209192, 0.973471,
		0.994904, -0.058412, -0.082185,
		0.039670, 0.976128, -0.213540,
		35.504917, 41.546513, 42.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099308, 41.102787, 43.458488>,  <35.477146, 40.863224, 43.105862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099308, 41.102787, 43.458488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852543, 41.413414, 43.407341>,  <35.704483, 41.599792, 43.376652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852543, 41.413414, 43.407341>,  <36.099308, 41.102787, 43.458488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852543, 41.413414, 43.407341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000929, 0.163186, 0.986595,
		0.787028, 0.608528, -0.101393,
		-0.616917, 0.776572, -0.127867,
		35.667469, 41.646385, 43.368980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350166, 41.632477, 43.959015>,  <36.099308, 41.102787, 43.458488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350166, 41.632477, 43.959015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983929, 41.752941, 43.852444>,  <35.764187, 41.825222, 43.788502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983929, 41.752941, 43.852444>,  <36.350166, 41.632477, 43.959015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983929, 41.752941, 43.852444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202877, 0.226080, 0.952748,
		0.347166, 0.926385, -0.145900,
		-0.915596, 0.301162, -0.266429,
		35.709251, 41.843288, 43.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876442, 42.199581, 43.803780>,  <36.350166, 41.632477, 43.959015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876442, 42.199581, 43.803780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235355, 42.039394, 43.878086>,  <37.450703, 41.943283, 43.922668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235355, 42.039394, 43.878086>,  <36.876442, 42.199581, 43.803780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235355, 42.039394, 43.878086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148776, -0.121863, -0.981333,
		0.415626, 0.908173, -0.049767,
		0.897285, -0.400463, 0.185763,
		37.504539, 41.919254, 43.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263832, 42.501633, 43.338440>,  <36.876442, 42.199581, 43.803780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263832, 42.501633, 43.338440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517735, 42.213245, 43.449646>,  <37.670074, 42.040215, 43.516369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517735, 42.213245, 43.449646>,  <37.263832, 42.501633, 43.338440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517735, 42.213245, 43.449646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262272, -0.137419, -0.955159,
		0.726842, 0.679209, 0.101861,
		0.634755, -0.720965, 0.278019,
		37.708160, 41.996956, 43.533051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861664, 42.748070, 43.143330>,  <37.263832, 42.501633, 43.338440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861664, 42.748070, 43.143330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.913609, 42.352142, 43.166656>,  <37.944775, 42.114586, 43.180653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.913609, 42.352142, 43.166656>,  <37.861664, 42.748070, 43.143330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913609, 42.352142, 43.166656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237597, -0.026037, -0.971015,
		0.962645, 0.139950, 0.231796,
		0.129858, -0.989816, 0.058316,
		37.952564, 42.055199, 43.184151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576607, 42.480186, 42.853367>,  <37.861664, 42.748070, 43.143330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576607, 42.480186, 42.853367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326527, 42.169205, 42.825981>,  <38.176479, 41.982616, 42.809547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326527, 42.169205, 42.825981>,  <38.576607, 42.480186, 42.853367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326527, 42.169205, 42.825981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217672, -0.089451, -0.971914,
		0.749492, -0.622549, 0.225155,
		-0.625204, -0.777452, -0.068469,
		38.138966, 41.935970, 42.805439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957474, 41.986904, 42.514324>,  <38.576607, 42.480186, 42.853367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957474, 41.986904, 42.514324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595985, 41.820225, 42.475040>,  <38.379093, 41.720215, 42.451469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595985, 41.820225, 42.475040>,  <38.957474, 41.986904, 42.514324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595985, 41.820225, 42.475040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247658, -0.321736, -0.913866,
		0.349212, -0.850204, 0.393959,
		-0.903723, -0.416701, -0.098205,
		38.324867, 41.695213, 42.445580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075699, 41.368599, 42.239674>,  <38.957474, 41.986904, 42.514324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075699, 41.368599, 42.239674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691372, 41.441418, 42.156067>,  <38.460777, 41.485111, 42.105904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691372, 41.441418, 42.156067>,  <39.075699, 41.368599, 42.239674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691372, 41.441418, 42.156067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134456, -0.353304, -0.925796,
		-0.242386, -0.917624, 0.314983,
		-0.960818, 0.182048, -0.209016,
		38.403126, 41.496033, 42.093361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849037, 40.785831, 41.914997>,  <39.075699, 41.368599, 42.239674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849037, 40.785831, 41.914997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572170, 41.053337, 41.806442>,  <38.406048, 41.213840, 41.741310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572170, 41.053337, 41.806442>,  <38.849037, 40.785831, 41.914997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572170, 41.053337, 41.806442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117581, -0.266507, -0.956634,
		-0.712091, -0.694065, 0.105834,
		-0.692172, 0.668766, -0.271386,
		38.364517, 41.253967, 41.725025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264568, 40.466270, 41.504921>,  <38.849037, 40.785831, 41.914997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264568, 40.466270, 41.504921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290703, 40.851357, 41.399925>,  <38.306385, 41.082409, 41.336926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290703, 40.851357, 41.399925>,  <38.264568, 40.466270, 41.504921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290703, 40.851357, 41.399925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047232, -0.265744, -0.962886,
		-0.996745, 0.050512, -0.062834,
		0.065335, 0.962720, -0.262493,
		38.310303, 41.140171, 41.321178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936966, 40.507282, 40.932404>,  <38.264568, 40.466270, 41.504921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936966, 40.507282, 40.932404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166409, 40.832550, 40.892960>,  <38.304073, 41.027710, 40.869293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166409, 40.832550, 40.892960>,  <37.936966, 40.507282, 40.932404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166409, 40.832550, 40.892960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034983, -0.144589, -0.988873,
		-0.818384, 0.563775, -0.111385,
		0.573607, 0.813174, -0.098607,
		38.338490, 41.076504, 40.863377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678020, 40.848763, 40.263489>,  <37.936966, 40.507282, 40.932404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678020, 40.848763, 40.263489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.035507, 41.004444, 40.352745>,  <38.250000, 41.097851, 40.406300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.035507, 41.004444, 40.352745>,  <37.678020, 40.848763, 40.263489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035507, 41.004444, 40.352745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277904, -0.089822, -0.956400,
		-0.352188, 0.916764, -0.188435,
		0.893719, 0.389200, 0.223138,
		38.303623, 41.121204, 40.419685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830040, 41.322578, 39.719769>,  <37.678020, 40.848763, 40.263489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830040, 41.322578, 39.719769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.188175, 41.247105, 39.881145>,  <38.403057, 41.201820, 39.977974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.188175, 41.247105, 39.881145>,  <37.830040, 41.322578, 39.719769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188175, 41.247105, 39.881145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353291, -0.250725, -0.901289,
		0.271212, 0.949492, -0.157824,
		0.895338, -0.188683, 0.403447,
		38.456776, 41.190498, 40.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224297, 41.561436, 39.238953>,  <37.830040, 41.322578, 39.719769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224297, 41.561436, 39.238953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464775, 41.313969, 39.441261>,  <38.609062, 41.165489, 39.562649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464775, 41.313969, 39.441261>,  <38.224297, 41.561436, 39.238953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464775, 41.313969, 39.441261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362397, -0.353015, -0.862583,
		0.712202, 0.701873, 0.011974,
		0.601196, -0.618672, 0.505774,
		38.645134, 41.128368, 39.592995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927143, 41.717754, 38.949131>,  <38.224297, 41.561436, 39.238953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927143, 41.717754, 38.949131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929962, 41.368706, 39.144470>,  <38.931656, 41.159275, 39.261673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929962, 41.368706, 39.144470>,  <38.927143, 41.717754, 38.949131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929962, 41.368706, 39.144470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583875, -0.392874, -0.710451,
		0.811813, 0.290144, 0.506730,
		0.007052, -0.872621, 0.488348,
		38.932079, 41.106918, 39.290974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512993, 41.560390, 38.729721>,  <38.927143, 41.717754, 38.949131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512993, 41.560390, 38.729721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333080, 41.230259, 38.866264>,  <39.225132, 41.032181, 38.948189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333080, 41.230259, 38.866264>,  <39.512993, 41.560390, 38.729721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333080, 41.230259, 38.866264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450883, -0.539746, -0.710900,
		0.770976, -0.165835, 0.614895,
		-0.449779, -0.825332, 0.341359,
		39.198147, 40.982658, 38.968674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.137264, 39.325851, 27.728535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349213, 38.987869, 27.757612>,  <29.476381, 38.785080, 27.775059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349213, 38.987869, 27.757612>,  <29.137264, 39.325851, 27.728535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349213, 38.987869, 27.757612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609593, -0.319875, 0.725312,
		-0.589606, -0.428633, -0.684572,
		0.529870, -0.844958, 0.072692,
		29.508173, 38.734383, 27.779419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761545, 38.501232, 27.591528>,  <29.137264, 39.325851, 27.728535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761545, 38.501232, 27.591528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066927, 38.481537, 27.849119>,  <29.250156, 38.469719, 28.003674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066927, 38.481537, 27.849119>,  <28.761545, 38.501232, 27.591528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066927, 38.481537, 27.849119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533153, -0.610814, 0.585366,
		0.364529, -0.790241, -0.492582,
		0.763457, -0.049239, 0.643980,
		29.295963, 38.466766, 28.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961594, 37.717495, 27.594385>,  <28.761545, 38.501232, 27.591528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961594, 37.717495, 27.594385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120974, 37.880688, 27.922966>,  <29.216600, 37.978603, 28.120115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120974, 37.880688, 27.922966>,  <28.961594, 37.717495, 27.594385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120974, 37.880688, 27.922966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455992, -0.688974, 0.563370,
		0.795808, -0.599050, -0.088482,
		0.398448, 0.407987, 0.821453,
		29.240509, 38.003082, 28.169401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100994, 37.153904, 28.027897>,  <28.961594, 37.717495, 27.594385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100994, 37.153904, 28.027897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079159, 37.470036, 28.271997>,  <29.066057, 37.659714, 28.418457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079159, 37.470036, 28.271997>,  <29.100994, 37.153904, 28.027897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079159, 37.470036, 28.271997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504860, -0.549132, 0.666011,
		0.861474, -0.271735, 0.428979,
		-0.054588, 0.790325, 0.610251,
		29.062782, 37.707134, 28.455072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479593, 36.967026, 28.771727>,  <29.100994, 37.153904, 28.027897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479593, 36.967026, 28.771727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205143, 37.255768, 28.807852>,  <29.040472, 37.429012, 28.829527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205143, 37.255768, 28.807852>,  <29.479593, 36.967026, 28.771727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205143, 37.255768, 28.807852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273322, -0.370841, 0.887565,
		0.674185, 0.584298, 0.451743,
		-0.686127, 0.721854, 0.090314,
		28.999306, 37.472324, 28.834946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514238, 37.176926, 29.416220>,  <29.479593, 36.967026, 28.771727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514238, 37.176926, 29.416220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152733, 37.321445, 29.324417>,  <28.935829, 37.408157, 29.269337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152733, 37.321445, 29.324417>,  <29.514238, 37.176926, 29.416220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152733, 37.321445, 29.324417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337529, -0.271836, 0.901210,
		0.263220, 0.891946, 0.367625,
		-0.903764, 0.361300, -0.229505,
		28.881603, 37.429836, 29.255566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265810, 37.327652, 30.073458>,  <29.514238, 37.176926, 29.416220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265810, 37.327652, 30.073458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947090, 37.346699, 29.832512>,  <28.755857, 37.358128, 29.687944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947090, 37.346699, 29.832512>,  <29.265810, 37.327652, 30.073458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947090, 37.346699, 29.832512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596566, -0.220407, 0.771706,
		-0.096023, 0.974245, 0.204024,
		-0.796799, 0.047612, -0.602366,
		28.708050, 37.360981, 29.651802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753353, 37.715683, 30.403997>,  <29.265810, 37.327652, 30.073458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753353, 37.715683, 30.403997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540094, 37.502995, 30.140778>,  <28.412138, 37.375381, 29.982845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540094, 37.502995, 30.140778>,  <28.753353, 37.715683, 30.403997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540094, 37.502995, 30.140778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660159, -0.224976, 0.716642,
		-0.529096, 0.816494, -0.231073,
		-0.533148, -0.531718, -0.658050,
		28.380150, 37.343479, 29.943363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942801, 37.834560, 30.493973>,  <28.753353, 37.715683, 30.403997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942801, 37.834560, 30.493973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977024, 37.474403, 30.323339>,  <27.997559, 37.258308, 30.220959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977024, 37.474403, 30.323339>,  <27.942801, 37.834560, 30.493973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977024, 37.474403, 30.323339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611824, -0.385402, 0.690751,
		-0.786353, 0.201894, -0.583856,
		0.085561, -0.900391, -0.426585,
		28.002693, 37.204285, 30.195364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285223, 37.582069, 30.447960>,  <27.942801, 37.834560, 30.493973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285223, 37.582069, 30.447960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506781, 37.252113, 30.402790>,  <27.639715, 37.054138, 30.375689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506781, 37.252113, 30.402790>,  <27.285223, 37.582069, 30.447960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506781, 37.252113, 30.402790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615125, -0.496848, 0.612179,
		-0.561090, -0.269617, -0.782613,
		0.553894, -0.824893, -0.112928,
		27.672949, 37.004646, 30.368912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805639, 37.092335, 30.543692>,  <27.285223, 37.582069, 30.447960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805639, 37.092335, 30.543692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125187, 36.853119, 30.569458>,  <27.316916, 36.709587, 30.584919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125187, 36.853119, 30.569458>,  <26.805639, 37.092335, 30.543692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125187, 36.853119, 30.569458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511241, -0.618662, 0.596565,
		-0.316919, -0.509511, -0.799976,
		0.798871, -0.598043, 0.064417,
		27.364849, 36.673706, 30.588783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555746, 36.393150, 30.403027>,  <26.805639, 37.092335, 30.543692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555746, 36.393150, 30.403027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.891808, 36.355450, 30.616665>,  <27.093445, 36.332829, 30.744848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.891808, 36.355450, 30.616665>,  <26.555746, 36.393150, 30.403027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891808, 36.355450, 30.616665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474082, -0.605932, 0.638821,
		0.263416, -0.789913, -0.553759,
		0.840154, -0.094251, 0.534096,
		27.143854, 36.327175, 30.776894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611380, 35.711548, 30.521044>,  <26.555746, 36.393150, 30.403027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611380, 35.711548, 30.521044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850628, 35.866646, 30.801588>,  <26.994177, 35.959705, 30.969915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850628, 35.866646, 30.801588>,  <26.611380, 35.711548, 30.521044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850628, 35.866646, 30.801588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428422, -0.584908, 0.688722,
		0.677278, -0.712417, -0.183728,
		0.598121, 0.387743, 0.701360,
		27.030064, 35.982967, 31.011995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732594, 35.080952, 31.009153>,  <26.611380, 35.711548, 30.521044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732594, 35.080952, 31.009153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807861, 35.410328, 31.223272>,  <26.853022, 35.607952, 31.351744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807861, 35.410328, 31.223272>,  <26.732594, 35.080952, 31.009153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807861, 35.410328, 31.223272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358195, -0.449953, 0.818070,
		0.914489, -0.345674, 0.210285,
		0.188167, 0.823439, 0.535296,
		26.864311, 35.657360, 31.383862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194748, 34.870693, 31.575623>,  <26.732594, 35.080952, 31.009153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194748, 34.870693, 31.575623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055569, 35.218922, 31.714781>,  <26.972061, 35.427860, 31.798277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055569, 35.218922, 31.714781>,  <27.194748, 34.870693, 31.575623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055569, 35.218922, 31.714781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420300, -0.476557, 0.772167,
		0.838021, 0.122454, 0.531720,
		-0.347950, 0.870574, 0.347897,
		26.951183, 35.480095, 31.819151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366419, 34.885479, 32.329529>,  <27.194748, 34.870693, 31.575623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366419, 34.885479, 32.329529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097654, 35.177700, 32.280819>,  <26.936396, 35.353031, 32.251591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097654, 35.177700, 32.280819>,  <27.366419, 34.885479, 32.329529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097654, 35.177700, 32.280819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311856, -0.129932, 0.941203,
		0.671775, 0.670382, 0.315129,
		-0.671911, 0.730551, -0.121778,
		26.896080, 35.396866, 32.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396889, 35.271152, 33.065327>,  <27.366419, 34.885479, 32.329529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396889, 35.271152, 33.065327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068657, 35.363182, 32.856056>,  <26.871717, 35.418400, 32.730492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068657, 35.363182, 32.856056>,  <27.396889, 35.271152, 33.065327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068657, 35.363182, 32.856056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558653, -0.129641, 0.819207,
		0.120649, 0.964500, 0.234909,
		-0.820579, 0.230069, -0.523180,
		26.822483, 35.432201, 32.699100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908022, 35.814331, 33.439575>,  <27.396889, 35.271152, 33.065327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908022, 35.814331, 33.439575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714607, 35.542412, 33.219006>,  <26.598558, 35.379261, 33.086662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714607, 35.542412, 33.219006>,  <26.908022, 35.814331, 33.439575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714607, 35.542412, 33.219006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538704, -0.265424, 0.799592,
		-0.689920, 0.683689, -0.237865,
		-0.483537, -0.679794, -0.551428,
		26.569546, 35.338474, 33.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163559, 36.431129, 33.433216>,  <26.908022, 35.814331, 33.439575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163559, 36.431129, 33.433216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995811, 36.497459, 33.790234>,  <26.895163, 36.537258, 34.004444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995811, 36.497459, 33.790234>,  <27.163559, 36.431129, 33.433216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995811, 36.497459, 33.790234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588466, -0.698987, 0.406355,
		0.691259, 0.695644, 0.195552,
		-0.419367, 0.165821, 0.892544,
		26.870001, 36.547207, 34.057999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684475, 36.652245, 33.973427>,  <27.163559, 36.431129, 33.433216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684475, 36.652245, 33.973427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377129, 36.438000, 34.113564>,  <27.192720, 36.309452, 34.197647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377129, 36.438000, 34.113564>,  <27.684475, 36.652245, 33.973427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377129, 36.438000, 34.113564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634124, -0.711191, 0.303469,
		0.086621, 0.455336, 0.886096,
		-0.768364, -0.535608, 0.350343,
		27.146620, 36.277317, 34.218666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331842, 36.139408, 33.742855>,  <27.684475, 36.652245, 33.973427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331842, 36.139408, 33.742855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704458, 36.129299, 33.887959>,  <28.928028, 36.123234, 33.975021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704458, 36.129299, 33.887959>,  <28.331842, 36.139408, 33.742855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704458, 36.129299, 33.887959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150047, 0.935413, -0.320138,
		-0.331238, 0.352652, 0.875167,
		0.931540, -0.025274, 0.362759,
		28.983921, 36.121716, 33.996788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413700, 36.692738, 34.073494>,  <28.331842, 36.139408, 33.742855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413700, 36.692738, 34.073494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787872, 36.579060, 33.989391>,  <29.012375, 36.510853, 33.938931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787872, 36.579060, 33.989391>,  <28.413700, 36.692738, 34.073494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787872, 36.579060, 33.989391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267092, 0.957789, -0.106309,
		0.231593, 0.043287, 0.971849,
		0.935429, -0.284193, -0.210256,
		29.068501, 36.493801, 33.926315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812479, 37.078018, 34.420151>,  <28.413700, 36.692738, 34.073494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812479, 37.078018, 34.420151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048676, 36.955830, 34.121349>,  <29.190393, 36.882515, 33.942070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048676, 36.955830, 34.121349>,  <28.812479, 37.078018, 34.420151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048676, 36.955830, 34.121349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204666, 0.952021, -0.227524,
		0.780663, -0.018535, 0.624678,
		0.590489, -0.305470, -0.747001,
		29.225822, 36.864189, 33.897247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338865, 37.523613, 34.438931>,  <28.812479, 37.078018, 34.420151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338865, 37.523613, 34.438931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412254, 37.374641, 34.075031>,  <29.456287, 37.285259, 33.856693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412254, 37.374641, 34.075031>,  <29.338865, 37.523613, 34.438931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412254, 37.374641, 34.075031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447828, 0.855510, -0.259910,
		0.875093, -0.359722, 0.323748,
		0.183475, -0.372429, -0.909744,
		29.467297, 37.262913, 33.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917446, 37.945141, 34.173565>,  <29.338865, 37.523613, 34.438931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917446, 37.945141, 34.173565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769293, 37.759647, 33.851627>,  <29.680401, 37.648350, 33.658466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769293, 37.759647, 33.851627>,  <29.917446, 37.945141, 34.173565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769293, 37.759647, 33.851627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217457, 0.799097, -0.560496,
		0.903066, -0.382618, -0.195131,
		-0.370385, -0.463732, -0.804840,
		29.658178, 37.620529, 33.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392260, 37.999866, 33.666962>,  <29.917446, 37.945141, 34.173565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392260, 37.999866, 33.666962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051947, 37.920860, 33.472168>,  <29.847759, 37.873459, 33.355289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051947, 37.920860, 33.472168>,  <30.392260, 37.999866, 33.666962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051947, 37.920860, 33.472168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171581, 0.771497, -0.612659,
		0.496717, -0.604799, -0.622488,
		-0.850784, -0.197511, -0.486988,
		29.796711, 37.861607, 33.326073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469103, 37.792267, 33.013844>,  <30.392260, 37.999866, 33.666962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469103, 37.792267, 33.013844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094194, 37.930248, 32.993713>,  <29.869249, 38.013035, 32.981636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094194, 37.930248, 32.993713>,  <30.469103, 37.792267, 33.013844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094194, 37.930248, 32.993713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255590, 0.581814, -0.772118,
		-0.237061, -0.736547, -0.633483,
		-0.937271, 0.344951, -0.050328,
		29.813013, 38.033733, 32.978615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342377, 37.804497, 32.212162>,  <30.469103, 37.792267, 33.013844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342377, 37.804497, 32.212162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080896, 38.047070, 32.393230>,  <29.924007, 38.192616, 32.501873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080896, 38.047070, 32.393230>,  <30.342377, 37.804497, 32.212162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080896, 38.047070, 32.393230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116059, 0.671442, -0.731912,
		-0.747800, -0.425915, -0.509305,
		-0.653701, 0.606434, 0.452673,
		29.884787, 38.229000, 32.529034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776838, 37.968342, 31.742458>,  <30.342377, 37.804497, 32.212162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776838, 37.968342, 31.742458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.767660, 38.275162, 31.998930>,  <29.762154, 38.459251, 32.152813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.767660, 38.275162, 31.998930>,  <29.776838, 37.968342, 31.742458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767660, 38.275162, 31.998930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058161, 0.641286, -0.765094,
		-0.998043, 0.019735, -0.059328,
		-0.022947, 0.767048, 0.641180,
		29.760777, 38.505276, 32.191284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395815, 38.440289, 31.407349>,  <29.776838, 37.968342, 31.742458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395815, 38.440289, 31.407349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585024, 38.647846, 31.692163>,  <29.698549, 38.772381, 31.863052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585024, 38.647846, 31.692163>,  <29.395815, 38.440289, 31.407349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585024, 38.647846, 31.692163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062060, 0.786540, -0.614413,
		-0.878862, 0.334820, 0.339849,
		0.473023, 0.518893, 0.712039,
		29.726931, 38.803513, 31.905775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079662, 39.076221, 31.369781>,  <29.395815, 38.440289, 31.407349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079662, 39.076221, 31.369781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430965, 39.132103, 31.552710>,  <29.641748, 39.165634, 31.662466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430965, 39.132103, 31.552710>,  <29.079662, 39.076221, 31.369781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430965, 39.132103, 31.552710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121549, 0.859734, -0.496069,
		-0.462478, 0.491264, 0.738088,
		0.878260, 0.139707, 0.457321,
		29.694443, 39.174015, 31.689905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950920, 39.737278, 31.755663>,  <29.079662, 39.076221, 31.369781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950920, 39.737278, 31.755663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342360, 39.681534, 31.695103>,  <29.577223, 39.648087, 31.658766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342360, 39.681534, 31.695103>,  <28.950920, 39.737278, 31.755663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342360, 39.681534, 31.695103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048146, 0.870411, -0.489965,
		0.200062, 0.472191, 0.858494,
		0.978600, -0.139357, -0.151402,
		29.635939, 39.639729, 31.649681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150288, 40.433887, 31.716232>,  <28.950920, 39.737278, 31.755663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150288, 40.433887, 31.716232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469906, 40.235332, 31.580515>,  <29.661676, 40.116199, 31.499084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469906, 40.235332, 31.580515>,  <29.150288, 40.433887, 31.716232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469906, 40.235332, 31.580515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148593, 0.709822, -0.688529,
		0.582617, 0.499751, 0.640942,
		0.799048, -0.496389, -0.339295,
		29.709620, 40.086414, 31.478727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647789, 40.992756, 31.535812>,  <29.150288, 40.433887, 31.716232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647789, 40.992756, 31.535812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749943, 40.651253, 31.354317>,  <29.811235, 40.446350, 31.245419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749943, 40.651253, 31.354317>,  <29.647789, 40.992756, 31.535812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749943, 40.651253, 31.354317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284599, 0.514893, -0.808634,
		0.924003, 0.077379, 0.374474,
		0.255385, -0.853755, -0.453741,
		29.826559, 40.395126, 31.218195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358530, 40.998013, 31.249777>,  <29.647789, 40.992756, 31.535812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358530, 40.998013, 31.249777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173536, 40.712543, 31.039337>,  <30.062540, 40.541264, 30.913074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173536, 40.712543, 31.039337>,  <30.358530, 40.998013, 31.249777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173536, 40.712543, 31.039337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416496, 0.348952, -0.839502,
		0.782713, -0.607374, 0.135857,
		-0.462484, -0.713674, -0.526098,
		30.034792, 40.498440, 30.881508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933985, 40.644844, 30.784084>,  <30.358530, 40.998013, 31.249777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933985, 40.644844, 30.784084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579180, 40.573982, 30.613520>,  <30.366297, 40.531464, 30.511181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579180, 40.573982, 30.613520>,  <30.933985, 40.644844, 30.784084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579180, 40.573982, 30.613520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374311, 0.264872, -0.888670,
		0.270422, -0.947862, -0.168611,
		-0.886997, -0.177203, -0.426422,
		30.313076, 40.520836, 30.485596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086464, 40.390102, 30.154726>,  <30.933985, 40.644844, 30.784084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086464, 40.390102, 30.154726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706722, 40.499439, 30.092739>,  <30.478878, 40.565041, 30.055548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706722, 40.499439, 30.092739>,  <31.086464, 40.390102, 30.154726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706722, 40.499439, 30.092739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191153, 0.110994, -0.975265,
		-0.249382, -0.955491, -0.157623,
		-0.949352, 0.273343, -0.154965,
		30.421917, 40.581444, 30.046249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814121, 40.008286, 29.625023>,  <31.086464, 40.390102, 30.154726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814121, 40.008286, 29.625023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584679, 40.335938, 29.625332>,  <30.447014, 40.532528, 29.625517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584679, 40.335938, 29.625332>,  <30.814121, 40.008286, 29.625023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584679, 40.335938, 29.625332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220635, 0.155412, -0.962895,
		-0.788858, -0.552151, -0.269874,
		-0.573605, 0.819131, 0.000774,
		30.412598, 40.581676, 29.625565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476511, 39.888054, 29.016609>,  <30.814121, 40.008286, 29.625023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476511, 39.888054, 29.016609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416084, 40.269447, 29.120960>,  <30.379829, 40.498283, 29.183571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416084, 40.269447, 29.120960>,  <30.476511, 39.888054, 29.016609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416084, 40.269447, 29.120960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161318, 0.284145, -0.945113,
		-0.975272, -0.100690, -0.196738,
		-0.151065, 0.953480, 0.260876,
		30.370766, 40.555492, 29.199223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043892, 40.124813, 28.413263>,  <30.476511, 39.888054, 29.016609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043892, 40.124813, 28.413263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.171612, 40.463188, 28.584116>,  <30.248243, 40.666214, 28.686628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.171612, 40.463188, 28.584116>,  <30.043892, 40.124813, 28.413263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171612, 40.463188, 28.584116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303704, 0.335609, -0.891701,
		-0.897670, 0.414442, -0.149753,
		0.319300, 0.845934, 0.427134,
		30.267403, 40.716969, 28.712255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712795, 40.712559, 28.138664>,  <30.043892, 40.124813, 28.413263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712795, 40.712559, 28.138664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056217, 40.847572, 28.293043>,  <30.262270, 40.928581, 28.385670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056217, 40.847572, 28.293043>,  <29.712795, 40.712559, 28.138664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056217, 40.847572, 28.293043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182896, 0.501606, -0.845541,
		-0.478993, 0.796531, 0.368922,
		0.858554, 0.337534, 0.385948,
		30.313784, 40.948833, 28.408827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779905, 41.468697, 27.938187>,  <29.712795, 40.712559, 28.138664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779905, 41.468697, 27.938187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156321, 41.367195, 28.027676>,  <30.382170, 41.306293, 28.081369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156321, 41.367195, 28.027676>,  <29.779905, 41.468697, 27.938187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156321, 41.367195, 28.027676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304338, 0.346240, -0.887410,
		0.147726, 0.903175, 0.403054,
		0.941040, -0.253758, 0.223721,
		30.438633, 41.291069, 28.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.448635, 40.012199, 46.708755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065750, 39.896530, 46.704201>,  <40.836021, 39.827129, 46.701466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065750, 39.896530, 46.704201>,  <41.448635, 40.012199, 46.708755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065750, 39.896530, 46.704201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158468, 0.490817, 0.856730,
		-0.242151, 0.821875, -0.515639,
		-0.957210, -0.289170, -0.011389,
		40.778587, 39.809780, 46.700783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155342, 40.552139, 47.063412>,  <41.448635, 40.012199, 46.708755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155342, 40.552139, 47.063412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863808, 40.278313, 47.068562>,  <40.688885, 40.114017, 47.071651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863808, 40.278313, 47.068562>,  <41.155342, 40.552139, 47.063412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863808, 40.278313, 47.068562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416206, 0.457904, 0.785555,
		-0.543660, 0.567182, -0.618658,
		-0.728839, -0.684564, 0.012879,
		40.645157, 40.072945, 47.072426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510845, 40.878464, 47.104027>,  <41.155342, 40.552139, 47.063412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510845, 40.878464, 47.104027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412128, 40.509876, 47.224018>,  <40.352898, 40.288723, 47.296013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412128, 40.509876, 47.224018>,  <40.510845, 40.878464, 47.104027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412128, 40.509876, 47.224018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472168, 0.384668, 0.793151,
		-0.846256, 0.054103, -0.530021,
		-0.246794, -0.921468, 0.299982,
		40.338089, 40.233437, 47.314014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885632, 40.950386, 47.307793>,  <40.510845, 40.878464, 47.104027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885632, 40.950386, 47.307793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988106, 40.607113, 47.485737>,  <40.049591, 40.401150, 47.592503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988106, 40.607113, 47.485737>,  <39.885632, 40.950386, 47.307793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988106, 40.607113, 47.485737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504693, 0.273753, 0.818746,
		-0.824412, -0.434266, -0.362985,
		0.256185, -0.858180, 0.444856,
		40.064960, 40.349659, 47.619194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255184, 40.692360, 47.611595>,  <39.885632, 40.950386, 47.307793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255184, 40.692360, 47.611595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552315, 40.498951, 47.796818>,  <39.730591, 40.382904, 47.907951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552315, 40.498951, 47.796818>,  <39.255184, 40.692360, 47.611595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552315, 40.498951, 47.796818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467117, 0.121155, 0.875856,
		-0.479600, -0.866905, -0.135866,
		0.742823, -0.483525, 0.463052,
		39.775162, 40.353893, 47.935734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978436, 40.092613, 48.112026>,  <39.255184, 40.692360, 47.611595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978436, 40.092613, 48.112026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.341011, 40.223297, 48.219074>,  <39.558556, 40.301708, 48.283302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.341011, 40.223297, 48.219074>,  <38.978436, 40.092613, 48.112026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341011, 40.223297, 48.219074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299734, 0.051247, 0.952645,
		0.297523, -0.943734, 0.144378,
		0.906443, 0.326709, 0.267622,
		39.612946, 40.321308, 48.299362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142658, 39.655548, 48.612690>,  <38.978436, 40.092613, 48.112026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142658, 39.655548, 48.612690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360870, 39.988319, 48.653271>,  <39.491798, 40.187981, 48.677620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360870, 39.988319, 48.653271>,  <39.142658, 39.655548, 48.612690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360870, 39.988319, 48.653271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282046, 0.068246, 0.956971,
		0.789207, -0.550671, 0.271872,
		0.545530, 0.831928, 0.101455,
		39.524529, 40.237896, 48.683708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444176, 39.517025, 49.215214>,  <39.142658, 39.655548, 48.612690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444176, 39.517025, 49.215214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509266, 39.905403, 49.145039>,  <39.548321, 40.138432, 49.102932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509266, 39.905403, 49.145039>,  <39.444176, 39.517025, 49.215214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509266, 39.905403, 49.145039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226778, 0.209857, 0.951068,
		0.960256, -0.114980, 0.254340,
		0.162729, 0.970947, -0.175441,
		39.558086, 40.196686, 49.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764736, 39.879208, 49.862305>,  <39.444176, 39.517025, 49.215214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764736, 39.879208, 49.862305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628185, 40.190956, 49.652145>,  <39.546253, 40.378006, 49.526051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628185, 40.190956, 49.652145>,  <39.764736, 39.879208, 49.862305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628185, 40.190956, 49.652145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276428, 0.451013, 0.848631,
		0.898358, 0.434941, 0.061472,
		-0.341379, 0.779367, -0.525401,
		39.525772, 40.424767, 49.494526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040901, 40.459995, 50.257282>,  <39.764736, 39.879208, 49.862305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040901, 40.459995, 50.257282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739140, 40.597008, 50.033302>,  <39.558083, 40.679214, 49.898914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739140, 40.597008, 50.033302>,  <40.040901, 40.459995, 50.257282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739140, 40.597008, 50.033302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423119, 0.398422, 0.813775,
		0.501841, 0.850842, -0.155639,
		-0.754404, 0.342532, -0.559952,
		39.512817, 40.699768, 49.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961872, 41.161514, 50.426144>,  <40.040901, 40.459995, 50.257282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961872, 41.161514, 50.426144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615372, 41.053539, 50.257977>,  <39.407471, 40.988754, 50.157078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615372, 41.053539, 50.257977>,  <39.961872, 41.161514, 50.426144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615372, 41.053539, 50.257977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499579, 0.478243, 0.722291,
		0.006092, 0.835715, -0.549130,
		-0.866247, -0.269934, -0.420419,
		39.355499, 40.972561, 50.131851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580013, 41.718040, 50.296696>,  <39.961872, 41.161514, 50.426144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580013, 41.718040, 50.296696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331856, 41.411213, 50.362076>,  <39.182961, 41.227116, 50.401302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331856, 41.411213, 50.362076>,  <39.580013, 41.718040, 50.296696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331856, 41.411213, 50.362076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656069, 0.621767, 0.427760,
		-0.429748, 0.158147, -0.888992,
		-0.620395, -0.767069, 0.163447,
		39.145737, 41.181091, 50.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920746, 41.865456, 50.002800>,  <39.580013, 41.718040, 50.296696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920746, 41.865456, 50.002800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903187, 41.614765, 50.313999>,  <38.892651, 41.464352, 50.500717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903187, 41.614765, 50.313999>,  <38.920746, 41.865456, 50.002800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903187, 41.614765, 50.313999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689625, 0.582459, 0.430300,
		-0.722834, -0.517638, -0.457778,
		-0.043898, -0.626731, 0.777998,
		38.890018, 41.426746, 50.547398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159958, 41.923721, 50.176441>,  <38.920746, 41.865456, 50.002800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159958, 41.923721, 50.176441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805084, 42.089729, 50.095783>,  <37.592159, 42.189335, 50.047390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805084, 42.089729, 50.095783>,  <38.159958, 41.923721, 50.176441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805084, 42.089729, 50.095783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209511, -0.027030, -0.977432,
		-0.411106, -0.909410, -0.062971,
		-0.887185, 0.415021, -0.201644,
		37.538929, 42.214237, 50.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593567, 41.489330, 49.811028>,  <38.159958, 41.923721, 50.176441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593567, 41.489330, 49.811028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511066, 41.865860, 49.704174>,  <37.461567, 42.091778, 49.640060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511066, 41.865860, 49.704174>,  <37.593567, 41.489330, 49.811028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511066, 41.865860, 49.704174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105895, -0.249929, -0.962456,
		-0.972752, -0.226799, -0.048133,
		-0.206254, 0.941328, -0.267136,
		37.449192, 42.148258, 49.624035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215984, 41.486015, 49.236832>,  <37.593567, 41.489330, 49.811028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215984, 41.486015, 49.236832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386978, 41.847004, 49.215679>,  <37.489574, 42.063599, 49.202988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386978, 41.847004, 49.215679>,  <37.215984, 41.486015, 49.236832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386978, 41.847004, 49.215679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086638, -0.099121, -0.991297,
		-0.899860, 0.419186, -0.120561,
		0.427488, 0.902473, -0.052877,
		37.515224, 42.117744, 49.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823841, 41.938282, 48.746025>,  <37.215984, 41.486015, 49.236832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823841, 41.938282, 48.746025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170105, 42.138515, 48.748940>,  <37.377861, 42.258656, 48.750690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170105, 42.138515, 48.748940>,  <36.823841, 41.938282, 48.746025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170105, 42.138515, 48.748940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041208, 0.085758, -0.995463,
		-0.498938, 0.861430, 0.094865,
		0.865658, 0.500584, 0.007290,
		37.429802, 42.288692, 48.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696262, 42.489456, 48.334576>,  <36.823841, 41.938282, 48.746025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696262, 42.489456, 48.334576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094254, 42.493313, 48.294731>,  <37.333050, 42.495625, 48.270824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094254, 42.493313, 48.294731>,  <36.696262, 42.489456, 48.334576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094254, 42.493313, 48.294731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100002, 0.134143, -0.985903,
		0.003860, 0.990915, 0.134433,
		0.994980, 0.009638, -0.099611,
		37.392746, 42.496204, 48.264847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864349, 43.070278, 47.846733>,  <36.696262, 42.489456, 48.334576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864349, 43.070278, 47.846733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175964, 42.820290, 47.866783>,  <37.362934, 42.670296, 47.878815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175964, 42.820290, 47.866783>,  <36.864349, 43.070278, 47.846733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175964, 42.820290, 47.866783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230484, 0.211117, -0.949898,
		0.583073, 0.751562, 0.308514,
		0.779040, -0.624968, 0.050126,
		37.409676, 42.632801, 47.881821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291298, 43.360428, 47.367004>,  <36.864349, 43.070278, 47.846733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291298, 43.360428, 47.367004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466923, 43.007637, 47.435516>,  <37.572296, 42.795963, 47.476624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466923, 43.007637, 47.435516>,  <37.291298, 43.360428, 47.367004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466923, 43.007637, 47.435516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328264, -0.019981, -0.944375,
		0.836341, 0.470864, 0.280750,
		0.439063, -0.881979, 0.171279,
		37.598640, 42.743042, 47.486900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958179, 43.379372, 47.059807>,  <37.291298, 43.360428, 47.367004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958179, 43.379372, 47.059807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895725, 42.985687, 47.093166>,  <37.858253, 42.749477, 47.113182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895725, 42.985687, 47.093166>,  <37.958179, 43.379372, 47.059807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895725, 42.985687, 47.093166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229647, -0.118291, -0.966058,
		0.960668, -0.131684, 0.244491,
		-0.156136, -0.984208, 0.083398,
		37.848885, 42.690426, 47.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532261, 43.054825, 46.850166>,  <37.958179, 43.379372, 47.059807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532261, 43.054825, 46.850166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216030, 42.815609, 46.797493>,  <38.026291, 42.672081, 46.765888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216030, 42.815609, 46.797493>,  <38.532261, 43.054825, 46.850166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216030, 42.815609, 46.797493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270126, -0.147599, -0.951445,
		0.549564, -0.787760, 0.278233,
		-0.790577, -0.598038, -0.131679,
		37.978859, 42.636196, 46.757988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844162, 42.431107, 46.437336>,  <38.532261, 43.054825, 46.850166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844162, 42.431107, 46.437336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448555, 42.435993, 46.378422>,  <38.211189, 42.438927, 46.343071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448555, 42.435993, 46.378422>,  <38.844162, 42.431107, 46.437336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448555, 42.435993, 46.378422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136596, -0.304967, -0.942516,
		-0.056433, -0.952285, 0.299949,
		-0.989018, 0.012217, -0.147289,
		38.151848, 42.439659, 46.334236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734859, 41.810143, 45.993835>,  <38.844162, 42.431107, 46.437336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734859, 41.810143, 45.993835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395611, 42.021286, 45.975689>,  <38.192062, 42.147972, 45.964802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395611, 42.021286, 45.975689>,  <38.734859, 41.810143, 45.993835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395611, 42.021286, 45.975689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137989, -0.302754, -0.943027,
		-0.511518, -0.793540, 0.329610,
		-0.848121, 0.527858, -0.045365,
		38.141174, 42.179642, 45.962078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272938, 41.376186, 45.712929>,  <38.734859, 41.810143, 45.993835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272938, 41.376186, 45.712929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106339, 41.735146, 45.654682>,  <38.006378, 41.950523, 45.619736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106339, 41.735146, 45.654682>,  <38.272938, 41.376186, 45.712929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106339, 41.735146, 45.654682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238000, -0.262210, -0.935202,
		-0.877432, -0.354851, 0.322791,
		-0.416496, 0.897400, -0.145617,
		37.981388, 42.004364, 45.610996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576740, 41.253422, 45.526279>,  <38.272938, 41.376186, 45.712929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576740, 41.253422, 45.526279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665489, 41.621826, 45.398216>,  <37.718739, 41.842869, 45.321377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665489, 41.621826, 45.398216>,  <37.576740, 41.253422, 45.526279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665489, 41.621826, 45.398216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386777, -0.218281, -0.895967,
		-0.895085, 0.322622, 0.307796,
		0.221872, 0.921015, -0.320163,
		37.732052, 41.898132, 45.302166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069645, 41.480061, 45.114517>,  <37.576740, 41.253422, 45.526279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069645, 41.480061, 45.114517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355587, 41.725723, 44.980778>,  <37.527153, 41.873123, 44.900536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355587, 41.725723, 44.980778>,  <37.069645, 41.480061, 45.114517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355587, 41.725723, 44.980778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257398, -0.213457, -0.942434,
		-0.650173, 0.759766, 0.005492,
		0.714858, 0.614159, -0.334346,
		37.570045, 41.909969, 44.880474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789700, 41.959068, 44.520065>,  <37.069645, 41.480061, 45.114517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789700, 41.959068, 44.520065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185867, 41.938061, 44.468987>,  <37.423569, 41.925457, 44.438339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185867, 41.938061, 44.468987>,  <36.789700, 41.959068, 44.520065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185867, 41.938061, 44.468987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133576, -0.130239, -0.982443,
		0.034968, 0.990090, -0.136007,
		0.990421, -0.052522, -0.127698,
		37.482994, 41.922306, 44.430676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237099, 42.402119, 44.170601>,  <36.789700, 41.959068, 44.520065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237099, 42.402119, 44.170601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870178, 42.245346, 44.142475>,  <35.650024, 42.151283, 44.125599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870178, 42.245346, 44.142475>,  <36.237099, 42.402119, 44.170601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870178, 42.245346, 44.142475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204807, 0.312954, 0.927423,
		-0.341483, 0.865129, -0.367344,
		-0.917302, -0.391934, -0.070316,
		35.594986, 42.127766, 44.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726204, 42.934223, 44.351196>,  <36.237099, 42.402119, 44.170601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726204, 42.934223, 44.351196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518063, 42.596317, 44.401169>,  <35.393177, 42.393574, 44.431152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518063, 42.596317, 44.401169>,  <35.726204, 42.934223, 44.351196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518063, 42.596317, 44.401169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361740, 0.350580, 0.863850,
		-0.773547, 0.404315, -0.488010,
		-0.520354, -0.844762, 0.124933,
		35.361958, 42.342888, 44.438648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094109, 43.213200, 44.617649>,  <35.726204, 42.934223, 44.351196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094109, 43.213200, 44.617649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116482, 42.821213, 44.694103>,  <35.129906, 42.586021, 44.739975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116482, 42.821213, 44.694103>,  <35.094109, 43.213200, 44.617649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116482, 42.821213, 44.694103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397710, 0.153728, 0.904541,
		-0.915805, -0.126607, -0.381146,
		0.055928, -0.979969, 0.191138,
		35.133259, 42.527222, 44.751446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486301, 43.012009, 45.106846>,  <35.094109, 43.213200, 44.617649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486301, 43.012009, 45.106846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729370, 42.695408, 45.132961>,  <34.875210, 42.505447, 45.148628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729370, 42.695408, 45.132961>,  <34.486301, 43.012009, 45.106846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729370, 42.695408, 45.132961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100648, 0.004792, 0.994911,
		-0.787788, -0.611146, -0.076751,
		0.607667, -0.791504, 0.065285,
		34.911671, 42.457958, 45.152546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204338, 42.527721, 45.483662>,  <34.486301, 43.012009, 45.106846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204338, 42.527721, 45.483662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591164, 42.442654, 45.539593>,  <34.823261, 42.391613, 45.573151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591164, 42.442654, 45.539593>,  <34.204338, 42.527721, 45.483662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591164, 42.442654, 45.539593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114665, 0.126420, 0.985327,
		-0.227229, -0.968911, 0.097870,
		0.967067, -0.212672, 0.139827,
		34.881283, 42.378853, 45.581539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252396, 42.057835, 46.065952>,  <34.204338, 42.527721, 45.483662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252396, 42.057835, 46.065952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631439, 42.179214, 46.026028>,  <34.858864, 42.252041, 46.002071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631439, 42.179214, 46.026028>,  <34.252396, 42.057835, 46.065952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631439, 42.179214, 46.026028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029713, 0.227374, 0.973354,
		0.318056, -0.925322, 0.206445,
		0.947606, 0.303447, -0.099811,
		34.915722, 42.270248, 45.996086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519520, 41.833004, 46.655766>,  <34.252396, 42.057835, 46.065952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519520, 41.833004, 46.655766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772007, 42.110252, 46.516544>,  <34.923500, 42.276604, 46.433014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772007, 42.110252, 46.516544>,  <34.519520, 41.833004, 46.655766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772007, 42.110252, 46.516544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159685, 0.322996, 0.932831,
		0.758988, -0.644400, 0.093200,
		0.631219, 0.693125, -0.348051,
		34.961372, 42.318192, 46.412128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400204, 41.000626, 46.568802>,  <34.519520, 41.833004, 46.655766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400204, 41.000626, 46.568802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132366, 40.862942, 46.832062>,  <33.971664, 40.780331, 46.990017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132366, 40.862942, 46.832062>,  <34.400204, 41.000626, 46.568802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132366, 40.862942, 46.832062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571650, -0.326906, -0.752561,
		0.474191, -0.880144, 0.022128,
		-0.669596, -0.344208, 0.658150,
		33.931488, 40.759678, 47.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339016, 40.218021, 46.489811>,  <34.400204, 41.000626, 46.568802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339016, 40.218021, 46.489811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014591, 40.400742, 46.635963>,  <33.819935, 40.510376, 46.723656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014591, 40.400742, 46.635963>,  <34.339016, 40.218021, 46.489811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014591, 40.400742, 46.635963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466477, -0.128203, -0.875193,
		-0.352947, -0.880282, 0.317068,
		-0.811066, 0.456802, 0.365382,
		33.771271, 40.537781, 46.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779247, 39.671959, 46.533859>,  <34.339016, 40.218021, 46.489811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779247, 39.671959, 46.533859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628746, 40.042336, 46.520756>,  <33.538445, 40.264561, 46.512894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628746, 40.042336, 46.520756>,  <33.779247, 39.671959, 46.533859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628746, 40.042336, 46.520756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474304, -0.222858, -0.851686,
		-0.795910, -0.304910, 0.523027,
		-0.376248, 0.925940, -0.032755,
		33.515873, 40.320118, 46.510929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219849, 39.556499, 46.174156>,  <33.779247, 39.671959, 46.533859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219849, 39.556499, 46.174156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218639, 39.954235, 46.131668>,  <33.217915, 40.192875, 46.106174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218639, 39.954235, 46.131668>,  <33.219849, 39.556499, 46.174156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218639, 39.954235, 46.131668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381593, -0.099332, -0.918978,
		-0.924325, 0.037752, 0.379733,
		-0.003026, 0.994338, -0.106221,
		33.217731, 40.252537, 46.099800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528255, 39.769169, 45.738640>,  <33.219849, 39.556499, 46.174156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528255, 39.769169, 45.738640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839790, 40.015850, 45.692860>,  <33.026711, 40.163857, 45.665394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839790, 40.015850, 45.692860>,  <32.528255, 39.769169, 45.738640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839790, 40.015850, 45.692860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125432, -0.025644, -0.991771,
		-0.614559, 0.786781, 0.057381,
		0.778835, 0.616699, -0.114447,
		33.073441, 40.200859, 45.658527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276356, 40.282280, 45.264393>,  <32.528255, 39.769169, 45.738640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276356, 40.282280, 45.264393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675720, 40.296513, 45.246956>,  <32.915340, 40.305050, 45.236492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675720, 40.296513, 45.246956>,  <32.276356, 40.282280, 45.264393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675720, 40.296513, 45.246956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040499, -0.083516, -0.995683,
		-0.039066, 0.995871, -0.081943,
		0.998416, 0.035579, -0.043595,
		32.975246, 40.307186, 45.233879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332611, 40.686790, 44.662994>,  <32.276356, 40.282280, 45.264393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332611, 40.686790, 44.662994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697300, 40.535027, 44.726009>,  <32.916115, 40.443970, 44.763817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697300, 40.535027, 44.726009>,  <32.332611, 40.686790, 44.662994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697300, 40.535027, 44.726009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201261, 0.078217, -0.976410,
		0.358134, 0.921918, 0.147672,
		0.911721, -0.379406, 0.157534,
		32.970818, 40.421204, 44.773270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.291359, 39.944305, 50.140652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.685970, 40.007725, 50.156765>,  <36.922737, 40.045776, 50.166435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.685970, 40.007725, 50.156765>,  <36.291359, 39.944305, 50.140652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685970, 40.007725, 50.156765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113984, -0.489594, -0.864468,
		-0.117335, 0.857415, -0.501071,
		0.986529, 0.158547, 0.040285,
		36.981930, 40.055290, 50.168850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538704, 40.274918, 49.481075>,  <36.291359, 39.944305, 50.140652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538704, 40.274918, 49.481075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843433, 40.085693, 49.658092>,  <37.026272, 39.972160, 49.764301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843433, 40.085693, 49.658092>,  <36.538704, 40.274918, 49.481075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843433, 40.085693, 49.658092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183702, -0.497347, -0.847880,
		0.621195, 0.727228, -0.291987,
		0.761820, -0.473061, 0.442542,
		37.071980, 39.943775, 49.790855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083908, 40.240570, 48.937294>,  <36.538704, 40.274918, 49.481075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083908, 40.240570, 48.937294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186195, 39.973560, 49.217014>,  <37.247566, 39.813354, 49.384846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186195, 39.973560, 49.217014>,  <37.083908, 40.240570, 48.937294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186195, 39.973560, 49.217014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172314, -0.680298, -0.712392,
		0.951271, 0.302671, -0.058942,
		0.255719, -0.667521, 0.699302,
		37.262913, 39.773304, 49.426804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537724, 39.937347, 48.673252>,  <37.083908, 40.240570, 48.937294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537724, 39.937347, 48.673252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481632, 39.657055, 48.953056>,  <37.447975, 39.488880, 49.120937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481632, 39.657055, 48.953056>,  <37.537724, 39.937347, 48.673252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481632, 39.657055, 48.953056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412400, -0.683629, -0.602144,
		0.900145, 0.204038, 0.384847,
		-0.140233, -0.700728, 0.699511,
		37.439564, 39.446838, 49.162910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284122, 39.706898, 48.770645>,  <37.537724, 39.937347, 48.673252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284122, 39.706898, 48.770645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.001667, 39.452477, 48.895100>,  <37.832195, 39.299824, 48.969772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.001667, 39.452477, 48.895100>,  <38.284122, 39.706898, 48.770645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001667, 39.452477, 48.895100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360696, -0.701245, -0.614943,
		0.609319, -0.322009, 0.724597,
		-0.706137, -0.636055, 0.311135,
		37.789825, 39.261662, 48.988441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579292, 39.022964, 48.752987>,  <38.284122, 39.706898, 48.770645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579292, 39.022964, 48.752987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189251, 38.934299, 48.755108>,  <37.955227, 38.881100, 48.756382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189251, 38.934299, 48.755108>,  <38.579292, 39.022964, 48.752987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189251, 38.934299, 48.755108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142842, -0.646288, -0.749605,
		0.169589, -0.730189, 0.661864,
		-0.975108, -0.221667, 0.005302,
		37.896717, 38.867798, 48.756699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519520, 38.311775, 48.721542>,  <38.579292, 39.022964, 48.752987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519520, 38.311775, 48.721542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.173740, 38.457054, 48.582508>,  <37.966274, 38.544224, 48.499088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.173740, 38.457054, 48.582508>,  <38.519520, 38.311775, 48.721542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173740, 38.457054, 48.582508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071387, -0.595711, -0.800020,
		-0.497624, -0.716390, 0.489035,
		-0.864450, 0.363199, -0.347581,
		37.914406, 38.566013, 48.478233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069542, 37.701439, 48.855541>,  <38.519520, 38.311775, 48.721542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069542, 37.701439, 48.855541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938423, 37.928429, 48.553410>,  <37.859753, 38.064625, 48.372131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938423, 37.928429, 48.553410>,  <38.069542, 37.701439, 48.855541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938423, 37.928429, 48.553410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005464, -0.800625, -0.599140,
		-0.944732, -0.192271, 0.265545,
		-0.327799, 0.567478, -0.755326,
		37.840084, 38.098671, 48.326813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513729, 37.401596, 48.618645>,  <38.069542, 37.701439, 48.855541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513729, 37.401596, 48.618645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621441, 37.628857, 48.307598>,  <37.686066, 37.765213, 48.120972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621441, 37.628857, 48.307598>,  <37.513729, 37.401596, 48.618645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621441, 37.628857, 48.307598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064590, -0.794970, -0.603201,
		-0.960895, 0.212654, -0.177368,
		0.269275, 0.568156, -0.777618,
		37.702225, 37.799305, 48.074314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097919, 37.112923, 48.028515>,  <37.513729, 37.401596, 48.618645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097919, 37.112923, 48.028515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407932, 37.312843, 47.873844>,  <37.593941, 37.432796, 47.781044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407932, 37.312843, 47.873844>,  <37.097919, 37.112923, 48.028515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407932, 37.312843, 47.873844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147247, -0.737900, -0.658651,
		-0.614522, 0.453542, -0.645494,
		0.775036, 0.499803, -0.386673,
		37.640442, 37.462784, 47.757843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136009, 36.817924, 47.248940>,  <37.097919, 37.112923, 48.028515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136009, 36.817924, 47.248940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455528, 37.050331, 47.311344>,  <37.647240, 37.189777, 47.348789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455528, 37.050331, 47.311344>,  <37.136009, 36.817924, 47.248940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455528, 37.050331, 47.311344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446174, -0.398197, -0.801479,
		-0.403552, 0.709827, -0.577314,
		0.798796, 0.581021, 0.156013,
		37.695168, 37.224636, 47.358147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165188, 37.267765, 46.735222>,  <37.136009, 36.817924, 47.248940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165188, 37.267765, 46.735222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536171, 37.236694, 46.881535>,  <37.758759, 37.218052, 46.969322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536171, 37.236694, 46.881535>,  <37.165188, 37.267765, 46.735222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536171, 37.236694, 46.881535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307988, -0.396075, -0.865025,
		0.212070, 0.914927, -0.343417,
		0.927453, -0.077678, 0.365782,
		37.814407, 37.213390, 46.991268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804882, 37.796165, 46.294575>,  <37.165188, 37.267765, 46.735222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804882, 37.796165, 46.294575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426918, 37.680828, 46.232594>,  <36.200142, 37.611626, 46.195404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426918, 37.680828, 46.232594>,  <36.804882, 37.796165, 46.294575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426918, 37.680828, 46.232594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232550, 0.258175, 0.937692,
		-0.230369, 0.922066, -0.311006,
		-0.944908, -0.288340, -0.154951,
		36.143444, 37.594326, 46.186108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506847, 38.216709, 46.705605>,  <36.804882, 37.796165, 46.294575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506847, 38.216709, 46.705605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229847, 37.939518, 46.625389>,  <36.063644, 37.773201, 46.577259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229847, 37.939518, 46.625389>,  <36.506847, 38.216709, 46.705605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229847, 37.939518, 46.625389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413720, 0.153766, 0.897325,
		-0.590993, 0.704368, -0.393183,
		-0.692505, -0.692981, -0.200537,
		36.022095, 37.731625, 46.565228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936543, 38.510948, 47.016342>,  <36.506847, 38.216709, 46.705605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936543, 38.510948, 47.016342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828094, 38.130558, 46.956825>,  <35.763027, 37.902325, 46.921116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828094, 38.130558, 46.956825>,  <35.936543, 38.510948, 47.016342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828094, 38.130558, 46.956825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553032, 0.027379, 0.832710,
		-0.787813, 0.308051, -0.533343,
		-0.271120, -0.950976, -0.148792,
		35.746758, 37.845264, 46.912186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173882, 38.507084, 47.085526>,  <35.936543, 38.510948, 47.016342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173882, 38.507084, 47.085526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330517, 38.141457, 47.127754>,  <35.424496, 37.922081, 47.153091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330517, 38.141457, 47.127754>,  <35.173882, 38.507084, 47.085526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330517, 38.141457, 47.127754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581050, -0.156682, 0.798644,
		-0.713473, -0.374077, -0.592472,
		0.391584, -0.914066, 0.105569,
		35.447990, 37.867237, 47.159424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588215, 38.003487, 47.287605>,  <35.173882, 38.507084, 47.085526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588215, 38.003487, 47.287605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913967, 37.783039, 47.360313>,  <35.109421, 37.650768, 47.403938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913967, 37.783039, 47.360313>,  <34.588215, 38.003487, 47.287605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913967, 37.783039, 47.360313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389450, -0.286813, 0.875252,
		-0.430238, -0.783583, -0.448211,
		0.814385, -0.551123, 0.181769,
		35.158283, 37.617702, 47.414845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342522, 37.280201, 47.522457>,  <34.588215, 38.003487, 47.287605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342522, 37.280201, 47.522457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706734, 37.351681, 47.671589>,  <34.925259, 37.394569, 47.761070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706734, 37.351681, 47.671589>,  <34.342522, 37.280201, 47.522457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706734, 37.351681, 47.671589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358721, -0.106894, 0.927304,
		0.205567, -0.978079, -0.033225,
		0.910528, 0.178705, 0.372831,
		34.979893, 37.405293, 47.783440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505852, 36.713097, 48.046894>,  <34.342522, 37.280201, 47.522457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505852, 36.713097, 48.046894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.703960, 37.052673, 48.120663>,  <34.822826, 37.256420, 48.164925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.703960, 37.052673, 48.120663>,  <34.505852, 36.713097, 48.046894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703960, 37.052673, 48.120663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347802, -0.000767, 0.937568,
		0.796078, -0.528493, 0.294882,
		0.495272, 0.848937, 0.184421,
		34.852543, 37.307354, 48.175987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550591, 36.587978, 48.726685>,  <34.505852, 36.713097, 48.046894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550591, 36.587978, 48.726685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.656197, 36.967804, 48.659004>,  <34.719559, 37.195698, 48.618397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.656197, 36.967804, 48.659004>,  <34.550591, 36.587978, 48.726685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656197, 36.967804, 48.659004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213170, 0.228530, 0.949912,
		0.940667, -0.214723, 0.262754,
		0.264015, 0.949562, -0.169198,
		34.735401, 37.252674, 48.608246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126568, 36.789352, 49.265934>,  <34.550591, 36.587978, 48.726685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126568, 36.789352, 49.265934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952763, 37.118301, 49.119015>,  <34.848480, 37.315670, 49.030865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952763, 37.118301, 49.119015>,  <35.126568, 36.789352, 49.265934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952763, 37.118301, 49.119015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089512, 0.366355, 0.926160,
		0.896208, 0.435303, -0.085572,
		-0.434510, 0.822372, -0.367295,
		34.822411, 37.365013, 49.008827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498711, 37.368366, 49.545650>,  <35.126568, 36.789352, 49.265934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498711, 37.368366, 49.545650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140392, 37.507835, 49.435390>,  <34.925400, 37.591515, 49.369236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140392, 37.507835, 49.435390>,  <35.498711, 37.368366, 49.545650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140392, 37.507835, 49.435390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171178, 0.301699, 0.937910,
		0.410182, 0.887360, -0.210576,
		-0.895795, 0.348668, -0.275648,
		34.871655, 37.612434, 49.352695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528233, 37.988213, 49.965763>,  <35.498711, 37.368366, 49.545650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528233, 37.988213, 49.965763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.153675, 37.943977, 49.832535>,  <34.928940, 37.917435, 49.752598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.153675, 37.943977, 49.832535>,  <35.528233, 37.988213, 49.965763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153675, 37.943977, 49.832535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341927, 0.501296, 0.794852,
		0.079061, 0.858180, -0.507225,
		-0.936395, -0.110593, -0.333067,
		34.872757, 37.910801, 49.732616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115032, 38.634327, 50.052536>,  <35.528233, 37.988213, 49.965763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115032, 38.634327, 50.052536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.825809, 38.358162, 50.043423>,  <34.652275, 38.192463, 50.037956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.825809, 38.358162, 50.043423>,  <35.115032, 38.634327, 50.052536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825809, 38.358162, 50.043423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386064, 0.376532, 0.842127,
		-0.572835, 0.617703, -0.538798,
		-0.723059, -0.690410, -0.022781,
		34.608891, 38.151039, 50.036587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357529, 38.989475, 50.141281>,  <35.115032, 38.634327, 50.052536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357529, 38.989475, 50.141281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326057, 38.604786, 50.246281>,  <34.307175, 38.373974, 50.309280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326057, 38.604786, 50.246281>,  <34.357529, 38.989475, 50.141281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326057, 38.604786, 50.246281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495938, 0.266180, 0.826555,
		-0.864786, -0.065155, -0.497895,
		-0.078675, -0.961718, 0.262502,
		34.302456, 38.316269, 50.325031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694565, 39.230972, 49.455059>,  <34.357529, 38.989475, 50.141281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694565, 39.230972, 49.455059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465256, 39.421635, 49.721642>,  <34.327671, 39.536030, 49.881592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465256, 39.421635, 49.721642>,  <34.694565, 39.230972, 49.455059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465256, 39.421635, 49.721642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350727, 0.592348, -0.725338,
		-0.740506, -0.649559, -0.172402,
		-0.573272, 0.476651, 0.666455,
		34.293274, 39.564629, 49.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894253, 39.111034, 49.420219>,  <34.694565, 39.230972, 49.455059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894253, 39.111034, 49.420219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033779, 39.469303, 49.530567>,  <34.117496, 39.684265, 49.596775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033779, 39.469303, 49.530567>,  <33.894253, 39.111034, 49.420219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033779, 39.469303, 49.530567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383593, 0.405018, -0.829950,
		-0.855092, 0.183679, 0.484850,
		0.348818, 0.895669, 0.275870,
		34.138424, 39.738003, 49.613327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358070, 39.612358, 49.368397>,  <33.894253, 39.111034, 49.420219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358070, 39.612358, 49.368397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.698158, 39.818455, 49.325226>,  <33.902210, 39.942112, 49.299324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.698158, 39.818455, 49.325226>,  <33.358070, 39.612358, 49.368397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698158, 39.818455, 49.325226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334078, 0.369657, -0.867033,
		-0.406836, 0.773226, 0.486422,
		0.850221, 0.515243, -0.107928,
		33.953224, 39.973026, 49.292847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222366, 40.290379, 49.010906>,  <33.358070, 39.612358, 49.368397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222366, 40.290379, 49.010906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619118, 40.262558, 48.968327>,  <33.857170, 40.245865, 48.942780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619118, 40.262558, 48.968327>,  <33.222366, 40.290379, 49.010906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619118, 40.262558, 48.968327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060118, 0.481154, -0.874572,
		0.112042, 0.873873, 0.473068,
		0.991883, -0.069549, -0.106445,
		33.916683, 40.241692, 48.936394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375736, 40.967785, 48.892212>,  <33.222366, 40.290379, 49.010906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375736, 40.967785, 48.892212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655098, 40.721813, 48.745739>,  <33.822716, 40.574230, 48.657856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655098, 40.721813, 48.745739>,  <33.375736, 40.967785, 48.892212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655098, 40.721813, 48.745739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015369, 0.498630, -0.866679,
		0.715537, 0.610921, 0.338795,
		0.698406, -0.614933, -0.366178,
		33.864620, 40.537334, 48.635887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678669, 41.397388, 48.540775>,  <33.375736, 40.967785, 48.892212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678669, 41.397388, 48.540775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.835419, 41.064583, 48.383705>,  <33.929466, 40.864899, 48.289463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.835419, 41.064583, 48.383705>,  <33.678669, 41.397388, 48.540775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835419, 41.064583, 48.383705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219347, 0.330015, -0.918138,
		0.893490, 0.445923, -0.053176,
		0.391870, -0.832011, -0.392677,
		33.952980, 40.814980, 48.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082500, 41.588402, 47.938717>,  <33.678669, 41.397388, 48.540775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082500, 41.588402, 47.938717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991432, 41.201309, 47.895527>,  <33.936790, 40.969055, 47.869614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991432, 41.201309, 47.895527>,  <34.082500, 41.588402, 47.938717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991432, 41.201309, 47.895527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308996, 0.176959, -0.934456,
		0.923410, -0.179387, -0.339314,
		-0.227674, -0.967732, -0.107976,
		33.923130, 40.910988, 47.863132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445824, 41.404552, 47.347347>,  <34.082500, 41.588402, 47.938717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445824, 41.404552, 47.347347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173943, 41.116879, 47.405003>,  <34.010815, 40.944275, 47.439594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173943, 41.116879, 47.405003>,  <34.445824, 41.404552, 47.347347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173943, 41.116879, 47.405003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341584, 0.136467, -0.929891,
		0.649092, -0.681286, -0.338419,
		-0.679705, -0.719184, 0.144137,
		33.970032, 40.901123, 47.448242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194183, 41.851204, 47.218353>,  <34.445824, 41.404552, 47.347347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194183, 41.851204, 47.218353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176212, 42.199532, 47.022533>,  <35.165428, 42.408527, 46.905041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176212, 42.199532, 47.022533>,  <35.194183, 41.851204, 47.218353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176212, 42.199532, 47.022533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209749, 0.470895, 0.856892,
		0.976722, 0.141184, 0.161495,
		-0.044932, 0.870819, -0.489547,
		35.162731, 42.460777, 46.875668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614243, 42.297691, 47.671135>,  <35.194183, 41.851204, 47.218353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614243, 42.297691, 47.671135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423717, 42.548542, 47.424610>,  <35.309402, 42.699051, 47.276695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423717, 42.548542, 47.424610>,  <35.614243, 42.297691, 47.671135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423717, 42.548542, 47.424610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260725, 0.568678, 0.780146,
		0.839732, 0.532282, -0.107361,
		-0.476311, 0.627122, -0.616316,
		35.280823, 42.736679, 47.239716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010281, 42.827396, 47.779087>,  <35.614243, 42.297691, 47.671135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010281, 42.827396, 47.779087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652000, 42.954563, 47.654728>,  <35.437035, 43.030861, 47.580112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652000, 42.954563, 47.654728>,  <36.010281, 42.827396, 47.779087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652000, 42.954563, 47.654728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091430, 0.552561, 0.828443,
		0.435162, 0.770459, -0.465860,
		-0.895698, 0.317914, -0.310897,
		35.383289, 43.049938, 47.561459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961792, 43.565437, 47.793453>,  <36.010281, 42.827396, 47.779087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961792, 43.565437, 47.793453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.584465, 43.444260, 47.847683>,  <35.358070, 43.371552, 47.880222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.584465, 43.444260, 47.847683>,  <35.961792, 43.565437, 47.793453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584465, 43.444260, 47.847683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075987, 0.594763, 0.800301,
		-0.323085, 0.744634, -0.584069,
		-0.943314, -0.302947, 0.135577,
		35.301472, 43.353374, 47.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633411, 44.201096, 47.988674>,  <35.961792, 43.565437, 47.793453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633411, 44.201096, 47.988674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364140, 43.923355, 48.090420>,  <35.202576, 43.756710, 48.151466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364140, 43.923355, 48.090420>,  <35.633411, 44.201096, 47.988674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364140, 43.923355, 48.090420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249206, 0.536879, 0.806013,
		-0.696218, 0.479206, -0.534455,
		-0.673184, -0.694350, 0.254364,
		35.162186, 43.715050, 48.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961277, 44.529011, 48.229134>,  <35.633411, 44.201096, 47.988674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961277, 44.529011, 48.229134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939610, 44.155540, 48.370735>,  <34.926609, 43.931458, 48.455696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939610, 44.155540, 48.370735>,  <34.961277, 44.529011, 48.229134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939610, 44.155540, 48.370735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104098, 0.357870, 0.927951,
		-0.993091, 0.013413, -0.116578,
		-0.054167, -0.933675, 0.354002,
		34.923359, 43.875439, 48.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445255, 44.541615, 48.794621>,  <34.961277, 44.529011, 48.229134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445255, 44.541615, 48.794621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667404, 44.215607, 48.860729>,  <34.800694, 44.020004, 48.900394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667404, 44.215607, 48.860729>,  <34.445255, 44.541615, 48.794621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667404, 44.215607, 48.860729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002279, 0.197249, 0.980351,
		-0.831602, -0.544832, 0.107689,
		0.555368, -0.815016, 0.165275,
		34.834015, 43.971104, 48.910313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136497, 44.323387, 49.316593>,  <34.445255, 44.541615, 48.794621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136497, 44.323387, 49.316593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492722, 44.141518, 49.311382>,  <34.706455, 44.032398, 49.308258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492722, 44.141518, 49.311382>,  <34.136497, 44.323387, 49.316593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492722, 44.141518, 49.311382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146411, 0.259431, 0.954599,
		-0.430650, -0.852039, 0.297609,
		0.890564, -0.454672, -0.013024,
		34.759892, 44.005116, 49.307476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176910, 43.719589, 49.822422>,  <34.136497, 44.323387, 49.316593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176910, 43.719589, 49.822422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538853, 43.883816, 49.777397>,  <34.756020, 43.982353, 49.750381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538853, 43.883816, 49.777397>,  <34.176910, 43.719589, 49.822422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538853, 43.883816, 49.777397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049722, 0.160668, 0.985755,
		0.422807, -0.897562, 0.124966,
		0.904855, 0.410571, -0.112560,
		34.810310, 44.006989, 49.743629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.791119, 36.749493, 35.182449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141083, 36.871372, 35.333019>,  <37.351059, 36.944500, 35.423363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141083, 36.871372, 35.333019>,  <36.791119, 36.749493, 35.182449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141083, 36.871372, 35.333019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448183, 0.214916, 0.867723,
		0.183489, -0.927886, 0.324590,
		0.874908, 0.304694, 0.376428,
		37.403553, 36.962784, 35.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889275, 36.473392, 35.930298>,  <36.791119, 36.749493, 35.182449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889275, 36.473392, 35.930298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116993, 36.800571, 35.897163>,  <37.253624, 36.996880, 35.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116993, 36.800571, 35.897163>,  <36.889275, 36.473392, 35.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116993, 36.800571, 35.897163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297977, 0.299191, 0.906474,
		0.766235, -0.491365, 0.414058,
		0.569292, 0.817952, -0.082836,
		37.287781, 37.045956, 35.872314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091812, 36.595032, 36.622753>,  <36.889275, 36.473392, 35.930298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091812, 36.595032, 36.622753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171398, 36.929600, 36.418476>,  <37.219151, 37.130341, 36.295910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171398, 36.929600, 36.418476>,  <37.091812, 36.595032, 36.622753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171398, 36.929600, 36.418476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142064, 0.540225, 0.829443,
		0.969655, -0.092478, 0.226311,
		0.198964, 0.836424, -0.510694,
		37.231087, 37.180527, 36.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669777, 37.012245, 37.011127>,  <37.091812, 36.595032, 36.622753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669777, 37.012245, 37.011127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439018, 37.255417, 36.792915>,  <37.300564, 37.401321, 36.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439018, 37.255417, 36.792915>,  <37.669777, 37.012245, 37.011127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439018, 37.255417, 36.792915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021181, 0.656522, 0.754010,
		0.816540, 0.446543, -0.365871,
		-0.576900, 0.607930, -0.545535,
		37.265949, 37.437798, 36.629253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775135, 37.694191, 37.347660>,  <37.669777, 37.012245, 37.011127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775135, 37.694191, 37.347660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452881, 37.775223, 37.124985>,  <37.259529, 37.823841, 36.991379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452881, 37.775223, 37.124985>,  <37.775135, 37.694191, 37.347660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452881, 37.775223, 37.124985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259016, 0.724675, 0.638558,
		0.532783, 0.658639, -0.531354,
		-0.805638, 0.202584, -0.556693,
		37.211189, 37.835999, 36.957977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796825, 38.470303, 37.238281>,  <37.775135, 37.694191, 37.347660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796825, 38.470303, 37.238281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424515, 38.337414, 37.177250>,  <37.201126, 38.257679, 37.140633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424515, 38.337414, 37.177250>,  <37.796825, 38.470303, 37.238281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424515, 38.337414, 37.177250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337477, 0.620334, 0.708022,
		-0.140575, 0.710502, -0.689511,
		-0.930778, -0.332224, -0.152575,
		37.145283, 38.237747, 37.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408581, 39.188118, 37.020008>,  <37.796825, 38.470303, 37.238281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408581, 39.188118, 37.020008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154327, 38.900875, 37.133350>,  <37.001778, 38.728527, 37.201355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154327, 38.900875, 37.133350>,  <37.408581, 39.188118, 37.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154327, 38.900875, 37.133350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458918, 0.646634, 0.609310,
		-0.620781, 0.257257, -0.740574,
		-0.635629, -0.718111, 0.283359,
		36.963638, 38.685440, 37.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756104, 39.373096, 36.820103>,  <37.408581, 39.188118, 37.020008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756104, 39.373096, 36.820103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710144, 39.135365, 37.138493>,  <36.682568, 38.992725, 37.329525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710144, 39.135365, 37.138493>,  <36.756104, 39.373096, 36.820103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710144, 39.135365, 37.138493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505150, 0.724902, 0.468338,
		-0.855348, -0.348273, -0.383518,
		-0.114903, -0.594326, 0.795973,
		36.675674, 38.957066, 37.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972561, 39.486443, 37.038677>,  <36.756104, 39.373096, 36.820103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972561, 39.486443, 37.038677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145630, 39.336212, 37.366516>,  <36.249470, 39.246075, 37.563217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145630, 39.336212, 37.366516>,  <35.972561, 39.486443, 37.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145630, 39.336212, 37.366516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452844, 0.695554, 0.557797,
		-0.779569, -0.612491, 0.130867,
		0.432671, -0.375579, 0.819595,
		36.275433, 39.223537, 37.612396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369728, 39.536266, 37.459202>,  <35.972561, 39.486443, 37.038677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369728, 39.536266, 37.459202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696178, 39.477859, 37.682850>,  <35.892048, 39.442814, 37.817039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696178, 39.477859, 37.682850>,  <35.369728, 39.536266, 37.459202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696178, 39.477859, 37.682850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366163, 0.617853, 0.695832,
		-0.447060, -0.772616, 0.450779,
		0.816126, -0.146019, 0.559121,
		35.941017, 39.434055, 37.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093193, 39.249771, 38.169395>,  <35.369728, 39.536266, 37.459202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093193, 39.249771, 38.169395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456997, 39.385696, 38.265156>,  <35.675282, 39.467251, 38.322613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456997, 39.385696, 38.265156>,  <35.093193, 39.249771, 38.169395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456997, 39.385696, 38.265156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386800, 0.480954, 0.786809,
		0.152224, -0.808215, 0.568873,
		0.909513, 0.339811, 0.239405,
		35.729851, 39.487640, 38.336979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107769, 39.134659, 38.861862>,  <35.093193, 39.249771, 38.169395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107769, 39.134659, 38.861862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381630, 39.416092, 38.785728>,  <35.545948, 39.584949, 38.740047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381630, 39.416092, 38.785728>,  <35.107769, 39.134659, 38.861862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381630, 39.416092, 38.785728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225756, 0.452991, 0.862458,
		0.693027, -0.547515, 0.468979,
		0.684652, 0.703581, -0.190330,
		35.587025, 39.627167, 38.728630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972996, 38.605255, 39.398941>,  <35.107769, 39.134659, 38.861862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972996, 38.605255, 39.398941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593494, 38.508705, 39.317352>,  <34.365795, 38.450775, 39.268398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593494, 38.508705, 39.317352>,  <34.972996, 38.605255, 39.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593494, 38.508705, 39.317352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314271, -0.788462, -0.528736,
		-0.033197, -0.565742, 0.823914,
		-0.948753, -0.241380, -0.203970,
		34.308868, 38.436291, 39.256161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887444, 37.843281, 39.439888>,  <34.972996, 38.605255, 39.398941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887444, 37.843281, 39.439888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572716, 37.976501, 39.232040>,  <34.383881, 38.056435, 39.107334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572716, 37.976501, 39.232040>,  <34.887444, 37.843281, 39.439888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572716, 37.976501, 39.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147014, -0.716538, -0.681880,
		-0.599422, -0.612905, 0.514822,
		-0.786817, 0.333047, -0.519614,
		34.336670, 38.076416, 39.076157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650906, 37.285862, 39.084927>,  <34.887444, 37.843281, 39.439888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650906, 37.285862, 39.084927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474655, 37.584385, 38.885376>,  <34.368904, 37.763500, 38.765644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474655, 37.584385, 38.885376>,  <34.650906, 37.285862, 39.084927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474655, 37.584385, 38.885376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129547, -0.497051, -0.857997,
		-0.888295, -0.442682, 0.122330,
		-0.440624, 0.746307, -0.498876,
		34.342468, 37.808277, 38.735714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121975, 37.065540, 38.588005>,  <34.650906, 37.285862, 39.084927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121975, 37.065540, 38.588005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219738, 37.425190, 38.442768>,  <34.278397, 37.640980, 38.355625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219738, 37.425190, 38.442768>,  <34.121975, 37.065540, 38.588005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219738, 37.425190, 38.442768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128716, -0.401220, -0.906893,
		-0.961091, 0.174916, -0.213793,
		0.244408, 0.899126, -0.363095,
		34.293060, 37.694927, 38.333839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701263, 36.993618, 38.073402>,  <34.121975, 37.065540, 38.588005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701263, 36.993618, 38.073402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928871, 37.303925, 37.964298>,  <34.065437, 37.490108, 37.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928871, 37.303925, 37.964298>,  <33.701263, 36.993618, 38.073402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928871, 37.303925, 37.964298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173498, -0.437488, -0.882328,
		-0.803813, 0.454739, -0.383534,
		0.569020, 0.775769, -0.272762,
		34.099579, 37.536655, 37.882469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411545, 37.280872, 37.469479>,  <33.701263, 36.993618, 38.073402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411545, 37.280872, 37.469479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802032, 37.367043, 37.479183>,  <34.036324, 37.418743, 37.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802032, 37.367043, 37.479183>,  <33.411545, 37.280872, 37.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802032, 37.367043, 37.479183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105584, -0.374736, -0.921100,
		-0.189339, 0.901756, -0.388570,
		0.976219, 0.215427, 0.024259,
		34.094898, 37.431671, 37.486462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529583, 37.540043, 36.770042>,  <33.411545, 37.280872, 37.469479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529583, 37.540043, 36.770042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884953, 37.440170, 36.924114>,  <34.098175, 37.380245, 37.016560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884953, 37.440170, 36.924114>,  <33.529583, 37.540043, 36.770042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884953, 37.440170, 36.924114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275241, -0.381782, -0.882318,
		0.367357, 0.889888, -0.270460,
		0.888421, -0.249684, 0.385183,
		34.151478, 37.365265, 37.039669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906250, 37.635212, 36.199703>,  <33.529583, 37.540043, 36.770042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906250, 37.635212, 36.199703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104374, 37.395641, 36.451405>,  <34.223248, 37.251900, 36.602425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104374, 37.395641, 36.451405>,  <33.906250, 37.635212, 36.199703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104374, 37.395641, 36.451405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357895, -0.519334, -0.776018,
		0.791569, 0.609573, -0.042877,
		0.495307, -0.598926, 0.629252,
		34.252968, 37.215965, 36.640179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484756, 37.478329, 35.810261>,  <33.906250, 37.635212, 36.199703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484756, 37.478329, 35.810261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470573, 37.185474, 36.082355>,  <34.462063, 37.009762, 36.245613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470573, 37.185474, 36.082355>,  <34.484756, 37.478329, 35.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470573, 37.185474, 36.082355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443733, -0.621422, -0.645706,
		0.895458, 0.278951, 0.346904,
		-0.035454, -0.732135, 0.680236,
		34.459938, 36.965836, 36.286427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135986, 37.120403, 35.605682>,  <34.484756, 37.478329, 35.810261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135986, 37.120403, 35.605682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904533, 36.881390, 35.827721>,  <34.765659, 36.737980, 35.960945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904533, 36.881390, 35.827721>,  <35.135986, 37.120403, 35.605682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904533, 36.881390, 35.827721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047958, -0.704363, -0.708218,
		0.814175, -0.383179, 0.436226,
		-0.578635, -0.597534, 0.555099,
		34.730942, 36.702129, 35.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442627, 36.410038, 35.701794>,  <35.135986, 37.120403, 35.605682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442627, 36.410038, 35.701794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050220, 36.358910, 35.760132>,  <34.814777, 36.328232, 35.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050220, 36.358910, 35.760132>,  <35.442627, 36.410038, 35.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050220, 36.358910, 35.760132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006233, -0.730891, -0.682465,
		0.193828, -0.670418, 0.716219,
		-0.981016, -0.127817, 0.145846,
		34.755917, 36.320564, 35.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390591, 35.677586, 35.783363>,  <35.442627, 36.410038, 35.701794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390591, 35.677586, 35.783363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031422, 35.818737, 35.678127>,  <34.815922, 35.903427, 35.614986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031422, 35.818737, 35.678127>,  <35.390591, 35.677586, 35.783363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031422, 35.818737, 35.678127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087566, -0.728983, -0.678908,
		-0.431364, -0.586566, 0.685467,
		-0.897918, 0.352880, -0.263093,
		34.762047, 35.924603, 35.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914623, 35.111614, 35.896320>,  <35.390591, 35.677586, 35.783363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914623, 35.111614, 35.896320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794682, 35.386597, 35.631748>,  <34.722717, 35.551586, 35.473003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794682, 35.386597, 35.631748>,  <34.914623, 35.111614, 35.896320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794682, 35.386597, 35.631748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050244, -0.703757, -0.708662,
		-0.952660, -0.179265, 0.245567,
		-0.299857, 0.687452, -0.661434,
		34.704723, 35.592831, 35.433319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481052, 35.043213, 35.417824>,  <34.914623, 35.111614, 35.896320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481052, 35.043213, 35.417824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694630, 34.759235, 35.234135>,  <35.822777, 34.588848, 35.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694630, 34.759235, 35.234135>,  <35.481052, 35.043213, 35.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694630, 34.759235, 35.234135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706915, 0.672800, -0.218200,
		0.463873, -0.208123, 0.861108,
		0.533941, -0.709947, -0.459219,
		35.854813, 34.546249, 35.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297012, 35.161736, 35.486267>,  <35.481052, 35.043213, 35.417824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297012, 35.161736, 35.486267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654255, 34.982216, 35.498520>,  <36.868603, 34.874504, 35.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654255, 34.982216, 35.498520>,  <36.297012, 35.161736, 35.486267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654255, 34.982216, 35.498520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265744, -0.471428, 0.840914,
		-0.362956, -0.759169, -0.540301,
		0.893108, -0.448797, 0.030637,
		36.922188, 34.847576, 35.507710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728840, 34.819454, 36.061550>,  <36.297012, 35.161736, 35.486267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728840, 34.819454, 36.061550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078445, 34.626286, 36.083061>,  <37.288208, 34.510384, 36.095966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078445, 34.626286, 36.083061>,  <36.728840, 34.819454, 36.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078445, 34.626286, 36.083061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049705, 0.021228, 0.998538,
		-0.483359, -0.875406, -0.005450,
		0.874010, -0.482923, 0.053773,
		37.340649, 34.481407, 36.099194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614067, 33.985477, 36.331207>,  <36.728840, 34.819454, 36.061550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614067, 33.985477, 36.331207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979347, 34.122726, 36.419144>,  <37.198517, 34.205074, 36.471905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979347, 34.122726, 36.419144>,  <36.614067, 33.985477, 36.331207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979347, 34.122726, 36.419144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242564, 0.024195, 0.969834,
		0.327451, -0.938980, 0.105323,
		0.913202, 0.343120, 0.219840,
		37.253307, 34.225662, 36.485096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814507, 33.616848, 36.979172>,  <36.614067, 33.985477, 36.331207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814507, 33.616848, 36.979172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043636, 33.943256, 36.948208>,  <37.181114, 34.139099, 36.929630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043636, 33.943256, 36.948208>,  <36.814507, 33.616848, 36.979172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043636, 33.943256, 36.948208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067759, 0.141255, 0.987651,
		0.816876, -0.560502, 0.136206,
		0.572820, 0.816018, -0.077409,
		37.215481, 34.188061, 36.924984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295918, 33.620636, 37.601631>,  <36.814507, 33.616848, 36.979172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295918, 33.620636, 37.601631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304176, 34.002594, 37.483139>,  <37.309132, 34.231770, 37.412045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304176, 34.002594, 37.483139>,  <37.295918, 33.620636, 37.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304176, 34.002594, 37.483139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044148, 0.296875, 0.953895,
		0.998812, -0.006615, 0.048286,
		0.020645, 0.954894, -0.296231,
		37.310371, 34.289062, 37.394268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566643, 33.948425, 38.087154>,  <37.295918, 33.620636, 37.601631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566643, 33.948425, 38.087154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386898, 34.257626, 37.908024>,  <37.279049, 34.443146, 37.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386898, 34.257626, 37.908024>,  <37.566643, 33.948425, 38.087154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386898, 34.257626, 37.908024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167259, 0.419622, 0.892156,
		0.877550, 0.475807, -0.059274,
		-0.449366, 0.772998, -0.447822,
		37.252087, 34.489525, 37.773678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923710, 34.555038, 38.349159>,  <37.566643, 33.948425, 38.087154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923710, 34.555038, 38.349159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577385, 34.678894, 38.191936>,  <37.369591, 34.753208, 38.097603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577385, 34.678894, 38.191936>,  <37.923710, 34.555038, 38.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577385, 34.678894, 38.191936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172157, 0.553231, 0.815044,
		0.469823, 0.773342, -0.425687,
		-0.865811, 0.309641, -0.393057,
		37.317642, 34.771786, 38.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820774, 35.153595, 38.665634>,  <37.923710, 34.555038, 38.349159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820774, 35.153595, 38.665634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464676, 35.064144, 38.506908>,  <37.251019, 35.010475, 38.411674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464676, 35.064144, 38.506908>,  <37.820774, 35.153595, 38.665634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464676, 35.064144, 38.506908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453783, 0.360189, 0.815073,
		-0.039344, 0.905679, -0.422134,
		-0.890243, -0.223626, -0.396811,
		37.197601, 34.997055, 38.387867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502937, 35.708641, 38.644829>,  <37.820774, 35.153595, 38.665634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502937, 35.708641, 38.644829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203434, 35.444073, 38.662178>,  <37.023731, 35.285332, 38.672588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203434, 35.444073, 38.662178>,  <37.502937, 35.708641, 38.644829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203434, 35.444073, 38.662178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413832, 0.517586, 0.748898,
		-0.517782, 0.542799, -0.661265,
		-0.748762, -0.661418, 0.043369,
		36.978806, 35.245647, 38.675190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829491, 35.999531, 38.606930>,  <37.502937, 35.708641, 38.644829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829491, 35.999531, 38.606930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788399, 35.651974, 38.800621>,  <36.763744, 35.443439, 38.916836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788399, 35.651974, 38.800621>,  <36.829491, 35.999531, 38.606930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788399, 35.651974, 38.800621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152021, 0.494802, 0.855605,
		-0.983024, 0.014279, -0.182919,
		-0.102726, -0.868888, 0.484232,
		36.757580, 35.391308, 38.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324650, 36.142609, 39.118523>,  <36.829491, 35.999531, 38.606930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324650, 36.142609, 39.118523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468502, 35.794537, 39.253258>,  <36.554813, 35.585693, 39.334099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468502, 35.794537, 39.253258>,  <36.324650, 36.142609, 39.118523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468502, 35.794537, 39.253258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154457, 0.300492, 0.941195,
		-0.920224, -0.390505, -0.026340,
		0.359626, -0.870178, 0.336836,
		36.576389, 35.533482, 39.354309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948318, 35.811348, 39.588867>,  <36.324650, 36.142609, 39.118523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948318, 35.811348, 39.588867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297733, 35.636883, 39.675304>,  <36.507381, 35.532204, 39.727165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297733, 35.636883, 39.675304>,  <35.948318, 35.811348, 39.588867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297733, 35.636883, 39.675304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123153, 0.231464, 0.965017,
		-0.470924, -0.869589, 0.148477,
		0.873535, -0.436164, 0.216094,
		36.559795, 35.506035, 39.740131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825127, 35.364281, 40.080307>,  <35.948318, 35.811348, 39.588867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825127, 35.364281, 40.080307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199730, 35.491791, 40.138744>,  <36.424492, 35.568295, 40.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199730, 35.491791, 40.138744>,  <35.825127, 35.364281, 40.080307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199730, 35.491791, 40.138744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216032, 0.196341, 0.956442,
		0.276205, -0.927272, 0.252740,
		0.936504, 0.318774, 0.146090,
		36.480682, 35.587421, 40.182571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810692, 35.325043, 40.778831>,  <35.825127, 35.364281, 40.080307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810692, 35.325043, 40.778831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159492, 35.511803, 40.720024>,  <36.368774, 35.623859, 40.684738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159492, 35.511803, 40.720024>,  <35.810692, 35.325043, 40.778831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159492, 35.511803, 40.720024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105749, 0.472937, 0.874727,
		0.477959, -0.747208, 0.461774,
		0.871993, 0.466915, -0.147028,
		36.421093, 35.651875, 40.675919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254761, 35.164337, 41.400803>,  <35.810692, 35.325043, 40.778831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254761, 35.164337, 41.400803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420563, 35.483257, 41.225307>,  <36.520042, 35.674610, 41.120010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420563, 35.483257, 41.225307>,  <36.254761, 35.164337, 41.400803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420563, 35.483257, 41.225307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004968, 0.480117, 0.877190,
		0.910035, -0.365777, 0.195048,
		0.414502, 0.797305, -0.438741,
		36.544914, 35.722450, 41.093685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862110, 35.290237, 41.728481>,  <36.254761, 35.164337, 41.400803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862110, 35.290237, 41.728481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761837, 35.627129, 41.537563>,  <36.701675, 35.829262, 41.423012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761837, 35.627129, 41.537563>,  <36.862110, 35.290237, 41.728481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761837, 35.627129, 41.537563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079172, 0.509226, 0.856984,
		0.964827, 0.177039, -0.194333,
		-0.250679, 0.842227, -0.477298,
		36.686634, 35.879795, 41.394375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340439, 35.813156, 41.895214>,  <36.862110, 35.290237, 41.728481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340439, 35.813156, 41.895214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051449, 36.050743, 41.753662>,  <36.878056, 36.193295, 41.668732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051449, 36.050743, 41.753662>,  <37.340439, 35.813156, 41.895214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051449, 36.050743, 41.753662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181699, 0.656956, 0.731706,
		0.667096, 0.464338, -0.582557,
		-0.722474, 0.593968, -0.353883,
		36.834705, 36.228935, 41.647499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567703, 36.523708, 42.009129>,  <37.340439, 35.813156, 41.895214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567703, 36.523708, 42.009129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173656, 36.554535, 41.947678>,  <36.937229, 36.573032, 41.910809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173656, 36.554535, 41.947678>,  <37.567703, 36.523708, 42.009129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173656, 36.554535, 41.947678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064952, 0.660607, 0.747917,
		0.159128, 0.746766, -0.645770,
		-0.985119, 0.077071, -0.153625,
		36.878120, 36.577656, 41.901588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491951, 37.136738, 42.242126>,  <37.567703, 36.523708, 42.009129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491951, 37.136738, 42.242126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110619, 37.016006, 42.244930>,  <36.881817, 36.943565, 42.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110619, 37.016006, 42.244930>,  <37.491951, 37.136738, 42.242126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110619, 37.016006, 42.244930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203301, 0.658954, 0.724188,
		-0.223203, 0.688969, -0.689567,
		-0.953336, -0.301831, 0.007012,
		36.824619, 36.925457, 42.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072292, 37.714096, 42.492619>,  <37.491951, 37.136738, 42.242126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072292, 37.714096, 42.492619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824558, 37.404388, 42.544662>,  <36.675919, 37.218563, 42.575890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824558, 37.404388, 42.544662>,  <37.072292, 37.714096, 42.492619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824558, 37.404388, 42.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324818, 0.403556, 0.855357,
		-0.714787, 0.487488, -0.501433,
		-0.619333, -0.774272, 0.130112,
		36.638760, 37.172108, 42.583694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411335, 37.935207, 42.667789>,  <37.072292, 37.714096, 42.492619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411335, 37.935207, 42.667789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419598, 37.572250, 42.835701>,  <36.424553, 37.354477, 42.936447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419598, 37.572250, 42.835701>,  <36.411335, 37.935207, 42.667789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419598, 37.572250, 42.835701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248050, 0.402095, 0.881357,
		-0.968527, -0.122329, -0.216774,
		0.020652, -0.907389, 0.419783,
		36.425793, 37.300034, 42.961636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854008, 38.010490, 43.135445>,  <36.411335, 37.935207, 42.667789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854008, 38.010490, 43.135445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069492, 37.693649, 43.250240>,  <36.198784, 37.503544, 43.319118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069492, 37.693649, 43.250240>,  <35.854008, 38.010490, 43.135445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069492, 37.693649, 43.250240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148810, 0.245823, 0.957824,
		-0.829244, -0.558698, 0.014555,
		0.538712, -0.792104, 0.286987,
		36.231106, 37.456017, 43.336338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458366, 37.575272, 43.562668>,  <35.854008, 38.010490, 43.135445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458366, 37.575272, 43.562668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834705, 37.477543, 43.656574>,  <36.060509, 37.418907, 43.712917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834705, 37.477543, 43.656574>,  <35.458366, 37.575272, 43.562668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834705, 37.477543, 43.656574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262402, -0.087050, 0.961024,
		-0.214361, -0.965780, -0.146011,
		0.940848, -0.244319, 0.234763,
		36.116959, 37.404247, 43.727001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348343, 37.120808, 44.032711>,  <35.458366, 37.575272, 43.562668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348343, 37.120808, 44.032711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729023, 37.231323, 44.086266>,  <35.957432, 37.297634, 44.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729023, 37.231323, 44.086266>,  <35.348343, 37.120808, 44.032711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729023, 37.231323, 44.086266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072649, -0.221034, 0.972557,
		0.298300, -0.935312, -0.190286,
		0.951703, 0.276290, 0.133883,
		36.014534, 37.314209, 44.126431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547863, 36.720478, 44.548965>,  <35.348343, 37.120808, 44.032711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547863, 36.720478, 44.548965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850212, 36.981678, 44.567932>,  <36.031620, 37.138397, 44.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850212, 36.981678, 44.567932>,  <35.547863, 36.720478, 44.548965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850212, 36.981678, 44.567932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127652, 0.075950, 0.988907,
		0.642152, -0.753542, 0.140765,
		0.755874, 0.652998, 0.047420,
		36.076973, 37.177578, 44.582157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086750, 36.479317, 45.008926>,  <35.547863, 36.720478, 44.548965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086750, 36.479317, 45.008926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122677, 36.877674, 45.004299>,  <36.144234, 37.116688, 45.001522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122677, 36.877674, 45.004299>,  <36.086750, 36.479317, 45.008926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122677, 36.877674, 45.004299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036712, 0.014916, 0.999215,
		0.995282, -0.089318, 0.037901,
		0.089813, 0.995892, -0.011567,
		36.149620, 37.176441, 45.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546909, 36.575665, 45.585079>,  <36.086750, 36.479317, 45.008926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546909, 36.575665, 45.585079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412018, 36.943821, 45.505932>,  <36.331081, 37.164715, 45.458443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412018, 36.943821, 45.505932>,  <36.546909, 36.575665, 45.585079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412018, 36.943821, 45.505932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128716, 0.163132, 0.978172,
		0.932582, 0.355338, 0.063457,
		-0.337230, 0.920393, -0.197871,
		36.310848, 37.219940, 45.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847603, 37.110004, 46.062344>,  <36.546909, 36.575665, 45.585079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847603, 37.110004, 46.062344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508438, 37.283340, 45.940193>,  <36.304939, 37.387341, 45.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508438, 37.283340, 45.940193>,  <36.847603, 37.110004, 46.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508438, 37.283340, 45.940193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236601, 0.206145, 0.949486,
		0.474403, 0.877336, -0.072265,
		-0.847916, 0.433342, -0.305375,
		36.254063, 37.413342, 45.848579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547871, 37.545639, 46.202354>,  <36.847603, 37.110004, 46.062344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547871, 37.545639, 46.202354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 37.357384, 46.416088>,  <37.997234, 37.244431, 46.544327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 37.357384, 46.416088>,  <37.547871, 37.545639, 46.202354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828724, 37.357384, 46.416088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475296, -0.248991, -0.843859,
		0.530195, 0.846467, 0.048867,
		0.702131, -0.470636, 0.534336,
		38.039364, 37.216194, 46.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182762, 37.774223, 45.961006>,  <37.547871, 37.545639, 46.202354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182762, 37.774223, 45.961006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274052, 37.424038, 46.131409>,  <38.328827, 37.213928, 46.233650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274052, 37.424038, 46.131409>,  <38.182762, 37.774223, 45.961006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274052, 37.424038, 46.131409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602077, -0.216953, -0.768397,
		0.765126, 0.431854, 0.477582,
		0.228223, -0.875462, 0.426006,
		38.342518, 37.161400, 46.259209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903145, 37.723835, 45.870274>,  <38.182762, 37.774223, 45.961006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903145, 37.723835, 45.870274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745468, 37.358086, 45.907211>,  <38.650864, 37.138634, 45.929375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745468, 37.358086, 45.907211>,  <38.903145, 37.723835, 45.870274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745468, 37.358086, 45.907211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481816, -0.291177, -0.826480,
		0.782603, -0.281298, 0.555341,
		-0.394190, -0.914378, 0.092342,
		38.627213, 37.083771, 45.934914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392502, 37.308056, 45.624058>,  <38.903145, 37.723835, 45.870274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392502, 37.308056, 45.624058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077000, 37.062653, 45.639393>,  <38.887699, 36.915409, 45.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077000, 37.062653, 45.639393>,  <39.392502, 37.308056, 45.624058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077000, 37.062653, 45.639393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223552, -0.344391, -0.911822,
		0.572618, -0.710633, 0.408792,
		-0.788755, -0.613511, 0.038341,
		38.840374, 36.878601, 45.650894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669537, 36.701134, 45.358875>,  <39.392502, 37.308056, 45.624058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669537, 36.701134, 45.358875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273411, 36.693428, 45.303871>,  <39.035736, 36.688805, 45.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273411, 36.693428, 45.303871>,  <39.669537, 36.701134, 45.358875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273411, 36.693428, 45.303871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134802, -0.370842, -0.918860,
		-0.033295, -0.928496, 0.369847,
		-0.990313, -0.019262, -0.137510,
		38.976318, 36.687649, 45.262619>
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
