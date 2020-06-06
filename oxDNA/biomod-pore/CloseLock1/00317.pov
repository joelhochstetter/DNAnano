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
	<24.229204, 35.037975, 34.400162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165745, 35.105095, 34.789349>,  <24.127670, 35.145367, 35.022861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165745, 35.105095, 34.789349>,  <24.229204, 35.037975, 34.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.165745, 35.105095, 34.789349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933987, -0.294040, 0.203001,
		0.320156, 0.940948, -0.110074,
		-0.158647, 0.167800, 0.972972,
		24.118151, 35.155434, 35.081242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795603, 35.510990, 34.643383>,  <24.229204, 35.037975, 34.400162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795603, 35.510990, 34.643383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645689, 35.245853, 34.902668>,  <24.555740, 35.086773, 35.058239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645689, 35.245853, 34.902668>,  <24.795603, 35.510990, 34.643383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645689, 35.245853, 34.902668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894264, -0.442922, 0.064127,
		0.244603, 0.603708, 0.758753,
		-0.374782, -0.662840, 0.648214,
		24.533255, 35.047001, 35.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296608, 35.491150, 35.212902>,  <24.795603, 35.510990, 34.643383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296608, 35.491150, 35.212902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073793, 35.175888, 35.108200>,  <24.940105, 34.986729, 35.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073793, 35.175888, 35.108200>,  <25.296608, 35.491150, 35.212902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073793, 35.175888, 35.108200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817398, -0.576053, -0.004960,
		-0.146878, -0.216724, 0.965120,
		-0.557035, -0.788159, -0.261759,
		24.906683, 34.939442, 35.029671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574093, 34.872112, 35.505131>,  <25.296608, 35.491150, 35.212902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574093, 34.872112, 35.505131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357166, 34.706692, 35.212593>,  <25.227011, 34.607441, 35.037071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357166, 34.706692, 35.212593>,  <25.574093, 34.872112, 35.505131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357166, 34.706692, 35.212593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796819, -0.529173, -0.291640,
		-0.266401, -0.740912, 0.616505,
		-0.542318, -0.413550, -0.731346,
		25.194471, 34.582626, 34.993191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375446, 34.160740, 35.712933>,  <25.574093, 34.872112, 35.505131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375446, 34.160740, 35.712933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752443, 34.075012, 35.815521>,  <25.978642, 34.023575, 35.877075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752443, 34.075012, 35.815521>,  <25.375446, 34.160740, 35.712933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752443, 34.075012, 35.815521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111322, 0.924821, 0.363749,
		-0.315149, -0.314279, 0.895494,
		0.942491, -0.214323, 0.256470,
		26.035191, 34.010715, 35.892464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508034, 34.266079, 36.353367>,  <25.375446, 34.160740, 35.712933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508034, 34.266079, 36.353367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869408, 34.300957, 36.185459>,  <26.086231, 34.321884, 36.084713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869408, 34.300957, 36.185459>,  <25.508034, 34.266079, 36.353367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869408, 34.300957, 36.185459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082998, 0.925005, 0.370778,
		0.420618, -0.369813, 0.828444,
		0.903433, 0.087196, -0.419767,
		26.140438, 34.327114, 36.059528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986982, 34.376701, 36.844475>,  <25.508034, 34.266079, 36.353367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986982, 34.376701, 36.844475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168657, 34.526966, 36.521343>,  <26.277662, 34.617126, 36.327465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168657, 34.526966, 36.521343>,  <25.986982, 34.376701, 36.844475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168657, 34.526966, 36.521343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023123, 0.901474, 0.432215,
		0.890607, -0.214985, 0.400750,
		0.454185, 0.375667, -0.807831,
		26.304914, 34.639668, 36.278996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550777, 34.767696, 37.095558>,  <25.986982, 34.376701, 36.844475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550777, 34.767696, 37.095558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527468, 34.905197, 36.720657>,  <26.513483, 34.987698, 36.495716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527468, 34.905197, 36.720657>,  <26.550777, 34.767696, 37.095558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527468, 34.905197, 36.720657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271482, 0.908921, 0.316479,
		0.960678, -0.236005, -0.146287,
		-0.058273, 0.343749, -0.937252,
		26.509987, 35.008324, 36.439484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138189, 34.989944, 36.932434>,  <26.550777, 34.767696, 37.095558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138189, 34.989944, 36.932434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890501, 35.177052, 36.680161>,  <26.741888, 35.289314, 36.528797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890501, 35.177052, 36.680161>,  <27.138189, 34.989944, 36.932434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890501, 35.177052, 36.680161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377369, 0.881640, 0.283381,
		0.688593, -0.062526, -0.722448,
		-0.619220, 0.467763, -0.630686,
		26.704735, 35.317379, 36.490955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653831, 35.490810, 36.640713>,  <27.138189, 34.989944, 36.932434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653831, 35.490810, 36.640713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290028, 35.639069, 36.565434>,  <27.071745, 35.728024, 36.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290028, 35.639069, 36.565434>,  <27.653831, 35.490810, 36.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290028, 35.639069, 36.565434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349186, 0.926857, 0.137861,
		0.225531, 0.059669, -0.972407,
		-0.909508, 0.370643, -0.188199,
		27.017176, 35.750263, 36.508972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751936, 36.145782, 36.435261>,  <27.653831, 35.490810, 36.640713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751936, 36.145782, 36.435261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361013, 36.191517, 36.506596>,  <27.126461, 36.218956, 36.549397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361013, 36.191517, 36.506596>,  <27.751936, 36.145782, 36.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361013, 36.191517, 36.506596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156391, 0.957249, 0.243343,
		-0.142889, 0.265710, -0.953405,
		-0.977305, 0.114333, 0.178336,
		27.067822, 36.225819, 36.560097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524605, 36.928978, 36.312401>,  <27.751936, 36.145782, 36.435261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524605, 36.928978, 36.312401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303659, 36.724628, 36.575886>,  <27.171091, 36.602016, 36.733974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303659, 36.724628, 36.575886>,  <27.524605, 36.928978, 36.312401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303659, 36.724628, 36.575886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042870, 0.806559, 0.589597,
		-0.832499, 0.297434, -0.467417,
		-0.552366, -0.510876, 0.658709,
		27.137949, 36.571365, 36.773499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997236, 37.426140, 36.409401>,  <27.524605, 36.928978, 36.312401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997236, 37.426140, 36.409401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987711, 37.154396, 36.702766>,  <26.981997, 36.991348, 36.878788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987711, 37.154396, 36.702766>,  <26.997236, 37.426140, 36.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987711, 37.154396, 36.702766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037246, 0.732514, 0.679732,
		-0.999022, 0.043502, 0.007861,
		-0.023811, -0.679361, 0.733418,
		26.980568, 36.950588, 36.922791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479538, 37.726101, 37.008980>,  <26.997236, 37.426140, 36.409401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479538, 37.726101, 37.008980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660603, 37.448898, 37.233421>,  <26.769241, 37.282578, 37.368088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660603, 37.448898, 37.233421>,  <26.479538, 37.726101, 37.008980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660603, 37.448898, 37.233421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070042, 0.654958, 0.752412,
		-0.888926, -0.301288, 0.345015,
		0.452663, -0.693005, 0.561106,
		26.796402, 37.240997, 37.401752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316393, 37.908112, 37.692215>,  <26.479538, 37.726101, 37.008980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316393, 37.908112, 37.692215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636944, 37.671799, 37.729687>,  <26.829275, 37.530010, 37.752171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636944, 37.671799, 37.729687>,  <26.316393, 37.908112, 37.692215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636944, 37.671799, 37.729687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270550, 0.497677, 0.824088,
		-0.533477, -0.635059, 0.558661,
		0.801377, -0.590778, 0.093684,
		26.877357, 37.494564, 37.757793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349674, 37.763008, 38.415268>,  <26.316393, 37.908112, 37.692215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349674, 37.763008, 38.415268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710669, 37.685352, 38.261471>,  <26.927265, 37.638760, 38.169193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710669, 37.685352, 38.261471>,  <26.349674, 37.763008, 38.415268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710669, 37.685352, 38.261471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427322, 0.515546, 0.742704,
		0.054032, -0.834579, 0.548233,
		0.902484, -0.194142, -0.384489,
		26.981413, 37.627110, 38.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747084, 37.591087, 38.935871>,  <26.349674, 37.763008, 38.415268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747084, 37.591087, 38.935871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022602, 37.667583, 38.656162>,  <27.187914, 37.713482, 38.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022602, 37.667583, 38.656162>,  <26.747084, 37.591087, 38.935871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022602, 37.667583, 38.656162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544764, 0.499889, 0.673308,
		0.478318, -0.844714, 0.240146,
		0.688799, 0.191232, -0.699275,
		27.229240, 37.724953, 38.446381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407879, 37.437672, 39.230267>,  <26.747084, 37.591087, 38.935871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407879, 37.437672, 39.230267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482262, 37.691544, 38.930241>,  <27.526892, 37.843868, 38.750225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482262, 37.691544, 38.930241>,  <27.407879, 37.437672, 39.230267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482262, 37.691544, 38.930241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467198, 0.614449, 0.635751,
		0.864376, -0.468654, -0.182258,
		0.185959, 0.634678, -0.750069,
		27.538050, 37.881947, 38.705219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049545, 37.768204, 39.361412>,  <27.407879, 37.437672, 39.230267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049545, 37.768204, 39.361412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906067, 38.007740, 39.074993>,  <27.819981, 38.151463, 38.903141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906067, 38.007740, 39.074993>,  <28.049545, 37.768204, 39.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906067, 38.007740, 39.074993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414080, 0.789568, 0.452901,
		0.836586, -0.134047, -0.531183,
		-0.358695, 0.598843, -0.716048,
		27.798458, 38.187393, 38.860180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686956, 38.135059, 38.983818>,  <28.049545, 37.768204, 39.361412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686956, 38.135059, 38.983818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355337, 38.356441, 38.951885>,  <28.156366, 38.489269, 38.932724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355337, 38.356441, 38.951885>,  <28.686956, 38.135059, 38.983818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355337, 38.356441, 38.951885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491684, 0.789507, 0.367323,
		0.266322, 0.265276, -0.926661,
		-0.829047, 0.553451, -0.079831,
		28.106623, 38.522476, 38.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964540, 38.694897, 38.594238>,  <28.686956, 38.135059, 38.983818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964540, 38.694897, 38.594238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622778, 38.789135, 38.779488>,  <28.417721, 38.845680, 38.890636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622778, 38.789135, 38.779488>,  <28.964540, 38.694897, 38.594238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622778, 38.789135, 38.779488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400309, 0.866707, 0.297611,
		-0.331279, 0.439674, -0.834830,
		-0.854404, 0.235598, 0.463128,
		28.366457, 38.859814, 38.918427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845312, 39.319355, 38.383411>,  <28.964540, 38.694897, 38.594238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845312, 39.319355, 38.383411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633968, 39.280331, 38.720768>,  <28.507162, 39.256916, 38.923183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633968, 39.280331, 38.720768>,  <28.845312, 39.319355, 38.383411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633968, 39.280331, 38.720768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365963, 0.870185, 0.329925,
		-0.766098, 0.482971, -0.424068,
		-0.528361, -0.097561, 0.843396,
		28.475460, 39.251060, 38.973785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702169, 39.946148, 38.494324>,  <28.845312, 39.319355, 38.383411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702169, 39.946148, 38.494324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625727, 39.774704, 38.847542>,  <28.579861, 39.671837, 39.059475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625727, 39.774704, 38.847542>,  <28.702169, 39.946148, 38.494324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625727, 39.774704, 38.847542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318585, 0.823842, 0.468816,
		-0.928430, 0.370919, -0.020893,
		-0.191105, -0.428606, 0.883049,
		28.568396, 39.646122, 39.112457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429663, 40.521381, 38.905888>,  <28.702169, 39.946148, 38.494324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429663, 40.521381, 38.905888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546286, 40.231319, 39.155411>,  <28.616261, 40.057281, 39.305126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546286, 40.231319, 39.155411>,  <28.429663, 40.521381, 38.905888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546286, 40.231319, 39.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471220, 0.676408, 0.566059,
		-0.832433, 0.128913, 0.538921,
		0.291558, -0.725157, 0.623812,
		28.633753, 40.013771, 39.342556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281336, 40.702614, 39.512150>,  <28.429663, 40.521381, 38.905888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281336, 40.702614, 39.512150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570433, 40.432159, 39.569393>,  <28.743891, 40.269886, 39.603741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570433, 40.432159, 39.569393>,  <28.281336, 40.702614, 39.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570433, 40.432159, 39.569393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391077, 0.570839, 0.721943,
		-0.569826, -0.465812, 0.676992,
		0.722743, -0.676138, 0.143111,
		28.787256, 40.229317, 39.612328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332838, 40.480461, 40.301315>,  <28.281336, 40.702614, 39.512150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332838, 40.480461, 40.301315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656971, 40.462116, 40.067646>,  <28.851452, 40.451111, 39.927444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656971, 40.462116, 40.067646>,  <28.332838, 40.480461, 40.301315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656971, 40.462116, 40.067646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442071, 0.702216, 0.558091,
		0.384619, -0.710485, 0.589304,
		0.810334, -0.045862, -0.584171,
		28.900072, 40.448357, 39.892395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992388, 40.321060, 40.678501>,  <28.332838, 40.480461, 40.301315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992388, 40.321060, 40.678501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074720, 40.547512, 40.359219>,  <29.124121, 40.683384, 40.167648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074720, 40.547512, 40.359219>,  <28.992388, 40.321060, 40.678501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074720, 40.547512, 40.359219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315825, 0.733592, 0.601745,
		0.926222, -0.375952, -0.027801,
		0.205832, 0.566130, -0.798204,
		29.136471, 40.717350, 40.119759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627594, 40.661110, 40.704926>,  <28.992388, 40.321060, 40.678501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627594, 40.661110, 40.704926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343143, 40.845268, 40.492386>,  <29.172474, 40.955765, 40.364864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343143, 40.845268, 40.492386>,  <29.627594, 40.661110, 40.704926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343143, 40.845268, 40.492386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053816, 0.789188, 0.611789,
		0.701001, 0.406464, -0.585990,
		-0.711127, 0.460401, -0.531347,
		29.129805, 40.983387, 40.332981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250893, 40.448017, 40.342484>,  <29.627594, 40.661110, 40.704926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250893, 40.448017, 40.342484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596867, 40.597713, 40.476250>,  <30.804451, 40.687531, 40.556507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596867, 40.597713, 40.476250>,  <30.250893, 40.448017, 40.342484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596867, 40.597713, 40.476250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122388, 0.488915, -0.863703,
		-0.486735, 0.787974, 0.377076,
		0.864933, 0.374245, 0.334411,
		30.856346, 40.709988, 40.576572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270597, 41.160225, 40.056961>,  <30.250893, 40.448017, 40.342484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270597, 41.160225, 40.056961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638474, 41.025536, 40.137749>,  <30.859200, 40.944721, 40.186222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638474, 41.025536, 40.137749>,  <30.270597, 41.160225, 40.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638474, 41.025536, 40.137749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287985, 0.228817, -0.929896,
		0.266904, 0.913378, 0.307412,
		0.919688, -0.336723, 0.201967,
		30.914379, 40.924519, 40.198338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730822, 41.721085, 39.847641>,  <30.270597, 41.160225, 40.056961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730822, 41.721085, 39.847641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861483, 41.343994, 39.820621>,  <30.939878, 41.117741, 39.804409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861483, 41.343994, 39.820621>,  <30.730822, 41.721085, 39.847641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861483, 41.343994, 39.820621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265094, 0.159988, -0.950857,
		0.907207, 0.292690, 0.302172,
		0.326651, -0.942728, -0.067552,
		30.959478, 41.061176, 39.800354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356848, 41.786682, 39.558781>,  <30.730822, 41.721085, 39.847641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356848, 41.786682, 39.558781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185465, 41.439507, 39.458294>,  <31.082636, 41.231201, 39.398003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185465, 41.439507, 39.458294>,  <31.356848, 41.786682, 39.558781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185465, 41.439507, 39.458294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280424, 0.136568, -0.950111,
		0.858945, -0.477529, 0.184877,
		-0.428458, -0.867937, -0.251215,
		31.056927, 41.179127, 39.382931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805952, 41.287636, 39.195408>,  <31.356848, 41.786682, 39.558781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805952, 41.287636, 39.195408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441402, 41.213150, 39.048592>,  <31.222672, 41.168461, 38.960503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441402, 41.213150, 39.048592>,  <31.805952, 41.287636, 39.195408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441402, 41.213150, 39.048592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356160, 0.090103, -0.930071,
		0.206262, -0.978369, -0.015797,
		-0.911376, -0.186212, -0.367040,
		31.167990, 41.157288, 38.938480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850859, 40.841873, 38.539257>,  <31.805952, 41.287636, 39.195408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850859, 40.841873, 38.539257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532642, 41.082848, 38.565132>,  <31.341713, 41.227432, 38.580658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532642, 41.082848, 38.565132>,  <31.850859, 40.841873, 38.539257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532642, 41.082848, 38.565132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150296, 0.299634, -0.942142,
		-0.586962, -0.739791, -0.328915,
		-0.795542, 0.602436, 0.064686,
		31.293980, 41.263577, 38.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293003, 41.431641, 38.448586>,  <31.850859, 40.841873, 38.539257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293003, 41.431641, 38.448586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587559, 41.271057, 38.666416>,  <32.764294, 41.174706, 38.797115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587559, 41.271057, 38.666416>,  <32.293003, 41.431641, 38.448586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587559, 41.271057, 38.666416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229201, -0.905355, -0.357491,
		0.636552, 0.138435, -0.758708,
		0.736389, -0.401458, 0.544576,
		32.808475, 41.150620, 38.829788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730091, 41.068703, 38.008415>,  <32.293003, 41.431641, 38.448586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730091, 41.068703, 38.008415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730045, 40.935970, 38.385750>,  <32.730019, 40.856331, 38.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730045, 40.935970, 38.385750>,  <32.730091, 41.068703, 38.008415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730045, 40.935970, 38.385750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216319, -0.920994, -0.323999,
		0.976323, -0.204100, -0.071674,
		-0.000117, -0.331832, 0.943338,
		32.730011, 40.836422, 38.668751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280270, 40.388130, 38.229626>,  <32.730091, 41.068703, 38.008415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280270, 40.388130, 38.229626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921520, 40.413860, 38.404663>,  <32.706272, 40.429298, 38.509686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921520, 40.413860, 38.404663>,  <33.280270, 40.388130, 38.229626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921520, 40.413860, 38.404663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235566, -0.906836, -0.349511,
		0.374344, -0.416548, 0.828465,
		-0.896870, 0.064321, 0.437593,
		32.652458, 40.433155, 38.535942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144093, 39.826317, 38.658279>,  <33.280270, 40.388130, 38.229626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144093, 39.826317, 38.658279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770535, 39.948780, 38.584408>,  <32.546398, 40.022259, 38.540085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770535, 39.948780, 38.584408>,  <33.144093, 39.826317, 38.658279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770535, 39.948780, 38.584408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248146, -0.926860, -0.281699,
		-0.257413, -0.217251, 0.941563,
		-0.933896, 0.306159, -0.184676,
		32.490364, 40.040627, 38.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825974, 39.264927, 38.890244>,  <33.144093, 39.826317, 38.658279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825974, 39.264927, 38.890244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581028, 39.474438, 38.653374>,  <32.434059, 39.600143, 38.511253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581028, 39.474438, 38.653374>,  <32.825974, 39.264927, 38.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581028, 39.474438, 38.653374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299044, -0.846851, -0.439792,
		-0.731834, -0.092227, 0.675213,
		-0.612366, 0.523773, -0.592174,
		32.397320, 39.631569, 38.475719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110798, 39.004143, 38.990902>,  <32.825974, 39.264927, 38.890244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110798, 39.004143, 38.990902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108292, 39.191013, 38.637245>,  <32.106789, 39.303135, 38.425053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108292, 39.191013, 38.637245>,  <32.110798, 39.004143, 38.990902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108292, 39.191013, 38.637245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514883, -0.759458, -0.397642,
		-0.857238, 0.452738, 0.245299,
		-0.006266, 0.467174, -0.884143,
		32.106411, 39.331165, 38.372002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458950, 38.936256, 38.772228>,  <32.110798, 39.004143, 38.990902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458950, 38.936256, 38.772228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664141, 38.999996, 38.434837>,  <31.787256, 39.038239, 38.232403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664141, 38.999996, 38.434837>,  <31.458950, 38.936256, 38.772228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664141, 38.999996, 38.434837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425878, -0.805914, -0.411254,
		-0.745306, 0.570185, -0.345555,
		0.512979, 0.159345, -0.843482,
		31.818035, 39.047798, 38.181793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976973, 38.735886, 38.351727>,  <31.458950, 38.936256, 38.772228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976973, 38.735886, 38.351727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307209, 38.743362, 38.126141>,  <31.505350, 38.747849, 37.990791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307209, 38.743362, 38.126141>,  <30.976973, 38.735886, 38.351727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307209, 38.743362, 38.126141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316908, -0.811575, -0.490831,
		-0.466873, 0.583949, -0.664103,
		0.825590, 0.018696, -0.563961,
		31.554886, 38.748970, 37.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723177, 38.850418, 37.693844>,  <30.976973, 38.735886, 38.351727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723177, 38.850418, 37.693844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082226, 38.687424, 37.626633>,  <31.297655, 38.589626, 37.586308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082226, 38.687424, 37.626633>,  <30.723177, 38.850418, 37.693844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082226, 38.687424, 37.626633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415736, -0.656068, -0.629871,
		0.146430, 0.635239, -0.758308,
		0.897620, -0.407488, -0.168024,
		31.351511, 38.565178, 37.576225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892092, 38.849293, 36.934818>,  <30.723177, 38.850418, 37.693844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892092, 38.849293, 36.934818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110096, 38.559425, 37.103493>,  <31.240898, 38.385506, 37.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110096, 38.559425, 37.103493>,  <30.892092, 38.849293, 36.934818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110096, 38.559425, 37.103493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286236, -0.633548, -0.718808,
		0.788055, 0.271057, -0.552717,
		0.545011, -0.724668, 0.421685,
		31.273600, 38.342026, 37.230000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101770, 38.458885, 36.424576>,  <30.892092, 38.849293, 36.934818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101770, 38.458885, 36.424576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178505, 38.185757, 36.706554>,  <31.224546, 38.021877, 36.875740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178505, 38.185757, 36.706554>,  <31.101770, 38.458885, 36.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178505, 38.185757, 36.706554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219899, -0.729931, -0.647182,
		0.956474, -0.030864, -0.290180,
		0.191837, -0.682824, 0.704947,
		31.236055, 37.980911, 36.918037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557409, 38.005287, 36.182953>,  <31.101770, 38.458885, 36.424576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557409, 38.005287, 36.182953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377443, 37.795383, 36.472008>,  <31.269464, 37.669441, 36.645443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377443, 37.795383, 36.472008>,  <31.557409, 38.005287, 36.182953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377443, 37.795383, 36.472008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199176, -0.729824, -0.653977,
		0.870579, -0.438165, 0.223839,
		-0.449913, -0.524755, 0.722641,
		31.242470, 37.637959, 36.688801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605450, 37.212841, 36.006332>,  <31.557409, 38.005287, 36.182953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605450, 37.212841, 36.006332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315498, 37.233395, 36.281116>,  <31.141527, 37.245728, 36.445988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315498, 37.233395, 36.281116>,  <31.605450, 37.212841, 36.006332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315498, 37.233395, 36.281116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474621, -0.760015, -0.443973,
		0.499284, -0.647871, 0.575307,
		-0.724879, 0.051385, 0.686957,
		31.098034, 37.248810, 36.487202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557377, 36.489948, 36.212833>,  <31.605450, 37.212841, 36.006332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557377, 36.489948, 36.212833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224480, 36.696377, 36.293873>,  <31.024742, 36.820232, 36.342499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224480, 36.696377, 36.293873>,  <31.557377, 36.489948, 36.212833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224480, 36.696377, 36.293873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554066, -0.761234, -0.336948,
		-0.019660, -0.392677, 0.919466,
		-0.832241, 0.516069, 0.202603,
		30.974808, 36.851196, 36.354652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073589, 36.049408, 36.664970>,  <31.557377, 36.489948, 36.212833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073589, 36.049408, 36.664970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854252, 36.323101, 36.472664>,  <30.722649, 36.487316, 36.357281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854252, 36.323101, 36.472664>,  <31.073589, 36.049408, 36.664970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854252, 36.323101, 36.472664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626337, -0.716971, -0.306029,
		-0.554093, 0.133313, 0.821711,
		-0.548346, 0.684236, -0.480767,
		30.689749, 36.528374, 36.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486887, 35.740852, 36.786037>,  <31.073589, 36.049408, 36.664970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486887, 35.740852, 36.786037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399405, 36.023548, 36.516911>,  <30.346914, 36.193165, 36.355434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399405, 36.023548, 36.516911>,  <30.486887, 35.740852, 36.786037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399405, 36.023548, 36.516911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658440, -0.615760, -0.432777,
		-0.720156, 0.348359, 0.600018,
		-0.218705, 0.706743, -0.672817,
		30.333794, 36.235573, 36.315067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729992, 35.804310, 36.654625>,  <30.486887, 35.740852, 36.786037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729992, 35.804310, 36.654625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895926, 35.938850, 36.316448>,  <29.995487, 36.019573, 36.113541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895926, 35.938850, 36.316448>,  <29.729992, 35.804310, 36.654625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895926, 35.938850, 36.316448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761544, -0.380159, -0.524910,
		-0.497957, 0.861596, 0.098442,
		0.414836, 0.336351, -0.845446,
		30.020376, 36.039757, 36.062813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158466, 36.103165, 36.207329>,  <29.729992, 35.804310, 36.654625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158466, 36.103165, 36.207329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453098, 36.030373, 35.946766>,  <29.629877, 35.986698, 35.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453098, 36.030373, 35.946766>,  <29.158466, 36.103165, 36.207329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453098, 36.030373, 35.946766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665960, -0.363304, -0.651542,
		-0.118088, 0.913725, -0.388797,
		0.736581, -0.181984, -0.651406,
		29.674072, 35.975777, 35.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819504, 36.181923, 35.544830>,  <29.158466, 36.103165, 36.207329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819504, 36.181923, 35.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145716, 35.956600, 35.491768>,  <29.341442, 35.821407, 35.459930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145716, 35.956600, 35.491768>,  <28.819504, 36.181923, 35.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145716, 35.956600, 35.491768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536376, -0.649676, -0.538723,
		0.217284, 0.510497, -0.831974,
		0.815530, -0.563306, -0.132654,
		29.390375, 35.787609, 35.451973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731802, 35.929260, 34.881695>,  <28.819504, 36.181923, 35.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731802, 35.929260, 34.881695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001259, 35.678764, 35.038681>,  <29.162933, 35.528465, 35.132874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001259, 35.678764, 35.038681>,  <28.731802, 35.929260, 34.881695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001259, 35.678764, 35.038681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389064, -0.751990, -0.532109,
		0.628357, 0.205758, -0.750221,
		0.673644, -0.626239, 0.392465,
		29.203352, 35.490894, 35.156422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876354, 35.558941, 34.353203>,  <28.731802, 35.929260, 34.881695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876354, 35.558941, 34.353203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012867, 35.327656, 34.649635>,  <29.094774, 35.188885, 34.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012867, 35.327656, 34.649635>,  <28.876354, 35.558941, 34.353203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012867, 35.327656, 34.649635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340207, -0.810946, -0.476053,
		0.876233, -0.089651, -0.473475,
		0.341284, -0.578213, 0.741077,
		29.115252, 35.154190, 34.871960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359827, 35.028423, 34.105495>,  <28.876354, 35.558941, 34.353203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359827, 35.028423, 34.105495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184145, 34.883522, 34.434341>,  <29.078735, 34.796581, 34.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184145, 34.883522, 34.434341>,  <29.359827, 35.028423, 34.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184145, 34.883522, 34.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344505, -0.777233, -0.526521,
		0.829709, -0.514473, 0.216566,
		-0.439203, -0.362251, 0.822116,
		29.052383, 34.774845, 34.680977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393257, 34.290733, 34.033997>,  <29.359827, 35.028423, 34.105495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393257, 34.290733, 34.033997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150871, 34.297798, 34.352116>,  <29.005440, 34.302036, 34.542988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150871, 34.297798, 34.352116>,  <29.393257, 34.290733, 34.033997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150871, 34.297798, 34.352116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431445, -0.847232, -0.309924,
		0.668326, -0.530930, 0.521013,
		-0.605967, 0.017658, 0.795294,
		28.969082, 34.303097, 34.590702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397161, 33.708267, 34.571442>,  <29.393257, 34.290733, 34.033997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397161, 33.708267, 34.571442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030773, 33.866768, 34.546215>,  <28.810940, 33.961868, 34.531078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030773, 33.866768, 34.546215>,  <29.397161, 33.708267, 34.571442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030773, 33.866768, 34.546215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344745, -0.857635, -0.381593,
		-0.205297, -0.327786, 0.922176,
		-0.915971, 0.396256, -0.063067,
		28.755981, 33.985645, 34.527294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128294, 32.938229, 34.593910>,  <29.397161, 33.708267, 34.571442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128294, 32.938229, 34.593910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123884, 32.630096, 34.338890>,  <29.121239, 32.445217, 34.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123884, 32.630096, 34.338890>,  <29.128294, 32.938229, 34.593910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123884, 32.630096, 34.338890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282800, 0.613956, -0.736941,
		0.959116, 0.172175, -0.224618,
		-0.011023, -0.770334, -0.637546,
		29.120577, 32.398994, 34.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651464, 32.647499, 34.946758>,  <29.128294, 32.938229, 34.593910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651464, 32.647499, 34.946758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545351, 32.692577, 34.563732>,  <29.481684, 32.719624, 34.333916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545351, 32.692577, 34.563732>,  <29.651464, 32.647499, 34.946758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545351, 32.692577, 34.563732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557486, 0.792372, 0.247702,
		0.786661, 0.599538, -0.147374,
		-0.265281, 0.112698, -0.957562,
		29.465767, 32.726387, 34.276463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853214, 32.114594, 35.449043>,  <29.651464, 32.647499, 34.946758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853214, 32.114594, 35.449043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871161, 31.805042, 35.701740>,  <29.881927, 31.619312, 35.853359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871161, 31.805042, 35.701740>,  <29.853214, 32.114594, 35.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871161, 31.805042, 35.701740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755720, 0.387298, 0.528098,
		-0.653356, -0.501116, -0.567458,
		0.044864, -0.773875, 0.631747,
		29.884619, 31.572880, 35.891266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570927, 32.465099, 35.650345>,  <29.853214, 32.114594, 35.449043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570927, 32.465099, 35.650345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431055, 32.803482, 35.811378>,  <30.347132, 33.006512, 35.908001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431055, 32.803482, 35.811378>,  <30.570927, 32.465099, 35.650345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431055, 32.803482, 35.811378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755981, 0.000969, 0.654593,
		0.553369, 0.533245, -0.639869,
		-0.349679, 0.845960, 0.402587,
		30.326151, 33.057270, 35.932156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094797, 33.135281, 35.642899>,  <30.570927, 32.465099, 35.650345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094797, 33.135281, 35.642899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855751, 33.138813, 35.963593>,  <30.712322, 33.140934, 36.156010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855751, 33.138813, 35.963593>,  <31.094797, 33.135281, 35.642899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855751, 33.138813, 35.963593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792376, 0.159228, 0.588887,
		-0.122456, 0.987202, -0.102157,
		-0.597616, 0.008834, 0.801733,
		30.676466, 33.141464, 36.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968067, 33.824554, 36.013988>,  <31.094797, 33.135281, 35.642899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968067, 33.824554, 36.013988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927458, 33.540535, 36.292706>,  <30.903091, 33.370125, 36.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927458, 33.540535, 36.292706>,  <30.968067, 33.824554, 36.013988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927458, 33.540535, 36.292706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681598, 0.460546, 0.568614,
		-0.724650, 0.532662, 0.437211,
		-0.101523, -0.710048, 0.696796,
		30.897001, 33.327522, 36.501743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771452, 34.242512, 36.759209>,  <30.968067, 33.824554, 36.013988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771452, 34.242512, 36.759209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949547, 33.884975, 36.780418>,  <31.056404, 33.670452, 36.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949547, 33.884975, 36.780418>,  <30.771452, 34.242512, 36.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949547, 33.884975, 36.780418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694045, 0.381918, 0.610279,
		-0.565745, -0.234915, 0.790410,
		0.445236, -0.893842, 0.053026,
		31.083118, 33.616821, 36.796326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725845, 33.897690, 37.513912>,  <30.771452, 34.242512, 36.759209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725845, 33.897690, 37.513912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060671, 33.772938, 37.334110>,  <31.261566, 33.698086, 37.226227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060671, 33.772938, 37.334110>,  <30.725845, 33.897690, 37.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060671, 33.772938, 37.334110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540962, 0.349017, 0.765211,
		-0.081765, -0.883697, 0.460862,
		0.837063, -0.311876, -0.449509,
		31.311790, 33.679375, 37.199257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039076, 33.476185, 37.975086>,  <30.725845, 33.897690, 37.513912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039076, 33.476185, 37.975086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335438, 33.607925, 37.740963>,  <31.513256, 33.686970, 37.600491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335438, 33.607925, 37.740963>,  <31.039076, 33.476185, 37.975086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335438, 33.607925, 37.740963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543526, 0.217880, 0.810622,
		0.394508, -0.918724, -0.017584,
		0.740907, 0.329354, -0.585306,
		31.557711, 33.706730, 37.565372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681692, 33.293495, 38.341904>,  <31.039076, 33.476185, 37.975086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681692, 33.293495, 38.341904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798120, 33.564476, 38.071693>,  <31.867977, 33.727066, 37.909569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798120, 33.564476, 38.071693>,  <31.681692, 33.293495, 38.341904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798120, 33.564476, 38.071693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601724, 0.419311, 0.679784,
		0.743778, -0.604343, -0.285593,
		0.291070, 0.677457, -0.675522,
		31.885441, 33.767712, 37.869038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349663, 33.315434, 38.425224>,  <31.681692, 33.293495, 38.341904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349663, 33.315434, 38.425224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243046, 33.649513, 38.232811>,  <32.179077, 33.849960, 38.117363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243046, 33.649513, 38.232811>,  <32.349663, 33.315434, 38.425224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243046, 33.649513, 38.232811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537241, 0.543109, 0.645295,
		0.800206, -0.086435, -0.593464,
		-0.266540, 0.835202, -0.481035,
		32.163082, 33.900074, 38.088501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910820, 33.684135, 38.217739>,  <32.349663, 33.315434, 38.425224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910820, 33.684135, 38.217739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619179, 33.953243, 38.268005>,  <32.444195, 34.114708, 38.298164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619179, 33.953243, 38.268005>,  <32.910820, 33.684135, 38.217739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619179, 33.953243, 38.268005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560952, 0.482231, 0.672894,
		0.392100, 0.561103, -0.728987,
		-0.729102, 0.672768, 0.125669,
		32.400448, 34.155075, 38.305706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315681, 34.258781, 38.250332>,  <32.910820, 33.684135, 38.217739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315681, 34.258781, 38.250332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960999, 34.372940, 38.395824>,  <32.748188, 34.441437, 38.483120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960999, 34.372940, 38.395824>,  <33.315681, 34.258781, 38.250332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960999, 34.372940, 38.395824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462299, 0.556682, 0.690206,
		-0.005496, 0.780162, -0.625554,
		-0.886707, 0.285400, 0.363728,
		32.694988, 34.458561, 38.504944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279160, 34.951572, 38.290127>,  <33.315681, 34.258781, 38.250332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279160, 34.951572, 38.290127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981815, 34.862152, 38.542301>,  <32.803410, 34.808498, 38.693604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981815, 34.862152, 38.542301>,  <33.279160, 34.951572, 38.290127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981815, 34.862152, 38.542301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437434, 0.550551, 0.711016,
		-0.506035, 0.804312, -0.311467,
		-0.743357, -0.223552, 0.630432,
		32.758808, 34.795086, 38.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256676, 35.492420, 38.658764>,  <33.279160, 34.951572, 38.290127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256676, 35.492420, 38.658764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070347, 35.253151, 38.919594>,  <32.958549, 35.109589, 39.076092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070347, 35.253151, 38.919594>,  <33.256676, 35.492420, 38.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070347, 35.253151, 38.919594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417224, 0.501383, 0.757983,
		-0.780344, 0.625145, 0.016019,
		-0.465818, -0.598171, 0.652077,
		32.930603, 35.073700, 39.115215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055187, 35.890095, 39.227669>,  <33.256676, 35.492420, 38.658764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055187, 35.890095, 39.227669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047874, 35.529278, 39.400173>,  <33.043488, 35.312790, 39.503677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047874, 35.529278, 39.400173>,  <33.055187, 35.890095, 39.227669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047874, 35.529278, 39.400173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426745, 0.383036, 0.819251,
		-0.904187, 0.199017, 0.377939,
		-0.018280, -0.902040, 0.431266,
		33.042389, 35.258667, 39.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618622, 35.902798, 39.954659>,  <33.055187, 35.890095, 39.227669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618622, 35.902798, 39.954659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863239, 35.586315, 39.955967>,  <33.010010, 35.396427, 39.956753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863239, 35.586315, 39.955967>,  <32.618622, 35.902798, 39.954659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863239, 35.586315, 39.955967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256461, 0.202130, 0.945183,
		-0.748491, -0.577186, 0.326525,
		0.611546, -0.791202, 0.003267,
		33.046703, 35.348953, 39.956947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559719, 35.783337, 40.646622>,  <32.618622, 35.902798, 39.954659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559719, 35.783337, 40.646622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886871, 35.590908, 40.520363>,  <33.083164, 35.475452, 40.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886871, 35.590908, 40.520363>,  <32.559719, 35.783337, 40.646622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886871, 35.590908, 40.520363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436468, 0.161271, 0.885148,
		-0.374913, -0.861721, 0.341873,
		0.817885, -0.481070, -0.315651,
		33.132236, 35.446587, 40.425667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819241, 35.287750, 41.122299>,  <32.559719, 35.783337, 40.646622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819241, 35.287750, 41.122299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141243, 35.367905, 40.898937>,  <33.334446, 35.415997, 40.764919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141243, 35.367905, 40.898937>,  <32.819241, 35.287750, 41.122299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141243, 35.367905, 40.898937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521145, 0.210938, 0.826990,
		0.283506, -0.956739, 0.065375,
		0.805004, 0.200387, -0.558402,
		33.382744, 35.428020, 40.731415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332535, 34.981705, 41.506569>,  <32.819241, 35.287750, 41.122299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332535, 34.981705, 41.506569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525387, 35.217449, 41.247276>,  <33.641098, 35.358898, 41.091702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525387, 35.217449, 41.247276>,  <33.332535, 34.981705, 41.506569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525387, 35.217449, 41.247276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618367, 0.295222, 0.728331,
		0.620625, -0.751992, -0.222110,
		0.482127, 0.589366, -0.648229,
		33.670025, 35.394260, 41.052807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999371, 34.879318, 41.746384>,  <33.332535, 34.981705, 41.506569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999371, 34.879318, 41.746384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022560, 35.217903, 41.534668>,  <34.036472, 35.421055, 41.407639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022560, 35.217903, 41.534668>,  <33.999371, 34.879318, 41.746384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022560, 35.217903, 41.534668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693362, 0.347309, 0.631368,
		0.718254, -0.403589, -0.566770,
		0.057969, 0.846459, -0.529289,
		34.039951, 35.471840, 41.375881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659481, 34.962166, 41.615032>,  <33.999371, 34.879318, 41.746384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659481, 34.962166, 41.615032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484257, 35.321335, 41.597923>,  <34.379120, 35.536839, 41.587658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484257, 35.321335, 41.597923>,  <34.659481, 34.962166, 41.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484257, 35.321335, 41.597923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628619, 0.339999, 0.699456,
		0.642603, 0.279517, -0.713394,
		-0.438063, 0.897926, -0.042775,
		34.352837, 35.590714, 41.585091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184700, 35.358334, 41.621956>,  <34.659481, 34.962166, 41.615032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184700, 35.358334, 41.621956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872639, 35.588894, 41.719212>,  <34.685402, 35.727230, 41.777565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872639, 35.588894, 41.719212>,  <35.184700, 35.358334, 41.621956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872639, 35.588894, 41.719212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493800, 0.328772, 0.805028,
		0.384079, 0.748113, -0.541119,
		-0.780157, 0.576399, 0.243144,
		34.638592, 35.761814, 41.792156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476151, 35.971180, 41.836910>,  <35.184700, 35.358334, 41.621956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476151, 35.971180, 41.836910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099632, 36.023060, 41.961582>,  <34.873722, 36.054188, 42.036385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099632, 36.023060, 41.961582>,  <35.476151, 35.971180, 41.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099632, 36.023060, 41.961582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331648, 0.527732, 0.781990,
		-0.063058, 0.839450, -0.539765,
		-0.941293, 0.129701, 0.311680,
		34.817245, 36.061970, 42.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431545, 36.707569, 41.987434>,  <35.476151, 35.971180, 41.836910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431545, 36.707569, 41.987434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136169, 36.537376, 42.196690>,  <34.958942, 36.435261, 42.322243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136169, 36.537376, 42.196690>,  <35.431545, 36.707569, 41.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136169, 36.537376, 42.196690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272889, 0.520868, 0.808843,
		-0.616634, 0.740040, -0.268520,
		-0.738440, -0.425484, 0.523134,
		34.914639, 36.409733, 42.353630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158726, 37.266369, 42.361942>,  <35.431545, 36.707569, 41.987434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158726, 37.266369, 42.361942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036339, 36.942371, 42.562057>,  <34.962906, 36.747971, 42.682129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036339, 36.942371, 42.562057>,  <35.158726, 37.266369, 42.361942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036339, 36.942371, 42.562057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169852, 0.470618, 0.865834,
		-0.936768, 0.349892, -0.006413,
		-0.305966, -0.809997, 0.500290,
		34.944550, 36.699371, 42.712143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080189, 37.555344, 42.927391>,  <35.158726, 37.266369, 42.361942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080189, 37.555344, 42.927391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059631, 37.169266, 43.029968>,  <35.047295, 36.937618, 43.091515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059631, 37.169266, 43.029968>,  <35.080189, 37.555344, 42.927391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059631, 37.169266, 43.029968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136081, 0.247621, 0.959253,
		-0.989364, 0.084201, 0.118617,
		-0.051398, -0.965191, 0.256445,
		35.044212, 36.879707, 43.106903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561115, 37.472507, 43.459949>,  <35.080189, 37.555344, 42.927391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561115, 37.472507, 43.459949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854359, 37.200756, 43.472591>,  <35.030304, 37.037704, 43.480175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854359, 37.200756, 43.472591>,  <34.561115, 37.472507, 43.459949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854359, 37.200756, 43.472591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197654, 0.257287, 0.945905,
		-0.650754, -0.687207, 0.322901,
		0.733111, -0.679374, 0.031601,
		35.074291, 36.996944, 43.482071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572952, 37.326801, 44.122555>,  <34.561115, 37.472507, 43.459949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572952, 37.326801, 44.122555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907219, 37.137344, 44.011322>,  <35.107780, 37.023670, 43.944584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907219, 37.137344, 44.011322>,  <34.572952, 37.326801, 44.122555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907219, 37.137344, 44.011322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394003, 0.164218, 0.904320,
		-0.382655, -0.865274, 0.323846,
		0.835666, -0.473639, -0.278082,
		35.157917, 36.995255, 43.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685047, 36.888889, 44.687260>,  <34.572952, 37.326801, 44.122555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685047, 36.888889, 44.687260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023838, 36.950459, 44.483719>,  <35.227112, 36.987400, 44.361595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023838, 36.950459, 44.483719>,  <34.685047, 36.888889, 44.687260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023838, 36.950459, 44.483719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458438, 0.273190, 0.845696,
		0.269119, -0.949578, 0.160863,
		0.847000, 0.153847, -0.508843,
		35.277931, 36.996635, 44.331062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254105, 36.514221, 45.019001>,  <34.685047, 36.888889, 44.687260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254105, 36.514221, 45.019001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471016, 36.780888, 44.814457>,  <35.601162, 36.940887, 44.691730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471016, 36.780888, 44.814457>,  <35.254105, 36.514221, 45.019001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471016, 36.780888, 44.814457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527847, 0.203198, 0.824674,
		0.653688, -0.717126, -0.241706,
		0.542281, 0.666664, -0.511361,
		35.633701, 36.980888, 44.661049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005215, 36.406509, 45.259285>,  <35.254105, 36.514221, 45.019001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005215, 36.406509, 45.259285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989033, 36.777676, 45.111050>,  <35.979324, 37.000374, 45.022106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989033, 36.777676, 45.111050>,  <36.005215, 36.406509, 45.259285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989033, 36.777676, 45.111050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452514, 0.347691, 0.821183,
		0.890839, -0.134478, -0.433960,
		-0.040453, 0.927915, -0.370590,
		35.976898, 37.056049, 44.999874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586475, 36.792397, 45.638092>,  <36.005215, 36.406509, 45.259285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586475, 36.792397, 45.638092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361824, 37.087704, 45.488682>,  <36.227032, 37.264889, 45.399036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361824, 37.087704, 45.488682>,  <36.586475, 36.792397, 45.638092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361824, 37.087704, 45.488682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397982, 0.636852, 0.660325,
		0.725383, 0.222201, -0.651495,
		-0.561631, 0.738272, -0.373530,
		36.193336, 37.309185, 45.376621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009743, 37.327045, 45.455353>,  <36.586475, 36.792397, 45.638092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009743, 37.327045, 45.455353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644287, 37.474636, 45.523617>,  <36.425014, 37.563190, 45.564575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644287, 37.474636, 45.523617>,  <37.009743, 37.327045, 45.455353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644287, 37.474636, 45.523617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383646, 0.643706, 0.662162,
		0.134466, 0.670449, -0.729669,
		-0.913638, 0.368973, 0.170658,
		36.370197, 37.585327, 45.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068535, 38.047565, 45.408588>,  <37.009743, 37.327045, 45.455353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068535, 38.047565, 45.408588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733654, 37.984894, 45.618176>,  <36.532726, 37.947292, 45.743927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733654, 37.984894, 45.618176>,  <37.068535, 38.047565, 45.408588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733654, 37.984894, 45.618176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337479, 0.605909, 0.720404,
		-0.430351, 0.779953, -0.454392,
		-0.837201, -0.156679, 0.523971,
		36.482494, 37.937889, 45.775368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951157, 38.575153, 45.771507>,  <37.068535, 38.047565, 45.408588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951157, 38.575153, 45.771507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713089, 38.335514, 45.985741>,  <36.570248, 38.191730, 46.114281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713089, 38.335514, 45.985741>,  <36.951157, 38.575153, 45.771507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713089, 38.335514, 45.985741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319298, 0.435316, 0.841753,
		-0.737440, 0.672001, -0.067798,
		-0.595173, -0.599095, 0.535588,
		36.534538, 38.155785, 46.146416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577019, 39.009396, 46.224613>,  <36.951157, 38.575153, 45.771507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577019, 39.009396, 46.224613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595959, 38.645645, 46.389923>,  <36.607323, 38.427395, 46.489109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595959, 38.645645, 46.389923>,  <36.577019, 39.009396, 46.224613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595959, 38.645645, 46.389923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318744, 0.405868, 0.856547,
		-0.946657, 0.091170, 0.309076,
		0.047353, -0.909373, 0.413278,
		36.610165, 38.372833, 46.513905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223549, 39.070827, 46.804684>,  <36.577019, 39.009396, 46.224613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223549, 39.070827, 46.804684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459110, 38.753365, 46.865742>,  <36.600445, 38.562885, 46.902378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459110, 38.753365, 46.865742>,  <36.223549, 39.070827, 46.804684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459110, 38.753365, 46.865742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330485, 0.408833, 0.850667,
		-0.737547, -0.450512, 0.503055,
		0.588901, -0.793659, 0.152646,
		36.635780, 38.515266, 46.911537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268375, 38.984413, 47.540005>,  <36.223549, 39.070827, 46.804684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268375, 38.984413, 47.540005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572117, 38.741711, 47.445992>,  <36.754360, 38.596088, 47.389584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572117, 38.741711, 47.445992>,  <36.268375, 38.984413, 47.540005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572117, 38.741711, 47.445992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495478, 0.305055, 0.813291,
		-0.421769, -0.734026, 0.532276,
		0.759350, -0.606752, -0.235031,
		36.799923, 38.559685, 47.375481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313976, 38.681580, 48.168144>,  <36.268375, 38.984413, 47.540005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313976, 38.681580, 48.168144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643902, 38.628883, 47.948204>,  <36.841858, 38.597263, 47.816242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643902, 38.628883, 47.948204>,  <36.313976, 38.681580, 48.168144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643902, 38.628883, 47.948204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554396, -0.002584, 0.832249,
		-0.111065, -0.991280, 0.070907,
		0.824809, -0.131744, -0.549849,
		36.891346, 38.589359, 47.783249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686405, 38.120712, 48.338028>,  <36.313976, 38.681580, 48.168144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686405, 38.120712, 48.338028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970600, 38.355141, 48.182217>,  <37.141117, 38.495796, 48.088730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970600, 38.355141, 48.182217>,  <36.686405, 38.120712, 48.338028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970600, 38.355141, 48.182217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510252, -0.047857, 0.858692,
		0.484612, -0.808846, -0.333045,
		0.710488, 0.586070, -0.389524,
		37.183746, 38.530960, 48.065361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282124, 37.806633, 48.582024>,  <36.686405, 38.120712, 48.338028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282124, 37.806633, 48.582024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385067, 38.184395, 48.500175>,  <37.446835, 38.411053, 48.451065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385067, 38.184395, 48.500175>,  <37.282124, 37.806633, 48.582024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385067, 38.184395, 48.500175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559587, 0.026977, 0.828333,
		0.787799, -0.327685, -0.521532,
		0.257363, 0.944402, -0.204621,
		37.462276, 38.467716, 48.438789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923359, 37.799629, 48.807850>,  <37.282124, 37.806633, 48.582024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923359, 37.799629, 48.807850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880428, 38.195198, 48.766842>,  <37.854671, 38.432541, 48.742237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880428, 38.195198, 48.766842>,  <37.923359, 37.799629, 48.807850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880428, 38.195198, 48.766842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588760, 0.146312, 0.794956,
		0.801151, 0.024957, -0.597942,
		-0.107326, 0.988924, -0.102525,
		37.848232, 38.491875, 48.736084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604263, 38.065155, 48.846058>,  <37.923359, 37.799629, 48.807850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604263, 38.065155, 48.846058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362480, 38.365562, 48.952343>,  <38.217411, 38.545807, 49.016113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362480, 38.365562, 48.952343>,  <38.604263, 38.065155, 48.846058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362480, 38.365562, 48.952343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483525, 0.080787, 0.871595,
		0.633117, 0.655321, -0.411968,
		-0.604456, 0.751018, 0.265717,
		38.181145, 38.590866, 49.032059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964134, 38.576557, 49.212231>,  <38.604263, 38.065155, 48.846058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964134, 38.576557, 49.212231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585339, 38.649067, 49.318325>,  <38.358063, 38.692574, 49.381981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585339, 38.649067, 49.318325>,  <38.964134, 38.576557, 49.212231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585339, 38.649067, 49.318325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304999, 0.247893, 0.919524,
		0.100934, 0.951677, -0.290041,
		-0.946989, 0.181274, 0.265240,
		38.301243, 38.703449, 49.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046482, 39.178829, 49.575455>,  <38.964134, 38.576557, 49.212231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046482, 39.178829, 49.575455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682987, 39.051472, 49.683403>,  <38.464890, 38.975056, 49.748173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682987, 39.051472, 49.683403>,  <39.046482, 39.178829, 49.575455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682987, 39.051472, 49.683403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203432, 0.226708, 0.952480,
		-0.364445, 0.920451, -0.141246,
		-0.908733, -0.318393, 0.269872,
		38.410366, 38.955956, 49.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816700, 39.728710, 49.951313>,  <39.046482, 39.178829, 49.575455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816700, 39.728710, 49.951313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630810, 39.388592, 50.050129>,  <38.519276, 39.184521, 50.109417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630810, 39.388592, 50.050129>,  <38.816700, 39.728710, 49.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630810, 39.388592, 50.050129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291779, 0.116355, 0.949382,
		-0.836001, 0.513281, 0.194025,
		-0.464724, -0.850297, 0.247037,
		38.491394, 39.133503, 50.124241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330414, 39.857735, 50.535984>,  <38.816700, 39.728710, 49.951313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330414, 39.857735, 50.535984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450920, 39.476898, 50.514938>,  <38.523224, 39.248398, 50.502312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450920, 39.476898, 50.514938>,  <38.330414, 39.857735, 50.535984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450920, 39.476898, 50.514938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392551, 0.073546, 0.916785,
		-0.868990, -0.296849, 0.395900,
		0.301263, -0.952088, -0.052618,
		38.541298, 39.191273, 50.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701267, 39.835030, 49.990105>,  <38.330414, 39.857735, 50.535984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701267, 39.835030, 49.990105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679527, 39.506031, 50.216572>,  <37.666485, 39.308632, 50.352451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679527, 39.506031, 50.216572>,  <37.701267, 39.835030, 49.990105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679527, 39.506031, 50.216572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748237, 0.341916, 0.568537,
		-0.661202, 0.454527, 0.596839,
		-0.054346, -0.822495, 0.566170,
		37.663223, 39.259281, 50.386421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600754, 39.995941, 50.693295>,  <37.701267, 39.835030, 49.990105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600754, 39.995941, 50.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777359, 39.637321, 50.679062>,  <37.883320, 39.422150, 50.670521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777359, 39.637321, 50.679062>,  <37.600754, 39.995941, 50.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777359, 39.637321, 50.679062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648529, 0.291465, 0.703177,
		-0.620063, -0.333536, 0.710124,
		0.441511, -0.896550, -0.035582,
		37.909813, 39.368355, 50.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586720, 39.541405, 51.181145>,  <37.600754, 39.995941, 50.693295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586720, 39.541405, 51.181145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956253, 39.497692, 51.034397>,  <38.177975, 39.471462, 50.946350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956253, 39.497692, 51.034397>,  <37.586720, 39.541405, 51.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956253, 39.497692, 51.034397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382059, 0.322692, 0.865969,
		0.023746, -0.940174, 0.339867,
		0.923833, -0.109286, -0.366864,
		38.233402, 39.464905, 50.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762543, 39.581020, 51.446583>,  <37.586720, 39.541405, 51.181145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762543, 39.581020, 51.446583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994427, 39.906815, 51.455956>,  <37.133556, 40.102291, 51.461578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994427, 39.906815, 51.455956>,  <36.762543, 39.581020, 51.446583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994427, 39.906815, 51.455956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801513, -0.564829, -0.196330,
		-0.146672, 0.132598, -0.980258,
		0.579711, 0.814485, 0.023434,
		37.168339, 40.151161, 51.462986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624817, 39.085255, 52.012867>,  <36.762543, 39.581020, 51.446583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624817, 39.085255, 52.012867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908176, 38.973709, 51.753513>,  <37.078194, 38.906784, 51.597900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908176, 38.973709, 51.753513>,  <36.624817, 39.085255, 52.012867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908176, 38.973709, 51.753513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618131, -0.198324, 0.760645,
		-0.340704, -0.939630, 0.031879,
		0.708403, -0.278860, -0.648385,
		37.120697, 38.890053, 51.558998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885078, 38.285000, 52.079742>,  <36.624817, 39.085255, 52.012867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885078, 38.285000, 52.079742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149212, 38.561825, 51.963123>,  <37.307693, 38.727921, 51.893154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149212, 38.561825, 51.963123>,  <36.885078, 38.285000, 52.079742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149212, 38.561825, 51.963123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599492, -0.251978, 0.759681,
		0.452287, -0.676425, -0.581279,
		0.660337, 0.692066, -0.291546,
		37.347313, 38.769444, 51.875660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641525, 37.987671, 52.097233>,  <36.885078, 38.285000, 52.079742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641525, 37.987671, 52.097233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642002, 38.375301, 52.195938>,  <37.642288, 38.607880, 52.255161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642002, 38.375301, 52.195938>,  <37.641525, 37.987671, 52.097233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642002, 38.375301, 52.195938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586197, -0.200598, 0.784942,
		0.810167, 0.143717, -0.568308,
		0.001192, 0.969075, 0.246764,
		37.642361, 38.666023, 52.269966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124905, 37.394119, 52.243874>,  <37.641525, 37.987671, 52.097233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124905, 37.394119, 52.243874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792561, 37.174419, 52.208122>,  <37.593155, 37.042599, 52.186672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792561, 37.174419, 52.208122>,  <38.124905, 37.394119, 52.243874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792561, 37.174419, 52.208122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465858, -0.598681, -0.651580,
		0.304374, -0.583011, 0.753296,
		-0.830863, -0.549253, -0.089377,
		37.543301, 37.009644, 52.181309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235294, 36.673836, 52.275261>,  <38.124905, 37.394119, 52.243874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235294, 36.673836, 52.275261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906292, 36.717754, 52.052040>,  <37.708889, 36.744106, 51.918106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906292, 36.717754, 52.052040>,  <38.235294, 36.673836, 52.275261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906292, 36.717754, 52.052040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352723, -0.671238, -0.651940,
		-0.446172, -0.733064, 0.513369,
		-0.822507, 0.109800, -0.558056,
		37.659538, 36.750694, 51.884624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027512, 35.963573, 51.969177>,  <38.235294, 36.673836, 52.275261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027512, 35.963573, 51.969177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888977, 36.268002, 51.749786>,  <37.805855, 36.450657, 51.618153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888977, 36.268002, 51.749786>,  <38.027512, 35.963573, 51.969177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888977, 36.268002, 51.749786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230878, -0.497525, -0.836160,
		-0.909257, -0.416222, -0.003404,
		-0.346335, 0.761070, -0.548475,
		37.785076, 36.496323, 51.585243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546268, 35.722034, 51.482079>,  <38.027512, 35.963573, 51.969177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546268, 35.722034, 51.482079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667866, 36.070782, 51.328491>,  <37.740826, 36.280029, 51.236340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667866, 36.070782, 51.328491>,  <37.546268, 35.722034, 51.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667866, 36.070782, 51.328491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228228, -0.457961, -0.859176,
		-0.924931, 0.173553, -0.338203,
		0.303997, 0.871867, -0.383973,
		37.759064, 36.332340, 51.213299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226593, 35.762173, 50.820900>,  <37.546268, 35.722034, 51.482079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226593, 35.762173, 50.820900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572803, 35.962383, 50.813591>,  <37.780529, 36.082508, 50.809204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572803, 35.962383, 50.813591>,  <37.226593, 35.762173, 50.820900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572803, 35.962383, 50.813591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210462, -0.396560, -0.893558,
		-0.454497, 0.769553, -0.448575,
		0.865528, 0.500528, -0.018274,
		37.832462, 36.112541, 50.808109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183155, 35.985176, 50.103260>,  <37.226593, 35.762173, 50.820900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183155, 35.985176, 50.103260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547131, 36.105537, 50.217430>,  <37.765518, 36.177753, 50.285931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547131, 36.105537, 50.217430>,  <37.183155, 35.985176, 50.103260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547131, 36.105537, 50.217430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319112, -0.068394, -0.945246,
		-0.264908, 0.951198, -0.158256,
		0.909940, 0.300905, 0.285420,
		37.820114, 36.195808, 50.303055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398010, 36.598228, 49.686619>,  <37.183155, 35.985176, 50.103260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398010, 36.598228, 49.686619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731094, 36.415867, 49.812313>,  <37.930946, 36.306450, 49.887730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731094, 36.415867, 49.812313>,  <37.398010, 36.598228, 49.686619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731094, 36.415867, 49.812313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392723, 0.086234, -0.915605,
		0.390327, 0.885843, 0.250851,
		0.832714, -0.455900, 0.314231,
		37.980907, 36.279099, 49.906582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935146, 37.044189, 49.539490>,  <37.398010, 36.598228, 49.686619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935146, 37.044189, 49.539490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137997, 36.699856, 49.556366>,  <38.259708, 36.493256, 49.566494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137997, 36.699856, 49.556366>,  <37.935146, 37.044189, 49.539490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137997, 36.699856, 49.556366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423650, 0.206345, -0.882010,
		0.750560, 0.465169, 0.469337,
		0.507129, -0.860837, 0.042195,
		38.290134, 36.441605, 49.569023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558727, 37.192295, 49.255070>,  <37.935146, 37.044189, 49.539490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558727, 37.192295, 49.255070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521755, 36.794540, 49.234463>,  <38.499573, 36.555889, 49.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521755, 36.794540, 49.234463>,  <38.558727, 37.192295, 49.255070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521755, 36.794540, 49.234463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383911, 0.012151, -0.923290,
		0.918732, -0.105122, 0.380632,
		-0.092433, -0.994385, -0.051521,
		38.494026, 36.496223, 49.219006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202347, 37.049404, 48.875713>,  <38.558727, 37.192295, 49.255070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202347, 37.049404, 48.875713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007317, 36.700882, 48.853439>,  <38.890301, 36.491768, 48.840076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007317, 36.700882, 48.853439>,  <39.202347, 37.049404, 48.875713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007317, 36.700882, 48.853439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303770, -0.109505, -0.946431,
		0.818533, -0.478368, 0.318069,
		-0.487573, -0.871305, -0.055680,
		38.861046, 36.439491, 48.836735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548759, 36.681923, 48.396397>,  <39.202347, 37.049404, 48.875713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548759, 36.681923, 48.396397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220901, 36.452873, 48.389572>,  <39.024189, 36.315445, 48.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220901, 36.452873, 48.389572>,  <39.548759, 36.681923, 48.396397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220901, 36.452873, 48.389572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265439, -0.353208, -0.897099,
		0.507673, -0.739828, 0.441501,
		-0.819641, -0.572624, -0.017065,
		38.975010, 36.281086, 48.384453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775116, 35.968456, 48.302177>,  <39.548759, 36.681923, 48.396397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775116, 35.968456, 48.302177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402248, 35.978024, 48.157684>,  <39.178528, 35.983765, 48.070988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402248, 35.978024, 48.157684>,  <39.775116, 35.968456, 48.302177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402248, 35.978024, 48.157684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332389, -0.338835, -0.880175,
		-0.143448, -0.940542, 0.307902,
		-0.932170, 0.023917, -0.361231,
		39.122597, 35.985199, 48.049316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662949, 35.290829, 47.899799>,  <39.775116, 35.968456, 48.302177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662949, 35.290829, 47.899799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383312, 35.551407, 47.781891>,  <39.215530, 35.707752, 47.711143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383312, 35.551407, 47.781891>,  <39.662949, 35.290829, 47.899799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383312, 35.551407, 47.781891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138709, -0.280867, -0.949670,
		-0.701452, -0.704792, 0.105990,
		-0.699089, 0.651446, -0.294776,
		39.173584, 35.746841, 47.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458431, 34.881401, 47.371971>,  <39.662949, 35.290829, 47.899799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458431, 34.881401, 47.371971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304588, 35.246502, 47.316902>,  <39.212284, 35.465565, 47.283859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304588, 35.246502, 47.316902>,  <39.458431, 34.881401, 47.371971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304588, 35.246502, 47.316902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014033, -0.143345, -0.989573,
		-0.922974, -0.382528, 0.042323,
		-0.384606, 0.912757, -0.137671,
		39.189205, 35.520329, 47.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829700, 34.845623, 46.978020>,  <39.458431, 34.881401, 47.371971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829700, 34.845623, 46.978020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979733, 35.212093, 46.921547>,  <39.069752, 35.431976, 46.887665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979733, 35.212093, 46.921547>,  <38.829700, 34.845623, 46.978020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979733, 35.212093, 46.921547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316480, -0.016587, -0.948454,
		-0.871296, 0.400425, 0.283731,
		0.375079, 0.916179, -0.141178,
		39.092255, 35.486946, 46.879192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378273, 35.264709, 46.640934>,  <38.829700, 34.845623, 46.978020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378273, 35.264709, 46.640934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717255, 35.455227, 46.547150>,  <38.920643, 35.569538, 46.490879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717255, 35.455227, 46.547150>,  <38.378273, 35.264709, 46.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717255, 35.455227, 46.547150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294339, 0.054012, -0.954173,
		-0.441803, 0.877626, 0.185965,
		0.847452, 0.476293, -0.234457,
		38.971489, 35.598114, 46.476814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201962, 35.881641, 46.374249>,  <38.378273, 35.264709, 46.640934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201962, 35.881641, 46.374249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562881, 35.816303, 46.214664>,  <38.779434, 35.777100, 46.118916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562881, 35.816303, 46.214664>,  <38.201962, 35.881641, 46.374249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562881, 35.816303, 46.214664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407291, -0.019668, -0.913087,
		0.141303, 0.986373, -0.084277,
		0.902301, -0.163347, -0.398961,
		38.833572, 35.767300, 46.094975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205177, 36.307705, 45.701382>,  <38.201962, 35.881641, 46.374249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205177, 36.307705, 45.701382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509926, 36.051029, 45.666077>,  <38.692776, 35.897026, 45.644894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509926, 36.051029, 45.666077>,  <38.205177, 36.307705, 45.701382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509926, 36.051029, 45.666077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247679, -0.162699, -0.955083,
		0.598504, 0.749511, -0.282888,
		0.761871, -0.641687, -0.088262,
		38.738487, 35.858524, 45.639599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337002, 36.453659, 45.085339>,  <38.205177, 36.307705, 45.701382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337002, 36.453659, 45.085339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502270, 36.097919, 45.163662>,  <38.601429, 35.884476, 45.210655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502270, 36.097919, 45.163662>,  <38.337002, 36.453659, 45.085339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502270, 36.097919, 45.163662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297880, -0.335178, -0.893825,
		0.860556, 0.310976, -0.403406,
		0.413171, -0.889354, 0.195806,
		38.626221, 35.831112, 45.222404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835907, 36.323528, 44.552921>,  <38.337002, 36.453659, 45.085339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835907, 36.323528, 44.552921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686821, 35.980064, 44.693653>,  <38.597370, 35.773987, 44.778091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686821, 35.980064, 44.693653>,  <38.835907, 36.323528, 44.552921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686821, 35.980064, 44.693653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196361, -0.297580, -0.934285,
		0.906933, -0.417306, -0.057695,
		-0.372714, -0.858662, 0.351828,
		38.575008, 35.722466, 44.799202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026550, 35.886223, 43.977577>,  <38.835907, 36.323528, 44.552921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026550, 35.886223, 43.977577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757431, 35.696651, 44.204815>,  <38.595959, 35.582909, 44.341160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757431, 35.696651, 44.204815>,  <39.026550, 35.886223, 43.977577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757431, 35.696651, 44.204815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399317, -0.413797, -0.818119,
		0.622804, -0.777282, 0.089156,
		-0.672801, -0.473926, 0.568096,
		38.555592, 35.554474, 44.375244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018127, 35.235134, 43.678905>,  <39.026550, 35.886223, 43.977577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018127, 35.235134, 43.678905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680477, 35.231342, 43.893330>,  <38.477886, 35.229069, 44.021984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680477, 35.231342, 43.893330>,  <39.018127, 35.235134, 43.678905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680477, 35.231342, 43.893330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450833, -0.528588, -0.719266,
		0.290171, -0.848825, 0.441923,
		-0.844127, -0.009477, 0.536060,
		38.427238, 35.228500, 44.054146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832504, 34.626175, 43.713058>,  <39.018127, 35.235134, 43.678905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832504, 34.626175, 43.713058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501324, 34.837238, 43.789036>,  <38.302616, 34.963875, 43.834621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501324, 34.837238, 43.789036>,  <38.832504, 34.626175, 43.713058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501324, 34.837238, 43.789036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495362, -0.529326, -0.688789,
		-0.262903, -0.664372, 0.699637,
		-0.827948, 0.527658, 0.189943,
		38.252937, 34.995537, 43.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325008, 34.122223, 43.845654>,  <38.832504, 34.626175, 43.713058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325008, 34.122223, 43.845654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.456318, 43.745789>,  <38.011448, 34.656776, 43.685867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.456318, 43.745789>,  <38.325008, 34.122223, 43.845654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129032, 34.456318, 43.745789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691069, -0.546702, -0.472801,
		-0.531391, -0.059115, 0.845061,
		-0.489946, 0.835238, -0.249660,
		37.982048, 34.706890, 43.670891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473530, 34.137329, 44.004227>,  <38.325008, 34.122223, 43.845654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473530, 34.137329, 44.004227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567783, 34.377636, 43.698662>,  <37.624336, 34.521820, 43.515324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567783, 34.377636, 43.698662>,  <37.473530, 34.137329, 44.004227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567783, 34.377636, 43.698662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632988, -0.501574, -0.589703,
		-0.737430, 0.622501, 0.262087,
		0.235635, 0.600763, -0.763911,
		37.638474, 34.557865, 43.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779320, 34.143562, 43.663170>,  <37.473530, 34.137329, 44.004227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779320, 34.143562, 43.663170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045265, 34.299240, 43.408142>,  <37.204830, 34.392647, 43.255127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045265, 34.299240, 43.408142>,  <36.779320, 34.143562, 43.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045265, 34.299240, 43.408142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446823, -0.476777, -0.756989,
		-0.598591, 0.788171, -0.143090,
		0.664859, 0.389191, -0.637568,
		37.244724, 34.415997, 43.216873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338654, 34.502525, 43.153530>,  <36.779320, 34.143562, 43.663170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338654, 34.502525, 43.153530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698910, 34.453392, 42.986790>,  <36.915062, 34.423912, 42.886745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698910, 34.453392, 42.986790>,  <36.338654, 34.502525, 43.153530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698910, 34.453392, 42.986790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428824, -0.095663, -0.898309,
		0.070462, 0.987806, -0.138830,
		0.900636, -0.122830, -0.416855,
		36.969101, 34.416542, 42.861732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240593, 34.784718, 42.517670>,  <36.338654, 34.502525, 43.153530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240593, 34.784718, 42.517670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561180, 34.551033, 42.466518>,  <36.753532, 34.410824, 42.435829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561180, 34.551033, 42.466518>,  <36.240593, 34.784718, 42.517670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561180, 34.551033, 42.466518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363721, -0.306437, -0.879661,
		0.474720, 0.751529, -0.458088,
		0.801466, -0.584208, -0.127875,
		36.801620, 34.375771, 42.428154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406559, 34.870621, 41.835960>,  <36.240593, 34.784718, 42.517670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406559, 34.870621, 41.835960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568676, 34.530415, 41.970039>,  <36.665947, 34.326290, 42.050488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568676, 34.530415, 41.970039>,  <36.406559, 34.870621, 41.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568676, 34.530415, 41.970039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253242, -0.456766, -0.852780,
		0.878411, 0.260741, -0.400511,
		0.405294, -0.850517, 0.335197,
		36.690266, 34.275261, 42.070599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661495, 34.578003, 41.222359>,  <36.406559, 34.870621, 41.835960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661495, 34.578003, 41.222359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632732, 34.288399, 41.496769>,  <36.615475, 34.114635, 41.661415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632732, 34.288399, 41.496769>,  <36.661495, 34.578003, 41.222359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632732, 34.288399, 41.496769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289789, -0.642975, -0.708947,
		0.954385, -0.249784, -0.163575,
		-0.071909, -0.724011, 0.686030,
		36.611160, 34.071194, 41.702579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938057, 34.017399, 40.907322>,  <36.661495, 34.578003, 41.222359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938057, 34.017399, 40.907322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741039, 33.844379, 41.209396>,  <36.622829, 33.740570, 41.390640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741039, 33.844379, 41.209396>,  <36.938057, 34.017399, 40.907322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741039, 33.844379, 41.209396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346073, -0.698838, -0.625986,
		0.798519, -0.569675, 0.194517,
		-0.492545, -0.432545, 0.755185,
		36.593277, 33.714615, 41.435951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069786, 33.308651, 40.879887>,  <36.938057, 34.017399, 40.907322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069786, 33.308651, 40.879887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720921, 33.385952, 41.059658>,  <36.511600, 33.432331, 41.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720921, 33.385952, 41.059658>,  <37.069786, 33.308651, 40.879887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720921, 33.385952, 41.059658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466226, -0.606636, -0.643915,
		0.148200, -0.771133, 0.619185,
		-0.872164, 0.193252, 0.449425,
		36.459270, 33.443928, 41.194485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771671, 32.655201, 41.016624>,  <37.069786, 33.308651, 40.879887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771671, 32.655201, 41.016624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486805, 32.935921, 41.009640>,  <36.315887, 33.104351, 41.005447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486805, 32.935921, 41.009640>,  <36.771671, 32.655201, 41.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486805, 32.935921, 41.009640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518992, -0.543080, -0.660085,
		-0.472725, -0.461028, 0.750989,
		-0.712165, 0.701796, -0.017458,
		36.273155, 33.146461, 41.004402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173920, 32.278065, 41.147957>,  <36.771671, 32.655201, 41.016624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173920, 32.278065, 41.147957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027168, 32.614330, 40.988617>,  <35.939117, 32.816090, 40.893013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027168, 32.614330, 40.988617>,  <36.173920, 32.278065, 41.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027168, 32.614330, 40.988617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446077, -0.534745, -0.717679,
		-0.816341, -0.085611, 0.571190,
		-0.366883, 0.840665, -0.398346,
		35.917103, 32.866531, 40.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433399, 32.208374, 41.095356>,  <36.173920, 32.278065, 41.147957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433399, 32.208374, 41.095356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518703, 32.491852, 40.826351>,  <35.569885, 32.661938, 40.664948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518703, 32.491852, 40.826351>,  <35.433399, 32.208374, 41.095356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518703, 32.491852, 40.826351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583226, -0.459891, -0.669588,
		-0.783816, 0.535020, 0.315255,
		0.213260, 0.708699, -0.672507,
		35.582680, 32.704460, 40.624599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729359, 32.461956, 40.792103>,  <35.433399, 32.208374, 41.095356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729359, 32.461956, 40.792103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993462, 32.607475, 40.529285>,  <35.151924, 32.694786, 40.371593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993462, 32.607475, 40.529285>,  <34.729359, 32.461956, 40.792103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993462, 32.607475, 40.529285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607450, -0.255792, -0.752047,
		-0.441664, 0.895666, 0.052104,
		0.660255, 0.363803, -0.657047,
		35.191540, 32.716618, 40.332172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304832, 32.831848, 40.356285>,  <34.729359, 32.461956, 40.792103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304832, 32.831848, 40.356285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655964, 32.761921, 40.177910>,  <34.866642, 32.719963, 40.070885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655964, 32.761921, 40.177910>,  <34.304832, 32.831848, 40.356285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655964, 32.761921, 40.177910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471008, -0.145938, -0.869973,
		0.087011, 0.973725, -0.210451,
		0.877827, -0.174821, -0.445934,
		34.919312, 32.709476, 40.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306705, 33.197231, 39.678249>,  <34.304832, 32.831848, 40.356285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306705, 33.197231, 39.678249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603363, 32.934635, 39.623119>,  <34.781357, 32.777077, 39.590042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603363, 32.934635, 39.623119>,  <34.306705, 33.197231, 39.678249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603363, 32.934635, 39.623119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347803, -0.200642, -0.915847,
		0.573588, 0.727165, -0.377132,
		0.741640, -0.656486, -0.137824,
		34.825855, 32.737690, 39.581772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504246, 33.400082, 39.020988>,  <34.306705, 33.197231, 39.678249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504246, 33.400082, 39.020988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 33.020817, 39.108826>,  <34.651260, 32.793259, 39.161526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 33.020817, 39.108826>,  <34.504246, 33.400082, 39.020988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596130, 33.020817, 39.108826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195413, -0.265960, -0.943970,
		0.953440, 0.173929, -0.246377,
		0.229710, -0.948164, 0.219589,
		34.665043, 32.736366, 39.174702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901302, 33.128868, 38.403286>,  <34.504246, 33.400082, 39.020988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901302, 33.128868, 38.403286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767731, 32.817066, 38.615273>,  <34.687588, 32.629986, 38.742466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767731, 32.817066, 38.615273>,  <34.901302, 33.128868, 38.403286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767731, 32.817066, 38.615273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362761, -0.412656, -0.835535,
		0.869998, -0.471259, -0.144977,
		-0.333928, -0.779506, 0.529965,
		34.667553, 32.583214, 38.774261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233707, 32.388992, 38.097942>,  <34.901302, 33.128868, 38.403286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233707, 32.388992, 38.097942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887787, 32.370861, 38.297970>,  <34.680237, 32.359982, 38.417988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887787, 32.370861, 38.297970>,  <35.233707, 32.388992, 38.097942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887787, 32.370861, 38.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428900, -0.451174, -0.782615,
		0.261089, -0.891284, 0.370736,
		-0.864799, -0.045324, 0.500068,
		34.628345, 32.357265, 38.447990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980377, 32.531174, 37.971870>,  <35.233707, 32.388992, 38.097942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980377, 32.531174, 37.971870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277901, 32.774624, 38.082371>,  <36.456417, 32.920696, 38.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277901, 32.774624, 38.082371>,  <35.980377, 32.531174, 37.971870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277901, 32.774624, 38.082371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062973, 0.475287, -0.877574,
		-0.665415, 0.635354, 0.391852,
		0.743813, 0.608627, 0.276253,
		36.501045, 32.957211, 38.165245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703259, 32.520836, 37.956051>,  <35.980377, 32.531174, 37.971870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703259, 32.520836, 37.956051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969547, 32.525833, 37.657612>,  <37.129322, 32.528831, 37.478550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969547, 32.525833, 37.657612>,  <36.703259, 32.520836, 37.956051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969547, 32.525833, 37.657612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742432, 0.089251, 0.663949,
		0.074880, -0.995931, 0.050147,
		0.665723, 0.012486, -0.746094,
		37.169266, 32.529579, 37.433784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203705, 31.907427, 37.945389>,  <36.703259, 32.520836, 37.956051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203705, 31.907427, 37.945389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377098, 32.227879, 37.780331>,  <37.481136, 32.420151, 37.681293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377098, 32.227879, 37.780331>,  <37.203705, 31.907427, 37.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377098, 32.227879, 37.780331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677124, 0.012592, 0.735761,
		0.594637, -0.598357, -0.537007,
		0.433486, 0.801131, -0.412649,
		37.507145, 32.468216, 37.656536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879341, 31.656450, 37.935432>,  <37.203705, 31.907427, 37.945389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879341, 31.656450, 37.935432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881786, 32.052574, 37.879932>,  <37.883255, 32.290249, 37.846630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881786, 32.052574, 37.879932>,  <37.879341, 31.656450, 37.935432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881786, 32.052574, 37.879932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603814, 0.106949, 0.789918,
		0.797102, -0.088611, -0.597308,
		0.006114, 0.990308, -0.138754,
		37.883621, 32.349667, 37.838306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506641, 31.853302, 38.090580>,  <37.879341, 31.656450, 37.935432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506641, 31.853302, 38.090580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289619, 32.188534, 38.113422>,  <38.159405, 32.389671, 38.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289619, 32.188534, 38.113422>,  <38.506641, 31.853302, 38.090580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289619, 32.188534, 38.113422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604324, 0.342203, 0.719507,
		0.583462, 0.424879, -0.692134,
		-0.542554, 0.838078, 0.057101,
		38.126854, 32.439957, 38.130554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973206, 32.477249, 38.126400>,  <38.506641, 31.853302, 38.090580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973206, 32.477249, 38.126400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628101, 32.602196, 38.285431>,  <38.421040, 32.677162, 38.380852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628101, 32.602196, 38.285431>,  <38.973206, 32.477249, 38.126400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628101, 32.602196, 38.285431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494249, 0.355285, 0.793404,
		0.106576, 0.881023, -0.460912,
		-0.862762, 0.312363, 0.397580,
		38.369274, 32.695904, 38.404705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192966, 32.944866, 38.574329>,  <38.973206, 32.477249, 38.126400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192966, 32.944866, 38.574329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810314, 32.946114, 38.690838>,  <38.580723, 32.946861, 38.760742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810314, 32.946114, 38.690838>,  <39.192966, 32.944866, 38.574329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810314, 32.946114, 38.690838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248384, 0.531117, 0.810074,
		-0.152173, 0.847293, -0.508860,
		-0.956634, 0.003121, 0.291276,
		38.523323, 32.947048, 38.778221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985741, 33.630486, 38.665844>,  <39.192966, 32.944866, 38.574329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985741, 33.630486, 38.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740871, 33.404640, 38.887280>,  <38.593948, 33.269135, 39.020142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740871, 33.404640, 38.887280>,  <38.985741, 33.630486, 38.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740871, 33.404640, 38.887280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153194, 0.602152, 0.783547,
		-0.775743, 0.564472, -0.282126,
		-0.612172, -0.564611, 0.553588,
		38.557220, 33.235256, 39.053356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631870, 34.087269, 39.211864>,  <38.985741, 33.630486, 38.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631870, 34.087269, 39.211864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565838, 33.720665, 39.357605>,  <38.526218, 33.500702, 39.445049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565838, 33.720665, 39.357605>,  <38.631870, 34.087269, 39.211864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565838, 33.720665, 39.357605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162378, 0.339127, 0.926621,
		-0.972822, 0.212128, 0.092839,
		-0.165078, -0.916512, 0.364355,
		38.516315, 33.445713, 39.466911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380783, 34.198097, 39.823620>,  <38.631870, 34.087269, 39.211864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380783, 34.198097, 39.823620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487171, 33.815109, 39.868359>,  <38.551006, 33.585316, 39.895203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487171, 33.815109, 39.868359>,  <38.380783, 34.198097, 39.823620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487171, 33.815109, 39.868359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337082, 0.201082, 0.919751,
		-0.903124, -0.206927, 0.376228,
		0.265974, -0.957469, 0.111851,
		38.566963, 33.527870, 39.901913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026340, 33.904060, 40.403522>,  <38.380783, 34.198097, 39.823620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026340, 33.904060, 40.403522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350761, 33.677849, 40.343681>,  <38.545414, 33.542122, 40.307777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350761, 33.677849, 40.343681>,  <38.026340, 33.904060, 40.403522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350761, 33.677849, 40.343681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356788, 0.275556, 0.892620,
		-0.463578, -0.777333, 0.425262,
		0.811047, -0.565527, -0.149601,
		38.594074, 33.508190, 40.298801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232151, 33.593903, 41.056622>,  <38.026340, 33.904060, 40.403522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232151, 33.593903, 41.056622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583370, 33.577057, 40.865936>,  <38.794102, 33.566948, 40.751526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583370, 33.577057, 40.865936>,  <38.232151, 33.593903, 41.056622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583370, 33.577057, 40.865936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472514, 0.234257, 0.849620,
		0.075889, -0.971262, 0.225591,
		0.878049, -0.042118, -0.476713,
		38.846786, 33.564423, 40.722923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746029, 33.362946, 41.529297>,  <38.232151, 33.593903, 41.056622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746029, 33.362946, 41.529297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970131, 33.535301, 41.246326>,  <39.104591, 33.638714, 41.076546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970131, 33.535301, 41.246326>,  <38.746029, 33.362946, 41.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970131, 33.535301, 41.246326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612627, 0.359264, 0.704001,
		0.557497, -0.827808, -0.062693,
		0.560254, 0.430886, -0.707427,
		39.138206, 33.664566, 41.034100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354633, 33.254539, 41.715729>,  <38.746029, 33.362946, 41.529297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354633, 33.254539, 41.715729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389458, 33.565998, 41.467171>,  <39.410351, 33.752872, 41.318035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389458, 33.565998, 41.467171>,  <39.354633, 33.254539, 41.715729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389458, 33.565998, 41.467171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650740, 0.427843, 0.627286,
		0.754293, -0.458980, -0.469447,
		0.087062, 0.778645, -0.621395,
		39.415577, 33.799591, 41.280750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097347, 33.257969, 41.686691>,  <39.354633, 33.254539, 41.715729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097347, 33.257969, 41.686691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003643, 33.607136, 41.515507>,  <39.947422, 33.816635, 41.412796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003643, 33.607136, 41.515507>,  <40.097347, 33.257969, 41.686691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003643, 33.607136, 41.515507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572488, 0.479648, 0.664977,
		0.785736, -0.089226, -0.612093,
		-0.234256, 0.872913, -0.427958,
		39.933365, 33.869011, 41.387119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738911, 33.551670, 41.518681>,  <40.097347, 33.257969, 41.686691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738911, 33.551670, 41.518681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467518, 33.843693, 41.551357>,  <40.304684, 34.018906, 41.570961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467518, 33.843693, 41.551357>,  <40.738911, 33.551670, 41.518681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467518, 33.843693, 41.551357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574427, 0.457926, 0.678482,
		0.457926, 0.507262, -0.730061,
		-0.678482, 0.730061, 0.081688,
		40.263973, 34.062710, 41.575863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082043, 34.201519, 41.407871>,  <40.738911, 33.551670, 41.518681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082043, 34.201519, 41.407871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764709, 34.310440, 41.625668>,  <40.574310, 34.375793, 41.756344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764709, 34.310440, 41.625668>,  <41.082043, 34.201519, 41.407871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764709, 34.310440, 41.625668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598958, 0.509160, 0.618066,
		-0.108933, 0.816461, -0.567032,
		-0.793336, 0.272301, 0.544490,
		40.526707, 34.392132, 41.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140488, 34.926769, 41.658344>,  <41.082043, 34.201519, 41.407871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140488, 34.926769, 41.658344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886677, 34.775852, 41.928165>,  <40.734390, 34.685303, 42.090057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886677, 34.775852, 41.928165>,  <41.140488, 34.926769, 41.658344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886677, 34.775852, 41.928165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430345, 0.552494, 0.713830,
		-0.642011, 0.743236, -0.188206,
		-0.634527, -0.377294, 0.674555,
		40.696320, 34.662663, 42.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795059, 35.550579, 42.077442>,  <41.140488, 34.926769, 41.658344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795059, 35.550579, 42.077442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735912, 35.218117, 42.291847>,  <40.700424, 35.018639, 42.420490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735912, 35.218117, 42.291847>,  <40.795059, 35.550579, 42.077442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735912, 35.218117, 42.291847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042541, 0.536124, 0.843067,
		-0.988092, 0.147465, -0.043918,
		-0.147868, -0.831159, 0.536012,
		40.691551, 34.968769, 42.452652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311859, 35.707020, 42.514915>,  <40.795059, 35.550579, 42.077442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311859, 35.707020, 42.514915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471527, 35.383923, 42.688446>,  <40.567329, 35.190063, 42.792564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471527, 35.383923, 42.688446>,  <40.311859, 35.707020, 42.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471527, 35.383923, 42.688446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008802, 0.476511, 0.879124,
		-0.916833, -0.347104, 0.197321,
		0.399173, -0.807747, 0.433826,
		40.591278, 35.141598, 42.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007172, 35.646732, 43.177277>,  <40.311859, 35.707020, 42.514915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007172, 35.646732, 43.177277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337940, 35.424679, 43.213100>,  <40.536404, 35.291447, 43.234592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337940, 35.424679, 43.213100>,  <40.007172, 35.646732, 43.177277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337940, 35.424679, 43.213100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093060, 0.292176, 0.951826,
		-0.554559, -0.778753, 0.293268,
		0.826924, -0.555136, 0.089558,
		40.586018, 35.258137, 43.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947502, 35.296787, 43.785877>,  <40.007172, 35.646732, 43.177277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947502, 35.296787, 43.785877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336311, 35.320820, 43.695045>,  <40.569595, 35.335239, 43.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336311, 35.320820, 43.695045>,  <39.947502, 35.296787, 43.785877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336311, 35.320820, 43.695045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195039, 0.332305, 0.922786,
		0.130904, -0.941257, 0.311289,
		0.972020, 0.060083, -0.227081,
		40.627918, 35.338844, 43.626923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322090, 34.965603, 44.326553>,  <39.947502, 35.296787, 43.785877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322090, 34.965603, 44.326553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621674, 35.168575, 44.156109>,  <40.801426, 35.290359, 44.053841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621674, 35.168575, 44.156109>,  <40.322090, 34.965603, 44.326553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621674, 35.168575, 44.156109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443991, 0.093047, 0.891187,
		0.491861, -0.856656, -0.155605,
		0.748962, 0.507427, -0.426114,
		40.846363, 35.320805, 44.028275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929970, 34.717075, 44.551128>,  <40.322090, 34.965603, 44.326553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929970, 34.717075, 44.551128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018036, 35.095051, 44.454281>,  <41.070873, 35.321835, 44.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018036, 35.095051, 44.454281>,  <40.929970, 34.717075, 44.551128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018036, 35.095051, 44.454281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197542, 0.199877, 0.959701,
		0.955251, -0.259119, -0.142660,
		0.220163, 0.944937, -0.242119,
		41.084084, 35.378532, 44.381645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507347, 34.880577, 44.987556>,  <40.929970, 34.717075, 44.551128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507347, 34.880577, 44.987556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370197, 35.236336, 44.866619>,  <41.287907, 35.449791, 44.794056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370197, 35.236336, 44.866619>,  <41.507347, 34.880577, 44.987556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370197, 35.236336, 44.866619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162019, 0.373018, 0.913569,
		0.925304, 0.264255, -0.271998,
		-0.342875, 0.889397, -0.302341,
		41.267334, 35.503155, 44.775917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892693, 35.433338, 45.481682>,  <41.507347, 34.880577, 44.987556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892693, 35.433338, 45.481682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611881, 35.668999, 45.321651>,  <41.443394, 35.810394, 45.225632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611881, 35.668999, 45.321651>,  <41.892693, 35.433338, 45.481682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611881, 35.668999, 45.321651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002687, 0.559592, 0.828764,
		0.712147, 0.582888, -0.391265,
		-0.702025, 0.589150, -0.400078,
		41.401276, 35.845745, 45.201630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212521, 36.061424, 45.626675>,  <41.892693, 35.433338, 45.481682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212521, 36.061424, 45.626675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818779, 36.108807, 45.574486>,  <41.582535, 36.137238, 45.543171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818779, 36.108807, 45.574486>,  <42.212521, 36.061424, 45.626675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818779, 36.108807, 45.574486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032963, 0.603562, 0.796635,
		0.173117, 0.788468, -0.590211,
		-0.984350, 0.118456, -0.130477,
		41.523476, 36.144344, 45.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046467, 36.775681, 45.650700>,  <42.212521, 36.061424, 45.626675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046467, 36.775681, 45.650700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721107, 36.570633, 45.760689>,  <41.525894, 36.447605, 45.826683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721107, 36.570633, 45.760689>,  <42.046467, 36.775681, 45.650700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721107, 36.570633, 45.760689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169154, 0.660698, 0.731345,
		-0.556574, 0.548360, -0.624121,
		-0.813395, -0.512620, 0.274970,
		41.477089, 36.416847, 45.843182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475681, 37.273636, 45.683685>,  <42.046467, 36.775681, 45.650700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475681, 37.273636, 45.683685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397022, 36.967251, 45.928513>,  <41.349827, 36.783421, 46.075409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397022, 36.967251, 45.928513>,  <41.475681, 37.273636, 45.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397022, 36.967251, 45.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118407, 0.638240, 0.760677,
		-0.973299, 0.077110, -0.216203,
		-0.196645, -0.765966, 0.612068,
		41.338028, 36.737461, 46.112133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903988, 37.481750, 46.038265>,  <41.475681, 37.273636, 45.683685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903988, 37.481750, 46.038265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055531, 37.188107, 46.263672>,  <41.146454, 37.011921, 46.398918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055531, 37.188107, 46.263672>,  <40.903988, 37.481750, 46.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055531, 37.188107, 46.263672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331621, 0.460789, 0.823226,
		-0.864001, -0.498758, -0.068874,
		0.378854, -0.734108, 0.563520,
		41.169186, 36.967873, 46.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341236, 37.320927, 46.542011>,  <40.903988, 37.481750, 46.038265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341236, 37.320927, 46.542011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715111, 37.229237, 46.650696>,  <40.939434, 37.174225, 46.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715111, 37.229237, 46.650696>,  <40.341236, 37.320927, 46.542011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715111, 37.229237, 46.650696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032890, 0.705300, 0.708146,
		-0.353960, -0.670828, 0.651692,
		0.934682, -0.229221, 0.271711,
		40.995514, 37.160469, 46.732208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311905, 37.360973, 47.262451>,  <40.341236, 37.320927, 46.542011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311905, 37.360973, 47.262451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702431, 37.393169, 47.182117>,  <40.936745, 37.412487, 47.133915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702431, 37.393169, 47.182117>,  <40.311905, 37.360973, 47.262451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702431, 37.393169, 47.182117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087530, 0.701953, 0.706825,
		0.197870, -0.707661, 0.678280,
		0.976313, 0.080490, -0.200836,
		40.995323, 37.417316, 47.121868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624340, 37.468849, 47.906651>,  <40.311905, 37.360973, 47.262451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624340, 37.468849, 47.906651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935699, 37.568733, 47.676262>,  <41.122513, 37.628666, 47.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935699, 37.568733, 47.676262>,  <40.624340, 37.468849, 47.906651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935699, 37.568733, 47.676262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295515, 0.663723, 0.687126,
		0.553871, -0.705064, 0.442844,
		0.778394, 0.249712, -0.575974,
		41.169216, 37.643646, 47.503471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138714, 37.664375, 48.381310>,  <40.624340, 37.468849, 47.906651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138714, 37.664375, 48.381310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235050, 37.824039, 48.027435>,  <41.292850, 37.919838, 47.815109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235050, 37.824039, 48.027435>,  <41.138714, 37.664375, 48.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235050, 37.824039, 48.027435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423540, 0.776920, 0.465841,
		0.873276, -0.486892, 0.018050,
		0.240838, 0.399163, -0.884684,
		41.307301, 37.943787, 47.762032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756607, 37.807858, 48.459171>,  <41.138714, 37.664375, 48.381310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756607, 37.807858, 48.459171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620079, 38.032764, 48.157879>,  <41.538162, 38.167709, 47.977104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620079, 38.032764, 48.157879>,  <41.756607, 37.807858, 48.459171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620079, 38.032764, 48.157879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379965, 0.815494, 0.436573,
		0.859726, -0.137190, -0.491987,
		-0.341318, 0.562271, -0.753229,
		41.517685, 38.201447, 47.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258884, 38.251305, 48.472797>,  <41.756607, 37.807858, 48.459171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258884, 38.251305, 48.472797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973915, 38.435471, 48.260960>,  <41.802933, 38.545971, 48.133858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973915, 38.435471, 48.260960>,  <42.258884, 38.251305, 48.472797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973915, 38.435471, 48.260960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309294, 0.883436, 0.351963,
		0.629914, 0.086945, -0.771783,
		-0.712422, 0.460414, -0.529597,
		41.760189, 38.573593, 48.102081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580460, 38.857311, 48.082680>,  <42.258884, 38.251305, 48.472797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580460, 38.857311, 48.082680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187710, 38.926674, 48.113258>,  <41.952061, 38.968292, 48.131607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187710, 38.926674, 48.113258>,  <42.580460, 38.857311, 48.082680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187710, 38.926674, 48.113258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189445, 0.887596, 0.419861,
		0.004949, 0.426736, -0.904363,
		-0.981879, 0.173405, 0.076450,
		41.893147, 38.978695, 48.136192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600632, 39.580048, 48.097385>,  <42.580460, 38.857311, 48.082680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600632, 39.580048, 48.097385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235161, 39.495865, 48.236465>,  <42.015877, 39.445354, 48.319912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235161, 39.495865, 48.236465>,  <42.600632, 39.580048, 48.097385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235161, 39.495865, 48.236465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084269, 0.738811, 0.668624,
		-0.397599, 0.640210, -0.657303,
		-0.913682, -0.210454, 0.347701,
		41.961056, 39.432728, 48.340775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041771, 40.171436, 48.238312>,  <42.600632, 39.580048, 48.097385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041771, 40.171436, 48.238312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878986, 40.529705, 48.166592>,  <42.781315, 40.744667, 48.123562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878986, 40.529705, 48.166592>,  <43.041771, 40.171436, 48.238312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878986, 40.529705, 48.166592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205416, -0.280996, -0.937468,
		-0.890049, -0.344682, 0.298340,
		-0.406960, 0.895676, -0.179297,
		42.756897, 40.798409, 48.112801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219196, 40.285698, 48.171024>,  <43.041771, 40.171436, 48.238312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219196, 40.285698, 48.171024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469410, 40.505970, 47.949951>,  <42.619537, 40.638134, 47.817307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469410, 40.505970, 47.949951>,  <42.219196, 40.285698, 48.171024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469410, 40.505970, 47.949951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209900, -0.563483, -0.799018,
		-0.751431, 0.615820, -0.236889,
		0.625534, 0.550684, -0.552679,
		42.657070, 40.671177, 47.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861992, 40.478237, 47.651440>,  <42.219196, 40.285698, 48.171024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861992, 40.478237, 47.651440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233116, 40.538033, 47.514721>,  <42.455791, 40.573910, 47.432690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233116, 40.538033, 47.514721>,  <41.861992, 40.478237, 47.651440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233116, 40.538033, 47.514721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254396, -0.416601, -0.872769,
		-0.272861, 0.896714, -0.348497,
		0.927809, 0.149489, -0.341795,
		42.511459, 40.582878, 47.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783791, 40.871452, 47.055634>,  <41.861992, 40.478237, 47.651440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783791, 40.871452, 47.055634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147198, 40.708675, 47.017708>,  <42.365242, 40.611012, 46.994953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147198, 40.708675, 47.017708>,  <41.783791, 40.871452, 47.055634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147198, 40.708675, 47.017708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184377, -0.186801, -0.964941,
		0.374961, 0.894150, -0.244743,
		0.908520, -0.406941, -0.094818,
		42.419754, 40.586594, 46.989262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979370, 41.042923, 46.303829>,  <41.783791, 40.871452, 47.055634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979370, 41.042923, 46.303829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231823, 40.755089, 46.419674>,  <42.383293, 40.582390, 46.489182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231823, 40.755089, 46.419674>,  <41.979370, 41.042923, 46.303829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231823, 40.755089, 46.419674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219873, -0.524011, -0.822842,
		0.743863, 0.455641, -0.488936,
		0.631128, -0.719586, 0.289609,
		42.421162, 40.539211, 46.506557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381485, 40.869812, 45.643711>,  <41.979370, 41.042923, 46.303829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381485, 40.869812, 45.643711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414513, 40.574657, 45.911652>,  <42.434330, 40.397564, 46.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414513, 40.574657, 45.911652>,  <42.381485, 40.869812, 45.643711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414513, 40.574657, 45.911652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065995, -0.674721, -0.735117,
		0.994398, 0.016489, -0.104406,
		0.082566, -0.737889, 0.669853,
		42.439281, 40.353291, 46.112606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873344, 40.448395, 45.331367>,  <42.381485, 40.869812, 45.643711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873344, 40.448395, 45.331367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636292, 40.250271, 45.585442>,  <42.494061, 40.131397, 45.737885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636292, 40.250271, 45.585442>,  <42.873344, 40.448395, 45.331367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636292, 40.250271, 45.585442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204848, -0.669973, -0.713564,
		0.778990, -0.552997, 0.295584,
		-0.592632, -0.495309, 0.635182,
		42.458504, 40.101677, 45.775997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998077, 39.764572, 45.084789>,  <42.873344, 40.448395, 45.331367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998077, 39.764572, 45.084789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671917, 39.736950, 45.314697>,  <42.476223, 39.720379, 45.452641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671917, 39.736950, 45.314697>,  <42.998077, 39.764572, 45.084789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671917, 39.736950, 45.314697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449846, -0.549344, -0.704173,
		0.364370, -0.832738, 0.416871,
		-0.815397, -0.069052, 0.574769,
		42.427299, 39.716236, 45.487129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828030, 39.110405, 45.047169>,  <42.998077, 39.764572, 45.084789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828030, 39.110405, 45.047169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499886, 39.310131, 45.158653>,  <42.302998, 39.429966, 45.225544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499886, 39.310131, 45.158653>,  <42.828030, 39.110405, 45.047169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499886, 39.310131, 45.158653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517147, -0.439796, -0.734260,
		-0.244052, -0.746498, 0.619015,
		-0.820364, 0.499319, 0.278717,
		42.253777, 39.459927, 45.242268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250721, 38.629383, 45.112736>,  <42.828030, 39.110405, 45.047169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250721, 38.629383, 45.112736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101997, 38.994617, 45.045761>,  <42.012764, 39.213757, 45.005577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101997, 38.994617, 45.045761>,  <42.250721, 38.629383, 45.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101997, 38.994617, 45.045761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584625, -0.370423, -0.721804,
		-0.721090, -0.170486, 0.671538,
		-0.371810, 0.913084, -0.167438,
		41.990456, 39.268543, 44.995529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608067, 38.513256, 45.055962>,  <42.250721, 38.629383, 45.112736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608067, 38.513256, 45.055962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652309, 38.869968, 44.880463>,  <41.678856, 39.083996, 44.775166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652309, 38.869968, 44.880463>,  <41.608067, 38.513256, 45.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652309, 38.869968, 44.880463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600745, -0.291688, -0.744327,
		-0.791752, 0.345903, 0.503468,
		0.110609, 0.891779, -0.438744,
		41.685493, 39.137501, 44.748840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959820, 38.775913, 44.877033>,  <41.608067, 38.513256, 45.055962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959820, 38.775913, 44.877033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207626, 38.967899, 44.628574>,  <41.356312, 39.083092, 44.479500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207626, 38.967899, 44.628574>,  <40.959820, 38.775913, 44.877033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207626, 38.967899, 44.628574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470483, -0.406382, -0.783262,
		-0.628364, 0.777487, -0.025946,
		0.619520, 0.479966, -0.621150,
		41.393482, 39.111889, 44.442230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584171, 38.797188, 44.388367>,  <40.959820, 38.775913, 44.877033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584171, 38.797188, 44.388367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934990, 38.886868, 44.218414>,  <41.145481, 38.940678, 44.116444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934990, 38.886868, 44.218414>,  <40.584171, 38.797188, 44.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934990, 38.886868, 44.218414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320731, -0.385174, -0.865316,
		-0.357659, 0.895195, -0.265907,
		0.877047, 0.224203, -0.424878,
		41.198105, 38.954128, 44.090950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395554, 38.814213, 43.768486>,  <40.584171, 38.797188, 44.388367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395554, 38.814213, 43.768486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791882, 38.818871, 43.714603>,  <41.029678, 38.821667, 43.682274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791882, 38.818871, 43.714603>,  <40.395554, 38.814213, 43.768486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791882, 38.818871, 43.714603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109724, -0.512954, -0.851374,
		-0.079013, 0.858337, -0.506966,
		0.990817, 0.011643, -0.134710,
		41.089127, 38.822365, 43.674191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522568, 39.128368, 43.129143>,  <40.395554, 38.814213, 43.768486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522568, 39.128368, 43.129143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830208, 38.885086, 43.207706>,  <41.014793, 38.739117, 43.254845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830208, 38.885086, 43.207706>,  <40.522568, 39.128368, 43.129143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830208, 38.885086, 43.207706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158595, -0.479303, -0.863201,
		0.619140, 0.632738, -0.465089,
		0.769099, -0.608203, 0.196406,
		41.060936, 38.702625, 43.266628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841156, 39.244476, 42.532703>,  <40.522568, 39.128368, 43.129143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841156, 39.244476, 42.532703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987568, 38.911224, 42.698551>,  <41.075417, 38.711273, 42.798058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987568, 38.911224, 42.698551>,  <40.841156, 39.244476, 42.532703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987568, 38.911224, 42.698551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267889, -0.521010, -0.810422,
		0.891209, 0.185571, -0.413895,
		0.366035, -0.833134, 0.414617,
		41.097378, 38.661285, 42.822937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225719, 38.937214, 42.101810>,  <40.841156, 39.244476, 42.532703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225719, 38.937214, 42.101810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161694, 38.608196, 42.320091>,  <41.123276, 38.410786, 42.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161694, 38.608196, 42.320091>,  <41.225719, 38.937214, 42.101810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161694, 38.608196, 42.320091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197666, -0.514925, -0.834134,
		0.967112, -0.241386, -0.080167,
		-0.160068, -0.822548, 0.545704,
		41.113674, 38.361431, 42.483803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571472, 38.472015, 41.694580>,  <41.225719, 38.937214, 42.101810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571472, 38.472015, 41.694580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321804, 38.271748, 41.934498>,  <41.172005, 38.151588, 42.078449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321804, 38.271748, 41.934498>,  <41.571472, 38.472015, 41.694580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321804, 38.271748, 41.934498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267448, -0.584393, -0.766131,
		0.734088, -0.638607, 0.230857,
		-0.624168, -0.500665, 0.599790,
		41.134552, 38.121548, 42.114433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660561, 37.735603, 41.586185>,  <41.571472, 38.472015, 41.694580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660561, 37.735603, 41.586185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305695, 37.721401, 41.770222>,  <41.092777, 37.712879, 41.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305695, 37.721401, 41.770222>,  <41.660561, 37.735603, 41.586185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305695, 37.721401, 41.770222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300621, -0.711972, -0.634604,
		0.350105, -0.701310, 0.620960,
		-0.887160, -0.035504, 0.460093,
		41.039547, 37.710751, 41.908249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529869, 37.042618, 41.702690>,  <41.660561, 37.735603, 41.586185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529869, 37.042618, 41.702690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156384, 37.183537, 41.728214>,  <40.932293, 37.268089, 41.743530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156384, 37.183537, 41.728214>,  <41.529869, 37.042618, 41.702690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156384, 37.183537, 41.728214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288102, -0.633496, -0.718109,
		-0.212563, -0.688890, 0.692999,
		-0.933709, 0.352298, 0.063813,
		40.876270, 37.289227, 41.747356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145969, 36.460629, 41.708382>,  <41.529869, 37.042618, 41.702690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145969, 36.460629, 41.708382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937660, 36.776875, 41.579556>,  <40.812675, 36.966621, 41.502262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937660, 36.776875, 41.579556>,  <41.145969, 36.460629, 41.708382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937660, 36.776875, 41.579556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360420, -0.545606, -0.756579,
		-0.773880, -0.277930, 0.569091,
		-0.520775, 0.790613, -0.322063,
		40.781429, 37.014057, 41.482937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462959, 36.288605, 41.731853>,  <41.145969, 36.460629, 41.708382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462959, 36.288605, 41.731853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472126, 36.596615, 41.476810>,  <40.477627, 36.781422, 41.323784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472126, 36.596615, 41.476810>,  <40.462959, 36.288605, 41.731853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472126, 36.596615, 41.476810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319576, -0.598670, -0.734482,
		-0.947284, 0.220593, 0.232364,
		0.022912, 0.770021, -0.637607,
		40.479000, 36.827621, 41.285530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775024, 36.209393, 41.381355>,  <40.462959, 36.288605, 41.731853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775024, 36.209393, 41.381355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011543, 36.442692, 41.158581>,  <40.153454, 36.582672, 41.024914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011543, 36.442692, 41.158581>,  <39.775024, 36.209393, 41.381355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011543, 36.442692, 41.158581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387595, -0.400079, -0.830486,
		-0.707201, 0.706934, -0.010502,
		0.591300, 0.583250, -0.556941,
		40.188934, 36.617668, 40.991497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340851, 36.466053, 40.839287>,  <39.775024, 36.209393, 41.381355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340851, 36.466053, 40.839287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722050, 36.492020, 40.720913>,  <39.950771, 36.507599, 40.649887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722050, 36.492020, 40.720913>,  <39.340851, 36.466053, 40.839287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722050, 36.492020, 40.720913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227660, -0.491050, -0.840857,
		-0.199908, 0.868709, -0.453190,
		0.952999, 0.064921, -0.295935,
		40.007950, 36.511497, 40.632133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265877, 36.571571, 40.173714>,  <39.340851, 36.466053, 40.839287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265877, 36.571571, 40.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642879, 36.438824, 40.189457>,  <39.869080, 36.359173, 40.198902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642879, 36.438824, 40.189457>,  <39.265877, 36.571571, 40.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642879, 36.438824, 40.189457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144534, -0.510969, -0.847361,
		0.301327, 0.792952, -0.529556,
		0.942503, -0.331871, 0.039360,
		39.925629, 36.339264, 40.201263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488987, 36.544907, 39.498058>,  <39.265877, 36.571571, 40.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488987, 36.544907, 39.498058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786583, 36.341202, 39.671089>,  <39.965141, 36.218979, 39.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786583, 36.341202, 39.671089>,  <39.488987, 36.544907, 39.498058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786583, 36.341202, 39.671089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041242, -0.611160, -0.790432,
		0.666916, 0.605915, -0.433694,
		0.743991, -0.509266, 0.432581,
		40.009781, 36.188423, 39.800865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983021, 36.456921, 38.997814>,  <39.488987, 36.544907, 39.498058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983021, 36.456921, 38.997814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077278, 36.166355, 39.256054>,  <40.133831, 35.992016, 39.410999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077278, 36.166355, 39.256054>,  <39.983021, 36.456921, 38.997814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077278, 36.166355, 39.256054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286042, -0.583039, -0.760424,
		0.928791, 0.363855, 0.070398,
		0.235639, -0.726412, 0.645600,
		40.147968, 35.948433, 39.449734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753685, 36.286274, 38.851871>,  <39.983021, 36.456921, 38.997814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753685, 36.286274, 38.851871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551746, 35.988930, 39.027393>,  <40.430584, 35.810524, 39.132706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551746, 35.988930, 39.027393>,  <40.753685, 36.286274, 38.851871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551746, 35.988930, 39.027393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342413, -0.639092, -0.688705,
		0.792393, -0.197435, 0.577176,
		-0.504843, -0.743358, 0.438808,
		40.400291, 35.765923, 39.159035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223042, 35.749779, 38.853397>,  <40.753685, 36.286274, 38.851871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223042, 35.749779, 38.853397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880043, 35.552784, 38.912933>,  <40.674244, 35.434586, 38.948654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880043, 35.552784, 38.912933>,  <41.223042, 35.749779, 38.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880043, 35.552784, 38.912933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239838, -0.638585, -0.731223,
		0.455170, -0.591322, 0.665702,
		-0.857495, -0.492491, 0.148844,
		40.622795, 35.405037, 38.957588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341370, 35.040466, 38.883614>,  <41.223042, 35.749779, 38.853397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341370, 35.040466, 38.883614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952374, 35.047169, 38.790672>,  <40.718975, 35.051189, 38.734909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952374, 35.047169, 38.790672>,  <41.341370, 35.040466, 38.883614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952374, 35.047169, 38.790672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184734, -0.552175, -0.813005,
		-0.141923, -0.833560, 0.533887,
		-0.972487, 0.016757, -0.232353,
		40.660625, 35.052197, 38.720966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144611, 34.467316, 38.567467>,  <41.341370, 35.040466, 38.883614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144611, 34.467316, 38.567467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795872, 34.643929, 38.482677>,  <40.586628, 34.749897, 38.431805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795872, 34.643929, 38.482677>,  <41.144611, 34.467316, 38.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795872, 34.643929, 38.482677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023970, -0.393812, -0.918878,
		-0.489197, -0.806200, 0.332759,
		-0.871844, 0.441536, -0.211977,
		40.534317, 34.776390, 38.419086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650513, 33.946949, 38.257092>,  <41.144611, 34.467316, 38.567467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650513, 33.946949, 38.257092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542282, 34.306541, 38.119324>,  <40.477345, 34.522297, 38.036663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542282, 34.306541, 38.119324>,  <40.650513, 33.946949, 38.257092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542282, 34.306541, 38.119324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002058, -0.357228, -0.934015,
		-0.962696, -0.253432, 0.094807,
		-0.270577, 0.898977, -0.344424,
		40.461109, 34.576233, 38.015995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124557, 33.825783, 37.826298>,  <40.650513, 33.946949, 38.257092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124557, 33.825783, 37.826298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277298, 34.179413, 37.718525>,  <40.368942, 34.391590, 37.653862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277298, 34.179413, 37.718525>,  <40.124557, 33.825783, 37.826298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277298, 34.179413, 37.718525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186412, -0.211860, -0.959357,
		-0.905229, 0.416558, 0.083904,
		0.381852, 0.884079, -0.269433,
		40.391853, 34.444637, 37.637695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703609, 34.053642, 37.237728>,  <40.124557, 33.825783, 37.826298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703609, 34.053642, 37.237728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031815, 34.280460, 37.208836>,  <40.228737, 34.416550, 37.191502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031815, 34.280460, 37.208836>,  <39.703609, 34.053642, 37.237728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031815, 34.280460, 37.208836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030352, -0.082959, -0.996091,
		-0.570816, 0.819501, -0.050859,
		0.820517, 0.567041, -0.072228,
		40.277969, 34.450573, 37.187168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603958, 34.578430, 36.799122>,  <39.703609, 34.053642, 37.237728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603958, 34.578430, 36.799122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003712, 34.568226, 36.789536>,  <40.243565, 34.562103, 36.783783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003712, 34.568226, 36.789536>,  <39.603958, 34.578430, 36.799122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003712, 34.568226, 36.789536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025391, -0.056931, -0.998055,
		0.024093, 0.998052, -0.057544,
		0.999387, -0.025507, -0.023970,
		40.303528, 34.560574, 36.782345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745781, 35.212669, 36.468578>,  <39.603958, 34.578430, 36.799122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745781, 35.212669, 36.468578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056713, 34.963436, 36.433876>,  <40.243271, 34.813896, 36.413055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056713, 34.963436, 36.433876>,  <39.745781, 35.212669, 36.468578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056713, 34.963436, 36.433876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111594, 0.272290, -0.955722,
		0.619120, 0.733227, 0.281191,
		0.777327, -0.623086, -0.086756,
		40.289909, 34.776512, 36.407848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953224, 35.479687, 35.881130>,  <39.745781, 35.212669, 36.468578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953224, 35.479687, 35.881130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213894, 35.179867, 35.927608>,  <40.370296, 34.999977, 35.955494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213894, 35.179867, 35.927608>,  <39.953224, 35.479687, 35.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213894, 35.179867, 35.927608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313357, 0.126541, -0.941167,
		0.690745, 0.649744, 0.317339,
		0.651674, -0.749547, 0.116194,
		40.409397, 34.955002, 35.962467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548553, 35.749325, 35.660881>,  <39.953224, 35.479687, 35.881130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548553, 35.749325, 35.660881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579788, 35.350780, 35.647205>,  <40.598530, 35.111652, 35.639000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579788, 35.350780, 35.647205>,  <40.548553, 35.749325, 35.660881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579788, 35.350780, 35.647205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194276, 0.048847, -0.979730,
		0.977833, 0.069866, 0.197384,
		0.078091, -0.996360, -0.034191,
		40.603214, 35.051872, 35.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252735, 35.419498, 35.306652>,  <40.548553, 35.749325, 35.660881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252735, 35.419498, 35.306652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964989, 35.143658, 35.273262>,  <40.792339, 34.978153, 35.253227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964989, 35.143658, 35.273262>,  <41.252735, 35.419498, 35.306652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964989, 35.143658, 35.273262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140832, -0.027115, -0.989662,
		0.680206, -0.723684, 0.116622,
		-0.719365, -0.689598, -0.083474,
		40.749180, 34.936779, 35.248219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582550, 34.960365, 34.870102>,  <41.252735, 35.419498, 35.306652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582550, 34.960365, 34.870102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186462, 34.904587, 34.868484>,  <40.948811, 34.871120, 34.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186462, 34.904587, 34.868484>,  <41.582550, 34.960365, 34.870102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186462, 34.904587, 34.868484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004863, -0.005558, -0.999973,
		0.139423, -0.990214, 0.006182,
		-0.990221, -0.139449, -0.004041,
		40.889397, 34.862751, 34.867271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485352, 34.413433, 34.306847>,  <41.582550, 34.960365, 34.870102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485352, 34.413433, 34.306847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153511, 34.624500, 34.379864>,  <40.954407, 34.751141, 34.423676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153511, 34.624500, 34.379864>,  <41.485352, 34.413433, 34.306847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153511, 34.624500, 34.379864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147235, 0.108621, -0.983119,
		-0.538589, -0.842477, -0.012421,
		-0.829605, 0.527668, 0.182544,
		40.904629, 34.782799, 34.434628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996296, 34.247337, 33.742645>,  <41.485352, 34.413433, 34.306847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996296, 34.247337, 33.742645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910942, 34.600449, 33.910061>,  <40.859730, 34.812317, 34.010509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910942, 34.600449, 33.910061>,  <40.996296, 34.247337, 33.742645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910942, 34.600449, 33.910061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138700, 0.396690, -0.907413,
		-0.967073, -0.251677, 0.037795,
		-0.213382, 0.882777, 0.418536,
		40.846928, 34.865280, 34.035622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273529, 33.600899, 33.734333>,  <40.996296, 34.247337, 33.742645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273529, 33.600899, 33.734333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449883, 33.293026, 33.549629>,  <41.555695, 33.108303, 33.438808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449883, 33.293026, 33.549629>,  <41.273529, 33.600899, 33.734333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449883, 33.293026, 33.549629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354989, -0.622034, 0.697894,
		-0.824383, -0.143769, -0.547470,
		0.440880, -0.769678, -0.461757,
		41.582146, 33.062122, 33.411102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975330, 33.738373, 33.404270>,  <41.273529, 33.600899, 33.734333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975330, 33.738373, 33.404270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956936, 34.093906, 33.221909>,  <41.945900, 34.307228, 33.112492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956936, 34.093906, 33.221909>,  <41.975330, 33.738373, 33.404270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956936, 34.093906, 33.221909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934028, -0.123577, -0.335142,
		-0.354227, -0.441243, -0.824517,
		-0.045987, 0.888838, -0.455907,
		41.943138, 34.360558, 33.085136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064766, 33.790310, 32.698086>,  <41.975330, 33.738373, 33.404270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064766, 33.790310, 32.698086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210114, 34.124645, 32.862690>,  <42.297321, 34.325245, 32.961452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210114, 34.124645, 32.862690>,  <42.064766, 33.790310, 32.698086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210114, 34.124645, 32.862690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922128, -0.259696, -0.286772,
		-0.132827, 0.483668, -0.865114,
		0.363369, 0.835837, 0.411509,
		42.319122, 34.375397, 32.986141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632244, 34.096760, 32.142559>,  <42.064766, 33.790310, 32.698086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632244, 34.096760, 32.142559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683548, 34.238503, 32.513069>,  <42.714329, 34.323547, 32.735374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683548, 34.238503, 32.513069>,  <42.632244, 34.096760, 32.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683548, 34.238503, 32.513069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977118, -0.204949, -0.056892,
		0.169679, 0.912376, -0.372531,
		0.128257, 0.354353, 0.926274,
		42.722027, 34.344807, 32.790951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222668, 34.505619, 32.129375>,  <42.632244, 34.096760, 32.142559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222668, 34.505619, 32.129375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163853, 34.390129, 32.507797>,  <43.128563, 34.320835, 32.734852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163853, 34.390129, 32.507797>,  <43.222668, 34.505619, 32.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163853, 34.390129, 32.507797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927785, -0.371850, 0.030717,
		0.342922, 0.882252, 0.322548,
		-0.147039, -0.288721, 0.946055,
		43.119740, 34.303513, 32.791615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681450, 34.897552, 32.644535>,  <43.222668, 34.505619, 32.129375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681450, 34.897552, 32.644535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604973, 34.513596, 32.726555>,  <43.559086, 34.283222, 32.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604973, 34.513596, 32.726555>,  <43.681450, 34.897552, 32.644535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604973, 34.513596, 32.726555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956829, -0.228853, -0.179177,
		0.218918, 0.161941, 0.962211,
		-0.191189, -0.959897, 0.205050,
		43.547615, 34.225628, 32.788071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383366, 34.749386, 32.876221>,  <43.681450, 34.897552, 32.644535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383366, 34.749386, 32.876221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682098, 35.015373, 32.873085>,  <44.861340, 35.174965, 32.871204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682098, 35.015373, 32.873085>,  <44.383366, 34.749386, 32.876221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682098, 35.015373, 32.873085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538278, 0.611380, 0.580061,
		0.390512, -0.428990, 0.814535,
		0.746831, 0.664968, -0.007835,
		44.906147, 35.214863, 32.870735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492336, 34.958557, 33.620232>,  <44.383366, 34.749386, 32.876221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492336, 34.958557, 33.620232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613750, 35.224667, 33.347389>,  <44.686600, 35.384335, 33.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613750, 35.224667, 33.347389>,  <44.492336, 34.958557, 33.620232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613750, 35.224667, 33.347389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558704, 0.704170, 0.438171,
		0.771825, 0.248095, 0.585436,
		0.303539, 0.665277, -0.682108,
		44.704811, 35.424252, 33.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555691, 35.531227, 34.075123>,  <44.492336, 34.958557, 33.620232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555691, 35.531227, 34.075123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545055, 35.656464, 33.695381>,  <44.538673, 35.731606, 33.467537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545055, 35.656464, 33.695381>,  <44.555691, 35.531227, 34.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545055, 35.656464, 33.695381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468291, 0.835133, 0.288541,
		0.883174, 0.452243, 0.124416,
		-0.026587, 0.313095, -0.949350,
		44.537079, 35.750393, 33.410576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646748, 36.235672, 34.117432>,  <44.555691, 35.531227, 34.075123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646748, 36.235672, 34.117432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494198, 36.214809, 33.748253>,  <44.402668, 36.202290, 33.526745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494198, 36.214809, 33.748253>,  <44.646748, 36.235672, 34.117432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494198, 36.214809, 33.748253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421719, 0.898278, 0.123493,
		0.822622, 0.436322, -0.364577,
		-0.381374, -0.052161, -0.922948,
		44.379787, 36.199162, 33.471367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877193, 36.811352, 33.716911>,  <44.646748, 36.235672, 34.117432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877193, 36.811352, 33.716911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530033, 36.679626, 33.568153>,  <44.321739, 36.600590, 33.478897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530033, 36.679626, 33.568153>,  <44.877193, 36.811352, 33.716911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530033, 36.679626, 33.568153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415193, 0.891920, 0.179148,
		0.272705, 0.309891, -0.910823,
		-0.867898, -0.329313, -0.371896,
		44.269665, 36.580833, 33.456585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678146, 37.365696, 33.184971>,  <44.877193, 36.811352, 33.716911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678146, 37.365696, 33.184971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343067, 37.165894, 33.273293>,  <44.142021, 37.046013, 33.326286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343067, 37.165894, 33.273293>,  <44.678146, 37.365696, 33.184971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343067, 37.165894, 33.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482021, 0.866302, 0.131061,
		-0.256753, 0.003355, -0.966471,
		-0.837695, -0.499510, 0.220808,
		44.091759, 37.016041, 33.339535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220192, 37.702576, 32.869251>,  <44.678146, 37.365696, 33.184971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220192, 37.702576, 32.869251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989883, 37.509937, 33.133541>,  <43.851700, 37.394356, 33.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989883, 37.509937, 33.133541>,  <44.220192, 37.702576, 32.869251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989883, 37.509937, 33.133541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546845, 0.827594, 0.126686,
		-0.607821, -0.288370, -0.739862,
		-0.575773, -0.481592, 0.660723,
		43.817150, 37.365459, 33.331757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443363, 37.855804, 32.732811>,  <44.220192, 37.702576, 32.869251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443363, 37.855804, 32.732811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477837, 37.727890, 33.110237>,  <43.498520, 37.651142, 33.336693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477837, 37.727890, 33.110237>,  <43.443363, 37.855804, 32.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477837, 37.727890, 33.110237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348528, 0.877564, 0.329257,
		-0.933328, -0.357234, -0.035824,
		0.086183, -0.319790, 0.943561,
		43.503693, 37.631954, 33.393307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759510, 38.055290, 33.037941>,  <43.443363, 37.855804, 32.732811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759510, 38.055290, 33.037941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025211, 37.991905, 33.330147>,  <43.184631, 37.953873, 33.505470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025211, 37.991905, 33.330147>,  <42.759510, 38.055290, 33.037941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025211, 37.991905, 33.330147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309379, 0.831359, 0.461657,
		-0.680477, -0.532664, 0.503209,
		0.664256, -0.158465, 0.730516,
		43.224487, 37.944366, 33.549301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337784, 38.231125, 33.633480>,  <42.759510, 38.055290, 33.037941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337784, 38.231125, 33.633480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717117, 38.243313, 33.759804>,  <42.944717, 38.250626, 33.835598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717117, 38.243313, 33.759804>,  <42.337784, 38.231125, 33.633480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717117, 38.243313, 33.759804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228665, 0.755675, 0.613732,
		-0.219947, -0.654237, 0.723600,
		0.948333, 0.030473, 0.315810,
		43.001617, 38.252457, 33.854546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320992, 38.341213, 34.277512>,  <42.337784, 38.231125, 33.633480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320992, 38.341213, 34.277512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682316, 38.482056, 34.179489>,  <42.899109, 38.566563, 34.120678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682316, 38.482056, 34.179489>,  <42.320992, 38.341213, 34.277512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682316, 38.482056, 34.179489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193559, 0.844316, 0.499666,
		0.382838, -0.403921, 0.830833,
		0.903310, 0.352106, -0.245054,
		42.953308, 38.587688, 34.105972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573257, 38.612213, 34.856590>,  <42.320992, 38.341213, 34.277512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573257, 38.612213, 34.856590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825703, 38.799751, 34.609406>,  <42.977169, 38.912273, 34.461094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825703, 38.799751, 34.609406>,  <42.573257, 38.612213, 34.856590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825703, 38.799751, 34.609406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227890, 0.873577, 0.430034,
		0.741456, -0.130575, 0.658174,
		0.631118, 0.468843, -0.617962,
		43.015038, 38.940403, 34.424015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937828, 38.924530, 35.240631>,  <42.573257, 38.612213, 34.856590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937828, 38.924530, 35.240631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987995, 39.135963, 34.904804>,  <43.018093, 39.262821, 34.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987995, 39.135963, 34.904804>,  <42.937828, 38.924530, 35.240631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987995, 39.135963, 34.904804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322532, 0.822003, 0.469344,
		0.938213, 0.211925, 0.273574,
		0.125413, 0.528582, -0.839567,
		43.025620, 39.294537, 34.652935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348431, 39.458202, 35.357559>,  <42.937828, 38.924530, 35.240631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348431, 39.458202, 35.357559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201115, 39.613255, 35.019539>,  <43.112724, 39.706287, 34.816727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201115, 39.613255, 35.019539>,  <43.348431, 39.458202, 35.357559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201115, 39.613255, 35.019539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160237, 0.868869, 0.468391,
		0.915800, 0.307910, -0.257880,
		-0.368286, 0.387631, -0.845049,
		43.090630, 39.729546, 34.766026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602612, 40.120922, 35.422028>,  <43.348431, 39.458202, 35.357559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602612, 40.120922, 35.422028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289188, 40.147263, 35.174900>,  <43.101135, 40.163067, 35.026623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289188, 40.147263, 35.174900>,  <43.602612, 40.120922, 35.422028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289188, 40.147263, 35.174900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302888, 0.827728, 0.472362,
		0.542490, 0.557253, -0.628628,
		-0.783558, 0.065848, -0.617819,
		43.054119, 40.167015, 34.989555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607845, 40.811874, 35.160725>,  <43.602612, 40.120922, 35.422028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607845, 40.811874, 35.160725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237976, 40.675591, 35.092724>,  <43.016056, 40.593822, 35.051926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237976, 40.675591, 35.092724>,  <43.607845, 40.811874, 35.160725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237976, 40.675591, 35.092724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379746, 0.857798, 0.346375,
		0.027811, 0.384840, -0.922564,
		-0.924673, -0.340707, -0.169998,
		42.960575, 40.573380, 35.041725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255455, 41.384731, 34.852234>,  <43.607845, 40.811874, 35.160725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255455, 41.384731, 34.852234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977074, 41.137348, 34.998196>,  <42.810043, 40.988918, 35.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977074, 41.137348, 34.998196>,  <43.255455, 41.384731, 34.852234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977074, 41.137348, 34.998196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489959, 0.780477, 0.388324,
		-0.524960, 0.091469, -0.846197,
		-0.695958, -0.618457, 0.364903,
		42.768288, 40.951813, 35.107666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606735, 41.750599, 34.914429>,  <43.255455, 41.384731, 34.852234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606735, 41.750599, 34.914429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514057, 41.447670, 35.158649>,  <42.458450, 41.265911, 35.305183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514057, 41.447670, 35.158649>,  <42.606735, 41.750599, 34.914429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514057, 41.447670, 35.158649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479701, 0.634962, 0.605566,
		-0.846289, -0.152576, -0.510407,
		-0.231694, -0.757327, 0.610552,
		42.444550, 41.220470, 35.341816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992558, 41.863216, 35.169022>,  <42.606735, 41.750599, 34.914429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992558, 41.863216, 35.169022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107479, 41.592274, 35.439915>,  <42.176430, 41.429707, 35.602451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107479, 41.592274, 35.439915>,  <41.992558, 41.863216, 35.169022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107479, 41.592274, 35.439915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498401, 0.498064, 0.709598,
		-0.817958, -0.541400, -0.194503,
		0.287301, -0.677361, 0.677229,
		42.193668, 41.389065, 35.643082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349209, 41.464230, 35.470158>,  <41.992558, 41.863216, 35.169022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349209, 41.464230, 35.470158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639622, 41.446354, 35.744640>,  <41.813869, 41.435627, 35.909332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639622, 41.446354, 35.744640>,  <41.349209, 41.464230, 35.470158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639622, 41.446354, 35.744640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618598, 0.393416, 0.680118,
		-0.300362, -0.918274, 0.257985,
		0.726030, -0.044693, 0.686209,
		41.857430, 41.432945, 35.950504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945068, 41.343128, 36.087959>,  <41.349209, 41.464230, 35.470158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945068, 41.343128, 36.087959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303341, 41.485474, 36.194637>,  <41.518303, 41.570881, 36.258644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303341, 41.485474, 36.194637>,  <40.945068, 41.343128, 36.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303341, 41.485474, 36.194637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443379, 0.668319, 0.597298,
		0.034321, -0.653231, 0.756380,
		0.895677, 0.355863, 0.266692,
		41.572044, 41.592232, 36.274647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980785, 41.350681, 36.877598>,  <40.945068, 41.343128, 36.087959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980785, 41.350681, 36.877598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226685, 41.626736, 36.724865>,  <41.374226, 41.792370, 36.633224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226685, 41.626736, 36.724865>,  <40.980785, 41.350681, 36.877598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226685, 41.626736, 36.724865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273317, 0.640518, 0.717659,
		0.739854, -0.336818, 0.582383,
		0.614747, 0.690138, -0.381832,
		41.411110, 41.833778, 36.610317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720680, 41.435364, 37.237499>,  <40.980785, 41.350681, 36.877598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720680, 41.435364, 37.237499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505745, 41.745255, 37.104195>,  <41.376781, 41.931190, 37.024212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505745, 41.745255, 37.104195>,  <41.720680, 41.435364, 37.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505745, 41.745255, 37.104195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378383, 0.131694, 0.916233,
		0.753719, 0.618430, 0.222379,
		-0.537340, 0.774726, -0.333264,
		41.344543, 41.977673, 37.004215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809418, 41.843464, 37.756851>,  <41.720680, 41.435364, 37.237499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809418, 41.843464, 37.756851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507511, 41.988113, 37.537926>,  <41.326366, 42.074905, 37.406570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507511, 41.988113, 37.537926>,  <41.809418, 41.843464, 37.756851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507511, 41.988113, 37.537926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441941, 0.336260, 0.831635,
		0.484781, 0.869572, -0.093980,
		-0.754768, 0.361628, -0.547312,
		41.281082, 42.096603, 37.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087467, 42.055950, 38.442028>,  <41.809418, 41.843464, 37.756851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087467, 42.055950, 38.442028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195240, 41.754883, 38.682327>,  <42.259903, 41.574242, 38.826508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195240, 41.754883, 38.682327>,  <42.087467, 42.055950, 38.442028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195240, 41.754883, 38.682327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942018, 0.076418, -0.326744,
		0.200022, 0.653949, 0.729617,
		0.269430, -0.752669, 0.600747,
		42.276070, 41.529083, 38.862553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603424, 42.273521, 38.899326>,  <42.087467, 42.055950, 38.442028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603424, 42.273521, 38.899326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615711, 41.887615, 38.794807>,  <42.623085, 41.656071, 38.732094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615711, 41.887615, 38.794807>,  <42.603424, 42.273521, 38.899326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615711, 41.887615, 38.794807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908762, 0.135808, -0.394598,
		0.416182, -0.225338, 0.880917,
		0.030718, -0.964769, -0.261300,
		42.624928, 41.598183, 38.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238880, 42.125500, 39.082504>,  <42.603424, 42.273521, 38.899326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238880, 42.125500, 39.082504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107597, 41.875465, 38.799225>,  <43.028828, 41.725445, 38.629257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107597, 41.875465, 38.799225>,  <43.238880, 42.125500, 39.082504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107597, 41.875465, 38.799225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757042, 0.274331, -0.592985,
		0.564948, -0.730757, 0.383181,
		-0.328210, -0.625089, -0.708196,
		43.009136, 41.687939, 38.586765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852642, 41.861752, 38.831806>,  <43.238880, 42.125500, 39.082504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852642, 41.861752, 38.831806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572308, 41.767788, 38.562393>,  <43.404106, 41.711411, 38.400745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572308, 41.767788, 38.562393>,  <43.852642, 41.861752, 38.831806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572308, 41.767788, 38.562393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708978, -0.125321, -0.694007,
		0.078624, -0.963904, 0.254377,
		-0.700834, -0.234913, -0.673534,
		43.362057, 41.697315, 38.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551533, 41.324955, 39.155571>,  <43.852642, 41.861752, 38.831806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551533, 41.324955, 39.155571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746262, 41.273045, 39.501095>,  <43.863098, 41.241898, 39.708408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746262, 41.273045, 39.501095>,  <43.551533, 41.324955, 39.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746262, 41.273045, 39.501095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437978, -0.819346, -0.369927,
		0.755766, 0.558417, -0.342035,
		0.486819, -0.129775, 0.863809,
		43.892307, 41.234112, 39.760239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958469, 40.894356, 39.105030>,  <43.551533, 41.324955, 39.155571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958469, 40.894356, 39.105030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742508, 41.173981, 39.292564>,  <42.612930, 41.341755, 39.405087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742508, 41.173981, 39.292564>,  <42.958469, 40.894356, 39.105030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742508, 41.173981, 39.292564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834688, -0.372768, -0.405389,
		-0.108624, -0.610207, 0.784760,
		-0.539905, 0.699065, 0.468841,
		42.580536, 41.383701, 39.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549461, 40.256565, 38.951645>,  <42.958469, 40.894356, 39.105030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549461, 40.256565, 38.951645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164337, 40.148571, 38.947395>,  <41.933262, 40.083775, 38.944843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164337, 40.148571, 38.947395>,  <42.549461, 40.256565, 38.951645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164337, 40.148571, 38.947395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263200, -0.928275, -0.262738,
		0.061070, -0.255763, 0.964809,
		-0.962807, -0.269983, -0.010627,
		41.875496, 40.067577, 38.944206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396206, 39.736607, 39.400547>,  <42.549461, 40.256565, 38.951645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396206, 39.736607, 39.400547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148251, 39.715881, 39.087357>,  <41.999477, 39.703445, 38.899441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148251, 39.715881, 39.087357>,  <42.396206, 39.736607, 39.400547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148251, 39.715881, 39.087357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280013, -0.946731, -0.159039,
		-0.733030, -0.317831, 0.601374,
		-0.619887, -0.051812, -0.782979,
		41.962284, 39.700336, 38.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121780, 39.046547, 39.489178>,  <42.396206, 39.736607, 39.400547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121780, 39.046547, 39.489178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080120, 39.171692, 39.111549>,  <42.055122, 39.246780, 38.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080120, 39.171692, 39.111549>,  <42.121780, 39.046547, 39.489178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080120, 39.171692, 39.111549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276426, -0.902726, -0.329658,
		-0.955375, -0.295301, 0.007539,
		-0.104154, 0.312863, -0.944070,
		42.048874, 39.265553, 38.828327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790352, 38.480602, 39.154060>,  <42.121780, 39.046547, 39.489178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790352, 38.480602, 39.154060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976257, 38.717548, 38.890820>,  <42.087803, 38.859715, 38.732876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976257, 38.717548, 38.890820>,  <41.790352, 38.480602, 39.154060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976257, 38.717548, 38.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474793, -0.794092, -0.379459,
		-0.747371, -0.136103, -0.650317,
		0.464766, 0.592363, -0.658102,
		42.115688, 38.895256, 38.693390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663654, 38.050781, 38.485748>,  <41.790352, 38.480602, 39.154060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663654, 38.050781, 38.485748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925972, 38.345009, 38.417778>,  <42.083363, 38.521545, 38.376995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925972, 38.345009, 38.417778>,  <41.663654, 38.050781, 38.485748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925972, 38.345009, 38.417778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622022, -0.654017, -0.430523,
		-0.427816, 0.176634, -0.886439,
		0.655791, 0.735569, -0.169929,
		42.122711, 38.565681, 38.366798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727478, 38.122444, 37.712883>,  <41.663654, 38.050781, 38.485748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727478, 38.122444, 37.712883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061638, 38.277016, 37.869228>,  <42.262135, 38.369759, 37.963036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061638, 38.277016, 37.869228>,  <41.727478, 38.122444, 37.712883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061638, 38.277016, 37.869228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549636, -0.583931, -0.597432,
		-0.002627, 0.713930, -0.700212,
		0.835400, 0.386431, 0.390868,
		42.312260, 38.392944, 37.986488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184799, 38.351849, 37.179466>,  <41.727478, 38.122444, 37.712883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184799, 38.351849, 37.179466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432102, 38.328014, 37.492950>,  <42.580482, 38.313713, 37.681042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432102, 38.328014, 37.492950>,  <42.184799, 38.351849, 37.179466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432102, 38.328014, 37.492950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686210, -0.445274, -0.575193,
		0.383240, 0.893409, -0.234407,
		0.618258, -0.059585, 0.783713,
		42.617580, 38.310139, 37.728065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814564, 38.805275, 37.122040>,  <42.184799, 38.351849, 37.179466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814564, 38.805275, 37.122040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971050, 38.527473, 37.363575>,  <43.064941, 38.360794, 37.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971050, 38.527473, 37.363575>,  <42.814564, 38.805275, 37.122040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971050, 38.527473, 37.363575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694710, -0.207471, -0.688719,
		0.603595, 0.688928, 0.401312,
		0.391217, -0.694503, 0.603834,
		43.088417, 38.319122, 37.544724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500698, 38.844006, 37.012001>,  <42.814564, 38.805275, 37.122040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500698, 38.844006, 37.012001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478371, 38.495197, 37.206509>,  <43.464973, 38.285912, 37.323215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478371, 38.495197, 37.206509>,  <43.500698, 38.844006, 37.012001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478371, 38.495197, 37.206509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705563, -0.379047, -0.598752,
		0.706445, 0.309675, 0.636425,
		-0.055816, -0.872023, 0.486271,
		43.461624, 38.233589, 37.352390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188751, 38.642170, 37.345043>,  <43.500698, 38.844006, 37.012001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188751, 38.642170, 37.345043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959183, 38.322632, 37.272980>,  <43.821442, 38.130909, 37.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959183, 38.322632, 37.272980>,  <44.188751, 38.642170, 37.345043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959183, 38.322632, 37.272980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639004, -0.299284, -0.708592,
		0.512136, -0.521801, 0.682232,
		-0.573925, -0.798845, -0.180159,
		43.787006, 38.082977, 37.218933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578960, 38.114544, 37.412682>,  <44.188751, 38.642170, 37.345043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578960, 38.114544, 37.412682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272484, 37.984482, 37.190968>,  <44.088596, 37.906445, 37.057941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272484, 37.984482, 37.190968>,  <44.578960, 38.114544, 37.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272484, 37.984482, 37.190968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634589, -0.246951, -0.732333,
		0.101242, -0.912847, 0.395551,
		-0.766190, -0.325155, -0.554281,
		44.042625, 37.886936, 37.024685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791607, 37.387867, 37.224831>,  <44.578960, 38.114544, 37.412682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791607, 37.387867, 37.224831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503506, 37.471661, 36.960300>,  <44.330643, 37.521935, 36.801582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503506, 37.471661, 36.960300>,  <44.791607, 37.387867, 37.224831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503506, 37.471661, 36.960300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583436, -0.332800, -0.740842,
		-0.375281, -0.919436, 0.117482,
		-0.720255, 0.209480, -0.661326,
		44.287430, 37.534504, 36.761902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854549, 36.873978, 36.741863>,  <44.791607, 37.387867, 37.224831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854549, 36.873978, 36.741863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649075, 37.160706, 36.553272>,  <44.525791, 37.332741, 36.440117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649075, 37.160706, 36.553272>,  <44.854549, 36.873978, 36.741863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649075, 37.160706, 36.553272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482332, -0.213199, -0.849648,
		-0.709564, -0.663864, -0.236227,
		-0.513688, 0.716819, -0.471481,
		44.494968, 37.375751, 36.411827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588238, 36.482452, 36.186745>,  <44.854549, 36.873978, 36.741863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588238, 36.482452, 36.186745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589569, 36.870712, 36.090549>,  <44.590366, 37.103668, 36.032833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589569, 36.870712, 36.090549>,  <44.588238, 36.482452, 36.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589569, 36.870712, 36.090549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608805, -0.192746, -0.769549,
		-0.793313, -0.143849, -0.591576,
		0.003325, 0.970647, -0.240483,
		44.590565, 37.161907, 36.018406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340019, 36.515789, 35.456638>,  <44.588238, 36.482452, 36.186745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340019, 36.515789, 35.456638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549538, 36.853100, 35.504856>,  <44.675247, 37.055485, 35.533787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549538, 36.853100, 35.504856>,  <44.340019, 36.515789, 35.456638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549538, 36.853100, 35.504856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462440, -0.162651, -0.871604,
		-0.715394, 0.512285, -0.475158,
		0.523795, 0.843272, 0.120542,
		44.706676, 37.106083, 35.541019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458549, 36.713608, 34.778301>,  <44.340019, 36.515789, 35.456638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458549, 36.713608, 34.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713520, 36.959194, 34.964516>,  <44.866505, 37.106548, 35.076244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713520, 36.959194, 34.964516>,  <44.458549, 36.713608, 34.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713520, 36.959194, 34.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608342, -0.030224, -0.793099,
		-0.472868, 0.788751, -0.392769,
		0.637429, 0.613969, 0.465539,
		44.904747, 37.143387, 35.104176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535454, 37.327240, 34.344357>,  <44.458549, 36.713608, 34.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535454, 37.327240, 34.344357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872650, 37.314259, 34.559135>,  <45.074966, 37.306469, 34.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872650, 37.314259, 34.559135>,  <44.535454, 37.327240, 34.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872650, 37.314259, 34.559135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537511, 0.090116, -0.838428,
		-0.021178, 0.995402, 0.093412,
		0.842991, -0.032454, 0.536948,
		45.125549, 37.304523, 34.720219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032036, 37.870220, 34.048279>,  <44.535454, 37.327240, 34.344357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032036, 37.870220, 34.048279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241192, 37.593998, 34.248165>,  <45.366684, 37.428265, 34.368095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241192, 37.593998, 34.248165>,  <45.032036, 37.870220, 34.048279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241192, 37.593998, 34.248165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601509, -0.116454, -0.790332,
		0.603964, 0.713841, 0.354484,
		0.522890, -0.690558, 0.499716,
		45.398060, 37.386829, 34.398079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664875, 38.015839, 33.866264>,  <45.032036, 37.870220, 34.048279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664875, 38.015839, 33.866264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718307, 37.642948, 34.000797>,  <45.750366, 37.419216, 34.081516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718307, 37.642948, 34.000797>,  <45.664875, 38.015839, 33.866264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718307, 37.642948, 34.000797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738608, -0.132626, -0.660960,
		0.660768, 0.336705, 0.670832,
		0.133579, -0.932223, 0.336328,
		45.758381, 37.363281, 34.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457668, 37.865417, 33.819546>,  <45.664875, 38.015839, 33.866264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457668, 37.865417, 33.819546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258347, 37.518658, 33.824852>,  <46.138756, 37.310600, 33.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258347, 37.518658, 33.824852>,  <46.457668, 37.865417, 33.819546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258347, 37.518658, 33.824852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654003, -0.385879, -0.650675,
		0.569190, -0.315557, 0.759241,
		-0.498300, -0.866903, 0.013264,
		46.108856, 37.258587, 33.828831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997688, 37.405903, 33.767494>,  <46.457668, 37.865417, 33.819546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997688, 37.405903, 33.767494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672958, 37.180447, 33.706501>,  <46.478123, 37.045174, 33.669907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672958, 37.180447, 33.706501>,  <46.997688, 37.405903, 33.767494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672958, 37.180447, 33.706501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505161, -0.546999, -0.667536,
		0.292843, -0.618950, 0.728796,
		-0.811822, -0.563643, -0.152484,
		46.429413, 37.011353, 33.660755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076344, 36.653526, 34.013359>,  <46.997688, 37.405903, 33.767494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076344, 36.653526, 34.013359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803936, 36.708359, 33.725632>,  <46.640491, 36.741257, 33.552994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803936, 36.708359, 33.725632>,  <47.076344, 36.653526, 34.013359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803936, 36.708359, 33.725632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472266, -0.668503, -0.574516,
		-0.559622, -0.730967, 0.390526,
		-0.681020, 0.137080, -0.719320,
		46.599628, 36.749481, 33.509834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025253, 36.022358, 33.806236>,  <47.076344, 36.653526, 34.013359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025253, 36.022358, 33.806236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863014, 36.255764, 33.524811>,  <46.765671, 36.395805, 33.355957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863014, 36.255764, 33.524811>,  <47.025253, 36.022358, 33.806236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863014, 36.255764, 33.524811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558805, -0.450833, -0.696051,
		-0.723344, -0.675474, -0.143211,
		-0.405600, 0.583511, -0.703565,
		46.741333, 36.430817, 33.313740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.520271, 35.594482, 34.088394>,  <47.025253, 36.022358, 33.806236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.520271, 35.594482, 34.088394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816200, 35.727180, 34.322525>,  <47.993755, 35.806797, 34.463005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816200, 35.727180, 34.322525>,  <47.520271, 35.594482, 34.088394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816200, 35.727180, 34.322525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521480, -0.266969, 0.810423,
		0.425116, -0.904807, -0.024513,
		0.739821, 0.331741, 0.585332,
		48.038147, 35.826702, 34.498123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.805687, 35.038826, 34.443718>,  <47.520271, 35.594482, 34.088394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.805687, 35.038826, 34.443718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809914, 35.381756, 34.649586>,  <47.812450, 35.587513, 34.773106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809914, 35.381756, 34.649586>,  <47.805687, 35.038826, 34.443718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809914, 35.381756, 34.649586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772769, -0.319647, 0.548319,
		0.634599, -0.403514, 0.659136,
		0.010564, 0.857323, 0.514671,
		47.813084, 35.638954, 34.803986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784382, 34.845791, 35.232346>,  <47.805687, 35.038826, 34.443718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784382, 34.845791, 35.232346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587307, 35.152386, 35.067543>,  <47.469063, 35.336342, 34.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587307, 35.152386, 35.067543>,  <47.784382, 34.845791, 35.232346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587307, 35.152386, 35.067543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870206, -0.433445, 0.234237,
		0.000958, 0.473937, 0.880558,
		-0.492687, 0.766492, -0.412008,
		47.439503, 35.382332, 34.943939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.758678, 39.709759, 41.740028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514385, 39.544533, 42.010250>,  <36.367809, 39.445396, 42.172382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514385, 39.544533, 42.010250>,  <36.758678, 39.709759, 41.740028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514385, 39.544533, 42.010250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404151, -0.571050, -0.714537,
		0.680929, -0.709420, 0.181819,
		-0.610735, -0.413067, 0.675558,
		36.331165, 39.420612, 42.212917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804821, 38.949593, 41.609715>,  <36.758678, 39.709759, 41.740028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804821, 38.949593, 41.609715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455631, 39.011288, 41.794811>,  <36.246117, 39.048306, 41.905869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455631, 39.011288, 41.794811>,  <36.804821, 38.949593, 41.609715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455631, 39.011288, 41.794811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427609, -0.698419, -0.573901,
		0.234671, -0.698872, 0.675653,
		-0.872972, 0.154237, 0.462742,
		36.193741, 39.057560, 41.933636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537502, 38.223217, 41.658825>,  <36.804821, 38.949593, 41.609715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537502, 38.223217, 41.658825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213699, 38.438393, 41.752903>,  <36.019417, 38.567497, 41.809349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213699, 38.438393, 41.752903>,  <36.537502, 38.223217, 41.658825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213699, 38.438393, 41.752903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557543, -0.578835, -0.595059,
		-0.183966, -0.612837, 0.768497,
		-0.809507, 0.537941, 0.235197,
		35.970848, 38.599773, 41.823463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000832, 37.775928, 41.720730>,  <36.537502, 38.223217, 41.658825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000832, 37.775928, 41.720730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820396, 38.126965, 41.655788>,  <35.712135, 38.337585, 41.616821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820396, 38.126965, 41.655788>,  <36.000832, 37.775928, 41.720730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820396, 38.126965, 41.655788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602785, -0.433738, -0.669718,
		-0.658157, -0.204235, 0.724651,
		-0.451088, 0.877587, -0.162358,
		35.685070, 38.390240, 41.607082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199348, 37.754395, 41.809708>,  <36.000832, 37.775928, 41.720730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199348, 37.754395, 41.809708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309807, 38.039497, 41.551804>,  <35.376083, 38.210560, 41.397060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309807, 38.039497, 41.551804>,  <35.199348, 37.754395, 41.809708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309807, 38.039497, 41.551804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606639, -0.391072, -0.692136,
		-0.745473, 0.582271, 0.324392,
		0.276150, 0.712758, -0.644762,
		35.392651, 38.253326, 41.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733253, 37.706581, 41.313633>,  <35.199348, 37.754395, 41.809708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733253, 37.706581, 41.313633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966919, 37.962357, 41.113682>,  <35.107117, 38.115822, 40.993713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966919, 37.962357, 41.113682>,  <34.733253, 37.706581, 41.313633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966919, 37.962357, 41.113682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396520, -0.312544, -0.863185,
		-0.708187, 0.702449, 0.070975,
		0.584160, 0.639439, -0.499874,
		35.142166, 38.154190, 40.963718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250774, 37.993111, 40.770203>,  <34.733253, 37.706581, 41.313633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250774, 37.993111, 40.770203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626724, 38.017063, 40.635708>,  <34.852295, 38.031433, 40.555012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626724, 38.017063, 40.635708>,  <34.250774, 37.993111, 40.770203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626724, 38.017063, 40.635708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304974, -0.295988, -0.905197,
		-0.153726, 0.953313, -0.259928,
		0.939872, 0.059881, -0.336237,
		34.908688, 38.035027, 40.534836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300648, 38.218658, 39.963924>,  <34.250774, 37.993111, 40.770203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300648, 38.218658, 39.963924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673981, 38.095531, 40.037842>,  <34.897980, 38.021656, 40.082191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673981, 38.095531, 40.037842>,  <34.300648, 38.218658, 39.963924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673981, 38.095531, 40.037842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050306, -0.397514, -0.916216,
		0.355484, 0.864426, -0.355526,
		0.933328, -0.307815, 0.184796,
		34.953979, 38.003185, 40.093281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628002, 38.277107, 39.317406>,  <34.300648, 38.218658, 39.963924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628002, 38.277107, 39.317406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834862, 38.012108, 39.534168>,  <34.958977, 37.853107, 39.664227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834862, 38.012108, 39.534168>,  <34.628002, 38.277107, 39.317406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834862, 38.012108, 39.534168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163510, -0.545010, -0.822332,
		0.840134, 0.513871, -0.173524,
		0.517145, -0.662496, 0.541904,
		34.990005, 37.813358, 39.696739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308273, 38.180405, 39.020874>,  <34.628002, 38.277107, 39.317406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308273, 38.180405, 39.020874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217869, 37.843430, 39.216511>,  <35.163628, 37.641243, 39.333893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217869, 37.843430, 39.216511>,  <35.308273, 38.180405, 39.020874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217869, 37.843430, 39.216511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349182, -0.538784, -0.766671,
		0.909390, -0.002495, 0.415937,
		-0.226012, -0.842440, 0.489094,
		35.150066, 37.590698, 39.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748291, 37.747082, 38.769630>,  <35.308273, 38.180405, 39.020874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748291, 37.747082, 38.769630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510479, 37.496796, 38.971626>,  <35.367790, 37.346626, 39.092823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510479, 37.496796, 38.971626>,  <35.748291, 37.747082, 38.769630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510479, 37.496796, 38.971626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090450, -0.676100, -0.731237,
		0.798969, -0.389066, 0.458558,
		-0.594531, -0.625713, 0.504992,
		35.332119, 37.309082, 39.123123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107571, 37.112995, 38.837437>,  <35.748291, 37.747082, 38.769630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107571, 37.112995, 38.837437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724125, 37.010624, 38.887341>,  <35.494057, 36.949200, 38.917282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724125, 37.010624, 38.887341>,  <36.107571, 37.112995, 38.837437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724125, 37.010624, 38.887341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085358, -0.676375, -0.731595,
		0.271622, -0.690665, 0.670226,
		-0.958611, -0.255927, 0.124764,
		35.436543, 36.933846, 38.924770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094887, 36.447945, 38.748844>,  <36.107571, 37.112995, 38.837437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094887, 36.447945, 38.748844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700996, 36.507050, 38.712002>,  <35.464661, 36.542511, 38.689896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700996, 36.507050, 38.712002>,  <36.094887, 36.447945, 38.748844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700996, 36.507050, 38.712002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060826, -0.787593, -0.613186,
		-0.163148, -0.598217, 0.784550,
		-0.984725, 0.147761, -0.092107,
		35.405579, 36.551376, 38.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799767, 35.828667, 38.933681>,  <36.094887, 36.447945, 38.748844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799767, 35.828667, 38.933681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533112, 36.028271, 38.712200>,  <35.373119, 36.148033, 38.579311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533112, 36.028271, 38.712200>,  <35.799767, 35.828667, 38.933681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533112, 36.028271, 38.712200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094894, -0.793612, -0.600978,
		-0.739318, -0.348091, 0.576404,
		-0.666636, 0.499011, -0.553700,
		35.333122, 36.177975, 38.546089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346668, 35.210930, 38.811146>,  <35.799767, 35.828667, 38.933681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346668, 35.210930, 38.811146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.331470, 35.511772, 38.547966>,  <35.322353, 35.692276, 38.390057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.331470, 35.511772, 38.547966>,  <35.346668, 35.210930, 38.811146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331470, 35.511772, 38.547966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012337, -0.658726, -0.752281,
		-0.999202, -0.020465, 0.034306,
		-0.037994, 0.752104, -0.657948,
		35.320072, 35.737404, 38.350582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692860, 35.057301, 38.361118>,  <35.346668, 35.210930, 38.811146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692860, 35.057301, 38.361118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897243, 35.310230, 38.128197>,  <35.019875, 35.461990, 37.988445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897243, 35.310230, 38.128197>,  <34.692860, 35.057301, 38.361118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897243, 35.310230, 38.128197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076344, -0.641352, -0.763439,
		-0.856206, 0.434544, -0.279432,
		0.510962, 0.632328, -0.582304,
		35.050533, 35.499928, 37.953506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264442, 35.121563, 37.823956>,  <34.692860, 35.057301, 38.361118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264442, 35.121563, 37.823956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644310, 35.207794, 37.733047>,  <34.872231, 35.259533, 37.678505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644310, 35.207794, 37.733047>,  <34.264442, 35.121563, 37.823956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644310, 35.207794, 37.733047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002754, -0.719741, -0.694237,
		-0.313236, 0.659923, -0.682923,
		0.949671, 0.215579, -0.227267,
		34.929211, 35.272469, 37.664867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278099, 35.123940, 37.062225>,  <34.264442, 35.121563, 37.823956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278099, 35.123940, 37.062225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648617, 35.054932, 37.196220>,  <34.870926, 35.013527, 37.276615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648617, 35.054932, 37.196220>,  <34.278099, 35.123940, 37.062225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648617, 35.054932, 37.196220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104217, -0.737048, -0.667757,
		0.362099, 0.653451, -0.664745,
		0.926295, -0.172516, 0.334985,
		34.926506, 35.003178, 37.296715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538315, 34.969059, 36.436100>,  <34.278099, 35.123940, 37.062225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538315, 34.969059, 36.436100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804352, 34.849861, 36.709991>,  <34.963974, 34.778343, 36.874325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804352, 34.849861, 36.709991>,  <34.538315, 34.969059, 36.436100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804352, 34.849861, 36.709991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355043, -0.680483, -0.641005,
		0.656960, 0.669436, -0.346783,
		0.665092, -0.297992, 0.684729,
		35.003880, 34.760464, 36.915409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264603, 34.990376, 36.148205>,  <34.538315, 34.969059, 36.436100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264603, 34.990376, 36.148205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.234276, 34.732162, 36.452187>,  <35.216080, 34.577232, 36.634575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.234276, 34.732162, 36.452187>,  <35.264603, 34.990376, 36.148205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234276, 34.732162, 36.452187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448586, -0.702750, -0.552189,
		0.890518, 0.299043, 0.342858,
		-0.075815, -0.645536, 0.759958,
		35.211533, 34.538502, 36.680176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851418, 34.606674, 36.148922>,  <35.264603, 34.990376, 36.148205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851418, 34.606674, 36.148922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.643970, 34.365829, 36.391739>,  <35.519501, 34.221325, 36.537430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.643970, 34.365829, 36.391739>,  <35.851418, 34.606674, 36.148922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643970, 34.365829, 36.391739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312850, -0.794386, -0.520650,
		0.795713, -0.080106, 0.600353,
		-0.518619, -0.602108, 0.607042,
		35.488384, 34.185196, 36.573853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265640, 34.104328, 35.611412>,  <35.851418, 34.606674, 36.148922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265640, 34.104328, 35.611412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639595, 34.129299, 35.471653>,  <36.863968, 34.144283, 35.387798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639595, 34.129299, 35.471653>,  <36.265640, 34.104328, 35.611412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639595, 34.129299, 35.471653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127541, 0.859568, 0.494849,
		0.331226, -0.507193, 0.795641,
		0.934892, 0.062430, -0.349400,
		36.920063, 34.148029, 35.366833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724285, 34.180923, 36.191864>,  <36.265640, 34.104328, 35.611412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724285, 34.180923, 36.191864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921032, 34.344650, 35.884483>,  <37.039082, 34.442886, 35.700054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921032, 34.344650, 35.884483>,  <36.724285, 34.180923, 36.191864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921032, 34.344650, 35.884483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118489, 0.842925, 0.524821,
		0.862568, -0.349198, 0.366111,
		0.491870, 0.409314, -0.768457,
		37.068592, 34.467445, 35.653946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378624, 34.476097, 36.431309>,  <36.724285, 34.180923, 36.191864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378624, 34.476097, 36.431309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273064, 34.684818, 36.106819>,  <37.209728, 34.810051, 35.912125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273064, 34.684818, 36.106819>,  <37.378624, 34.476097, 36.431309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273064, 34.684818, 36.106819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129683, 0.852596, 0.506224,
		0.955793, 0.028390, -0.292668,
		-0.263899, 0.521800, -0.811223,
		37.193893, 34.841358, 35.863453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997177, 34.865829, 36.123592>,  <37.378624, 34.476097, 36.431309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997177, 34.865829, 36.123592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689312, 35.068058, 35.967632>,  <37.504593, 35.189396, 35.874058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689312, 35.068058, 35.967632>,  <37.997177, 34.865829, 36.123592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689312, 35.068058, 35.967632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374565, 0.852115, 0.365514,
		0.517032, 0.135279, -0.845209,
		-0.769661, 0.505568, -0.389900,
		37.458412, 35.219730, 35.850662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305931, 35.481613, 35.995087>,  <37.997177, 34.865829, 36.123592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305931, 35.481613, 35.995087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917282, 35.570950, 35.963951>,  <37.684093, 35.624554, 35.945271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917282, 35.570950, 35.963951>,  <38.305931, 35.481613, 35.995087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917282, 35.570950, 35.963951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158560, 0.859271, 0.486325,
		0.175499, 0.460185, -0.870305,
		-0.971627, 0.223345, -0.077835,
		37.625793, 35.637955, 35.940601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267097, 36.135277, 35.683064>,  <38.305931, 35.481613, 35.995087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267097, 36.135277, 35.683064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929348, 36.077568, 35.889450>,  <37.726700, 36.042942, 36.013283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929348, 36.077568, 35.889450>,  <38.267097, 36.135277, 35.683064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929348, 36.077568, 35.889450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176618, 0.834270, 0.522302,
		-0.505806, 0.532147, -0.678955,
		-0.844373, -0.144268, 0.515966,
		37.676037, 36.034286, 36.044239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953293, 36.861839, 35.692013>,  <38.267097, 36.135277, 35.683064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953293, 36.861839, 35.692013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767490, 36.644207, 35.971500>,  <37.656010, 36.513626, 36.139191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767490, 36.644207, 35.971500>,  <37.953293, 36.861839, 35.692013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767490, 36.644207, 35.971500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055486, 0.769571, 0.636146,
		-0.883829, 0.334264, -0.327282,
		-0.464508, -0.544085, 0.698716,
		37.628139, 36.480980, 36.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398960, 37.313480, 35.841557>,  <37.953293, 36.861839, 35.692013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398960, 37.313480, 35.841557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440174, 37.069256, 36.155651>,  <37.464905, 36.922722, 36.344109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440174, 37.069256, 36.155651>,  <37.398960, 37.313480, 35.841557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440174, 37.069256, 36.155651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105812, 0.791684, 0.601697,
		-0.989033, 0.021090, 0.146178,
		0.103037, -0.610566, 0.785234,
		37.471085, 36.886086, 36.391220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018322, 37.614929, 36.368855>,  <37.398960, 37.313480, 35.841557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018322, 37.614929, 36.368855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245113, 37.337959, 36.547329>,  <37.381187, 37.171776, 36.654411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245113, 37.337959, 36.547329>,  <37.018322, 37.614929, 36.368855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245113, 37.337959, 36.547329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159015, 0.623477, 0.765500,
		-0.808238, -0.363073, 0.463605,
		0.566979, -0.692426, 0.446184,
		37.415207, 37.130230, 36.681183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940693, 37.751163, 37.053555>,  <37.018322, 37.614929, 36.368855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940693, 37.751163, 37.053555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276184, 37.533699, 37.066048>,  <37.477478, 37.403221, 37.073544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276184, 37.533699, 37.066048>,  <36.940693, 37.751163, 37.053555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276184, 37.533699, 37.066048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345052, 0.574944, 0.741875,
		-0.421281, -0.611454, 0.669810,
		0.838726, -0.543657, 0.031230,
		37.527802, 37.370602, 37.075417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950783, 37.393162, 37.694317>,  <36.940693, 37.751163, 37.053555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950783, 37.393162, 37.694317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325893, 37.426281, 37.559429>,  <37.550961, 37.446152, 37.478497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325893, 37.426281, 37.559429>,  <36.950783, 37.393162, 37.694317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325893, 37.426281, 37.559429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263551, 0.462583, 0.846497,
		0.226074, -0.882702, 0.411981,
		0.937780, 0.082793, -0.337215,
		37.607227, 37.451118, 37.458263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397953, 37.173107, 38.263523>,  <36.950783, 37.393162, 37.694317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397953, 37.173107, 38.263523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638622, 37.374287, 38.015320>,  <37.783024, 37.494995, 37.866398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638622, 37.374287, 38.015320>,  <37.397953, 37.173107, 38.263523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638622, 37.374287, 38.015320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323023, 0.557273, 0.764920,
		0.730507, -0.660672, 0.172834,
		0.601677, 0.502951, -0.620504,
		37.819126, 37.525173, 37.829170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950867, 37.247826, 38.660015>,  <37.397953, 37.173107, 38.263523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950867, 37.247826, 38.660015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970570, 37.532742, 38.379951>,  <37.982391, 37.703690, 38.211914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970570, 37.532742, 38.379951>,  <37.950867, 37.247826, 38.660015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970570, 37.532742, 38.379951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357365, 0.642032, 0.678297,
		0.932665, -0.283621, -0.222925,
		0.049254, 0.712289, -0.700156,
		37.985348, 37.746429, 38.169903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539276, 37.479759, 38.711628>,  <37.950867, 37.247826, 38.660015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539276, 37.479759, 38.711628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314064, 37.772751, 38.558537>,  <38.178936, 37.948544, 38.466682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314064, 37.772751, 38.558537>,  <38.539276, 37.479759, 38.711628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314064, 37.772751, 38.558537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284103, 0.606422, 0.742656,
		0.776072, 0.309401, -0.549530,
		-0.563026, 0.732477, -0.382726,
		38.145157, 37.992493, 38.443718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020672, 38.025948, 38.756943>,  <38.539276, 37.479759, 38.711628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020672, 38.025948, 38.756943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660465, 38.192463, 38.706703>,  <38.444340, 38.292374, 38.676559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660465, 38.192463, 38.706703>,  <39.020672, 38.025948, 38.756943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660465, 38.192463, 38.706703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259808, 0.746743, 0.612271,
		0.348668, 0.518729, -0.780609,
		-0.900517, 0.416288, -0.125595,
		38.390308, 38.317348, 38.669025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034073, 38.848026, 38.559917>,  <39.020672, 38.025948, 38.756943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034073, 38.848026, 38.559917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688469, 38.773563, 38.747040>,  <38.481106, 38.728886, 38.859314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688469, 38.773563, 38.747040>,  <39.034073, 38.848026, 38.559917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688469, 38.773563, 38.747040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233274, 0.675379, 0.699605,
		-0.446182, 0.713588, -0.540105,
		-0.864005, -0.186159, 0.467803,
		38.429268, 38.717716, 38.887383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800995, 39.477451, 38.666389>,  <39.034073, 38.848026, 38.559917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800995, 39.477451, 38.666389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582634, 39.252453, 38.914772>,  <38.451618, 39.117455, 39.063801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582634, 39.252453, 38.914772>,  <38.800995, 39.477451, 38.666389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582634, 39.252453, 38.914772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146656, 0.665542, 0.731810,
		-0.824914, 0.490564, -0.280827,
		-0.545902, -0.562495, 0.620959,
		38.418865, 39.083706, 39.101059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602325, 39.915867, 39.104225>,  <38.800995, 39.477451, 38.666389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602325, 39.915867, 39.104225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482819, 39.593750, 39.309063>,  <38.411114, 39.400482, 39.431965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482819, 39.593750, 39.309063>,  <38.602325, 39.915867, 39.104225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482819, 39.593750, 39.309063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121664, 0.500089, 0.857385,
		-0.946539, 0.318462, -0.051436,
		-0.298767, -0.805291, 0.512099,
		38.393188, 39.352161, 39.462692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409790, 40.239719, 39.673901>,  <38.602325, 39.915867, 39.104225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409790, 40.239719, 39.673901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410229, 39.851974, 39.772152>,  <38.410492, 39.619328, 39.831104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410229, 39.851974, 39.772152>,  <38.409790, 40.239719, 39.673901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410229, 39.851974, 39.772152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134409, 0.243547, 0.960531,
		-0.990925, 0.031961, 0.130559,
		0.001098, -0.969362, 0.245633,
		38.410557, 39.561165, 39.845840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.913509, 40.087910, 40.298100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158978, 39.772129, 40.303349>,  <38.306259, 39.582661, 40.306499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158978, 39.772129, 40.303349>,  <37.913509, 40.087910, 40.298100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158978, 39.772129, 40.303349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280866, 0.233803, 0.930833,
		-0.737915, -0.567543, 0.365209,
		0.613675, -0.789451, 0.013123,
		38.343079, 39.535294, 40.307285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734299, 39.666016, 40.923489>,  <37.913509, 40.087910, 40.298100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734299, 39.666016, 40.923489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113518, 39.609230, 40.809616>,  <38.341049, 39.575161, 40.741291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113518, 39.609230, 40.809616>,  <37.734299, 39.666016, 40.923489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113518, 39.609230, 40.809616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315561, 0.306463, 0.898054,
		-0.040243, -0.941237, 0.335340,
		0.948052, -0.141961, -0.284685,
		38.397934, 39.566643, 40.724209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078049, 39.277431, 41.455215>,  <37.734299, 39.666016, 40.923489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078049, 39.277431, 41.455215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367619, 39.458981, 41.247395>,  <38.541359, 39.567909, 41.122704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367619, 39.458981, 41.247395>,  <38.078049, 39.277431, 41.455215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367619, 39.458981, 41.247395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434807, 0.284516, 0.854397,
		0.535609, -0.844422, 0.008620,
		0.723924, 0.453874, -0.519550,
		38.584797, 39.595142, 41.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806534, 39.066540, 41.754868>,  <38.078049, 39.277431, 41.455215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806534, 39.066540, 41.754868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828461, 39.411575, 41.553699>,  <38.841618, 39.618595, 41.432999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828461, 39.411575, 41.553699>,  <38.806534, 39.066540, 41.754868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828461, 39.411575, 41.553699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301163, 0.465941, 0.831986,
		0.951996, -0.197071, -0.234238,
		0.054819, 0.862590, -0.502925,
		38.844906, 39.670353, 41.402821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360657, 39.359097, 42.079338>,  <38.806534, 39.066540, 41.754868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360657, 39.359097, 42.079338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238655, 39.674423, 41.865597>,  <39.165455, 39.863617, 41.737350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238655, 39.674423, 41.865597>,  <39.360657, 39.359097, 42.079338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238655, 39.674423, 41.865597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416063, 0.615009, 0.669818,
		0.856659, -0.018028, -0.515568,
		-0.305003, 0.788314, -0.534353,
		39.147156, 39.910919, 41.705292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977116, 39.838406, 41.973164>,  <39.360657, 39.359097, 42.079338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977116, 39.838406, 41.973164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646400, 40.055347, 41.913467>,  <39.447971, 40.185513, 41.877647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646400, 40.055347, 41.913467>,  <39.977116, 39.838406, 41.973164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646400, 40.055347, 41.913467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261147, 0.605072, 0.752124,
		0.498221, 0.582872, -0.641900,
		-0.826788, 0.542354, -0.149244,
		39.398365, 40.218052, 41.868694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145924, 40.596203, 42.051765>,  <39.977116, 39.838406, 41.973164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145924, 40.596203, 42.051765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749630, 40.572292, 42.100555>,  <39.511856, 40.557945, 42.129829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749630, 40.572292, 42.100555>,  <40.145924, 40.596203, 42.051765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749630, 40.572292, 42.100555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066563, 0.569108, 0.819564,
		-0.118406, 0.820087, -0.559855,
		-0.990732, -0.059775, 0.121973,
		39.452412, 40.554359, 42.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007393, 41.222576, 42.319908>,  <40.145924, 40.596203, 42.051765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007393, 41.222576, 42.319908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660751, 41.034546, 42.386871>,  <39.452766, 40.921726, 42.427048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660751, 41.034546, 42.386871>,  <40.007393, 41.222576, 42.319908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660751, 41.034546, 42.386871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103979, 0.498231, 0.860787,
		-0.488044, 0.728555, -0.480647,
		-0.866603, -0.470079, 0.167404,
		39.400772, 40.893520, 42.437092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386982, 41.696384, 42.483994>,  <40.007393, 41.222576, 42.319908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386982, 41.696384, 42.483994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311550, 41.354546, 42.677532>,  <39.266293, 41.149445, 42.793655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311550, 41.354546, 42.677532>,  <39.386982, 41.696384, 42.483994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311550, 41.354546, 42.677532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261011, 0.518582, 0.814215,
		-0.946737, 0.027255, -0.320852,
		-0.188580, -0.854593, 0.483846,
		39.254978, 41.098167, 42.822685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852478, 41.853031, 42.970131>,  <39.386982, 41.696384, 42.483994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852478, 41.853031, 42.970131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966854, 41.498272, 43.115265>,  <39.035480, 41.285416, 43.202343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966854, 41.498272, 43.115265>,  <38.852478, 41.853031, 42.970131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966854, 41.498272, 43.115265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202735, 0.314078, 0.927498,
		-0.936556, -0.338767, -0.089999,
		0.285939, -0.886900, 0.362832,
		39.052635, 41.232201, 43.224113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591530, 41.828278, 43.574997>,  <38.852478, 41.853031, 42.970131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591530, 41.828278, 43.574997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868492, 41.542336, 43.614113>,  <39.034668, 41.370770, 43.637581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868492, 41.542336, 43.614113>,  <38.591530, 41.828278, 43.574997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868492, 41.542336, 43.614113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077024, 0.207995, 0.975093,
		-0.717386, -0.667627, 0.199077,
		0.692405, -0.714852, 0.097789,
		39.076214, 41.327881, 43.643448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350746, 41.459805, 44.132416>,  <38.591530, 41.828278, 43.574997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350746, 41.459805, 44.132416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748341, 41.433010, 44.097763>,  <38.986897, 41.416935, 44.076969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748341, 41.433010, 44.097763>,  <38.350746, 41.459805, 44.132416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748341, 41.433010, 44.097763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100553, 0.244887, 0.964323,
		-0.043382, -0.967235, 0.250150,
		0.993985, -0.066988, -0.086635,
		39.046535, 41.412914, 44.071774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585045, 41.342224, 44.829620>,  <38.350746, 41.459805, 44.132416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585045, 41.342224, 44.829620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930904, 41.445183, 44.657051>,  <39.138420, 41.506958, 44.553509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930904, 41.445183, 44.657051>,  <38.585045, 41.342224, 44.829620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930904, 41.445183, 44.657051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343918, 0.322700, 0.881808,
		0.366197, -0.910829, 0.190498,
		0.864650, 0.257399, -0.431422,
		39.190300, 41.522404, 44.527626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054371, 40.939663, 45.219425>,  <38.585045, 41.342224, 44.829620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054371, 40.939663, 45.219425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204666, 41.266144, 45.043861>,  <39.294842, 41.462032, 44.938522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204666, 41.266144, 45.043861>,  <39.054371, 40.939663, 45.219425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204666, 41.266144, 45.043861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536232, 0.194796, 0.821285,
		0.755830, -0.543944, -0.364480,
		0.375734, 0.816198, -0.438913,
		39.317387, 41.511002, 44.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841835, 40.960384, 45.468388>,  <39.054371, 40.939663, 45.219425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841835, 40.960384, 45.468388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764797, 41.325695, 45.324810>,  <39.718575, 41.544880, 45.238663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764797, 41.325695, 45.324810>,  <39.841835, 40.960384, 45.468388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764797, 41.325695, 45.324810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480739, 0.406700, 0.776843,
		0.855452, -0.022943, -0.517374,
		-0.192593, 0.913273, -0.358942,
		39.707020, 41.599678, 45.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489498, 41.253433, 45.334698>,  <39.841835, 40.960384, 45.468388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489498, 41.253433, 45.334698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224533, 41.549534, 45.380699>,  <40.065552, 41.727196, 45.408298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224533, 41.549534, 45.380699>,  <40.489498, 41.253433, 45.334698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224533, 41.549534, 45.380699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625674, 0.462266, 0.628365,
		0.411990, 0.488192, -0.769372,
		-0.662417, 0.740256, 0.115000,
		40.025806, 41.771610, 45.415199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809727, 41.858074, 45.093006>,  <40.489498, 41.253433, 45.334698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809727, 41.858074, 45.093006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524429, 41.941154, 45.360779>,  <40.353252, 41.991005, 45.521442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524429, 41.941154, 45.360779>,  <40.809727, 41.858074, 45.093006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524429, 41.941154, 45.360779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651594, 0.548421, 0.524080,
		-0.258279, 0.809997, -0.526495,
		-0.713244, 0.207703, 0.669435,
		40.310455, 42.003464, 45.561607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106228, 42.410690, 45.405064>,  <40.809727, 41.858074, 45.093006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106228, 42.410690, 45.405064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816109, 42.332886, 45.669216>,  <40.642036, 42.286201, 45.827709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816109, 42.332886, 45.669216>,  <41.106228, 42.410690, 45.405064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816109, 42.332886, 45.669216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505277, 0.501118, 0.702550,
		-0.467583, 0.843235, -0.265180,
		-0.725301, -0.194511, 0.660381,
		40.598518, 42.274532, 45.867332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054642, 42.941986, 45.766724>,  <41.106228, 42.410690, 45.405064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054642, 42.941986, 45.766724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898544, 42.692501, 46.037632>,  <40.804886, 42.542809, 46.200176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898544, 42.692501, 46.037632>,  <41.054642, 42.941986, 45.766724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898544, 42.692501, 46.037632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505127, 0.469967, 0.723863,
		-0.769777, 0.624589, 0.131653,
		-0.390244, -0.623715, 0.677266,
		40.781471, 42.505386, 46.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985966, 43.437366, 46.340996>,  <41.054642, 42.941986, 45.766724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985966, 43.437366, 46.340996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948883, 43.070328, 46.495617>,  <40.926636, 42.850105, 46.588390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948883, 43.070328, 46.495617>,  <40.985966, 43.437366, 46.340996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948883, 43.070328, 46.495617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423955, 0.314895, 0.849178,
		-0.900926, 0.242600, 0.359829,
		-0.092702, -0.917598, 0.386549,
		40.921074, 42.795048, 46.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757401, 43.574387, 46.982483>,  <40.985966, 43.437366, 46.340996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757401, 43.574387, 46.982483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891018, 43.198380, 47.010136>,  <40.971188, 42.972775, 47.026726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891018, 43.198380, 47.010136>,  <40.757401, 43.574387, 46.982483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891018, 43.198380, 47.010136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513739, 0.243070, 0.822793,
		-0.790247, -0.239329, 0.564120,
		0.334039, -0.940021, 0.069133,
		40.991230, 42.916374, 47.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577248, 43.319527, 47.711212>,  <40.757401, 43.574387, 46.982483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577248, 43.319527, 47.711212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842216, 43.044682, 47.591835>,  <41.001198, 42.879772, 47.520206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842216, 43.044682, 47.591835>,  <40.577248, 43.319527, 47.711212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842216, 43.044682, 47.591835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587103, 0.228721, 0.776528,
		-0.465303, -0.689608, 0.554917,
		0.662422, -0.687115, -0.298446,
		41.040943, 42.838547, 47.502300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209656, 42.769432, 47.998600>,  <40.577248, 43.319527, 47.711212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209656, 42.769432, 47.998600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482033, 42.563862, 48.207287>,  <40.645458, 42.440517, 48.332500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482033, 42.563862, 48.207287>,  <40.209656, 42.769432, 47.998600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482033, 42.563862, 48.207287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624844, -0.779279, 0.047902,
		0.381946, -0.358611, -0.851772,
		0.680946, -0.513928, 0.521719,
		40.686317, 42.409683, 48.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501503, 42.147827, 47.694759>,  <40.209656, 42.769432, 47.998600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501503, 42.147827, 47.694759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504822, 42.087223, 48.090126>,  <40.506813, 42.050861, 48.327347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504822, 42.087223, 48.090126>,  <40.501503, 42.147827, 47.694759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504822, 42.087223, 48.090126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556466, -0.821964, -0.121327,
		0.830829, -0.549017, -0.091128,
		0.008293, -0.151511, 0.988421,
		40.507309, 42.041771, 48.386654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755810, 41.501656, 47.830276>,  <40.501503, 42.147827, 47.694759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755810, 41.501656, 47.830276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488552, 41.622322, 48.102329>,  <40.328197, 41.694721, 48.265560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488552, 41.622322, 48.102329>,  <40.755810, 41.501656, 47.830276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488552, 41.622322, 48.102329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577290, -0.786870, -0.218108,
		0.469380, -0.538361, 0.699892,
		-0.668145, 0.301665, 0.680132,
		40.288109, 41.712822, 48.306370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403809, 40.805275, 47.995403>,  <40.755810, 41.501656, 47.830276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403809, 40.805275, 47.995403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158928, 41.056583, 48.187439>,  <40.011997, 41.207367, 48.302658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158928, 41.056583, 48.187439>,  <40.403809, 40.805275, 47.995403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158928, 41.056583, 48.187439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784143, -0.560431, -0.266527,
		0.101605, -0.539627, 0.835751,
		-0.612206, 0.628268, 0.480087,
		39.975266, 41.245064, 48.331467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093323, 40.382133, 48.387978>,  <40.403809, 40.805275, 47.995403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093323, 40.382133, 48.387978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868721, 40.711933, 48.416035>,  <39.733959, 40.909813, 48.432869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868721, 40.711933, 48.416035>,  <40.093323, 40.382133, 48.387978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868721, 40.711933, 48.416035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818195, -0.540545, -0.195876,
		-0.123581, -0.167378, 0.978117,
		-0.561502, 0.824497, 0.070147,
		39.700272, 40.959282, 48.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451412, 40.243053, 48.752003>,  <40.093323, 40.382133, 48.387978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451412, 40.243053, 48.752003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370285, 40.548519, 48.506832>,  <39.321609, 40.731800, 48.359730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370285, 40.548519, 48.506832>,  <39.451412, 40.243053, 48.752003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370285, 40.548519, 48.506832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755466, -0.520267, -0.398238,
		-0.623006, 0.382274, 0.682444,
		-0.202817, 0.763668, -0.612925,
		39.309441, 40.777618, 48.322956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735554, 40.273243, 48.638485>,  <39.451412, 40.243053, 48.752003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735554, 40.273243, 48.638485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849251, 40.500229, 48.329372>,  <38.917469, 40.636421, 48.143906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849251, 40.500229, 48.329372>,  <38.735554, 40.273243, 48.638485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849251, 40.500229, 48.329372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743411, -0.378535, -0.551409,
		-0.605429, 0.731229, 0.314262,
		0.284247, 0.567464, -0.772779,
		38.934525, 40.670467, 48.097538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073650, 40.459812, 48.266701>,  <38.735554, 40.273243, 48.638485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073650, 40.459812, 48.266701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377789, 40.475430, 48.007362>,  <38.560272, 40.484798, 47.851757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377789, 40.475430, 48.007362>,  <38.073650, 40.459812, 48.266701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377789, 40.475430, 48.007362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602596, -0.330123, -0.726565,
		-0.242400, 0.943130, -0.227480,
		0.760342, 0.039041, -0.648349,
		38.605892, 40.487141, 47.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693962, 40.501656, 47.597672>,  <38.073650, 40.459812, 48.266701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693962, 40.501656, 47.597672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076115, 40.437550, 47.498421>,  <38.305405, 40.399086, 47.438869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076115, 40.437550, 47.498421>,  <37.693962, 40.501656, 47.597672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076115, 40.437550, 47.498421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295136, -0.483655, -0.823998,
		0.012049, 0.860462, -0.509373,
		0.955379, -0.160262, -0.248126,
		38.362728, 40.389469, 47.423985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729698, 40.681591, 46.905624>,  <37.693962, 40.501656, 47.597672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729698, 40.681591, 46.905624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064709, 40.463272, 46.915939>,  <38.265713, 40.332283, 46.922131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064709, 40.463272, 46.915939>,  <37.729698, 40.681591, 46.905624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064709, 40.463272, 46.915939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202699, -0.354184, -0.912944,
		0.507413, 0.759384, -0.407269,
		0.837523, -0.545793, 0.025791,
		38.315964, 40.299534, 46.923676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210049, 40.891903, 46.364304>,  <37.729698, 40.681591, 46.905624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210049, 40.891903, 46.364304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274010, 40.502678, 46.430737>,  <38.312386, 40.269142, 46.470596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274010, 40.502678, 46.430737>,  <38.210049, 40.891903, 46.364304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274010, 40.502678, 46.430737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263549, -0.204222, -0.942781,
		0.951301, 0.106983, -0.289105,
		0.159903, -0.973061, 0.166081,
		38.321980, 40.210758, 46.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694466, 40.709030, 45.875179>,  <38.210049, 40.891903, 46.364304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694466, 40.709030, 45.875179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497688, 40.385948, 46.005169>,  <38.379623, 40.192101, 46.083164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497688, 40.385948, 46.005169>,  <38.694466, 40.709030, 45.875179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497688, 40.385948, 46.005169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157982, -0.284251, -0.945644,
		0.856174, -0.516543, 0.012232,
		-0.491943, -0.807703, 0.324973,
		38.350105, 40.143639, 46.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948090, 40.224735, 45.437431>,  <38.694466, 40.709030, 45.875179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948090, 40.224735, 45.437431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604462, 40.074421, 45.576454>,  <38.398285, 39.984234, 45.659866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604462, 40.074421, 45.576454>,  <38.948090, 40.224735, 45.437431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604462, 40.074421, 45.576454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238583, -0.306766, -0.921397,
		0.452863, -0.874461, 0.173876,
		-0.859065, -0.375782, 0.347555,
		38.346741, 39.961685, 45.680721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936394, 39.590466, 45.109192>,  <38.948090, 40.224735, 45.437431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936394, 39.590466, 45.109192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563038, 39.681423, 45.220238>,  <38.339024, 39.735996, 45.286865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563038, 39.681423, 45.220238>,  <38.936394, 39.590466, 45.109192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563038, 39.681423, 45.220238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316908, -0.159375, -0.934970,
		-0.168376, -0.960669, 0.220827,
		-0.933391, 0.227409, 0.277609,
		38.283020, 39.749641, 45.303520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533752, 39.117012, 44.802116>,  <38.936394, 39.590466, 45.109192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533752, 39.117012, 44.802116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274235, 39.404953, 44.900806>,  <38.118523, 39.577717, 44.960022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274235, 39.404953, 44.900806>,  <38.533752, 39.117012, 44.802116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274235, 39.404953, 44.900806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533387, -0.198949, -0.822142,
		-0.542734, -0.665005, 0.513038,
		-0.648797, 0.719852, 0.246729,
		38.079594, 39.620907, 44.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897018, 38.874859, 44.530045>,  <38.533752, 39.117012, 44.802116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897018, 38.874859, 44.530045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819622, 39.263451, 44.584885>,  <37.773182, 39.496605, 44.617786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819622, 39.263451, 44.584885>,  <37.897018, 38.874859, 44.530045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819622, 39.263451, 44.584885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645070, -0.020687, -0.763844,
		-0.739220, -0.236234, 0.630672,
		-0.193493, 0.971476, 0.137095,
		37.761574, 39.554893, 44.626015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164108, 38.955105, 44.618149>,  <37.897018, 38.874859, 44.530045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164108, 38.955105, 44.618149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301285, 39.313694, 44.505913>,  <37.383591, 39.528847, 44.438572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301285, 39.313694, 44.505913>,  <37.164108, 38.955105, 44.618149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301285, 39.313694, 44.505913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652696, 0.012587, -0.757516,
		-0.675557, 0.442928, 0.589438,
		0.342944, 0.896469, -0.280594,
		37.404167, 39.582634, 44.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554314, 39.404228, 44.546467>,  <37.164108, 38.955105, 44.618149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554314, 39.404228, 44.546467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838509, 39.580479, 44.326996>,  <37.009026, 39.686230, 44.195312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838509, 39.580479, 44.326996>,  <36.554314, 39.404228, 44.546467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838509, 39.580479, 44.326996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666721, 0.172046, -0.725179,
		-0.225137, 0.881048, 0.416014,
		0.710491, 0.440630, -0.548679,
		37.051655, 39.712669, 44.162392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358967, 40.083374, 44.239952>,  <36.554314, 39.404228, 44.546467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358967, 40.083374, 44.239952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647686, 39.983765, 43.981651>,  <36.820915, 39.924000, 43.826672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647686, 39.983765, 43.981651>,  <36.358967, 40.083374, 44.239952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647686, 39.983765, 43.981651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675833, -0.052452, -0.735186,
		0.149207, 0.967076, -0.206158,
		0.721794, -0.249024, -0.645756,
		36.864223, 39.909058, 43.787926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284149, 40.441784, 43.605484>,  <36.358967, 40.083374, 44.239952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284149, 40.441784, 43.605484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508774, 40.125179, 43.509026>,  <36.643551, 39.935215, 43.451149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508774, 40.125179, 43.509026>,  <36.284149, 40.441784, 43.605484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508774, 40.125179, 43.509026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496314, -0.089025, -0.863566,
		0.662056, 0.604633, -0.442833,
		0.561564, -0.791514, -0.241148,
		36.677242, 39.887726, 43.436680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199955, 40.402481, 42.889427>,  <36.284149, 40.441784, 43.605484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199955, 40.402481, 42.889427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369255, 40.046463, 42.957165>,  <36.470833, 39.832851, 42.997807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369255, 40.046463, 42.957165>,  <36.199955, 40.402481, 42.889427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369255, 40.046463, 42.957165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446894, -0.367676, -0.815536,
		0.788130, 0.269495, -0.553375,
		0.423246, -0.890049, 0.169341,
		36.496227, 39.779449, 43.007969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452843, 40.268227, 42.265816>,  <36.199955, 40.402481, 42.889427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452843, 40.268227, 42.265816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427971, 39.921429, 42.463581>,  <36.413048, 39.713348, 42.582241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427971, 39.921429, 42.463581>,  <36.452843, 40.268227, 42.265816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427971, 39.921429, 42.463581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367853, -0.440592, -0.818879,
		0.927803, -0.232793, -0.291531,
		-0.062183, -0.866999, 0.494416,
		36.409317, 39.661327, 42.611904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.711605, 42.142551, 36.765549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390339, 41.957794, 36.615036>,  <42.197578, 41.846939, 36.524731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390339, 41.957794, 36.615036>,  <42.711605, 42.142551, 36.765549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390339, 41.957794, 36.615036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590752, -0.699173, -0.402703,
		-0.077079, -0.545723, 0.834413,
		-0.803163, -0.461891, -0.376279,
		42.149391, 41.819225, 36.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831070, 41.392086, 36.811489>,  <42.711605, 42.142551, 36.765549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831070, 41.392086, 36.811489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 41.424820, 36.537685>,  <42.367458, 41.444458, 36.373402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 41.424820, 36.537685>,  <42.831070, 41.392086, 36.811489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541313, 41.424820, 36.537685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443206, -0.705252, -0.553343,
		-0.528034, -0.704219, 0.474612,
		-0.724395, 0.081833, -0.684510,
		42.323994, 41.449371, 36.332333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755390, 40.678082, 36.523033>,  <42.831070, 41.392086, 36.811489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755390, 40.678082, 36.523033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559525, 40.896572, 36.251190>,  <42.442005, 41.027668, 36.088085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559525, 40.896572, 36.251190>,  <42.755390, 40.678082, 36.523033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559525, 40.896572, 36.251190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321638, -0.611313, -0.723081,
		-0.810417, -0.572656, 0.123652,
		-0.489666, 0.546226, -0.679606,
		42.412624, 41.060440, 36.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192928, 40.284145, 36.173355>,  <42.755390, 40.678082, 36.523033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192928, 40.284145, 36.173355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290310, 40.566093, 35.906853>,  <42.348740, 40.735260, 35.746952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290310, 40.566093, 35.906853>,  <42.192928, 40.284145, 36.173355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290310, 40.566093, 35.906853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012731, -0.689185, -0.724473,
		-0.969829, 0.167894, -0.176759,
		0.243454, 0.704866, -0.666254,
		42.363346, 40.777554, 35.706978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749645, 40.238239, 35.496674>,  <42.192928, 40.284145, 36.173355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749645, 40.238239, 35.496674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081070, 40.437599, 35.394623>,  <42.279922, 40.557213, 35.333393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081070, 40.437599, 35.394623>,  <41.749645, 40.238239, 35.496674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081070, 40.437599, 35.394623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240233, -0.728042, -0.642061,
		-0.505746, 0.470695, -0.722957,
		0.828559, 0.498398, -0.255128,
		42.329636, 40.587120, 35.318085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760311, 40.054646, 34.828754>,  <41.749645, 40.238239, 35.496674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760311, 40.054646, 34.828754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121067, 40.208267, 34.907848>,  <42.337521, 40.300438, 34.955303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121067, 40.208267, 34.907848>,  <41.760311, 40.054646, 34.828754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121067, 40.208267, 34.907848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416356, -0.650940, -0.634764,
		-0.115069, 0.654815, -0.746978,
		0.901891, 0.384051, 0.197734,
		42.391636, 40.323483, 34.967167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034126, 40.140728, 34.195881>,  <41.760311, 40.054646, 34.828754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034126, 40.140728, 34.195881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361816, 40.166378, 34.423828>,  <42.558430, 40.181767, 34.560596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361816, 40.166378, 34.423828>,  <42.034126, 40.140728, 34.195881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361816, 40.166378, 34.423828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455929, -0.675586, -0.579406,
		0.347843, 0.734487, -0.582696,
		0.819227, 0.064125, 0.569872,
		42.607586, 40.185616, 34.594791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543423, 40.044098, 33.695595>,  <42.034126, 40.140728, 34.195881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543423, 40.044098, 33.695595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728046, 39.960175, 34.040371>,  <42.838821, 39.909821, 34.247238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728046, 39.960175, 34.040371>,  <42.543423, 40.044098, 33.695595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728046, 39.960175, 34.040371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449650, -0.782232, -0.431193,
		0.764706, 0.586594, -0.266706,
		0.461561, -0.209812, 0.861940,
		42.866516, 39.897232, 34.298954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129665, 39.921028, 33.511681>,  <42.543423, 40.044098, 33.695595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129665, 39.921028, 33.511681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128822, 39.744198, 33.870472>,  <43.128315, 39.638100, 34.085747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128822, 39.744198, 33.870472>,  <43.129665, 39.921028, 33.511681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128822, 39.744198, 33.870472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407107, -0.819660, -0.403015,
		0.913378, 0.364316, 0.181699,
		-0.002107, -0.442076, 0.896975,
		43.128189, 39.611576, 34.139565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770912, 39.514587, 33.568703>,  <43.129665, 39.921028, 33.511681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770912, 39.514587, 33.568703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546082, 39.345348, 33.852970>,  <43.411182, 39.243805, 34.023529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546082, 39.345348, 33.852970>,  <43.770912, 39.514587, 33.568703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546082, 39.345348, 33.852970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288459, -0.905579, -0.310995,
		0.775151, 0.030195, 0.631055,
		-0.562079, -0.423101, 0.710670,
		43.377457, 39.218418, 34.066170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162350, 38.952606, 33.772610>,  <43.770912, 39.514587, 33.568703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162350, 38.952606, 33.772610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785667, 38.850475, 33.860249>,  <43.559658, 38.789196, 33.912830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785667, 38.850475, 33.860249>,  <44.162350, 38.952606, 33.772610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785667, 38.850475, 33.860249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199484, -0.948130, -0.247498,
		0.270925, -0.189363, 0.943791,
		-0.941704, -0.255325, 0.219097,
		43.503155, 38.773876, 33.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187866, 38.400604, 34.261860>,  <44.162350, 38.952606, 33.772610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187866, 38.400604, 34.261860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820045, 38.356087, 34.111103>,  <43.599354, 38.329376, 34.020649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820045, 38.356087, 34.111103>,  <44.187866, 38.400604, 34.261860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820045, 38.356087, 34.111103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223552, -0.936903, -0.268769,
		-0.323198, -0.331401, 0.886406,
		-0.919547, -0.111293, -0.376891,
		43.544182, 38.322701, 33.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001160, 37.768166, 34.578907>,  <44.187866, 38.400604, 34.261860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001160, 37.768166, 34.578907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770615, 37.837532, 34.259476>,  <43.632286, 37.879150, 34.067818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770615, 37.837532, 34.259476>,  <44.001160, 37.768166, 34.578907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770615, 37.837532, 34.259476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121047, -0.948326, -0.293300,
		-0.808177, -0.265714, 0.525592,
		-0.576366, 0.173417, -0.798579,
		43.597706, 37.889557, 34.019901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664566, 37.187962, 34.585598>,  <44.001160, 37.768166, 34.578907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664566, 37.187962, 34.585598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588116, 37.336338, 34.222088>,  <43.542248, 37.425365, 34.003983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588116, 37.336338, 34.222088>,  <43.664566, 37.187962, 34.585598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588116, 37.336338, 34.222088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061302, -0.919524, -0.388224,
		-0.979650, -0.129908, 0.153002,
		-0.191122, 0.370945, -0.908775,
		43.530781, 37.447620, 33.949455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092594, 36.692650, 34.160408>,  <43.664566, 37.187962, 34.585598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092594, 36.692650, 34.160408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319508, 36.901157, 33.905388>,  <43.455658, 37.026260, 33.752377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319508, 36.901157, 33.905388>,  <43.092594, 36.692650, 34.160408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319508, 36.901157, 33.905388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161837, -0.829642, -0.534325,
		-0.807462, 0.199937, -0.555004,
		0.567286, 0.521268, -0.637547,
		43.489693, 37.057537, 33.714123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974636, 36.404762, 33.488495>,  <43.092594, 36.692650, 34.160408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974636, 36.404762, 33.488495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339222, 36.567955, 33.467369>,  <43.557972, 36.665871, 33.454693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339222, 36.567955, 33.467369>,  <42.974636, 36.404762, 33.488495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339222, 36.567955, 33.467369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359238, -0.851891, -0.381089,
		-0.200467, 0.328376, -0.923029,
		0.911461, 0.407983, -0.052811,
		43.612659, 36.690350, 33.451527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183365, 36.146137, 32.835236>,  <42.974636, 36.404762, 33.488495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183365, 36.146137, 32.835236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512104, 36.283295, 33.017220>,  <43.709347, 36.365589, 33.126411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512104, 36.283295, 33.017220>,  <43.183365, 36.146137, 32.835236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512104, 36.283295, 33.017220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516032, -0.786442, -0.339442,
		0.241409, 0.513744, -0.823279,
		0.821847, 0.342894, 0.454962,
		43.758659, 36.386162, 33.153709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816177, 36.044941, 32.300640>,  <43.183365, 36.146137, 32.835236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816177, 36.044941, 32.300640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.983532, 36.089741, 32.661175>,  <44.083946, 36.116623, 32.877495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.983532, 36.089741, 32.661175>,  <43.816177, 36.044941, 32.300640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983532, 36.089741, 32.661175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710386, -0.658709, -0.247898,
		0.565954, 0.744014, -0.355161,
		0.418387, 0.112003, 0.901337,
		44.109047, 36.123341, 32.931576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439030, 36.104950, 32.129787>,  <43.816177, 36.044941, 32.300640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439030, 36.104950, 32.129787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492889, 36.051346, 32.522503>,  <44.525208, 36.019184, 32.758133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492889, 36.051346, 32.522503>,  <44.439030, 36.104950, 32.129787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492889, 36.051346, 32.522503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915516, -0.362221, -0.175004,
		0.379077, 0.922409, 0.073912,
		0.134653, -0.134007, 0.981790,
		44.533283, 36.011143, 32.817039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056454, 36.347179, 32.273869>,  <44.439030, 36.104950, 32.129787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056454, 36.347179, 32.273869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.989567, 36.084747, 32.568241>,  <44.949436, 35.927288, 32.744865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.989567, 36.084747, 32.568241>,  <45.056454, 36.347179, 32.273869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989567, 36.084747, 32.568241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815051, -0.511979, -0.271235,
		0.554734, 0.554469, 0.620350,
		-0.167215, -0.656080, 0.735933,
		44.939404, 35.887924, 32.789021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748730, 36.169521, 32.727139>,  <45.056454, 36.347179, 32.273869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748730, 36.169521, 32.727139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488346, 35.866058, 32.737640>,  <45.332115, 35.683983, 32.743942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488346, 35.866058, 32.737640>,  <45.748730, 36.169521, 32.727139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488346, 35.866058, 32.737640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731748, -0.636326, -0.244202,
		0.201970, -0.139757, 0.969369,
		-0.650963, -0.758655, 0.026252,
		45.293056, 35.638462, 32.745518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699200, 36.903816, 32.819290>,  <45.748730, 36.169521, 32.727139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699200, 36.903816, 32.819290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932346, 36.677509, 33.052589>,  <46.072235, 36.541725, 33.192570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932346, 36.677509, 33.052589>,  <45.699200, 36.903816, 32.819290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932346, 36.677509, 33.052589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330581, 0.490588, 0.806250,
		-0.742281, -0.662748, 0.098917,
		0.582868, -0.565764, 0.583246,
		46.107208, 36.507782, 33.227562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363388, 36.477974, 33.329052>,  <45.699200, 36.903816, 32.819290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363388, 36.477974, 33.329052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.719387, 36.613018, 33.451641>,  <45.932987, 36.694046, 33.525196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.719387, 36.613018, 33.451641>,  <45.363388, 36.477974, 33.329052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719387, 36.613018, 33.451641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416113, 0.326559, 0.848651,
		0.186429, -0.882825, 0.431119,
		0.889996, 0.337608, 0.306475,
		45.986385, 36.714302, 33.543583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547367, 36.087494, 33.860252>,  <45.363388, 36.477974, 33.329052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547367, 36.087494, 33.860252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698936, 36.457649, 33.863789>,  <45.789879, 36.679741, 33.865910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698936, 36.457649, 33.863789>,  <45.547367, 36.087494, 33.860252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698936, 36.457649, 33.863789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386301, 0.149483, 0.910179,
		0.840945, -0.348304, 0.414120,
		0.378923, 0.925386, 0.008843,
		45.812614, 36.735264, 33.866440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799709, 36.159893, 34.558212>,  <45.547367, 36.087494, 33.860252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799709, 36.159893, 34.558212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801392, 36.535633, 34.421036>,  <45.802399, 36.761078, 34.338730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801392, 36.535633, 34.421036>,  <45.799709, 36.159893, 34.558212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801392, 36.535633, 34.421036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268171, 0.331441, 0.904561,
		0.963362, 0.088165, 0.253299,
		0.004203, 0.939347, -0.342941,
		45.802654, 36.817436, 34.318153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080280, 36.565613, 35.072098>,  <45.799709, 36.159893, 34.558212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080280, 36.565613, 35.072098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.866730, 36.818214, 34.847176>,  <45.738602, 36.969776, 34.712223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.866730, 36.818214, 34.847176>,  <46.080280, 36.565613, 35.072098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866730, 36.818214, 34.847176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538262, 0.259055, 0.801975,
		0.652116, 0.730820, 0.201610,
		-0.533872, 0.631500, -0.562307,
		45.706570, 37.007664, 34.678482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152451, 37.170631, 35.501064>,  <46.080280, 36.565613, 35.072098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152451, 37.170631, 35.501064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837906, 37.179874, 35.254131>,  <45.649181, 37.185421, 35.105972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837906, 37.179874, 35.254131>,  <46.152451, 37.170631, 35.501064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837906, 37.179874, 35.254131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544663, 0.445615, 0.710471,
		0.291515, 0.894926, -0.337825,
		-0.786359, 0.023112, -0.617337,
		45.601997, 37.186810, 35.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836460, 37.729027, 35.698074>,  <46.152451, 37.170631, 35.501064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836460, 37.729027, 35.698074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531807, 37.557407, 35.503822>,  <45.349014, 37.454433, 35.387272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531807, 37.557407, 35.503822>,  <45.836460, 37.729027, 35.698074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531807, 37.557407, 35.503822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641599, 0.394137, 0.658032,
		-0.090925, 0.812755, -0.575466,
		-0.761631, -0.429051, -0.485626,
		45.303318, 37.428692, 35.358135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269222, 38.273033, 35.462700>,  <45.836460, 37.729027, 35.698074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269222, 38.273033, 35.462700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105766, 37.910431, 35.505138>,  <45.007694, 37.692867, 35.530602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105766, 37.910431, 35.505138>,  <45.269222, 38.273033, 35.462700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105766, 37.910431, 35.505138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722508, 0.392320, 0.569270,
		-0.557671, 0.155971, -0.815276,
		-0.408639, -0.906509, 0.106095,
		44.983173, 37.638477, 35.536968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492260, 38.402397, 35.637905>,  <45.269222, 38.273033, 35.462700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492260, 38.402397, 35.637905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525055, 38.018616, 35.745777>,  <44.544731, 37.788345, 35.810501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525055, 38.018616, 35.745777>,  <44.492260, 38.402397, 35.637905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525055, 38.018616, 35.745777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586627, 0.172288, 0.791318,
		-0.805696, -0.223078, -0.548717,
		0.081989, -0.959455, 0.269675,
		44.549652, 37.730778, 35.826679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862808, 38.238155, 35.724316>,  <44.492260, 38.402397, 35.637905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862808, 38.238155, 35.724316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076344, 37.987171, 35.951054>,  <44.204464, 37.836582, 36.087097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076344, 37.987171, 35.951054>,  <43.862808, 38.238155, 35.724316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076344, 37.987171, 35.951054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633856, 0.146755, 0.759400,
		-0.559678, -0.764697, -0.319373,
		0.533841, -0.627456, 0.566844,
		44.236496, 37.798935, 36.121105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310589, 37.894905, 36.011921>,  <43.862808, 38.238155, 35.724316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310589, 37.894905, 36.011921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614006, 37.771584, 36.241550>,  <43.796055, 37.697590, 36.379330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614006, 37.771584, 36.241550>,  <43.310589, 37.894905, 36.011921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614006, 37.771584, 36.241550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576735, 0.092421, 0.811687,
		-0.303300, -0.946789, -0.107702,
		0.758542, -0.308300, 0.574078,
		43.841568, 37.679092, 36.413773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072769, 37.305946, 36.412041>,  <43.310589, 37.894905, 36.011921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072769, 37.305946, 36.412041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375999, 37.484379, 36.602341>,  <43.557938, 37.591438, 36.716522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375999, 37.484379, 36.602341>,  <43.072769, 37.305946, 36.412041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375999, 37.484379, 36.602341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532255, 0.001626, 0.846582,
		0.376871, -0.894991, 0.238662,
		0.758071, 0.446081, 0.475751,
		43.603420, 37.618202, 36.745068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124302, 36.977520, 37.131943>,  <43.072769, 37.305946, 36.412041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124302, 36.977520, 37.131943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342617, 37.310211, 37.172646>,  <43.473606, 37.509827, 37.197067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342617, 37.310211, 37.172646>,  <43.124302, 36.977520, 37.131943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342617, 37.310211, 37.172646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441593, 0.182303, 0.878500,
		0.712119, -0.524406, 0.466782,
		0.545786, 0.831724, 0.101753,
		43.506351, 37.559727, 37.203171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296005, 37.060162, 37.845394>,  <43.124302, 36.977520, 37.131943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296005, 37.060162, 37.845394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342602, 37.430683, 37.702068>,  <43.370560, 37.652996, 37.616074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342602, 37.430683, 37.702068>,  <43.296005, 37.060162, 37.845394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342602, 37.430683, 37.702068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472962, 0.368977, 0.800102,
		0.873348, 0.076263, 0.481090,
		0.116493, 0.926304, -0.358315,
		43.377548, 37.708576, 37.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415554, 37.526344, 38.485985>,  <43.296005, 37.060162, 37.845394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415554, 37.526344, 38.485985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309433, 37.763268, 38.181671>,  <43.245762, 37.905422, 37.999084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309433, 37.763268, 38.181671>,  <43.415554, 37.526344, 38.485985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309433, 37.763268, 38.181671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540911, 0.561752, 0.625980,
		0.798142, 0.577589, 0.171350,
		-0.265303, 0.592305, -0.760782,
		43.229843, 37.940960, 37.953438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459446, 38.235298, 38.795151>,  <43.415554, 37.526344, 38.485985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459446, 38.235298, 38.795151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221001, 38.255711, 38.474640>,  <43.077934, 38.267960, 38.282333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221001, 38.255711, 38.474640>,  <43.459446, 38.235298, 38.795151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221001, 38.255711, 38.474640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421683, 0.829359, 0.366535,
		0.683254, 0.556381, -0.472868,
		-0.596110, 0.051036, -0.801279,
		43.042168, 38.271023, 38.234257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410358, 39.026299, 38.535522>,  <43.459446, 38.235298, 38.795151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410358, 39.026299, 38.535522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097057, 38.834900, 38.376751>,  <42.909077, 38.720062, 38.281490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097057, 38.834900, 38.376751>,  <43.410358, 39.026299, 38.535522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097057, 38.834900, 38.376751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535732, 0.843421, 0.040414,
		0.315437, 0.244300, -0.916961,
		-0.783257, -0.478497, -0.396925,
		42.862080, 38.691349, 38.257675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106907, 39.500694, 38.170792>,  <43.410358, 39.026299, 38.535522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106907, 39.500694, 38.170792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822506, 39.229618, 38.245861>,  <42.651867, 39.066975, 38.290905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822506, 39.229618, 38.245861>,  <43.106907, 39.500694, 38.170792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822506, 39.229618, 38.245861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647901, 0.735067, 0.199751,
		-0.273324, 0.020426, -0.961705,
		-0.710998, -0.677686, 0.187677,
		42.609207, 39.026314, 38.302166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571407, 39.652309, 37.744183>,  <43.106907, 39.500694, 38.170792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571407, 39.652309, 37.744183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419411, 39.421112, 38.033051>,  <42.328213, 39.282394, 38.206371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419411, 39.421112, 38.033051>,  <42.571407, 39.652309, 37.744183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419411, 39.421112, 38.033051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808532, 0.586789, 0.044204,
		-0.449310, -0.567100, -0.690303,
		-0.379994, -0.577994, 0.722169,
		42.305412, 39.247715, 38.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866585, 39.540417, 37.558872>,  <42.571407, 39.652309, 37.744183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866585, 39.540417, 37.558872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935013, 39.481117, 37.948490>,  <41.976070, 39.445538, 38.182259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935013, 39.481117, 37.948490>,  <41.866585, 39.540417, 37.558872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935013, 39.481117, 37.948490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502065, 0.837513, 0.215646,
		-0.847742, -0.525923, 0.068843,
		0.171070, -0.148248, 0.974042,
		41.986336, 39.436642, 38.240704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199806, 39.693645, 37.848053>,  <41.866585, 39.540417, 37.558872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199806, 39.693645, 37.848053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461155, 39.694244, 38.150867>,  <41.617966, 39.694603, 38.332554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461155, 39.694244, 38.150867>,  <41.199806, 39.693645, 37.848053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461155, 39.694244, 38.150867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434435, 0.819692, 0.373325,
		-0.619972, -0.572803, 0.536219,
		0.653377, 0.001501, 0.757032,
		41.657169, 39.694695, 38.377975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.054253, 38.645645, 37.234806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019238, 38.372307, 37.524734>,  <37.998226, 38.208302, 37.698692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019238, 38.372307, 37.524734>,  <38.054253, 38.645645, 37.234806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019238, 38.372307, 37.524734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066940, -0.730010, -0.680150,
		0.993909, -0.011022, 0.109650,
		-0.087542, -0.683348, 0.724826,
		37.992973, 38.167301, 37.742184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572914, 38.241142, 37.063759>,  <38.054253, 38.645645, 37.234806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572914, 38.241142, 37.063759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326401, 38.033669, 37.300793>,  <38.178493, 37.909184, 37.443012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326401, 38.033669, 37.300793>,  <38.572914, 38.241142, 37.063759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326401, 38.033669, 37.300793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034326, -0.734060, -0.678217,
		0.786775, -0.438315, 0.434586,
		-0.616285, -0.518686, 0.592586,
		38.141514, 37.878063, 37.478569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810703, 37.543171, 37.000751>,  <38.572914, 38.241142, 37.063759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810703, 37.543171, 37.000751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439095, 37.519749, 37.146900>,  <38.216129, 37.505695, 37.234589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439095, 37.519749, 37.146900>,  <38.810703, 37.543171, 37.000751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439095, 37.519749, 37.146900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201666, -0.747756, -0.632608,
		0.310251, -0.661387, 0.682870,
		-0.929018, -0.058556, 0.365371,
		38.160389, 37.502182, 37.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721710, 36.874115, 37.115578>,  <38.810703, 37.543171, 37.000751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721710, 36.874115, 37.115578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353462, 37.030212, 37.110325>,  <38.132515, 37.123871, 37.107174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353462, 37.030212, 37.110325>,  <38.721710, 36.874115, 37.115578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353462, 37.030212, 37.110325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330774, -0.797307, -0.504867,
		-0.207492, -0.460446, 0.863097,
		-0.920617, 0.390245, -0.013131,
		38.077278, 37.147285, 37.106384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241978, 36.386936, 37.373360>,  <38.721710, 36.874115, 37.115578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241978, 36.386936, 37.373360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017403, 36.614292, 37.132790>,  <37.882656, 36.750706, 36.988449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017403, 36.614292, 37.132790>,  <38.241978, 36.386936, 37.373360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017403, 36.614292, 37.132790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282185, -0.814725, -0.506553,
		-0.777916, -0.114689, 0.617814,
		-0.561444, 0.568393, -0.601424,
		37.848972, 36.784809, 36.952362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612938, 36.033188, 37.354103>,  <38.241978, 36.386936, 37.373360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612938, 36.033188, 37.354103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552887, 36.302036, 37.064079>,  <37.516857, 36.463345, 36.890064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552887, 36.302036, 37.064079>,  <37.612938, 36.033188, 37.354103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552887, 36.302036, 37.064079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298592, -0.729952, -0.614828,
		-0.942500, 0.124197, 0.310274,
		-0.150125, 0.672120, -0.725064,
		37.507851, 36.503674, 36.846561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900017, 35.994465, 37.086094>,  <37.612938, 36.033188, 37.354103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900017, 35.994465, 37.086094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131481, 36.151600, 36.800205>,  <37.270359, 36.245880, 36.628670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131481, 36.151600, 36.800205>,  <36.900017, 35.994465, 37.086094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131481, 36.151600, 36.800205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205177, -0.778044, -0.593759,
		-0.789340, 0.490229, -0.369619,
		0.578657, 0.392840, -0.714725,
		37.305077, 36.269451, 36.585789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505424, 35.853775, 36.613235>,  <36.900017, 35.994465, 37.086094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505424, 35.853775, 36.613235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853882, 35.931637, 36.432915>,  <37.062954, 35.978355, 36.324722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853882, 35.931637, 36.432915>,  <36.505424, 35.853775, 36.613235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853882, 35.931637, 36.432915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124870, -0.800067, -0.586772,
		-0.474889, 0.567453, -0.672665,
		0.871142, 0.194656, -0.450801,
		37.115223, 35.990032, 36.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354622, 35.922512, 35.860970>,  <36.505424, 35.853775, 36.613235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354622, 35.922512, 35.860970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743046, 35.830025, 35.884903>,  <36.976101, 35.774532, 35.899261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743046, 35.830025, 35.884903>,  <36.354622, 35.922512, 35.860970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743046, 35.830025, 35.884903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130022, -0.721926, -0.679645,
		0.200343, 0.652196, -0.731097,
		0.971060, -0.231221, 0.059833,
		37.034363, 35.760658, 35.902851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578732, 35.839420, 35.193806>,  <36.354622, 35.922512, 35.860970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578732, 35.839420, 35.193806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853870, 35.650227, 35.414043>,  <37.018955, 35.536709, 35.546185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853870, 35.650227, 35.414043>,  <36.578732, 35.839420, 35.193806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853870, 35.650227, 35.414043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161535, -0.839267, -0.519169,
		0.707654, 0.268168, -0.653691,
		0.687846, -0.472986, 0.550592,
		37.060223, 35.508331, 35.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082001, 35.548996, 34.777424>,  <36.578732, 35.839420, 35.193806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082001, 35.548996, 34.777424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108181, 35.323200, 35.106560>,  <37.123890, 35.187721, 35.304043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108181, 35.323200, 35.106560>,  <37.082001, 35.548996, 34.777424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108181, 35.323200, 35.106560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, -0.819763, -0.568126,
		0.995236, 0.096639, -0.012862,
		0.065447, -0.564491, 0.822841,
		37.127815, 35.153854, 35.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673946, 35.047096, 34.702175>,  <37.082001, 35.548996, 34.777424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673946, 35.047096, 34.702175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437103, 34.874531, 34.974438>,  <37.294998, 34.770992, 35.137794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437103, 34.874531, 34.974438>,  <37.673946, 35.047096, 34.702175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437103, 34.874531, 34.974438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173360, -0.893050, -0.415219,
		0.786992, -0.127855, 0.603570,
		-0.592106, -0.431410, 0.680658,
		37.259472, 34.745110, 35.178635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313461, 35.238060, 34.969505>,  <37.673946, 35.047096, 34.702175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313461, 35.238060, 34.969505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535530, 34.937828, 34.826164>,  <38.668770, 34.757690, 34.740158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535530, 34.937828, 34.826164>,  <38.313461, 35.238060, 34.969505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535530, 34.937828, 34.826164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792706, -0.607925, 0.045221,
		-0.251795, 0.258963, -0.932490,
		0.555173, -0.750577, -0.358354,
		38.702084, 34.712654, 34.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081234, 35.311024, 34.939892>,  <38.313461, 35.238060, 34.969505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081234, 35.311024, 34.939892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019539, 35.378426, 34.550468>,  <38.982521, 35.418869, 34.316814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019539, 35.378426, 34.550468>,  <39.081234, 35.311024, 34.939892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019539, 35.378426, 34.550468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614432, -0.755286, -0.228070,
		-0.773746, -0.633363, 0.012958,
		-0.154238, 0.168506, -0.973558,
		38.973267, 35.428978, 34.258400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688908, 35.277424, 34.601608>,  <39.081234, 35.311024, 34.939892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688908, 35.277424, 34.601608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053215, 35.122406, 34.544605>,  <40.271801, 35.029396, 34.510403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053215, 35.122406, 34.544605>,  <39.688908, 35.277424, 34.601608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053215, 35.122406, 34.544605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042567, -0.431400, 0.901156,
		-0.410704, -0.814684, -0.409404,
		0.910775, -0.387536, -0.142499,
		40.326447, 35.006142, 34.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620182, 34.654091, 34.913170>,  <39.688908, 35.277424, 34.601608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620182, 34.654091, 34.913170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014385, 34.720375, 34.898651>,  <40.250908, 34.760143, 34.889938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014385, 34.720375, 34.898651>,  <39.620182, 34.654091, 34.913170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014385, 34.720375, 34.898651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111463, -0.471261, 0.874923,
		0.127875, -0.866288, -0.482901,
		0.985507, 0.165706, -0.036297,
		40.310036, 34.770088, 34.887760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941265, 33.988583, 34.973999>,  <39.620182, 34.654091, 34.913170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941265, 33.988583, 34.973999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179939, 34.289177, 35.086597>,  <40.323143, 34.469532, 35.154156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179939, 34.289177, 35.086597>,  <39.941265, 33.988583, 34.973999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179939, 34.289177, 35.086597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039064, -0.377572, 0.925156,
		0.801526, -0.541028, -0.254647,
		0.596682, 0.751484, 0.281498,
		40.358944, 34.514622, 35.171047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522919, 33.757259, 35.292740>,  <39.941265, 33.988583, 34.973999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522919, 33.757259, 35.292740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543365, 34.133450, 35.427135>,  <40.555634, 34.359165, 35.507774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543365, 34.133450, 35.427135>,  <40.522919, 33.757259, 35.292740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543365, 34.133450, 35.427135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046116, -0.338294, 0.939910,
		0.997628, -0.032546, -0.060662,
		0.051112, 0.940477, 0.335991,
		40.558701, 34.415592, 35.527931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925911, 33.765404, 35.900501>,  <40.522919, 33.757259, 35.292740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925911, 33.765404, 35.900501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761490, 34.129444, 35.921509>,  <40.662838, 34.347866, 35.934113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761490, 34.129444, 35.921509>,  <40.925911, 33.765404, 35.900501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761490, 34.129444, 35.921509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025657, -0.046038, 0.998610,
		0.911251, 0.411828, -0.004427,
		-0.411052, 0.910098, 0.052518,
		40.638176, 34.402473, 35.937263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424000, 34.135925, 36.326088>,  <40.925911, 33.765404, 35.900501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424000, 34.135925, 36.326088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062248, 34.302494, 36.363384>,  <40.845196, 34.402435, 36.385761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062248, 34.302494, 36.363384>,  <41.424000, 34.135925, 36.326088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062248, 34.302494, 36.363384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138131, 0.078930, 0.987264,
		0.403759, 0.905739, -0.128903,
		-0.904378, 0.416422, 0.093242,
		40.790936, 34.427422, 36.391357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579987, 34.593784, 36.894402>,  <41.424000, 34.135925, 36.326088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579987, 34.593784, 36.894402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182892, 34.602093, 36.847000>,  <40.944633, 34.607079, 36.818558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182892, 34.602093, 36.847000>,  <41.579987, 34.593784, 36.894402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182892, 34.602093, 36.847000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113004, 0.177032, 0.977696,
		0.041286, 0.983986, -0.173399,
		-0.992736, 0.020771, -0.118503,
		40.885071, 34.608322, 36.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323570, 35.203663, 37.151070>,  <41.579987, 34.593784, 36.894402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323570, 35.203663, 37.151070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991966, 34.980114, 37.143017>,  <40.793003, 34.845985, 37.138184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991966, 34.980114, 37.143017>,  <41.323570, 35.203663, 37.151070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991966, 34.980114, 37.143017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238122, 0.320181, 0.916942,
		-0.506009, 0.764946, -0.398513,
		-0.829007, -0.558876, -0.020136,
		40.743263, 34.812450, 37.136974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705162, 35.723129, 37.274254>,  <41.323570, 35.203663, 37.151070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705162, 35.723129, 37.274254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620636, 35.350563, 37.392784>,  <40.569920, 35.127022, 37.463902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620636, 35.350563, 37.392784>,  <40.705162, 35.723129, 37.274254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620636, 35.350563, 37.392784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232542, 0.342373, 0.910332,
		-0.949352, 0.123461, -0.288943,
		-0.211316, -0.931417, 0.296323,
		40.557240, 35.071136, 37.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059349, 35.752110, 37.684925>,  <40.705162, 35.723129, 37.274254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059349, 35.752110, 37.684925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174091, 35.382065, 37.784428>,  <40.242935, 35.160038, 37.844128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174091, 35.382065, 37.784428>,  <40.059349, 35.752110, 37.684925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174091, 35.382065, 37.784428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333134, 0.147131, 0.931329,
		-0.898185, -0.350024, -0.265982,
		0.286854, -0.925114, 0.248756,
		40.260147, 35.104530, 37.859055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537003, 35.433376, 38.006645>,  <40.059349, 35.752110, 37.684925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537003, 35.433376, 38.006645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863335, 35.238632, 38.131474>,  <40.059135, 35.121784, 38.206371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863335, 35.238632, 38.131474>,  <39.537003, 35.433376, 38.006645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863335, 35.238632, 38.131474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267653, 0.160479, 0.950057,
		-0.512626, -0.858612, 0.000614,
		0.815829, -0.486860, 0.312075,
		40.108082, 35.092575, 38.225098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406147, 34.958195, 38.502144>,  <39.537003, 35.433376, 38.006645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406147, 34.958195, 38.502144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800461, 34.986847, 38.562939>,  <40.037048, 35.004040, 38.599415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800461, 34.986847, 38.562939>,  <39.406147, 34.958195, 38.502144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800461, 34.986847, 38.562939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162021, 0.165578, 0.972797,
		0.044517, -0.983592, 0.174830,
		0.985783, 0.071632, 0.151991,
		40.096195, 35.008339, 38.608536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454308, 34.819904, 39.156651>,  <39.406147, 34.958195, 38.502144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454308, 34.819904, 39.156651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813652, 34.987549, 39.104038>,  <40.029259, 35.088135, 39.072472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813652, 34.987549, 39.104038>,  <39.454308, 34.819904, 39.156651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813652, 34.987549, 39.104038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049982, 0.395021, 0.917312,
		0.436413, -0.817499, 0.375818,
		0.898357, 0.419111, -0.131532,
		40.083160, 35.113281, 39.064579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864250, 34.734634, 39.761230>,  <39.454308, 34.819904, 39.156651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864250, 34.734634, 39.761230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033188, 35.043179, 39.570808>,  <40.134552, 35.228306, 39.456554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033188, 35.043179, 39.570808>,  <39.864250, 34.734634, 39.761230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033188, 35.043179, 39.570808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111206, 0.565321, 0.817340,
		0.899588, -0.292258, 0.324540,
		0.422344, 0.771361, -0.476055,
		40.159893, 35.274586, 39.427994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868366, 34.050453, 40.068321>,  <39.864250, 34.734634, 39.761230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868366, 34.050453, 40.068321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653793, 33.912991, 40.376640>,  <39.525047, 33.830513, 40.561634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653793, 33.912991, 40.376640>,  <39.868366, 34.050453, 40.068321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653793, 33.912991, 40.376640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493572, -0.613094, -0.616849,
		0.684560, -0.711346, 0.159265,
		-0.536437, -0.343661, 0.770800,
		39.492863, 33.809891, 40.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937988, 33.302547, 40.068634>,  <39.868366, 34.050453, 40.068321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937988, 33.302547, 40.068634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596008, 33.406445, 40.248226>,  <39.390820, 33.468784, 40.355984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596008, 33.406445, 40.248226>,  <39.937988, 33.302547, 40.068634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596008, 33.406445, 40.248226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509213, -0.585131, -0.631128,
		0.098781, -0.768214, 0.632526,
		-0.854953, 0.259747, 0.448985,
		39.339523, 33.484367, 40.382923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579048, 32.749619, 40.109520>,  <39.937988, 33.302547, 40.068634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579048, 32.749619, 40.109520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280952, 33.008038, 40.175541>,  <39.102097, 33.163090, 40.215153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280952, 33.008038, 40.175541>,  <39.579048, 32.749619, 40.109520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280952, 33.008038, 40.175541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528479, -0.421324, -0.737018,
		-0.406604, -0.636485, 0.655408,
		-0.745240, 0.646044, 0.165057,
		39.057381, 33.201851, 40.225056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023052, 32.362858, 40.125702>,  <39.579048, 32.749619, 40.109520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023052, 32.362858, 40.125702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870789, 32.728493, 40.069782>,  <38.779430, 32.947872, 40.036228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870789, 32.728493, 40.069782>,  <39.023052, 32.362858, 40.125702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870789, 32.728493, 40.069782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559002, -0.347904, -0.752649,
		-0.736623, -0.208355, 0.643409,
		-0.380663, 0.914085, -0.139804,
		38.756588, 33.002720, 40.027840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399490, 32.249355, 39.999439>,  <39.023052, 32.362858, 40.125702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399490, 32.249355, 39.999439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430099, 32.614063, 39.838032>,  <38.448463, 32.832886, 39.741188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430099, 32.614063, 39.838032>,  <38.399490, 32.249355, 39.999439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430099, 32.614063, 39.838032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539994, -0.302320, -0.785500,
		-0.838184, 0.278003, 0.469215,
		0.076519, 0.911766, -0.403519,
		38.453056, 32.887592, 39.716976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756130, 32.346260, 39.664886>,  <38.399490, 32.249355, 39.999439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756130, 32.346260, 39.664886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000301, 32.622055, 39.508942>,  <38.146805, 32.787533, 39.415375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000301, 32.622055, 39.508942>,  <37.756130, 32.346260, 39.664886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000301, 32.622055, 39.508942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401165, -0.155283, -0.902748,
		-0.682968, 0.707460, 0.181808,
		0.610427, 0.689483, -0.389862,
		38.183430, 32.828899, 39.391983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401939, 32.777050, 39.304218>,  <37.756130, 32.346260, 39.664886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401939, 32.777050, 39.304218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752804, 32.836857, 39.121685>,  <37.963322, 32.872742, 39.012165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752804, 32.836857, 39.121685>,  <37.401939, 32.777050, 39.304218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752804, 32.836857, 39.121685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443458, -0.112343, -0.889227,
		-0.184216, 0.982357, -0.032240,
		0.877160, 0.149512, -0.456330,
		38.015953, 32.881710, 38.984787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227482, 33.133247, 38.768459>,  <37.401939, 32.777050, 39.304218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227482, 33.133247, 38.768459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599411, 33.025288, 38.668396>,  <37.822567, 32.960510, 38.608356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599411, 33.025288, 38.668396>,  <37.227482, 33.133247, 38.768459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599411, 33.025288, 38.668396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255758, 0.014830, -0.966627,
		0.264605, 0.962774, -0.055241,
		0.929824, -0.269902, -0.250161,
		37.878357, 32.944317, 38.593349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466835, 33.514637, 38.236305>,  <37.227482, 33.133247, 38.768459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466835, 33.514637, 38.236305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693935, 33.185917, 38.217148>,  <37.830196, 32.988686, 38.205654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693935, 33.185917, 38.217148>,  <37.466835, 33.514637, 38.236305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693935, 33.185917, 38.217148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221903, -0.096761, -0.970256,
		0.792725, 0.561495, -0.237297,
		0.567755, -0.821803, -0.047893,
		37.864262, 32.939377, 38.202782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975689, 33.655880, 37.739143>,  <37.466835, 33.514637, 38.236305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975689, 33.655880, 37.739143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918739, 33.261074, 37.768871>,  <37.884567, 33.024189, 37.786709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918739, 33.261074, 37.768871>,  <37.975689, 33.655880, 37.739143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918739, 33.261074, 37.768871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319659, -0.025213, -0.947197,
		0.936775, -0.158616, -0.311920,
		-0.142376, -0.987019, 0.074322,
		37.876026, 32.964970, 37.791168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128975, 33.398651, 37.026581>,  <37.975689, 33.655880, 37.739143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128975, 33.398651, 37.026581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924850, 33.114246, 37.220093>,  <37.802376, 32.943604, 37.336201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924850, 33.114246, 37.220093>,  <38.128975, 33.398651, 37.026581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924850, 33.114246, 37.220093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435774, -0.271182, -0.858232,
		0.741405, -0.648786, -0.171452,
		-0.510314, -0.711012, 0.483780,
		37.771755, 32.900944, 37.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991276, 32.932713, 36.487125>,  <38.128975, 33.398651, 37.026581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991276, 32.932713, 36.487125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739281, 32.791054, 36.763588>,  <37.588085, 32.706059, 36.929466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739281, 32.791054, 36.763588>,  <37.991276, 32.932713, 36.487125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739281, 32.791054, 36.763588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634757, -0.277943, -0.720994,
		0.447438, -0.892933, -0.049695,
		-0.629987, -0.354144, 0.691157,
		37.550285, 32.684811, 36.970936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.920933, 35.304039, 43.441097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524353, 35.317612, 43.491512>,  <41.286407, 35.325756, 43.521759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524353, 35.317612, 43.491512>,  <41.920933, 35.304039, 43.441097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524353, 35.317612, 43.491512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126088, -0.498588, -0.857619,
		0.033735, -0.866174, 0.498602,
		-0.991445, 0.033936, 0.126035,
		41.226921, 35.327793, 43.529324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703789, 34.630272, 43.328293>,  <41.920933, 35.304039, 43.441097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703789, 34.630272, 43.328293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334770, 34.784229, 43.317204>,  <41.113358, 34.876602, 43.310551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334770, 34.784229, 43.317204>,  <41.703789, 34.630272, 43.328293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334770, 34.784229, 43.317204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207947, -0.556380, -0.804487,
		-0.325064, -0.736412, 0.593322,
		-0.922546, 0.384889, -0.027724,
		41.058006, 34.899696, 43.308887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264870, 34.108528, 43.185814>,  <41.703789, 34.630272, 43.328293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264870, 34.108528, 43.185814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046093, 34.432594, 43.101452>,  <40.914829, 34.627033, 43.050835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046093, 34.432594, 43.101452>,  <41.264870, 34.108528, 43.185814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046093, 34.432594, 43.101452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359127, -0.454628, -0.815072,
		-0.756232, -0.370052, 0.539607,
		-0.546939, 0.810170, -0.210908,
		40.882011, 34.675644, 43.038181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526001, 33.998035, 43.241760>,  <41.264870, 34.108528, 43.185814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526001, 33.998035, 43.241760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581253, 34.298183, 42.983189>,  <40.614403, 34.478271, 42.828045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581253, 34.298183, 42.983189>,  <40.526001, 33.998035, 43.241760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581253, 34.298183, 42.983189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609454, -0.450083, -0.652680,
		-0.780696, 0.484123, 0.395145,
		0.138129, 0.750367, -0.646429,
		40.622692, 34.523293, 42.789261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889050, 33.970055, 42.823071>,  <40.526001, 33.998035, 43.241760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889050, 33.970055, 42.823071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125202, 34.210575, 42.607708>,  <40.266895, 34.354889, 42.478493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125202, 34.210575, 42.607708>,  <39.889050, 33.970055, 42.823071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125202, 34.210575, 42.607708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551704, -0.186249, -0.812979,
		-0.589125, 0.777010, 0.221784,
		0.590385, 0.601305, -0.538403,
		40.302319, 34.390968, 42.446186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498310, 34.567974, 42.513035>,  <39.889050, 33.970055, 42.823071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498310, 34.567974, 42.513035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812645, 34.508156, 42.273003>,  <40.001244, 34.472263, 42.128983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812645, 34.508156, 42.273003>,  <39.498310, 34.567974, 42.513035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812645, 34.508156, 42.273003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618111, -0.158405, -0.769965,
		0.020092, 0.975983, -0.216918,
		0.785834, -0.149549, -0.600084,
		40.048393, 34.463291, 42.092979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358177, 34.935505, 41.814480>,  <39.498310, 34.567974, 42.513035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358177, 34.935505, 41.814480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.634789, 34.653965, 41.749516>,  <39.800755, 34.485039, 41.710537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.634789, 34.653965, 41.749516>,  <39.358177, 34.935505, 41.814480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634789, 34.653965, 41.749516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510379, -0.316986, -0.799396,
		0.511174, 0.635698, -0.578437,
		0.691530, -0.703852, -0.162412,
		39.842247, 34.442810, 41.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414387, 35.049889, 41.141064>,  <39.358177, 34.935505, 41.814480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414387, 35.049889, 41.141064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538322, 34.679935, 41.229233>,  <39.612686, 34.457962, 41.282135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538322, 34.679935, 41.229233>,  <39.414387, 35.049889, 41.141064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538322, 34.679935, 41.229233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540553, -0.362075, -0.759410,
		0.782177, 0.116146, -0.612135,
		0.309841, -0.924885, 0.220424,
		39.631275, 34.402470, 41.295361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759148, 34.763020, 40.491341>,  <39.414387, 35.049889, 41.141064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759148, 34.763020, 40.491341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 34.450508, 40.716431>,  <39.586288, 34.263000, 40.851482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.651112, 34.450508, 40.716431>,  <39.759148, 34.763020, 40.491341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651112, 34.450508, 40.716431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510928, -0.379070, -0.771530,
		0.816091, -0.495892, -0.296795,
		-0.270090, -0.781279, 0.562721,
		39.570084, 34.216125, 40.885246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365341, 34.961235, 40.216324>,  <39.759148, 34.763020, 40.491341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365341, 34.961235, 40.216324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310013, 35.282722, 39.984840>,  <40.276817, 35.475616, 39.845951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310013, 35.282722, 39.984840>,  <40.365341, 34.961235, 40.216324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310013, 35.282722, 39.984840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085860, 0.572390, 0.815474,
		0.986659, 0.162483, -0.010165,
		-0.138318, 0.803722, -0.578704,
		40.268517, 35.523838, 39.811230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807125, 35.478558, 40.442707>,  <40.365341, 34.961235, 40.216324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807125, 35.478558, 40.442707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558056, 35.695492, 40.217091>,  <40.408615, 35.825653, 40.081718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558056, 35.695492, 40.217091>,  <40.807125, 35.478558, 40.442707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558056, 35.695492, 40.217091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001457, 0.721645, 0.692262,
		0.782477, 0.430234, -0.450142,
		-0.622678, 0.542335, -0.564044,
		40.371254, 35.858192, 40.047878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213203, 36.111454, 40.304008>,  <40.807125, 35.478558, 40.442707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213203, 36.111454, 40.304008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822838, 36.172207, 40.241360>,  <40.588619, 36.208660, 40.203770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822838, 36.172207, 40.241360>,  <41.213203, 36.111454, 40.304008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822838, 36.172207, 40.241360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006081, 0.736546, 0.676361,
		0.218090, 0.659114, -0.719725,
		-0.975910, 0.151884, -0.156625,
		40.530064, 36.217773, 40.194370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182495, 36.862007, 40.243950>,  <41.213203, 36.111454, 40.304008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182495, 36.862007, 40.243950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.823868, 36.736900, 40.369392>,  <40.608692, 36.661839, 40.444656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.823868, 36.736900, 40.369392>,  <41.182495, 36.862007, 40.243950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823868, 36.736900, 40.369392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006914, 0.698090, 0.715977,
		-0.442857, 0.644089, -0.623721,
		-0.896566, -0.312762, 0.313607,
		40.554897, 36.643070, 40.463474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908222, 37.543568, 40.350048>,  <41.182495, 36.862007, 40.243950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908222, 37.543568, 40.350048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676662, 37.271244, 40.529545>,  <40.537727, 37.107849, 40.637241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676662, 37.271244, 40.529545>,  <40.908222, 37.543568, 40.350048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676662, 37.271244, 40.529545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028879, 0.567108, 0.823137,
		-0.814885, 0.463558, -0.347961,
		-0.578903, -0.680810, 0.448740,
		40.502991, 37.067001, 40.664165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308590, 37.929047, 40.537941>,  <40.908222, 37.543568, 40.350048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308590, 37.929047, 40.537941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358368, 37.593456, 40.749840>,  <40.388233, 37.392101, 40.876980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358368, 37.593456, 40.749840>,  <40.308590, 37.929047, 40.537941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358368, 37.593456, 40.749840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167806, 0.544003, 0.822133,
		-0.977934, -0.013415, 0.208483,
		0.124445, -0.838976, 0.529748,
		40.395702, 37.341763, 40.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001060, 38.042225, 41.135796>,  <40.308590, 37.929047, 40.537941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001060, 38.042225, 41.135796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212231, 37.717232, 41.234726>,  <40.338932, 37.522236, 41.294083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212231, 37.717232, 41.234726>,  <40.001060, 38.042225, 41.135796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212231, 37.717232, 41.234726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185518, 0.394503, 0.899972,
		-0.828782, -0.429233, 0.358998,
		0.527923, -0.812482, 0.247326,
		40.370609, 37.473488, 41.308926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637707, 37.653175, 41.767483>,  <40.001060, 38.042225, 41.135796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637707, 37.653175, 41.767483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030025, 37.580341, 41.739559>,  <40.265419, 37.536640, 41.722805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030025, 37.580341, 41.739559>,  <39.637707, 37.653175, 41.767483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030025, 37.580341, 41.739559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144911, 0.440957, 0.885753,
		-0.130500, -0.878864, 0.458877,
		0.980801, -0.182087, -0.069812,
		40.324265, 37.525715, 41.718616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865765, 37.689045, 42.428310>,  <39.637707, 37.653175, 41.767483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865765, 37.689045, 42.428310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226562, 37.683350, 42.255707>,  <40.443043, 37.679932, 42.152145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226562, 37.683350, 42.255707>,  <39.865765, 37.689045, 42.428310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226562, 37.683350, 42.255707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379576, 0.502403, 0.776861,
		0.205731, -0.864516, 0.458569,
		0.901996, -0.014237, -0.431510,
		40.497162, 37.679077, 42.126255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331612, 37.510223, 42.967583>,  <39.865765, 37.689045, 42.428310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331612, 37.510223, 42.967583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.574863, 37.686691, 42.703598>,  <40.720814, 37.792572, 42.545208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.574863, 37.686691, 42.703598>,  <40.331612, 37.510223, 42.967583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574863, 37.686691, 42.703598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521631, 0.404601, 0.751132,
		0.598394, -0.801044, 0.015925,
		0.608133, 0.441166, -0.659960,
		40.757305, 37.819042, 42.505611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984138, 37.397530, 43.277657>,  <40.331612, 37.510223, 42.967583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984138, 37.397530, 43.277657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039886, 37.695583, 43.016781>,  <41.073334, 37.874416, 42.860256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039886, 37.695583, 43.016781>,  <40.984138, 37.397530, 43.277657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039886, 37.695583, 43.016781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603802, 0.458069, 0.652377,
		0.784857, -0.484712, -0.386075,
		0.139366, 0.745136, -0.652188,
		41.081696, 37.919125, 42.821125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712128, 37.536152, 43.286362>,  <40.984138, 37.397530, 43.277657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712128, 37.536152, 43.286362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527912, 37.866432, 43.156055>,  <41.417381, 38.064598, 43.077869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527912, 37.866432, 43.156055>,  <41.712128, 37.536152, 43.286362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527912, 37.866432, 43.156055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455755, 0.534900, 0.711456,
		0.761701, 0.179184, -0.622659,
		-0.460542, 0.825697, -0.325770,
		41.389751, 38.114140, 43.058323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188789, 38.092781, 43.487724>,  <41.712128, 37.536152, 43.286362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188789, 38.092781, 43.487724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852272, 38.294373, 43.409508>,  <41.650364, 38.415329, 43.362579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852272, 38.294373, 43.409508>,  <42.188789, 38.092781, 43.487724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852272, 38.294373, 43.409508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253851, 0.687662, 0.680207,
		0.477275, 0.522613, -0.706459,
		-0.841289, 0.503981, -0.195538,
		41.599884, 38.445568, 43.350845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375069, 38.698254, 43.615273>,  <42.188789, 38.092781, 43.487724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375069, 38.698254, 43.615273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980537, 38.763294, 43.625992>,  <41.743820, 38.802319, 43.632423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980537, 38.763294, 43.625992>,  <42.375069, 38.698254, 43.615273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980537, 38.763294, 43.625992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133147, 0.690479, 0.710993,
		0.097103, 0.704840, -0.702689,
		-0.986328, 0.162600, 0.026800,
		41.684639, 38.812073, 43.634033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.493179, 38.350590, 45.081161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697212, 38.013645, 45.150723>,  <35.819633, 37.811478, 45.192459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697212, 38.013645, 45.150723>,  <35.493179, 38.350590, 45.081161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697212, 38.013645, 45.150723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063748, -0.238649, -0.969011,
		0.857759, 0.483191, -0.175430,
		0.510084, -0.842361, 0.173901,
		35.850239, 37.760937, 45.202892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876389, 38.236805, 44.461937>,  <35.493179, 38.350590, 45.081161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876389, 38.236805, 44.461937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923698, 37.878033, 44.632362>,  <35.952084, 37.662769, 44.734619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923698, 37.878033, 44.632362>,  <35.876389, 38.236805, 44.461937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923698, 37.878033, 44.632362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143614, -0.440017, -0.886431,
		0.982541, 0.043652, -0.180853,
		0.118273, -0.896928, 0.426065,
		35.959179, 37.608955, 44.760181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291630, 37.901527, 43.989269>,  <35.876389, 38.236805, 44.461937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291630, 37.901527, 43.989269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091198, 37.613449, 44.181206>,  <35.970940, 37.440605, 44.296368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091198, 37.613449, 44.181206>,  <36.291630, 37.901527, 43.989269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091198, 37.613449, 44.181206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183611, -0.453372, -0.872204,
		0.845700, -0.525146, 0.094939,
		-0.501078, -0.720191, 0.479839,
		35.940876, 37.397392, 44.325157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375019, 37.215904, 43.635666>,  <36.291630, 37.901527, 43.989269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375019, 37.215904, 43.635666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042587, 37.135830, 43.843220>,  <35.843128, 37.087788, 43.967751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042587, 37.135830, 43.843220>,  <36.375019, 37.215904, 43.635666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042587, 37.135830, 43.843220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344394, -0.547342, -0.762765,
		0.436698, -0.812616, 0.385941,
		-0.831076, -0.200182, 0.518883,
		35.793266, 37.075775, 43.998886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243271, 36.425678, 43.567253>,  <36.375019, 37.215904, 43.635666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243271, 36.425678, 43.567253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897743, 36.601456, 43.665810>,  <35.690426, 36.706921, 43.724941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897743, 36.601456, 43.665810>,  <36.243271, 36.425678, 43.567253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897743, 36.601456, 43.665810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484753, -0.591768, -0.644069,
		-0.137228, -0.675796, 0.724202,
		-0.863819, 0.439443, 0.246387,
		35.638599, 36.733288, 43.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804611, 35.930420, 43.606529>,  <36.243271, 36.425678, 43.567253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804611, 35.930420, 43.606529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576805, 36.257706, 43.575100>,  <35.440121, 36.454079, 43.556244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576805, 36.257706, 43.575100>,  <35.804611, 35.930420, 43.606529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576805, 36.257706, 43.575100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557635, -0.454820, -0.694393,
		-0.603900, -0.351653, 0.715294,
		-0.569515, 0.818217, -0.078572,
		35.405952, 36.503170, 43.551529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177227, 35.644295, 43.415802>,  <35.804611, 35.930420, 43.606529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177227, 35.644295, 43.415802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135887, 36.031586, 43.324722>,  <35.111084, 36.263962, 43.270073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135887, 36.031586, 43.324722>,  <35.177227, 35.644295, 43.415802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135887, 36.031586, 43.324722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624948, -0.241303, -0.742437,
		-0.773796, 0.065572, 0.630032,
		-0.103346, 0.968232, -0.227698,
		35.104885, 36.322056, 43.256413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470932, 35.751526, 43.520405>,  <35.177227, 35.644295, 43.415802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470932, 35.751526, 43.520405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614273, 36.020649, 43.261513>,  <34.700279, 36.182125, 43.106178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614273, 36.020649, 43.261513>,  <34.470932, 35.751526, 43.520405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614273, 36.020649, 43.261513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539116, -0.416862, -0.731833,
		-0.762191, 0.611189, 0.213338,
		0.358356, 0.672811, -0.647230,
		34.721779, 36.222492, 43.067345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898586, 35.901810, 43.092632>,  <34.470932, 35.751526, 43.520405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898586, 35.901810, 43.092632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209793, 36.036545, 42.880508>,  <34.396519, 36.117386, 42.753235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209793, 36.036545, 42.880508>,  <33.898586, 35.901810, 43.092632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209793, 36.036545, 42.880508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398962, -0.387147, -0.831232,
		-0.485296, 0.858288, -0.166822,
		0.778021, 0.336838, -0.530305,
		34.443199, 36.137596, 42.721416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580425, 36.193367, 42.570683>,  <33.898586, 35.901810, 43.092632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580425, 36.193367, 42.570683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946018, 36.127708, 42.422256>,  <34.165375, 36.088314, 42.333202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946018, 36.127708, 42.422256>,  <33.580425, 36.193367, 42.570683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946018, 36.127708, 42.422256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397867, -0.183164, -0.898973,
		0.079595, 0.969282, -0.232717,
		0.913984, -0.164144, -0.371066,
		34.220215, 36.078465, 42.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639130, 36.553699, 42.009052>,  <33.580425, 36.193367, 42.570683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639130, 36.553699, 42.009052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946533, 36.310486, 41.929363>,  <34.130974, 36.164558, 41.881550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946533, 36.310486, 41.929363>,  <33.639130, 36.553699, 42.009052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946533, 36.310486, 41.929363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325271, -0.103135, -0.939980,
		0.550997, 0.787181, -0.277037,
		0.768506, -0.608038, -0.199220,
		34.177086, 36.128075, 41.869598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777397, 36.771118, 41.308651>,  <33.639130, 36.553699, 42.009052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777397, 36.771118, 41.308651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948738, 36.419899, 41.394020>,  <34.051544, 36.209167, 41.445244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948738, 36.419899, 41.394020>,  <33.777397, 36.771118, 41.308651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948738, 36.419899, 41.394020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199344, -0.322198, -0.925446,
		0.881349, 0.353872, -0.313048,
		0.428353, -0.878045, 0.213427,
		34.077244, 36.156487, 41.458050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919140, 36.642006, 40.731712>,  <33.777397, 36.771118, 41.308651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919140, 36.642006, 40.731712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975998, 36.289749, 40.912495>,  <34.010113, 36.078396, 41.020966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975998, 36.289749, 40.912495>,  <33.919140, 36.642006, 40.731712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975998, 36.289749, 40.912495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221444, -0.473314, -0.852606,
		0.964757, 0.021114, -0.262294,
		0.142149, -0.880641, 0.451957,
		34.018642, 36.025558, 41.048080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371086, 36.215870, 40.308582>,  <33.919140, 36.642006, 40.731712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371086, 36.215870, 40.308582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135159, 35.975780, 40.524670>,  <33.993603, 35.831726, 40.654324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135159, 35.975780, 40.524670>,  <34.371086, 36.215870, 40.308582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135159, 35.975780, 40.524670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268045, -0.485531, -0.832113,
		0.761749, -0.635602, 0.125490,
		-0.589822, -0.600224, 0.540222,
		33.958210, 35.795712, 40.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108063, 36.478027, 40.051403>,  <34.371086, 36.215870, 40.308582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108063, 36.478027, 40.051403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108185, 36.816860, 39.838818>,  <35.108257, 37.020161, 39.711266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108185, 36.816860, 39.838818>,  <35.108063, 36.478027, 40.051403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108185, 36.816860, 39.838818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284965, 0.509357, 0.812004,
		0.958538, -0.151695, -0.241233,
		0.000303, 0.847080, -0.531466,
		35.108276, 37.070984, 39.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650978, 36.876572, 40.383102>,  <35.108063, 36.478027, 40.051403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650978, 36.876572, 40.383102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439083, 37.139748, 40.169003>,  <35.311947, 37.297653, 40.040543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439083, 37.139748, 40.169003>,  <35.650978, 36.876572, 40.383102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439083, 37.139748, 40.169003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218642, 0.715677, 0.663327,
		0.819494, 0.234363, -0.522976,
		-0.529741, 0.657936, -0.535251,
		35.280159, 37.337128, 40.008427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078663, 37.479328, 40.260399>,  <35.650978, 36.876572, 40.383102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078663, 37.479328, 40.260399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.707703, 37.624470, 40.224030>,  <35.485126, 37.711555, 40.202206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.707703, 37.624470, 40.224030>,  <36.078663, 37.479328, 40.260399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707703, 37.624470, 40.224030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215940, 0.717778, 0.661940,
		0.305455, 0.594247, -0.744021,
		-0.927398, 0.362857, -0.090927,
		35.429482, 37.733326, 40.196751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185898, 38.208374, 40.083809>,  <36.078663, 37.479328, 40.260399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185898, 38.208374, 40.083809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834042, 38.142334, 40.262238>,  <35.622929, 38.102711, 40.369293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834042, 38.142334, 40.262238>,  <36.185898, 38.208374, 40.083809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834042, 38.142334, 40.262238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128847, 0.820045, 0.557607,
		-0.457860, 0.547967, -0.700069,
		-0.879638, -0.165104, 0.446069,
		35.570148, 38.092804, 40.396057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916801, 38.909618, 40.341358>,  <36.185898, 38.208374, 40.083809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916801, 38.909618, 40.341358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655468, 38.673199, 40.530594>,  <35.498669, 38.531345, 40.644135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655468, 38.673199, 40.530594>,  <35.916801, 38.909618, 40.341358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655468, 38.673199, 40.530594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118437, 0.537408, 0.834965,
		-0.747748, 0.601542, -0.281105,
		-0.653334, -0.591050, 0.473090,
		35.459469, 38.495884, 40.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453796, 39.365040, 40.721153>,  <35.916801, 38.909618, 40.341358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453796, 39.365040, 40.721153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438602, 39.019306, 40.921749>,  <35.429485, 38.811867, 41.042107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438602, 39.019306, 40.921749>,  <35.453796, 39.365040, 40.721153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438602, 39.019306, 40.921749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156204, 0.490546, 0.857301,
		-0.986994, 0.110896, 0.116380,
		-0.037981, -0.864330, 0.501489,
		35.427208, 38.760006, 41.072197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045986, 39.473621, 41.362850>,  <35.453796, 39.365040, 40.721153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045986, 39.473621, 41.362850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.236950, 39.133713, 41.452263>,  <35.351528, 38.929768, 41.505909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.236950, 39.133713, 41.452263>,  <35.045986, 39.473621, 41.362850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236950, 39.133713, 41.452263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420796, 0.444434, 0.790828,
		-0.771367, -0.283490, 0.569759,
		0.477413, -0.849771, 0.223530,
		35.380173, 38.878780, 41.519321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935593, 39.404728, 42.015831>,  <35.045986, 39.473621, 41.362850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935593, 39.404728, 42.015831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265873, 39.190495, 41.945000>,  <35.464043, 39.061954, 41.902500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265873, 39.190495, 41.945000>,  <34.935593, 39.404728, 42.015831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265873, 39.190495, 41.945000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471583, 0.483126, 0.737698,
		-0.309551, -0.692629, 0.651493,
		0.825705, -0.535588, -0.177080,
		35.513584, 39.029819, 41.891876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152447, 39.096226, 42.745281>,  <34.935593, 39.404728, 42.015831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152447, 39.096226, 42.745281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456226, 39.073101, 42.486084>,  <35.638493, 39.059227, 42.330566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456226, 39.073101, 42.486084>,  <35.152447, 39.096226, 42.745281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456226, 39.073101, 42.486084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613943, 0.393181, 0.684458,
		0.215212, -0.917642, 0.334092,
		0.759446, -0.057810, -0.647997,
		35.684059, 39.055759, 42.291683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656837, 38.847160, 43.129738>,  <35.152447, 39.096226, 42.745281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656837, 38.847160, 43.129738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869991, 39.010036, 42.833027>,  <35.997883, 39.107761, 42.654999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869991, 39.010036, 42.833027>,  <35.656837, 38.847160, 43.129738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869991, 39.010036, 42.833027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638160, 0.382277, 0.668294,
		0.555685, -0.829495, -0.056142,
		0.532885, 0.407189, -0.741776,
		36.029858, 39.132195, 42.610493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293884, 38.516903, 43.169472>,  <35.656837, 38.847160, 43.129738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293884, 38.516903, 43.169472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347370, 38.871784, 42.992844>,  <36.379463, 39.084713, 42.886868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347370, 38.871784, 42.992844>,  <36.293884, 38.516903, 43.169472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347370, 38.871784, 42.992844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693823, 0.234345, 0.680949,
		0.707622, -0.397429, -0.584227,
		0.133718, 0.887205, -0.441573,
		36.387486, 39.137947, 42.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987507, 38.621613, 43.212337>,  <36.293884, 38.516903, 43.169472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987507, 38.621613, 43.212337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851177, 38.988369, 43.129246>,  <36.769379, 39.208424, 43.079391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851177, 38.988369, 43.129246>,  <36.987507, 38.621613, 43.212337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851177, 38.988369, 43.129246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695269, 0.394549, 0.600776,
		0.632805, 0.060332, -0.771957,
		-0.340821, 0.916892, -0.207726,
		36.748932, 39.263435, 43.066929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581589, 39.049709, 42.939571>,  <36.987507, 38.621613, 43.212337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581589, 39.049709, 42.939571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297695, 39.302952, 43.063160>,  <37.127361, 39.454895, 43.137314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297695, 39.302952, 43.063160>,  <37.581589, 39.049709, 42.939571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297695, 39.302952, 43.063160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644424, 0.406267, 0.647816,
		0.284608, 0.658884, -0.696326,
		-0.709730, 0.633103, 0.308973,
		37.084778, 39.492882, 43.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905514, 39.757660, 42.999172>,  <37.581589, 39.049709, 42.939571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905514, 39.757660, 42.999172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582409, 39.778946, 43.234013>,  <37.388546, 39.791718, 43.374916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582409, 39.778946, 43.234013>,  <37.905514, 39.757660, 42.999172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582409, 39.778946, 43.234013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536613, 0.478699, 0.694905,
		-0.244066, 0.876365, -0.415231,
		-0.807761, 0.053216, 0.587103,
		37.340080, 39.794910, 43.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328201, 40.267162, 42.824661>,  <37.905514, 39.757660, 42.999172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328201, 40.267162, 42.824661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662300, 40.454872, 42.710018>,  <38.862759, 40.567497, 42.641232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662300, 40.454872, 42.710018>,  <38.328201, 40.267162, 42.824661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662300, 40.454872, 42.710018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190324, -0.242278, -0.951356,
		-0.515881, 0.849168, -0.113050,
		0.835251, 0.469270, -0.286604,
		38.912876, 40.595654, 42.624039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174625, 40.493145, 42.222294>,  <38.328201, 40.267162, 42.824661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174625, 40.493145, 42.222294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569607, 40.545029, 42.186260>,  <38.806595, 40.576160, 42.164639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569607, 40.545029, 42.186260>,  <38.174625, 40.493145, 42.222294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569607, 40.545029, 42.186260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043130, -0.327270, -0.943946,
		-0.151921, 0.935986, -0.317569,
		0.987451, 0.129708, -0.090088,
		38.865841, 40.583942, 42.159233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273041, 40.946964, 41.678551>,  <38.174625, 40.493145, 42.222294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273041, 40.946964, 41.678551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589939, 40.710720, 41.739899>,  <38.780079, 40.568974, 41.776707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589939, 40.710720, 41.739899>,  <38.273041, 40.946964, 41.678551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589939, 40.710720, 41.739899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117368, -0.394139, -0.911526,
		0.598807, 0.704153, -0.381574,
		0.792247, -0.590613, 0.153368,
		38.827614, 40.533535, 41.785908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733250, 40.954777, 41.027153>,  <38.273041, 40.946964, 41.678551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733250, 40.954777, 41.027153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846912, 40.626446, 41.225346>,  <38.915112, 40.429447, 41.344261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846912, 40.626446, 41.225346>,  <38.733250, 40.954777, 41.027153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846912, 40.626446, 41.225346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046880, -0.528061, -0.847911,
		0.957630, 0.217714, -0.188534,
		0.284159, -0.820824, 0.495481,
		38.932159, 40.380199, 41.373989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210873, 40.618874, 40.610912>,  <38.733250, 40.954777, 41.027153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210873, 40.618874, 40.610912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086735, 40.338158, 40.867405>,  <39.012253, 40.169727, 41.021301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086735, 40.338158, 40.867405>,  <39.210873, 40.618874, 40.610912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086735, 40.338158, 40.867405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088533, -0.650271, -0.754526,
		0.946492, -0.290935, 0.139679,
		-0.310347, -0.701787, 0.641234,
		38.993629, 40.127621, 41.059776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693382, 40.031673, 40.526157>,  <39.210873, 40.618874, 40.610912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693382, 40.031673, 40.526157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357159, 39.886444, 40.686977>,  <39.155426, 39.799305, 40.783470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357159, 39.886444, 40.686977>,  <39.693382, 40.031673, 40.526157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357159, 39.886444, 40.686977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200803, -0.480474, -0.853712,
		0.503135, -0.798325, 0.330958,
		-0.840556, -0.363075, 0.402049,
		39.104992, 39.777523, 40.807590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663879, 39.339600, 40.431328>,  <39.693382, 40.031673, 40.526157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663879, 39.339600, 40.431328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281517, 39.375511, 40.543175>,  <39.052101, 39.397057, 40.610283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281517, 39.375511, 40.543175>,  <39.663879, 39.339600, 40.431328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281517, 39.375511, 40.543175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271675, -0.631928, -0.725851,
		0.111534, -0.769810, 0.628453,
		-0.955904, 0.089778, 0.279620,
		38.994747, 39.402443, 40.627060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311985, 38.644970, 40.358616>,  <39.663879, 39.339600, 40.431328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311985, 38.644970, 40.358616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027058, 38.925240, 40.342300>,  <38.856102, 39.093399, 40.332512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027058, 38.925240, 40.342300>,  <39.311985, 38.644970, 40.358616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027058, 38.925240, 40.342300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420146, -0.472244, -0.774895,
		-0.562212, -0.534831, 0.630772,
		-0.712316, 0.700672, -0.040794,
		38.813362, 39.135441, 40.330063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809383, 38.302948, 40.112888>,  <39.311985, 38.644970, 40.358616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809383, 38.302948, 40.112888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681614, 38.675659, 40.043880>,  <38.604950, 38.899284, 40.002476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681614, 38.675659, 40.043880>,  <38.809383, 38.302948, 40.112888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681614, 38.675659, 40.043880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588053, -0.337673, -0.734963,
		-0.743076, -0.133315, 0.655794,
		-0.319426, 0.931774, -0.172520,
		38.585785, 38.955193, 39.992123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072926, 38.301727, 40.116810>,  <38.809383, 38.302948, 40.112888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072926, 38.301727, 40.116810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206642, 38.615433, 39.907745>,  <38.286873, 38.803658, 39.782307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206642, 38.615433, 39.907745>,  <38.072926, 38.301727, 40.116810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206642, 38.615433, 39.907745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504654, -0.319413, -0.802060,
		-0.795972, 0.531889, 0.289003,
		0.334295, 0.784263, -0.522664,
		38.306931, 38.850712, 39.750946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482800, 38.493793, 39.762699>,  <38.072926, 38.301727, 40.116810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482800, 38.493793, 39.762699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785984, 38.662907, 39.564003>,  <37.967896, 38.764374, 39.444786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785984, 38.662907, 39.564003>,  <37.482800, 38.493793, 39.762699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785984, 38.662907, 39.564003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372924, -0.343944, -0.861760,
		-0.535190, 0.838425, -0.103029,
		0.757957, 0.422783, -0.496744,
		38.013371, 38.789742, 39.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179268, 38.669163, 39.217175>,  <37.482800, 38.493793, 39.762699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179268, 38.669163, 39.217175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569008, 38.665840, 39.127228>,  <37.802853, 38.663845, 39.073261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569008, 38.665840, 39.127228>,  <37.179268, 38.669163, 39.217175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569008, 38.665840, 39.127228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215305, -0.324884, -0.920920,
		-0.065406, 0.945718, -0.318340,
		0.974354, -0.008307, -0.224867,
		37.861313, 38.663349, 39.059769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079937, 38.575672, 38.585007>,  <37.179268, 38.669163, 39.217175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079937, 38.575672, 38.585007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479168, 38.551033, 38.587780>,  <37.718708, 38.536251, 38.589443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479168, 38.551033, 38.587780>,  <37.079937, 38.575672, 38.585007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479168, 38.551033, 38.587780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031822, -0.605165, -0.795464,
		0.053195, 0.793714, -0.605962,
		0.998077, -0.061597, 0.006934,
		37.778591, 38.532555, 38.589859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365170, 38.857952, 37.914478>,  <37.079937, 38.575672, 38.585007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365170, 38.857952, 37.914478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620453, 38.600018, 38.082706>,  <37.773621, 38.445255, 38.183643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620453, 38.600018, 38.082706>,  <37.365170, 38.857952, 37.914478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620453, 38.600018, 38.082706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019904, -0.532282, -0.846333,
		0.769609, 0.548505, -0.326870,
		0.638205, -0.644840, 0.420567,
		37.811913, 38.406567, 38.208878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.686544, 39.471760, 39.884418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371058, 39.716576, 39.861355>,  <29.181765, 39.863464, 39.847515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371058, 39.716576, 39.861355>,  <29.686544, 39.471760, 39.884418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371058, 39.716576, 39.861355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508852, -0.702602, -0.497413,
		-0.344951, -0.362979, 0.865595,
		-0.788720, 0.612043, -0.057661,
		29.134441, 39.900188, 39.844055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071051, 39.162895, 40.149830>,  <29.686544, 39.471760, 39.884418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071051, 39.162895, 40.149830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930067, 39.442539, 39.900986>,  <28.845478, 39.610325, 39.751678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930067, 39.442539, 39.900986>,  <29.071051, 39.162895, 40.149830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930067, 39.442539, 39.900986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619912, -0.672415, -0.404434,
		-0.701059, 0.243108, 0.670384,
		-0.352455, 0.699111, -0.622109,
		28.824329, 39.652271, 39.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389772, 39.141777, 40.323959>,  <29.071051, 39.162895, 40.149830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389772, 39.141777, 40.323959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461714, 39.283993, 39.957081>,  <28.504879, 39.369324, 39.736954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461714, 39.283993, 39.957081>,  <28.389772, 39.141777, 40.323959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461714, 39.283993, 39.957081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546232, -0.739339, -0.393712,
		-0.818097, 0.571810, 0.061235,
		0.179855, 0.355543, -0.917192,
		28.515671, 39.390656, 39.681923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726068, 39.173054, 40.022839>,  <28.389772, 39.141777, 40.323959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726068, 39.173054, 40.022839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969221, 39.199482, 39.706329>,  <28.115112, 39.215340, 39.516422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969221, 39.199482, 39.706329>,  <27.726068, 39.173054, 40.022839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969221, 39.199482, 39.706329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603520, -0.609137, -0.514506,
		-0.515989, 0.790308, -0.330406,
		0.607880, 0.066073, -0.791275,
		28.151585, 39.219303, 39.468948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312880, 39.351048, 39.402626>,  <27.726068, 39.173054, 40.022839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312880, 39.351048, 39.402626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655039, 39.184113, 39.279911>,  <27.860334, 39.083950, 39.206284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655039, 39.184113, 39.279911>,  <27.312880, 39.351048, 39.402626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655039, 39.184113, 39.279911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513915, -0.609851, -0.603302,
		0.064688, 0.673727, -0.736144,
		0.855398, -0.417342, -0.306789,
		27.911659, 39.058910, 39.187874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120054, 39.341633, 38.742069>,  <27.312880, 39.351048, 39.402626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120054, 39.341633, 38.742069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413750, 39.074955, 38.793316>,  <27.589968, 38.914948, 38.824062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413750, 39.074955, 38.793316>,  <27.120054, 39.341633, 38.742069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413750, 39.074955, 38.793316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463936, -0.630521, -0.622259,
		0.495635, 0.397450, -0.772256,
		0.734241, -0.666691, 0.128117,
		27.634022, 38.874947, 38.831753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152737, 39.037041, 38.125584>,  <27.120054, 39.341633, 38.742069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152737, 39.037041, 38.125584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383982, 38.780823, 38.327766>,  <27.522728, 38.627090, 38.449078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383982, 38.780823, 38.327766>,  <27.152737, 39.037041, 38.125584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383982, 38.780823, 38.327766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168170, -0.699705, -0.694358,
		0.798440, 0.316413, -0.512228,
		0.578111, -0.640544, 0.505461,
		27.557415, 38.588661, 38.479404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704727, 38.687046, 37.668793>,  <27.152737, 39.037041, 38.125584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704727, 38.687046, 37.668793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663046, 38.433773, 37.975574>,  <27.638037, 38.281811, 38.159645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663046, 38.433773, 37.975574>,  <27.704727, 38.687046, 37.668793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663046, 38.433773, 37.975574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266024, -0.725311, -0.634945,
		0.958318, -0.270192, -0.092862,
		-0.104204, -0.633183, 0.766956,
		27.631784, 38.243816, 38.205662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150700, 38.098042, 37.612225>,  <27.704727, 38.687046, 37.668793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150700, 38.098042, 37.612225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862682, 37.988533, 37.867283>,  <27.689873, 37.922829, 38.020317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862682, 37.988533, 37.867283>,  <28.150700, 38.098042, 37.612225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862682, 37.988533, 37.867283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286136, -0.719995, -0.632245,
		0.632191, -0.637695, 0.440090,
		-0.720042, -0.273774, 0.637642,
		27.646669, 37.906403, 38.058575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216608, 37.395206, 37.807308>,  <28.150700, 38.098042, 37.612225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216608, 37.395206, 37.807308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830229, 37.469898, 37.878944>,  <27.598400, 37.514713, 37.921925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830229, 37.469898, 37.878944>,  <28.216608, 37.395206, 37.807308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830229, 37.469898, 37.878944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254169, -0.814272, -0.521881,
		0.048373, -0.549629, 0.834007,
		-0.965949, 0.186734, 0.179087,
		27.540443, 37.525917, 37.932671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926414, 36.717331, 37.890053>,  <28.216608, 37.395206, 37.807308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926414, 36.717331, 37.890053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603571, 36.950001, 37.849602>,  <27.409864, 37.089603, 37.825329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603571, 36.950001, 37.849602>,  <27.926414, 36.717331, 37.890053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603571, 36.950001, 37.849602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405433, -0.670574, -0.621253,
		-0.429183, -0.460418, 0.777057,
		-0.807110, 0.581675, -0.101130,
		27.361439, 37.124504, 37.819263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434095, 36.285622, 38.027088>,  <27.926414, 36.717331, 37.890053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434095, 36.285622, 38.027088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248980, 36.576611, 37.824459>,  <27.137911, 36.751202, 37.702881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248980, 36.576611, 37.824459>,  <27.434095, 36.285622, 38.027088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248980, 36.576611, 37.824459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551557, -0.683665, -0.477898,
		-0.693982, 0.058238, 0.717633,
		-0.462790, 0.727468, -0.506573,
		27.110144, 36.794849, 37.672485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667669, 36.171211, 37.991249>,  <27.434095, 36.285622, 38.027088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667669, 36.171211, 37.991249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772783, 36.384697, 37.669727>,  <26.835852, 36.512787, 37.476814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772783, 36.384697, 37.669727>,  <26.667669, 36.171211, 37.991249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772783, 36.384697, 37.669727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367204, -0.715068, -0.594844,
		-0.892247, 0.451476, 0.008070,
		0.262787, 0.533711, -0.803801,
		26.851620, 36.544811, 37.428589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080147, 36.205799, 37.560734>,  <26.667669, 36.171211, 37.991249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080147, 36.205799, 37.560734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402924, 36.278923, 37.336082>,  <26.596590, 36.322800, 37.201294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402924, 36.278923, 37.336082>,  <26.080147, 36.205799, 37.560734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402924, 36.278923, 37.336082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292583, -0.702292, -0.648985,
		-0.513067, 0.688015, -0.513222,
		0.806943, 0.182813, -0.561624,
		26.645006, 36.333767, 37.167595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834307, 36.093086, 36.877201>,  <26.080147, 36.205799, 37.560734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834307, 36.093086, 36.877201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221962, 36.131298, 36.786301>,  <26.454556, 36.154224, 36.731758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221962, 36.131298, 36.786301>,  <25.834307, 36.093086, 36.877201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221962, 36.131298, 36.786301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095074, -0.705705, -0.702097,
		-0.227443, 0.702036, -0.674845,
		0.969139, 0.095527, -0.227253,
		26.512703, 36.159958, 36.718124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824055, 36.166714, 36.208912>,  <25.834307, 36.093086, 36.877201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824055, 36.166714, 36.208912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190083, 36.039234, 36.307770>,  <26.409698, 35.962746, 36.367085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190083, 36.039234, 36.307770>,  <25.824055, 36.166714, 36.208912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190083, 36.039234, 36.307770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083924, -0.749880, -0.656229,
		0.394468, 0.579754, -0.712938,
		0.915069, -0.318694, 0.247148,
		26.464603, 35.943626, 36.381916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084141, 36.023399, 35.572495>,  <25.824055, 36.166714, 36.208912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084141, 36.023399, 35.572495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.284920, 35.819897, 35.852272>,  <26.405386, 35.697796, 36.020138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.284920, 35.819897, 35.852272>,  <26.084141, 36.023399, 35.572495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284920, 35.819897, 35.852272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155156, -0.848544, -0.505866,
		0.850868, 0.145396, -0.504860,
		0.501947, -0.508757, 0.699440,
		26.435503, 35.667271, 36.062103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345140, 35.470654, 35.250393>,  <26.084141, 36.023399, 35.572495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345140, 35.470654, 35.250393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402431, 35.317509, 35.615448>,  <26.436806, 35.225624, 35.834480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402431, 35.317509, 35.615448>,  <26.345140, 35.470654, 35.250393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402431, 35.317509, 35.615448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026762, -0.923306, -0.383133,
		0.989328, 0.030451, -0.142487,
		0.143226, -0.382858, 0.912637,
		26.445398, 35.202652, 35.889240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000813, 35.027115, 35.224995>,  <26.345140, 35.470654, 35.250393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000813, 35.027115, 35.224995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771669, 34.923008, 35.535889>,  <26.634184, 34.860542, 35.722424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771669, 34.923008, 35.535889>,  <27.000813, 35.027115, 35.224995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771669, 34.923008, 35.535889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240860, -0.959835, -0.143889,
		0.783468, 0.104778, 0.612536,
		-0.572857, -0.260267, 0.777236,
		26.599812, 34.844929, 35.769058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334890, 34.574795, 35.580868>,  <27.000813, 35.027115, 35.224995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334890, 34.574795, 35.580868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956383, 34.485699, 35.674641>,  <26.729279, 34.432243, 35.730904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956383, 34.485699, 35.674641>,  <27.334890, 34.574795, 35.580868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956383, 34.485699, 35.674641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171217, -0.960104, -0.221101,
		0.274330, -0.169082, 0.946654,
		-0.946271, -0.222738, 0.234435,
		26.672503, 34.418877, 35.744972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115479, 34.581722, 35.501030>,  <27.334890, 34.574795, 35.580868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115479, 34.581722, 35.501030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384405, 34.504208, 35.215252>,  <28.545761, 34.457699, 35.043785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384405, 34.504208, 35.215252>,  <28.115479, 34.581722, 35.501030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384405, 34.504208, 35.215252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619885, 0.674928, 0.400267,
		0.404636, -0.711983, 0.573890,
		0.672318, -0.193783, -0.714448,
		28.586102, 34.446072, 35.000919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736113, 34.353413, 35.843300>,  <28.115479, 34.581722, 35.501030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736113, 34.353413, 35.843300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812843, 34.495289, 35.477264>,  <28.858881, 34.580414, 35.257641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812843, 34.495289, 35.477264>,  <28.736113, 34.353413, 35.843300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812843, 34.495289, 35.477264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647537, 0.654917, 0.389589,
		0.737494, -0.667290, -0.104047,
		0.191827, 0.354694, -0.915093,
		28.870392, 34.601696, 35.202736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424551, 34.533623, 35.915237>,  <28.736113, 34.353413, 35.843300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424551, 34.533623, 35.915237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328852, 34.705212, 35.566814>,  <29.271433, 34.808167, 35.357761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328852, 34.705212, 35.566814>,  <29.424551, 34.533623, 35.915237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328852, 34.705212, 35.566814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487841, 0.828764, 0.274155,
		0.839507, -0.359346, -0.407553,
		-0.239249, 0.428976, -0.871057,
		29.257076, 34.833904, 35.305496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105904, 34.764534, 35.653553>,  <29.424551, 34.533623, 35.915237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105904, 34.764534, 35.653553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814911, 34.975628, 35.478161>,  <29.640314, 35.102283, 35.372925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814911, 34.975628, 35.478161>,  <30.105904, 34.764534, 35.653553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814911, 34.975628, 35.478161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461195, 0.849272, 0.256976,
		0.508002, -0.015277, -0.861221,
		-0.727484, 0.527735, -0.438477,
		29.596666, 35.133949, 35.346619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531252, 35.125031, 35.205044>,  <30.105904, 34.764534, 35.653553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531252, 35.125031, 35.205044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190172, 35.321732, 35.275566>,  <29.985525, 35.439754, 35.317879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190172, 35.321732, 35.275566>,  <30.531252, 35.125031, 35.205044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190172, 35.321732, 35.275566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515207, 0.847441, 0.128081,
		-0.086426, 0.200049, -0.975967,
		-0.852697, 0.491755, 0.176308,
		29.934362, 35.469257, 35.328457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660196, 35.853428, 34.990112>,  <30.531252, 35.125031, 35.205044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660196, 35.853428, 34.990112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329687, 35.895836, 35.211395>,  <30.131382, 35.921280, 35.344166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329687, 35.895836, 35.211395>,  <30.660196, 35.853428, 34.990112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329687, 35.895836, 35.211395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371510, 0.840796, 0.393754,
		-0.423387, 0.530869, -0.734113,
		-0.826271, 0.106020, 0.553205,
		30.081806, 35.927643, 35.377357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455938, 36.528698, 34.916306>,  <30.660196, 35.853428, 34.990112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455938, 36.528698, 34.916306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315615, 36.395039, 35.266228>,  <30.231421, 36.314842, 35.476181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315615, 36.395039, 35.266228>,  <30.455938, 36.528698, 34.916306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315615, 36.395039, 35.266228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441958, 0.764511, 0.469250,
		-0.825593, 0.551244, -0.120521,
		-0.350811, -0.334144, 0.874802,
		30.210371, 36.294796, 35.528667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115435, 37.029411, 35.240303>,  <30.455938, 36.528698, 34.916306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115435, 37.029411, 35.240303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.203030, 36.798840, 35.555206>,  <30.255587, 36.660496, 35.744148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.203030, 36.798840, 35.555206>,  <30.115435, 37.029411, 35.240303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203030, 36.798840, 35.555206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438249, 0.778986, 0.448463,
		-0.871770, 0.246809, 0.423205,
		0.218986, -0.576425, 0.787260,
		30.268726, 36.625912, 35.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880289, 37.410355, 35.871876>,  <30.115435, 37.029411, 35.240303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880289, 37.410355, 35.871876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152981, 37.139462, 35.982586>,  <30.316595, 36.976925, 36.049011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152981, 37.139462, 35.982586>,  <29.880289, 37.410355, 35.871876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152981, 37.139462, 35.982586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352063, 0.635311, 0.687337,
		-0.641325, -0.371134, 0.671537,
		0.681729, -0.677229, 0.276778,
		30.357500, 36.936295, 36.065620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839638, 37.561123, 36.555954>,  <29.880289, 37.410355, 35.871876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839638, 37.561123, 36.555954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178995, 37.357697, 36.497177>,  <30.382608, 37.235641, 36.461910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178995, 37.357697, 36.497177>,  <29.839638, 37.561123, 36.555954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178995, 37.357697, 36.497177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384229, 0.400640, 0.831779,
		-0.364143, -0.762134, 0.535305,
		0.848391, -0.508566, -0.146944,
		30.433512, 37.205128, 36.453094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132092, 37.442268, 37.252644>,  <29.839638, 37.561123, 36.555954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132092, 37.442268, 37.252644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436182, 37.395325, 36.997055>,  <30.618637, 37.367157, 36.843704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436182, 37.395325, 36.997055>,  <30.132092, 37.442268, 37.252644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436182, 37.395325, 36.997055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613685, 0.452471, 0.647040,
		0.213180, -0.884023, 0.416002,
		0.760227, -0.117358, -0.638969,
		30.664249, 37.360119, 36.805363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672335, 37.083355, 37.693966>,  <30.132092, 37.442268, 37.252644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672335, 37.083355, 37.693966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857130, 37.232460, 37.372066>,  <30.968006, 37.321922, 37.178928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857130, 37.232460, 37.372066>,  <30.672335, 37.083355, 37.693966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857130, 37.232460, 37.372066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593133, 0.544738, 0.592835,
		0.659364, -0.751202, 0.030561,
		0.461987, 0.372768, -0.804744,
		30.995726, 37.344292, 37.130642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389235, 37.073181, 37.875126>,  <30.672335, 37.083355, 37.693966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389235, 37.073181, 37.875126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333715, 37.361832, 37.603836>,  <31.300404, 37.535023, 37.441063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333715, 37.361832, 37.603836>,  <31.389235, 37.073181, 37.875126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333715, 37.361832, 37.603836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441521, 0.658116, 0.609870,
		0.886450, -0.214802, -0.409959,
		-0.138800, 0.721625, -0.678227,
		31.292076, 37.578320, 37.400368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020069, 37.375080, 37.649765>,  <31.389235, 37.073181, 37.875126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020069, 37.375080, 37.649765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.793835, 37.685242, 37.537437>,  <31.658094, 37.871338, 37.470043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.793835, 37.685242, 37.537437>,  <32.020069, 37.375080, 37.649765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793835, 37.685242, 37.537437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631325, 0.626183, 0.457518,
		0.530604, 0.081480, -0.843694,
		-0.565586, 0.775407, -0.280815,
		31.624159, 37.917862, 37.453194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485466, 37.879253, 37.424362>,  <32.020069, 37.375080, 37.649765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485466, 37.879253, 37.424362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.146549, 38.088985, 37.458256>,  <31.943199, 38.214825, 37.478592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.146549, 38.088985, 37.458256>,  <32.485466, 37.879253, 37.424362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146549, 38.088985, 37.458256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528515, 0.816517, 0.232320,
		0.052627, 0.241624, -0.968942,
		-0.847291, 0.524326, 0.084731,
		31.892363, 38.246284, 37.483677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631443, 38.546513, 37.275925>,  <32.485466, 37.879253, 37.424362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631443, 38.546513, 37.275925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299034, 38.617157, 37.486908>,  <32.099590, 38.659542, 37.613499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299034, 38.617157, 37.486908>,  <32.631443, 38.546513, 37.275925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299034, 38.617157, 37.486908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361529, 0.892144, 0.270879,
		-0.422726, 0.415797, -0.805242,
		-0.831023, 0.176611, 0.527456,
		32.049728, 38.670139, 37.645145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483204, 39.258461, 37.128662>,  <32.631443, 38.546513, 37.275925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483204, 39.258461, 37.128662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.249596, 39.212044, 37.450024>,  <32.109428, 39.184193, 37.642841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.249596, 39.212044, 37.450024>,  <32.483204, 39.258461, 37.128662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249596, 39.212044, 37.450024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020084, 0.987360, 0.157214,
		-0.811489, 0.107952, -0.574310,
		-0.584023, -0.116043, 0.803400,
		32.074390, 39.177231, 37.691044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173336, 39.974934, 37.238918>,  <32.483204, 39.258461, 37.128662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173336, 39.974934, 37.238918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139015, 39.777855, 37.585300>,  <32.118423, 39.659607, 37.793129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139015, 39.777855, 37.585300>,  <32.173336, 39.974934, 37.238918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139015, 39.777855, 37.585300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116796, 0.858197, 0.499856,
		-0.989443, 0.144028, -0.016086,
		-0.085798, -0.492700, 0.865959,
		32.113277, 39.630043, 37.845089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660465, 40.352386, 37.670128>,  <32.173336, 39.974934, 37.238918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660465, 40.352386, 37.670128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.881287, 40.142879, 37.929638>,  <32.013779, 40.017174, 38.085342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.881287, 40.142879, 37.929638>,  <31.660465, 40.352386, 37.670128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881287, 40.142879, 37.929638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065160, 0.802801, 0.592675,
		-0.831260, -0.284914, 0.477317,
		0.552052, -0.523769, 0.648771,
		32.046902, 39.985748, 38.124268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275749, 40.390720, 38.333885>,  <31.660465, 40.352386, 37.670128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275749, 40.390720, 38.333885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.658878, 40.299641, 38.404003>,  <31.888756, 40.244991, 38.446072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.658878, 40.299641, 38.404003>,  <31.275749, 40.390720, 38.333885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658878, 40.299641, 38.404003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061964, 0.759323, 0.647757,
		-0.280595, -0.609576, 0.741407,
		0.957824, -0.227698, 0.175291,
		31.946226, 40.231331, 38.456589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471073, 40.400017, 39.053780>,  <31.275749, 40.390720, 38.333885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471073, 40.400017, 39.053780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836929, 40.447708, 38.899265>,  <32.056442, 40.476322, 38.806557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836929, 40.447708, 38.899265>,  <31.471073, 40.400017, 39.053780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836929, 40.447708, 38.899265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184566, 0.726969, 0.661401,
		0.359674, -0.676239, 0.642911,
		0.914642, 0.119229, -0.386282,
		32.111320, 40.483479, 38.783382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991877, 40.384411, 39.610233>,  <31.471073, 40.400017, 39.053780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991877, 40.384411, 39.610233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.155052, 40.585995, 39.305706>,  <32.252956, 40.706944, 39.122990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.155052, 40.585995, 39.305706>,  <31.991877, 40.384411, 39.610233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155052, 40.585995, 39.305706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172892, 0.776133, 0.606405,
		0.896491, -0.379001, 0.229482,
		0.407936, 0.503961, -0.761322,
		32.277431, 40.737183, 39.077309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.293983, 39.404152, 43.539658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.961113, 39.269497, 43.715908>,  <41.761391, 39.188702, 43.821659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.961113, 39.269497, 43.715908>,  <42.293983, 39.404152, 43.539658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961113, 39.269497, 43.715908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154320, 0.622631, 0.767148,
		-0.532598, 0.706403, -0.466191,
		-0.832180, -0.336639, 0.440624,
		41.711460, 39.168507, 43.848095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144844, 39.961029, 43.820393>,  <42.293983, 39.404152, 43.539658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144844, 39.961029, 43.820393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.898048, 39.699738, 43.995945>,  <41.749969, 39.542961, 44.101276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.898048, 39.699738, 43.995945>,  <42.144844, 39.961029, 43.820393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898048, 39.699738, 43.995945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072788, 0.507922, 0.858322,
		-0.783596, 0.561523, -0.265837,
		-0.616992, -0.653229, 0.438878,
		41.712952, 39.503769, 44.127609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664864, 40.351849, 44.248844>,  <42.144844, 39.961029, 43.820393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664864, 40.351849, 44.248844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683872, 39.982540, 44.401325>,  <41.695278, 39.760956, 44.492813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683872, 39.982540, 44.401325>,  <41.664864, 40.351849, 44.248844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683872, 39.982540, 44.401325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281830, 0.378525, 0.881641,
		-0.958287, 0.065535, 0.278194,
		0.047525, -0.923268, 0.381206,
		41.698132, 39.705559, 44.515686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454178, 40.436790, 44.915882>,  <41.664864, 40.351849, 44.248844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454178, 40.436790, 44.915882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.620277, 40.073524, 44.937065>,  <41.719936, 39.855564, 44.949776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.620277, 40.073524, 44.937065>,  <41.454178, 40.436790, 44.915882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620277, 40.073524, 44.937065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260810, 0.174624, 0.949465,
		-0.871518, -0.380454, 0.309371,
		0.415252, -0.908164, 0.052962,
		41.744854, 39.801075, 44.952953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241184, 40.149490, 45.515015>,  <41.454178, 40.436790, 44.915882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241184, 40.149490, 45.515015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566910, 39.926819, 45.449287>,  <41.762344, 39.793217, 45.409851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566910, 39.926819, 45.449287>,  <41.241184, 40.149490, 45.515015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566910, 39.926819, 45.449287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277744, 0.125144, 0.952469,
		-0.509656, -0.821248, 0.256521,
		0.814315, -0.556679, -0.164316,
		41.811203, 39.759815, 45.399994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308723, 39.748791, 46.176212>,  <41.241184, 40.149490, 45.515015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308723, 39.748791, 46.176212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653389, 39.739815, 45.973419>,  <41.860188, 39.734428, 45.851746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653389, 39.739815, 45.973419>,  <41.308723, 39.748791, 46.176212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653389, 39.739815, 45.973419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505959, 0.115158, 0.854836,
		0.039196, -0.993093, 0.110584,
		0.861666, -0.022445, -0.506979,
		41.911888, 39.733082, 45.821327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793293, 39.422070, 46.636337>,  <41.308723, 39.748791, 46.176212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793293, 39.422070, 46.636337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.012890, 39.629196, 46.373894>,  <42.144646, 39.753471, 46.216427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.012890, 39.629196, 46.373894>,  <41.793293, 39.422070, 46.636337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012890, 39.629196, 46.373894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479602, 0.447731, 0.754665,
		0.684538, -0.728973, -0.002547,
		0.548990, 0.517818, -0.656106,
		42.177586, 39.784542, 46.177063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559078, 39.312473, 46.894131>,  <41.793293, 39.422070, 46.636337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559078, 39.312473, 46.894131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527683, 39.627800, 46.650032>,  <42.508846, 39.816998, 46.503574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527683, 39.627800, 46.650032>,  <42.559078, 39.312473, 46.894131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527683, 39.627800, 46.650032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548536, 0.545288, 0.633853,
		0.832435, -0.284990, -0.475219,
		-0.078489, 0.788316, -0.610244,
		42.504135, 39.864296, 46.466957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184700, 39.556389, 46.882305>,  <42.559078, 39.312473, 46.894131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184700, 39.556389, 46.882305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.948814, 39.861107, 46.775043>,  <42.807281, 40.043938, 46.710686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.948814, 39.861107, 46.775043>,  <43.184700, 39.556389, 46.882305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948814, 39.861107, 46.775043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496551, 0.603871, 0.623520,
		0.636925, 0.234545, -0.734381,
		-0.589715, 0.761793, -0.268157,
		42.771900, 40.089645, 46.694595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561733, 40.141102, 46.802261>,  <43.184700, 39.556389, 46.882305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561733, 40.141102, 46.802261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.196106, 40.291954, 46.861935>,  <42.976730, 40.382465, 46.897739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.196106, 40.291954, 46.861935>,  <43.561733, 40.141102, 46.802261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196106, 40.291954, 46.861935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351194, 0.552030, 0.756257,
		0.202855, 0.743661, -0.637038,
		-0.914064, 0.377135, 0.149187,
		42.921886, 40.405094, 46.906693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660690, 40.878639, 46.919434>,  <43.561733, 40.141102, 46.802261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660690, 40.878639, 46.919434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.306042, 40.789776, 47.081696>,  <43.093254, 40.736458, 47.179050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.306042, 40.789776, 47.081696>,  <43.660690, 40.878639, 46.919434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306042, 40.789776, 47.081696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171311, 0.656951, 0.734213,
		-0.429606, 0.720459, -0.544406,
		-0.886618, -0.222159, 0.405653,
		43.040058, 40.723129, 47.203392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484940, 41.434067, 47.088783>,  <43.660690, 40.878639, 46.919434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484940, 41.434067, 47.088783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235348, 41.210075, 47.306801>,  <43.085594, 41.075680, 47.437611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235348, 41.210075, 47.306801>,  <43.484940, 41.434067, 47.088783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235348, 41.210075, 47.306801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027612, 0.681247, 0.731533,
		-0.780953, 0.471511, -0.409622,
		-0.623979, -0.559982, 0.545041,
		43.048153, 41.042080, 47.470314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902828, 41.903931, 47.368633>,  <43.484940, 41.434067, 47.088783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902828, 41.903931, 47.368633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.956829, 41.586823, 47.606388>,  <42.989227, 41.396557, 47.749039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.956829, 41.586823, 47.606388>,  <42.902828, 41.903931, 47.368633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956829, 41.586823, 47.606388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014042, 0.598283, 0.801162,
		-0.990746, -0.116502, 0.069636,
		0.134999, -0.792770, 0.594383,
		42.997330, 41.348991, 47.784702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502834, 41.724564, 46.696205>,  <42.902828, 41.903931, 47.368633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502834, 41.724564, 46.696205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.560448, 41.339001, 46.785763>,  <42.595016, 41.107662, 46.839497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.560448, 41.339001, 46.785763>,  <42.502834, 41.724564, 46.696205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560448, 41.339001, 46.785763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440257, 0.140214, 0.886856,
		-0.886244, -0.226308, -0.404174,
		0.144032, -0.963911, 0.223897,
		42.603657, 41.049828, 46.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092140, 42.036438, 47.243206>,  <42.502834, 41.724564, 46.696205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092140, 42.036438, 47.243206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.784161, 42.284863, 47.301807>,  <41.599373, 42.433918, 47.336967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.784161, 42.284863, 47.301807>,  <42.092140, 42.036438, 47.243206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784161, 42.284863, 47.301807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509007, -0.459310, -0.727975,
		-0.384823, -0.635077, 0.669768,
		-0.769951, 0.621057, 0.146505,
		41.553177, 42.471180, 47.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429344, 41.675301, 47.189720>,  <42.092140, 42.036438, 47.243206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429344, 41.675301, 47.189720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297951, 42.048431, 47.130486>,  <41.219116, 42.272312, 47.094944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297951, 42.048431, 47.130486>,  <41.429344, 41.675301, 47.189720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297951, 42.048431, 47.130486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647603, -0.336567, -0.683618,
		-0.687540, -0.128652, 0.714658,
		-0.328479, 0.932830, -0.148088,
		41.199406, 42.328281, 47.086060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696152, 41.534538, 47.042549>,  <41.429344, 41.675301, 47.189720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696152, 41.534538, 47.042549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757309, 41.906525, 46.908813>,  <40.794003, 42.129719, 46.828571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757309, 41.906525, 46.908813>,  <40.696152, 41.534538, 47.042549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757309, 41.906525, 46.908813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860973, -0.040730, -0.507018,
		-0.485128, 0.365377, 0.794450,
		0.152894, 0.929968, -0.334339,
		40.803177, 42.185516, 46.808514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046906, 41.866390, 47.102352>,  <40.696152, 41.534538, 47.042549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046906, 41.866390, 47.102352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.285732, 42.030476, 46.826603>,  <40.429028, 42.128925, 46.661152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.285732, 42.030476, 46.826603>,  <40.046906, 41.866390, 47.102352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285732, 42.030476, 46.826603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753128, -0.009284, -0.657808,
		-0.276242, 0.911942, 0.303400,
		0.597067, 0.410213, -0.689374,
		40.464851, 42.153542, 46.619789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595894, 41.863735, 46.612957>,  <40.046906, 41.866390, 47.102352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595894, 41.863735, 46.612957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900906, 42.017914, 46.405121>,  <40.083912, 42.110420, 46.280418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900906, 42.017914, 46.405121>,  <39.595894, 41.863735, 46.612957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900906, 42.017914, 46.405121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600168, 0.121595, -0.790578,
		-0.241544, 0.914684, 0.324051,
		0.762532, 0.385445, -0.519594,
		40.129665, 42.133549, 46.249241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248779, 42.422066, 46.160732>,  <39.595894, 41.863735, 46.612957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248779, 42.422066, 46.160732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.587971, 42.309746, 45.980915>,  <39.791485, 42.242352, 45.873024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.587971, 42.309746, 45.980915>,  <39.248779, 42.422066, 46.160732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587971, 42.309746, 45.980915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506677, -0.180440, -0.843042,
		0.155613, 0.942651, -0.295285,
		0.847976, -0.280802, -0.449541,
		39.842365, 42.225506, 45.846054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316879, 42.821861, 45.445652>,  <39.248779, 42.422066, 46.160732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316879, 42.821861, 45.445652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533630, 42.485699, 45.449577>,  <39.663681, 42.284000, 45.451931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533630, 42.485699, 45.449577>,  <39.316879, 42.821861, 45.445652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533630, 42.485699, 45.449577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553592, -0.365683, -0.748206,
		0.632383, 0.400000, -0.663394,
		0.541874, -0.840402, 0.009815,
		39.696194, 42.233578, 45.452522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514214, 42.786995, 44.733906>,  <39.316879, 42.821861, 45.445652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514214, 42.786995, 44.733906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576290, 42.423653, 44.889244>,  <39.613537, 42.205647, 44.982449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576290, 42.423653, 44.889244>,  <39.514214, 42.786995, 44.733906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576290, 42.423653, 44.889244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216200, -0.414811, -0.883849,
		0.963937, 0.053201, -0.260759,
		0.155187, -0.908351, 0.388349,
		39.622845, 42.151146, 45.005749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994534, 42.415703, 44.303089>,  <39.514214, 42.786995, 44.733906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994534, 42.415703, 44.303089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823677, 42.130127, 44.525021>,  <39.721161, 41.958782, 44.658180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823677, 42.130127, 44.525021>,  <39.994534, 42.415703, 44.303089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823677, 42.130127, 44.525021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066240, -0.587267, -0.806678,
		0.901753, -0.381320, 0.203557,
		-0.427145, -0.713941, 0.554829,
		39.695534, 41.915943, 44.691471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289810, 41.875977, 44.031754>,  <39.994534, 42.415703, 44.303089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289810, 41.875977, 44.031754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943314, 41.755009, 44.190834>,  <39.735416, 41.682426, 44.286282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943314, 41.755009, 44.190834>,  <40.289810, 41.875977, 44.031754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943314, 41.755009, 44.190834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179082, -0.555173, -0.812227,
		0.466431, -0.774805, 0.426754,
		-0.866240, -0.302424, 0.397703,
		39.683441, 41.664280, 44.310146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334354, 41.188366, 43.982471>,  <40.289810, 41.875977, 44.031754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334354, 41.188366, 43.982471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943893, 41.270676, 44.010113>,  <39.709618, 41.320061, 44.026695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943893, 41.270676, 44.010113>,  <40.334354, 41.188366, 43.982471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943893, 41.270676, 44.010113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194334, -0.686620, -0.700563,
		-0.096714, -0.697287, 0.710238,
		-0.976156, 0.205778, 0.069101,
		39.651047, 41.332409, 44.030842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038097, 40.506039, 43.969906>,  <40.334354, 41.188366, 43.982471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038097, 40.506039, 43.969906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763100, 40.768898, 43.846291>,  <39.598103, 40.926613, 43.772121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.763100, 40.768898, 43.846291>,  <40.038097, 40.506039, 43.969906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763100, 40.768898, 43.846291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249950, -0.613695, -0.748935,
		-0.681824, -0.437639, 0.586164,
		-0.687489, 0.657153, -0.309044,
		39.556850, 40.966045, 43.753578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472179, 40.071701, 43.676300>,  <40.038097, 40.506039, 43.969906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472179, 40.071701, 43.676300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366180, 40.428177, 43.529030>,  <39.302582, 40.642063, 43.440666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366180, 40.428177, 43.529030>,  <39.472179, 40.071701, 43.676300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366180, 40.428177, 43.529030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387362, -0.448050, -0.805730,
		-0.883022, -0.070897, 0.463945,
		-0.264994, 0.891193, -0.368175,
		39.286682, 40.695534, 43.418579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872349, 39.950489, 43.226673>,  <39.472179, 40.071701, 43.676300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872349, 39.950489, 43.226673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995506, 40.312748, 43.110054>,  <39.069401, 40.530106, 43.040081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995506, 40.312748, 43.110054>,  <38.872349, 39.950489, 43.226673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995506, 40.312748, 43.110054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176604, -0.246708, -0.952862,
		-0.934887, 0.344867, 0.083982,
		0.307891, 0.905650, -0.291549,
		39.087875, 40.584442, 43.022591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087749, 40.182552, 43.549946>,  <38.872349, 39.950489, 43.226673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087749, 40.182552, 43.549946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.749435, 40.054493, 43.720661>,  <37.546448, 39.977657, 43.823090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.749435, 40.054493, 43.720661>,  <38.087749, 40.182552, 43.549946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749435, 40.054493, 43.720661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331229, 0.312024, 0.890465,
		-0.418251, 0.894508, -0.157862,
		-0.845785, -0.320150, 0.426792,
		37.495701, 39.958447, 43.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848473, 40.738724, 44.037880>,  <38.087749, 40.182552, 43.549946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848473, 40.738724, 44.037880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684956, 40.400757, 44.175869>,  <37.586845, 40.197975, 44.258663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684956, 40.400757, 44.175869>,  <37.848473, 40.738724, 44.037880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684956, 40.400757, 44.175869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353189, 0.202078, 0.913467,
		-0.841515, 0.495257, 0.215808,
		-0.408791, -0.844917, 0.344971,
		37.562317, 40.147282, 44.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428673, 40.816654, 44.700596>,  <37.848473, 40.738724, 44.037880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428673, 40.816654, 44.700596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550049, 40.436737, 44.670067>,  <37.622875, 40.208786, 44.651749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550049, 40.436737, 44.670067>,  <37.428673, 40.816654, 44.700596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550049, 40.436737, 44.670067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435561, 0.067023, 0.897660,
		-0.847473, -0.305629, 0.434029,
		0.303441, -0.949789, -0.076319,
		37.641083, 40.151802, 44.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259647, 40.537411, 45.297157>,  <37.428673, 40.816654, 44.700596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259647, 40.537411, 45.297157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495827, 40.231827, 45.193054>,  <37.637535, 40.048477, 45.130592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495827, 40.231827, 45.193054>,  <37.259647, 40.537411, 45.297157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495827, 40.231827, 45.193054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244404, -0.138081, 0.959792,
		-0.769177, -0.630319, 0.105184,
		0.590452, -0.763957, -0.260261,
		37.672962, 40.002640, 45.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044186, 39.974304, 45.709980>,  <37.259647, 40.537411, 45.297157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044186, 39.974304, 45.709980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427471, 39.929844, 45.604557>,  <37.657444, 39.903168, 45.541302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427471, 39.929844, 45.604557>,  <37.044186, 39.974304, 45.709980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427471, 39.929844, 45.604557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246784, -0.144620, 0.958218,
		-0.144620, -0.983225, -0.111148,
		-0.958218, 0.111148, 0.263559,
		37.714935, 39.896500, 45.525490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272026, 39.428078, 46.205818>,  <37.044186, 39.974304, 45.709980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272026, 39.428078, 46.205818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590481, 39.610310, 46.046513>,  <37.781555, 39.719646, 45.950932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590481, 39.610310, 46.046513>,  <37.272026, 39.428078, 46.205818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590481, 39.610310, 46.046513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453888, -0.014332, 0.890943,
		0.400185, -0.890081, -0.218191,
		0.796139, 0.455576, -0.398262,
		37.829323, 39.746983, 45.927032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841278, 38.963367, 46.448811>,  <37.272026, 39.428078, 46.205818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841278, 38.963367, 46.448811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968800, 39.330021, 46.352360>,  <38.045315, 39.550014, 46.294487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968800, 39.330021, 46.352360>,  <37.841278, 38.963367, 46.448811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968800, 39.330021, 46.352360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415242, 0.093617, 0.904882,
		0.852020, -0.388608, -0.350779,
		0.318805, 0.916635, -0.241129,
		38.064442, 39.605011, 46.280022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058270, 38.492264, 47.051994>,  <37.841278, 38.963367, 46.448811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058270, 38.492264, 47.051994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728626, 38.489269, 47.278545>,  <37.530838, 38.487473, 47.414474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728626, 38.489269, 47.278545>,  <38.058270, 38.492264, 47.051994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728626, 38.489269, 47.278545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510683, -0.422739, -0.748662,
		0.245032, -0.906220, 0.344563,
		-0.824113, -0.007484, 0.566376,
		37.481392, 38.487022, 47.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760792, 37.747623, 47.059399>,  <38.058270, 38.492264, 47.051994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760792, 37.747623, 47.059399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474327, 38.014515, 47.141296>,  <37.302448, 38.174648, 47.190437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474327, 38.014515, 47.141296>,  <37.760792, 37.747623, 47.059399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474327, 38.014515, 47.141296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643726, -0.518116, -0.563182,
		-0.269687, -0.535129, 0.800565,
		-0.716160, 0.667228, 0.204747,
		37.259480, 38.214684, 47.202721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207592, 37.377785, 47.054504>,  <37.760792, 37.747623, 47.059399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207592, 37.377785, 47.054504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043407, 37.738907, 47.003178>,  <36.944897, 37.955582, 46.972382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043407, 37.738907, 47.003178>,  <37.207592, 37.377785, 47.054504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043407, 37.738907, 47.003178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604082, -0.374618, -0.703382,
		-0.683088, -0.211194, 0.699134,
		-0.410458, 0.902806, -0.128319,
		36.920269, 38.009750, 46.964684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444595, 37.272171, 47.137386>,  <37.207592, 37.377785, 47.054504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444595, 37.272171, 47.137386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538876, 37.592621, 46.917336>,  <36.595444, 37.784893, 46.785305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538876, 37.592621, 46.917336>,  <36.444595, 37.272171, 47.137386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538876, 37.592621, 46.917336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683331, -0.265889, -0.679971,
		-0.691017, 0.536190, 0.484765,
		0.235700, 0.801127, -0.550129,
		36.609585, 37.832958, 46.752296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808346, 37.416996, 46.931168>,  <36.444595, 37.272171, 47.137386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808346, 37.416996, 46.931168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058113, 37.621807, 46.695229>,  <36.207973, 37.744694, 46.553665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058113, 37.621807, 46.695229>,  <35.808346, 37.416996, 46.931168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058113, 37.621807, 46.695229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473082, -0.352976, -0.807218,
		-0.621524, 0.783091, 0.021827,
		0.624420, 0.512032, -0.589850,
		36.245438, 37.775417, 46.518272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372601, 37.753765, 46.423794>,  <35.808346, 37.416996, 46.931168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372601, 37.753765, 46.423794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721203, 37.787201, 46.230515>,  <35.930367, 37.807262, 46.114548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721203, 37.787201, 46.230515>,  <35.372601, 37.753765, 46.423794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721203, 37.787201, 46.230515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442743, -0.289517, -0.848622,
		-0.210828, 0.953516, -0.215310,
		0.871510, 0.083586, -0.483201,
		35.982655, 37.812279, 46.085556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185585, 38.077759, 45.802689>,  <35.372601, 37.753765, 46.423794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185585, 38.077759, 45.802689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528572, 37.886288, 45.727203>,  <35.734364, 37.771404, 45.681911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528572, 37.886288, 45.727203>,  <35.185585, 38.077759, 45.802689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528572, 37.886288, 45.727203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321753, -0.212636, -0.922638,
		0.401518, 0.851854, -0.336344,
		0.857472, -0.478676, -0.188709,
		35.785812, 37.742683, 45.670589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.245270, 39.022667, 49.398735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.435272, 39.260292, 49.139053>,  <41.549274, 39.402866, 48.983246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.435272, 39.260292, 49.139053>,  <41.245270, 39.022667, 49.398735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435272, 39.260292, 49.139053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202780, -0.643994, -0.737666,
		-0.856299, 0.482042, -0.185439,
		0.475008, 0.594060, -0.649200,
		41.577774, 39.438511, 48.944294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813652, 39.122776, 48.817589>,  <41.245270, 39.022667, 49.398735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813652, 39.122776, 48.817589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.175697, 39.214714, 48.674515>,  <41.392925, 39.269878, 48.588669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.175697, 39.214714, 48.674515>,  <40.813652, 39.122776, 48.817589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175697, 39.214714, 48.674515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192225, -0.529169, -0.826456,
		-0.379234, 0.816793, -0.434776,
		0.905114, 0.229845, -0.357686,
		41.447231, 39.283669, 48.567207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741985, 39.424679, 48.147205>,  <40.813652, 39.122776, 48.817589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741985, 39.424679, 48.147205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.087227, 39.225983, 48.183636>,  <41.294373, 39.106766, 48.205494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.087227, 39.225983, 48.183636>,  <40.741985, 39.424679, 48.147205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087227, 39.225983, 48.183636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221682, -0.534688, -0.815454,
		0.453770, 0.683632, -0.571612,
		0.863105, -0.496745, 0.091077,
		41.346157, 39.076958, 48.210960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838108, 39.200535, 47.413857>,  <40.741985, 39.424679, 48.147205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838108, 39.200535, 47.413857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.112637, 38.990585, 47.615242>,  <41.277351, 38.864616, 47.736073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.112637, 38.990585, 47.615242>,  <40.838108, 39.200535, 47.413857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112637, 38.990585, 47.615242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151424, -0.780189, -0.606940,
		0.711362, 0.340318, -0.614937,
		0.686320, -0.524870, 0.503464,
		41.318531, 38.833126, 47.766281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128201, 38.899075, 46.883995>,  <40.838108, 39.200535, 47.413857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128201, 38.899075, 46.883995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.262913, 38.678310, 47.189144>,  <41.343739, 38.545853, 47.372234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.262913, 38.678310, 47.189144>,  <41.128201, 38.899075, 46.883995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262913, 38.678310, 47.189144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064723, -0.821857, -0.566005,
		0.939356, 0.141243, -0.312506,
		0.336780, -0.551907, 0.762875,
		41.363945, 38.512737, 47.418007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535583, 38.493603, 46.574062>,  <41.128201, 38.899075, 46.883995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535583, 38.493603, 46.574062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.457447, 38.335411, 46.933048>,  <41.410564, 38.240498, 47.148441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.457447, 38.335411, 46.933048>,  <41.535583, 38.493603, 46.574062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457447, 38.335411, 46.933048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101966, -0.918322, -0.382475,
		0.975421, 0.016799, 0.219708,
		-0.195338, -0.395477, 0.897464,
		41.398846, 38.216766, 47.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020199, 38.021442, 46.605030>,  <41.535583, 38.493603, 46.574062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020199, 38.021442, 46.605030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.751484, 37.916893, 46.882271>,  <41.590256, 37.854164, 47.048615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.751484, 37.916893, 46.882271>,  <42.020199, 38.021442, 46.605030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751484, 37.916893, 46.882271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035574, -0.945983, -0.322257,
		0.739889, -0.191832, 0.644798,
		-0.671788, -0.261373, 0.693098,
		41.549946, 37.838482, 47.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212337, 37.390514, 46.795643>,  <42.020199, 38.021442, 46.605030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212337, 37.390514, 46.795643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.832348, 37.388000, 46.920547>,  <41.604355, 37.386490, 46.995491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.832348, 37.388000, 46.920547>,  <42.212337, 37.390514, 46.795643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832348, 37.388000, 46.920547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116273, -0.920815, -0.372265,
		0.289877, -0.389950, 0.874020,
		-0.949975, -0.006286, 0.312263,
		41.547356, 37.386116, 47.014225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128700, 36.765377, 47.239052>,  <42.212337, 37.390514, 46.795643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128700, 36.765377, 47.239052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.780048, 36.885799, 47.084328>,  <41.570858, 36.958054, 46.991493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.780048, 36.885799, 47.084328>,  <42.128700, 36.765377, 47.239052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780048, 36.885799, 47.084328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065359, -0.853487, -0.516999,
		-0.485786, -0.425351, 0.763603,
		-0.871631, 0.301059, -0.386811,
		41.518559, 36.976116, 46.968285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729614, 36.091991, 47.187393>,  <42.128700, 36.765377, 47.239052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729614, 36.091991, 47.187393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.548023, 36.375107, 46.970898>,  <41.439068, 36.544975, 46.841000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.548023, 36.375107, 46.970898>,  <41.729614, 36.091991, 47.187393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548023, 36.375107, 46.970898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392446, -0.704185, -0.591700,
		-0.799932, -0.056210, 0.597452,
		-0.453977, 0.707788, -0.541241,
		41.411831, 36.587444, 46.808525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084797, 35.750778, 46.951912>,  <41.729614, 36.091991, 47.187393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084797, 35.750778, 46.951912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.164928, 36.046299, 46.694527>,  <41.213005, 36.223610, 46.540096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.164928, 36.046299, 46.694527>,  <41.084797, 35.750778, 46.951912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164928, 36.046299, 46.694527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237812, -0.600469, -0.763467,
		-0.950429, 0.305967, 0.055405,
		0.200327, 0.738797, -0.643465,
		41.225025, 36.267937, 46.501488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568996, 35.760101, 46.453377>,  <41.084797, 35.750778, 46.951912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568996, 35.760101, 46.453377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.863037, 35.955841, 46.265694>,  <41.039463, 36.073284, 46.153084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.863037, 35.955841, 46.265694>,  <40.568996, 35.760101, 46.453377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863037, 35.955841, 46.265694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141707, -0.565902, -0.812203,
		-0.662982, 0.663543, -0.346650,
		0.735101, 0.489353, -0.469212,
		41.083569, 36.102646, 46.124931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058815, 36.132771, 46.490322>,  <40.568996, 35.760101, 46.453377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058815, 36.132771, 46.490322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.678474, 36.015850, 46.449455>,  <39.450268, 35.945698, 46.424934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.678474, 36.015850, 46.449455>,  <40.058815, 36.132771, 46.490322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678474, 36.015850, 46.449455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134898, 0.094071, 0.986384,
		-0.278710, 0.951688, -0.128879,
		-0.950854, -0.292301, -0.102162,
		39.393219, 35.928162, 46.418808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555138, 36.662415, 46.663261>,  <40.058815, 36.132771, 46.490322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555138, 36.662415, 46.663261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.407028, 36.296757, 46.729271>,  <39.318161, 36.077362, 46.768875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.407028, 36.296757, 46.729271>,  <39.555138, 36.662415, 46.663261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407028, 36.296757, 46.729271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219867, 0.258848, 0.940562,
		-0.902527, 0.311984, -0.296836,
		-0.370276, -0.914146, 0.165023,
		39.295944, 36.022514, 46.778778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000679, 36.789936, 47.053837>,  <39.555138, 36.662415, 46.663261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000679, 36.789936, 47.053837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.039062, 36.398026, 47.124081>,  <39.062092, 36.162880, 47.166225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.039062, 36.398026, 47.124081>,  <39.000679, 36.789936, 47.053837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039062, 36.398026, 47.124081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174625, 0.157117, 0.972019,
		-0.979948, -0.123941, -0.156015,
		0.095960, -0.979772, 0.175610,
		39.067852, 36.104095, 47.176765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290016, 36.585976, 47.234962>,  <39.000679, 36.789936, 47.053837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290016, 36.585976, 47.234962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.574577, 36.348152, 47.384846>,  <38.745312, 36.205456, 47.474777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.574577, 36.348152, 47.384846>,  <38.290016, 36.585976, 47.234962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574577, 36.348152, 47.384846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434064, 0.047603, 0.899624,
		-0.552718, -0.802640, -0.224213,
		0.711401, -0.594561, 0.374708,
		38.787998, 36.169785, 47.497257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909653, 36.161610, 47.625134>,  <38.290016, 36.585976, 47.234962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909653, 36.161610, 47.625134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.280350, 36.112015, 47.766987>,  <38.502769, 36.082256, 47.852100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.280350, 36.112015, 47.766987>,  <37.909653, 36.161610, 47.625134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280350, 36.112015, 47.766987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360794, -0.030592, 0.932144,
		-0.104727, -0.991812, -0.073086,
		0.926747, -0.123990, 0.354636,
		38.558372, 36.074818, 47.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819530, 35.752167, 48.150574>,  <37.909653, 36.161610, 47.625134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819530, 35.752167, 48.150574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189259, 35.881687, 48.231350>,  <38.411095, 35.959400, 48.279816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189259, 35.881687, 48.231350>,  <37.819530, 35.752167, 48.150574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189259, 35.881687, 48.231350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182112, -0.090756, 0.979080,
		0.335351, -0.941764, -0.024921,
		0.924324, 0.323797, 0.201942,
		38.466557, 35.978825, 48.291931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094936, 35.386059, 48.683636>,  <37.819530, 35.752167, 48.150574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094936, 35.386059, 48.683636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.350422, 35.689194, 48.736908>,  <38.503712, 35.871075, 48.768871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.350422, 35.689194, 48.736908>,  <38.094936, 35.386059, 48.683636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350422, 35.689194, 48.736908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207882, 0.003306, 0.978148,
		0.740834, -0.652439, 0.159652,
		0.638710, 0.757834, 0.133180,
		38.542034, 35.916542, 48.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643406, 35.189453, 49.184776>,  <38.094936, 35.386059, 48.683636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643406, 35.189453, 49.184776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.591663, 35.586025, 49.192085>,  <38.560619, 35.823967, 49.196472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.591663, 35.586025, 49.192085>,  <38.643406, 35.189453, 49.184776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591663, 35.586025, 49.192085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161597, -0.039262, 0.986076,
		0.978343, 0.124598, 0.165291,
		-0.129352, 0.991430, 0.018277,
		38.552856, 35.883453, 49.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010262, 35.356445, 49.704189>,  <38.643406, 35.189453, 49.184776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010262, 35.356445, 49.704189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.762493, 35.665878, 49.650696>,  <38.613831, 35.851540, 49.618599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.762493, 35.665878, 49.650696>,  <39.010262, 35.356445, 49.704189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762493, 35.665878, 49.650696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118373, 0.076369, 0.990028,
		0.776084, 0.629073, 0.044267,
		-0.619420, 0.773585, -0.133734,
		38.576668, 35.897953, 49.610577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149986, 35.835186, 50.383911>,  <39.010262, 35.356445, 49.704189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149986, 35.835186, 50.383911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.815708, 35.990906, 50.228958>,  <38.615143, 36.084339, 50.135986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.815708, 35.990906, 50.228958>,  <39.149986, 35.835186, 50.383911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815708, 35.990906, 50.228958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233603, 0.386391, 0.892262,
		0.497037, 0.836150, -0.231963,
		-0.835694, 0.389300, -0.387378,
		38.564999, 36.107697, 50.112743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009048, 36.483700, 50.675941>,  <39.149986, 35.835186, 50.383911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009048, 36.483700, 50.675941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.641510, 36.384392, 50.553249>,  <38.420986, 36.324806, 50.479633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.641510, 36.384392, 50.553249>,  <39.009048, 36.483700, 50.675941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641510, 36.384392, 50.553249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392371, 0.491945, 0.777197,
		-0.042060, 0.834477, -0.549435,
		-0.918845, -0.248271, -0.306734,
		38.365856, 36.309910, 50.461227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728603, 37.117302, 50.615799>,  <39.009048, 36.483700, 50.675941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728603, 37.117302, 50.615799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442196, 36.843121, 50.668671>,  <38.270351, 36.678612, 50.700394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442196, 36.843121, 50.668671>,  <38.728603, 37.117302, 50.615799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442196, 36.843121, 50.668671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409938, 0.566120, 0.715163,
		-0.565041, 0.457884, -0.686346,
		-0.716016, -0.685456, 0.132177,
		38.227390, 36.637486, 50.708324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108250, 37.522018, 50.689903>,  <38.728603, 37.117302, 50.615799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108250, 37.522018, 50.689903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.005558, 37.166679, 50.842182>,  <37.943943, 36.953476, 50.933548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.005558, 37.166679, 50.842182>,  <38.108250, 37.522018, 50.689903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005558, 37.166679, 50.842182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522438, 0.458945, 0.718629,
		-0.813110, -0.014395, -0.581932,
		-0.256730, -0.888348, 0.380693,
		37.928539, 36.900173, 50.956390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384346, 37.537239, 50.855045>,  <38.108250, 37.522018, 50.689903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384346, 37.537239, 50.855045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550529, 37.271503, 51.103577>,  <37.650238, 37.112061, 51.252693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550529, 37.271503, 51.103577>,  <37.384346, 37.537239, 50.855045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550529, 37.271503, 51.103577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682710, 0.223641, 0.695624,
		-0.601087, -0.713185, -0.360641,
		0.415454, -0.664344, 0.621326,
		37.675167, 37.072201, 51.289974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678307, 38.132202, 50.477371>,  <37.384346, 37.537239, 50.855045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678307, 38.132202, 50.477371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.934544, 38.422779, 50.377827>,  <38.088284, 38.597126, 50.318100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.934544, 38.422779, 50.377827>,  <37.678307, 38.132202, 50.477371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934544, 38.422779, 50.377827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311379, -0.050502, -0.948943,
		-0.701918, 0.685372, 0.193847,
		0.640589, 0.726440, -0.248859,
		38.126720, 38.640713, 50.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212505, 38.649254, 50.146954>,  <37.678307, 38.132202, 50.477371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212505, 38.649254, 50.146954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.595253, 38.673969, 50.033405>,  <37.824902, 38.688797, 49.965275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.595253, 38.673969, 50.033405>,  <37.212505, 38.649254, 50.146954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595253, 38.673969, 50.033405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290149, 0.154005, -0.944508,
		-0.014638, 0.986136, 0.165290,
		0.956870, 0.061784, -0.283872,
		37.882313, 38.692505, 49.948242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176014, 39.288361, 49.710712>,  <37.212505, 38.649254, 50.146954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176014, 39.288361, 49.710712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.488766, 39.054596, 49.623886>,  <37.676418, 38.914337, 49.571789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.488766, 39.054596, 49.623886>,  <37.176014, 39.288361, 49.710712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488766, 39.054596, 49.623886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155879, 0.153863, -0.975719,
		0.603623, 0.796735, 0.029205,
		0.781883, -0.584414, -0.217069,
		37.723331, 38.879272, 49.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411827, 39.640320, 49.220505>,  <37.176014, 39.288361, 49.710712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411827, 39.640320, 49.220505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575966, 39.279221, 49.168873>,  <37.674450, 39.062561, 49.137894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575966, 39.279221, 49.168873>,  <37.411827, 39.640320, 49.220505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575966, 39.279221, 49.168873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028853, 0.128623, -0.991274,
		0.911472, 0.410494, 0.026734,
		0.410350, -0.902747, -0.129080,
		37.699070, 39.008396, 49.130150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907829, 39.815849, 48.643841>,  <37.411827, 39.640320, 49.220505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907829, 39.815849, 48.643841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.824394, 39.426910, 48.685837>,  <37.774334, 39.193546, 48.711033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.824394, 39.426910, 48.685837>,  <37.907829, 39.815849, 48.643841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824394, 39.426910, 48.685837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187037, -0.065705, -0.980153,
		0.959952, -0.224086, -0.168161,
		-0.208589, -0.972352, 0.104986,
		37.761818, 39.135204, 48.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090279, 39.517006, 47.960560>,  <37.907829, 39.815849, 48.643841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090279, 39.517006, 47.960560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.896244, 39.208641, 48.125668>,  <37.779823, 39.023621, 48.224731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.896244, 39.208641, 48.125668>,  <38.090279, 39.517006, 47.960560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896244, 39.208641, 48.125668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186285, -0.370093, -0.910126,
		0.854395, -0.518381, 0.035916,
		-0.485084, -0.770917, 0.412772,
		37.750717, 38.977367, 48.249500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193840, 39.059490, 47.486652>,  <38.090279, 39.517006, 47.960560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193840, 39.059490, 47.486652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.877560, 38.896633, 47.669533>,  <37.687794, 38.798920, 47.779259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.877560, 38.896633, 47.669533>,  <38.193840, 39.059490, 47.486652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877560, 38.896633, 47.669533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298516, -0.395596, -0.868557,
		0.534496, -0.823247, 0.191257,
		-0.790697, -0.407147, 0.457197,
		37.640350, 38.774490, 47.806690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563759, 38.990505, 46.829521>,  <38.193840, 39.059490, 47.486652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563759, 38.990505, 46.829521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.481865, 39.361156, 46.703377>,  <38.432728, 39.583546, 46.627689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.481865, 39.361156, 46.703377>,  <38.563759, 38.990505, 46.829521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481865, 39.361156, 46.703377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317740, 0.367650, 0.874000,
		0.925811, 0.078735, -0.369696,
		-0.204733, 0.926625, -0.315357,
		38.420444, 39.639145, 46.608768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089520, 39.341660, 47.092499>,  <38.563759, 38.990505, 46.829521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089520, 39.341660, 47.092499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873703, 39.671173, 47.022903>,  <38.744213, 39.868881, 46.981148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873703, 39.671173, 47.022903>,  <39.089520, 39.341660, 47.092499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873703, 39.671173, 47.022903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378255, 0.421775, 0.824032,
		0.752209, 0.378789, -0.539166,
		-0.539541, 0.823787, -0.173984,
		38.711842, 39.918308, 46.970707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562592, 39.977333, 47.021061>,  <39.089520, 39.341660, 47.092499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562592, 39.977333, 47.021061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.202282, 40.079372, 47.161652>,  <38.986095, 40.140594, 47.246006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.202282, 40.079372, 47.161652>,  <39.562592, 39.977333, 47.021061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202282, 40.079372, 47.161652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431165, 0.622230, 0.653397,
		-0.052016, 0.740105, -0.670477,
		-0.900773, 0.255099, 0.351473,
		38.932049, 40.155903, 47.267094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575432, 40.691769, 46.990635>,  <39.562592, 39.977333, 47.021061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575432, 40.691769, 46.990635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.274361, 40.635197, 47.247845>,  <39.093719, 40.601254, 47.402168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.274361, 40.635197, 47.247845>,  <39.575432, 40.691769, 46.990635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274361, 40.635197, 47.247845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331666, 0.762232, 0.555878,
		-0.568750, 0.631664, -0.526805,
		-0.752676, -0.141432, 0.643021,
		39.048557, 40.592766, 47.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357456, 41.406498, 47.157616>,  <39.575432, 40.691769, 46.990635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357456, 41.406498, 47.157616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.246632, 41.161015, 47.453342>,  <39.180138, 41.013725, 47.630779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.246632, 41.161015, 47.453342>,  <39.357456, 41.406498, 47.157616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246632, 41.161015, 47.453342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301400, 0.675099, 0.673349,
		-0.912356, 0.409392, -0.002073,
		-0.277063, -0.613710, 0.739322,
		39.163513, 40.976902, 47.675140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876720, 41.728291, 47.508419>,  <39.357456, 41.406498, 47.157616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876720, 41.728291, 47.508419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031464, 41.453831, 47.754848>,  <39.124310, 41.289154, 47.902706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031464, 41.453831, 47.754848>,  <38.876720, 41.728291, 47.508419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031464, 41.453831, 47.754848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368942, 0.727454, 0.578527,
		-0.845117, 0.003486, 0.534571,
		0.386859, -0.686148, 0.616069,
		39.147522, 41.247986, 47.939671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876694, 41.906857, 48.208546>,  <38.876720, 41.728291, 47.508419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876694, 41.906857, 48.208546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154850, 41.628048, 48.278503>,  <39.321743, 41.460762, 48.320477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154850, 41.628048, 48.278503>,  <38.876694, 41.906857, 48.208546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154850, 41.628048, 48.278503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508623, 0.649303, 0.565428,
		-0.507675, -0.304240, 0.806042,
		0.695391, -0.697025, 0.174892,
		39.363468, 41.418941, 48.330971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188667, 42.077408, 48.896378>,  <38.876694, 41.906857, 48.208546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188667, 42.077408, 48.896378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448883, 41.833191, 48.715694>,  <39.605011, 41.686661, 48.607285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448883, 41.833191, 48.715694>,  <39.188667, 42.077408, 48.896378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448883, 41.833191, 48.715694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743845, 0.632240, 0.216720,
		0.153272, -0.476985, 0.865444,
		0.650540, -0.610539, -0.451707,
		39.644047, 41.650028, 48.580181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669643, 41.994026, 49.348682>,  <39.188667, 42.077408, 48.896378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669643, 41.994026, 49.348682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.845844, 41.884228, 49.006779>,  <39.951565, 41.818348, 48.801636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.845844, 41.884228, 49.006779>,  <39.669643, 41.994026, 49.348682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845844, 41.884228, 49.006779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821831, 0.506492, 0.260884,
		0.361316, -0.817385, 0.448701,
		0.440506, -0.274494, -0.854756,
		39.977997, 41.801880, 48.750351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.072445, 33.576771, 36.868855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825558, 33.869915, 36.754337>,  <33.677425, 34.045799, 36.685627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825558, 33.869915, 36.754337>,  <34.072445, 33.576771, 36.868855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825558, 33.869915, 36.754337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767422, 0.640997, -0.013653,
		0.173505, -0.228133, -0.958046,
		-0.617219, 0.732857, -0.286290,
		33.640392, 34.089771, 36.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638142, 33.433010, 37.198269>,  <34.072445, 33.576771, 36.868855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638142, 33.433010, 37.198269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922543, 33.648235, 37.017174>,  <35.093182, 33.777370, 36.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922543, 33.648235, 37.017174>,  <34.638142, 33.433010, 37.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922543, 33.648235, 37.017174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022680, 0.661039, 0.750009,
		0.702824, -0.522990, 0.482204,
		0.711003, 0.538060, -0.452732,
		35.135841, 33.809654, 36.881355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183578, 33.679367, 37.679096>,  <34.638142, 33.433010, 37.198269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183578, 33.679367, 37.679096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186985, 33.942707, 37.378029>,  <35.189030, 34.100712, 37.197388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186985, 33.942707, 37.378029>,  <35.183578, 33.679367, 37.679096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186985, 33.942707, 37.378029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107446, 0.747734, 0.655248,
		0.994174, -0.086451, -0.064370,
		0.008515, 0.658347, -0.752666,
		35.189541, 34.140213, 37.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737675, 34.237972, 37.833515>,  <35.183578, 33.679367, 37.679096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737675, 34.237972, 37.833515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501068, 34.402592, 37.556175>,  <35.359104, 34.501362, 37.389771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501068, 34.402592, 37.556175>,  <35.737675, 34.237972, 37.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501068, 34.402592, 37.556175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061172, 0.834540, 0.547540,
		0.803972, 0.366291, -0.468466,
		-0.591513, 0.411550, -0.693353,
		35.323616, 34.526058, 37.348167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165253, 34.879082, 37.600559>,  <35.737675, 34.237972, 37.833515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165253, 34.879082, 37.600559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782787, 34.932335, 37.496235>,  <35.553307, 34.964287, 37.433640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782787, 34.932335, 37.496235>,  <36.165253, 34.879082, 37.600559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782787, 34.932335, 37.496235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002452, 0.887002, 0.461759,
		0.292809, 0.442159, -0.847796,
		-0.956168, 0.133128, -0.260806,
		35.495937, 34.972275, 37.417992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156967, 35.522034, 37.326912>,  <36.165253, 34.879082, 37.600559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156967, 35.522034, 37.326912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782524, 35.442524, 37.442978>,  <35.557858, 35.394817, 37.512619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782524, 35.442524, 37.442978>,  <36.156967, 35.522034, 37.326912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782524, 35.442524, 37.442978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032857, 0.870799, 0.490540,
		-0.350186, 0.449662, -0.821689,
		-0.936104, -0.198778, 0.290167,
		35.501694, 35.382889, 37.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789841, 36.152290, 37.151531>,  <36.156967, 35.522034, 37.326912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789841, 36.152290, 37.151531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565544, 35.962215, 37.422756>,  <35.430965, 35.848171, 37.585491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565544, 35.962215, 37.422756>,  <35.789841, 36.152290, 37.151531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565544, 35.962215, 37.422756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153839, 0.864453, 0.478596,
		-0.813575, 0.164056, -0.557837,
		-0.560740, -0.475190, 0.678059,
		35.397324, 35.819660, 37.626175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127579, 36.599270, 37.346378>,  <35.789841, 36.152290, 37.151531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127579, 36.599270, 37.346378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168606, 36.347534, 37.654510>,  <35.193222, 36.196491, 37.839390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168606, 36.347534, 37.654510>,  <35.127579, 36.599270, 37.346378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168606, 36.347534, 37.654510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207121, 0.743932, 0.635347,
		-0.972924, -0.224716, -0.054048,
		0.102565, -0.629339, 0.770333,
		35.199375, 36.158733, 37.885609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640915, 36.890007, 37.732014>,  <35.127579, 36.599270, 37.346378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640915, 36.890007, 37.732014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834137, 36.649101, 37.986237>,  <34.950069, 36.504559, 38.138771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834137, 36.649101, 37.986237>,  <34.640915, 36.890007, 37.732014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834137, 36.649101, 37.986237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175251, 0.644675, 0.744097,
		-0.857872, -0.470822, 0.205867,
		0.483055, -0.602262, 0.635561,
		34.979053, 36.468422, 38.176907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192589, 36.871452, 38.321316>,  <34.640915, 36.890007, 37.732014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192589, 36.871452, 38.321316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561932, 36.772217, 38.438522>,  <34.783539, 36.712673, 38.508846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561932, 36.772217, 38.438522>,  <34.192589, 36.871452, 38.321316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561932, 36.772217, 38.438522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114700, 0.550084, 0.827195,
		-0.366406, -0.797407, 0.479468,
		0.923359, -0.248094, 0.293017,
		34.838940, 36.697788, 38.526428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146442, 36.733269, 39.014267>,  <34.192589, 36.871452, 38.321316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146442, 36.733269, 39.014267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540321, 36.796246, 38.984379>,  <34.776649, 36.834034, 38.966446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540321, 36.796246, 38.984379>,  <34.146442, 36.733269, 39.014267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540321, 36.796246, 38.984379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010926, 0.372133, 0.928115,
		0.173932, -0.914729, 0.364718,
		0.984697, 0.157444, -0.074721,
		34.835732, 36.843479, 38.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505646, 36.443256, 39.633629>,  <34.146442, 36.733269, 39.014267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505646, 36.443256, 39.633629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742905, 36.722183, 39.472664>,  <34.885262, 36.889538, 39.376087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742905, 36.722183, 39.472664>,  <34.505646, 36.443256, 39.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742905, 36.722183, 39.472664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066816, 0.540739, 0.838532,
		0.802317, -0.470485, 0.367330,
		0.593147, 0.697312, -0.402408,
		34.920849, 36.931377, 39.351940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315170, 35.645996, 39.781006>,  <34.505646, 36.443256, 39.633629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315170, 35.645996, 39.781006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064621, 35.559540, 40.080589>,  <33.914291, 35.507664, 40.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064621, 35.559540, 40.080589>,  <34.315170, 35.645996, 39.781006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064621, 35.559540, 40.080589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531801, -0.584003, -0.613293,
		0.569956, -0.782446, 0.250855,
		-0.626369, -0.216145, 0.748962,
		33.876709, 35.494698, 40.305279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246307, 34.968716, 39.765976>,  <34.315170, 35.645996, 39.781006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246307, 34.968716, 39.765976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937820, 35.094364, 39.987446>,  <33.752728, 35.169754, 40.120327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937820, 35.094364, 39.987446>,  <34.246307, 34.968716, 39.765976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937820, 35.094364, 39.987446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616231, -0.586528, -0.525589,
		0.159646, -0.746534, 0.645911,
		-0.771215, 0.314122, 0.553674,
		33.706455, 35.188602, 40.153549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830437, 34.335583, 39.868393>,  <34.246307, 34.968716, 39.765976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830437, 34.335583, 39.868393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596268, 34.658230, 39.901012>,  <33.455769, 34.851818, 39.920582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596268, 34.658230, 39.901012>,  <33.830437, 34.335583, 39.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596268, 34.658230, 39.901012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644828, -0.402296, -0.649889,
		-0.491406, -0.433041, 0.755642,
		-0.585421, 0.806618, 0.081546,
		33.420643, 34.900215, 39.925476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197109, 34.062386, 40.024384>,  <33.830437, 34.335583, 39.868393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197109, 34.062386, 40.024384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144482, 34.429951, 39.875633>,  <33.112904, 34.650490, 39.786385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144482, 34.429951, 39.875633>,  <33.197109, 34.062386, 40.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144482, 34.429951, 39.875633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757217, -0.335265, -0.560553,
		-0.639775, 0.207836, 0.739927,
		-0.131569, 0.918913, -0.371872,
		33.105011, 34.705624, 39.764072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359444, 34.253086, 39.920494>,  <33.197109, 34.062386, 40.024384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359444, 34.253086, 39.920494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572113, 34.489979, 39.678307>,  <32.699715, 34.632114, 39.532993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572113, 34.489979, 39.678307>,  <32.359444, 34.253086, 39.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572113, 34.489979, 39.678307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607733, -0.231144, -0.759758,
		-0.589900, 0.771906, 0.237022,
		0.531676, 0.592227, -0.605464,
		32.731617, 34.667648, 39.496666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845676, 34.574730, 39.604706>,  <32.359444, 34.253086, 39.920494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845676, 34.574730, 39.604706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140648, 34.605022, 39.336239>,  <32.317631, 34.623199, 39.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140648, 34.605022, 39.336239>,  <31.845676, 34.574730, 39.604706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140648, 34.605022, 39.336239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642781, -0.226513, -0.731795,
		-0.207447, 0.971060, -0.118359,
		0.737426, 0.075730, -0.671169,
		32.361877, 34.627743, 39.134888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515005, 34.835365, 39.002586>,  <31.845676, 34.574730, 39.604706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515005, 34.835365, 39.002586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865049, 34.709911, 38.855175>,  <32.075077, 34.634640, 38.766727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865049, 34.709911, 38.855175>,  <31.515005, 34.835365, 39.002586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865049, 34.709911, 38.855175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471798, -0.383571, -0.793902,
		0.107639, 0.868623, -0.483640,
		0.875112, -0.313635, -0.368527,
		32.127583, 34.615822, 38.744617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660351, 35.205242, 38.310329>,  <31.515005, 34.835365, 39.002586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660351, 35.205242, 38.310329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870356, 34.865326, 38.329147>,  <31.996359, 34.661377, 38.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870356, 34.865326, 38.329147>,  <31.660351, 35.205242, 38.310329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870356, 34.865326, 38.329147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344307, -0.262619, -0.901379,
		0.778340, 0.457038, -0.430468,
		0.525014, -0.849793, 0.047045,
		32.027859, 34.610390, 38.343262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936945, 35.091259, 37.593536>,  <31.660351, 35.205242, 38.310329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936945, 35.091259, 37.593536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958162, 34.726894, 37.757206>,  <31.970894, 34.508274, 37.855408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958162, 34.726894, 37.757206>,  <31.936945, 35.091259, 37.593536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958162, 34.726894, 37.757206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339221, -0.401823, -0.850569,
		0.939210, -0.093682, -0.330315,
		0.053045, -0.910912, 0.409176,
		31.974075, 34.453621, 37.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199581, 34.677670, 37.043545>,  <31.936945, 35.091259, 37.593536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199581, 34.677670, 37.043545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090580, 34.398697, 37.308674>,  <32.025181, 34.231316, 37.467751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090580, 34.398697, 37.308674>,  <32.199581, 34.677670, 37.043545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090580, 34.398697, 37.308674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356115, -0.566864, -0.742864,
		0.893827, -0.438471, -0.093895,
		-0.272499, -0.697429, 0.662825,
		32.008831, 34.189468, 37.507523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493450, 34.069031, 36.724293>,  <32.199581, 34.677670, 37.043545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493450, 34.069031, 36.724293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207664, 33.959236, 36.981724>,  <32.036194, 33.893360, 37.136181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207664, 33.959236, 36.981724>,  <32.493450, 34.069031, 36.724293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207664, 33.959236, 36.981724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465699, -0.499918, -0.730210,
		0.522171, -0.821425, 0.229346,
		-0.714467, -0.274488, 0.643579,
		31.993324, 33.876888, 37.174797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432644, 33.305355, 36.781765>,  <32.493450, 34.069031, 36.724293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432644, 33.305355, 36.781765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077663, 33.465435, 36.873222>,  <31.864676, 33.561481, 36.928097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077663, 33.465435, 36.873222>,  <32.432644, 33.305355, 36.781765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077663, 33.465435, 36.873222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423562, -0.512507, -0.746948,
		-0.181748, -0.759721, 0.624332,
		-0.887447, 0.400200, 0.228642,
		31.811430, 33.585495, 36.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599873, 32.920971, 36.175900>,  <32.432644, 33.305355, 36.781765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599873, 32.920971, 36.175900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345547, 32.895821, 36.483612>,  <32.192951, 32.880730, 36.668240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345547, 32.895821, 36.483612>,  <32.599873, 32.920971, 36.175900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345547, 32.895821, 36.483612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377640, -0.894576, 0.239003,
		0.673151, 0.442472, 0.592526,
		-0.635811, -0.062877, 0.769279,
		32.154804, 32.876957, 36.714397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980709, 32.853348, 36.872616>,  <32.599873, 32.920971, 36.175900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980709, 32.853348, 36.872616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636631, 32.649441, 36.866917>,  <32.430183, 32.527096, 36.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636631, 32.649441, 36.866917>,  <32.980709, 32.853348, 36.872616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636631, 32.649441, 36.866917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504540, -0.854764, 0.121731,
		-0.074230, 0.097525, 0.992461,
		-0.860192, -0.509772, -0.014244,
		32.378574, 32.496510, 36.862644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977448, 32.502892, 37.452316>,  <32.980709, 32.853348, 36.872616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977448, 32.502892, 37.452316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735264, 32.305954, 37.202194>,  <32.589954, 32.187790, 37.052120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735264, 32.305954, 37.202194>,  <32.977448, 32.502892, 37.452316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735264, 32.305954, 37.202194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530930, -0.835175, 0.143511,
		-0.592900, -0.245106, 0.767068,
		-0.605461, -0.492347, -0.625310,
		32.553627, 32.158249, 37.014603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568966, 32.656647, 37.862492>,  <32.977448, 32.502892, 37.452316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568966, 32.656647, 37.862492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758347, 32.318569, 37.961685>,  <33.871975, 32.115723, 38.021202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758347, 32.318569, 37.961685>,  <33.568966, 32.656647, 37.862492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758347, 32.318569, 37.961685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454571, 0.475599, 0.753107,
		-0.754462, -0.243830, 0.609371,
		0.473447, -0.845193, 0.247984,
		33.900379, 32.065010, 38.036079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521351, 32.410126, 38.648026>,  <33.568966, 32.656647, 37.862492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521351, 32.410126, 38.648026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855282, 32.269951, 38.478195>,  <34.055641, 32.185844, 38.376297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855282, 32.269951, 38.478195>,  <33.521351, 32.410126, 38.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855282, 32.269951, 38.478195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499494, 0.157899, 0.851806,
		-0.231465, -0.923180, 0.306859,
		0.834823, -0.350437, -0.424575,
		34.105728, 32.164822, 38.350822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637482, 31.835926, 39.082981>,  <33.521351, 32.410126, 38.648026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637482, 31.835926, 39.082981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951702, 32.005543, 38.902714>,  <34.140236, 32.107311, 38.794556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951702, 32.005543, 38.902714>,  <33.637482, 31.835926, 39.082981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951702, 32.005543, 38.902714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411122, 0.186669, 0.892263,
		0.462481, -0.886196, -0.027694,
		0.785551, 0.424040, -0.450665,
		34.187366, 32.132755, 38.767513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172344, 31.510139, 39.425831>,  <33.637482, 31.835926, 39.082981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172344, 31.510139, 39.425831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337353, 31.826784, 39.245533>,  <34.436359, 32.016773, 39.137352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337353, 31.826784, 39.245533>,  <34.172344, 31.510139, 39.425831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337353, 31.826784, 39.245533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667911, 0.073633, 0.740590,
		0.619451, -0.606569, -0.498352,
		0.412524, 0.791613, -0.450746,
		34.461109, 32.064270, 39.110310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922447, 31.484087, 39.487736>,  <34.172344, 31.510139, 39.425831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922447, 31.484087, 39.487736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845303, 31.868422, 39.408142>,  <34.799015, 32.099022, 39.360386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845303, 31.868422, 39.408142>,  <34.922447, 31.484087, 39.487736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845303, 31.868422, 39.408142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626570, 0.276656, 0.728609,
		0.755126, 0.015839, -0.655388,
		-0.192858, 0.960838, -0.198986,
		34.787445, 32.156673, 39.348446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611805, 31.741802, 39.448040>,  <34.922447, 31.484087, 39.487736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611805, 31.741802, 39.448040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354225, 32.044666, 39.491920>,  <35.199677, 32.226383, 39.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354225, 32.044666, 39.491920>,  <35.611805, 31.741802, 39.448040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354225, 32.044666, 39.491920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643402, 0.458372, 0.613130,
		0.413955, 0.465407, -0.782328,
		-0.643953, 0.757160, 0.109699,
		35.161037, 32.271812, 39.524830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012787, 32.401478, 39.423157>,  <35.611805, 31.741802, 39.448040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012787, 32.401478, 39.423157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663425, 32.461811, 39.608376>,  <35.453808, 32.498009, 39.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663425, 32.461811, 39.608376>,  <36.012787, 32.401478, 39.423157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663425, 32.461811, 39.608376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445788, 0.630402, 0.635505,
		-0.196054, 0.761475, -0.617834,
		-0.873405, 0.150830, 0.463049,
		35.401405, 32.507061, 39.747292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241028, 33.040596, 39.667896>,  <36.012787, 32.401478, 39.423157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241028, 33.040596, 39.667896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899689, 32.948193, 39.854839>,  <35.694885, 32.892750, 39.967007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899689, 32.948193, 39.854839>,  <36.241028, 33.040596, 39.667896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899689, 32.948193, 39.854839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216756, 0.658093, 0.721062,
		-0.474143, 0.716622, -0.511509,
		-0.853350, -0.231013, 0.467362,
		35.643684, 32.878887, 39.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962872, 33.676285, 39.839104>,  <36.241028, 33.040596, 39.667896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962872, 33.676285, 39.839104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797745, 33.403206, 40.080269>,  <35.698669, 33.239357, 40.224968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797745, 33.403206, 40.080269>,  <35.962872, 33.676285, 39.839104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797745, 33.403206, 40.080269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260652, 0.545710, 0.796405,
		-0.872719, 0.485922, -0.047333,
		-0.412821, -0.682701, 0.602909,
		35.673897, 33.198395, 40.261143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473259, 33.983624, 40.387470>,  <35.962872, 33.676285, 39.839104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473259, 33.983624, 40.387470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597832, 33.634995, 40.538929>,  <35.672577, 33.425819, 40.629807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597832, 33.634995, 40.538929>,  <35.473259, 33.983624, 40.387470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597832, 33.634995, 40.538929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281352, 0.465173, 0.839318,
		-0.907662, -0.154857, 0.390088,
		0.311433, -0.871569, 0.378650,
		35.691261, 33.373524, 40.652523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266296, 34.052223, 41.087208>,  <35.473259, 33.983624, 40.387470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266296, 34.052223, 41.087208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554501, 33.775921, 41.062836>,  <35.727425, 33.610138, 41.048210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554501, 33.775921, 41.062836>,  <35.266296, 34.052223, 41.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554501, 33.775921, 41.062836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380998, 0.320921, 0.867093,
		-0.579397, -0.647968, 0.494406,
		0.720514, -0.690759, -0.060933,
		35.770653, 33.568695, 41.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295486, 33.615089, 41.720528>,  <35.266296, 34.052223, 41.087208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295486, 33.615089, 41.720528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655319, 33.580200, 41.549347>,  <35.871220, 33.559265, 41.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655319, 33.580200, 41.549347>,  <35.295486, 33.615089, 41.720528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655319, 33.580200, 41.549347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426464, 0.386856, 0.817600,
		0.094240, -0.918005, 0.385208,
		0.899582, -0.087226, -0.427954,
		35.925194, 33.554031, 41.420959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724201, 33.326035, 42.306950>,  <35.295486, 33.615089, 41.720528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724201, 33.326035, 42.306950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011326, 33.428120, 42.047840>,  <36.183601, 33.489372, 41.892372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011326, 33.428120, 42.047840>,  <35.724201, 33.326035, 42.306950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011326, 33.428120, 42.047840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536665, 0.389909, 0.748306,
		0.443554, -0.884780, 0.142914,
		0.717809, 0.255217, -0.647776,
		36.226669, 33.504684, 41.853508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368382, 33.035809, 42.489628>,  <35.724201, 33.326035, 42.306950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368382, 33.035809, 42.489628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462299, 33.359291, 42.273899>,  <36.518650, 33.553383, 42.144463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462299, 33.359291, 42.273899>,  <36.368382, 33.035809, 42.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462299, 33.359291, 42.273899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435965, 0.408286, 0.802021,
		0.868797, -0.423430, -0.256707,
		0.234790, 0.808708, -0.539318,
		36.532738, 33.601902, 42.112103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144604, 33.114029, 42.484421>,  <36.368382, 33.035809, 42.489628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144604, 33.114029, 42.484421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025551, 33.477287, 42.366650>,  <36.954117, 33.695240, 42.295986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025551, 33.477287, 42.366650>,  <37.144604, 33.114029, 42.484421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025551, 33.477287, 42.366650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587302, 0.417316, 0.693487,
		0.752655, 0.033488, -0.657562,
		-0.297635, 0.908144, -0.294428,
		36.936260, 33.749729, 42.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791592, 33.542351, 42.265701>,  <37.144604, 33.114029, 42.484421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791592, 33.542351, 42.265701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491352, 33.795895, 42.340347>,  <37.311207, 33.948021, 42.385136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491352, 33.795895, 42.340347>,  <37.791592, 33.542351, 42.265701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491352, 33.795895, 42.340347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548852, 0.440842, 0.710225,
		0.367914, 0.635518, -0.678790,
		-0.750600, 0.633857, 0.186613,
		37.266171, 33.986053, 42.396332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062473, 34.228607, 42.244205>,  <37.791592, 33.542351, 42.265701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062473, 34.228607, 42.244205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727463, 34.249226, 42.461788>,  <37.526455, 34.261597, 42.592339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727463, 34.249226, 42.461788>,  <38.062473, 34.228607, 42.244205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727463, 34.249226, 42.461788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449712, 0.630466, 0.632670,
		-0.310338, 0.774503, -0.551212,
		-0.837526, 0.051546, 0.543961,
		37.476204, 34.264690, 42.624977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916958, 35.026482, 42.232281>,  <38.062473, 34.228607, 42.244205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916958, 35.026482, 42.232281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712032, 34.868721, 42.537434>,  <37.589077, 34.774063, 42.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712032, 34.868721, 42.537434>,  <37.916958, 35.026482, 42.232281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712032, 34.868721, 42.537434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494272, 0.591024, 0.637484,
		-0.702303, 0.703661, -0.107849,
		-0.512314, -0.394401, 0.762878,
		37.558338, 34.750401, 42.766296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744488, 35.540508, 42.659351>,  <37.916958, 35.026482, 42.232281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744488, 35.540508, 42.659351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717831, 35.219185, 42.896084>,  <37.701836, 35.026390, 43.038124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717831, 35.219185, 42.896084>,  <37.744488, 35.540508, 42.659351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717831, 35.219185, 42.896084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509682, 0.482513, 0.712324,
		-0.857778, 0.349117, 0.377273,
		-0.066645, -0.803305, 0.591827,
		37.697838, 34.978195, 43.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403271, 35.799004, 43.313347>,  <37.744488, 35.540508, 42.659351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403271, 35.799004, 43.313347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574482, 35.455429, 43.425785>,  <37.677208, 35.249283, 43.493248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574482, 35.455429, 43.425785>,  <37.403271, 35.799004, 43.313347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574482, 35.455429, 43.425785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375389, 0.451894, 0.809244,
		-0.822115, -0.240861, 0.515861,
		0.428030, -0.858940, 0.281092,
		37.702892, 35.197746, 43.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174175, 35.661732, 43.932617>,  <37.403271, 35.799004, 43.313347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174175, 35.661732, 43.932617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520390, 35.462990, 43.907356>,  <37.728119, 35.343746, 43.892200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520390, 35.462990, 43.907356>,  <37.174175, 35.661732, 43.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520390, 35.462990, 43.907356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266760, 0.350608, 0.897727,
		-0.423896, -0.793860, 0.436004,
		0.865535, -0.496851, -0.063148,
		37.780048, 35.313934, 43.888412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255032, 35.262974, 44.634109>,  <37.174175, 35.661732, 43.932617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255032, 35.262974, 44.634109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617065, 35.277184, 44.464615>,  <37.834286, 35.285709, 44.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617065, 35.277184, 44.464615>,  <37.255032, 35.262974, 44.634109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617065, 35.277184, 44.464615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410889, 0.183499, 0.893028,
		0.109478, -0.982378, 0.151487,
		0.905088, 0.035523, -0.423737,
		37.888592, 35.287842, 44.337494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664574, 34.963348, 45.072075>,  <37.255032, 35.262974, 44.634109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664574, 34.963348, 45.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963890, 35.113808, 44.853508>,  <38.143478, 35.204082, 44.722366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963890, 35.113808, 44.853508>,  <37.664574, 34.963348, 45.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963890, 35.113808, 44.853508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493403, 0.234992, 0.837456,
		0.443414, -0.896264, -0.009752,
		0.748289, 0.376151, -0.546418,
		38.188377, 35.226654, 44.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167778, 34.675652, 45.403370>,  <37.664574, 34.963348, 45.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167778, 34.675652, 45.403370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312801, 34.989334, 45.201946>,  <38.399815, 35.177544, 45.081093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312801, 34.989334, 45.201946>,  <38.167778, 34.675652, 45.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312801, 34.989334, 45.201946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564559, 0.245096, 0.788163,
		0.741503, -0.570043, -0.353870,
		0.362555, 0.784206, -0.503563,
		38.421566, 35.224594, 45.050877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958054, 34.618073, 45.529156>,  <38.167778, 34.675652, 45.403370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958054, 34.618073, 45.529156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881432, 34.985291, 45.390301>,  <38.835461, 35.205620, 45.306988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881432, 34.985291, 45.390301>,  <38.958054, 34.618073, 45.529156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881432, 34.985291, 45.390301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642458, 0.384667, 0.662781,
		0.741995, -0.096066, -0.663487,
		-0.191551, 0.918043, -0.347139,
		38.823967, 35.260704, 45.286160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706551, 34.986713, 45.382717>,  <38.958054, 34.618073, 45.529156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706551, 34.986713, 45.382717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413551, 35.246323, 45.464909>,  <39.237751, 35.402088, 45.514225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413551, 35.246323, 45.464909>,  <39.706551, 34.986713, 45.382717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413551, 35.246323, 45.464909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536380, 0.364343, 0.761282,
		0.419224, 0.667850, -0.615002,
		-0.732494, 0.649023, 0.205480,
		39.193802, 35.441029, 45.526554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004074, 35.645580, 45.501472>,  <39.706551, 34.986713, 45.382717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004074, 35.645580, 45.501472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645920, 35.660297, 45.678982>,  <39.431026, 35.669128, 45.785488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645920, 35.660297, 45.678982>,  <40.004074, 35.645580, 45.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645920, 35.660297, 45.678982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432849, 0.305918, 0.847971,
		-0.104562, 0.951347, -0.289838,
		-0.895382, 0.036791, 0.443777,
		39.377304, 35.671333, 45.812115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190708, 36.320969, 45.463528>,  <40.004074, 35.645580, 45.501472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190708, 36.320969, 45.463528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589405, 36.289162, 45.468872>,  <40.828625, 36.270077, 45.472080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589405, 36.289162, 45.468872>,  <40.190708, 36.320969, 45.463528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589405, 36.289162, 45.468872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003822, -0.212113, -0.977238,
		0.080545, 0.974004, -0.211726,
		0.996744, -0.079521, 0.013362,
		40.888428, 36.265305, 45.472881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213310, 36.314507, 44.775749>,  <40.190708, 36.320969, 45.463528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213310, 36.314507, 44.775749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560024, 36.182205, 44.925037>,  <40.768051, 36.102825, 45.014610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560024, 36.182205, 44.925037>,  <40.213310, 36.314507, 44.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560024, 36.182205, 44.925037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253146, -0.352977, -0.900735,
		0.429654, 0.875221, -0.222227,
		0.866784, -0.330749, 0.373216,
		40.820061, 36.082981, 45.037003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752041, 36.611828, 44.415928>,  <40.213310, 36.314507, 44.775749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752041, 36.611828, 44.415928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902878, 36.265617, 44.547783>,  <40.993378, 36.057892, 44.626896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902878, 36.265617, 44.547783>,  <40.752041, 36.611828, 44.415928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902878, 36.265617, 44.547783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209781, -0.266847, -0.940630,
		0.902106, 0.423854, 0.080946,
		0.377090, -0.865529, 0.329641,
		41.016006, 36.005959, 44.646675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329994, 36.610100, 44.057922>,  <40.752041, 36.611828, 44.415928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329994, 36.610100, 44.057922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252026, 36.226849, 44.141827>,  <41.205242, 35.996899, 44.192169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252026, 36.226849, 44.141827>,  <41.329994, 36.610100, 44.057922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252026, 36.226849, 44.141827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011666, -0.211578, -0.977291,
		0.980749, -0.192944, 0.030064,
		-0.194924, -0.958127, 0.209756,
		41.193550, 35.939411, 44.204754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680473, 36.211567, 43.563511>,  <41.329994, 36.610100, 44.057922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680473, 36.211567, 43.563511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419060, 35.943928, 43.705044>,  <41.262211, 35.783344, 43.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419060, 35.943928, 43.705044>,  <41.680473, 36.211567, 43.563511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419060, 35.943928, 43.705044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389501, -0.103526, -0.915189,
		0.648985, -0.735925, -0.192957,
		-0.653534, -0.669101, 0.353830,
		41.223000, 35.743198, 43.811192>
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
