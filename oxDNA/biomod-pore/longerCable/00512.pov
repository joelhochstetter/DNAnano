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
	<24.301249, 35.329170, 34.866165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452625, 34.978802, 34.985859>,  <24.543451, 34.768581, 35.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452625, 34.978802, 34.985859>,  <24.301249, 35.329170, 34.866165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452625, 34.978802, 34.985859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600309, -0.478328, -0.640961,
		0.704564, 0.062934, -0.706844,
		0.378442, -0.875923, 0.299232,
		24.566158, 34.716026, 35.075630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593460, 34.869469, 34.239071>,  <24.301249, 35.329170, 34.866165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593460, 34.869469, 34.239071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407047, 34.663445, 34.526829>,  <24.295200, 34.539829, 34.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407047, 34.663445, 34.526829>,  <24.593460, 34.869469, 34.239071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407047, 34.663445, 34.526829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600956, -0.412475, -0.684629,
		0.649358, -0.751382, -0.117304,
		-0.466032, -0.515064, 0.719391,
		24.267237, 34.508926, 34.742645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582531, 34.068058, 34.138859>,  <24.593460, 34.869469, 34.239071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582531, 34.068058, 34.138859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261694, 34.215225, 34.327023>,  <24.069193, 34.303524, 34.439922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261694, 34.215225, 34.327023>,  <24.582531, 34.068058, 34.138859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261694, 34.215225, 34.327023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593340, -0.580385, -0.557765,
		0.067808, -0.726492, 0.683821,
		-0.802091, 0.367917, 0.470411,
		24.021067, 34.325600, 34.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141773, 34.458244, 34.423134>,  <24.582531, 34.068058, 34.138859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141773, 34.458244, 34.423134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150724, 34.152256, 34.680607>,  <25.156096, 33.968662, 34.835091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150724, 34.152256, 34.680607>,  <25.141773, 34.458244, 34.423134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150724, 34.152256, 34.680607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959242, -0.164984, -0.229421,
		0.281697, 0.622579, 0.730097,
		0.022379, -0.764968, 0.643680,
		25.157438, 33.922764, 34.873711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801510, 34.386623, 34.804340>,  <25.141773, 34.458244, 34.423134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801510, 34.386623, 34.804340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655107, 34.014530, 34.793716>,  <25.567266, 33.791275, 34.787342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655107, 34.014530, 34.793716>,  <25.801510, 34.386623, 34.804340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655107, 34.014530, 34.793716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911981, -0.352852, -0.209251,
		0.185279, -0.100814, 0.977501,
		-0.366008, -0.930232, -0.026564,
		25.545305, 33.735462, 34.785748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263050, 33.869148, 35.161949>,  <25.801510, 34.386623, 34.804340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263050, 33.869148, 35.161949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077641, 33.663925, 34.872974>,  <25.966394, 33.540791, 34.699589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077641, 33.663925, 34.872974>,  <26.263050, 33.869148, 35.161949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077641, 33.663925, 34.872974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780320, -0.622640, -0.058478,
		-0.419815, -0.590838, 0.688960,
		-0.463525, -0.513059, -0.722437,
		25.938583, 33.510006, 34.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121284, 33.186867, 35.403694>,  <26.263050, 33.869148, 35.161949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121284, 33.186867, 35.403694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200800, 33.196068, 35.011784>,  <26.248508, 33.201588, 34.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200800, 33.196068, 35.011784>,  <26.121284, 33.186867, 35.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200800, 33.196068, 35.011784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846581, -0.507693, 0.159843,
		-0.493747, -0.861231, -0.120397,
		0.198786, 0.023004, -0.979773,
		26.260435, 33.202969, 34.717854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040947, 32.603779, 34.953011>,  <26.121284, 33.186867, 35.403694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040947, 32.603779, 34.953011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338106, 32.797745, 34.768421>,  <26.516401, 32.914124, 34.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338106, 32.797745, 34.768421>,  <26.040947, 32.603779, 34.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338106, 32.797745, 34.768421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618475, -0.760961, 0.196027,
		-0.256106, -0.431038, -0.865226,
		0.742898, 0.484917, -0.461473,
		26.560976, 32.943218, 34.629978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397562, 32.146217, 34.484848>,  <26.040947, 32.603779, 34.953011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397562, 32.146217, 34.484848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668352, 32.420731, 34.591217>,  <26.830826, 32.585438, 34.655041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668352, 32.420731, 34.591217>,  <26.397562, 32.146217, 34.484848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668352, 32.420731, 34.591217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727102, -0.679639, -0.097024,
		0.114148, 0.259039, -0.959098,
		0.676973, 0.686287, 0.265927,
		26.871445, 32.626617, 34.670994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896919, 31.987083, 34.040340>,  <26.397562, 32.146217, 34.484848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896919, 31.987083, 34.040340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084152, 32.203342, 34.319939>,  <27.196491, 32.333099, 34.487698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084152, 32.203342, 34.319939>,  <26.896919, 31.987083, 34.040340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084152, 32.203342, 34.319939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783903, -0.619175, -0.046030,
		0.407917, 0.569493, -0.713639,
		0.468081, 0.540648, 0.698999,
		27.224577, 32.365536, 34.529640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657623, 32.053757, 33.820683>,  <26.896919, 31.987083, 34.040340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657623, 32.053757, 33.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652399, 32.122978, 34.214611>,  <27.649265, 32.164513, 34.450970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652399, 32.122978, 34.214611>,  <27.657623, 32.053757, 33.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652399, 32.122978, 34.214611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822791, -0.557808, 0.108929,
		0.568194, 0.811728, -0.135104,
		-0.013059, 0.173055, 0.984826,
		27.648481, 32.174896, 34.510059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352142, 32.057659, 33.991283>,  <27.657623, 32.053757, 33.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352142, 32.057659, 33.991283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153942, 32.001225, 34.334114>,  <28.035023, 31.967365, 34.539810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153942, 32.001225, 34.334114>,  <28.352142, 32.057659, 33.991283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153942, 32.001225, 34.334114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674115, -0.684713, 0.277017,
		0.547767, 0.715028, 0.434381,
		-0.495501, -0.141082, 0.857074,
		28.005291, 31.958900, 34.591236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677320, 31.385851, 34.050209>,  <28.352142, 32.057659, 33.991283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677320, 31.385851, 34.050209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847460, 31.405014, 34.411713>,  <28.949543, 31.416512, 34.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847460, 31.405014, 34.411713>,  <28.677320, 31.385851, 34.050209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847460, 31.405014, 34.411713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830758, 0.416847, 0.368891,
		-0.359058, -0.907713, 0.217103,
		0.425346, 0.047907, 0.903762,
		28.975063, 31.419386, 34.682842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434031, 30.938877, 34.682846>,  <28.677320, 31.385851, 34.050209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434031, 30.938877, 34.682846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584328, 31.287071, 34.810013>,  <28.674507, 31.495987, 34.886314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584328, 31.287071, 34.810013>,  <28.434031, 30.938877, 34.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584328, 31.287071, 34.810013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905328, 0.271504, 0.326599,
		0.197982, -0.410541, 0.890090,
		0.375745, 0.870483, 0.317921,
		28.697052, 31.548216, 34.905388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170092, 31.123703, 35.377243>,  <28.434031, 30.938877, 34.682846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170092, 31.123703, 35.377243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252918, 31.462948, 35.182175>,  <28.302614, 31.666494, 35.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252918, 31.462948, 35.182175>,  <28.170092, 31.123703, 35.377243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252918, 31.462948, 35.182175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879513, 0.379688, 0.286868,
		0.428461, 0.369516, 0.824548,
		0.207069, 0.848112, -0.487676,
		28.315039, 31.717382, 35.035873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849215, 31.759695, 35.728764>,  <28.170092, 31.123703, 35.377243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849215, 31.759695, 35.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928976, 31.902599, 35.363773>,  <27.976833, 31.988342, 35.144779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928976, 31.902599, 35.363773>,  <27.849215, 31.759695, 35.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928976, 31.902599, 35.363773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687449, 0.714584, 0.129550,
		0.698320, 0.601444, 0.388090,
		0.199406, 0.357260, -0.912471,
		27.988798, 32.009777, 35.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591345, 32.452984, 35.780388>,  <27.849215, 31.759695, 35.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591345, 32.452984, 35.780388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625555, 32.381386, 35.388336>,  <27.646082, 32.338428, 35.153107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625555, 32.381386, 35.388336>,  <27.591345, 32.452984, 35.780388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625555, 32.381386, 35.388336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694570, 0.694574, -0.187455,
		0.714324, 0.696798, -0.064922,
		0.085525, -0.178996, -0.980125,
		27.651213, 32.327686, 35.094299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765009, 33.077698, 35.518864>,  <27.591345, 32.452984, 35.780388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765009, 33.077698, 35.518864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579470, 32.851830, 35.245808>,  <27.468145, 32.716309, 35.081974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579470, 32.851830, 35.245808>,  <27.765009, 33.077698, 35.518864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579470, 32.851830, 35.245808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657774, 0.735678, -0.161586,
		0.593444, 0.374070, -0.712668,
		-0.463850, -0.564667, -0.682638,
		27.440315, 32.682430, 35.041016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829035, 33.456268, 34.919231>,  <27.765009, 33.077698, 35.518864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829035, 33.456268, 34.919231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513948, 33.219196, 34.852024>,  <27.324896, 33.076954, 34.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513948, 33.219196, 34.852024>,  <27.829035, 33.456268, 34.919231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513948, 33.219196, 34.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574893, 0.805240, -0.145211,
		0.221358, -0.017794, -0.975030,
		-0.787717, -0.592682, -0.168016,
		27.277634, 33.041393, 34.801620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606169, 33.575424, 34.182468>,  <27.829035, 33.456268, 34.919231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606169, 33.575424, 34.182468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288591, 33.392502, 34.342731>,  <27.098045, 33.282749, 34.438889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288591, 33.392502, 34.342731>,  <27.606169, 33.575424, 34.182468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288591, 33.392502, 34.342731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580670, 0.765665, -0.276728,
		-0.180218, -0.452355, -0.873439,
		-0.793941, -0.457309, 0.400656,
		27.050409, 33.255310, 34.462929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912796, 33.581547, 33.666126>,  <27.606169, 33.575424, 34.182468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912796, 33.581547, 33.666126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830177, 33.568211, 34.057274>,  <26.780607, 33.560211, 34.291962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830177, 33.568211, 34.057274>,  <26.912796, 33.581547, 33.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830177, 33.568211, 34.057274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427189, 0.902204, -0.059473,
		-0.880255, -0.430019, -0.200588,
		-0.206546, -0.033338, 0.977869,
		26.768213, 33.558208, 34.350636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872000, 33.527107, 32.827427>,  <26.912796, 33.581547, 33.666126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872000, 33.527107, 32.827427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808994, 33.919884, 32.785511>,  <26.771191, 34.155548, 32.760361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808994, 33.919884, 32.785511>,  <26.872000, 33.527107, 32.827427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808994, 33.919884, 32.785511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260968, 0.143735, 0.954587,
		0.952410, 0.123014, -0.278895,
		-0.157514, 0.981941, -0.104792,
		26.761740, 34.214466, 32.754074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633795, 33.860580, 32.939354>,  <26.872000, 33.527107, 32.827427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633795, 33.860580, 32.939354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720432, 34.129463, 33.222546>,  <27.772415, 34.290791, 33.392460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720432, 34.129463, 33.222546>,  <27.633795, 33.860580, 32.939354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720432, 34.129463, 33.222546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899179, 0.145073, -0.412832,
		-0.380215, 0.726015, -0.573009,
		0.216594, 0.672203, 0.707977,
		27.785410, 34.331123, 33.434940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161945, 33.758667, 32.392483>,  <27.633795, 33.860580, 32.939354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161945, 33.758667, 32.392483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321630, 33.471714, 32.164101>,  <28.417440, 33.299541, 32.027073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321630, 33.471714, 32.164101>,  <28.161945, 33.758667, 32.392483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321630, 33.471714, 32.164101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523146, -0.333181, 0.784416,
		-0.752960, -0.611839, 0.242288,
		0.399210, -0.717386, -0.570953,
		28.441393, 33.256496, 31.992815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646755, 33.339222, 32.536102>,  <28.161945, 33.758667, 32.392483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646755, 33.339222, 32.536102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340914, 33.082687, 32.561611>,  <28.157408, 32.928768, 32.576916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340914, 33.082687, 32.561611>,  <28.646755, 33.339222, 32.536102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340914, 33.082687, 32.561611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218891, -0.351481, -0.910246,
		0.606190, -0.682018, 0.409126,
		-0.764605, -0.641336, 0.063777,
		28.111532, 32.890285, 32.580746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925116, 32.863842, 32.188126>,  <28.646755, 33.339222, 32.536102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925116, 32.863842, 32.188126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525419, 32.849846, 32.181309>,  <28.285601, 32.841446, 32.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525419, 32.849846, 32.181309>,  <28.925116, 32.863842, 32.188126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525419, 32.849846, 32.181309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024305, -0.218945, -0.975434,
		0.030402, -0.975109, 0.219630,
		-0.999242, -0.034993, -0.017044,
		28.225647, 32.839348, 32.176197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420399, 32.510418, 31.734219>,  <28.925116, 32.863842, 32.188126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420399, 32.510418, 31.734219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542789, 32.298061, 32.050327>,  <29.616224, 32.170647, 32.239994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542789, 32.298061, 32.050327>,  <29.420399, 32.510418, 31.734219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542789, 32.298061, 32.050327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949017, 0.104008, -0.297571,
		0.075784, 0.841030, 0.535653,
		0.305978, -0.530896, 0.790270,
		29.634583, 32.138794, 32.287407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706371, 33.258587, 31.739414>,  <29.420399, 32.510418, 31.734219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706371, 33.258587, 31.739414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603657, 33.528767, 32.015915>,  <29.542028, 33.690876, 32.181816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603657, 33.528767, 32.015915>,  <29.706371, 33.258587, 31.739414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603657, 33.528767, 32.015915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570348, 0.683318, -0.455829,
		-0.780234, 0.277203, -0.560708,
		-0.256785, 0.675452, 0.691250,
		29.526621, 33.731403, 32.223289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485977, 33.349186, 31.725353>,  <29.706371, 33.258587, 31.739414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485977, 33.349186, 31.725353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177290, 33.477341, 31.945101>,  <29.992077, 33.554234, 32.076950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177290, 33.477341, 31.945101>,  <30.485977, 33.349186, 31.725353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177290, 33.477341, 31.945101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149031, -0.748677, 0.645967,
		0.618256, 0.580377, 0.530020,
		-0.771718, 0.320383, 0.549368,
		29.945774, 33.573456, 32.109913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277531, 33.729534, 31.165201>,  <30.485977, 33.349186, 31.725353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277531, 33.729534, 31.165201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455133, 34.073490, 31.064444>,  <30.561695, 34.279865, 31.003990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455133, 34.073490, 31.064444>,  <30.277531, 33.729534, 31.165201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455133, 34.073490, 31.064444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862226, -0.333546, 0.381200,
		0.243772, -0.386442, -0.889516,
		0.444006, 0.859889, -0.251892,
		30.588335, 34.331455, 30.988876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860489, 33.535675, 31.033632>,  <30.277531, 33.729534, 31.165201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860489, 33.535675, 31.033632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973845, 33.918064, 31.064112>,  <31.041859, 34.147499, 31.082399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973845, 33.918064, 31.064112>,  <30.860489, 33.535675, 31.033632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973845, 33.918064, 31.064112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826594, -0.283778, 0.486018,
		0.486244, -0.074746, -0.870620,
		0.283390, 0.955972, 0.076201,
		31.058861, 34.204857, 31.086971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682201, 33.648006, 30.838251>,  <30.860489, 33.535675, 31.033632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682201, 33.648006, 30.838251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549711, 33.940353, 31.076954>,  <31.470217, 34.115761, 31.220175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549711, 33.940353, 31.076954>,  <31.682201, 33.648006, 30.838251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549711, 33.940353, 31.076954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735254, -0.196449, 0.648698,
		0.591346, 0.653634, -0.472306,
		-0.331227, 0.730870, 0.596756,
		31.450344, 34.159615, 31.255981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237247, 34.093075, 31.117500>,  <31.682201, 33.648006, 30.838251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237247, 34.093075, 31.117500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936131, 34.107124, 31.380426>,  <31.755459, 34.115555, 31.538183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936131, 34.107124, 31.380426>,  <32.237247, 34.093075, 31.117500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936131, 34.107124, 31.380426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622406, -0.287064, 0.728152,
		0.214266, 0.957267, 0.194240,
		-0.752795, 0.035122, 0.657317,
		31.710293, 34.117661, 31.577621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618862, 34.235104, 31.718248>,  <32.237247, 34.093075, 31.117500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618862, 34.235104, 31.718248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260761, 34.099110, 31.833439>,  <32.045902, 34.017513, 31.902554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260761, 34.099110, 31.833439>,  <32.618862, 34.235104, 31.718248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260761, 34.099110, 31.833439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434021, -0.519324, 0.736158,
		-0.100731, 0.784035, 0.612488,
		-0.895253, -0.339987, 0.287976,
		31.992186, 33.997112, 31.919832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330170, 34.486462, 32.486263>,  <32.618862, 34.235104, 31.718248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330170, 34.486462, 32.486263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203800, 34.124996, 32.370617>,  <32.127979, 33.908119, 32.301228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203800, 34.124996, 32.370617>,  <32.330170, 34.486462, 32.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203800, 34.124996, 32.370617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563924, -0.423904, 0.708728,
		-0.763008, 0.060865, 0.643518,
		-0.315927, -0.903660, -0.289119,
		32.109024, 33.853897, 32.283882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522167, 34.163803, 33.137981>,  <32.330170, 34.486462, 32.486263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522167, 34.163803, 33.137981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407127, 33.884155, 32.876137>,  <32.338104, 33.716366, 32.719032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407127, 33.884155, 32.876137>,  <32.522167, 34.163803, 33.137981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407127, 33.884155, 32.876137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444449, -0.702860, 0.555385,
		-0.848381, -0.131210, 0.512868,
		-0.287602, -0.699122, -0.654610,
		32.320847, 33.674419, 32.679752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912491, 34.150295, 33.510235>,  <32.522167, 34.163803, 33.137981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912491, 34.150295, 33.510235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924397, 33.890614, 33.206223>,  <31.931540, 33.734802, 33.023815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924397, 33.890614, 33.206223>,  <31.912491, 34.150295, 33.510235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924397, 33.890614, 33.206223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460470, -0.665970, 0.586900,
		-0.887176, -0.367440, 0.279117,
		0.029766, -0.649209, -0.760028,
		31.933327, 33.695850, 32.978214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576969, 33.599915, 33.831661>,  <31.912491, 34.150295, 33.510235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576969, 33.599915, 33.831661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748514, 33.433285, 33.511028>,  <31.851440, 33.333305, 33.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748514, 33.433285, 33.511028>,  <31.576969, 33.599915, 33.831661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748514, 33.433285, 33.511028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320051, -0.759709, 0.566048,
		-0.844775, -0.499305, -0.192484,
		0.428862, -0.416578, -0.801586,
		31.877172, 33.308311, 33.270554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369329, 32.920654, 33.825050>,  <31.576969, 33.599915, 33.831661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369329, 32.920654, 33.825050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704191, 32.945194, 33.607643>,  <31.905107, 32.959919, 33.477200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704191, 32.945194, 33.607643>,  <31.369329, 32.920654, 33.825050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704191, 32.945194, 33.607643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263502, -0.916012, 0.302472,
		-0.479312, -0.396433, -0.783008,
		0.837154, 0.061345, -0.543517,
		31.955338, 32.963596, 33.444588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870232, 32.486938, 34.250149>,  <31.369329, 32.920654, 33.825050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870232, 32.486938, 34.250149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202229, 32.324291, 34.097427>,  <32.401428, 32.226704, 34.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202229, 32.324291, 34.097427>,  <31.870232, 32.486938, 34.250149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202229, 32.324291, 34.097427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134604, 0.518265, -0.844561,
		0.541289, 0.752372, 0.375424,
		0.829993, -0.406618, -0.381803,
		32.451225, 32.202305, 33.982887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440708, 33.069962, 34.105103>,  <31.870232, 32.486938, 34.250149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440708, 33.069962, 34.105103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482544, 32.746044, 33.874176>,  <32.507645, 32.551693, 33.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482544, 32.746044, 33.874176>,  <32.440708, 33.069962, 34.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482544, 32.746044, 33.874176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001375, 0.580378, -0.814346,
		0.994515, 0.085963, 0.059586,
		0.104586, -0.809797, -0.577313,
		32.513920, 32.503105, 33.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830902, 33.306152, 33.492405>,  <32.440708, 33.069962, 34.105103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830902, 33.306152, 33.492405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630692, 32.969868, 33.409760>,  <32.510567, 32.768097, 33.360172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630692, 32.969868, 33.409760>,  <32.830902, 33.306152, 33.492405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630692, 32.969868, 33.409760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293428, 0.389276, -0.873134,
		0.814480, -0.376397, -0.441529,
		-0.500522, -0.840708, -0.206612,
		32.480534, 32.717655, 33.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978897, 33.127495, 32.805996>,  <32.830902, 33.306152, 33.492405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978897, 33.127495, 32.805996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625736, 33.000355, 32.944248>,  <32.413841, 32.924072, 33.027199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625736, 33.000355, 32.944248>,  <32.978897, 33.127495, 32.805996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625736, 33.000355, 32.944248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468891, 0.557431, -0.685136,
		0.025100, -0.766971, -0.641190,
		-0.882899, -0.317845, 0.345634,
		32.360867, 32.905003, 33.047939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653297, 32.875332, 32.262367>,  <32.978897, 33.127495, 32.805996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653297, 32.875332, 32.262367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417763, 33.014389, 32.554234>,  <32.276440, 33.097824, 32.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417763, 33.014389, 32.554234>,  <32.653297, 32.875332, 32.262367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417763, 33.014389, 32.554234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457276, 0.601109, -0.655413,
		-0.666458, -0.719593, -0.194989,
		-0.588840, 0.347641, 0.729666,
		32.241112, 33.118683, 32.773132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050850, 32.861755, 31.984201>,  <32.653297, 32.875332, 32.262367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050850, 32.861755, 31.984201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020367, 33.113598, 32.293468>,  <32.002075, 33.264702, 32.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020367, 33.113598, 32.293468>,  <32.050850, 32.861755, 31.984201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020367, 33.113598, 32.293468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648069, 0.558022, -0.518284,
		-0.757759, -0.540565, 0.365500,
		-0.076209, 0.629604, 0.773169,
		31.997503, 33.302479, 32.525421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290571, 33.001434, 32.165871>,  <32.050850, 32.861755, 31.984201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290571, 33.001434, 32.165871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547531, 33.291550, 32.264893>,  <31.701706, 33.465618, 32.324306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547531, 33.291550, 32.264893>,  <31.290571, 33.001434, 32.165871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547531, 33.291550, 32.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497534, 0.640384, -0.585122,
		-0.582910, 0.252716, 0.772237,
		0.642398, 0.725288, 0.247551,
		31.740250, 33.509136, 32.339157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928400, 33.528824, 32.478210>,  <31.290571, 33.001434, 32.165871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928400, 33.528824, 32.478210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252171, 33.659424, 32.282974>,  <31.446432, 33.737785, 32.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252171, 33.659424, 32.282974>,  <30.928400, 33.528824, 32.478210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252171, 33.659424, 32.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583169, 0.544441, -0.602908,
		0.068884, 0.772645, 0.631090,
		0.809425, 0.326501, -0.488086,
		31.494999, 33.757374, 32.136547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740606, 34.267479, 32.420753>,  <30.928400, 33.528824, 32.478210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740606, 34.267479, 32.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035883, 34.202900, 32.158760>,  <31.213049, 34.164154, 32.001564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035883, 34.202900, 32.158760>,  <30.740606, 34.267479, 32.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035883, 34.202900, 32.158760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534378, 0.452644, -0.713831,
		0.411720, 0.876955, 0.247866,
		0.738192, -0.161444, -0.654987,
		31.257341, 34.154469, 31.962263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925573, 34.857388, 32.183266>,  <30.740606, 34.267479, 32.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925573, 34.857388, 32.183266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068962, 34.637848, 31.881203>,  <31.154995, 34.506123, 31.699965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068962, 34.637848, 31.881203>,  <30.925573, 34.857388, 32.183266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068962, 34.637848, 31.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530389, 0.545938, -0.648567,
		0.768235, 0.633020, -0.095401,
		0.358472, -0.548851, -0.755155,
		31.176504, 34.473194, 31.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150009, 35.372822, 31.667620>,  <30.925573, 34.857388, 32.183266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150009, 35.372822, 31.667620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067686, 35.023281, 31.491426>,  <31.018291, 34.813557, 31.385710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067686, 35.023281, 31.491426>,  <31.150009, 35.372822, 31.667620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067686, 35.023281, 31.491426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566853, 0.473370, -0.674239,
		0.797697, 0.110924, -0.592770,
		-0.205810, -0.873851, -0.440484,
		31.005943, 34.761127, 31.359282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154062, 35.449127, 30.955975>,  <31.150009, 35.372822, 31.667620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154062, 35.449127, 30.955975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946157, 35.109505, 30.993820>,  <30.821415, 34.905731, 31.016527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946157, 35.109505, 30.993820>,  <31.154062, 35.449127, 30.955975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946157, 35.109505, 30.993820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683574, 0.346898, -0.642174,
		0.512421, -0.398452, -0.760698,
		-0.519760, -0.849057, 0.094613,
		30.790230, 34.854786, 31.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835648, 35.188065, 30.265377>,  <31.154062, 35.449127, 30.955975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835648, 35.188065, 30.265377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610653, 35.072239, 30.575153>,  <30.475657, 35.002743, 30.761019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610653, 35.072239, 30.575153>,  <30.835648, 35.188065, 30.265377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610653, 35.072239, 30.575153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817780, 0.332868, -0.469504,
		-0.121833, -0.897413, -0.424037,
		-0.562488, -0.289568, 0.774441,
		30.441906, 34.985367, 30.807486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383738, 34.733822, 29.913788>,  <30.835648, 35.188065, 30.265377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383738, 34.733822, 29.913788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244019, 34.932930, 30.231335>,  <30.160187, 35.052395, 30.421862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244019, 34.932930, 30.231335>,  <30.383738, 34.733822, 29.913788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244019, 34.932930, 30.231335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806417, 0.271747, -0.525209,
		-0.477162, -0.823640, 0.306486,
		-0.349296, 0.497766, 0.793865,
		30.139229, 35.082260, 30.469494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683771, 34.419319, 30.187321>,  <30.383738, 34.733822, 29.913788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683771, 34.419319, 30.187321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725191, 34.809673, 30.264185>,  <29.750042, 35.043884, 30.310305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725191, 34.809673, 30.264185>,  <29.683771, 34.419319, 30.187321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725191, 34.809673, 30.264185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716969, 0.207143, -0.665618,
		-0.689372, -0.068851, 0.721128,
		0.103548, 0.975885, 0.192163,
		29.756256, 35.102440, 30.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144541, 34.738152, 30.523483>,  <29.683771, 34.419319, 30.187321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144541, 34.738152, 30.523483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302631, 35.057053, 30.340977>,  <29.397486, 35.248394, 30.231472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302631, 35.057053, 30.340977>,  <29.144541, 34.738152, 30.523483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302631, 35.057053, 30.340977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890955, 0.211801, -0.401671,
		-0.223596, 0.565264, 0.794029,
		0.395226, 0.797256, -0.456267,
		29.421200, 35.296230, 30.204096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871035, 35.406563, 30.807732>,  <29.144541, 34.738152, 30.523483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871035, 35.406563, 30.807732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962770, 35.491035, 30.427668>,  <29.017811, 35.541718, 30.199629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962770, 35.491035, 30.427668>,  <28.871035, 35.406563, 30.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962770, 35.491035, 30.427668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920941, 0.363070, -0.141591,
		0.315075, 0.907515, 0.277749,
		0.229338, 0.211179, -0.950162,
		29.031572, 35.554390, 30.142618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757776, 36.138359, 30.754490>,  <28.871035, 35.406563, 30.807732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757776, 36.138359, 30.754490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708565, 35.935093, 30.413519>,  <28.679037, 35.813133, 30.208937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708565, 35.935093, 30.413519>,  <28.757776, 36.138359, 30.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708565, 35.935093, 30.413519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914948, 0.390758, -0.100893,
		0.384362, 0.767511, -0.513022,
		-0.123031, -0.508168, -0.852425,
		28.671656, 35.782642, 30.157791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453781, 36.310883, 30.048847>,  <28.757776, 36.138359, 30.754490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453781, 36.310883, 30.048847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667400, 36.573658, 29.835974>,  <28.795572, 36.731323, 29.708250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667400, 36.573658, 29.835974>,  <28.453781, 36.310883, 30.048847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667400, 36.573658, 29.835974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839806, 0.339556, -0.423589,
		-0.097566, 0.673149, 0.733042,
		0.534048, 0.656941, -0.532186,
		28.827614, 36.770741, 29.676317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079805, 36.153103, 29.654877>,  <28.453781, 36.310883, 30.048847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079805, 36.153103, 29.654877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874208, 36.238628, 29.322590>,  <28.750851, 36.289944, 29.123217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874208, 36.238628, 29.322590>,  <29.079805, 36.153103, 29.654877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874208, 36.238628, 29.322590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323000, 0.945400, 0.043482,
		0.794659, -0.245973, -0.554991,
		-0.513993, 0.213815, -0.830719,
		28.720011, 36.302773, 29.073374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617260, 36.592503, 29.250710>,  <29.079805, 36.153103, 29.654877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617260, 36.592503, 29.250710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224419, 36.630985, 29.185947>,  <28.988714, 36.654076, 29.147091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224419, 36.630985, 29.185947>,  <29.617260, 36.592503, 29.250710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224419, 36.630985, 29.185947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104885, 0.993423, -0.045927,
		0.156422, -0.062087, -0.985737,
		-0.982106, 0.096205, -0.161905,
		28.929787, 36.659847, 29.137377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764565, 37.231686, 29.305380>,  <29.617260, 36.592503, 29.250710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764565, 37.231686, 29.305380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397089, 37.183891, 29.154791>,  <29.176603, 37.155216, 29.064438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397089, 37.183891, 29.154791>,  <29.764565, 37.231686, 29.305380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397089, 37.183891, 29.154791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098822, 0.992365, -0.073801,
		0.382416, -0.030597, -0.923484,
		-0.918690, -0.119483, -0.376473,
		29.121481, 37.148045, 29.041849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652582, 37.583988, 28.668102>,  <29.764565, 37.231686, 29.305380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652582, 37.583988, 28.668102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278933, 37.557125, 28.808332>,  <29.054743, 37.541008, 28.892471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278933, 37.557125, 28.808332>,  <29.652582, 37.583988, 28.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278933, 37.557125, 28.808332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110131, 0.988450, -0.104106,
		-0.339535, -0.135858, -0.930730,
		-0.934124, -0.067155, 0.350576,
		28.998695, 37.536980, 28.913506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465561, 37.871288, 28.048471>,  <29.652582, 37.583988, 28.668102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465561, 37.871288, 28.048471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603100, 37.524887, 28.193691>,  <29.685623, 37.317047, 28.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603100, 37.524887, 28.193691>,  <29.465561, 37.871288, 28.048471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603100, 37.524887, 28.193691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351652, -0.239739, -0.904912,
		0.870695, 0.438820, 0.222098,
		0.343848, -0.866004, 0.363051,
		29.706255, 37.265087, 28.302607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207672, 37.808567, 27.935341>,  <29.465561, 37.871288, 28.048471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207672, 37.808567, 27.935341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020277, 37.455227, 27.941051>,  <29.907841, 37.243221, 27.944477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020277, 37.455227, 27.941051>,  <30.207672, 37.808567, 27.935341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020277, 37.455227, 27.941051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145249, -0.092951, -0.985019,
		0.871448, -0.459396, 0.171852,
		-0.468488, -0.883354, 0.014275,
		29.879730, 37.190220, 27.945333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637690, 37.309952, 27.591818>,  <30.207672, 37.808567, 27.935341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637690, 37.309952, 27.591818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259527, 37.179867, 27.583332>,  <30.032631, 37.101818, 27.578241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259527, 37.179867, 27.583332>,  <30.637690, 37.309952, 27.591818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259527, 37.179867, 27.583332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074428, -0.152080, -0.985562,
		0.317289, -0.933332, 0.167982,
		-0.945403, -0.325211, -0.021213,
		29.975906, 37.082302, 27.576967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619196, 36.680393, 27.280598>,  <30.637690, 37.309952, 27.591818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619196, 36.680393, 27.280598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251345, 36.816986, 27.202959>,  <30.030634, 36.898941, 27.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251345, 36.816986, 27.202959>,  <30.619196, 36.680393, 27.280598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251345, 36.816986, 27.202959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111020, -0.248026, -0.962371,
		-0.376777, -0.906571, 0.190179,
		-0.919627, 0.341485, -0.194098,
		29.975456, 36.919430, 27.144730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157705, 36.203091, 26.899393>,  <30.619196, 36.680393, 27.280598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157705, 36.203091, 26.899393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055607, 36.575554, 26.795237>,  <29.994349, 36.799030, 26.732742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055607, 36.575554, 26.795237>,  <30.157705, 36.203091, 26.899393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055607, 36.575554, 26.795237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013132, -0.272625, -0.962031,
		-0.966787, -0.242133, 0.081814,
		-0.255244, 0.931154, -0.260391,
		29.979034, 36.854900, 26.717119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501667, 36.310242, 26.397861>,  <30.157705, 36.203091, 26.899393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501667, 36.310242, 26.397861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784979, 36.585899, 26.336645>,  <29.954966, 36.751293, 26.299915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784979, 36.585899, 26.336645>,  <29.501667, 36.310242, 26.397861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784979, 36.585899, 26.336645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071714, -0.145432, -0.986766,
		-0.702279, 0.709882, -0.053585,
		0.708280, 0.689142, -0.153043,
		29.997463, 36.792641, 26.290731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255945, 36.622814, 25.787661>,  <29.501667, 36.310242, 26.397861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255945, 36.622814, 25.787661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636293, 36.746613, 25.790527>,  <29.864502, 36.820892, 25.792248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636293, 36.746613, 25.790527>,  <29.255945, 36.622814, 25.787661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636293, 36.746613, 25.790527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015630, -0.024872, -0.999568,
		-0.309187, 0.950574, -0.028488,
		0.950873, 0.309499, 0.007168,
		29.921555, 36.839462, 25.792677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345711, 37.114422, 25.229948>,  <29.255945, 36.622814, 25.787661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345711, 37.114422, 25.229948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698174, 36.951702, 25.326349>,  <29.909651, 36.854073, 25.384190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698174, 36.951702, 25.326349>,  <29.345711, 37.114422, 25.229948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698174, 36.951702, 25.326349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211059, -0.117710, -0.970360,
		0.423108, 0.905903, -0.017862,
		0.881155, -0.406797, 0.241003,
		29.962521, 36.829662, 25.398649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857058, 37.497417, 24.862856>,  <29.345711, 37.114422, 25.229948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857058, 37.497417, 24.862856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032053, 37.149536, 24.954266>,  <30.137051, 36.940807, 25.009111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032053, 37.149536, 24.954266>,  <29.857058, 37.497417, 24.862856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032053, 37.149536, 24.954266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174364, -0.167267, -0.970371,
		0.882157, 0.464373, 0.078467,
		0.437489, -0.869701, 0.228525,
		30.163300, 36.888626, 25.022823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480532, 37.504139, 24.445608>,  <29.857058, 37.497417, 24.862856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480532, 37.504139, 24.445608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389513, 37.123653, 24.528957>,  <30.334902, 36.895363, 24.578966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389513, 37.123653, 24.528957>,  <30.480532, 37.504139, 24.445608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389513, 37.123653, 24.528957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199819, -0.255042, -0.946058,
		0.953045, -0.173633, 0.248104,
		-0.227544, -0.951212, 0.208372,
		30.321249, 36.838291, 24.591469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879999, 37.132591, 23.968224>,  <30.480532, 37.504139, 24.445608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879999, 37.132591, 23.968224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677942, 36.809528, 24.089893>,  <30.556707, 36.615692, 24.162895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677942, 36.809528, 24.089893>,  <30.879999, 37.132591, 23.968224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677942, 36.809528, 24.089893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241102, -0.470480, -0.848833,
		0.828674, -0.355444, 0.432387,
		-0.505143, -0.807656, 0.304176,
		30.526400, 36.567230, 24.181147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206669, 36.561798, 23.808968>,  <30.879999, 37.132591, 23.968224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206669, 36.561798, 23.808968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843700, 36.396191, 23.837765>,  <30.625919, 36.296825, 23.855043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843700, 36.396191, 23.837765>,  <31.206669, 36.561798, 23.808968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843700, 36.396191, 23.837765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103125, -0.385467, -0.916941,
		0.407377, -0.824625, 0.392476,
		-0.907419, -0.414015, 0.071991,
		30.571474, 36.271988, 23.859362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231333, 35.844723, 23.586836>,  <31.206669, 36.561798, 23.808968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231333, 35.844723, 23.586836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837231, 35.912960, 23.581669>,  <30.600769, 35.953903, 23.578568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837231, 35.912960, 23.581669>,  <31.231333, 35.844723, 23.586836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837231, 35.912960, 23.581669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060498, -0.418059, -0.906403,
		-0.160022, -0.892259, 0.422216,
		-0.985258, 0.170588, -0.012919,
		30.541653, 35.964138, 23.577793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966019, 35.168999, 23.315928>,  <31.231333, 35.844723, 23.586836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966019, 35.168999, 23.315928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693151, 35.451714, 23.240990>,  <30.529430, 35.621342, 23.196028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693151, 35.451714, 23.240990>,  <30.966019, 35.168999, 23.315928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693151, 35.451714, 23.240990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110321, -0.352773, -0.929183,
		-0.722824, -0.613191, 0.318624,
		-0.682168, 0.706787, -0.187345,
		30.488501, 35.663750, 23.184786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371449, 34.853592, 22.819420>,  <30.966019, 35.168999, 23.315928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371449, 34.853592, 22.819420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334190, 35.250450, 22.786009>,  <30.311836, 35.488564, 22.765963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334190, 35.250450, 22.786009>,  <30.371449, 34.853592, 22.819420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334190, 35.250450, 22.786009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301641, -0.108070, -0.947277,
		-0.948861, -0.063038, 0.309337,
		-0.093144, 0.992143, -0.083528,
		30.306248, 35.548092, 22.760950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683075, 34.999699, 22.532423>,  <30.371449, 34.853592, 22.819420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683075, 34.999699, 22.532423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910023, 35.322701, 22.467884>,  <30.046192, 35.516502, 22.429161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910023, 35.322701, 22.467884>,  <29.683075, 34.999699, 22.532423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910023, 35.322701, 22.467884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373425, 0.077670, -0.924404,
		-0.733925, 0.584730, 0.345608,
		0.567370, 0.807501, -0.161349,
		30.080235, 35.564949, 22.419479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192369, 35.534443, 22.228447>,  <29.683075, 34.999699, 22.532423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192369, 35.534443, 22.228447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572834, 35.610817, 22.131422>,  <29.801113, 35.656643, 22.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572834, 35.610817, 22.131422>,  <29.192369, 35.534443, 22.228447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572834, 35.610817, 22.131422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270327, 0.135785, -0.953145,
		-0.149057, 0.972165, 0.180769,
		0.951160, 0.190940, -0.242563,
		29.858183, 35.668098, 22.058653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142862, 35.930729, 21.606201>,  <29.192369, 35.534443, 22.228447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142862, 35.930729, 21.606201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539686, 35.881268, 21.597012>,  <29.777781, 35.851589, 21.591497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539686, 35.881268, 21.597012>,  <29.142862, 35.930729, 21.606201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539686, 35.881268, 21.597012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011402, 0.093487, -0.995555,
		0.125255, 0.987912, 0.091335,
		0.992059, -0.123657, -0.022974,
		29.837303, 35.844170, 21.590118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449821, 36.577114, 21.257849>,  <29.142862, 35.930729, 21.606201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449821, 36.577114, 21.257849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709469, 36.276520, 21.210676>,  <29.865257, 36.096161, 21.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709469, 36.276520, 21.210676>,  <29.449821, 36.577114, 21.257849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709469, 36.276520, 21.210676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154187, 0.281794, -0.947005,
		0.744896, 0.596537, 0.298788,
		0.649120, -0.751489, -0.117929,
		29.904205, 36.051071, 21.175297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966324, 36.877934, 20.959543>,  <29.449821, 36.577114, 21.257849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966324, 36.877934, 20.959543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984535, 36.483162, 20.897694>,  <29.995462, 36.246300, 20.860584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984535, 36.483162, 20.897694>,  <29.966324, 36.877934, 20.959543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984535, 36.483162, 20.897694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217490, 0.160862, -0.962716,
		0.975000, 0.010200, 0.221970,
		0.045526, -0.986924, -0.154622,
		29.998194, 36.187084, 20.851307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533318, 36.819328, 20.636356>,  <29.966324, 36.877934, 20.959543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533318, 36.819328, 20.636356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332510, 36.484543, 20.549200>,  <30.212027, 36.283672, 20.496906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332510, 36.484543, 20.549200>,  <30.533318, 36.819328, 20.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332510, 36.484543, 20.549200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198517, 0.133699, -0.970935,
		0.841766, -0.530682, 0.099032,
		-0.502018, -0.836959, -0.217892,
		30.181904, 36.233456, 20.483833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880747, 36.535645, 20.063583>,  <30.533318, 36.819328, 20.636356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880747, 36.535645, 20.063583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516476, 36.370518, 20.057215>,  <30.297913, 36.271442, 20.053392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516476, 36.370518, 20.057215>,  <30.880747, 36.535645, 20.063583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516476, 36.370518, 20.057215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086962, 0.229234, -0.969479,
		0.403866, -0.881496, -0.244657,
		-0.910676, -0.412816, -0.015923,
		30.243273, 36.246674, 20.052439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859690, 36.214272, 19.417183>,  <30.880747, 36.535645, 20.063583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859690, 36.214272, 19.417183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482578, 36.262493, 19.541529>,  <30.256311, 36.291428, 19.616137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482578, 36.262493, 19.541529>,  <30.859690, 36.214272, 19.417183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482578, 36.262493, 19.541529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276605, 0.237786, -0.931100,
		-0.186171, -0.963807, -0.190832,
		-0.942778, 0.120559, 0.310862,
		30.199745, 36.298660, 19.634787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480274, 35.794197, 18.963062>,  <30.859690, 36.214272, 19.417183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480274, 35.794197, 18.963062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208092, 36.038818, 19.124548>,  <30.044783, 36.185589, 19.221439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208092, 36.038818, 19.124548>,  <30.480274, 35.794197, 18.963062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208092, 36.038818, 19.124548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293387, 0.277482, -0.914837,
		-0.671494, -0.740951, -0.009393,
		-0.680456, 0.611552, 0.403713,
		30.003954, 36.222282, 19.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846264, 35.604950, 18.546692>,  <30.480274, 35.794197, 18.963062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846264, 35.604950, 18.546692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768202, 35.946560, 18.739586>,  <29.721365, 36.151527, 18.855322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768202, 35.946560, 18.739586>,  <29.846264, 35.604950, 18.546692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768202, 35.946560, 18.739586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613576, 0.277274, -0.739353,
		-0.765139, -0.440178, 0.469899,
		-0.195156, 0.854027, 0.482236,
		29.709656, 36.202766, 18.884256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131121, 35.724445, 18.597424>,  <29.846264, 35.604950, 18.546692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131121, 35.724445, 18.597424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291414, 36.090816, 18.606352>,  <29.387590, 36.310638, 18.611710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291414, 36.090816, 18.606352>,  <29.131121, 35.724445, 18.597424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291414, 36.090816, 18.606352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462542, 0.223281, -0.858021,
		-0.790866, 0.333512, 0.513129,
		0.400732, 0.915923, 0.022323,
		29.411634, 36.365593, 18.613049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653530, 36.153301, 18.373079>,  <29.131121, 35.724445, 18.597424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653530, 36.153301, 18.373079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977774, 36.383938, 18.332186>,  <29.172319, 36.522320, 18.307650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977774, 36.383938, 18.332186>,  <28.653530, 36.153301, 18.373079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977774, 36.383938, 18.332186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385285, 0.393674, -0.834611,
		-0.440982, 0.715935, 0.541269,
		0.810611, 0.576592, -0.102236,
		29.220957, 36.556915, 18.301516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375546, 36.743721, 18.045170>,  <28.653530, 36.153301, 18.373079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375546, 36.743721, 18.045170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771084, 36.749584, 17.985882>,  <29.008408, 36.753101, 17.950308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771084, 36.749584, 17.985882>,  <28.375546, 36.743721, 18.045170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771084, 36.749584, 17.985882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144979, 0.322849, -0.935280,
		0.034141, 0.946337, 0.321374,
		0.988846, 0.014661, -0.148221,
		29.067738, 36.753983, 17.941416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542643, 37.398472, 17.900723>,  <28.375546, 36.743721, 18.045170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542643, 37.398472, 17.900723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804277, 37.150311, 17.727623>,  <28.961258, 37.001415, 17.623764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804277, 37.150311, 17.727623>,  <28.542643, 37.398472, 17.900723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804277, 37.150311, 17.727623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294221, 0.318381, -0.901148,
		0.696855, 0.716751, 0.025713,
		0.654085, -0.620404, -0.432749,
		29.000504, 36.964188, 17.597799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811935, 37.820782, 17.437981>,  <28.542643, 37.398472, 17.900723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811935, 37.820782, 17.437981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899757, 37.453766, 17.305367>,  <28.952450, 37.233555, 17.225798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899757, 37.453766, 17.305367>,  <28.811935, 37.820782, 17.437981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899757, 37.453766, 17.305367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270325, 0.269309, -0.924336,
		0.937401, 0.292564, -0.188906,
		0.219553, -0.917540, -0.331537,
		28.965624, 37.178505, 17.205906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239910, 37.900185, 16.958000>,  <28.811935, 37.820782, 17.437981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239910, 37.900185, 16.958000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106949, 37.531818, 16.876593>,  <29.027172, 37.310799, 16.827749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106949, 37.531818, 16.876593>,  <29.239910, 37.900185, 16.958000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106949, 37.531818, 16.876593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189256, 0.276529, -0.942186,
		0.923954, -0.274668, -0.266208,
		-0.332402, -0.920918, -0.203517,
		29.007229, 37.255543, 16.815538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563437, 37.674232, 16.291319>,  <29.239910, 37.900185, 16.958000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563437, 37.674232, 16.291319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266790, 37.407555, 16.321068>,  <29.088802, 37.247547, 16.338917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266790, 37.407555, 16.321068>,  <29.563437, 37.674232, 16.291319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266790, 37.407555, 16.321068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185055, 0.096759, -0.977953,
		0.644797, -0.739027, -0.195132,
		-0.741615, -0.666691, 0.074371,
		29.044306, 37.207546, 16.343380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604101, 37.301689, 15.710055>,  <29.563437, 37.674232, 16.291319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604101, 37.301689, 15.710055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233013, 37.232708, 15.842475>,  <29.010361, 37.191319, 15.921926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233013, 37.232708, 15.842475>,  <29.604101, 37.301689, 15.710055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233013, 37.232708, 15.842475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362627, 0.206061, -0.908867,
		0.088521, -0.963223, -0.253704,
		-0.927721, -0.172454, 0.331050,
		28.954697, 37.180973, 15.941790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353699, 36.784515, 15.319645>,  <29.604101, 37.301689, 15.710055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353699, 36.784515, 15.319645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041054, 36.988655, 15.463101>,  <28.853468, 37.111141, 15.549175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041054, 36.988655, 15.463101>,  <29.353699, 36.784515, 15.319645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041054, 36.988655, 15.463101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373606, 0.077392, -0.924353,
		-0.499503, -0.856475, 0.130181,
		-0.781611, 0.510353, 0.358642,
		28.806570, 37.141762, 15.570694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828489, 36.551426, 14.900916>,  <29.353699, 36.784515, 15.319645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828489, 36.551426, 14.900916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678474, 36.877926, 15.076683>,  <28.588467, 37.073826, 15.182143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678474, 36.877926, 15.076683>,  <28.828489, 36.551426, 14.900916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678474, 36.877926, 15.076683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526083, 0.202886, -0.825877,
		-0.763272, -0.540904, 0.353325,
		-0.375036, 0.816248, 0.439418,
		28.565964, 37.122799, 15.208508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133785, 36.559387, 14.723071>,  <28.828489, 36.551426, 14.900916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133785, 36.559387, 14.723071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205416, 36.937893, 14.830789>,  <28.248394, 37.164997, 14.895419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205416, 36.937893, 14.830789>,  <28.133785, 36.559387, 14.723071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205416, 36.937893, 14.830789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465467, 0.322632, -0.824166,
		-0.866760, 0.022240, 0.498229,
		0.179074, 0.946263, 0.269293,
		28.259138, 37.221771, 14.911576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457678, 36.886066, 14.594367>,  <28.133785, 36.559387, 14.723071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457678, 36.886066, 14.594367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751534, 37.157230, 14.583470>,  <27.927847, 37.319927, 14.576932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751534, 37.157230, 14.583470>,  <27.457678, 36.886066, 14.594367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751534, 37.157230, 14.583470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353921, 0.348663, -0.867856,
		-0.578829, 0.647204, 0.496069,
		0.734641, 0.677909, -0.027243,
		27.971926, 37.360603, 14.575297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120380, 37.526100, 14.224017>,  <27.457678, 36.886066, 14.594367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120380, 37.526100, 14.224017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515652, 37.586151, 14.211609>,  <27.752815, 37.622181, 14.204164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515652, 37.586151, 14.211609>,  <27.120380, 37.526100, 14.224017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515652, 37.586151, 14.211609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096619, 0.452833, -0.886345,
		-0.119015, 0.878866, 0.461985,
		0.988180, 0.150125, -0.031022,
		27.812105, 37.631187, 14.202302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225409, 38.297775, 14.089241>,  <27.120380, 37.526100, 14.224017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225409, 38.297775, 14.089241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558498, 38.100998, 13.987599>,  <27.758352, 37.982933, 13.926615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558498, 38.100998, 13.987599>,  <27.225409, 38.297775, 14.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558498, 38.100998, 13.987599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041727, 0.401866, -0.914747,
		0.552116, 0.772334, 0.314115,
		0.832722, -0.491940, -0.254104,
		27.808315, 37.953415, 13.911368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625565, 38.728256, 13.598931>,  <27.225409, 38.297775, 14.089241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625565, 38.728256, 13.598931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765305, 38.359550, 13.531646>,  <27.849150, 38.138325, 13.491275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765305, 38.359550, 13.531646>,  <27.625565, 38.728256, 13.598931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765305, 38.359550, 13.531646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089658, 0.145816, -0.985241,
		0.932692, 0.359278, -0.031703,
		0.349352, -0.921769, -0.168213,
		27.870110, 38.083019, 13.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239166, 38.791351, 13.166468>,  <27.625565, 38.728256, 13.598931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239166, 38.791351, 13.166468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112997, 38.415283, 13.114950>,  <28.037296, 38.189644, 13.084040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112997, 38.415283, 13.114950>,  <28.239166, 38.791351, 13.166468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112997, 38.415283, 13.114950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099836, 0.102092, -0.989752,
		0.943686, -0.325047, 0.061661,
		-0.315421, -0.940171, -0.128794,
		28.018372, 38.133232, 13.076312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817543, 38.472317, 12.750587>,  <28.239166, 38.791351, 13.166468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817543, 38.472317, 12.750587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452044, 38.310638, 12.734177>,  <28.232744, 38.213631, 12.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452044, 38.310638, 12.734177>,  <28.817543, 38.472317, 12.750587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452044, 38.310638, 12.734177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059419, -0.033062, -0.997685,
		0.401907, -0.914074, 0.054227,
		-0.913751, -0.404199, -0.041026,
		28.177917, 38.189381, 12.721869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934221, 37.889477, 12.262563>,  <28.817543, 38.472317, 12.750587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934221, 37.889477, 12.262563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535299, 37.917770, 12.270323>,  <28.295946, 37.934746, 12.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535299, 37.917770, 12.270323>,  <28.934221, 37.889477, 12.262563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535299, 37.917770, 12.270323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024308, -0.069200, -0.997307,
		-0.069200, -0.995092, 0.070733,
		0.997307, -0.070733, -0.019400,
		28.236107, 37.938992, 12.276143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601030, 37.430611, 11.651186>,  <28.934221, 37.889477, 12.262563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601030, 37.430611, 11.651186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303457, 37.679970, 11.747473>,  <28.124914, 37.829586, 11.805244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303457, 37.679970, 11.747473>,  <28.601030, 37.430611, 11.651186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303457, 37.679970, 11.747473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284325, 0.030712, -0.958236,
		-0.604754, -0.781303, 0.154400,
		-0.743930, 0.623396, 0.240717,
		28.080278, 37.866989, 11.819688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212950, 37.390488, 11.086389>,  <28.601030, 37.430611, 11.651186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212950, 37.390488, 11.086389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037714, 37.704567, 11.261450>,  <27.932571, 37.893013, 11.366487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037714, 37.704567, 11.261450>,  <28.212950, 37.390488, 11.086389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037714, 37.704567, 11.261450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484541, 0.203817, -0.850693,
		-0.757163, -0.584742, 0.291170,
		-0.438091, 0.785198, 0.437654,
		27.906286, 37.940125, 11.392746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496906, 37.514637, 10.722469>,  <28.212950, 37.390488, 11.086389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496906, 37.514637, 10.722469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606272, 37.856701, 10.898627>,  <27.671890, 38.061939, 11.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606272, 37.856701, 10.898627>,  <27.496906, 37.514637, 10.722469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606272, 37.856701, 10.898627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429262, 0.518196, -0.739735,
		-0.860802, 0.013208, 0.508769,
		0.273412, 0.855160, 0.440394,
		27.688295, 38.113251, 11.030746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958502, 37.939884, 10.608491>,  <27.496906, 37.514637, 10.722469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958502, 37.939884, 10.608491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266914, 38.185577, 10.675692>,  <27.451962, 38.332993, 10.716012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266914, 38.185577, 10.675692>,  <26.958502, 37.939884, 10.608491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266914, 38.185577, 10.675692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206140, 0.490367, -0.846786,
		-0.602509, 0.618267, 0.504708,
		0.771031, 0.614236, 0.168001,
		27.498224, 38.369850, 10.726091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762945, 38.630917, 10.604832>,  <26.958502, 37.939884, 10.608491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762945, 38.630917, 10.604832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155504, 38.687794, 10.553237>,  <27.391039, 38.721920, 10.522281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155504, 38.687794, 10.553237>,  <26.762945, 38.630917, 10.604832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155504, 38.687794, 10.553237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191982, 0.725233, -0.661196,
		-0.000475, 0.673660, 0.739041,
		0.981398, 0.142197, -0.128986,
		27.449924, 38.730453, 10.514542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951538, 39.406364, 10.628222>,  <26.762945, 38.630917, 10.604832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951538, 39.406364, 10.628222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182676, 39.165726, 10.407617>,  <27.321360, 39.021343, 10.275253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182676, 39.165726, 10.407617>,  <26.951538, 39.406364, 10.628222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182676, 39.165726, 10.407617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165292, 0.575487, -0.800933,
		0.799231, 0.553978, 0.233105,
		0.577848, -0.601600, -0.551515,
		27.356031, 38.985245, 10.242162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504286, 39.704079, 10.429978>,  <26.951538, 39.406364, 10.628222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504286, 39.704079, 10.429978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396091, 39.449699, 10.140867>,  <27.331175, 39.297070, 9.967401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396091, 39.449699, 10.140867>,  <27.504286, 39.704079, 10.429978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396091, 39.449699, 10.140867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100153, 0.765276, -0.635863,
		0.957501, -0.099603, -0.270687,
		-0.270484, -0.635950, -0.722777,
		27.314947, 39.258915, 9.924034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792196, 40.007790, 9.711853>,  <27.504286, 39.704079, 10.429978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792196, 40.007790, 9.711853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488724, 39.763775, 9.620415>,  <27.306641, 39.617367, 9.565552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488724, 39.763775, 9.620415>,  <27.792196, 40.007790, 9.711853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488724, 39.763775, 9.620415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294197, 0.633906, -0.715270,
		0.581251, -0.475409, -0.660404,
		-0.758680, -0.610040, -0.228595,
		27.261120, 39.580761, 9.551836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784700, 39.983025, 9.003204>,  <27.792196, 40.007790, 9.711853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784700, 39.983025, 9.003204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406862, 39.908024, 9.110970>,  <27.180159, 39.863026, 9.175629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406862, 39.908024, 9.110970>,  <27.784700, 39.983025, 9.003204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406862, 39.908024, 9.110970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327496, 0.593428, -0.735248,
		-0.022020, -0.782743, -0.621955,
		-0.944596, -0.187497, 0.269412,
		27.123484, 39.851776, 9.191793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635870, 39.795612, 8.237076>,  <27.784700, 39.983025, 9.003204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635870, 39.795612, 8.237076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023802, 39.825912, 8.144391>,  <28.256561, 39.844093, 8.088780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023802, 39.825912, 8.144391>,  <27.635870, 39.795612, 8.237076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023802, 39.825912, 8.144391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218802, 0.148624, 0.964384,
		0.107486, -0.985989, 0.127567,
		0.969831, 0.075746, -0.231711,
		28.314751, 39.848637, 8.074878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065275, 39.189896, 8.404630>,  <27.635870, 39.795612, 8.237076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065275, 39.189896, 8.404630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222530, 39.557499, 8.416377>,  <28.316883, 39.778061, 8.423426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222530, 39.557499, 8.416377>,  <28.065275, 39.189896, 8.404630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222530, 39.557499, 8.416377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133898, 0.025622, 0.990664,
		0.909677, -0.393401, 0.133126,
		0.393139, 0.919010, 0.029368,
		28.340471, 39.833202, 8.425187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351589, 39.204140, 9.100368>,  <28.065275, 39.189896, 8.404630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351589, 39.204140, 9.100368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350439, 39.591820, 9.001866>,  <28.349749, 39.824429, 8.942765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350439, 39.591820, 9.001866>,  <28.351589, 39.204140, 9.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350439, 39.591820, 9.001866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278528, 0.237288, 0.930654,
		0.960424, -0.065912, -0.270632,
		-0.002877, 0.969201, -0.246256,
		28.349577, 39.882580, 8.927990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010784, 39.413486, 9.129991>,  <28.351589, 39.204140, 9.100368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010784, 39.413486, 9.129991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706547, 39.652370, 9.231840>,  <28.524004, 39.795700, 9.292950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706547, 39.652370, 9.231840>,  <29.010784, 39.413486, 9.129991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706547, 39.652370, 9.231840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372612, 0.080387, 0.924499,
		0.531655, 0.798044, -0.283670,
		-0.760594, 0.597214, 0.254623,
		28.478369, 39.831535, 9.308227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326206, 40.072136, 9.241463>,  <29.010784, 39.413486, 9.129991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326206, 40.072136, 9.241463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002129, 40.030846, 9.472263>,  <28.807682, 40.006069, 9.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002129, 40.030846, 9.472263>,  <29.326206, 40.072136, 9.241463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002129, 40.030846, 9.472263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554860, 0.182318, 0.811721,
		-0.188991, 0.977806, -0.090436,
		-0.810193, -0.103229, 0.577002,
		28.759071, 39.999878, 9.645364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006971, 40.725658, 9.668798>,  <29.326206, 40.072136, 9.241463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006971, 40.725658, 9.668798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915226, 40.387150, 9.861142>,  <28.860180, 40.184044, 9.976548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915226, 40.387150, 9.861142>,  <29.006971, 40.725658, 9.668798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915226, 40.387150, 9.861142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488635, 0.327153, 0.808830,
		-0.841801, 0.420479, 0.338479,
		-0.229362, -0.846267, 0.480859,
		28.846416, 40.133270, 10.005400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032675, 40.853752, 10.429021>,  <29.006971, 40.725658, 9.668798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032675, 40.853752, 10.429021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050486, 40.454475, 10.412840>,  <29.061172, 40.214909, 10.403131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050486, 40.454475, 10.412840>,  <29.032675, 40.853752, 10.429021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050486, 40.454475, 10.412840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420102, -0.018031, 0.907298,
		-0.906384, -0.057393, 0.418538,
		0.044526, -0.998189, -0.040453,
		29.063843, 40.155018, 10.400703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680824, 40.591175, 10.999885>,  <29.032675, 40.853752, 10.429021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680824, 40.591175, 10.999885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935417, 40.312840, 10.866796>,  <29.088173, 40.145840, 10.786942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935417, 40.312840, 10.866796>,  <28.680824, 40.591175, 10.999885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935417, 40.312840, 10.866796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310177, -0.164042, 0.936419,
		-0.706175, -0.699215, 0.111423,
		0.636480, -0.695836, -0.332723,
		29.126362, 40.104088, 10.766978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593372, 39.950775, 11.432128>,  <28.680824, 40.591175, 10.999885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593372, 39.950775, 11.432128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957983, 39.930145, 11.268930>,  <29.176750, 39.917767, 11.171012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957983, 39.930145, 11.268930>,  <28.593372, 39.950775, 11.432128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957983, 39.930145, 11.268930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381856, -0.262143, 0.886266,
		-0.152657, -0.963650, -0.219258,
		0.911527, -0.051569, -0.407994,
		29.231441, 39.914673, 11.146532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933964, 39.583469, 11.915834>,  <28.593372, 39.950775, 11.432128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933964, 39.583469, 11.915834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262793, 39.668346, 11.704486>,  <29.460089, 39.719273, 11.577677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262793, 39.668346, 11.704486>,  <28.933964, 39.583469, 11.915834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262793, 39.668346, 11.704486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554453, -0.087183, 0.827636,
		0.129552, -0.973331, -0.189320,
		0.822069, 0.212191, -0.528372,
		29.509413, 39.732002, 11.545975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244347, 39.027569, 11.866130>,  <28.933964, 39.583469, 11.915834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244347, 39.027569, 11.866130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475243, 39.353603, 11.846402>,  <29.613781, 39.549225, 11.834566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475243, 39.353603, 11.846402>,  <29.244347, 39.027569, 11.866130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475243, 39.353603, 11.846402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422833, -0.246688, 0.871984,
		0.698574, -0.524198, -0.487043,
		0.577240, 0.815084, -0.049318,
		29.648415, 39.598129, 11.831607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809074, 38.691910, 12.079447>,  <29.244347, 39.027569, 11.866130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809074, 38.691910, 12.079447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888285, 39.079044, 12.141528>,  <29.935810, 39.311325, 12.178777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888285, 39.079044, 12.141528>,  <29.809074, 38.691910, 12.079447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888285, 39.079044, 12.141528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406255, -0.225137, 0.885590,
		0.892044, -0.112316, -0.437769,
		0.198024, 0.967832, 0.155203,
		29.947693, 39.369392, 12.188089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534477, 38.711475, 12.262234>,  <29.809074, 38.691910, 12.079447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534477, 38.711475, 12.262234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378508, 39.045757, 12.416927>,  <30.284925, 39.246326, 12.509744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378508, 39.045757, 12.416927>,  <30.534477, 38.711475, 12.262234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378508, 39.045757, 12.416927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568887, -0.111630, 0.814805,
		0.724104, 0.537719, -0.431892,
		-0.389924, 0.835701, 0.386733,
		30.261530, 39.296467, 12.532948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109587, 39.051003, 12.460855>,  <30.534477, 38.711475, 12.262234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109587, 39.051003, 12.460855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790199, 39.187935, 12.658951>,  <30.598566, 39.270092, 12.777808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790199, 39.187935, 12.658951>,  <31.109587, 39.051003, 12.460855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790199, 39.187935, 12.658951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529462, 0.007741, 0.848298,
		0.286563, 0.939549, -0.187430,
		-0.798468, 0.342328, 0.495237,
		30.550659, 39.290634, 12.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415195, 39.253048, 13.072344>,  <31.109587, 39.051003, 12.460855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415195, 39.253048, 13.072344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029799, 39.270489, 13.178005>,  <30.798559, 39.280952, 13.241402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029799, 39.270489, 13.178005>,  <31.415195, 39.253048, 13.072344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029799, 39.270489, 13.178005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246450, -0.241025, 0.938706,
		0.104597, 0.969539, 0.221481,
		-0.963495, 0.043602, 0.264154,
		30.740749, 39.283569, 13.257252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352791, 39.809052, 13.556861>,  <31.415195, 39.253048, 13.072344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352791, 39.809052, 13.556861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062540, 39.543335, 13.628619>,  <30.888390, 39.383904, 13.671675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062540, 39.543335, 13.628619>,  <31.352791, 39.809052, 13.556861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062540, 39.543335, 13.628619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334968, -0.113286, 0.935394,
		-0.601051, 0.738839, 0.304720,
		-0.725627, -0.664291, 0.179397,
		30.844852, 39.344048, 13.682438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118877, 39.947140, 14.279329>,  <31.352791, 39.809052, 13.556861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118877, 39.947140, 14.279329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972536, 39.587578, 14.182901>,  <30.884731, 39.371841, 14.125045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972536, 39.587578, 14.182901>,  <31.118877, 39.947140, 14.279329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972536, 39.587578, 14.182901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212914, -0.333001, 0.918574,
		-0.905990, 0.284738, 0.313220,
		-0.365855, -0.898907, -0.241071,
		30.862780, 39.317905, 14.110580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685246, 39.809273, 14.836149>,  <31.118877, 39.947140, 14.279329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685246, 39.809273, 14.836149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753958, 39.453392, 14.666955>,  <30.795185, 39.239864, 14.565438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753958, 39.453392, 14.666955>,  <30.685246, 39.809273, 14.836149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753958, 39.453392, 14.666955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092013, -0.413000, 0.906071,
		-0.980828, -0.194567, 0.010919,
		0.171782, -0.889705, -0.422985,
		30.805492, 39.186481, 14.540059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303463, 39.404274, 15.201367>,  <30.685246, 39.809273, 14.836149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303463, 39.404274, 15.201367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560385, 39.158546, 15.018041>,  <30.714537, 39.011108, 14.908045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560385, 39.158546, 15.018041>,  <30.303463, 39.404274, 15.201367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560385, 39.158546, 15.018041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106641, -0.520528, 0.847159,
		-0.758996, -0.593008, -0.268824,
		0.642302, -0.614323, -0.458318,
		30.753075, 38.974251, 14.880546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138292, 38.752045, 15.465263>,  <30.303463, 39.404274, 15.201367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138292, 38.752045, 15.465263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520151, 38.735104, 15.347376>,  <30.749266, 38.724937, 15.276644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520151, 38.735104, 15.347376>,  <30.138292, 38.752045, 15.465263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520151, 38.735104, 15.347376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261569, -0.353597, 0.898082,
		-0.142247, -0.934439, -0.326481,
		0.954645, -0.042352, -0.294718,
		30.806545, 38.722397, 15.258961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407637, 38.087460, 15.630246>,  <30.138292, 38.752045, 15.465263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407637, 38.087460, 15.630246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734827, 38.316505, 15.608239>,  <30.931141, 38.453934, 15.595035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734827, 38.316505, 15.608239>,  <30.407637, 38.087460, 15.630246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734827, 38.316505, 15.608239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333269, -0.393758, 0.856672,
		0.468882, -0.719071, -0.512920,
		0.817974, 0.572618, -0.055018,
		30.980219, 38.488293, 15.591734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876265, 37.643333, 15.927761>,  <30.407637, 38.087460, 15.630246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876265, 37.643333, 15.927761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039438, 38.006966, 15.893895>,  <31.137342, 38.225143, 15.873576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039438, 38.006966, 15.893895>,  <30.876265, 37.643333, 15.927761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039438, 38.006966, 15.893895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359134, -0.074515, 0.930307,
		0.839412, -0.409910, -0.356878,
		0.407935, 0.909077, -0.084664,
		31.161819, 38.279690, 15.868496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458319, 37.582661, 16.214041>,  <30.876265, 37.643333, 15.927761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458319, 37.582661, 16.214041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368088, 37.970634, 16.250584>,  <31.313950, 38.203419, 16.272509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368088, 37.970634, 16.250584>,  <31.458319, 37.582661, 16.214041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368088, 37.970634, 16.250584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293959, -0.021639, 0.955573,
		0.928818, 0.242412, -0.280239,
		-0.225579, 0.969932, 0.091358,
		31.300415, 38.261616, 16.277990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999325, 37.823723, 16.694456>,  <31.458319, 37.582661, 16.214041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999325, 37.823723, 16.694456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715637, 38.105473, 16.706238>,  <31.545424, 38.274521, 16.713306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715637, 38.105473, 16.706238>,  <31.999325, 37.823723, 16.694456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715637, 38.105473, 16.706238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213537, 0.174811, 0.961168,
		0.671870, 0.687969, -0.274389,
		-0.709220, 0.704371, 0.029457,
		31.502871, 38.316784, 16.715075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278252, 38.501663, 16.880394>,  <31.999325, 37.823723, 16.694456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278252, 38.501663, 16.880394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893709, 38.528511, 16.987198>,  <31.662985, 38.544621, 17.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893709, 38.528511, 16.987198>,  <32.278252, 38.501663, 16.880394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893709, 38.528511, 16.987198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274491, 0.308668, 0.910702,
		-0.021293, 0.948799, -0.315162,
		-0.961354, 0.067117, 0.267009,
		31.605303, 38.548645, 17.067301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224396, 39.118404, 17.206404>,  <32.278252, 38.501663, 16.880394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224396, 39.118404, 17.206404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898136, 38.910103, 17.307224>,  <31.702379, 38.785122, 17.367716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898136, 38.910103, 17.307224>,  <32.224396, 39.118404, 17.206404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898136, 38.910103, 17.307224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111745, 0.285653, 0.951796,
		-0.567651, 0.804498, -0.174802,
		-0.815651, -0.520754, 0.252050,
		31.653440, 38.753876, 17.382839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865229, 39.549843, 17.633656>,  <32.224396, 39.118404, 17.206404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865229, 39.549843, 17.633656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723516, 39.192345, 17.743713>,  <31.638489, 38.977844, 17.809748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723516, 39.192345, 17.743713>,  <31.865229, 39.549843, 17.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723516, 39.192345, 17.743713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025262, 0.284972, 0.958203,
		-0.934798, 0.346422, -0.078381,
		-0.354279, -0.893747, 0.275142,
		31.617233, 38.924221, 17.826256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569538, 39.766815, 18.257895>,  <31.865229, 39.549843, 17.633656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569538, 39.766815, 18.257895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491558, 39.375828, 18.290279>,  <31.444771, 39.141235, 18.309710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491558, 39.375828, 18.290279>,  <31.569538, 39.766815, 18.257895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491558, 39.375828, 18.290279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035551, 0.089533, 0.995349,
		-0.980169, 0.191163, -0.052205,
		-0.194948, -0.977466, 0.080961,
		31.433073, 39.082588, 18.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884911, 39.661175, 18.612198>,  <31.569538, 39.766815, 18.257895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884911, 39.661175, 18.612198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124657, 39.344620, 18.660309>,  <31.268505, 39.154686, 18.689177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124657, 39.344620, 18.660309>,  <30.884911, 39.661175, 18.612198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124657, 39.344620, 18.660309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013715, 0.140085, 0.990045,
		-0.800357, -0.595050, 0.073108,
		0.599367, -0.791386, 0.120280,
		31.304466, 39.107204, 18.696392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541208, 39.185104, 19.044540>,  <30.884911, 39.661175, 18.612198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541208, 39.185104, 19.044540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919468, 39.062691, 19.088530>,  <31.146423, 38.989243, 19.114923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919468, 39.062691, 19.088530>,  <30.541208, 39.185104, 19.044540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919468, 39.062691, 19.088530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078178, 0.114320, 0.990363,
		-0.315659, -0.945131, 0.084181,
		0.945647, -0.306036, 0.109974,
		31.203161, 38.970879, 19.121521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561718, 38.862770, 19.750780>,  <30.541208, 39.185104, 19.044540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561718, 38.862770, 19.750780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953922, 38.878727, 19.673830>,  <31.189245, 38.888302, 19.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953922, 38.878727, 19.673830>,  <30.561718, 38.862770, 19.750780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953922, 38.878727, 19.673830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190407, 0.048429, 0.980510,
		0.048429, -0.998030, 0.039890,
		-0.980510, -0.039890, 0.192377,
		31.248075, 38.890694, 19.616117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894779, 38.334591, 20.137196>,  <30.561718, 38.862770, 19.750780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894779, 38.334591, 20.137196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169188, 38.612587, 20.051069>,  <31.333834, 38.779385, 19.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169188, 38.612587, 20.051069>,  <30.894779, 38.334591, 20.137196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169188, 38.612587, 20.051069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354629, -0.060995, 0.933016,
		0.635305, -0.716426, -0.288308,
		0.686022, 0.694992, -0.215314,
		31.374994, 38.821083, 19.986475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517431, 38.090435, 20.289129>,  <30.894779, 38.334591, 20.137196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517431, 38.090435, 20.289129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576727, 38.484486, 20.323906>,  <31.612305, 38.720917, 20.344772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576727, 38.484486, 20.323906>,  <31.517431, 38.090435, 20.289129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576727, 38.484486, 20.323906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477339, -0.148269, 0.866120,
		0.866125, -0.086894, -0.492217,
		0.148241, 0.985122, 0.086942,
		31.621199, 38.780022, 20.349989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236542, 38.165230, 20.417418>,  <31.517431, 38.090435, 20.289129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236542, 38.165230, 20.417418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033737, 38.486698, 20.542032>,  <31.912056, 38.679581, 20.616802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033737, 38.486698, 20.542032>,  <32.236542, 38.165230, 20.417418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033737, 38.486698, 20.542032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342386, -0.143918, 0.928472,
		0.791022, 0.577408, -0.202199,
		-0.507007, 0.803671, 0.311538,
		31.881636, 38.727798, 20.635494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661896, 38.543453, 20.888731>,  <32.236542, 38.165230, 20.417418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661896, 38.543453, 20.888731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309792, 38.700985, 20.994596>,  <32.098530, 38.795506, 21.058115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309792, 38.700985, 20.994596>,  <32.661896, 38.543453, 20.888731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309792, 38.700985, 20.994596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201152, -0.195450, 0.959863,
		0.429751, 0.898163, 0.092827,
		-0.880257, 0.393830, 0.264662,
		32.045715, 38.819134, 21.073996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907974, 39.028328, 21.402729>,  <32.661896, 38.543453, 20.888731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907974, 39.028328, 21.402729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514175, 38.976772, 21.450319>,  <32.277897, 38.945839, 21.478874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514175, 38.976772, 21.450319>,  <32.907974, 39.028328, 21.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514175, 38.976772, 21.450319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126072, -0.048345, 0.990842,
		-0.121956, 0.990480, 0.063844,
		-0.984496, -0.128888, 0.118976,
		32.218826, 38.938107, 21.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744526, 39.456451, 21.922113>,  <32.907974, 39.028328, 21.402729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744526, 39.456451, 21.922113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405514, 39.244156, 21.922016>,  <32.202106, 39.116779, 21.921957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405514, 39.244156, 21.922016>,  <32.744526, 39.456451, 21.922113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405514, 39.244156, 21.922016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006939, 0.010623, 0.999919,
		-0.530696, 0.847467, -0.012686,
		-0.847534, -0.530742, -0.000243,
		32.151253, 39.084934, 21.921944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250008, 39.821316, 22.287296>,  <32.744526, 39.456451, 21.922113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250008, 39.821316, 22.287296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104153, 39.448868, 22.284559>,  <32.016640, 39.225399, 22.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104153, 39.448868, 22.284559>,  <32.250008, 39.821316, 22.287296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104153, 39.448868, 22.284559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113146, 0.037015, 0.992889,
		-0.924248, 0.362823, -0.118850,
		-0.364642, -0.931123, -0.006841,
		31.994761, 39.169533, 22.282507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669538, 39.789295, 22.846651>,  <32.250008, 39.821316, 22.287296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669538, 39.789295, 22.846651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813887, 39.423565, 22.773132>,  <31.900496, 39.204128, 22.729021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813887, 39.423565, 22.773132>,  <31.669538, 39.789295, 22.846651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813887, 39.423565, 22.773132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075407, -0.167826, 0.982929,
		-0.929562, -0.368571, 0.008382,
		0.360872, -0.914325, -0.183798,
		31.922148, 39.149269, 22.717993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415152, 39.466053, 23.456924>,  <31.669538, 39.789295, 22.846651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415152, 39.466053, 23.456924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687729, 39.207893, 23.318884>,  <31.851274, 39.052998, 23.236059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687729, 39.207893, 23.318884>,  <31.415152, 39.466053, 23.456924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687729, 39.207893, 23.318884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068312, -0.413386, 0.907990,
		-0.728677, -0.642318, -0.237610,
		0.681442, -0.645400, -0.345103,
		31.892162, 39.014275, 23.215353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306602, 38.907627, 23.839674>,  <31.415152, 39.466053, 23.456924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306602, 38.907627, 23.839674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651901, 38.780666, 23.682673>,  <31.859079, 38.704491, 23.588470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651901, 38.780666, 23.682673>,  <31.306602, 38.907627, 23.839674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651901, 38.780666, 23.682673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235527, -0.434474, 0.869344,
		-0.446483, -0.842898, -0.300294,
		0.863238, -0.317420, -0.392511,
		31.910875, 38.685444, 23.564920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319853, 38.131588, 23.934488>,  <31.306602, 38.907627, 23.839674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319853, 38.131588, 23.934488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677624, 38.305428, 23.892302>,  <31.892286, 38.409733, 23.866989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677624, 38.305428, 23.892302>,  <31.319853, 38.131588, 23.934488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677624, 38.305428, 23.892302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204150, -0.186956, 0.960922,
		0.397897, -0.881006, -0.255942,
		0.894428, 0.434599, -0.105468,
		31.945951, 38.435806, 23.860661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783245, 37.668770, 24.110697>,  <31.319853, 38.131588, 23.934488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783245, 37.668770, 24.110697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920307, 38.036636, 24.187431>,  <32.002544, 38.257355, 24.233471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920307, 38.036636, 24.187431>,  <31.783245, 37.668770, 24.110697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920307, 38.036636, 24.187431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111986, -0.242725, 0.963610,
		0.932763, -0.308701, -0.186161,
		0.342653, 0.919667, 0.191835,
		32.023102, 38.312538, 24.244982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299583, 37.525581, 24.674187>,  <31.783245, 37.668770, 24.110697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299583, 37.525581, 24.674187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225517, 37.918659, 24.676058>,  <32.181076, 38.154507, 24.677181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225517, 37.918659, 24.676058>,  <32.299583, 37.525581, 24.674187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225517, 37.918659, 24.676058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152198, 0.023973, 0.988059,
		0.970849, 0.183670, -0.154004,
		-0.185169, 0.982696, 0.004680,
		32.169968, 38.213467, 24.677462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851639, 37.713234, 24.962845>,  <32.299583, 37.525581, 24.674187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851639, 37.713234, 24.962845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594784, 38.016800, 25.006109>,  <32.440670, 38.198940, 25.032068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594784, 38.016800, 25.006109>,  <32.851639, 37.713234, 24.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594784, 38.016800, 25.006109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216800, 0.044454, 0.975203,
		0.735293, 0.649665, -0.193080,
		-0.642139, 0.758920, 0.108160,
		32.402142, 38.244476, 25.038557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928661, 37.301407, 24.327894>,  <32.851639, 37.713234, 24.962845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928661, 37.301407, 24.327894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307369, 37.183422, 24.379465>,  <33.534595, 37.112633, 24.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307369, 37.183422, 24.379465>,  <32.928661, 37.301407, 24.327894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307369, 37.183422, 24.379465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115060, -0.063966, -0.991297,
		0.300641, 0.953366, -0.026623,
		0.946771, -0.294961, 0.128926,
		33.591400, 37.094933, 24.418142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308033, 37.733734, 23.914553>,  <32.928661, 37.301407, 24.327894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308033, 37.733734, 23.914553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531296, 37.408154, 23.978970>,  <33.665253, 37.212803, 24.017620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531296, 37.408154, 23.978970>,  <33.308033, 37.733734, 23.914553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531296, 37.408154, 23.978970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407631, 0.099944, -0.907661,
		0.722700, 0.572266, 0.387578,
		0.558160, -0.813955, 0.161044,
		33.698742, 37.163967, 24.027283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005695, 37.892269, 23.814798>,  <33.308033, 37.733734, 23.914553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005695, 37.892269, 23.814798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932411, 37.506420, 23.738968>,  <33.888439, 37.274910, 23.693470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932411, 37.506420, 23.738968>,  <34.005695, 37.892269, 23.814798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932411, 37.506420, 23.738968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468809, 0.083773, -0.879318,
		0.864090, -0.249976, 0.436875,
		-0.183210, -0.964621, -0.189578,
		33.877449, 37.217033, 23.682095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567314, 37.734390, 23.454229>,  <34.005695, 37.892269, 23.814798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567314, 37.734390, 23.454229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333763, 37.424446, 23.357338>,  <34.193634, 37.238480, 23.299202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333763, 37.424446, 23.357338>,  <34.567314, 37.734390, 23.454229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333763, 37.424446, 23.357338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376844, 0.005596, -0.926260,
		0.719079, -0.632106, 0.288735,
		-0.583878, -0.774862, -0.242229,
		34.158600, 37.191986, 23.284670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930435, 37.316666, 22.940004>,  <34.567314, 37.734390, 23.454229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930435, 37.316666, 22.940004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556801, 37.177147, 22.909502>,  <34.332619, 37.093433, 22.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556801, 37.177147, 22.909502>,  <34.930435, 37.316666, 22.940004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556801, 37.177147, 22.909502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154370, -0.201966, -0.967150,
		0.321942, -0.915176, 0.242499,
		-0.934090, -0.348801, -0.076255,
		34.276573, 37.072506, 22.886625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930180, 36.711796, 22.560127>,  <34.930435, 37.316666, 22.940004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930180, 36.711796, 22.560127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553349, 36.834171, 22.505156>,  <34.327251, 36.907597, 22.472172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553349, 36.834171, 22.505156>,  <34.930180, 36.711796, 22.560127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553349, 36.834171, 22.505156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078715, -0.196628, -0.977313,
		-0.326024, -0.931524, 0.161157,
		-0.942078, 0.305943, -0.137430,
		34.270725, 36.925953, 22.463926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669960, 36.299255, 21.982042>,  <34.930180, 36.711796, 22.560127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669960, 36.299255, 21.982042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414829, 36.606739, 22.001072>,  <34.261749, 36.791229, 22.012489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414829, 36.606739, 22.001072>,  <34.669960, 36.299255, 21.982042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414829, 36.606739, 22.001072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130449, -0.046949, -0.990343,
		-0.759049, -0.637877, 0.130222,
		-0.637831, 0.768706, 0.047574,
		34.223480, 36.837349, 22.015345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998985, 36.056404, 21.685944>,  <34.669960, 36.299255, 21.982042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998985, 36.056404, 21.685944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039162, 36.453243, 21.655842>,  <34.063267, 36.691345, 21.637781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039162, 36.453243, 21.655842>,  <33.998985, 36.056404, 21.685944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039162, 36.453243, 21.655842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151672, -0.059485, -0.986639,
		-0.983315, 0.110509, 0.144499,
		0.100437, 0.992093, -0.075253,
		34.069294, 36.750870, 21.633266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513454, 36.215958, 21.163921>,  <33.998985, 36.056404, 21.685944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513454, 36.215958, 21.163921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744247, 36.539627, 21.208323>,  <33.882725, 36.733829, 21.234964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744247, 36.539627, 21.208323>,  <33.513454, 36.215958, 21.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744247, 36.539627, 21.208323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029908, 0.156751, -0.987185,
		-0.816208, 0.566270, 0.114644,
		0.576983, 0.809178, 0.111005,
		33.917343, 36.782379, 21.241625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167725, 36.636578, 20.733061>,  <33.513454, 36.215958, 21.163921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167725, 36.636578, 20.733061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512970, 36.821415, 20.814560>,  <33.720116, 36.932316, 20.863459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512970, 36.821415, 20.814560>,  <33.167725, 36.636578, 20.733061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512970, 36.821415, 20.814560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103309, 0.233360, -0.966887,
		-0.494335, 0.855579, 0.153678,
		0.863111, 0.462090, 0.203747,
		33.771904, 36.960041, 20.875685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170933, 37.297543, 20.391020>,  <33.167725, 36.636578, 20.733061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170933, 37.297543, 20.391020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561710, 37.217922, 20.421913>,  <33.796177, 37.170151, 20.440449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561710, 37.217922, 20.421913>,  <33.170933, 37.297543, 20.391020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561710, 37.217922, 20.421913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140755, 0.328434, -0.933980,
		0.160541, 0.923315, 0.348878,
		0.976942, -0.199048, 0.077234,
		33.854794, 37.158207, 20.445084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478516, 37.879841, 20.074778>,  <33.170933, 37.297543, 20.391020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478516, 37.879841, 20.074778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761528, 37.597321, 20.084009>,  <33.931335, 37.427807, 20.089548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761528, 37.597321, 20.084009>,  <33.478516, 37.879841, 20.074778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761528, 37.597321, 20.084009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305744, 0.276507, -0.911079,
		0.637114, 0.651677, 0.411586,
		0.707535, -0.706301, 0.023080,
		33.973789, 37.385429, 20.090933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081306, 38.210575, 19.846287>,  <33.478516, 37.879841, 20.074778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081306, 38.210575, 19.846287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130119, 37.817760, 19.788715>,  <34.159405, 37.582073, 19.754171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130119, 37.817760, 19.788715>,  <34.081306, 38.210575, 19.846287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130119, 37.817760, 19.788715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155370, 0.162126, -0.974461,
		0.980290, 0.096549, 0.172363,
		0.122028, -0.982035, -0.143930,
		34.166729, 37.523151, 19.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460217, 38.229416, 19.302778>,  <34.081306, 38.210575, 19.846287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460217, 38.229416, 19.302778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323200, 37.853619, 19.301334>,  <34.240990, 37.628139, 19.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323200, 37.853619, 19.301334>,  <34.460217, 38.229416, 19.302778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323200, 37.853619, 19.301334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038679, -0.010265, -0.999199,
		0.938707, -0.342405, 0.039855,
		-0.342540, -0.939496, -0.003608,
		34.220440, 37.571770, 19.300251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851154, 37.956062, 18.865330>,  <34.460217, 38.229416, 19.302778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851154, 37.956062, 18.865330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529160, 37.719139, 18.878958>,  <34.335964, 37.576984, 18.887135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529160, 37.719139, 18.878958>,  <34.851154, 37.956062, 18.865330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529160, 37.719139, 18.878958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003721, -0.052387, -0.998620,
		0.593280, -0.804003, 0.039967,
		-0.804987, -0.592312, 0.034072,
		34.287663, 37.541447, 18.889179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987610, 37.388115, 18.483847>,  <34.851154, 37.956062, 18.865330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987610, 37.388115, 18.483847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589615, 37.428089, 18.484795>,  <34.350819, 37.452072, 18.485363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589615, 37.428089, 18.484795>,  <34.987610, 37.388115, 18.483847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589615, 37.428089, 18.484795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019870, -0.174503, -0.984456,
		-0.097966, -0.979573, 0.175615,
		-0.994991, 0.099933, 0.002369,
		34.291119, 37.458069, 18.485506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712463, 36.793545, 18.041300>,  <34.987610, 37.388115, 18.483847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712463, 36.793545, 18.041300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428738, 37.073345, 18.076099>,  <34.258503, 37.241226, 18.096979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428738, 37.073345, 18.076099>,  <34.712463, 36.793545, 18.041300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428738, 37.073345, 18.076099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185090, -0.065735, -0.980521,
		-0.680160, -0.711599, 0.176098,
		-0.709313, 0.699505, 0.086999,
		34.215942, 37.283195, 18.102200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065468, 36.633850, 17.600262>,  <34.712463, 36.793545, 18.041300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065468, 36.633850, 17.600262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018276, 37.027843, 17.650682>,  <33.989960, 37.264240, 17.680935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018276, 37.027843, 17.650682>,  <34.065468, 36.633850, 17.600262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018276, 37.027843, 17.650682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235645, 0.095543, -0.967131,
		-0.964651, -0.143808, 0.220834,
		-0.117983, 0.984982, 0.126053,
		33.982880, 37.323338, 17.688498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384563, 36.888195, 17.309835>,  <34.065468, 36.633850, 17.600262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384563, 36.888195, 17.309835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564075, 37.245636, 17.313372>,  <33.671783, 37.460098, 17.315493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564075, 37.245636, 17.313372>,  <33.384563, 36.888195, 17.309835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564075, 37.245636, 17.313372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257321, 0.138693, -0.956321,
		-0.855793, 0.426904, 0.292184,
		0.448781, 0.893598, 0.008841,
		33.698711, 37.513714, 17.316025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960041, 37.343914, 17.014496>,  <33.384563, 36.888195, 17.309835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960041, 37.343914, 17.014496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275757, 37.589481, 17.009937>,  <33.465187, 37.736820, 17.007202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275757, 37.589481, 17.009937>,  <32.960041, 37.343914, 17.014496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275757, 37.589481, 17.009937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163935, 0.192808, -0.967445,
		-0.591735, 0.765461, 0.252824,
		0.789288, 0.613918, -0.011394,
		33.512543, 37.773655, 17.006519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791142, 37.731861, 16.514933>,  <32.960041, 37.343914, 17.014496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791142, 37.731861, 16.514933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180923, 37.820248, 16.530947>,  <33.414795, 37.873280, 16.540556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180923, 37.820248, 16.530947>,  <32.791142, 37.731861, 16.514933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180923, 37.820248, 16.530947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026435, 0.064166, -0.997589,
		-0.223006, 0.973167, 0.056686,
		0.974458, 0.220970, 0.040035,
		33.473263, 37.886539, 16.542957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925266, 38.397736, 16.067354>,  <32.791142, 37.731861, 16.514933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925266, 38.397736, 16.067354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238026, 38.149956, 16.095392>,  <33.425682, 38.001286, 16.112215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238026, 38.149956, 16.095392>,  <32.925266, 38.397736, 16.067354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238026, 38.149956, 16.095392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021110, -0.086065, -0.996066,
		0.623049, 0.780302, -0.054217,
		0.781898, -0.619453, 0.070094,
		33.472595, 37.964119, 16.116421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261513, 38.619110, 15.425954>,  <32.925266, 38.397736, 16.067354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261513, 38.619110, 15.425954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441956, 38.285149, 15.552092>,  <33.550220, 38.084770, 15.627774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441956, 38.285149, 15.552092>,  <33.261513, 38.619110, 15.425954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441956, 38.285149, 15.552092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208455, -0.244997, -0.946849,
		0.867785, 0.492863, 0.063520,
		0.451105, -0.834903, 0.315344,
		33.577286, 38.034679, 15.646695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936207, 38.507378, 15.025486>,  <33.261513, 38.619110, 15.425954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936207, 38.507378, 15.025486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769733, 38.172562, 15.167563>,  <33.669849, 37.971672, 15.252810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769733, 38.172562, 15.167563>,  <33.936207, 38.507378, 15.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769733, 38.172562, 15.167563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083936, -0.353599, -0.931624,
		0.905399, -0.417538, 0.076903,
		-0.416182, -0.837036, 0.355195,
		33.644878, 37.921452, 15.274122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329056, 37.897705, 14.649555>,  <33.936207, 38.507378, 15.025486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329056, 37.897705, 14.649555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968849, 37.801613, 14.794529>,  <33.752724, 37.743958, 14.881514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968849, 37.801613, 14.794529>,  <34.329056, 37.897705, 14.649555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968849, 37.801613, 14.794529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287752, -0.295657, -0.910926,
		0.325989, -0.924595, 0.197117,
		-0.900516, -0.240231, 0.362435,
		33.698696, 37.729542, 14.903259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196507, 37.150284, 14.528918>,  <34.329056, 37.897705, 14.649555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196507, 37.150284, 14.528918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837238, 37.320816, 14.571876>,  <33.621677, 37.423134, 14.597650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837238, 37.320816, 14.571876>,  <34.196507, 37.150284, 14.528918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837238, 37.320816, 14.571876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271522, -0.345781, -0.898171,
		-0.345781, -0.835871, 0.426328,
		0.898171, -0.426328, -0.107393,
		33.567787, 37.448715, 14.604094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696106, 36.602837, 14.327044>,  <34.196507, 37.150284, 14.528918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696106, 36.602837, 14.327044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509167, 36.955654, 14.303068>,  <33.397003, 37.167343, 14.288683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509167, 36.955654, 14.303068>,  <33.696106, 36.602837, 14.327044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509167, 36.955654, 14.303068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521801, -0.329936, -0.786680,
		-0.713660, -0.336376, 0.614444,
		-0.467347, 0.882040, -0.059940,
		33.368961, 37.220264, 14.285086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157864, 36.430534, 14.034364>,  <33.696106, 36.602837, 14.327044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157864, 36.430534, 14.034364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057690, 36.817307, 14.015033>,  <32.997585, 37.049370, 14.003434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057690, 36.817307, 14.015033>,  <33.157864, 36.430534, 14.034364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057690, 36.817307, 14.015033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406190, -0.150253, -0.901351,
		-0.878801, -0.206101, 0.430385,
		-0.250436, 0.966926, -0.048327,
		32.982559, 37.107384, 14.000535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432968, 36.514256, 14.056518>,  <33.157864, 36.430534, 14.034364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432968, 36.514256, 14.056518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576332, 36.833763, 13.863228>,  <32.662350, 37.025467, 13.747254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576332, 36.833763, 13.863228>,  <32.432968, 36.514256, 14.056518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576332, 36.833763, 13.863228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700821, -0.111753, -0.704530,
		-0.616760, 0.591164, 0.519742,
		0.358410, 0.798772, -0.483224,
		32.683853, 37.073395, 13.718261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876572, 36.841846, 13.827190>,  <32.432968, 36.514256, 14.056518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876572, 36.841846, 13.827190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157303, 37.022240, 13.606625>,  <32.325741, 37.130474, 13.474285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157303, 37.022240, 13.606625>,  <31.876572, 36.841846, 13.827190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157303, 37.022240, 13.606625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606796, -0.027002, -0.794399,
		-0.373146, 0.892126, 0.254701,
		0.701827, 0.450978, -0.551414,
		32.367851, 37.157532, 13.441200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543869, 37.310612, 13.402305>,  <31.876572, 36.841846, 13.827190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543869, 37.310612, 13.402305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889105, 37.279800, 13.202648>,  <32.096245, 37.261314, 13.082854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889105, 37.279800, 13.202648>,  <31.543869, 37.310612, 13.402305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889105, 37.279800, 13.202648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504868, -0.104993, -0.856788,
		0.013593, 0.991485, -0.129509,
		0.863090, -0.077031, -0.499142,
		32.148033, 37.256691, 13.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691832, 37.930126, 12.872242>,  <31.543869, 37.310612, 13.402305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691832, 37.930126, 12.872242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909126, 37.612740, 12.762473>,  <32.039501, 37.422310, 12.696611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909126, 37.612740, 12.762473>,  <31.691832, 37.930126, 12.872242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909126, 37.612740, 12.762473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509217, -0.051508, -0.859095,
		0.667527, 0.606432, -0.432027,
		0.543236, -0.793465, -0.274423,
		32.072098, 37.374699, 12.680146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997458, 38.117901, 12.235003>,  <31.691832, 37.930126, 12.872242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997458, 38.117901, 12.235003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043728, 37.720886, 12.219530>,  <32.071491, 37.482677, 12.210246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043728, 37.720886, 12.219530>,  <31.997458, 38.117901, 12.235003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043728, 37.720886, 12.219530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216676, 0.012794, -0.976160,
		0.969366, 0.121298, -0.213578,
		0.115674, -0.992534, -0.038684,
		32.078430, 37.423126, 12.207925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302002, 37.969997, 11.572681>,  <31.997458, 38.117901, 12.235003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302002, 37.969997, 11.572681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139122, 37.618286, 11.671517>,  <32.041393, 37.407257, 11.730819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139122, 37.618286, 11.671517>,  <32.302002, 37.969997, 11.572681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139122, 37.618286, 11.671517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422342, -0.058601, -0.904540,
		0.809827, -0.472681, -0.347496,
		-0.407195, -0.879283, 0.247090,
		32.016964, 37.354500, 11.745645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547611, 37.448334, 11.060145>,  <32.302002, 37.969997, 11.572681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547611, 37.448334, 11.060145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201275, 37.335640, 11.225528>,  <31.993473, 37.268024, 11.324758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201275, 37.335640, 11.225528>,  <32.547611, 37.448334, 11.060145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201275, 37.335640, 11.225528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370685, -0.193787, -0.908317,
		0.336024, -0.939720, 0.063356,
		-0.865841, -0.281731, 0.413457,
		31.941523, 37.251122, 11.349565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421684, 36.894489, 10.760406>,  <32.547611, 37.448334, 11.060145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421684, 36.894489, 10.760406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065796, 37.020077, 10.892961>,  <31.852262, 37.095428, 10.972494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065796, 37.020077, 10.892961>,  <32.421684, 36.894489, 10.760406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065796, 37.020077, 10.892961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405427, -0.209813, -0.889723,
		-0.209813, -0.925961, 0.313966,
		0.889723, -0.313966, -0.331388,
		31.798880, 37.114265, 10.992377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952868, 36.461594, 10.391923>,  <32.421684, 36.894489, 10.760406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952868, 36.461594, 10.391923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728436, 36.758129, 10.539220>,  <31.593777, 36.936050, 10.627598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728436, 36.758129, 10.539220>,  <31.952868, 36.461594, 10.391923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728436, 36.758129, 10.539220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667400, -0.141995, -0.731037,
		-0.489657, -0.655937, 0.574441,
		-0.561082, 0.741339, 0.368243,
		31.560110, 36.980530, 10.649693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199110, 36.187881, 10.564860>,  <31.952868, 36.461594, 10.391923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199110, 36.187881, 10.564860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216244, 36.582157, 10.499634>,  <31.226524, 36.818722, 10.460498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216244, 36.582157, 10.499634>,  <31.199110, 36.187881, 10.564860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216244, 36.582157, 10.499634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776675, -0.069813, -0.626021,
		-0.628443, 0.153467, 0.762566,
		0.042837, 0.985685, -0.163067,
		31.229095, 36.877861, 10.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791674, 35.732471, 10.796103>,  <31.199110, 36.187881, 10.564860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791674, 35.732471, 10.796103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943190, 35.408714, 10.616592>,  <32.034100, 35.214458, 10.508886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943190, 35.408714, 10.616592>,  <31.791674, 35.732471, 10.796103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943190, 35.408714, 10.616592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134163, -0.431765, 0.891953,
		-0.915706, -0.398073, -0.054958,
		0.378791, -0.809393, -0.448776,
		32.056828, 35.165897, 10.481959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750723, 35.291363, 11.353319>,  <31.791674, 35.732471, 10.796103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750723, 35.291363, 11.353319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935139, 35.053093, 11.090225>,  <32.045788, 34.910133, 10.932368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935139, 35.053093, 11.090225>,  <31.750723, 35.291363, 11.353319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935139, 35.053093, 11.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324196, -0.576908, 0.749716,
		-0.826038, -0.558885, -0.072863,
		0.461041, -0.595672, -0.657736,
		32.073452, 34.874390, 10.892904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502373, 34.697388, 11.437588>,  <31.750723, 35.291363, 11.353319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502373, 34.697388, 11.437588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860510, 34.636822, 11.270049>,  <32.075394, 34.600483, 11.169526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860510, 34.636822, 11.270049>,  <31.502373, 34.697388, 11.437588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860510, 34.636822, 11.270049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244168, -0.619638, 0.745943,
		-0.372479, -0.770145, -0.517819,
		0.895344, -0.151413, -0.418847,
		32.129112, 34.591396, 11.144395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632469, 34.045574, 11.664635>,  <31.502373, 34.697388, 11.437588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632469, 34.045574, 11.664635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983360, 34.201809, 11.552979>,  <32.193893, 34.295547, 11.485986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983360, 34.201809, 11.552979>,  <31.632469, 34.045574, 11.664635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983360, 34.201809, 11.552979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409417, -0.305014, 0.859851,
		0.250703, -0.868568, -0.427478,
		0.877226, 0.390584, -0.279139,
		32.246529, 34.318985, 11.469238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167233, 33.506046, 11.664510>,  <31.632469, 34.045574, 11.664635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167233, 33.506046, 11.664510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334023, 33.866486, 11.712081>,  <32.434097, 34.082748, 11.740623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334023, 33.866486, 11.712081>,  <32.167233, 33.506046, 11.664510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334023, 33.866486, 11.712081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505279, -0.338576, 0.793763,
		0.755528, -0.270889, -0.596487,
		0.416978, 0.901102, 0.118929,
		32.459114, 34.136818, 11.747760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822216, 33.328484, 11.863824>,  <32.167233, 33.506046, 11.664510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822216, 33.328484, 11.863824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800640, 33.715111, 11.964100>,  <32.787697, 33.947086, 12.024265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800640, 33.715111, 11.964100>,  <32.822216, 33.328484, 11.863824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800640, 33.715111, 11.964100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665601, -0.152346, 0.730593,
		0.744357, 0.206264, -0.635128,
		-0.053936, 0.966564, 0.250689,
		32.784458, 34.005081, 12.039307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485928, 33.466240, 12.036894>,  <32.822216, 33.328484, 11.863824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485928, 33.466240, 12.036894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264065, 33.741474, 12.224035>,  <33.130947, 33.906616, 12.336320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264065, 33.741474, 12.224035>,  <33.485928, 33.466240, 12.036894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264065, 33.741474, 12.224035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699167, 0.080564, 0.710404,
		0.451127, 0.721142, -0.525773,
		-0.554661, 0.688087, 0.467855,
		33.097668, 33.947899, 12.364391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901768, 33.937016, 12.340308>,  <33.485928, 33.466240, 12.036894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901768, 33.937016, 12.340308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563488, 33.984459, 12.548436>,  <33.360519, 34.012924, 12.673313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563488, 33.984459, 12.548436>,  <33.901768, 33.937016, 12.340308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563488, 33.984459, 12.548436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532576, 0.125246, 0.837064,
		0.034112, 0.985011, -0.169086,
		-0.845695, 0.118605, 0.520320,
		33.309780, 34.020039, 12.704533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023270, 34.585068, 12.796328>,  <33.901768, 33.937016, 12.340308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023270, 34.585068, 12.796328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747471, 34.347656, 12.962372>,  <33.581993, 34.205208, 13.061998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747471, 34.347656, 12.962372>,  <34.023270, 34.585068, 12.796328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747471, 34.347656, 12.962372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460785, 0.082726, 0.883648,
		-0.558810, 0.800550, 0.216450,
		-0.689499, -0.593528, 0.415110,
		33.540623, 34.169598, 13.086905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048710, 34.837616, 13.455504>,  <34.023270, 34.585068, 12.796328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048710, 34.837616, 13.455504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850117, 34.492584, 13.494408>,  <33.730961, 34.285564, 13.517750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850117, 34.492584, 13.494408>,  <34.048710, 34.837616, 13.455504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850117, 34.492584, 13.494408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410149, -0.134363, 0.902066,
		-0.765036, 0.487752, 0.420496,
		-0.496484, -0.862580, 0.097258,
		33.701172, 34.233810, 13.523585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851109, 34.797478, 14.145148>,  <34.048710, 34.837616, 13.455504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851109, 34.797478, 14.145148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816322, 34.423100, 14.008650>,  <33.795452, 34.198475, 13.926751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816322, 34.423100, 14.008650>,  <33.851109, 34.797478, 14.145148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816322, 34.423100, 14.008650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567425, -0.328085, 0.755242,
		-0.818820, -0.127952, 0.559609,
		-0.086964, -0.935943, -0.341246,
		33.790234, 34.142315, 13.906276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378872, 34.292229, 14.596105>,  <33.851109, 34.797478, 14.145148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378872, 34.292229, 14.596105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669586, 34.118843, 14.382980>,  <33.844013, 34.014812, 14.255106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669586, 34.118843, 14.382980>,  <33.378872, 34.292229, 14.596105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669586, 34.118843, 14.382980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471543, -0.249153, 0.845914,
		-0.499429, -0.866041, 0.023318,
		0.726786, -0.433469, -0.532810,
		33.887623, 33.988804, 14.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611805, 33.724716, 14.859312>,  <33.378872, 34.292229, 14.596105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611805, 33.724716, 14.859312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932167, 33.854034, 14.657703>,  <34.124382, 33.931625, 14.536738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932167, 33.854034, 14.657703>,  <33.611805, 33.724716, 14.859312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932167, 33.854034, 14.657703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584336, -0.238110, 0.775793,
		0.130798, -0.915851, -0.379616,
		0.800901, 0.323296, -0.504021,
		34.172436, 33.951023, 14.506497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123352, 33.267815, 14.863859>,  <33.611805, 33.724716, 14.859312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123352, 33.267815, 14.863859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333424, 33.605091, 14.817868>,  <34.459469, 33.807457, 14.790274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333424, 33.605091, 14.817868>,  <34.123352, 33.267815, 14.863859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333424, 33.605091, 14.817868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515591, -0.207786, 0.831259,
		0.677016, -0.495843, -0.543865,
		0.525181, 0.843187, -0.114978,
		34.490978, 33.858047, 14.783375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571655, 33.273289, 15.354954>,  <34.123352, 33.267815, 14.863859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571655, 33.273289, 15.354954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648457, 33.640293, 15.215637>,  <34.694538, 33.860497, 15.132047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648457, 33.640293, 15.215637>,  <34.571655, 33.273289, 15.354954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648457, 33.640293, 15.215637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391733, 0.253745, 0.884398,
		0.899822, -0.306247, -0.310699,
		0.192006, 0.917511, -0.348292,
		34.706059, 33.915546, 15.111150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304962, 33.450760, 15.693408>,  <34.571655, 33.273289, 15.354954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304962, 33.450760, 15.693408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104218, 33.780952, 15.590093>,  <34.983772, 33.979069, 15.528103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104218, 33.780952, 15.590093>,  <35.304962, 33.450760, 15.693408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104218, 33.780952, 15.590093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267305, 0.432019, 0.861341,
		0.822609, 0.363229, -0.437468,
		-0.501858, 0.825485, -0.258290,
		34.953659, 34.028599, 15.512606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745464, 34.036671, 15.821157>,  <35.304962, 33.450760, 15.693408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745464, 34.036671, 15.821157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382942, 34.204784, 15.803375>,  <35.165428, 34.305653, 15.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382942, 34.204784, 15.803375>,  <35.745464, 34.036671, 15.821157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382942, 34.204784, 15.803375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113688, 0.343758, 0.932151,
		0.407051, 0.839757, -0.359330,
		-0.906303, 0.420284, -0.044456,
		35.111050, 34.330872, 15.790038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836582, 34.838383, 15.994980>,  <35.745464, 34.036671, 15.821157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836582, 34.838383, 15.994980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467758, 34.700825, 16.066013>,  <35.246464, 34.618290, 16.108633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467758, 34.700825, 16.066013>,  <35.836582, 34.838383, 15.994980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467758, 34.700825, 16.066013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011681, 0.433885, 0.900893,
		-0.386867, 0.832753, -0.396052,
		-0.922062, -0.343899, 0.177583,
		35.191139, 34.597656, 16.119287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550236, 35.334560, 16.374039>,  <35.836582, 34.838383, 15.994980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550236, 35.334560, 16.374039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296230, 35.037697, 16.459795>,  <35.143829, 34.859577, 16.511250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296230, 35.037697, 16.459795>,  <35.550236, 35.334560, 16.374039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296230, 35.037697, 16.459795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033799, 0.303953, 0.952087,
		-0.771764, 0.597338, -0.218098,
		-0.635010, -0.742159, 0.214391,
		35.105728, 34.815048, 16.524113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008362, 35.688469, 16.837299>,  <35.550236, 35.334560, 16.374039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008362, 35.688469, 16.837299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999065, 35.291943, 16.889061>,  <34.993488, 35.054028, 16.920118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999065, 35.291943, 16.889061>,  <35.008362, 35.688469, 16.837299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999065, 35.291943, 16.889061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095317, 0.131049, 0.986783,
		-0.995176, 0.010600, -0.097536,
		-0.023242, -0.991319, 0.129406,
		34.992092, 34.994545, 16.927883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498928, 35.607113, 17.320812>,  <35.008362, 35.688469, 16.837299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498928, 35.607113, 17.320812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726295, 35.279690, 17.353954>,  <34.862717, 35.083237, 17.373838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726295, 35.279690, 17.353954>,  <34.498928, 35.607113, 17.320812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726295, 35.279690, 17.353954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024296, 0.117361, 0.992792,
		-0.822381, -0.562308, 0.086597,
		0.568418, -0.818557, 0.082854,
		34.896820, 35.034122, 17.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258591, 35.334908, 17.928770>,  <34.498928, 35.607113, 17.320812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258591, 35.334908, 17.928770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616596, 35.161858, 17.885359>,  <34.831402, 35.058029, 17.859312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616596, 35.161858, 17.885359>,  <34.258591, 35.334908, 17.928770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616596, 35.161858, 17.885359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171439, 0.109051, 0.979141,
		-0.411767, -0.894954, 0.171772,
		0.895018, -0.432627, -0.108527,
		34.885101, 35.032070, 17.852800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314400, 34.909435, 18.531706>,  <34.258591, 35.334908, 17.928770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314400, 34.909435, 18.531706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688904, 34.893349, 18.392105>,  <34.913605, 34.883698, 18.308346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688904, 34.893349, 18.392105>,  <34.314400, 34.909435, 18.531706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688904, 34.893349, 18.392105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346515, -0.057838, 0.936260,
		-0.057838, -0.997516, -0.040216,
		-0.936260, 0.040216, 0.349000,
		34.969780, 34.881283, 18.287405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602844, 34.275951, 18.804090>,  <34.314400, 34.909435, 18.531706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602844, 34.275951, 18.804090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881824, 34.557426, 18.749865>,  <35.049213, 34.726311, 18.717329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881824, 34.557426, 18.749865>,  <34.602844, 34.275951, 18.804090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881824, 34.557426, 18.749865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286767, -0.100690, 0.952694,
		0.656750, -0.703337, -0.272021,
		0.697455, 0.703689, -0.135566,
		35.091061, 34.768532, 18.709194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190727, 34.036198, 19.111740>,  <34.602844, 34.275951, 18.804090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190727, 34.036198, 19.111740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241341, 34.432125, 19.085659>,  <35.271709, 34.669682, 19.070011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241341, 34.432125, 19.085659>,  <35.190727, 34.036198, 19.111740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241341, 34.432125, 19.085659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404268, 0.008565, 0.914600,
		0.905845, -0.142090, -0.399068,
		0.126537, 0.989817, -0.065201,
		35.279301, 34.729069, 19.066099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764652, 34.175728, 19.393343>,  <35.190727, 34.036198, 19.111740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764652, 34.175728, 19.393343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630360, 34.552509, 19.394770>,  <35.549786, 34.778576, 19.395626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630360, 34.552509, 19.394770>,  <35.764652, 34.175728, 19.393343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630360, 34.552509, 19.394770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382775, 0.132968, 0.914223,
		0.860678, 0.308300, -0.405196,
		-0.335733, 0.941951, 0.003566,
		35.529640, 34.835094, 19.395840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228397, 34.568108, 19.670815>,  <35.764652, 34.175728, 19.393343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228397, 34.568108, 19.670815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920376, 34.822670, 19.688761>,  <35.735565, 34.975407, 19.699528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920376, 34.822670, 19.688761>,  <36.228397, 34.568108, 19.670815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920376, 34.822670, 19.688761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234188, 0.216555, 0.947766,
		0.593445, 0.740335, -0.315796,
		-0.770051, 0.636402, 0.044864,
		35.689362, 35.013592, 19.702219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453865, 35.042900, 20.127365>,  <36.228397, 34.568108, 19.670815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453865, 35.042900, 20.127365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054466, 35.064632, 20.130455>,  <35.814827, 35.077671, 20.132309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054466, 35.064632, 20.130455>,  <36.453865, 35.042900, 20.127365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054466, 35.064632, 20.130455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015414, 0.142551, 0.989668,
		0.052665, 0.988295, -0.143173,
		-0.998493, 0.054328, 0.007726,
		35.754917, 35.080933, 20.132772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195465, 35.738651, 20.423643>,  <36.453865, 35.042900, 20.127365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195465, 35.738651, 20.423643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932259, 35.439434, 20.458147>,  <35.774334, 35.259903, 20.478849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932259, 35.439434, 20.458147>,  <36.195465, 35.738651, 20.423643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932259, 35.439434, 20.458147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160524, -0.027429, 0.986651,
		-0.735696, 0.663078, 0.138128,
		-0.658015, -0.748048, 0.086261,
		35.734856, 35.215019, 20.484026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065304, 35.797352, 21.218740>,  <36.195465, 35.738651, 20.423643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065304, 35.797352, 21.218740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902054, 35.460434, 21.077904>,  <35.804104, 35.258282, 20.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902054, 35.460434, 21.077904>,  <36.065304, 35.797352, 21.218740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902054, 35.460434, 21.077904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166837, -0.447994, 0.878332,
		-0.897553, 0.299726, 0.323363,
		-0.408123, -0.842298, -0.352093,
		35.779617, 35.207745, 20.972277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662842, 35.542194, 21.720964>,  <36.065304, 35.797352, 21.218740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662842, 35.542194, 21.720964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724113, 35.205021, 21.514662>,  <35.760876, 35.002716, 21.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724113, 35.205021, 21.514662>,  <35.662842, 35.542194, 21.720964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724113, 35.205021, 21.514662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077874, -0.509996, 0.856644,
		-0.985125, -0.171384, -0.012478,
		0.153179, -0.842930, -0.515757,
		35.770069, 34.952141, 21.359934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252621, 35.045059, 21.997105>,  <35.662842, 35.542194, 21.720964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252621, 35.045059, 21.997105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555058, 34.864777, 21.807289>,  <35.736519, 34.756607, 21.693399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555058, 34.864777, 21.807289>,  <35.252621, 35.045059, 21.997105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555058, 34.864777, 21.807289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203273, -0.527495, 0.824881,
		-0.622097, -0.720148, -0.307218,
		0.756092, -0.450707, -0.474539,
		35.781887, 34.729565, 21.664927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088871, 34.341362, 22.141611>,  <35.252621, 35.045059, 21.997105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088871, 34.341362, 22.141611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472683, 34.363934, 22.031256>,  <35.702972, 34.377476, 21.965042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472683, 34.363934, 22.031256>,  <35.088871, 34.341362, 22.141611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472683, 34.363934, 22.031256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255392, -0.587116, 0.768160,
		-0.118632, -0.807533, -0.577769,
		0.959532, 0.056429, -0.275888,
		35.760544, 34.380863, 21.948490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316051, 33.650341, 22.180269>,  <35.088871, 34.341362, 22.141611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316051, 33.650341, 22.180269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677345, 33.820721, 22.159317>,  <35.894119, 33.922947, 22.146746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677345, 33.820721, 22.159317>,  <35.316051, 33.650341, 22.180269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677345, 33.820721, 22.159317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316225, -0.578055, 0.752233,
		0.290134, -0.696003, -0.656812,
		0.903230, 0.425949, -0.052380,
		35.948315, 33.948505, 22.143602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817345, 33.114002, 22.287489>,  <35.316051, 33.650341, 22.180269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817345, 33.114002, 22.287489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028919, 33.447330, 22.351738>,  <36.155865, 33.647327, 22.390287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028919, 33.447330, 22.351738>,  <35.817345, 33.114002, 22.287489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028919, 33.447330, 22.351738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483894, -0.451624, 0.749588,
		0.697190, -0.318759, -0.642120,
		0.528935, 0.833323, 0.160622,
		36.187599, 33.697327, 22.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492355, 32.846355, 22.381599>,  <35.817345, 33.114002, 22.287489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492355, 32.846355, 22.381599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466751, 33.209522, 22.547295>,  <36.451389, 33.427422, 22.646711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466751, 33.209522, 22.547295>,  <36.492355, 32.846355, 22.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466751, 33.209522, 22.547295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456869, -0.342372, 0.821007,
		0.887227, 0.241809, -0.392881,
		-0.064015, 0.907915, 0.414237,
		36.447548, 33.481895, 22.671566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194752, 33.012894, 22.574146>,  <36.492355, 32.846355, 22.381599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194752, 33.012894, 22.574146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959972, 33.245174, 22.799810>,  <36.819103, 33.384541, 22.935209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959972, 33.245174, 22.799810>,  <37.194752, 33.012894, 22.574146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959972, 33.245174, 22.799810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371349, -0.426107, 0.824944,
		0.719437, 0.693703, 0.034463,
		-0.586951, 0.580697, 0.564162,
		36.783886, 33.419384, 22.969059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644798, 33.324696, 23.078259>,  <37.194752, 33.012894, 22.574146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644798, 33.324696, 23.078259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280315, 33.328499, 23.242994>,  <37.061626, 33.330780, 23.341835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280315, 33.328499, 23.242994>,  <37.644798, 33.324696, 23.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280315, 33.328499, 23.242994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357545, -0.478293, 0.802121,
		0.204603, 0.878149, 0.432425,
		-0.911207, 0.009505, 0.411838,
		37.006954, 33.331348, 23.366547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664173, 33.567226, 23.810030>,  <37.644798, 33.324696, 23.078259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664173, 33.567226, 23.810030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314655, 33.376236, 23.773148>,  <37.104946, 33.261642, 23.751019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314655, 33.376236, 23.773148>,  <37.664173, 33.567226, 23.810030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314655, 33.376236, 23.773148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247963, -0.600570, 0.760151,
		-0.418330, 0.641351, 0.643171,
		-0.873793, -0.477476, -0.092205,
		37.052517, 33.232994, 23.745485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358173, 33.440395, 24.505037>,  <37.664173, 33.567226, 23.810030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358173, 33.440395, 24.505037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224041, 33.153099, 24.261175>,  <37.143562, 32.980721, 24.114857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224041, 33.153099, 24.261175>,  <37.358173, 33.440395, 24.505037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224041, 33.153099, 24.261175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303263, -0.694975, 0.651952,
		-0.891956, 0.033732, 0.450862,
		-0.335330, -0.718242, -0.609658,
		37.123444, 32.937626, 24.078278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883251, 32.868374, 24.797880>,  <37.358173, 33.440395, 24.505037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883251, 32.868374, 24.797880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109749, 32.718632, 24.504154>,  <37.245647, 32.628784, 24.327919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109749, 32.718632, 24.504154>,  <36.883251, 32.868374, 24.797880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109749, 32.718632, 24.504154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373022, -0.678055, 0.633322,
		-0.734997, -0.632532, -0.244301,
		0.566246, -0.374360, -0.734316,
		37.279621, 32.606323, 24.283859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768902, 32.186081, 24.614649>,  <36.883251, 32.868374, 24.797880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768902, 32.186081, 24.614649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 32.280098, 24.556086>,  <37.383873, 32.336510, 24.520948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 32.280098, 24.556086>,  <36.768902, 32.186081, 24.614649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153259, 32.280098, 24.556086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274783, -0.743897, 0.609189,
		0.034274, -0.625597, -0.779394,
		0.960895, 0.235043, -0.146407,
		37.441528, 32.350613, 24.512163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178970, 32.745300, 24.774036>,  <36.768902, 32.186081, 24.614649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178970, 32.745300, 24.774036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356831, 32.590687, 25.097240>,  <36.463547, 32.497917, 25.291162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356831, 32.590687, 25.097240>,  <36.178970, 32.745300, 24.774036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356831, 32.590687, 25.097240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477778, 0.865394, 0.151065,
		-0.757640, 0.318879, 0.569472,
		0.444646, -0.386534, 0.808011,
		36.490223, 32.474728, 25.339643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101559, 33.142956, 25.487967>,  <36.178970, 32.745300, 24.774036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101559, 33.142956, 25.487967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452099, 32.954552, 25.447657>,  <36.662422, 32.841511, 25.423471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452099, 32.954552, 25.447657>,  <36.101559, 33.142956, 25.487967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452099, 32.954552, 25.447657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481662, 0.857909, 0.178867,
		0.002208, -0.205290, 0.978699,
		0.876354, -0.471007, -0.100775,
		36.715004, 32.813251, 25.417423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519547, 33.218971, 26.049814>,  <36.101559, 33.142956, 25.487967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519547, 33.218971, 26.049814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757019, 33.161488, 25.733109>,  <36.899502, 33.126999, 25.543085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757019, 33.161488, 25.733109>,  <36.519547, 33.218971, 26.049814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757019, 33.161488, 25.733109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353732, 0.930369, 0.096373,
		0.722782, -0.337287, 0.603178,
		0.593683, -0.143707, -0.791763,
		36.935123, 33.118374, 25.495579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936081, 32.994331, 26.661316>,  <36.519547, 33.218971, 26.049814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936081, 32.994331, 26.661316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021164, 32.716568, 26.386347>,  <37.072212, 32.549908, 26.221365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021164, 32.716568, 26.386347>,  <36.936081, 32.994331, 26.661316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021164, 32.716568, 26.386347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361960, -0.709470, 0.604680,
		-0.907602, 0.120199, -0.402258,
		0.212708, -0.694410, -0.687423,
		37.084976, 32.508244, 26.180120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398865, 33.013405, 26.066132>,  <36.936081, 32.994331, 26.661316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398865, 33.013405, 26.066132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318325, 33.277832, 26.355253>,  <37.270000, 33.436489, 26.528727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318325, 33.277832, 26.355253>,  <37.398865, 33.013405, 26.066132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318325, 33.277832, 26.355253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646370, -0.464773, 0.605139,
		0.735978, 0.589045, -0.333712,
		-0.201353, 0.661070, 0.722803,
		37.257919, 33.476154, 26.572094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119595, 33.172295, 26.365690>,  <37.398865, 33.013405, 26.066132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119595, 33.172295, 26.365690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802071, 33.247673, 26.596983>,  <37.611557, 33.292900, 26.735758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802071, 33.247673, 26.596983>,  <38.119595, 33.172295, 26.365690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802071, 33.247673, 26.596983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430372, -0.497719, 0.753031,
		0.429703, 0.846619, 0.313993,
		-0.793811, 0.188446, 0.578232,
		37.563927, 33.304207, 26.770452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097591, 32.361382, 26.558140>,  <38.119595, 33.172295, 26.365690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097591, 32.361382, 26.558140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006847, 32.499443, 26.922426>,  <37.952400, 32.582279, 27.140999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006847, 32.499443, 26.922426>,  <38.097591, 32.361382, 26.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006847, 32.499443, 26.922426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667123, -0.626203, 0.403505,
		0.709563, 0.699100, -0.088196,
		-0.226862, 0.345150, 0.910717,
		37.938789, 32.602989, 27.195641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721577, 32.535351, 26.918739>,  <38.097591, 32.361382, 26.558140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721577, 32.535351, 26.918739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422565, 32.420773, 27.158455>,  <38.243156, 32.352024, 27.302284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422565, 32.420773, 27.158455>,  <38.721577, 32.535351, 26.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422565, 32.420773, 27.158455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541745, -0.784971, 0.300555,
		0.384331, 0.549335, 0.741970,
		-0.747530, -0.286447, 0.599289,
		38.198307, 32.334839, 27.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811081, 32.684925, 27.755260>,  <38.721577, 32.535351, 26.918739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811081, 32.684925, 27.755260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582142, 32.360466, 27.707144>,  <38.444778, 32.165791, 27.678274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582142, 32.360466, 27.707144>,  <38.811081, 32.684925, 27.755260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582142, 32.360466, 27.707144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652400, -0.539299, 0.532475,
		-0.496787, 0.226280, 0.837855,
		-0.572343, -0.811143, -0.120291,
		38.410439, 32.117123, 27.671057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727959, 32.317108, 28.444384>,  <38.811081, 32.684925, 27.755260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727959, 32.317108, 28.444384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652786, 32.054420, 28.152248>,  <38.607681, 31.896807, 27.976967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652786, 32.054420, 28.152248>,  <38.727959, 32.317108, 28.444384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652786, 32.054420, 28.152248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732224, -0.589280, 0.341463,
		-0.654621, -0.470599, 0.591614,
		-0.187934, -0.656723, -0.730340,
		38.596405, 31.857403, 27.933147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812046, 33.048737, 28.704618>,  <38.727959, 32.317108, 28.444384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812046, 33.048737, 28.704618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084129, 33.296959, 28.548552>,  <39.247379, 33.445892, 28.454912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084129, 33.296959, 28.548552>,  <38.812046, 33.048737, 28.704618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084129, 33.296959, 28.548552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283960, 0.713780, 0.640223,
		0.675786, -0.324693, 0.661731,
		0.680206, 0.620559, -0.390162,
		39.288189, 33.483128, 28.431501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262299, 33.531181, 29.294779>,  <38.812046, 33.048737, 28.704618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262299, 33.531181, 29.294779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269478, 33.698254, 28.931412>,  <39.273785, 33.798496, 28.713390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269478, 33.698254, 28.931412>,  <39.262299, 33.531181, 29.294779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269478, 33.698254, 28.931412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123044, 0.902582, 0.412561,
		0.992239, 0.104369, 0.067594,
		0.017951, 0.417676, -0.908418,
		39.274864, 33.823555, 28.658886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665733, 34.060265, 29.371761>,  <39.262299, 33.531181, 29.294779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665733, 34.060265, 29.371761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453262, 34.152454, 29.045637>,  <39.325779, 34.207767, 28.849962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453262, 34.152454, 29.045637>,  <39.665733, 34.060265, 29.371761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453262, 34.152454, 29.045637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153767, 0.920086, 0.360274,
		0.833190, 0.316737, -0.453289,
		-0.531177, 0.230476, -0.815311,
		39.293911, 34.221596, 28.801044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956329, 34.599636, 28.902878>,  <39.665733, 34.060265, 29.371761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956329, 34.599636, 28.902878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559563, 34.598293, 28.852137>,  <39.321503, 34.597488, 28.821692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559563, 34.598293, 28.852137>,  <39.956329, 34.599636, 28.902878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559563, 34.598293, 28.852137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041508, 0.953241, 0.299348,
		0.119918, 0.302193, -0.945674,
		-0.991916, -0.003356, -0.126854,
		39.261990, 34.597286, 28.814081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888126, 35.335907, 28.908213>,  <39.956329, 34.599636, 28.902878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888126, 35.335907, 28.908213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519073, 35.181648, 28.910549>,  <39.297642, 35.089092, 28.911951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519073, 35.181648, 28.910549>,  <39.888126, 35.335907, 28.908213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519073, 35.181648, 28.910549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348652, 0.840411, 0.414911,
		-0.164918, 0.380773, -0.909843,
		-0.922629, -0.385645, 0.005841,
		39.242287, 35.065956, 28.912302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489204, 35.841049, 28.744961>,  <39.888126, 35.335907, 28.908213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489204, 35.841049, 28.744961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216183, 35.614632, 28.929882>,  <39.052372, 35.478783, 29.040834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216183, 35.614632, 28.929882>,  <39.489204, 35.841049, 28.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216183, 35.614632, 28.929882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450223, 0.823944, 0.344115,
		-0.575694, 0.026736, -0.817228,
		-0.682550, -0.566040, 0.462302,
		39.011417, 35.444820, 29.068573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854206, 36.024849, 28.543941>,  <39.489204, 35.841049, 28.744961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854206, 36.024849, 28.543941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781796, 35.838509, 28.890400>,  <38.738350, 35.726704, 29.098276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781796, 35.838509, 28.890400>,  <38.854206, 36.024849, 28.543941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781796, 35.838509, 28.890400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436078, 0.827410, 0.353878,
		-0.881514, -0.313647, -0.352930,
		-0.181025, -0.465853, 0.866147,
		38.727489, 35.698753, 29.150244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090405, 36.059113, 28.645229>,  <38.854206, 36.024849, 28.543941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090405, 36.059113, 28.645229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276882, 36.034817, 28.998266>,  <38.388771, 36.020237, 29.210089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276882, 36.034817, 28.998266>,  <38.090405, 36.059113, 28.645229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276882, 36.034817, 28.998266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537568, 0.772887, 0.337145,
		-0.702623, -0.631630, 0.327665,
		0.466198, -0.060743, 0.882592,
		38.416740, 36.016594, 29.263044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312820, 36.571556, 29.056955>,  <38.090405, 36.059113, 28.645229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312820, 36.571556, 29.056955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655956, 36.772820, 29.098801>,  <38.861835, 36.893578, 29.123909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655956, 36.772820, 29.098801>,  <38.312820, 36.571556, 29.056955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655956, 36.772820, 29.098801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157091, -0.062908, -0.985578,
		-0.489325, 0.861899, -0.133007,
		0.857836, 0.503162, 0.104615,
		38.913307, 36.923767, 29.130184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930313, 37.257061, 29.079517>,  <38.312820, 36.571556, 29.056955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930313, 37.257061, 29.079517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735870, 37.367702, 29.411104>,  <37.619205, 37.434090, 29.610056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735870, 37.367702, 29.411104>,  <37.930313, 37.257061, 29.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735870, 37.367702, 29.411104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057235, 0.936472, -0.346040,
		-0.872023, -0.215658, -0.439394,
		-0.486106, 0.276606, 0.828969,
		37.590038, 37.450684, 29.659796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481030, 37.278988, 29.707989>,  <37.930313, 37.257061, 29.079517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481030, 37.278988, 29.707989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430775, 37.085777, 30.054607>,  <38.400620, 36.969852, 30.262579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430775, 37.085777, 30.054607>,  <38.481030, 37.278988, 29.707989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430775, 37.085777, 30.054607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377513, -0.831034, -0.408493,
		0.917441, 0.275810, 0.286758,
		-0.125639, -0.483024, 0.866547,
		38.393082, 36.940868, 30.314571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121395, 36.987667, 30.086489>,  <38.481030, 37.278988, 29.707989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121395, 36.987667, 30.086489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790203, 36.778305, 30.166977>,  <38.591488, 36.652687, 30.215269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790203, 36.778305, 30.166977>,  <39.121395, 36.987667, 30.086489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790203, 36.778305, 30.166977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419440, -0.816246, -0.397257,
		0.372172, -0.244523, 0.895375,
		-0.827985, -0.523404, 0.201221,
		38.541809, 36.621284, 30.227343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433525, 36.401012, 30.299953>,  <39.121395, 36.987667, 30.086489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433525, 36.401012, 30.299953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071114, 36.361340, 30.135380>,  <38.853668, 36.337536, 30.036634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071114, 36.361340, 30.135380>,  <39.433525, 36.401012, 30.299953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071114, 36.361340, 30.135380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309998, -0.817366, -0.485606,
		-0.288129, -0.567516, 0.771302,
		-0.906026, -0.099185, -0.411435,
		38.799305, 36.331585, 30.011950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153332, 35.735950, 30.377981>,  <39.433525, 36.401012, 30.299953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153332, 35.735950, 30.377981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956722, 35.855900, 30.050938>,  <38.838757, 35.927868, 29.854712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956722, 35.855900, 30.050938>,  <39.153332, 35.735950, 30.377981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956722, 35.855900, 30.050938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062719, -0.924219, -0.376676,
		-0.868604, -0.236424, 0.435466,
		-0.491521, 0.299871, -0.817609,
		38.809265, 35.945862, 29.805655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509865, 35.217587, 30.286478>,  <39.153332, 35.735950, 30.377981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509865, 35.217587, 30.286478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621864, 35.387104, 29.941921>,  <38.689064, 35.488815, 29.735188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621864, 35.387104, 29.941921>,  <38.509865, 35.217587, 30.286478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621864, 35.387104, 29.941921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076283, -0.884625, -0.460021,
		-0.956966, 0.194514, -0.215363,
		0.279996, 0.423796, -0.861394,
		38.705864, 35.514244, 29.683502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309090, 34.645260, 29.795967>,  <38.509865, 35.217587, 30.286478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309090, 34.645260, 29.795967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508469, 34.905186, 29.566431>,  <38.628098, 35.061142, 29.428709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508469, 34.905186, 29.566431>,  <38.309090, 34.645260, 29.795967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508469, 34.905186, 29.566431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154060, -0.717791, -0.679000,
		-0.853121, 0.250040, -0.457891,
		0.498447, 0.649812, -0.573842,
		38.658001, 35.100128, 29.394278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089451, 34.520092, 29.007946>,  <38.309090, 34.645260, 29.795967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089451, 34.520092, 29.007946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448524, 34.692699, 28.972275>,  <38.663971, 34.796265, 28.950872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448524, 34.692699, 28.972275>,  <38.089451, 34.520092, 29.007946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448524, 34.692699, 28.972275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228873, -0.629566, -0.742471,
		-0.376530, 0.646096, -0.663916,
		0.897687, 0.431515, -0.089177,
		38.717831, 34.822155, 28.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140083, 34.614872, 28.228739>,  <38.089451, 34.520092, 29.007946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140083, 34.614872, 28.228739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485302, 34.618507, 28.430756>,  <38.692432, 34.620689, 28.551966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485302, 34.618507, 28.430756>,  <38.140083, 34.614872, 28.228739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485302, 34.618507, 28.430756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325760, -0.774146, -0.542751,
		0.386044, 0.632942, -0.671085,
		0.863047, 0.009087, 0.505041,
		38.744217, 34.621235, 28.582268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651165, 34.608364, 27.748831>,  <38.140083, 34.614872, 28.228739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651165, 34.608364, 27.748831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843445, 34.487953, 28.078270>,  <38.958813, 34.415707, 28.275934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843445, 34.487953, 28.078270>,  <38.651165, 34.608364, 27.748831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843445, 34.487953, 28.078270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374944, -0.778483, -0.503370,
		0.792685, 0.550772, -0.261347,
		0.480696, -0.301023, 0.823600,
		38.987652, 34.397648, 28.325350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328743, 34.573021, 27.543430>,  <38.651165, 34.608364, 27.748831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328743, 34.573021, 27.543430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254383, 34.327557, 27.850378>,  <39.209766, 34.180275, 28.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254383, 34.327557, 27.850378>,  <39.328743, 34.573021, 27.543430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254383, 34.327557, 27.850378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439454, -0.750445, -0.493672,
		0.878819, 0.245451, 0.409184,
		-0.185898, -0.613666, 0.767370,
		39.198612, 34.143456, 28.080589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957058, 34.293808, 27.753359>,  <39.328743, 34.573021, 27.543430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957058, 34.293808, 27.753359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673172, 34.028721, 27.848948>,  <39.502842, 33.869667, 27.906301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673172, 34.028721, 27.848948>,  <39.957058, 34.293808, 27.753359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673172, 34.028721, 27.848948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557582, -0.735746, -0.384423,
		0.430587, -0.139583, 0.891690,
		-0.709716, -0.662718, 0.238974,
		39.460258, 33.829906, 27.920639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359615, 34.986404, 27.723124>,  <39.957058, 34.293808, 27.753359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359615, 34.986404, 27.723124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558441, 35.312134, 27.842999>,  <40.677734, 35.507572, 27.914925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558441, 35.312134, 27.842999>,  <40.359615, 34.986404, 27.723124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558441, 35.312134, 27.842999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722589, 0.579674, -0.376620,
		-0.480411, -0.029348, 0.876552,
		0.497062, 0.814319, 0.299688,
		40.707561, 35.556431, 27.932905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990421, 34.902817, 27.226076>,  <40.359615, 34.986404, 27.723124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990421, 34.902817, 27.226076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248569, 34.605591, 27.296888>,  <41.403458, 34.427254, 27.339376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248569, 34.605591, 27.296888>,  <40.990421, 34.902817, 27.226076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248569, 34.605591, 27.296888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733559, -0.538261, 0.414929,
		-0.213031, -0.397649, -0.892465,
		0.645375, -0.743068, 0.177033,
		41.442181, 34.382671, 27.349998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727940, 34.227001, 27.007448>,  <40.990421, 34.902817, 27.226076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727940, 34.227001, 27.007448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993832, 34.190056, 27.303989>,  <41.153366, 34.167889, 27.481915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993832, 34.190056, 27.303989>,  <40.727940, 34.227001, 27.007448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993832, 34.190056, 27.303989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690000, -0.456349, 0.561823,
		0.286424, -0.884994, -0.367079,
		0.664726, -0.092365, 0.741355,
		41.193249, 34.162346, 27.526396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745796, 33.562054, 27.294710>,  <40.727940, 34.227001, 27.007448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745796, 33.562054, 27.294710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923168, 33.771496, 27.585697>,  <41.029591, 33.897160, 27.760290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923168, 33.771496, 27.585697>,  <40.745796, 33.562054, 27.294710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923168, 33.771496, 27.585697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705892, -0.296150, 0.643437,
		0.552344, -0.798835, 0.238283,
		0.443432, 0.523601, 0.727468,
		41.056198, 33.928577, 27.803938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936550, 33.130405, 27.913769>,  <40.745796, 33.562054, 27.294710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936550, 33.130405, 27.913769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826370, 33.507854, 27.987202>,  <40.760262, 33.734325, 28.031261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826370, 33.507854, 27.987202>,  <40.936550, 33.130405, 27.913769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826370, 33.507854, 27.987202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652329, -0.323746, 0.685315,
		0.706114, 0.069010, 0.704728,
		-0.275446, 0.943624, 0.183584,
		40.743736, 33.790943, 28.042276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826122, 33.236423, 28.587021>,  <40.936550, 33.130405, 27.913769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826122, 33.236423, 28.587021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605965, 33.546875, 28.463930>,  <40.473869, 33.733147, 28.390076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605965, 33.546875, 28.463930>,  <40.826122, 33.236423, 28.587021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605965, 33.546875, 28.463930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769428, -0.328436, 0.547824,
		0.324112, 0.538292, 0.777942,
		-0.550393, 0.776126, -0.307727,
		40.440845, 33.779713, 28.371613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351921, 32.640343, 28.751261>,  <40.826122, 33.236423, 28.587021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351921, 32.640343, 28.751261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386276, 32.274220, 28.593866>,  <40.406891, 32.054546, 28.499430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386276, 32.274220, 28.593866>,  <40.351921, 32.640343, 28.751261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386276, 32.274220, 28.593866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764990, -0.192437, 0.614620,
		-0.638289, -0.353800, 0.683675,
		0.085888, -0.915310, -0.393485,
		40.412045, 31.999626, 28.475821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468868, 32.168903, 29.339056>,  <40.351921, 32.640343, 28.751261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468868, 32.168903, 29.339056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606541, 32.041443, 28.985785>,  <40.689144, 31.964966, 28.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606541, 32.041443, 28.985785>,  <40.468868, 32.168903, 29.339056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606541, 32.041443, 28.985785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875951, -0.229662, 0.424223,
		-0.338012, -0.919628, 0.200081,
		0.344176, -0.318654, -0.883178,
		40.709793, 31.945847, 28.720831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700008, 31.374453, 29.394632>,  <40.468868, 32.168903, 29.339056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700008, 31.374453, 29.394632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884922, 31.623522, 29.142101>,  <40.995869, 31.772964, 28.990583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884922, 31.623522, 29.142101>,  <40.700008, 31.374453, 29.394632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884922, 31.623522, 29.142101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754631, 0.097617, 0.648847,
		0.465649, -0.776368, -0.424763,
		0.462280, 0.622674, -0.631327,
		41.023605, 31.810324, 28.952703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433292, 31.207733, 29.248621>,  <40.700008, 31.374453, 29.394632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433292, 31.207733, 29.248621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391716, 31.604742, 29.223032>,  <41.366772, 31.842947, 29.207680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391716, 31.604742, 29.223032>,  <41.433292, 31.207733, 29.248621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391716, 31.604742, 29.223032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593781, 0.113523, 0.796578,
		0.797885, 0.044809, -0.601141,
		-0.103937, 0.992524, -0.063971,
		41.360535, 31.902500, 29.203840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011986, 31.645084, 29.023806>,  <41.433292, 31.207733, 29.248621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011986, 31.645084, 29.023806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786453, 31.852142, 29.281221>,  <41.651134, 31.976377, 29.435671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786453, 31.852142, 29.281221>,  <42.011986, 31.645084, 29.023806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786453, 31.852142, 29.281221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804601, 0.168498, 0.569408,
		0.186316, 0.838841, -0.511501,
		-0.563829, 0.517644, 0.643539,
		41.617306, 32.007435, 29.474283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330181, 32.147968, 29.194662>,  <42.011986, 31.645084, 29.023806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330181, 32.147968, 29.194662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069145, 32.105686, 29.494783>,  <41.912525, 32.080318, 29.674856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069145, 32.105686, 29.494783>,  <42.330181, 32.147968, 29.194662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069145, 32.105686, 29.494783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748618, 0.063020, 0.660000,
		-0.117048, 0.992399, 0.038005,
		-0.652588, -0.105703, 0.750304,
		41.873367, 32.073975, 29.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422363, 32.685474, 29.726976>,  <42.330181, 32.147968, 29.194662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422363, 32.685474, 29.726976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277439, 32.344574, 29.877920>,  <42.190483, 32.140034, 29.968487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277439, 32.344574, 29.877920>,  <42.422363, 32.685474, 29.726976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277439, 32.344574, 29.877920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751435, -0.027559, 0.659231,
		-0.551429, 0.522411, 0.650395,
		-0.362314, -0.852249, 0.377360,
		42.168743, 32.088898, 29.991129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370632, 32.654198, 30.469040>,  <42.422363, 32.685474, 29.726976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370632, 32.654198, 30.469040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439121, 32.298870, 30.298597>,  <42.480213, 32.085674, 30.196331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439121, 32.298870, 30.298597>,  <42.370632, 32.654198, 30.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439121, 32.298870, 30.298597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851781, -0.083882, 0.517139,
		-0.495129, -0.451493, 0.742295,
		0.171219, -0.888323, -0.426106,
		42.490486, 32.032372, 30.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543671, 32.168007, 30.949900>,  <42.370632, 32.654198, 30.469040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543671, 32.168007, 30.949900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693928, 32.043198, 30.600836>,  <42.784081, 31.968311, 30.391397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693928, 32.043198, 30.600836>,  <42.543671, 32.168007, 30.949900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693928, 32.043198, 30.600836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902354, -0.091560, 0.421158,
		-0.211313, -0.945651, 0.247164,
		0.375638, -0.312026, -0.872660,
		42.806618, 31.949591, 30.339037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755444, 31.539160, 30.991739>,  <42.543671, 32.168007, 30.949900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755444, 31.539160, 30.991739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977554, 31.702806, 30.702106>,  <43.110821, 31.800995, 30.528326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977554, 31.702806, 30.702106>,  <42.755444, 31.539160, 30.991739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977554, 31.702806, 30.702106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788757, 0.016988, 0.614470,
		0.263692, -0.912323, -0.313262,
		0.555273, 0.409119, -0.724081,
		43.144135, 31.825542, 30.484882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375053, 31.010349, 30.854593>,  <42.755444, 31.539160, 30.991739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375053, 31.010349, 30.854593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397057, 31.405672, 30.797710>,  <43.410259, 31.642866, 30.763580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397057, 31.405672, 30.797710>,  <43.375053, 31.010349, 30.854593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397057, 31.405672, 30.797710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714902, 0.060441, 0.696608,
		0.697057, -0.139985, -0.703218,
		0.055012, 0.988307, -0.142206,
		43.413559, 31.702164, 30.755049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068275, 31.290932, 30.623301>,  <43.375053, 31.010349, 30.854593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068275, 31.290932, 30.623301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859344, 31.518251, 30.877611>,  <43.733986, 31.654642, 31.030197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859344, 31.518251, 30.877611>,  <44.068275, 31.290932, 30.623301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859344, 31.518251, 30.877611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757309, -0.033585, 0.652193,
		0.391993, 0.822137, -0.412835,
		-0.522327, 0.568298, 0.635777,
		43.702648, 31.688742, 31.068344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365696, 31.909658, 30.798027>,  <44.068275, 31.290932, 30.623301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365696, 31.909658, 30.798027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135983, 31.811129, 31.110313>,  <43.998154, 31.752010, 31.297686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135983, 31.811129, 31.110313>,  <44.365696, 31.909658, 30.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135983, 31.811129, 31.110313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739382, 0.253332, 0.623808,
		-0.351439, 0.935493, 0.036642,
		-0.574286, -0.246323, 0.780718,
		43.963696, 31.737232, 31.344528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370243, 32.432022, 31.304609>,  <44.365696, 31.909658, 30.798027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370243, 32.432022, 31.304609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272617, 32.107716, 31.517433>,  <44.214043, 31.913132, 31.645128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272617, 32.107716, 31.517433>,  <44.370243, 32.432022, 31.304609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272617, 32.107716, 31.517433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889911, 0.030766, 0.455096,
		-0.385347, 0.584558, 0.714002,
		-0.244063, -0.810768, 0.532060,
		44.199398, 31.864485, 31.677052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400192, 32.807377, 31.985598>,  <44.370243, 32.432022, 31.304609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400192, 32.807377, 31.985598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615314, 32.471687, 32.017773>,  <44.744389, 32.270275, 32.037079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615314, 32.471687, 32.017773>,  <44.400192, 32.807377, 31.985598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615314, 32.471687, 32.017773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611898, 0.322922, -0.722012,
		0.579956, 0.437519, 0.687189,
		0.537803, -0.839225, 0.080436,
		44.776657, 32.219921, 32.041904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228073, 32.839062, 32.131603>,  <44.400192, 32.807377, 31.985598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228073, 32.839062, 32.131603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160320, 32.515099, 31.906973>,  <45.119667, 32.320721, 31.772196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160320, 32.515099, 31.906973>,  <45.228073, 32.839062, 32.131603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160320, 32.515099, 31.906973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392689, 0.467160, -0.792184,
		0.903939, -0.354706, 0.238912,
		-0.169382, -0.809904, -0.561573,
		45.109505, 32.272129, 31.738501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833679, 32.539421, 31.821106>,  <45.228073, 32.839062, 32.131603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833679, 32.539421, 31.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514839, 32.460804, 31.592718>,  <45.323536, 32.413631, 31.455687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514839, 32.460804, 31.592718>,  <45.833679, 32.539421, 31.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514839, 32.460804, 31.592718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471486, 0.388183, -0.791843,
		0.377265, -0.900382, -0.216757,
		-0.797102, -0.196537, -0.570965,
		45.275711, 32.401840, 31.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141376, 33.171291, 31.989975>,  <45.833679, 32.539421, 31.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141376, 33.171291, 31.989975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851929, 33.115906, 31.719505>,  <45.678261, 33.082676, 31.557224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851929, 33.115906, 31.719505>,  <46.141376, 33.171291, 31.989975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851929, 33.115906, 31.719505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094825, 0.950437, -0.296104,
		0.683659, -0.278383, -0.674621,
		-0.723615, -0.138463, -0.676173,
		45.634846, 33.074368, 31.516653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383945, 33.480518, 31.412563>,  <46.141376, 33.171291, 31.989975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383945, 33.480518, 31.412563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985710, 33.464485, 31.378624>,  <45.746769, 33.454865, 31.358259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985710, 33.464485, 31.378624>,  <46.383945, 33.480518, 31.412563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985710, 33.464485, 31.378624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005506, 0.927597, -0.373541,
		0.093677, -0.371426, -0.923725,
		-0.995587, -0.040078, -0.084850,
		45.687035, 33.452461, 31.353168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290611, 34.181236, 31.539745>,  <46.383945, 33.480518, 31.412563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290611, 34.181236, 31.539745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391075, 33.951252, 31.851217>,  <46.451351, 33.813263, 32.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391075, 33.951252, 31.851217>,  <46.290611, 34.181236, 31.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391075, 33.951252, 31.851217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670865, 0.476511, 0.568224,
		-0.697754, -0.665104, -0.266038,
		0.251157, -0.574956, 0.778682,
		46.466423, 33.778767, 32.084824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703506, 33.820084, 32.055592>,  <46.290611, 34.181236, 31.539745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703506, 33.820084, 32.055592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011948, 33.889400, 32.300659>,  <46.197014, 33.930988, 32.447701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011948, 33.889400, 32.300659>,  <45.703506, 33.820084, 32.055592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011948, 33.889400, 32.300659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619382, 0.427092, 0.658755,
		-0.147512, -0.887447, 0.436666,
		0.771107, 0.173289, 0.612670,
		46.243279, 33.941387, 32.484459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562447, 33.551136, 32.773987>,  <45.703506, 33.820084, 32.055592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562447, 33.551136, 32.773987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809044, 33.850712, 32.871170>,  <45.957001, 34.030457, 32.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809044, 33.850712, 32.871170>,  <45.562447, 33.551136, 32.773987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809044, 33.850712, 32.871170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666482, 0.332092, 0.667471,
		0.419212, -0.573416, 0.703886,
		0.616493, 0.748939, 0.242954,
		45.993992, 34.075394, 32.944057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489243, 33.683239, 33.501213>,  <45.562447, 33.551136, 32.773987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489243, 33.683239, 33.501213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763279, 33.692787, 33.792439>,  <45.927700, 33.698517, 33.967175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763279, 33.692787, 33.792439>,  <45.489243, 33.683239, 33.501213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763279, 33.692787, 33.792439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577133, 0.592060, -0.562479,
		-0.444484, 0.805540, 0.391840,
		0.685092, 0.023869, 0.728066,
		45.968807, 33.699947, 34.010857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599804, 34.365532, 33.713505>,  <45.489243, 33.683239, 33.501213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599804, 34.365532, 33.713505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924973, 34.136292, 33.754906>,  <46.120075, 33.998749, 33.779747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924973, 34.136292, 33.754906>,  <45.599804, 34.365532, 33.713505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924973, 34.136292, 33.754906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467634, 0.536451, -0.702524,
		0.347091, 0.619499, 0.704094,
		0.812925, -0.573098, 0.103501,
		46.168850, 33.964363, 33.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254837, 34.750534, 33.779358>,  <45.599804, 34.365532, 33.713505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254837, 34.750534, 33.779358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321449, 34.388985, 33.621735>,  <46.361416, 34.172054, 33.527161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321449, 34.388985, 33.621735>,  <46.254837, 34.750534, 33.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321449, 34.388985, 33.621735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347254, 0.427795, -0.834509,
		0.922866, 0.002137, 0.385116,
		0.166534, -0.903873, -0.394055,
		46.371410, 34.117825, 33.503517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664394, 34.702496, 34.311871>,  <46.254837, 34.750534, 33.779358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664394, 34.702496, 34.311871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004829, 34.873566, 34.190056>,  <47.209091, 34.976208, 34.116966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004829, 34.873566, 34.190056>,  <46.664394, 34.702496, 34.311871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004829, 34.873566, 34.190056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112401, 0.418166, 0.901389,
		0.512846, -0.801394, 0.307826,
		0.851090, 0.427674, -0.304533,
		47.260159, 35.001869, 34.098698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361324, 34.430004, 34.645626>,  <46.664394, 34.702496, 34.311871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361324, 34.430004, 34.645626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.344158, 34.817711, 34.548733>,  <47.333858, 35.050335, 34.490597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.344158, 34.817711, 34.548733>,  <47.361324, 34.430004, 34.645626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.344158, 34.817711, 34.548733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197171, 0.245909, 0.949027,
		0.979429, -0.007032, -0.201665,
		-0.042918, 0.969268, -0.242237,
		47.331284, 35.108490, 34.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016136, 34.888386, 34.650768>,  <47.361324, 34.430004, 34.645626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016136, 34.888386, 34.650768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693459, 35.105839, 34.743469>,  <47.499851, 35.236309, 34.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693459, 35.105839, 34.743469>,  <48.016136, 34.888386, 34.650768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693459, 35.105839, 34.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451611, 0.314140, 0.835083,
		0.381175, 0.778318, -0.498925,
		-0.806692, 0.543633, 0.231755,
		47.451450, 35.268929, 34.812996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.408308, 33.374332, 16.995016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.144068, 33.668640, 17.054688>,  <29.985523, 33.845222, 17.090490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.144068, 33.668640, 17.054688>,  <30.408308, 33.374332, 16.995016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144068, 33.668640, 17.054688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327863, 0.103988, 0.938985,
		0.675361, 0.669204, -0.309925,
		-0.660601, 0.735767, 0.149177,
		29.945889, 33.889370, 17.099442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796747, 34.038097, 17.219753>,  <30.408308, 33.374332, 16.995016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796747, 34.038097, 17.219753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416533, 34.031517, 17.343824>,  <30.188404, 34.027569, 17.418268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416533, 34.031517, 17.343824>,  <30.796747, 34.038097, 17.219753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416533, 34.031517, 17.343824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306511, 0.112118, 0.945241,
		-0.050322, 0.993559, -0.101531,
		-0.950536, -0.016446, 0.310179,
		30.131372, 34.026585, 17.436878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811283, 34.518467, 17.663216>,  <30.796747, 34.038097, 17.219753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811283, 34.518467, 17.663216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.506557, 34.285030, 17.775690>,  <30.323723, 34.144970, 17.843176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.506557, 34.285030, 17.775690>,  <30.811283, 34.518467, 17.663216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506557, 34.285030, 17.775690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277704, 0.097948, 0.955660,
		-0.585254, 0.806121, 0.087447,
		-0.761813, -0.583588, 0.281187,
		30.278013, 34.109955, 17.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784088, 34.588329, 18.333687>,  <30.811283, 34.518467, 17.663216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784088, 34.588329, 18.333687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468107, 34.343060, 18.333824>,  <30.278519, 34.195900, 18.333906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468107, 34.343060, 18.333824>,  <30.784088, 34.588329, 18.333687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468107, 34.343060, 18.333824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139796, -0.179551, 0.973765,
		-0.597023, 0.769274, 0.227555,
		-0.789950, -0.613171, 0.000345,
		30.231123, 34.159107, 18.333927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303881, 34.796558, 18.864397>,  <30.784088, 34.588329, 18.333687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303881, 34.796558, 18.864397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241966, 34.407616, 18.794460>,  <30.204817, 34.174252, 18.752499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241966, 34.407616, 18.794460>,  <30.303881, 34.796558, 18.864397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241966, 34.407616, 18.794460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246937, -0.209435, 0.946129,
		-0.956589, 0.103274, 0.272528,
		-0.154787, -0.972354, -0.174841,
		30.195530, 34.115910, 18.742008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777649, 34.548645, 19.456402>,  <30.303881, 34.796558, 18.864397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777649, 34.548645, 19.456402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.957468, 34.222946, 19.309483>,  <30.065359, 34.027527, 19.221331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.957468, 34.222946, 19.309483>,  <29.777649, 34.548645, 19.456402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957468, 34.222946, 19.309483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194349, -0.312184, 0.929930,
		-0.871858, -0.489431, 0.017907,
		0.449546, -0.814247, -0.367300,
		30.092333, 33.978672, 19.199293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494875, 33.958008, 19.836594>,  <29.777649, 34.548645, 19.456402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494875, 33.958008, 19.836594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855116, 33.868473, 19.687565>,  <30.071260, 33.814751, 19.598146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855116, 33.868473, 19.687565>,  <29.494875, 33.958008, 19.836594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855116, 33.868473, 19.687565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323407, -0.227586, 0.918484,
		-0.290385, -0.947682, -0.132573,
		0.900602, -0.223839, -0.372574,
		30.125298, 33.801323, 19.575792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636143, 33.416710, 20.099926>,  <29.494875, 33.958008, 19.836594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636143, 33.416710, 20.099926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.999313, 33.537586, 19.983753>,  <30.217216, 33.610111, 19.914049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.999313, 33.537586, 19.983753>,  <29.636143, 33.416710, 20.099926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999313, 33.537586, 19.983753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339208, -0.122768, 0.932666,
		0.246183, -0.945310, -0.213969,
		0.907927, 0.302187, -0.290434,
		30.271692, 33.628242, 19.896624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005440, 32.936596, 20.408701>,  <29.636143, 33.416710, 20.099926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005440, 32.936596, 20.408701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.266348, 33.230343, 20.333607>,  <30.422894, 33.406590, 20.288549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.266348, 33.230343, 20.333607>,  <30.005440, 32.936596, 20.408701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266348, 33.230343, 20.333607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429590, -0.154099, 0.889779,
		0.624495, -0.661028, -0.415992,
		0.652272, 0.734368, -0.187737,
		30.462029, 33.450653, 20.277285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718470, 32.584305, 20.559788>,  <30.005440, 32.936596, 20.408701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718470, 32.584305, 20.559788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.790350, 32.976101, 20.523336>,  <30.833479, 33.211178, 20.501467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.790350, 32.976101, 20.523336>,  <30.718470, 32.584305, 20.559788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790350, 32.976101, 20.523336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547699, -0.022672, 0.836368,
		0.817149, -0.200208, -0.540541,
		0.179702, 0.979491, -0.091127,
		30.844261, 33.269947, 20.495998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424704, 32.666195, 20.479548>,  <30.718470, 32.584305, 20.559788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424704, 32.666195, 20.479548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287579, 33.014038, 20.621681>,  <31.205303, 33.222744, 20.706963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287579, 33.014038, 20.621681>,  <31.424704, 32.666195, 20.479548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287579, 33.014038, 20.621681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665038, -0.042497, 0.745599,
		0.663479, 0.491912, -0.563753,
		-0.342811, 0.869607, 0.355337,
		31.184734, 33.274921, 20.728283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045143, 33.189865, 20.711800>,  <31.424704, 32.666195, 20.479548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045143, 33.189865, 20.711800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713301, 33.296577, 20.907999>,  <31.514196, 33.360603, 21.025719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713301, 33.296577, 20.907999>,  <32.045143, 33.189865, 20.711800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713301, 33.296577, 20.907999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525857, 0.077992, 0.846990,
		0.187706, 0.960596, -0.204991,
		-0.829603, 0.266781, 0.490497,
		31.464420, 33.376614, 21.055147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303699, 33.488163, 21.177172>,  <32.045143, 33.189865, 20.711800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303699, 33.488163, 21.177172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.937098, 33.453186, 21.333311>,  <31.717136, 33.432201, 21.426994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.937098, 33.453186, 21.333311>,  <32.303699, 33.488163, 21.177172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937098, 33.453186, 21.333311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378934, 0.122892, 0.917228,
		-0.128176, 0.988560, -0.079496,
		-0.916504, -0.087443, 0.390350,
		31.662146, 33.426952, 21.450417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237717, 34.131699, 21.610325>,  <32.303699, 33.488163, 21.177172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237717, 34.131699, 21.610325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979633, 33.854588, 21.739180>,  <31.824783, 33.688320, 21.816492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979633, 33.854588, 21.739180>,  <32.237717, 34.131699, 21.610325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979633, 33.854588, 21.739180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339530, 0.117716, 0.933200,
		-0.684418, 0.711481, 0.159267,
		-0.645206, -0.692775, 0.322136,
		31.786072, 33.646755, 21.835821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137150, 34.365425, 22.208496>,  <32.237717, 34.131699, 21.610325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137150, 34.365425, 22.208496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.049049, 33.975605, 22.225183>,  <31.996187, 33.741714, 22.235195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.049049, 33.975605, 22.225183>,  <32.137150, 34.365425, 22.208496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049049, 33.975605, 22.225183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411048, -0.053943, 0.910016,
		-0.884605, 0.217585, 0.412468,
		-0.220255, -0.974550, 0.041719,
		31.982973, 33.683239, 22.237700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075741, 34.269672, 22.982447>,  <32.137150, 34.365425, 22.208496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075741, 34.269672, 22.982447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123348, 33.905750, 22.823408>,  <32.151913, 33.687397, 22.727985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123348, 33.905750, 22.823408>,  <32.075741, 34.269672, 22.982447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123348, 33.905750, 22.823408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384980, -0.326829, 0.863118,
		-0.915218, -0.255797, 0.311358,
		0.119022, -0.909808, -0.397597,
		32.159054, 33.632809, 22.704128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170609, 33.945724, 23.671659>,  <32.075741, 34.269672, 22.982447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170609, 33.945724, 23.671659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275558, 33.663498, 23.408348>,  <32.338528, 33.494160, 23.250360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.275558, 33.663498, 23.408348>,  <32.170609, 33.945724, 23.671659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275558, 33.663498, 23.408348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616972, -0.401864, 0.676646,
		-0.741960, -0.583675, 0.329877,
		0.262376, -0.705569, -0.658279,
		32.354271, 33.451828, 23.210865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025780, 33.253902, 23.980371>,  <32.170609, 33.945724, 23.671659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025780, 33.253902, 23.980371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.327309, 33.230721, 23.718563>,  <32.508224, 33.216812, 23.561478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.327309, 33.230721, 23.718563>,  <32.025780, 33.253902, 23.980371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327309, 33.230721, 23.718563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604515, -0.329224, 0.725378,
		-0.257520, -0.942472, -0.213143,
		0.753820, -0.057951, -0.654521,
		32.553455, 33.213333, 23.522207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345375, 32.678005, 24.193205>,  <32.025780, 33.253902, 23.980371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345375, 32.678005, 24.193205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613358, 32.880047, 23.975573>,  <32.774147, 33.001270, 23.844994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613358, 32.880047, 23.975573>,  <32.345375, 32.678005, 24.193205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613358, 32.880047, 23.975573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712027, -0.229705, 0.663516,
		0.210167, -0.831929, -0.513541,
		0.669961, 0.505104, -0.544079,
		32.814346, 33.031578, 23.812349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795345, 32.274067, 24.334621>,  <32.345375, 32.678005, 24.193205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795345, 32.274067, 24.334621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.976738, 32.597771, 24.185242>,  <33.085571, 32.791992, 24.095613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.976738, 32.597771, 24.185242>,  <32.795345, 32.274067, 24.334621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976738, 32.597771, 24.185242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768756, -0.143142, 0.623318,
		0.450968, -0.569752, -0.687031,
		0.453479, 0.809255, -0.373447,
		33.112782, 32.840546, 24.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419731, 32.020321, 24.062464>,  <32.795345, 32.274067, 24.334621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419731, 32.020321, 24.062464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436821, 32.405090, 24.170448>,  <33.447075, 32.635952, 24.235239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436821, 32.405090, 24.170448>,  <33.419731, 32.020321, 24.062464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436821, 32.405090, 24.170448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781589, -0.200492, 0.590697,
		0.622329, 0.185763, -0.760393,
		0.042723, 0.961923, 0.269962,
		33.449638, 32.693668, 24.251436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839401, 31.766151, 23.460579>,  <33.419731, 32.020321, 24.062464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839401, 31.766151, 23.460579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213337, 31.645357, 23.535278>,  <34.437698, 31.572882, 23.580099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213337, 31.645357, 23.535278>,  <33.839401, 31.766151, 23.460579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213337, 31.645357, 23.535278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178176, -0.055954, -0.982406,
		0.307120, 0.951670, 0.001498,
		0.934842, -0.301984, 0.186750,
		34.493790, 31.554762, 23.591303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300777, 32.086285, 22.983707>,  <33.839401, 31.766151, 23.460579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300777, 32.086285, 22.983707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496994, 31.747225, 23.064566>,  <34.614723, 31.543789, 23.113081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496994, 31.747225, 23.064566>,  <34.300777, 32.086285, 22.983707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496994, 31.747225, 23.064566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069245, -0.193323, -0.978689,
		0.868662, 0.494086, -0.036138,
		0.490542, -0.847647, 0.202145,
		34.644157, 31.492931, 23.125210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646347, 31.925888, 22.338314>,  <34.300777, 32.086285, 22.983707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646347, 31.925888, 22.338314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683285, 31.589523, 22.551607>,  <34.705448, 31.387705, 22.679583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683285, 31.589523, 22.551607>,  <34.646347, 31.925888, 22.338314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683285, 31.589523, 22.551607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035909, -0.537987, -0.842188,
		0.995080, 0.058620, -0.079874,
		0.092340, -0.840912, 0.533235,
		34.710987, 31.337250, 22.711578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212494, 31.490993, 22.074993>,  <34.646347, 31.925888, 22.338314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212494, 31.490993, 22.074993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945068, 31.256968, 22.258610>,  <34.784615, 31.116552, 22.368780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945068, 31.256968, 22.258610>,  <35.212494, 31.490993, 22.074993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945068, 31.256968, 22.258610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091902, -0.547545, -0.831714,
		0.737955, -0.598240, 0.312299,
		-0.668563, -0.585067, 0.459043,
		34.744499, 31.081448, 22.396322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445618, 30.815638, 21.981115>,  <35.212494, 31.490993, 22.074993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445618, 30.815638, 21.981115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064716, 30.737949, 22.075338>,  <34.836174, 30.691336, 22.131872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064716, 30.737949, 22.075338>,  <35.445618, 30.815638, 21.981115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064716, 30.737949, 22.075338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117840, -0.477943, -0.870450,
		0.281641, -0.856650, 0.432238,
		-0.952256, -0.194220, 0.235556,
		34.779041, 30.679684, 22.146006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349915, 30.139046, 21.735758>,  <35.445618, 30.815638, 21.981115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349915, 30.139046, 21.735758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976486, 30.271250, 21.791197>,  <34.752430, 30.350573, 21.824461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976486, 30.271250, 21.791197>,  <35.349915, 30.139046, 21.735758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976486, 30.271250, 21.791197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280418, -0.432790, -0.856772,
		-0.223187, -0.838723, 0.496721,
		-0.933570, 0.330510, 0.138600,
		34.696415, 30.370403, 21.832777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951649, 29.594715, 21.450390>,  <35.349915, 30.139046, 21.735758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951649, 29.594715, 21.450390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733162, 29.929747, 21.454630>,  <34.602070, 30.130766, 21.457174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733162, 29.929747, 21.454630>,  <34.951649, 29.594715, 21.450390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733162, 29.929747, 21.454630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218021, -0.129940, -0.967255,
		-0.808773, -0.530642, 0.253585,
		-0.546217, 0.837576, 0.010599,
		34.569298, 30.181019, 21.457809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451637, 29.366255, 21.040270>,  <34.951649, 29.594715, 21.450390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451637, 29.366255, 21.040270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391644, 29.761711, 21.036484>,  <34.355648, 29.998985, 21.034212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391644, 29.761711, 21.036484>,  <34.451637, 29.366255, 21.040270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391644, 29.761711, 21.036484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343872, -0.061139, -0.937024,
		-0.926961, -0.137286, 0.349136,
		-0.149986, 0.988643, -0.009465,
		34.346649, 30.058304, 21.033644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693607, 29.525812, 20.930794>,  <34.451637, 29.366255, 21.040270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693607, 29.525812, 20.930794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892262, 29.854664, 20.819469>,  <34.011456, 30.051975, 20.752676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892262, 29.854664, 20.819469>,  <33.693607, 29.525812, 20.930794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892262, 29.854664, 20.819469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524601, 0.028868, -0.850858,
		-0.691481, 0.568568, 0.445627,
		0.496636, 0.822129, -0.278310,
		34.041252, 30.101303, 20.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172554, 30.043364, 20.740253>,  <33.693607, 29.525812, 20.930794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172554, 30.043364, 20.740253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528309, 30.095577, 20.565006>,  <33.741764, 30.126905, 20.459858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528309, 30.095577, 20.565006>,  <33.172554, 30.043364, 20.740253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528309, 30.095577, 20.565006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448017, 0.058250, -0.892125,
		-0.090931, 0.989731, 0.110287,
		0.889389, 0.130532, -0.438120,
		33.795124, 30.134737, 20.433571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005138, 30.614164, 20.302816>,  <33.172554, 30.043364, 20.740253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005138, 30.614164, 20.302816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.350071, 30.474360, 20.156263>,  <33.557030, 30.390476, 20.068333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.350071, 30.474360, 20.156263>,  <33.005138, 30.614164, 20.302816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350071, 30.474360, 20.156263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352468, 0.105156, -0.929897,
		0.363536, 0.931012, -0.032512,
		0.862327, -0.349511, -0.366380,
		33.608768, 30.369507, 20.046349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331917, 31.227526, 19.947367>,  <33.005138, 30.614164, 20.302816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331917, 31.227526, 19.947367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482727, 30.894697, 19.784636>,  <33.573212, 30.695000, 19.686996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482727, 30.894697, 19.784636>,  <33.331917, 31.227526, 19.947367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482727, 30.894697, 19.784636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422341, 0.236473, -0.875048,
		0.824306, 0.501736, -0.262261,
		0.377026, -0.832070, -0.406829,
		33.595833, 30.645077, 19.662586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646587, 31.468250, 19.335472>,  <33.331917, 31.227526, 19.947367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646587, 31.468250, 19.335472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606045, 31.073608, 19.284344>,  <33.581718, 30.836823, 19.253666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606045, 31.073608, 19.284344>,  <33.646587, 31.468250, 19.335472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606045, 31.073608, 19.284344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254696, 0.149937, -0.955326,
		0.961694, -0.064274, -0.266482,
		-0.101358, -0.986604, -0.127823,
		33.575638, 30.777628, 19.245996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096806, 31.199913, 18.738972>,  <33.646587, 31.468250, 19.335472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096806, 31.199913, 18.738972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766983, 30.977718, 18.781952>,  <33.569092, 30.844400, 18.807739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766983, 30.977718, 18.781952>,  <34.096806, 31.199913, 18.738972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766983, 30.977718, 18.781952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193612, 0.098577, -0.976113,
		0.531627, -0.825661, -0.188831,
		-0.824553, -0.555488, 0.107451,
		33.519619, 30.811071, 18.814188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959251, 30.858131, 18.121311>,  <34.096806, 31.199913, 18.738972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959251, 30.858131, 18.121311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594849, 30.823652, 18.282623>,  <33.376205, 30.802965, 18.379410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594849, 30.823652, 18.282623>,  <33.959251, 30.858131, 18.121311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594849, 30.823652, 18.282623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412332, 0.206448, -0.887334,
		-0.006771, -0.974653, -0.223617,
		-0.911008, -0.086196, 0.403279,
		33.321545, 30.797792, 18.403606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684799, 30.699921, 17.586338>,  <33.959251, 30.858131, 18.121311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684799, 30.699921, 17.586338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392708, 30.795012, 17.842543>,  <33.217453, 30.852066, 17.996265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392708, 30.795012, 17.842543>,  <33.684799, 30.699921, 17.586338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392708, 30.795012, 17.842543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563083, 0.321526, -0.761288,
		-0.386920, -0.916573, -0.100926,
		-0.730226, 0.237728, 0.640511,
		33.173641, 30.866329, 18.034697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011879, 30.576864, 17.237450>,  <33.684799, 30.699921, 17.586338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011879, 30.576864, 17.237450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.909672, 30.836155, 17.524368>,  <32.848347, 30.991730, 17.696520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.909672, 30.836155, 17.524368>,  <33.011879, 30.576864, 17.237450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909672, 30.836155, 17.524368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638271, 0.444154, -0.628758,
		-0.726167, -0.618490, 0.300253,
		-0.255522, 0.648226, 0.717294,
		32.833015, 31.030622, 17.739557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277813, 30.589302, 17.283329>,  <33.011879, 30.576864, 17.237450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277813, 30.589302, 17.283329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407124, 30.927755, 17.452822>,  <32.484711, 31.130827, 17.554518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407124, 30.927755, 17.452822>,  <32.277813, 30.589302, 17.283329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407124, 30.927755, 17.452822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622852, 0.527365, -0.577877,
		-0.712423, -0.077108, 0.697501,
		0.323280, 0.846132, 0.423734,
		32.504108, 31.181595, 17.579943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696318, 30.892139, 17.461950>,  <32.277813, 30.589302, 17.283329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696318, 30.892139, 17.461950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978210, 31.174612, 17.434652>,  <32.147346, 31.344095, 17.418274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978210, 31.174612, 17.434652>,  <31.696318, 30.892139, 17.461950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978210, 31.174612, 17.434652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605522, 0.548562, -0.576562,
		-0.369722, 0.447645, 0.814199,
		0.704733, 0.706183, -0.068243,
		32.189629, 31.386467, 17.414179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.359224, 31.686710, 17.676882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711273, 31.750227, 17.497919>,  <31.922503, 31.788336, 17.390541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711273, 31.750227, 17.497919>,  <31.359224, 31.686710, 17.676882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711273, 31.750227, 17.497919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438738, 0.632088, -0.638728,
		0.181378, 0.758452, 0.625981,
		0.880120, 0.158790, -0.447409,
		31.975309, 31.797865, 17.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515676, 32.453545, 17.698895>,  <31.359224, 31.686710, 17.676882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515676, 32.453545, 17.698895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717569, 32.300694, 17.389256>,  <31.838705, 32.208984, 17.203472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717569, 32.300694, 17.389256>,  <31.515676, 32.453545, 17.698895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717569, 32.300694, 17.389256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444886, 0.653315, -0.612581,
		0.739811, 0.653575, 0.159748,
		0.504733, -0.382125, -0.774096,
		31.868990, 32.186054, 17.157026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645350, 33.053272, 17.301367>,  <31.515676, 32.453545, 17.698895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645350, 33.053272, 17.301367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694931, 32.734505, 17.064877>,  <31.724680, 32.543243, 16.922981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694931, 32.734505, 17.064877>,  <31.645350, 33.053272, 17.301367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694931, 32.734505, 17.064877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527674, 0.451655, -0.719421,
		0.840354, 0.401149, -0.364532,
		0.123953, -0.796923, -0.591227,
		31.732117, 32.495426, 16.887508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676914, 33.352234, 16.663059>,  <31.645350, 33.053272, 17.301367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676914, 33.352234, 16.663059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630541, 32.976776, 16.533129>,  <31.602716, 32.751503, 16.455170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630541, 32.976776, 16.533129>,  <31.676914, 33.352234, 16.663059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630541, 32.976776, 16.533129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550422, 0.332939, -0.765629,
		0.826798, 0.090028, -0.555248,
		-0.115936, -0.938641, -0.324826,
		31.595760, 32.695183, 16.435680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810099, 33.291183, 15.909710>,  <31.676914, 33.352234, 16.663059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810099, 33.291183, 15.909710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572121, 32.980816, 15.993611>,  <31.429335, 32.794598, 16.043953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572121, 32.980816, 15.993611>,  <31.810099, 33.291183, 15.909710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572121, 32.980816, 15.993611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558506, 0.211410, -0.802108,
		0.578023, -0.594358, -0.559131,
		-0.594945, -0.775915, 0.209753,
		31.393637, 32.748043, 16.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776625, 32.905163, 15.332258>,  <31.810099, 33.291183, 15.909710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776625, 32.905163, 15.332258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449932, 32.772953, 15.521445>,  <31.253916, 32.693626, 15.634957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449932, 32.772953, 15.521445>,  <31.776625, 32.905163, 15.332258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449932, 32.772953, 15.521445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528305, 0.098730, -0.843295,
		0.232037, -0.938618, -0.255256,
		-0.816733, -0.330529, 0.472967,
		31.204912, 32.673794, 15.663336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567858, 32.417572, 14.893340>,  <31.776625, 32.905163, 15.332258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567858, 32.417572, 14.893340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248579, 32.509438, 15.116100>,  <31.057013, 32.564556, 15.249757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248579, 32.509438, 15.116100>,  <31.567858, 32.417572, 14.893340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248579, 32.509438, 15.116100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565745, 0.031760, -0.823968,
		-0.206924, -0.972752, 0.104580,
		-0.798195, 0.229664, 0.556902,
		31.009121, 32.578335, 15.283171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098038, 31.790083, 14.876253>,  <31.567858, 32.417572, 14.893340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098038, 31.790083, 14.876253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919718, 32.142860, 14.937493>,  <30.812725, 32.354527, 14.974237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919718, 32.142860, 14.937493>,  <31.098038, 31.790083, 14.876253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919718, 32.142860, 14.937493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471080, -0.085718, -0.877916,
		-0.761148, -0.463497, 0.453679,
		-0.445799, 0.881943, 0.153100,
		30.785978, 32.407444, 14.983423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452379, 31.722193, 14.545098>,  <31.098038, 31.790083, 14.876253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452379, 31.722193, 14.545098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.488644, 32.119499, 14.573950>,  <30.510403, 32.357883, 14.591261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.488644, 32.119499, 14.573950>,  <30.452379, 31.722193, 14.545098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488644, 32.119499, 14.573950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328072, 0.098172, -0.939538,
		-0.940292, 0.061517, 0.334763,
		0.090662, 0.993266, 0.072129,
		30.515842, 32.417480, 14.595589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799891, 31.991535, 14.306115>,  <30.452379, 31.722193, 14.545098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799891, 31.991535, 14.306115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073019, 32.280643, 14.263486>,  <30.236897, 32.454109, 14.237908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073019, 32.280643, 14.263486>,  <29.799891, 31.991535, 14.306115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073019, 32.280643, 14.263486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441111, 0.291577, -0.848766,
		-0.582390, 0.626564, 0.517918,
		0.682820, 0.722772, -0.106573,
		30.277864, 32.497475, 14.231514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479759, 32.598019, 14.098209>,  <29.799891, 31.991535, 14.306115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479759, 32.598019, 14.098209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860882, 32.648727, 13.987870>,  <30.089556, 32.679153, 13.921667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860882, 32.648727, 13.987870>,  <29.479759, 32.598019, 14.098209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860882, 32.648727, 13.987870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302427, 0.317082, -0.898886,
		-0.026489, 0.939887, 0.340458,
		0.952804, 0.126775, -0.275848,
		30.146723, 32.686760, 13.905116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375828, 33.221825, 13.800823>,  <29.479759, 32.598019, 14.098209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375828, 33.221825, 13.800823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702431, 33.052937, 13.643319>,  <29.898394, 32.951603, 13.548817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702431, 33.052937, 13.643319>,  <29.375828, 33.221825, 13.800823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702431, 33.052937, 13.643319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205225, 0.425227, -0.881513,
		0.539626, 0.800572, 0.260552,
		0.816509, -0.422216, -0.393761,
		29.947384, 32.926273, 13.525191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607767, 33.848404, 13.447386>,  <29.375828, 33.221825, 13.800823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607767, 33.848404, 13.447386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766056, 33.524456, 13.274177>,  <29.861029, 33.330086, 13.170251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.766056, 33.524456, 13.274177>,  <29.607767, 33.848404, 13.447386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766056, 33.524456, 13.274177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125511, 0.419395, -0.899086,
		0.909754, 0.410137, 0.064316,
		0.395721, -0.809874, -0.433023,
		29.884773, 33.281494, 13.144270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078648, 34.140831, 12.981513>,  <29.607767, 33.848404, 13.447386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078648, 34.140831, 12.981513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018641, 33.769680, 12.844960>,  <29.982635, 33.546989, 12.763028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018641, 33.769680, 12.844960>,  <30.078648, 34.140831, 12.981513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018641, 33.769680, 12.844960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028646, 0.349225, -0.936601,
		0.988268, -0.130729, -0.078970,
		-0.150020, -0.927875, -0.341383,
		29.973635, 33.491318, 12.742545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463165, 34.144058, 12.374009>,  <30.078648, 34.140831, 12.981513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463165, 34.144058, 12.374009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242996, 33.816284, 12.310052>,  <30.110895, 33.619621, 12.271678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242996, 33.816284, 12.310052>,  <30.463165, 34.144058, 12.374009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242996, 33.816284, 12.310052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128361, 0.106177, -0.986027,
		0.824961, -0.563253, 0.046741,
		-0.550420, -0.819434, -0.159892,
		30.077869, 33.570454, 12.262084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784470, 33.735661, 11.851154>,  <30.463165, 34.144058, 12.374009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784470, 33.735661, 11.851154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403099, 33.615860, 11.836872>,  <30.174276, 33.543980, 11.828303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403099, 33.615860, 11.836872>,  <30.784470, 33.735661, 11.851154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403099, 33.615860, 11.836872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025003, 0.196446, -0.980196,
		0.300584, -0.933653, -0.194785,
		-0.953428, -0.299502, -0.035705,
		30.117071, 33.526009, 11.826160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650604, 33.328117, 11.239622>,  <30.784470, 33.735661, 11.851154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650604, 33.328117, 11.239622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285488, 33.462643, 11.332321>,  <30.066418, 33.543358, 11.387940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285488, 33.462643, 11.332321>,  <30.650604, 33.328117, 11.239622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285488, 33.462643, 11.332321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068058, 0.434234, -0.898225,
		-0.402716, -0.835665, -0.373476,
		-0.912791, 0.336312, 0.231747,
		30.011650, 33.563538, 11.401845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309448, 33.207489, 10.749371>,  <30.650604, 33.328117, 11.239622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309448, 33.207489, 10.749371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083710, 33.503380, 10.895964>,  <29.948267, 33.680916, 10.983920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083710, 33.503380, 10.895964>,  <30.309448, 33.207489, 10.749371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083710, 33.503380, 10.895964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150258, 0.344476, -0.926692,
		-0.811749, -0.578043, -0.083254,
		-0.564346, 0.739732, 0.366483,
		29.914406, 33.725300, 11.005909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643953, 33.091351, 10.381378>,  <30.309448, 33.207489, 10.749371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643953, 33.091351, 10.381378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708323, 33.464169, 10.511241>,  <29.746944, 33.687859, 10.589159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708323, 33.464169, 10.511241>,  <29.643953, 33.091351, 10.381378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708323, 33.464169, 10.511241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218569, 0.354430, -0.909179,
		-0.962461, 0.075348, 0.260751,
		0.160923, 0.932042, 0.324657,
		29.756599, 33.743782, 10.608638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215654, 33.415703, 10.069471>,  <29.643953, 33.091351, 10.381378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215654, 33.415703, 10.069471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452074, 33.710182, 10.201337>,  <29.593925, 33.886868, 10.280456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452074, 33.710182, 10.201337>,  <29.215654, 33.415703, 10.069471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452074, 33.710182, 10.201337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183070, 0.520452, -0.834035,
		-0.785586, 0.432605, 0.442388,
		0.591050, 0.736194, 0.329663,
		29.629389, 33.931042, 10.300236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704767, 33.974342, 10.030466>,  <29.215654, 33.415703, 10.069471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704767, 33.974342, 10.030466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086496, 34.092655, 10.013579>,  <29.315535, 34.163643, 10.003448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086496, 34.092655, 10.013579>,  <28.704767, 33.974342, 10.030466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086496, 34.092655, 10.013579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155074, 0.369579, -0.916168,
		-0.255381, 0.880867, 0.398565,
		0.954323, 0.295779, -0.042216,
		29.372793, 34.181389, 10.000915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718496, 34.771420, 9.960196>,  <28.704767, 33.974342, 10.030466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718496, 34.771420, 9.960196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.040985, 34.581722, 9.818719>,  <29.234478, 34.467903, 9.733833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.040985, 34.581722, 9.818719>,  <28.718496, 34.771420, 9.960196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040985, 34.581722, 9.818719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103370, 0.475724, -0.873500,
		0.582514, 0.740795, 0.334515,
		0.806221, -0.474247, -0.353691,
		29.282852, 34.439449, 9.712611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188721, 34.951115, 9.335995>,  <28.718496, 34.771420, 9.960196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188721, 34.951115, 9.335995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478926, 35.219925, 9.276655>,  <28.653049, 35.381210, 9.241052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478926, 35.219925, 9.276655>,  <28.188721, 34.951115, 9.335995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478926, 35.219925, 9.276655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358784, 0.553288, 0.751762,
		0.587291, -0.492184, 0.642530,
		0.725510, 0.672032, -0.148353,
		28.696579, 35.421535, 9.232150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423292, 35.009338, 9.109187>,  <28.188721, 34.951115, 9.335995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423292, 35.009338, 9.109187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502256, 34.709621, 8.856337>,  <27.549635, 34.529789, 8.704626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502256, 34.709621, 8.856337>,  <27.423292, 35.009338, 9.109187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502256, 34.709621, 8.856337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733853, 0.540493, -0.411494,
		0.649991, -0.382654, 0.656572,
		0.197412, -0.749295, -0.632127,
		27.561480, 34.484833, 8.666698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204531, 35.357643, 9.792418>,  <27.423292, 35.009338, 9.109187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204531, 35.357643, 9.792418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001637, 35.687840, 9.891438>,  <26.879900, 35.885956, 9.950850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001637, 35.687840, 9.891438>,  <27.204531, 35.357643, 9.792418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001637, 35.687840, 9.891438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339409, -0.072683, 0.937827,
		0.792158, 0.559719, -0.243311,
		-0.507235, 0.825489, 0.247550,
		26.849466, 35.935486, 9.965703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627039, 36.022003, 10.113779>,  <27.204531, 35.357643, 9.792418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627039, 36.022003, 10.113779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252930, 35.955093, 10.238542>,  <27.028465, 35.914948, 10.313399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252930, 35.955093, 10.238542>,  <27.627039, 36.022003, 10.113779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252930, 35.955093, 10.238542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308426, 0.047080, 0.950083,
		-0.173608, 0.984786, 0.007559,
		-0.935272, -0.167274, 0.311907,
		26.972347, 35.904911, 10.332113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518517, 36.523411, 10.628342>,  <27.627039, 36.022003, 10.113779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518517, 36.523411, 10.628342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281342, 36.209007, 10.698341>,  <27.139036, 36.020367, 10.740341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281342, 36.209007, 10.698341>,  <27.518517, 36.523411, 10.628342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281342, 36.209007, 10.698341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345929, -0.052386, 0.936797,
		-0.727159, 0.615998, 0.302963,
		-0.592936, -0.786004, 0.174999,
		27.103460, 35.973206, 10.750841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098839, 36.689819, 11.213619>,  <27.518517, 36.523411, 10.628342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098839, 36.689819, 11.213619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089018, 36.291306, 11.180579>,  <27.083124, 36.052197, 11.160755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089018, 36.291306, 11.180579>,  <27.098839, 36.689819, 11.213619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089018, 36.291306, 11.180579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251347, -0.086123, 0.964058,
		-0.967586, 0.002911, 0.252526,
		-0.024555, -0.996280, -0.082600,
		27.081652, 35.992420, 11.155799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859224, 36.454967, 11.908388>,  <27.098839, 36.689819, 11.213619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859224, 36.454967, 11.908388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005928, 36.124069, 11.738140>,  <27.093950, 35.925529, 11.635991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005928, 36.124069, 11.738140>,  <26.859224, 36.454967, 11.908388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005928, 36.124069, 11.738140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323274, -0.315665, 0.892104,
		-0.872343, -0.464777, 0.151655,
		0.366757, -0.827247, -0.425619,
		27.115955, 35.875896, 11.610455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704348, 35.872116, 12.404421>,  <26.859224, 36.454967, 11.908388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704348, 35.872116, 12.404421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025936, 35.785458, 12.182901>,  <27.218889, 35.733463, 12.049990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025936, 35.785458, 12.182901>,  <26.704348, 35.872116, 12.404421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025936, 35.785458, 12.182901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519808, -0.196305, 0.831423,
		-0.288842, -0.956309, -0.045207,
		0.803971, -0.216651, -0.553798,
		27.267128, 35.720463, 12.016762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927635, 35.326714, 12.671563>,  <26.704348, 35.872116, 12.404421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927635, 35.326714, 12.671563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.250368, 35.459301, 12.475951>,  <27.444008, 35.538853, 12.358584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.250368, 35.459301, 12.475951>,  <26.927635, 35.326714, 12.671563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250368, 35.459301, 12.475951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557268, -0.152186, 0.816267,
		0.196141, -0.931112, -0.307504,
		0.806834, 0.331465, -0.489030,
		27.492418, 35.558743, 12.329243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315126, 34.773643, 12.712993>,  <26.927635, 35.326714, 12.671563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315126, 34.773643, 12.712993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597506, 35.040771, 12.618628>,  <27.766933, 35.201050, 12.562009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597506, 35.040771, 12.618628>,  <27.315126, 34.773643, 12.712993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597506, 35.040771, 12.618628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603033, -0.392039, 0.694735,
		0.371472, -0.632708, -0.679477,
		0.705946, 0.667821, -0.235913,
		27.809290, 35.241119, 12.547853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980068, 34.395386, 12.833467>,  <27.315126, 34.773643, 12.712993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980068, 34.395386, 12.833467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029823, 34.792061, 12.846571>,  <28.059677, 35.030067, 12.854433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029823, 34.792061, 12.846571>,  <27.980068, 34.395386, 12.833467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029823, 34.792061, 12.846571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678701, -0.109121, 0.726263,
		0.723804, -0.068107, -0.686636,
		0.124390, 0.991693, 0.032758,
		28.067141, 35.089569, 12.856399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725945, 34.579201, 12.721741>,  <27.980068, 34.395386, 12.833467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725945, 34.579201, 12.721741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529089, 34.843464, 12.948483>,  <28.410975, 35.002022, 13.084528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529089, 34.843464, 12.948483>,  <28.725945, 34.579201, 12.721741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529089, 34.843464, 12.948483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711671, -0.069655, 0.699051,
		0.501320, 0.747446, -0.435893,
		-0.492141, 0.660661, 0.566855,
		28.381447, 35.041660, 13.118539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292976, 34.861717, 13.166027>,  <28.725945, 34.579201, 12.721741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292976, 34.861717, 13.166027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960403, 34.997654, 13.341856>,  <28.760859, 35.079216, 13.447353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960403, 34.997654, 13.341856>,  <29.292976, 34.861717, 13.166027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960403, 34.997654, 13.341856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449414, -0.053871, 0.891698,
		0.326718, 0.938938, -0.107941,
		-0.831434, 0.339844, 0.439573,
		28.710974, 35.099606, 13.473728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467064, 35.457874, 13.532482>,  <29.292976, 34.861717, 13.166027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467064, 35.457874, 13.532482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137180, 35.307457, 13.701454>,  <28.939249, 35.217209, 13.802837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137180, 35.307457, 13.701454>,  <29.467064, 35.457874, 13.532482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137180, 35.307457, 13.701454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402685, 0.134029, 0.905473,
		-0.397112, 0.916859, 0.040891,
		-0.824710, -0.376041, 0.422430,
		28.889767, 35.194645, 13.828183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438887, 35.658394, 14.206055>,  <29.467064, 35.457874, 13.532482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438887, 35.658394, 14.206055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188141, 35.348595, 14.239992>,  <29.037693, 35.162716, 14.260354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188141, 35.348595, 14.239992>,  <29.438887, 35.658394, 14.206055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188141, 35.348595, 14.239992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285896, -0.127357, 0.949760,
		-0.724780, 0.619625, 0.301261,
		-0.626863, -0.774497, 0.084843,
		29.000082, 35.116245, 14.265445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028322, 35.801693, 14.870641>,  <29.438887, 35.658394, 14.206055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028322, 35.801693, 14.870641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.988396, 35.411469, 14.792334>,  <28.964439, 35.177334, 14.745350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.988396, 35.411469, 14.792334>,  <29.028322, 35.801693, 14.870641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988396, 35.411469, 14.792334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235968, -0.214346, 0.947827,
		-0.966621, 0.048415, 0.251595,
		-0.099817, -0.975557, -0.195767,
		28.958450, 35.118801, 14.733603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115940, 35.541996, 15.487981>,  <29.028322, 35.801693, 14.870641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115940, 35.541996, 15.487981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.059517, 35.197254, 15.293120>,  <29.025663, 34.990410, 15.176204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.059517, 35.197254, 15.293120>,  <29.115940, 35.541996, 15.487981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059517, 35.197254, 15.293120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279434, -0.506725, 0.815565,
		-0.949747, -0.021083, 0.312309,
		-0.141060, -0.861850, -0.487151,
		29.017199, 34.938698, 15.146975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580030, 35.067329, 15.846877>,  <29.115940, 35.541996, 15.487981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580030, 35.067329, 15.846877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844923, 34.844200, 15.646762>,  <29.003859, 34.710323, 15.526693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844923, 34.844200, 15.646762>,  <28.580030, 35.067329, 15.846877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844923, 34.844200, 15.646762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268985, -0.446191, 0.853558,
		-0.699356, -0.699821, -0.145435,
		0.662230, -0.557821, -0.500288,
		29.043592, 34.676853, 15.496675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472931, 34.373173, 15.927967>,  <28.580030, 35.067329, 15.846877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472931, 34.373173, 15.927967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858438, 34.404182, 15.825874>,  <29.089743, 34.422787, 15.764619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858438, 34.404182, 15.825874>,  <28.472931, 34.373173, 15.927967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858438, 34.404182, 15.825874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261787, -0.458513, 0.849255,
		-0.051192, -0.885300, -0.462194,
		0.963767, 0.077521, -0.255233,
		29.147568, 34.427437, 15.749305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677607, 33.753120, 16.046787>,  <28.472931, 34.373173, 15.927967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677607, 33.753120, 16.046787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013346, 33.970509, 16.042231>,  <29.214788, 34.100941, 16.039497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013346, 33.970509, 16.042231>,  <28.677607, 33.753120, 16.046787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013346, 33.970509, 16.042231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193454, -0.279059, 0.940586,
		0.508006, -0.791682, -0.339365,
		0.839348, 0.543475, -0.011391,
		29.265150, 34.133553, 16.038813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153553, 33.352993, 16.387043>,  <28.677607, 33.753120, 16.046787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153553, 33.352993, 16.387043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.321997, 33.715538, 16.400763>,  <29.423063, 33.933064, 16.408995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.321997, 33.715538, 16.400763>,  <29.153553, 33.352993, 16.387043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321997, 33.715538, 16.400763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322141, -0.184806, 0.928478,
		0.847874, -0.379943, -0.369800,
		0.421110, 0.906361, 0.034297,
		29.448330, 33.987446, 16.411051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784128, 33.234848, 16.605423>,  <29.153553, 33.352993, 16.387043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784128, 33.234848, 16.605423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729116, 33.621124, 16.693544>,  <29.696110, 33.852890, 16.746416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729116, 33.621124, 16.693544>,  <29.784128, 33.234848, 16.605423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729116, 33.621124, 16.693544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350671, -0.160539, 0.922636,
		0.926345, 0.204143, -0.316560,
		-0.137529, 0.965688, 0.220302,
		29.687859, 33.910831, 16.759634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.391319, 29.501722, 19.031206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.453758, 29.893082, 19.085424>,  <33.491222, 30.127897, 19.117956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.453758, 29.893082, 19.085424>,  <33.391319, 29.501722, 19.031206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453758, 29.893082, 19.085424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458869, -0.193352, 0.867211,
		0.874685, -0.073171, -0.479138,
		0.156097, 0.978397, 0.135546,
		33.500587, 30.186602, 19.126089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115047, 29.642101, 19.017717>,  <33.391319, 29.501722, 19.031206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115047, 29.642101, 19.017717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940361, 29.936811, 19.224188>,  <33.835548, 30.113638, 19.348070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940361, 29.936811, 19.224188>,  <34.115047, 29.642101, 19.017717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940361, 29.936811, 19.224188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575475, -0.212217, 0.789805,
		0.691452, 0.641968, -0.331317,
		-0.436719, 0.736777, 0.516175,
		33.809345, 30.157845, 19.379040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609867, 29.882259, 19.415634>,  <34.115047, 29.642101, 19.017717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609867, 29.882259, 19.415634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.312885, 30.056765, 19.618980>,  <34.134697, 30.161467, 19.740988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.312885, 30.056765, 19.618980>,  <34.609867, 29.882259, 19.415634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312885, 30.056765, 19.618980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573148, 0.020832, 0.819187,
		0.346789, 0.899579, -0.265509,
		-0.742455, 0.436261, 0.508367,
		34.090149, 30.187643, 19.771490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919861, 30.480469, 19.818352>,  <34.609867, 29.882259, 19.415634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919861, 30.480469, 19.818352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579357, 30.382307, 20.003885>,  <34.375057, 30.323410, 20.115206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579357, 30.382307, 20.003885>,  <34.919861, 30.480469, 19.818352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579357, 30.382307, 20.003885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453787, 0.099622, 0.885524,
		-0.263518, 0.964289, 0.026557,
		-0.851255, -0.245403, 0.463834,
		34.323982, 30.308687, 20.143036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766510, 30.980316, 20.320213>,  <34.919861, 30.480469, 19.818352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766510, 30.980316, 20.320213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.576698, 30.650654, 20.443882>,  <34.462811, 30.452856, 20.518084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.576698, 30.650654, 20.443882>,  <34.766510, 30.980316, 20.320213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576698, 30.650654, 20.443882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258980, 0.204968, 0.943884,
		-0.841277, 0.527973, 0.116176,
		-0.474533, -0.824156, 0.309169,
		34.434338, 30.403406, 20.536633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381168, 31.311567, 20.899794>,  <34.766510, 30.980316, 20.320213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381168, 31.311567, 20.899794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340866, 30.917109, 20.952499>,  <34.316685, 30.680433, 20.984123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340866, 30.917109, 20.952499>,  <34.381168, 31.311567, 20.899794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340866, 30.917109, 20.952499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040745, 0.128237, 0.990906,
		-0.994077, 0.105204, 0.027260,
		-0.100752, -0.986148, 0.131764,
		34.310642, 30.621264, 20.992029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816944, 31.285799, 21.478859>,  <34.381168, 31.311567, 20.899794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816944, 31.285799, 21.478859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.020542, 30.942442, 21.453276>,  <34.142700, 30.736427, 21.437925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.020542, 30.942442, 21.453276>,  <33.816944, 31.285799, 21.478859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020542, 30.942442, 21.453276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113867, -0.006506, 0.993475,
		-0.853206, -0.512954, 0.094431,
		0.508993, -0.858392, -0.063959,
		34.173241, 30.684925, 21.434088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491013, 30.841738, 21.938278>,  <33.816944, 31.285799, 21.478859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491013, 30.841738, 21.938278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859650, 30.690807, 21.901859>,  <34.080833, 30.600250, 21.880009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859650, 30.690807, 21.901859>,  <33.491013, 30.841738, 21.938278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859650, 30.690807, 21.901859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151455, 0.133597, 0.979394,
		-0.357387, -0.916394, 0.180270,
		0.921594, -0.377326, -0.091047,
		34.136127, 30.577610, 21.874546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539635, 30.431761, 22.517998>,  <33.491013, 30.841738, 21.938278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539635, 30.431761, 22.517998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.913536, 30.518055, 22.405075>,  <34.137878, 30.569832, 22.337322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.913536, 30.518055, 22.405075>,  <33.539635, 30.431761, 22.517998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913536, 30.518055, 22.405075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269777, 0.086098, 0.959066,
		0.231211, -0.972649, 0.022280,
		0.934752, 0.215736, -0.282305,
		34.193962, 30.582775, 22.320383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104584, 30.052595, 22.917257>,  <33.539635, 30.431761, 22.517998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104584, 30.052595, 22.917257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.255718, 30.389568, 22.763613>,  <34.346401, 30.591753, 22.671427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.255718, 30.389568, 22.763613>,  <34.104584, 30.052595, 22.917257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255718, 30.389568, 22.763613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505418, 0.159931, 0.847924,
		0.775752, -0.514516, -0.365354,
		0.377839, 0.842435, -0.384112,
		34.369068, 30.642298, 22.648378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799137, 30.180618, 23.304707>,  <34.104584, 30.052595, 22.917257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799137, 30.180618, 23.304707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.746174, 30.528337, 23.114216>,  <34.714394, 30.736969, 22.999922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.746174, 30.528337, 23.114216>,  <34.799137, 30.180618, 23.304707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746174, 30.528337, 23.114216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440838, 0.481969, 0.757210,
		0.887766, -0.109674, -0.447038,
		-0.132412, 0.869297, -0.476225,
		34.706451, 30.789127, 22.971348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360157, 30.531406, 23.502844>,  <34.799137, 30.180618, 23.304707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360157, 30.531406, 23.502844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105953, 30.823923, 23.403780>,  <34.953430, 30.999434, 23.344341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105953, 30.823923, 23.403780>,  <35.360157, 30.531406, 23.502844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105953, 30.823923, 23.403780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328725, 0.546522, 0.770230,
		0.698614, 0.408079, -0.587716,
		-0.635514, 0.731290, -0.247662,
		34.915298, 31.043310, 23.329481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715797, 31.109510, 23.734529>,  <35.360157, 30.531406, 23.502844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715797, 31.109510, 23.734529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 31.257673, 23.693699>,  <35.124924, 31.346571, 23.669201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 31.257673, 23.693699>,  <35.715797, 31.109510, 23.734529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346500, 31.257673, 23.693699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137902, 0.567435, 0.811788,
		0.358613, 0.735402, -0.574961,
		-0.923244, 0.370407, -0.102076,
		35.069527, 31.368795, 23.663076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764374, 31.843365, 23.875208>,  <35.715797, 31.109510, 23.734529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764374, 31.843365, 23.875208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.375641, 31.753738, 23.904421>,  <35.142403, 31.699963, 23.921949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.375641, 31.753738, 23.904421>,  <35.764374, 31.843365, 23.875208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375641, 31.753738, 23.904421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053014, 0.509811, 0.858651,
		-0.229628, 0.830595, -0.507330,
		-0.971834, -0.224066, 0.073034,
		35.084091, 31.686520, 23.926331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354397, 32.082684, 23.368649>,  <35.764374, 31.843365, 23.875208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354397, 32.082684, 23.368649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614624, 32.339020, 23.531662>,  <36.770760, 32.492821, 23.629469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.614624, 32.339020, 23.531662>,  <36.354397, 32.082684, 23.368649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614624, 32.339020, 23.531662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501219, 0.765461, -0.403544,
		-0.570557, 0.058271, 0.819188,
		0.650572, 0.640838, 0.407533,
		36.809795, 32.531273, 23.653921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917332, 32.657364, 23.505451>,  <36.354397, 32.082684, 23.368649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917332, 32.657364, 23.505451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.273048, 32.825035, 23.578613>,  <36.486477, 32.925640, 23.622511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.273048, 32.825035, 23.578613>,  <35.917332, 32.657364, 23.505451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273048, 32.825035, 23.578613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263020, 0.795922, -0.545279,
		-0.374149, 0.436802, 0.818056,
		0.889288, 0.419181, 0.182906,
		36.539833, 32.950790, 23.633486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791065, 33.414143, 23.844639>,  <35.917332, 32.657364, 23.505451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791065, 33.414143, 23.844639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158558, 33.421715, 23.686865>,  <36.379051, 33.426258, 23.592199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158558, 33.421715, 23.686865>,  <35.791065, 33.414143, 23.844639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158558, 33.421715, 23.686865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295919, 0.694396, -0.655932,
		0.261477, 0.719344, 0.643563,
		0.918728, 0.018932, -0.394436,
		36.434177, 33.427395, 23.568535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090263, 34.096672, 23.809851>,  <35.791065, 33.414143, 23.844639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090263, 34.096672, 23.809851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295895, 33.891228, 23.535065>,  <36.419273, 33.767960, 23.370193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295895, 33.891228, 23.535065>,  <36.090263, 34.096672, 23.809851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295895, 33.891228, 23.535065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159848, 0.729503, -0.665037,
		0.842715, 0.451694, 0.292925,
		0.514082, -0.513613, -0.686965,
		36.450119, 33.737144, 23.328976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213272, 34.599201, 23.245659>,  <36.090263, 34.096672, 23.809851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213272, 34.599201, 23.245659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333443, 34.257015, 23.076939>,  <36.405544, 34.051704, 22.975706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333443, 34.257015, 23.076939>,  <36.213272, 34.599201, 23.245659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333443, 34.257015, 23.076939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034478, 0.432201, -0.901118,
		0.953181, 0.285265, 0.100351,
		0.300429, -0.855468, -0.421801,
		36.423573, 34.000374, 22.950397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875946, 34.721130, 22.801037>,  <36.213272, 34.599201, 23.245659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875946, 34.721130, 22.801037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643524, 34.421627, 22.673450>,  <36.504070, 34.241924, 22.596899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643524, 34.421627, 22.673450>,  <36.875946, 34.721130, 22.801037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643524, 34.421627, 22.673450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088004, 0.447419, -0.889984,
		0.809096, -0.489055, -0.325867,
		-0.581050, -0.748760, -0.318966,
		36.469208, 34.196999, 22.577761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060303, 34.637272, 22.113401>,  <36.875946, 34.721130, 22.801037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060303, 34.637272, 22.113401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721928, 34.424454, 22.127934>,  <36.518902, 34.296764, 22.136654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721928, 34.424454, 22.127934>,  <37.060303, 34.637272, 22.113401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721928, 34.424454, 22.127934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230449, 0.303272, -0.924619,
		0.480918, -0.790543, -0.379157,
		-0.845938, -0.532042, 0.036331,
		36.468147, 34.264843, 22.138832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967381, 34.400860, 21.474131>,  <37.060303, 34.637272, 22.113401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967381, 34.400860, 21.474131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605427, 34.366798, 21.640953>,  <36.388256, 34.346359, 21.741047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605427, 34.366798, 21.640953>,  <36.967381, 34.400860, 21.474131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605427, 34.366798, 21.640953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418968, 0.351254, -0.837309,
		-0.075192, -0.932400, -0.353520,
		-0.904882, -0.085154, 0.417058,
		36.333961, 34.341251, 21.766069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634720, 33.892181, 21.122028>,  <36.967381, 34.400860, 21.474131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634720, 33.892181, 21.122028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367085, 34.144974, 21.278452>,  <36.206505, 34.296650, 21.372305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367085, 34.144974, 21.278452>,  <36.634720, 33.892181, 21.122028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367085, 34.144974, 21.278452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401825, 0.135019, -0.905708,
		-0.625190, -0.763132, 0.163606,
		-0.669085, 0.631981, 0.391058,
		36.166359, 34.334568, 21.395769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025604, 33.846813, 20.666410>,  <36.634720, 33.892181, 21.122028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025604, 33.846813, 20.666410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.955757, 34.182690, 20.872103>,  <35.913849, 34.384216, 20.995518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.955757, 34.182690, 20.872103>,  <36.025604, 33.846813, 20.666410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955757, 34.182690, 20.872103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491518, 0.378196, -0.784460,
		-0.853181, -0.389736, 0.346681,
		-0.174619, 0.839686, 0.514232,
		35.903370, 34.434597, 21.026373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313309, 34.073948, 20.561243>,  <36.025604, 33.846813, 20.666410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313309, 34.073948, 20.561243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484547, 34.406685, 20.702538>,  <35.587288, 34.606327, 20.787315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484547, 34.406685, 20.702538>,  <35.313309, 34.073948, 20.561243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484547, 34.406685, 20.702538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455482, 0.536187, -0.710662,
		-0.780558, 0.143337, 0.608427,
		0.428095, 0.831840, 0.353237,
		35.612976, 34.656239, 20.808508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736053, 34.464104, 20.574696>,  <35.313309, 34.073948, 20.561243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736053, 34.464104, 20.574696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067379, 34.687374, 20.555365>,  <35.266174, 34.821335, 20.543766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067379, 34.687374, 20.555365>,  <34.736053, 34.464104, 20.574696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067379, 34.687374, 20.555365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373372, 0.485639, -0.790410,
		-0.417719, 0.672751, 0.610669,
		0.828314, 0.558176, -0.048325,
		35.315872, 34.854828, 20.540867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507420, 35.096188, 20.149912>,  <34.736053, 34.464104, 20.574696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507420, 35.096188, 20.149912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.904114, 35.147404, 20.146692>,  <35.142132, 35.178131, 20.144760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.904114, 35.147404, 20.146692>,  <34.507420, 35.096188, 20.149912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904114, 35.147404, 20.146692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045882, 0.295390, -0.954274,
		-0.119803, 0.946759, 0.298824,
		0.991737, 0.128036, -0.008050,
		35.201633, 35.185814, 20.144278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670017, 35.749329, 19.873631>,  <34.507420, 35.096188, 20.149912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670017, 35.749329, 19.873631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988827, 35.513844, 19.819725>,  <35.180115, 35.372551, 19.787382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988827, 35.513844, 19.819725>,  <34.670017, 35.749329, 19.873631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988827, 35.513844, 19.819725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023429, 0.253114, -0.967153,
		0.603488, 0.767690, 0.215532,
		0.797028, -0.588714, -0.134765,
		35.227936, 35.337231, 19.779295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783775, 36.401134, 20.077284>,  <34.670017, 35.749329, 19.873631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783775, 36.401134, 20.077284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533436, 36.712837, 20.090384>,  <34.383232, 36.899857, 20.098244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533436, 36.712837, 20.090384>,  <34.783775, 36.401134, 20.077284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533436, 36.712837, 20.090384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049308, -0.002375, 0.998781,
		0.778382, 0.626703, -0.036937,
		-0.625851, 0.779255, 0.032750,
		34.345680, 36.946613, 20.100208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095558, 36.865101, 20.554794>,  <34.783775, 36.401134, 20.077284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095558, 36.865101, 20.554794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.704685, 36.944668, 20.525000>,  <34.470161, 36.992409, 20.507122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.704685, 36.944668, 20.525000>,  <35.095558, 36.865101, 20.554794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704685, 36.944668, 20.525000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100706, -0.125117, 0.987018,
		0.187018, 0.971996, 0.142294,
		-0.977181, 0.198920, -0.074487,
		34.411530, 37.004345, 20.502653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002163, 37.438278, 20.936388>,  <35.095558, 36.865101, 20.554794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002163, 37.438278, 20.936388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623600, 37.309254, 20.929750>,  <34.396461, 37.231838, 20.925768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623600, 37.309254, 20.929750>,  <35.002163, 37.438278, 20.936388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623600, 37.309254, 20.929750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074435, 0.167829, 0.983002,
		-0.314291, 0.931552, -0.182843,
		-0.946404, -0.322558, -0.016593,
		34.339680, 37.212486, 20.924772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563297, 37.913788, 21.367586>,  <35.002163, 37.438278, 20.936388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563297, 37.913788, 21.367586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340385, 37.586819, 21.309263>,  <34.206638, 37.390636, 21.274269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340385, 37.586819, 21.309263>,  <34.563297, 37.913788, 21.367586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340385, 37.586819, 21.309263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287788, 0.025429, 0.957356,
		-0.778860, 0.575473, -0.249416,
		-0.557275, -0.817425, -0.145809,
		34.173203, 37.341591, 21.265520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957851, 38.067001, 21.678982>,  <34.563297, 37.913788, 21.367586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957851, 38.067001, 21.678982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 37.669327, 21.657084>,  <34.017189, 37.430721, 21.643944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 37.669327, 21.657084>,  <33.957851, 38.067001, 21.678982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994938, 37.669327, 21.657084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233922, -0.075193, 0.969343,
		-0.967825, -0.077064, -0.239533,
		0.092713, -0.994187, -0.054747,
		34.022751, 37.371071, 21.640659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448242, 37.855221, 22.098516>,  <33.957851, 38.067001, 21.678982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448242, 37.855221, 22.098516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.679897, 37.529884, 22.076321>,  <33.818890, 37.334682, 22.063004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.679897, 37.529884, 22.076321>,  <33.448242, 37.855221, 22.098516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679897, 37.529884, 22.076321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111690, -0.146583, 0.982873,
		-0.807546, -0.563017, -0.175733,
		0.579133, -0.813342, -0.055489,
		33.853638, 37.285881, 22.059673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081158, 37.404606, 22.464661>,  <33.448242, 37.855221, 22.098516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081158, 37.404606, 22.464661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457333, 37.269150, 22.452644>,  <33.683037, 37.187874, 22.445435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457333, 37.269150, 22.452644>,  <33.081158, 37.404606, 22.464661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457333, 37.269150, 22.452644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099388, -0.358348, 0.928282,
		-0.325116, -0.870006, -0.370661,
		0.940437, -0.338638, -0.030036,
		33.739464, 37.167557, 22.443632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124580, 36.621334, 22.605583>,  <33.081158, 37.404606, 22.464661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124580, 36.621334, 22.605583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.473209, 36.795021, 22.696642>,  <33.682388, 36.899231, 22.751276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.473209, 36.795021, 22.696642>,  <33.124580, 36.621334, 22.605583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473209, 36.795021, 22.696642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082133, -0.328447, 0.940945,
		0.483340, -0.838798, -0.250601,
		0.871571, 0.434214, 0.227645,
		33.734680, 36.925285, 22.764935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539772, 36.109329, 23.013435>,  <33.124580, 36.621334, 22.605583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539772, 36.109329, 23.013435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.687134, 36.469196, 23.107141>,  <33.775551, 36.685116, 23.163366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.687134, 36.469196, 23.107141>,  <33.539772, 36.109329, 23.013435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687134, 36.469196, 23.107141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122481, -0.296764, 0.947064,
		0.921563, -0.320207, -0.219520,
		0.368402, 0.899666, 0.234267,
		33.797653, 36.739098, 23.177422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880989, 35.952057, 23.570465>,  <33.539772, 36.109329, 23.013435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880989, 35.952057, 23.570465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.897778, 36.348984, 23.617014>,  <33.907848, 36.587139, 23.644943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.897778, 36.348984, 23.617014>,  <33.880989, 35.952057, 23.570465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897778, 36.348984, 23.617014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035796, -0.117896, 0.992381,
		0.998478, -0.037482, -0.040468,
		0.041967, 0.992318, 0.116374,
		33.910366, 36.646679, 23.651926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395401, 36.063286, 24.127798>,  <33.880989, 35.952057, 23.570465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395401, 36.063286, 24.127798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.204853, 36.413982, 24.101271>,  <34.090523, 36.624401, 24.085354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.204853, 36.413982, 24.101271>,  <34.395401, 36.063286, 24.127798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204853, 36.413982, 24.101271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057477, 0.044211, 0.997368,
		0.877363, 0.478930, 0.029331,
		-0.476373, 0.876739, -0.066317,
		34.061943, 36.677006, 24.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745735, 36.504780, 24.597631>,  <34.395401, 36.063286, 24.127798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745735, 36.504780, 24.597631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.379955, 36.655403, 24.538315>,  <34.160488, 36.745777, 24.502726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.379955, 36.655403, 24.538315>,  <34.745735, 36.504780, 24.597631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379955, 36.655403, 24.538315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046641, 0.265918, 0.962867,
		0.402011, 0.887406, -0.225604,
		-0.914446, 0.376560, -0.148291,
		34.105621, 36.768372, 24.493828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.712952, 37.974201, 16.669138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316082, 37.975700, 16.619228>,  <34.077961, 37.976601, 16.589283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316082, 37.975700, 16.619228>,  <34.712952, 37.974201, 16.669138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316082, 37.975700, 16.619228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121170, 0.211449, 0.969849,
		0.030016, 0.977382, -0.209342,
		-0.992178, 0.003745, -0.124776,
		34.018429, 37.976826, 16.581795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487137, 38.570835, 16.983360>,  <34.712952, 37.974201, 16.669138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487137, 38.570835, 16.983360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195518, 38.297218, 16.973759>,  <34.020546, 38.133049, 16.967997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195518, 38.297218, 16.973759>,  <34.487137, 38.570835, 16.983360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195518, 38.297218, 16.973759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006086, -0.041551, 0.999118,
		-0.684433, 0.728261, 0.034456,
		-0.729050, -0.684039, -0.024006,
		33.976803, 38.092007, 16.966557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071114, 38.713627, 17.522991>,  <34.487137, 38.570835, 16.983360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071114, 38.713627, 17.522991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996159, 38.327087, 17.452509>,  <33.951183, 38.095161, 17.410219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996159, 38.327087, 17.452509>,  <34.071114, 38.713627, 17.522991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996159, 38.327087, 17.452509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114083, -0.199579, 0.973218,
		-0.975638, 0.162269, 0.147644,
		-0.187390, -0.966352, -0.176205,
		33.939941, 38.037182, 17.399647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627686, 38.515392, 17.915739>,  <34.071114, 38.713627, 17.522991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627686, 38.515392, 17.915739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741497, 38.139099, 17.841906>,  <33.809784, 37.913322, 17.797606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741497, 38.139099, 17.841906>,  <33.627686, 38.515392, 17.915739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741497, 38.139099, 17.841906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102385, -0.221260, 0.969825,
		-0.953185, -0.257042, -0.159271,
		0.284526, -0.940730, -0.184585,
		33.826855, 37.856880, 17.786530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151188, 38.093414, 18.190884>,  <33.627686, 38.515392, 17.915739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151188, 38.093414, 18.190884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480663, 37.867077, 18.176096>,  <33.678349, 37.731274, 18.167223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480663, 37.867077, 18.176096>,  <33.151188, 38.093414, 18.190884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480663, 37.867077, 18.176096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101472, -0.211231, 0.972155,
		-0.557895, -0.796997, -0.231405,
		0.823685, -0.565841, -0.036972,
		33.727768, 37.697323, 18.165005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053909, 37.624012, 18.639664>,  <33.151188, 38.093414, 18.190884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053909, 37.624012, 18.639664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447392, 37.566925, 18.595938>,  <33.683483, 37.532673, 18.569702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447392, 37.566925, 18.595938>,  <33.053909, 37.624012, 18.639664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447392, 37.566925, 18.595938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049312, -0.370522, 0.927514,
		-0.172876, -0.917793, -0.357448,
		0.983709, -0.142719, -0.109313,
		33.742504, 37.524109, 18.563143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118618, 36.978523, 18.938690>,  <33.053909, 37.624012, 18.639664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118618, 36.978523, 18.938690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491039, 37.123737, 18.924034>,  <33.714493, 37.210865, 18.915239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491039, 37.123737, 18.924034>,  <33.118618, 36.978523, 18.938690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491039, 37.123737, 18.924034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134994, -0.249424, 0.958939,
		0.338986, -0.897772, -0.281235,
		0.931056, 0.363032, -0.036642,
		33.770355, 37.232647, 18.913042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568634, 36.484436, 19.315287>,  <33.118618, 36.978523, 18.938690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568634, 36.484436, 19.315287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785736, 36.820000, 19.299009>,  <33.915997, 37.021336, 19.289244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785736, 36.820000, 19.299009>,  <33.568634, 36.484436, 19.315287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785736, 36.820000, 19.299009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316167, -0.159188, 0.935253,
		0.778110, -0.520479, -0.351634,
		0.542755, 0.838905, -0.040693,
		33.948563, 37.071671, 19.286802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312462, 36.314308, 19.428627>,  <33.568634, 36.484436, 19.315287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312462, 36.314308, 19.428627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242702, 36.692928, 19.537169>,  <34.200848, 36.920101, 19.602293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242702, 36.692928, 19.537169>,  <34.312462, 36.314308, 19.428627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242702, 36.692928, 19.537169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310678, -0.208605, 0.927342,
		0.934379, 0.246031, -0.257692,
		-0.174399, 0.946548, 0.271352,
		34.190384, 36.976894, 19.618574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079292, 36.106689, 19.346437>,  <34.312462, 36.314308, 19.428627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079292, 36.106689, 19.346437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193207, 35.723568, 19.361990>,  <35.261555, 35.493694, 19.371323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193207, 35.723568, 19.361990>,  <35.079292, 36.106689, 19.346437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193207, 35.723568, 19.361990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065495, -0.059909, -0.996053,
		0.956352, 0.281113, -0.079793,
		0.284784, -0.957803, 0.038883,
		35.278641, 35.436226, 19.373655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484306, 35.953121, 18.806650>,  <35.079292, 36.106689, 19.346437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484306, 35.953121, 18.806650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434486, 35.566559, 18.896585>,  <35.404594, 35.334621, 18.950546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434486, 35.566559, 18.896585>,  <35.484306, 35.953121, 18.806650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434486, 35.566559, 18.896585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082367, -0.215753, -0.972968,
		0.988789, -0.139700, -0.052728,
		-0.124547, -0.966403, 0.224840,
		35.397121, 35.276638, 18.964037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062256, 35.531147, 18.497128>,  <35.484306, 35.953121, 18.806650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062256, 35.531147, 18.497128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754852, 35.279404, 18.543257>,  <35.570408, 35.128357, 18.570934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754852, 35.279404, 18.543257>,  <36.062256, 35.531147, 18.497128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754852, 35.279404, 18.543257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028722, -0.146124, -0.988849,
		0.639189, -0.763255, 0.094222,
		-0.768513, -0.629356, 0.115323,
		35.524300, 35.090595, 18.577854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194294, 35.004658, 17.980072>,  <36.062256, 35.531147, 18.497128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194294, 35.004658, 17.980072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811535, 34.924328, 18.063993>,  <35.581879, 34.876129, 18.114347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811535, 34.924328, 18.063993>,  <36.194294, 35.004658, 17.980072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811535, 34.924328, 18.063993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157896, -0.246583, -0.956172,
		0.243753, -0.948086, 0.204246,
		-0.956898, -0.200821, 0.209805,
		35.524467, 34.864082, 18.126934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012680, 34.342243, 17.740688>,  <36.194294, 35.004658, 17.980072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012680, 34.342243, 17.740688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675591, 34.554897, 17.774601>,  <35.473339, 34.682487, 17.794949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675591, 34.554897, 17.774601>,  <36.012680, 34.342243, 17.740688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675591, 34.554897, 17.774601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264507, -0.271726, -0.925311,
		-0.468890, -0.802204, 0.369610,
		-0.842721, 0.531634, 0.084779,
		35.422775, 34.714386, 17.800035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567745, 33.869724, 17.547272>,  <36.012680, 34.342243, 17.740688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567745, 33.869724, 17.547272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367363, 34.214100, 17.511896>,  <35.247135, 34.420727, 17.490671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367363, 34.214100, 17.511896>,  <35.567745, 33.869724, 17.547272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367363, 34.214100, 17.511896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261271, -0.247856, -0.932902,
		-0.825096, -0.444234, 0.349104,
		-0.500954, 0.860944, -0.088439,
		35.217075, 34.472382, 17.485365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928139, 33.741848, 17.281490>,  <35.567745, 33.869724, 17.547272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928139, 33.741848, 17.281490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980747, 34.115780, 17.149551>,  <35.012310, 34.340137, 17.070389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980747, 34.115780, 17.149551>,  <34.928139, 33.741848, 17.281490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980747, 34.115780, 17.149551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155833, -0.309104, -0.938174,
		-0.978989, 0.174787, 0.105025,
		0.131517, 0.934829, -0.329847,
		35.020203, 34.396229, 17.050598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299721, 33.904976, 16.863323>,  <34.928139, 33.741848, 17.281490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299721, 33.904976, 16.863323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563225, 34.179543, 16.740126>,  <34.721329, 34.344284, 16.666206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563225, 34.179543, 16.740126>,  <34.299721, 33.904976, 16.863323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563225, 34.179543, 16.740126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208830, -0.226464, -0.951370,
		-0.722786, 0.691048, -0.005843,
		0.658765, 0.686416, -0.307996,
		34.760853, 34.385468, 16.647726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976555, 34.218792, 16.353882>,  <34.299721, 33.904976, 16.863323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976555, 34.218792, 16.353882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356415, 34.329388, 16.294939>,  <34.584332, 34.395744, 16.259573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356415, 34.329388, 16.294939>,  <33.976555, 34.218792, 16.353882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356415, 34.329388, 16.294939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129701, -0.081205, -0.988222,
		-0.285198, 0.957580, -0.041256,
		0.949653, 0.276488, -0.147358,
		34.641312, 34.412334, 16.250732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944775, 34.763245, 15.764031>,  <33.976555, 34.218792, 16.353882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944775, 34.763245, 15.764031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322739, 34.634293, 15.786710>,  <34.549519, 34.556923, 15.800317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322739, 34.634293, 15.786710>,  <33.944775, 34.763245, 15.764031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322739, 34.634293, 15.786710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024198, -0.241532, -0.970091,
		0.326429, 0.915279, -0.236028,
		0.944912, -0.322378, 0.056696,
		34.606213, 34.537579, 15.803719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256104, 35.067680, 15.256957>,  <33.944775, 34.763245, 15.764031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256104, 35.067680, 15.256957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480137, 34.747131, 15.340968>,  <34.614555, 34.554802, 15.391375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480137, 34.747131, 15.340968>,  <34.256104, 35.067680, 15.256957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480137, 34.747131, 15.340968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117509, -0.174111, -0.977689,
		0.820060, 0.572268, -0.003348,
		0.560084, -0.801370, 0.210028,
		34.648163, 34.506721, 15.403976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858906, 35.133694, 14.820086>,  <34.256104, 35.067680, 15.256957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858906, 35.133694, 14.820086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787926, 34.753868, 14.923500>,  <34.745338, 34.525974, 14.985548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787926, 34.753868, 14.923500>,  <34.858906, 35.133694, 14.820086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787926, 34.753868, 14.923500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037372, -0.269015, -0.962411,
		0.983419, -0.161122, 0.083225,
		-0.177454, -0.949563, 0.258533,
		34.734688, 34.468998, 15.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942467, 34.889156, 14.180550>,  <34.858906, 35.133694, 14.820086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942467, 34.889156, 14.180550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811428, 34.579601, 14.397354>,  <34.732803, 34.393867, 14.527437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811428, 34.579601, 14.397354>,  <34.942467, 34.889156, 14.180550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811428, 34.579601, 14.397354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245251, -0.484351, -0.839795,
		0.912431, -0.408046, -0.031123,
		-0.327601, -0.773887, 0.542011,
		34.713146, 34.347435, 14.559958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318638, 34.296017, 14.005435>,  <34.942467, 34.889156, 14.180550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318638, 34.296017, 14.005435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955521, 34.203678, 14.145502>,  <34.737652, 34.148273, 14.229543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955521, 34.203678, 14.145502>,  <35.318638, 34.296017, 14.005435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955521, 34.203678, 14.145502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194428, -0.508140, -0.839042,
		0.371628, -0.829760, 0.416403,
		-0.907794, -0.230851, 0.350168,
		34.683182, 34.134422, 14.250552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.791452, 37.139858, 16.473898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.147495, 37.128651, 16.291943>,  <28.361120, 37.121925, 16.182770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.147495, 37.128651, 16.291943>,  <27.791452, 37.139858, 16.473898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147495, 37.128651, 16.291943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413394, -0.370563, 0.831738,
		-0.191872, -0.928385, -0.318256,
		0.890107, -0.028022, -0.454889,
		28.414528, 37.120243, 16.155476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982986, 36.461823, 16.505142>,  <27.791452, 37.139858, 16.473898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982986, 36.461823, 16.505142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.295795, 36.709549, 16.477201>,  <28.483480, 36.858185, 16.460438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.295795, 36.709549, 16.477201>,  <27.982986, 36.461823, 16.505142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295795, 36.709549, 16.477201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337194, -0.326176, 0.883125,
		0.524154, -0.714179, -0.463909,
		0.782025, 0.619321, -0.069850,
		28.530403, 36.895344, 16.456245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590199, 36.069752, 16.415728>,  <27.982986, 36.461823, 16.505142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590199, 36.069752, 16.415728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.704367, 36.428684, 16.550390>,  <28.772867, 36.644043, 16.631187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.704367, 36.428684, 16.550390>,  <28.590199, 36.069752, 16.415728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704367, 36.428684, 16.550390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447502, -0.435404, 0.781131,
		0.847513, -0.072294, -0.525828,
		0.285419, 0.897328, 0.336658,
		28.789993, 36.697884, 16.651388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233494, 35.968014, 16.824787>,  <28.590199, 36.069752, 16.415728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233494, 35.968014, 16.824787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.128675, 36.334797, 16.945139>,  <29.065784, 36.554867, 17.017349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.128675, 36.334797, 16.945139>,  <29.233494, 35.968014, 16.824787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128675, 36.334797, 16.945139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503410, -0.136115, 0.853259,
		0.823353, 0.375057, -0.425936,
		-0.262045, 0.916954, 0.300878,
		29.050062, 36.609882, 17.035402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886141, 36.181580, 17.067242>,  <29.233494, 35.968014, 16.824787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886141, 36.181580, 17.067242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597645, 36.397518, 17.240852>,  <29.424547, 36.527081, 17.345018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597645, 36.397518, 17.240852>,  <29.886141, 36.181580, 17.067242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597645, 36.397518, 17.240852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527425, 0.021807, 0.849322,
		0.449037, 0.841482, -0.300456,
		-0.721241, 0.539845, 0.434027,
		29.381273, 36.559471, 17.371059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280323, 36.739319, 17.535938>,  <29.886141, 36.181580, 17.067242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280323, 36.739319, 17.535938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.904531, 36.741623, 17.672960>,  <29.679056, 36.743004, 17.755173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.904531, 36.741623, 17.672960>,  <30.280323, 36.739319, 17.535938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904531, 36.741623, 17.672960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342381, 0.051615, 0.938142,
		-0.012277, 0.998651, -0.050463,
		-0.939481, 0.005760, 0.342553,
		29.622686, 36.743351, 17.775726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256046, 37.286915, 18.074541>,  <30.280323, 36.739319, 17.535938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256046, 37.286915, 18.074541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.923182, 37.077412, 18.147411>,  <29.723463, 36.951710, 18.191133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.923182, 37.077412, 18.147411>,  <30.256046, 37.286915, 18.074541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923182, 37.077412, 18.147411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204530, 0.015469, 0.978738,
		-0.515437, 0.851728, 0.094251,
		-0.832161, -0.523755, 0.182177,
		29.673532, 36.920284, 18.202065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017406, 37.496166, 18.788284>,  <30.256046, 37.286915, 18.074541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017406, 37.496166, 18.788284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.816320, 37.154938, 18.732355>,  <29.695669, 36.950203, 18.698797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.816320, 37.154938, 18.732355>,  <30.017406, 37.496166, 18.788284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816320, 37.154938, 18.732355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100809, -0.218498, 0.970616,
		-0.858553, 0.473850, 0.195840,
		-0.502717, -0.853068, -0.139824,
		29.665504, 36.899017, 18.690409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650831, 37.396080, 19.363531>,  <30.017406, 37.496166, 18.788284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650831, 37.396080, 19.363531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.660137, 37.021320, 19.223997>,  <29.665722, 36.796467, 19.140276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.660137, 37.021320, 19.223997>,  <29.650831, 37.396080, 19.363531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660137, 37.021320, 19.223997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105852, -0.344660, 0.932741,
		-0.994110, -0.058626, 0.091153,
		0.023266, -0.936895, -0.348836,
		29.667118, 36.740253, 19.119347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233454, 37.122204, 19.794456>,  <29.650831, 37.396080, 19.363531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233454, 37.122204, 19.794456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.443357, 36.832336, 19.615803>,  <29.569300, 36.658417, 19.508610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.443357, 36.832336, 19.615803>,  <29.233454, 37.122204, 19.794456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443357, 36.832336, 19.615803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102138, -0.467291, 0.878184,
		-0.845100, -0.506456, -0.171200,
		0.524761, -0.724667, -0.446635,
		29.600786, 36.614937, 19.481812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996849, 36.479195, 20.015400>,  <29.233454, 37.122204, 19.794456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996849, 36.479195, 20.015400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.372980, 36.421951, 19.891916>,  <29.598660, 36.387604, 19.817827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.372980, 36.421951, 19.891916>,  <28.996849, 36.479195, 20.015400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372980, 36.421951, 19.891916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181956, -0.555155, 0.811601,
		-0.287528, -0.819343, -0.495989,
		0.940329, -0.143110, -0.308706,
		29.655079, 36.379017, 19.799305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109970, 35.673340, 19.992022>,  <28.996849, 36.479195, 20.015400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109970, 35.673340, 19.992022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.460470, 35.861671, 20.033026>,  <29.670771, 35.974670, 20.057629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.460470, 35.861671, 20.033026>,  <29.109970, 35.673340, 19.992022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460470, 35.861671, 20.033026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180356, -0.517742, 0.836310,
		0.446829, -0.714329, -0.538588,
		0.876251, 0.470825, 0.102508,
		29.723345, 36.002918, 20.063778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491657, 35.175121, 20.160492>,  <29.109970, 35.673340, 19.992022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491657, 35.175121, 20.160492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676977, 35.513157, 20.267214>,  <29.788168, 35.715977, 20.331247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676977, 35.513157, 20.267214>,  <29.491657, 35.175121, 20.160492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676977, 35.513157, 20.267214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156059, -0.374161, 0.914138,
		0.872353, -0.381881, -0.305231,
		0.463298, 0.845086, 0.266805,
		29.815968, 35.766682, 20.347256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144382, 34.928352, 20.508158>,  <29.491657, 35.175121, 20.160492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144382, 34.928352, 20.508158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.093859, 35.310398, 20.615339>,  <30.063545, 35.539627, 20.679649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.093859, 35.310398, 20.615339>,  <30.144382, 34.928352, 20.508158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093859, 35.310398, 20.615339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058415, -0.262488, 0.963165,
		0.990269, 0.137309, -0.022638,
		-0.126309, 0.955116, 0.267955,
		30.055965, 35.596931, 20.695726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900286, 34.549278, 20.545666>,  <30.144382, 34.928352, 20.508158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900286, 34.549278, 20.545666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912455, 34.149872, 20.527641>,  <30.919756, 33.910225, 20.516827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912455, 34.149872, 20.527641>,  <30.900286, 34.549278, 20.545666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912455, 34.149872, 20.527641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238411, 0.036535, -0.970477,
		0.970688, 0.040266, -0.236947,
		0.030420, -0.998521, -0.045063,
		30.921581, 33.850315, 20.514122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345324, 34.315598, 19.923382>,  <30.900286, 34.549278, 20.545666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345324, 34.315598, 19.923382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083858, 34.028790, 20.020212>,  <30.926979, 33.856705, 20.078310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083858, 34.028790, 20.020212>,  <31.345324, 34.315598, 19.923382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083858, 34.028790, 20.020212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184989, -0.158782, -0.969829,
		0.733828, -0.678723, -0.028851,
		-0.653663, -0.717024, 0.242075,
		30.887760, 33.813683, 20.092834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476549, 33.763435, 19.435137>,  <31.345324, 34.315598, 19.923382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476549, 33.763435, 19.435137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.108234, 33.742985, 19.589815>,  <30.887245, 33.730713, 19.682623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.108234, 33.742985, 19.589815>,  <31.476549, 33.763435, 19.435137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108234, 33.742985, 19.589815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375876, -0.148630, -0.914673,
		0.104240, -0.987570, 0.117639,
		-0.920788, -0.051127, 0.386697,
		30.831997, 33.727646, 19.705824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176163, 33.175888, 19.188425>,  <31.476549, 33.763435, 19.435137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176163, 33.175888, 19.188425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.861364, 33.395660, 19.300682>,  <30.672485, 33.527523, 19.368036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.861364, 33.395660, 19.300682>,  <31.176163, 33.175888, 19.188425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861364, 33.395660, 19.300682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367427, -0.051978, -0.928599,
		-0.495616, -0.833919, 0.242783,
		-0.786996, 0.549434, 0.280643,
		30.625265, 33.560490, 19.384874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766123, 32.953445, 18.700098>,  <31.176163, 33.175888, 19.188425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766123, 32.953445, 18.700098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.561384, 33.256931, 18.861273>,  <30.438541, 33.439022, 18.957977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.561384, 33.256931, 18.861273>,  <30.766123, 32.953445, 18.700098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561384, 33.256931, 18.861273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494940, 0.122926, -0.860188,
		-0.702173, -0.639714, 0.312601,
		-0.511848, 0.758719, 0.402935,
		30.407829, 33.484547, 18.982153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072784, 32.909439, 18.407009>,  <30.766123, 32.953445, 18.700098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072784, 32.909439, 18.407009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.083982, 33.290089, 18.529409>,  <30.090700, 33.518478, 18.602850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.083982, 33.290089, 18.529409>,  <30.072784, 32.909439, 18.407009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083982, 33.290089, 18.529409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445327, 0.285937, -0.848483,
		-0.894930, -0.112519, 0.431786,
		0.027993, 0.951620, 0.306001,
		30.092381, 33.575573, 18.621210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327740, 33.226738, 18.454033>,  <30.072784, 32.909439, 18.407009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327740, 33.226738, 18.454033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.588007, 33.528229, 18.417088>,  <29.744167, 33.709122, 18.394920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.588007, 33.528229, 18.417088>,  <29.327740, 33.226738, 18.454033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588007, 33.528229, 18.417088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357081, 0.196355, -0.913202,
		-0.670166, 0.627173, 0.396902,
		0.650670, 0.753723, -0.092361,
		29.783207, 33.754345, 18.389380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011856, 33.663807, 18.005371>,  <29.327740, 33.226738, 18.454033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011856, 33.663807, 18.005371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.388597, 33.794098, 17.972357>,  <29.614643, 33.872272, 17.952549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.388597, 33.794098, 17.972357>,  <29.011856, 33.663807, 18.005371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388597, 33.794098, 17.972357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221606, 0.417488, -0.881246,
		-0.252590, 0.848295, 0.465397,
		0.941854, 0.325728, -0.082534,
		29.671154, 33.891815, 17.947596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908607, 34.307632, 17.782810>,  <29.011856, 33.663807, 18.005371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908607, 34.307632, 17.782810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.288651, 34.224632, 17.689653>,  <29.516676, 34.174831, 17.633760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.288651, 34.224632, 17.689653>,  <28.908607, 34.307632, 17.782810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288651, 34.224632, 17.689653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179024, 0.248665, -0.951901,
		0.255428, 0.946103, 0.199112,
		0.950109, -0.207497, -0.232891,
		29.573683, 34.162384, 17.619785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137733, 34.882618, 17.402138>,  <28.908607, 34.307632, 17.782810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137733, 34.882618, 17.402138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.380915, 34.576096, 17.319025>,  <29.526823, 34.392181, 17.269157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.380915, 34.576096, 17.319025>,  <29.137733, 34.882618, 17.402138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380915, 34.576096, 17.319025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182653, 0.119694, -0.975864,
		0.772679, 0.631230, -0.067199,
		0.607951, -0.766304, -0.207781,
		29.563299, 34.346203, 17.256691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510321, 35.191788, 16.886457>,  <29.137733, 34.882618, 17.402138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510321, 35.191788, 16.886457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.556936, 34.796898, 16.843004>,  <29.584906, 34.559963, 16.816933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.556936, 34.796898, 16.843004>,  <29.510321, 35.191788, 16.886457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556936, 34.796898, 16.843004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003773, 0.108939, -0.994041,
		0.993179, 0.116256, 0.008971,
		0.116540, -0.987227, -0.108635,
		29.591898, 34.500729, 16.810413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146669, 35.115822, 16.513186>,  <29.510321, 35.191788, 16.886457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146669, 35.115822, 16.513186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940384, 34.775085, 16.476519>,  <29.816612, 34.570644, 16.454519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940384, 34.775085, 16.476519>,  <30.146669, 35.115822, 16.513186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940384, 34.775085, 16.476519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010243, 0.100856, -0.994848,
		0.856700, -0.513995, -0.043287,
		-0.515713, -0.851843, -0.091668,
		29.785669, 34.519531, 16.449018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421913, 34.756855, 16.051128>,  <30.146669, 35.115822, 16.513186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421913, 34.756855, 16.051128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.072645, 34.561897, 16.049448>,  <29.863085, 34.444923, 16.048439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.072645, 34.561897, 16.049448>,  <30.421913, 34.756855, 16.051128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072645, 34.561897, 16.049448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024639, 0.052749, -0.998304,
		0.486791, -0.871586, -0.058068,
		-0.873171, -0.487396, -0.004202,
		29.810694, 34.415680, 16.048187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421415, 34.199532, 15.517900>,  <30.421913, 34.756855, 16.051128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421415, 34.199532, 15.517900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035181, 34.281834, 15.581530>,  <29.803440, 34.331215, 15.619707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035181, 34.281834, 15.581530>,  <30.421415, 34.199532, 15.517900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035181, 34.281834, 15.581530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140760, 0.100870, -0.984892,
		-0.218696, -0.973390, -0.068436,
		-0.965587, 0.205759, 0.159075,
		29.745504, 34.343563, 15.629252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216997, 33.501011, 15.347665>,  <30.421415, 34.199532, 15.517900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216997, 33.501011, 15.347665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.391975, 33.166409, 15.215667>,  <30.496962, 32.965645, 15.136468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.391975, 33.166409, 15.215667>,  <30.216997, 33.501011, 15.347665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391975, 33.166409, 15.215667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380333, -0.160424, 0.910830,
		-0.814856, -0.523945, 0.247975,
		0.437444, -0.836508, -0.329996,
		30.523209, 32.915455, 15.116668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940825, 33.015438, 15.851306>,  <30.216997, 33.501011, 15.347665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940825, 33.015438, 15.851306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.281021, 32.895874, 15.678185>,  <30.485138, 32.824135, 15.574312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.281021, 32.895874, 15.678185>,  <29.940825, 33.015438, 15.851306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281021, 32.895874, 15.678185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308759, -0.382443, 0.870865,
		-0.425834, -0.874293, -0.232973,
		0.850490, -0.298911, -0.432803,
		30.536169, 32.806202, 15.548344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110647, 32.334465, 16.225134>,  <29.940825, 33.015438, 15.851306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110647, 32.334465, 16.225134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452364, 32.466969, 16.064909>,  <30.657394, 32.546471, 15.968775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452364, 32.466969, 16.064909>,  <30.110647, 32.334465, 16.225134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452364, 32.466969, 16.064909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500919, -0.318905, 0.804599,
		0.138792, -0.888012, -0.438374,
		0.854294, 0.331261, -0.400560,
		30.708652, 32.566345, 15.944741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546991, 31.796450, 16.367672>,  <30.110647, 32.334465, 16.225134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546991, 31.796450, 16.367672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808680, 32.085823, 16.279453>,  <30.965693, 32.259445, 16.226522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808680, 32.085823, 16.279453>,  <30.546991, 31.796450, 16.367672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808680, 32.085823, 16.279453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631213, -0.361648, 0.686135,
		0.416612, -0.588096, -0.693237,
		0.654221, 0.723432, -0.220547,
		31.004946, 32.302853, 16.213289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145617, 31.489538, 16.232292>,  <30.546991, 31.796450, 16.367672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145617, 31.489538, 16.232292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.312510, 31.846775, 16.299589>,  <31.412645, 32.061115, 16.339968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.312510, 31.846775, 16.299589>,  <31.145617, 31.489538, 16.232292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312510, 31.846775, 16.299589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772536, -0.446046, 0.451920,
		0.478648, -0.058584, -0.876050,
		0.417234, 0.893090, 0.168241,
		31.437679, 32.114700, 16.350061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893391, 31.436148, 16.065268>,  <31.145617, 31.489538, 16.232292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893391, 31.436148, 16.065268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.855341, 31.748934, 16.311676>,  <31.832512, 31.936605, 16.459522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.855341, 31.748934, 16.311676>,  <31.893391, 31.436148, 16.065268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855341, 31.748934, 16.311676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744010, -0.355288, 0.565880,
		0.661363, 0.512157, -0.547992,
		-0.095124, 0.781963, 0.616024,
		31.826803, 31.983522, 16.496483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547684, 31.696106, 16.164848>,  <31.893391, 31.436148, 16.065268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547684, 31.696106, 16.164848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323376, 31.817307, 16.473063>,  <32.188789, 31.890028, 16.657991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323376, 31.817307, 16.473063>,  <32.547684, 31.696106, 16.164848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323376, 31.817307, 16.473063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730199, -0.257718, 0.632764,
		0.390310, 0.917480, -0.076731,
		-0.560774, 0.303003, 0.770534,
		32.155144, 31.908207, 16.704222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987110, 32.142788, 16.598866>,  <32.547684, 31.696106, 16.164848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987110, 32.142788, 16.598866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698326, 32.001053, 16.836597>,  <32.525055, 31.916012, 16.979237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698326, 32.001053, 16.836597>,  <32.987110, 32.142788, 16.598866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698326, 32.001053, 16.836597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679403, -0.200254, 0.705910,
		-0.131113, 0.913425, 0.385312,
		-0.721956, -0.354336, 0.594328,
		32.481739, 31.894753, 17.014896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037598, 32.403587, 17.373175>,  <32.987110, 32.142788, 16.598866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037598, 32.403587, 17.373175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.771908, 32.105152, 17.391741>,  <32.612495, 31.926090, 17.402880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.771908, 32.105152, 17.391741>,  <33.037598, 32.403587, 17.373175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771908, 32.105152, 17.391741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363108, -0.267744, 0.892449,
		-0.653421, 0.609640, 0.448754,
		-0.664224, -0.746091, 0.046416,
		32.572639, 31.881325, 17.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850700, 32.339249, 18.086412>,  <33.037598, 32.403587, 17.373175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850700, 32.339249, 18.086412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738503, 31.972691, 17.972195>,  <32.671185, 31.752754, 17.903664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738503, 31.972691, 17.972195>,  <32.850700, 32.339249, 18.086412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738503, 31.972691, 17.972195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414306, -0.383940, 0.825191,
		-0.865836, 0.113160, 0.487363,
		-0.280497, -0.916398, -0.285546,
		32.654354, 31.697771, 17.886530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585472, 31.924488, 18.671242>,  <32.850700, 32.339249, 18.086412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585472, 31.924488, 18.671242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.636223, 31.629721, 18.405655>,  <32.666676, 31.452860, 18.246304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.636223, 31.629721, 18.405655>,  <32.585472, 31.924488, 18.671242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636223, 31.629721, 18.405655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330621, -0.599680, 0.728748,
		-0.935196, -0.311984, 0.167554,
		0.126879, -0.736919, -0.663966,
		32.674286, 31.408646, 18.206465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278049, 31.342493, 18.918886>,  <32.585472, 31.924488, 18.671242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278049, 31.342493, 18.918886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.539661, 31.208490, 18.647591>,  <32.696629, 31.128088, 18.484814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.539661, 31.208490, 18.647591>,  <32.278049, 31.342493, 18.918886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539661, 31.208490, 18.647591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358098, -0.652656, 0.667687,
		-0.666341, -0.679565, -0.306890,
		0.654030, -0.335011, -0.678243,
		32.735870, 31.107988, 18.444118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226814, 30.588417, 18.964054>,  <32.278049, 31.342493, 18.918886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226814, 30.588417, 18.964054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579124, 30.684864, 18.801039>,  <32.790512, 30.742733, 18.703230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579124, 30.684864, 18.801039>,  <32.226814, 30.588417, 18.964054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579124, 30.684864, 18.801039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472359, -0.507749, 0.720464,
		-0.033210, -0.827075, -0.561110,
		0.880780, 0.241119, -0.407539,
		32.843357, 30.757200, 18.678778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588844, 29.908541, 18.971470>,  <32.226814, 30.588417, 18.964054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588844, 29.908541, 18.971470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.845909, 30.214439, 18.952915>,  <33.000149, 30.397978, 18.941782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.845909, 30.214439, 18.952915>,  <32.588844, 29.908541, 18.971470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845909, 30.214439, 18.952915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423856, -0.304452, 0.853027,
		0.638226, -0.567869, -0.519801,
		0.642662, 0.764745, -0.046386,
		33.038708, 30.443863, 18.938999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.493874, 33.028759, 13.423190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286335, 33.260750, 13.674402>,  <34.161812, 33.399944, 13.825130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286335, 33.260750, 13.674402>,  <34.493874, 33.028759, 13.423190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286335, 33.260750, 13.674402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654628, 0.202912, -0.728209,
		-0.549779, -0.788957, 0.274388,
		-0.518849, 0.579977, 0.628031,
		34.130680, 33.434742, 13.862811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780869, 32.903164, 13.478672>,  <34.493874, 33.028759, 13.423190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780869, 32.903164, 13.478672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781677, 33.270184, 13.637720>,  <33.782162, 33.490395, 13.733150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781677, 33.270184, 13.637720>,  <33.780869, 32.903164, 13.478672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781677, 33.270184, 13.637720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749202, 0.264748, -0.607128,
		-0.662338, -0.296673, 0.687963,
		0.002018, 0.917548, 0.397621,
		33.782284, 33.545448, 13.757007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027599, 33.086811, 13.672434>,  <33.780869, 32.903164, 13.478672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027599, 33.086811, 13.672434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222969, 33.432846, 13.626718>,  <33.340191, 33.640469, 13.599288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222969, 33.432846, 13.626718>,  <33.027599, 33.086811, 13.672434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222969, 33.432846, 13.626718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660290, 0.280775, -0.696551,
		-0.570487, 0.415680, 0.708347,
		0.488429, 0.865087, -0.114290,
		33.369499, 33.692371, 13.592430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498684, 33.594944, 13.631512>,  <33.027599, 33.086811, 13.672434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498684, 33.594944, 13.631512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829304, 33.764137, 13.482973>,  <33.027676, 33.865654, 13.393849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829304, 33.764137, 13.482973>,  <32.498684, 33.594944, 13.631512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829304, 33.764137, 13.482973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534305, 0.382140, -0.753981,
		-0.177016, 0.821615, 0.541861,
		0.826550, 0.422986, -0.371348,
		33.077267, 33.891033, 13.371569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281311, 34.192318, 13.465096>,  <32.498684, 33.594944, 13.631512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281311, 34.192318, 13.465096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606834, 34.123154, 13.243169>,  <32.802147, 34.081654, 13.110012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606834, 34.123154, 13.243169>,  <32.281311, 34.192318, 13.465096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606834, 34.123154, 13.243169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501784, 0.272517, -0.820943,
		0.293148, 0.946486, 0.135011,
		0.813804, -0.172912, -0.554819,
		32.850975, 34.071281, 13.076723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186661, 34.699818, 12.911125>,  <32.281311, 34.192318, 13.465096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186661, 34.699818, 12.911125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479996, 34.490582, 12.737417>,  <32.655998, 34.365040, 12.633192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479996, 34.490582, 12.737417>,  <32.186661, 34.699818, 12.911125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479996, 34.490582, 12.737417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316105, 0.303175, -0.898979,
		0.601910, 0.796528, 0.056976,
		0.733336, -0.523094, -0.434271,
		32.699997, 34.333652, 12.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587132, 35.196739, 12.485754>,  <32.186661, 34.699818, 12.911125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587132, 35.196739, 12.485754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.651909, 34.827320, 12.346714>,  <32.690773, 34.605667, 12.263289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.651909, 34.827320, 12.346714>,  <32.587132, 35.196739, 12.485754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651909, 34.827320, 12.346714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170069, 0.320859, -0.931733,
		0.972035, 0.210000, -0.105108,
		0.161939, -0.923553, -0.347601,
		32.700489, 34.550255, 12.242434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194889, 35.159718, 11.954490>,  <32.587132, 35.196739, 12.485754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194889, 35.159718, 11.954490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949684, 34.848198, 11.901290>,  <32.802559, 34.661285, 11.869370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949684, 34.848198, 11.901290>,  <33.194889, 35.159718, 11.954490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949684, 34.848198, 11.901290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087272, 0.234056, -0.968298,
		0.785237, -0.581974, -0.211447,
		-0.613014, -0.778797, -0.132999,
		32.765781, 34.614559, 11.861390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416531, 34.854572, 11.280877>,  <33.194889, 35.159718, 11.954490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416531, 34.854572, 11.280877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060875, 34.671627, 11.287159>,  <32.847481, 34.561859, 11.290928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060875, 34.671627, 11.287159>,  <33.416531, 34.854572, 11.280877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060875, 34.671627, 11.287159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219529, 0.396172, -0.891547,
		0.401558, -0.796149, -0.452657,
		-0.889134, -0.457379, 0.015692,
		32.794132, 34.534420, 11.291870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297977, 34.371128, 10.649744>,  <33.416531, 34.854572, 11.280877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297977, 34.371128, 10.649744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939480, 34.453503, 10.806891>,  <32.724380, 34.502926, 10.901180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939480, 34.453503, 10.806891>,  <33.297977, 34.371128, 10.649744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939480, 34.453503, 10.806891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336641, 0.260949, -0.904753,
		-0.288839, -0.943131, -0.164547,
		-0.896239, 0.205935, 0.392869,
		32.670609, 34.515282, 10.924752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863602, 34.205761, 10.142459>,  <33.297977, 34.371128, 10.649744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863602, 34.205761, 10.142459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611382, 34.424847, 10.362425>,  <32.460049, 34.556297, 10.494405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611382, 34.424847, 10.362425>,  <32.863602, 34.205761, 10.142459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611382, 34.424847, 10.362425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458857, 0.308371, -0.833281,
		-0.625981, -0.777762, 0.056880,
		-0.630554, 0.547718, 0.549916,
		32.422215, 34.589161, 10.527400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155128, 34.024361, 9.879427>,  <32.863602, 34.205761, 10.142459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155128, 34.024361, 9.879427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169060, 34.380238, 10.061519>,  <32.177418, 34.593765, 10.170774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169060, 34.380238, 10.061519>,  <32.155128, 34.024361, 9.879427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169060, 34.380238, 10.061519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356414, 0.436612, -0.826038,
		-0.933679, -0.133483, 0.332305,
		0.034826, 0.889693, 0.455230,
		32.179508, 34.647144, 10.198088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516966, 34.346668, 9.851690>,  <32.155128, 34.024361, 9.879427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516966, 34.346668, 9.851690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826401, 34.598289, 9.882293>,  <32.012062, 34.749264, 9.900655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826401, 34.598289, 9.882293>,  <31.516966, 34.346668, 9.851690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826401, 34.598289, 9.882293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308702, 0.479536, -0.821431,
		-0.553410, 0.611832, 0.565154,
		0.773589, 0.629052, 0.076507,
		32.058479, 34.787006, 9.905245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221619, 34.056473, 9.160079>,  <31.516966, 34.346668, 9.851690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221619, 34.056473, 9.160079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597191, 33.966957, 9.264637>,  <31.822535, 33.913246, 9.327372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597191, 33.966957, 9.264637>,  <31.221619, 34.056473, 9.160079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597191, 33.966957, 9.264637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037116, 0.689340, 0.723487,
		-0.342098, -0.689006, 0.638937,
		0.938931, -0.223788, 0.261395,
		31.878870, 33.899822, 9.343056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524849, 34.187340, 9.323202>,  <31.221619, 34.056473, 9.160079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524849, 34.187340, 9.323202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.166996, 34.293812, 9.466748>,  <29.952284, 34.357697, 9.552876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.166996, 34.293812, 9.466748>,  <30.524849, 34.187340, 9.323202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166996, 34.293812, 9.466748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376555, 0.016839, 0.926241,
		0.240504, 0.963776, -0.115296,
		-0.894631, 0.266180, 0.358865,
		29.898607, 34.373665, 9.574408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608088, 34.647186, 10.007972>,  <30.524849, 34.187340, 9.323202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608088, 34.647186, 10.007972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233971, 34.505810, 10.001014>,  <30.009501, 34.420982, 9.996839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233971, 34.505810, 10.001014>,  <30.608088, 34.647186, 10.007972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233971, 34.505810, 10.001014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080182, -0.259546, 0.962396,
		-0.344669, 0.898728, 0.271092,
		-0.935293, -0.353445, -0.017396,
		29.953382, 34.399776, 9.995795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450886, 34.848457, 10.721442>,  <30.608088, 34.647186, 10.007972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450886, 34.848457, 10.721442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188961, 34.580109, 10.582211>,  <30.031807, 34.419102, 10.498673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188961, 34.580109, 10.582211>,  <30.450886, 34.848457, 10.721442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188961, 34.580109, 10.582211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242421, -0.249781, 0.937466,
		-0.715858, 0.698245, 0.000928,
		-0.654812, -0.670868, -0.348076,
		29.992517, 34.378849, 10.477789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797125, 34.982265, 11.097947>,  <30.450886, 34.848457, 10.721442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797125, 34.982265, 11.097947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.774921, 34.609837, 10.953716>,  <29.761599, 34.386379, 10.867178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.774921, 34.609837, 10.953716>,  <29.797125, 34.982265, 11.097947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774921, 34.609837, 10.953716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237427, -0.338465, 0.910533,
		-0.969818, 0.136155, -0.202274,
		-0.055511, -0.931076, -0.360576,
		29.758268, 34.330513, 10.845543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247406, 34.663303, 11.532039>,  <29.797125, 34.982265, 11.097947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247406, 34.663303, 11.532039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446585, 34.364376, 11.356052>,  <29.566092, 34.185020, 11.250461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.446585, 34.364376, 11.356052>,  <29.247406, 34.663303, 11.532039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446585, 34.364376, 11.356052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098494, -0.552789, 0.827480,
		-0.861595, -0.368709, -0.348867,
		0.497949, -0.747313, -0.439965,
		29.595970, 34.140182, 11.224063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822397, 34.000240, 11.602278>,  <29.247406, 34.663303, 11.532039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822397, 34.000240, 11.602278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202042, 33.886456, 11.548214>,  <29.429829, 33.818184, 11.515776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202042, 33.886456, 11.548214>,  <28.822397, 34.000240, 11.602278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202042, 33.886456, 11.548214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044915, -0.547030, 0.835907,
		-0.311721, -0.787299, -0.531969,
		0.949111, -0.284463, -0.135159,
		29.486774, 33.801117, 11.507666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817142, 33.254318, 11.810330>,  <28.822397, 34.000240, 11.602278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817142, 33.254318, 11.810330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.210194, 33.327011, 11.825374>,  <29.446024, 33.370625, 11.834399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.210194, 33.327011, 11.825374>,  <28.817142, 33.254318, 11.810330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210194, 33.327011, 11.825374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041799, -0.414173, 0.909238,
		0.180812, -0.891871, -0.414575,
		0.982629, 0.181730, 0.037608,
		29.504982, 33.381531, 11.836656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139038, 32.674965, 12.108863>,  <28.817142, 33.254318, 11.810330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139038, 32.674965, 12.108863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434347, 32.940048, 12.159093>,  <29.611532, 33.099098, 12.189231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434347, 32.940048, 12.159093>,  <29.139038, 32.674965, 12.108863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434347, 32.940048, 12.159093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389209, -0.570608, 0.723134,
		0.550883, -0.484994, -0.679197,
		0.738271, 0.662712, 0.125575,
		29.655828, 33.138863, 12.196765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702194, 32.290821, 12.409846>,  <29.139038, 32.674965, 12.108863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702194, 32.290821, 12.409846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821226, 32.664719, 12.487519>,  <29.892645, 32.889057, 12.534123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821226, 32.664719, 12.487519>,  <29.702194, 32.290821, 12.409846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821226, 32.664719, 12.487519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599400, -0.341239, 0.724069,
		0.743080, -0.099074, -0.661828,
		0.297578, 0.934741, 0.194182,
		29.910500, 32.945141, 12.545774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492979, 32.305752, 12.503177>,  <29.702194, 32.290821, 12.409846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492979, 32.305752, 12.503177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296888, 32.583904, 12.713365>,  <30.179234, 32.750797, 12.839478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296888, 32.583904, 12.713365>,  <30.492979, 32.305752, 12.503177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296888, 32.583904, 12.713365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491891, -0.276967, 0.825429,
		0.719528, 0.663121, -0.206276,
		-0.490228, 0.695384, 0.525469,
		30.149820, 32.792519, 12.871005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076647, 32.564022, 12.977631>,  <30.492979, 32.305752, 12.503177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076647, 32.564022, 12.977631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726900, 32.673901, 13.137642>,  <30.517052, 32.739826, 13.233648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726900, 32.673901, 13.137642>,  <31.076647, 32.564022, 12.977631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726900, 32.673901, 13.137642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379566, -0.126459, 0.916481,
		0.302341, 0.953179, 0.006306,
		-0.874368, 0.274696, 0.400028,
		30.464590, 32.756310, 13.257650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237522, 33.151714, 13.546513>,  <31.076647, 32.564022, 12.977631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237522, 33.151714, 13.546513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.876547, 33.011078, 13.646102>,  <30.659962, 32.926697, 13.705855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.876547, 33.011078, 13.646102>,  <31.237522, 33.151714, 13.546513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876547, 33.011078, 13.646102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263813, 0.005895, 0.964556,
		-0.340598, 0.936135, 0.087435,
		-0.902439, -0.351592, 0.248973,
		30.605816, 32.905602, 13.720794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065571, 33.518703, 14.152681>,  <31.237522, 33.151714, 13.546513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065571, 33.518703, 14.152681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.815851, 33.207195, 14.177234>,  <30.666019, 33.020290, 14.191965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.815851, 33.207195, 14.177234>,  <31.065571, 33.518703, 14.152681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815851, 33.207195, 14.177234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187953, -0.073477, 0.979426,
		-0.758239, 0.622990, 0.192244,
		-0.624298, -0.778771, 0.061380,
		30.628561, 32.973564, 14.195647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629557, 33.685547, 14.765569>,  <31.065571, 33.518703, 14.152681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629557, 33.685547, 14.765569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586094, 33.292027, 14.708539>,  <30.560017, 33.055916, 14.674321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586094, 33.292027, 14.708539>,  <30.629557, 33.685547, 14.765569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586094, 33.292027, 14.708539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282894, -0.168096, 0.944307,
		-0.952977, 0.062271, 0.296576,
		-0.108656, -0.983802, -0.142575,
		30.553497, 32.996887, 14.665767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960720, 34.101032, 14.755621>,  <30.629557, 33.685547, 14.765569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960720, 34.101032, 14.755621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696857, 34.282108, 14.995597>,  <29.538540, 34.390755, 15.139583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696857, 34.282108, 14.995597>,  <29.960720, 34.101032, 14.755621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696857, 34.282108, 14.995597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431648, 0.425271, -0.795502,
		-0.615251, -0.783721, -0.085131,
		-0.659655, 0.452688, 0.599940,
		29.498960, 34.417915, 15.175579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307898, 33.908482, 14.424527>,  <29.960720, 34.101032, 14.755621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307898, 33.908482, 14.424527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.199148, 34.214321, 14.658270>,  <29.133898, 34.397823, 14.798515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.199148, 34.214321, 14.658270>,  <29.307898, 33.908482, 14.424527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199148, 34.214321, 14.658270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651291, 0.300839, -0.696646,
		-0.708452, -0.569988, 0.416185,
		-0.271875, 0.764598, 0.584358,
		29.117586, 34.443699, 14.833577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622274, 33.897419, 14.446083>,  <29.307898, 33.908482, 14.424527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622274, 33.897419, 14.446083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.721994, 34.272182, 14.544106>,  <28.781826, 34.497040, 14.602920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.721994, 34.272182, 14.544106>,  <28.622274, 33.897419, 14.446083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721994, 34.272182, 14.544106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627453, 0.349016, -0.696053,
		-0.737667, 0.019764, 0.674876,
		0.249300, 0.936908, 0.245057,
		28.796783, 34.553253, 14.617622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990145, 34.320148, 14.363831>,  <28.622274, 33.897419, 14.446083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990145, 34.320148, 14.363831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.298475, 34.574940, 14.360118>,  <28.483475, 34.727814, 14.357890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.298475, 34.574940, 14.360118>,  <27.990145, 34.320148, 14.363831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298475, 34.574940, 14.360118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426360, 0.505019, -0.750449,
		-0.473330, 0.582425, 0.660863,
		0.770828, 0.636975, -0.009282,
		28.529724, 34.766033, 14.357333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767792, 34.896759, 14.386622>,  <27.990145, 34.320148, 14.363831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767792, 34.896759, 14.386622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105438, 34.961086, 14.182034>,  <28.308027, 34.999683, 14.059280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105438, 34.961086, 14.182034>,  <27.767792, 34.896759, 14.386622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105438, 34.961086, 14.182034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520709, 0.473236, -0.710570,
		0.127776, 0.866133, 0.483206,
		0.844118, 0.160817, -0.511471,
		28.358673, 35.009331, 14.028592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783169, 35.642250, 14.195997>,  <27.767792, 34.896759, 14.386622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783169, 35.642250, 14.195997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.043119, 35.458447, 13.953837>,  <28.199089, 35.348164, 13.808541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.043119, 35.458447, 13.953837>,  <27.783169, 35.642250, 14.195997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043119, 35.458447, 13.953837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362416, 0.512794, -0.778265,
		0.668067, 0.725183, 0.166719,
		0.649877, -0.459512, -0.605399,
		28.238083, 35.320591, 13.772218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962112, 36.146378, 13.617357>,  <27.783169, 35.642250, 14.195997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962112, 36.146378, 13.617357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.087292, 35.805824, 13.448969>,  <28.162399, 35.601494, 13.347936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.087292, 35.805824, 13.448969>,  <27.962112, 36.146378, 13.617357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087292, 35.805824, 13.448969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250285, 0.353642, -0.901274,
		0.916199, 0.387416, -0.102416,
		0.312949, -0.851379, -0.420971,
		28.181177, 35.550411, 13.322678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330002, 36.874935, 13.383249>,  <27.962112, 36.146378, 13.617357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330002, 36.874935, 13.383249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212496, 37.256477, 13.408115>,  <28.141993, 37.485401, 13.423036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212496, 37.256477, 13.408115>,  <28.330002, 36.874935, 13.383249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212496, 37.256477, 13.408115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194887, -0.003903, 0.980818,
		0.935800, 0.300245, -0.184747,
		-0.293765, 0.953854, 0.062166,
		28.124367, 37.542633, 13.426765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864639, 37.160751, 13.704217>,  <28.330002, 36.874935, 13.383249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864639, 37.160751, 13.704217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.556404, 37.410019, 13.757661>,  <28.371464, 37.559582, 13.789727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.556404, 37.410019, 13.757661>,  <28.864639, 37.160751, 13.704217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556404, 37.410019, 13.757661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223387, 0.067752, 0.972372,
		0.596903, 0.779144, -0.191418,
		-0.770587, 0.623172, 0.133609,
		28.325228, 37.596970, 13.797744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059275, 37.830654, 14.070224>,  <28.864639, 37.160751, 13.704217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059275, 37.830654, 14.070224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.666882, 37.766251, 14.113577>,  <28.431446, 37.727608, 14.139588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.666882, 37.766251, 14.113577>,  <29.059275, 37.830654, 14.070224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666882, 37.766251, 14.113577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104005, 0.035401, 0.993946,
		-0.163871, 0.986318, -0.017982,
		-0.980984, -0.161009, 0.108383,
		28.372587, 37.717949, 14.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814850, 38.308453, 14.598333>,  <29.059275, 37.830654, 14.070224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814850, 38.308453, 14.598333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.564564, 37.997150, 14.577172>,  <28.414392, 37.810368, 14.564476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.564564, 37.997150, 14.577172>,  <28.814850, 38.308453, 14.598333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564564, 37.997150, 14.577172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172666, -0.204323, 0.963555,
		-0.760700, 0.593778, 0.262227,
		-0.625717, -0.778254, -0.052903,
		28.376848, 37.763676, 14.561301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405363, 38.430202, 15.211432>,  <28.814850, 38.308453, 14.598333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405363, 38.430202, 15.211432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.335239, 38.044640, 15.131281>,  <28.293165, 37.813301, 15.083191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.335239, 38.044640, 15.131281>,  <28.405363, 38.430202, 15.211432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335239, 38.044640, 15.131281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306872, -0.246888, 0.919171,
		-0.935466, 0.099649, 0.339078,
		-0.175309, -0.963907, -0.200376,
		28.282646, 37.755466, 15.071168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008175, 38.190090, 15.774787>,  <28.405363, 38.430202, 15.211432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008175, 38.190090, 15.774787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.183779, 37.873802, 15.604122>,  <28.289141, 37.684029, 15.501723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.183779, 37.873802, 15.604122>,  <28.008175, 38.190090, 15.774787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183779, 37.873802, 15.604122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165607, -0.395521, 0.903403,
		-0.883089, -0.467259, -0.042689,
		0.439008, -0.790716, -0.426662,
		28.315481, 37.636589, 15.476124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651321, 37.592949, 15.922659>,  <28.008175, 38.190090, 15.774787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651321, 37.592949, 15.922659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.021610, 37.465683, 15.840866>,  <28.243784, 37.389324, 15.791791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.021610, 37.465683, 15.840866>,  <27.651321, 37.592949, 15.922659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021610, 37.465683, 15.840866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000381, -0.539878, 0.841743,
		-0.378204, -0.779299, -0.499656,
		0.925723, -0.318160, -0.204481,
		28.299326, 37.370235, 15.779522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.159924, 38.199181, 10.438909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189268, 37.800308, 10.445330>,  <31.206875, 37.560986, 10.449183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189268, 37.800308, 10.445330>,  <31.159924, 38.199181, 10.438909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189268, 37.800308, 10.445330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316853, 0.038567, 0.947690,
		-0.945633, -0.064436, 0.318788,
		0.073360, -0.997176, 0.016054,
		31.211277, 37.501156, 10.450146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889038, 38.000523, 11.088287>,  <31.159924, 38.199181, 10.438909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889038, 38.000523, 11.088287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070776, 37.670307, 10.954386>,  <31.179819, 37.472179, 10.874044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070776, 37.670307, 10.954386>,  <30.889038, 38.000523, 11.088287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070776, 37.670307, 10.954386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318663, -0.200299, 0.926464,
		-0.831880, -0.527609, 0.172063,
		0.454347, -0.825536, -0.334754,
		31.207081, 37.422646, 10.853960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580223, 37.397984, 11.516261>,  <30.889038, 38.000523, 11.088287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580223, 37.397984, 11.516261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941275, 37.319096, 11.363231>,  <31.157906, 37.271763, 11.271412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941275, 37.319096, 11.363231>,  <30.580223, 37.397984, 11.516261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941275, 37.319096, 11.363231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325519, -0.268737, 0.906542,
		-0.281608, -0.942805, -0.178367,
		0.902626, -0.197228, -0.382579,
		31.212063, 37.259930, 11.248458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837168, 36.808102, 11.781096>,  <30.580223, 37.397984, 11.516261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837168, 36.808102, 11.781096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179056, 36.967258, 11.647748>,  <31.384190, 37.062752, 11.567739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179056, 36.967258, 11.647748>,  <30.837168, 36.808102, 11.781096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179056, 36.967258, 11.647748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392348, -0.074695, 0.916779,
		0.339878, -0.914387, -0.219955,
		0.854720, 0.397892, -0.333371,
		31.435472, 37.086624, 11.547737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392647, 36.323128, 12.191492>,  <30.837168, 36.808102, 11.781096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392647, 36.323128, 12.191492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604055, 36.613396, 12.015281>,  <31.730902, 36.787556, 11.909554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604055, 36.613396, 12.015281>,  <31.392647, 36.323128, 12.191492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604055, 36.613396, 12.015281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650274, -0.012486, 0.759597,
		0.545718, -0.687928, -0.478485,
		0.528523, 0.725672, -0.440527,
		31.762611, 36.831097, 11.883122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119556, 36.129303, 12.173112>,  <31.392647, 36.323128, 12.191492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119556, 36.129303, 12.173112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088329, 36.527905, 12.185007>,  <32.069592, 36.767067, 12.192144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088329, 36.527905, 12.185007>,  <32.119556, 36.129303, 12.173112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088329, 36.527905, 12.185007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572223, 0.020363, 0.819845,
		0.816374, 0.081022, -0.571813,
		-0.078069, 0.996504, 0.029739,
		32.064907, 36.826855, 12.193929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783298, 36.477123, 12.118897>,  <32.119556, 36.129303, 12.173112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783298, 36.477123, 12.118897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555508, 36.735851, 12.321804>,  <32.418831, 36.891087, 12.443548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555508, 36.735851, 12.321804>,  <32.783298, 36.477123, 12.118897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555508, 36.735851, 12.321804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642939, -0.034014, 0.765161,
		0.512173, 0.761886, -0.396494,
		-0.569480, 0.646817, 0.507268,
		32.384663, 36.929897, 12.473985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231781, 36.907211, 12.468985>,  <32.783298, 36.477123, 12.118897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231781, 36.907211, 12.468985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900993, 37.027889, 12.658763>,  <32.702518, 37.100296, 12.772630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900993, 37.027889, 12.658763>,  <33.231781, 36.907211, 12.468985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900993, 37.027889, 12.658763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556257, 0.316193, 0.768505,
		0.081839, 0.899445, -0.429303,
		-0.826971, 0.301697, 0.474445,
		32.652901, 37.118397, 12.801097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306568, 37.600899, 12.667200>,  <33.231781, 36.907211, 12.468985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306568, 37.600899, 12.667200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.005566, 37.468628, 12.895021>,  <32.824966, 37.389267, 13.031714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.005566, 37.468628, 12.895021>,  <33.306568, 37.600899, 12.667200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005566, 37.468628, 12.895021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456290, 0.361839, 0.812940,
		-0.474908, 0.871622, -0.121401,
		-0.752504, -0.330678, 0.569552,
		32.779816, 37.369423, 13.065887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037346, 38.160961, 13.128141>,  <33.306568, 37.600899, 12.667200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037346, 38.160961, 13.128141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943081, 37.822952, 13.320140>,  <32.886524, 37.620148, 13.435339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943081, 37.822952, 13.320140>,  <33.037346, 38.160961, 13.128141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943081, 37.822952, 13.320140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359685, 0.382996, 0.850847,
		-0.902824, 0.373158, 0.213686,
		-0.235660, -0.845025, 0.479997,
		32.872383, 37.569447, 13.464139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943611, 38.389664, 13.724001>,  <33.037346, 38.160961, 13.128141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943611, 38.389664, 13.724001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947884, 37.999649, 13.812708>,  <32.950447, 37.765640, 13.865932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947884, 37.999649, 13.812708>,  <32.943611, 38.389664, 13.724001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947884, 37.999649, 13.812708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302998, 0.214509, 0.928535,
		-0.952931, 0.057278, 0.297727,
		0.010680, -0.975041, 0.221768,
		32.951088, 37.707138, 13.879238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478111, 38.282345, 14.314211>,  <32.943611, 38.389664, 13.724001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478111, 38.282345, 14.314211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.761234, 37.999786, 14.315136>,  <32.931107, 37.830250, 14.315691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.761234, 37.999786, 14.315136>,  <32.478111, 38.282345, 14.314211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761234, 37.999786, 14.315136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296174, 0.299734, 0.906885,
		-0.641317, -0.641216, 0.421371,
		0.707809, -0.706400, 0.002313,
		32.973576, 37.787865, 14.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713383, 38.385105, 14.291547>,  <32.478111, 38.282345, 14.314211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713383, 38.385105, 14.291547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399971, 38.537197, 14.488121>,  <31.211924, 38.628452, 14.606066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399971, 38.537197, 14.488121>,  <31.713383, 38.385105, 14.291547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399971, 38.537197, 14.488121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445608, 0.207342, -0.870886,
		-0.433033, -0.901351, 0.006975,
		-0.783528, 0.380230, 0.491436,
		31.164913, 38.651268, 14.635551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029417, 37.985897, 14.009896>,  <31.713383, 38.385105, 14.291547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029417, 37.985897, 14.009896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947029, 38.341896, 14.172612>,  <30.897596, 38.555496, 14.270242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947029, 38.341896, 14.172612>,  <31.029417, 37.985897, 14.009896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947029, 38.341896, 14.172612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439057, 0.287460, -0.851232,
		-0.874532, -0.353931, 0.331553,
		-0.205969, 0.890000, 0.406789,
		30.885239, 38.608894, 14.294649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314255, 38.176167, 13.871883>,  <31.029417, 37.985897, 14.009896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314255, 38.176167, 13.871883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477137, 38.535763, 13.936386>,  <30.574865, 38.751522, 13.975087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477137, 38.535763, 13.936386>,  <30.314255, 38.176167, 13.871883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477137, 38.535763, 13.936386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402842, 0.335237, -0.851666,
		-0.819698, 0.281840, 0.498660,
		0.407202, 0.898990, 0.161256,
		30.599297, 38.805458, 13.984763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771242, 38.601280, 13.753581>,  <30.314255, 38.176167, 13.871883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771242, 38.601280, 13.753581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115343, 38.802776, 13.722055>,  <30.321804, 38.923676, 13.703140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115343, 38.802776, 13.722055>,  <29.771242, 38.601280, 13.753581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115343, 38.802776, 13.722055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370910, 0.512214, -0.774637,
		-0.349849, 0.695615, 0.627476,
		0.860251, 0.503743, -0.078813,
		30.373419, 38.953899, 13.698411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494274, 39.237083, 13.627724>,  <29.771242, 38.601280, 13.753581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494274, 39.237083, 13.627724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876427, 39.292988, 13.523636>,  <30.105719, 39.326530, 13.461184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876427, 39.292988, 13.523636>,  <29.494274, 39.237083, 13.627724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876427, 39.292988, 13.523636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294202, 0.371718, -0.880495,
		-0.026332, 0.917764, 0.396251,
		0.955380, 0.139763, -0.260220,
		30.163040, 39.334915, 13.445570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592386, 39.942707, 13.429822>,  <29.494274, 39.237083, 13.627724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592386, 39.942707, 13.429822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870699, 39.722767, 13.244976>,  <30.037687, 39.590801, 13.134068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870699, 39.722767, 13.244976>,  <29.592386, 39.942707, 13.429822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870699, 39.722767, 13.244976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345439, 0.307916, -0.886487,
		0.629729, 0.776435, 0.024302,
		0.695783, -0.549852, -0.462114,
		30.079433, 39.557812, 13.106341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948311, 40.451950, 13.073428>,  <29.592386, 39.942707, 13.429822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948311, 40.451950, 13.073428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030350, 40.098728, 12.904593>,  <30.079573, 39.886795, 12.803292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030350, 40.098728, 12.904593>,  <29.948311, 40.451950, 13.073428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030350, 40.098728, 12.904593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286515, 0.358193, -0.888598,
		0.935866, 0.303182, -0.179543,
		0.205096, -0.883051, -0.422087,
		30.091879, 39.833813, 12.777967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255356, 40.646595, 12.364758>,  <29.948311, 40.451950, 13.073428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255356, 40.646595, 12.364758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123514, 40.270515, 12.330400>,  <30.044409, 40.044868, 12.309786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123514, 40.270515, 12.330400>,  <30.255356, 40.646595, 12.364758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123514, 40.270515, 12.330400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177971, 0.151222, -0.972347,
		0.927193, -0.305204, -0.217172,
		-0.329605, -0.940204, -0.085894,
		30.024633, 39.988453, 12.304632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607748, 40.449848, 11.832525>,  <30.255356, 40.646595, 12.364758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607748, 40.449848, 11.832525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292681, 40.203415, 11.830762>,  <30.103642, 40.055553, 11.829704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292681, 40.203415, 11.830762>,  <30.607748, 40.449848, 11.832525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292681, 40.203415, 11.830762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172007, 0.226770, -0.958639,
		0.591604, -0.754330, -0.284590,
		-0.787666, -0.616086, -0.004409,
		30.056381, 40.018589, 11.829439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450447, 40.441391, 11.164516>,  <30.607748, 40.449848, 11.832525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450447, 40.441391, 11.164516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.153023, 40.189774, 11.255222>,  <29.974569, 40.038803, 11.309646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.153023, 40.189774, 11.255222>,  <30.450447, 40.441391, 11.164516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153023, 40.189774, 11.255222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439858, 0.204712, -0.874424,
		0.503631, -0.749930, -0.428906,
		-0.743559, -0.629045, 0.226764,
		29.929955, 40.001060, 11.323252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386097, 39.876736, 10.580575>,  <30.450447, 40.441391, 11.164516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386097, 39.876736, 10.580575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027033, 39.899826, 10.755331>,  <29.811594, 39.913681, 10.860185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027033, 39.899826, 10.755331>,  <30.386097, 39.876736, 10.580575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027033, 39.899826, 10.755331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440007, -0.172396, -0.881291,
		0.024448, -0.983335, 0.180152,
		-0.897661, 0.057722, 0.436889,
		29.757734, 39.917145, 10.886397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095896, 39.364399, 10.260277>,  <30.386097, 39.876736, 10.580575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095896, 39.364399, 10.260277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805534, 39.594963, 10.410378>,  <29.631317, 39.733299, 10.500440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805534, 39.594963, 10.410378>,  <30.095896, 39.364399, 10.260277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805534, 39.594963, 10.410378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424865, 0.053263, -0.903689,
		-0.540880, -0.815425, 0.206231,
		-0.725906, 0.576408, 0.375254,
		29.587763, 39.767887, 10.522955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350140, 39.045986, 10.313133>,  <30.095896, 39.364399, 10.260277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350140, 39.045986, 10.313133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359539, 39.438034, 10.234330>,  <29.365179, 39.673264, 10.187048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359539, 39.438034, 10.234330>,  <29.350140, 39.045986, 10.313133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359539, 39.438034, 10.234330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455923, -0.164871, -0.874615,
		-0.889709, 0.110371, 0.442986,
		0.023496, 0.980120, -0.197008,
		29.366589, 39.732071, 10.175228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668962, 39.017227, 10.500047>,  <29.350140, 39.045986, 10.313133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668962, 39.017227, 10.500047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275808, 38.946449, 10.520538>,  <28.039915, 38.903984, 10.532833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275808, 38.946449, 10.520538>,  <28.668962, 39.017227, 10.500047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275808, 38.946449, 10.520538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121686, -0.414876, 0.901704,
		-0.138298, 0.892507, 0.429308,
		-0.982887, -0.176945, 0.051229,
		27.980942, 38.893368, 10.535907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460283, 39.134827, 11.195485>,  <28.668962, 39.017227, 10.500047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460283, 39.134827, 11.195485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158901, 38.915676, 11.050082>,  <27.978071, 38.784187, 10.962840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158901, 38.915676, 11.050082>,  <28.460283, 39.134827, 11.195485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158901, 38.915676, 11.050082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077791, -0.474701, 0.876703,
		-0.652881, 0.688834, 0.315046,
		-0.753456, -0.547874, -0.363508,
		27.932865, 38.751312, 10.941030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879761, 39.298656, 11.581883>,  <28.460283, 39.134827, 11.195485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879761, 39.298656, 11.581883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846115, 38.931396, 11.427006>,  <27.825928, 38.711040, 11.334079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846115, 38.931396, 11.427006>,  <27.879761, 39.298656, 11.581883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846115, 38.931396, 11.427006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111819, -0.377419, 0.919267,
		-0.990162, 0.120621, -0.070920,
		-0.084116, -0.918153, -0.387194,
		27.820881, 38.655949, 11.310847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294638, 38.915031, 11.853757>,  <27.879761, 39.298656, 11.581883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294638, 38.915031, 11.853757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530180, 38.623409, 11.714197>,  <27.671505, 38.448437, 11.630461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530180, 38.623409, 11.714197>,  <27.294638, 38.915031, 11.853757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530180, 38.623409, 11.714197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014127, -0.440898, 0.897446,
		-0.808114, -0.523538, -0.269925,
		0.588856, -0.729052, -0.348900,
		27.706837, 38.404694, 11.609527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994738, 38.472824, 12.170994>,  <27.294638, 38.915031, 11.853757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994738, 38.472824, 12.170994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345131, 38.310986, 12.065959>,  <27.555367, 38.213882, 12.002938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345131, 38.310986, 12.065959>,  <26.994738, 38.472824, 12.170994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345131, 38.310986, 12.065959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028866, -0.499455, 0.865859,
		-0.481463, -0.766064, -0.425839,
		0.875991, -0.404587, -0.262583,
		27.607927, 38.189606, 11.987183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966881, 37.777016, 12.231492>,  <26.994738, 38.472824, 12.170994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966881, 37.777016, 12.231492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361511, 37.835316, 12.260951>,  <27.598289, 37.870296, 12.278626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361511, 37.835316, 12.260951>,  <26.966881, 37.777016, 12.231492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361511, 37.835316, 12.260951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015815, -0.363593, 0.931423,
		0.162532, -0.920085, -0.356408,
		0.986576, 0.145749, 0.073647,
		27.657484, 37.879040, 12.283045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159241, 37.204651, 12.548244>,  <26.966881, 37.777016, 12.231492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159241, 37.204651, 12.548244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451111, 37.473560, 12.598235>,  <27.626232, 37.634907, 12.628230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451111, 37.473560, 12.598235>,  <27.159241, 37.204651, 12.548244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451111, 37.473560, 12.598235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216380, -0.400388, 0.890432,
		0.648657, -0.622682, -0.437620,
		0.729674, 0.672277, 0.124979,
		27.670013, 37.675243, 12.635729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768288, 36.935814, 12.880823>,  <27.159241, 37.204651, 12.548244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768288, 36.935814, 12.880823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818785, 37.324688, 12.959728>,  <27.849083, 37.558014, 13.007071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818785, 37.324688, 12.959728>,  <27.768288, 36.935814, 12.880823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818785, 37.324688, 12.959728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397144, -0.231754, 0.888013,
		0.909032, -0.033764, -0.415357,
		0.126244, 0.972188, 0.197262,
		27.856657, 37.616344, 13.018907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275040, 36.358677, 12.890003>,  <27.768288, 36.935814, 12.880823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275040, 36.358677, 12.890003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242693, 35.960304, 12.874081>,  <28.223286, 35.721283, 12.864527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242693, 35.960304, 12.874081>,  <28.275040, 36.358677, 12.890003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242693, 35.960304, 12.874081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372771, 0.067260, -0.925483,
		0.924393, -0.060001, -0.376693,
		-0.080866, -0.995930, -0.039808,
		28.218433, 35.661526, 12.862139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694029, 36.175503, 12.301542>,  <28.275040, 36.358677, 12.890003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694029, 36.175503, 12.301542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413481, 35.899086, 12.371449>,  <28.245152, 35.733234, 12.413392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413481, 35.899086, 12.371449>,  <28.694029, 36.175503, 12.301542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413481, 35.899086, 12.371449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349817, 0.120076, -0.929091,
		0.621056, -0.712771, -0.325956,
		-0.701369, -0.691043, 0.174765,
		28.203070, 35.691772, 12.423878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464327, 36.065784, 11.628290>,  <28.694029, 36.175503, 12.301542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464327, 36.065784, 11.628290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197334, 35.857464, 11.841169>,  <28.037138, 35.732471, 11.968897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197334, 35.857464, 11.841169>,  <28.464327, 36.065784, 11.628290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197334, 35.857464, 11.841169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472447, -0.256234, -0.843290,
		0.575552, -0.814317, -0.075018,
		-0.667483, -0.520799, 0.532197,
		27.997089, 35.701225, 12.000829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262701, 35.237309, 11.371936>,  <28.464327, 36.065784, 11.628290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262701, 35.237309, 11.371936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948004, 35.398365, 11.559088>,  <27.759186, 35.494999, 11.671379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948004, 35.398365, 11.559088>,  <28.262701, 35.237309, 11.371936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948004, 35.398365, 11.559088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587423, -0.255489, -0.767893,
		-0.189648, -0.878979, 0.437526,
		-0.786745, 0.402642, 0.467880,
		27.711981, 35.519157, 11.699451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697746, 34.794361, 11.218903>,  <28.262701, 35.237309, 11.371936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697746, 34.794361, 11.218903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522923, 35.141354, 11.313946>,  <27.418028, 35.349548, 11.370972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522923, 35.141354, 11.313946>,  <27.697746, 34.794361, 11.218903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522923, 35.141354, 11.313946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617082, -0.097009, -0.780896,
		-0.654363, -0.487920, 0.577706,
		-0.437057, 0.867481, 0.237608,
		27.391806, 35.401596, 11.385228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045490, 34.694790, 11.070625>,  <27.697746, 34.794361, 11.218903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045490, 34.694790, 11.070625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053524, 35.093571, 11.100799>,  <27.058344, 35.332840, 11.118902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053524, 35.093571, 11.100799>,  <27.045490, 34.694790, 11.070625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053524, 35.093571, 11.100799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622671, 0.071503, -0.779210,
		-0.782226, -0.031320, 0.622207,
		0.020085, 0.996949, 0.075433,
		27.059549, 35.392654, 11.123428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282555, 34.970840, 10.859246>,  <27.045490, 34.694790, 11.070625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282555, 34.970840, 10.859246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535780, 35.280163, 10.845239>,  <26.687716, 35.465755, 10.836834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535780, 35.280163, 10.845239>,  <26.282555, 34.970840, 10.859246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535780, 35.280163, 10.845239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524632, 0.395346, -0.753965,
		-0.569201, 0.495681, 0.655981,
		0.633065, 0.773306, -0.035018,
		26.725700, 35.512154, 10.834733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804037, 35.547638, 10.652076>,  <26.282555, 34.970840, 10.859246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804037, 35.547638, 10.652076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183311, 35.642120, 10.567079>,  <26.410875, 35.698811, 10.516080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183311, 35.642120, 10.567079>,  <25.804037, 35.547638, 10.652076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183311, 35.642120, 10.567079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297974, 0.429008, -0.852739,
		-0.110261, 0.871871, 0.477162,
		0.948184, 0.236206, -0.212493,
		26.467768, 35.712982, 10.503331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612091, 36.193264, 10.542021>,  <25.804037, 35.547638, 10.652076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612091, 36.193264, 10.542021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986914, 36.156712, 10.407216>,  <26.211807, 36.134781, 10.326333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986914, 36.156712, 10.407216>,  <25.612091, 36.193264, 10.542021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986914, 36.156712, 10.407216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325071, -0.580716, -0.746390,
		-0.127503, 0.808962, -0.573868,
		0.937055, -0.091381, -0.337013,
		26.268030, 36.129299, 10.306112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.171497, 33.545731, 24.966679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443695, 33.328514, 24.769890>,  <33.607014, 33.198185, 24.651817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443695, 33.328514, 24.769890>,  <33.171497, 33.545731, 24.966679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443695, 33.328514, 24.769890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473489, 0.186532, -0.860822,
		0.559228, 0.818728, -0.130188,
		0.680494, -0.543038, -0.491973,
		33.647842, 33.165604, 24.622297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496677, 34.006931, 24.500631>,  <33.171497, 33.545731, 24.966679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496677, 34.006931, 24.500631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502258, 33.619606, 24.400900>,  <33.505608, 33.387211, 24.341061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502258, 33.619606, 24.400900>,  <33.496677, 34.006931, 24.500631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502258, 33.619606, 24.400900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473581, 0.213213, -0.854553,
		0.880640, 0.130002, -0.455602,
		0.013953, -0.968318, -0.249330,
		33.506443, 33.329109, 24.326101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611881, 34.004429, 23.734091>,  <33.496677, 34.006931, 24.500631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611881, 34.004429, 23.734091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483166, 33.640522, 23.838993>,  <33.405937, 33.422176, 23.901934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483166, 33.640522, 23.838993>,  <33.611881, 34.004429, 23.734091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483166, 33.640522, 23.838993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591468, -0.023135, -0.805996,
		0.739335, -0.414476, -0.530653,
		-0.321790, -0.909766, 0.262254,
		33.386627, 33.367592, 23.917669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698475, 33.565048, 22.999168>,  <33.611881, 34.004429, 23.734091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698475, 33.565048, 22.999168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433430, 33.411053, 23.256144>,  <33.274403, 33.318657, 23.410328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433430, 33.411053, 23.256144>,  <33.698475, 33.565048, 22.999168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433430, 33.411053, 23.256144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707762, 0.041306, -0.705243,
		0.244973, -0.921997, -0.299850,
		-0.662617, -0.384988, 0.642435,
		33.234646, 33.295555, 23.448874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471691, 32.975792, 22.652636>,  <33.698475, 33.565048, 22.999168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471691, 32.975792, 22.652636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197891, 33.085388, 22.922859>,  <33.033611, 33.151146, 23.084993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197891, 33.085388, 22.922859>,  <33.471691, 32.975792, 22.652636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197891, 33.085388, 22.922859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712431, -0.054915, -0.699591,
		-0.154588, -0.960161, 0.232794,
		-0.684504, 0.273998, 0.675559,
		32.992538, 33.167587, 23.125526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874290, 32.599163, 22.347271>,  <33.471691, 32.975792, 22.652636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874290, 32.599163, 22.347271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717632, 32.849674, 22.616905>,  <32.623638, 32.999981, 22.778687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717632, 32.849674, 22.616905>,  <32.874290, 32.599163, 22.347271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717632, 32.849674, 22.616905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851114, 0.031780, -0.524019,
		-0.349604, -0.778951, 0.520588,
		-0.391641, 0.626279, 0.674087,
		32.600140, 33.037560, 22.819132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250568, 32.336269, 22.443300>,  <32.874290, 32.599163, 22.347271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250568, 32.336269, 22.443300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241943, 32.727448, 22.526398>,  <32.236767, 32.962154, 22.576256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241943, 32.727448, 22.526398>,  <32.250568, 32.336269, 22.443300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241943, 32.727448, 22.526398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897504, 0.072615, -0.434987,
		-0.440479, -0.195829, 0.876144,
		-0.021562, 0.977946, 0.207743,
		32.235474, 33.020832, 22.588720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610378, 32.466949, 22.566679>,  <32.250568, 32.336269, 22.443300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610378, 32.466949, 22.566679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722944, 32.833561, 22.452986>,  <31.790483, 33.053528, 22.384769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722944, 32.833561, 22.452986>,  <31.610378, 32.466949, 22.566679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722944, 32.833561, 22.452986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773661, 0.041477, -0.632241,
		-0.567675, 0.397821, 0.720752,
		0.281413, 0.916525, -0.284233,
		31.807367, 33.108517, 22.367716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014849, 32.661137, 22.296484>,  <31.610378, 32.466949, 22.566679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014849, 32.661137, 22.296484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243122, 32.961315, 22.163126>,  <31.380087, 33.141422, 22.083111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243122, 32.961315, 22.163126>,  <31.014849, 32.661137, 22.296484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243122, 32.961315, 22.163126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610916, 0.116697, -0.783048,
		-0.548728, 0.650549, 0.525056,
		0.570683, 0.750445, -0.333396,
		31.414328, 33.186447, 22.063107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606764, 33.171768, 22.097494>,  <31.014849, 32.661137, 22.296484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606764, 33.171768, 22.097494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933329, 33.263142, 21.885345>,  <31.129267, 33.317966, 21.758057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933329, 33.263142, 21.885345>,  <30.606764, 33.171768, 22.097494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933329, 33.263142, 21.885345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575346, 0.243033, -0.780969,
		-0.049500, 0.942738, 0.329842,
		0.816411, 0.228431, -0.530370,
		31.178251, 33.331673, 21.726234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489641, 33.847828, 21.730417>,  <30.606764, 33.171768, 22.097494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489641, 33.847828, 21.730417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791553, 33.685619, 21.524172>,  <30.972700, 33.588295, 21.400425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791553, 33.685619, 21.524172>,  <30.489641, 33.847828, 21.730417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791553, 33.685619, 21.524172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419708, 0.305535, -0.854689,
		0.504134, 0.861510, 0.060410,
		0.754781, -0.405524, -0.515613,
		31.017988, 33.563961, 21.369488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689121, 34.329773, 21.307430>,  <30.489641, 33.847828, 21.730417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689121, 34.329773, 21.307430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825811, 34.005966, 21.116470>,  <30.907825, 33.811684, 21.001894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825811, 34.005966, 21.116470>,  <30.689121, 34.329773, 21.307430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825811, 34.005966, 21.116470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350049, 0.361792, -0.864044,
		0.872176, 0.462378, -0.159737,
		0.341723, -0.809514, -0.477402,
		30.928328, 33.763111, 20.973249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702629, 35.031853, 21.076574>,  <30.689121, 34.329773, 21.307430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702629, 35.031853, 21.076574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450214, 35.340729, 21.106306>,  <30.298765, 35.526054, 21.124146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450214, 35.340729, 21.106306>,  <30.702629, 35.031853, 21.076574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450214, 35.340729, 21.106306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118767, 0.001482, 0.992921,
		0.766609, 0.635395, -0.092646,
		-0.631034, 0.772186, 0.074328,
		30.260904, 35.572384, 21.128605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070301, 35.520370, 21.502380>,  <30.702629, 35.031853, 21.076574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070301, 35.520370, 21.502380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687197, 35.630562, 21.535370>,  <30.457335, 35.696678, 21.555164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687197, 35.630562, 21.535370>,  <31.070301, 35.520370, 21.502380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687197, 35.630562, 21.535370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078705, -0.024737, 0.996591,
		0.276579, 0.960989, 0.002011,
		-0.957763, 0.275478, 0.082476,
		30.399868, 35.713203, 21.560112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164076, 36.128601, 21.935303>,  <31.070301, 35.520370, 21.502380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164076, 36.128601, 21.935303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785982, 35.999462, 21.954479>,  <30.559126, 35.921978, 21.965986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785982, 35.999462, 21.954479>,  <31.164076, 36.128601, 21.935303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785982, 35.999462, 21.954479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027355, 0.068013, 0.997309,
		-0.325238, 0.944005, -0.055457,
		-0.945237, -0.322845, 0.047943,
		30.502411, 35.902607, 21.968863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747511, 36.648697, 22.173304>,  <31.164076, 36.128601, 21.935303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747511, 36.648697, 22.173304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557760, 36.306992, 22.258347>,  <30.443911, 36.101967, 22.309372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557760, 36.306992, 22.258347>,  <30.747511, 36.648697, 22.173304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557760, 36.306992, 22.258347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037078, 0.221906, 0.974363,
		-0.879541, 0.470098, -0.073593,
		-0.474376, -0.854263, 0.212606,
		30.415447, 36.050713, 22.322128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231144, 36.801414, 22.593512>,  <30.747511, 36.648697, 22.173304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231144, 36.801414, 22.593512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287876, 36.410042, 22.653589>,  <30.321915, 36.175217, 22.689636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287876, 36.410042, 22.653589>,  <30.231144, 36.801414, 22.593512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287876, 36.410042, 22.653589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133371, 0.131456, 0.982309,
		-0.980865, -0.159353, -0.111850,
		0.141831, -0.978430, 0.150194,
		30.330425, 36.116512, 22.698647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711432, 36.617874, 22.972229>,  <30.231144, 36.801414, 22.593512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711432, 36.617874, 22.972229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961519, 36.314632, 23.046398>,  <30.111572, 36.132687, 23.090900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961519, 36.314632, 23.046398>,  <29.711432, 36.617874, 22.972229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961519, 36.314632, 23.046398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230217, 0.047867, 0.971961,
		-0.745722, -0.650376, -0.144601,
		0.625219, -0.758103, 0.185424,
		30.149084, 36.087200, 23.102026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333748, 36.187050, 23.442987>,  <29.711432, 36.617874, 22.972229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333748, 36.187050, 23.442987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.724054, 36.115135, 23.492876>,  <29.958239, 36.071987, 23.522810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.724054, 36.115135, 23.492876>,  <29.333748, 36.187050, 23.442987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724054, 36.115135, 23.492876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089974, 0.189900, 0.977672,
		-0.199460, -0.965201, 0.169121,
		0.975766, -0.179790, 0.124721,
		30.016785, 36.061199, 23.530293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410748, 35.699368, 23.959616>,  <29.333748, 36.187050, 23.442987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410748, 35.699368, 23.959616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.763763, 35.886688, 23.942526>,  <29.975573, 35.999081, 23.932272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.763763, 35.886688, 23.942526>,  <29.410748, 35.699368, 23.959616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763763, 35.886688, 23.942526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027646, 0.142376, 0.989427,
		0.469429, -0.872025, 0.138599,
		0.882538, 0.468297, -0.042727,
		30.028524, 36.027176, 23.929708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645430, 35.650455, 24.550749>,  <29.410748, 35.699368, 23.959616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645430, 35.650455, 24.550749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.919197, 35.919739, 24.438776>,  <30.083458, 36.081306, 24.371592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.919197, 35.919739, 24.438776>,  <29.645430, 35.650455, 24.550749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919197, 35.919739, 24.438776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144790, 0.250802, 0.957149,
		0.714567, -0.695623, 0.074180,
		0.684420, 0.673207, -0.279934,
		30.124523, 36.121700, 24.354795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189247, 35.529270, 24.947964>,  <29.645430, 35.650455, 24.550749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189247, 35.529270, 24.947964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.221233, 35.918133, 24.859852>,  <30.240425, 36.151451, 24.806984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.221233, 35.918133, 24.859852>,  <30.189247, 35.529270, 24.947964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221233, 35.918133, 24.859852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226307, 0.197510, 0.953821,
		0.970768, -0.126126, -0.204211,
		0.079968, 0.972153, -0.220280,
		30.245224, 36.209778, 24.793768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644688, 35.752979, 25.411615>,  <30.189247, 35.529270, 24.947964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644688, 35.752979, 25.411615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487431, 36.095383, 25.277334>,  <30.393076, 36.300823, 25.196766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487431, 36.095383, 25.277334>,  <30.644688, 35.752979, 25.411615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487431, 36.095383, 25.277334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074247, 0.393465, 0.916337,
		0.916475, 0.335325, -0.218243,
		-0.393141, 0.856004, -0.335704,
		30.369488, 36.352184, 25.176622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098820, 36.285213, 25.689299>,  <30.644688, 35.752979, 25.411615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098820, 36.285213, 25.689299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.752790, 36.463459, 25.597141>,  <30.545174, 36.570408, 25.541847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.752790, 36.463459, 25.597141>,  <31.098820, 36.285213, 25.689299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752790, 36.463459, 25.597141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053448, 0.374786, 0.925569,
		0.498794, 0.812997, -0.300399,
		-0.865071, 0.445613, -0.230394,
		30.493269, 36.597141, 25.528023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220041, 37.024410, 25.834478>,  <31.098820, 36.285213, 25.689299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220041, 37.024410, 25.834478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825079, 36.961475, 25.827902>,  <30.588100, 36.923714, 25.823956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825079, 36.961475, 25.827902>,  <31.220041, 37.024410, 25.834478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825079, 36.961475, 25.827902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068551, 0.331903, 0.940819,
		-0.142572, 0.930099, -0.338510,
		-0.987408, -0.157339, -0.016440,
		30.528856, 36.914272, 25.822969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871929, 37.710766, 25.984285>,  <31.220041, 37.024410, 25.834478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871929, 37.710766, 25.984285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.612923, 37.422806, 26.084255>,  <30.457518, 37.250031, 26.144238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.612923, 37.422806, 26.084255>,  <30.871929, 37.710766, 25.984285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612923, 37.422806, 26.084255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148419, 0.440821, 0.885239,
		-0.747457, 0.536114, -0.392287,
		-0.647518, -0.719901, 0.249926,
		30.418667, 37.206837, 26.159233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528519, 37.907028, 25.703447>,  <30.871929, 37.710766, 25.984285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528519, 37.907028, 25.703447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836407, 38.142365, 25.802557>,  <32.021141, 38.283566, 25.862022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836407, 38.142365, 25.802557>,  <31.528519, 37.907028, 25.703447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836407, 38.142365, 25.802557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043679, 0.338678, -0.939888,
		-0.636887, 0.734272, 0.234989,
		0.769718, 0.588339, 0.247772,
		32.067322, 38.318867, 25.876888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312733, 38.556717, 25.593040>,  <31.528519, 37.907028, 25.703447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312733, 38.556717, 25.593040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711098, 38.543911, 25.559261>,  <31.950117, 38.536228, 25.538994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711098, 38.543911, 25.559261>,  <31.312733, 38.556717, 25.593040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711098, 38.543911, 25.559261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064861, 0.397107, -0.915478,
		0.062844, 0.917214, 0.393407,
		0.995914, -0.032016, -0.084447,
		32.009872, 38.534306, 25.533928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455463, 39.104351, 25.115044>,  <31.312733, 38.556717, 25.593040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455463, 39.104351, 25.115044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763748, 38.849991, 25.098839>,  <31.948719, 38.697376, 25.089117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763748, 38.849991, 25.098839>,  <31.455463, 39.104351, 25.115044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763748, 38.849991, 25.098839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179685, 0.277897, -0.943656,
		0.611325, 0.720006, 0.328439,
		0.770711, -0.635896, -0.040511,
		31.994961, 38.659222, 25.086685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097504, 39.495537, 24.795843>,  <31.455463, 39.104351, 25.115044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097504, 39.495537, 24.795843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129330, 39.099895, 24.746281>,  <32.148426, 38.862511, 24.716543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129330, 39.099895, 24.746281>,  <32.097504, 39.495537, 24.795843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129330, 39.099895, 24.746281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159463, 0.135330, -0.977884,
		0.983992, 0.058049, 0.168492,
		0.079567, -0.989099, -0.123907,
		32.153198, 38.803165, 24.709108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651802, 39.418106, 24.340559>,  <32.097504, 39.495537, 24.795843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651802, 39.418106, 24.340559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466633, 39.063751, 24.328537>,  <32.355530, 38.851139, 24.321323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466633, 39.063751, 24.328537>,  <32.651802, 39.418106, 24.340559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466633, 39.063751, 24.328537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113407, -0.025564, -0.993220,
		0.879113, -0.463195, 0.112300,
		-0.462925, -0.885888, -0.030056,
		32.327755, 38.797985, 24.319521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126652, 38.999023, 23.968912>,  <32.651802, 39.418106, 24.340559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126652, 38.999023, 23.968912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761883, 38.841282, 23.923523>,  <32.543022, 38.746639, 23.896290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761883, 38.841282, 23.923523>,  <33.126652, 38.999023, 23.968912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761883, 38.841282, 23.923523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148800, -0.060079, -0.987040,
		0.382423, -0.916994, 0.113467,
		-0.911927, -0.394351, -0.113474,
		32.488304, 38.722977, 23.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116184, 38.689960, 23.251776>,  <33.126652, 38.999023, 23.968912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116184, 38.689960, 23.251776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725899, 38.678928, 23.338699>,  <32.491726, 38.672310, 23.390854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725899, 38.678928, 23.338699>,  <33.116184, 38.689960, 23.251776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725899, 38.678928, 23.338699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219011, 0.103716, -0.970195,
		0.004219, -0.994225, -0.107237,
		-0.975713, -0.027579, 0.217308,
		32.433186, 38.670654, 23.403893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776699, 38.142498, 22.816906>,  <33.116184, 38.689960, 23.251776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776699, 38.142498, 22.816906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495773, 38.405235, 22.926676>,  <32.327217, 38.562878, 22.992538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495773, 38.405235, 22.926676>,  <32.776699, 38.142498, 22.816906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495773, 38.405235, 22.926676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295235, 0.082022, -0.951897,
		-0.647753, -0.749555, 0.136317,
		-0.702319, 0.656840, 0.274425,
		32.285076, 38.602287, 23.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222324, 37.884121, 22.468346>,  <32.776699, 38.142498, 22.816906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222324, 37.884121, 22.468346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.136795, 38.265377, 22.553955>,  <32.085476, 38.494129, 22.605320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.136795, 38.265377, 22.553955>,  <32.222324, 37.884121, 22.468346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136795, 38.265377, 22.553955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432979, 0.103922, -0.895393,
		-0.875675, -0.284127, 0.390468,
		-0.213827, 0.953138, 0.214023,
		32.072647, 38.551319, 22.618162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497490, 37.981590, 22.328674>,  <32.222324, 37.884121, 22.468346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497490, 37.981590, 22.328674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653795, 38.349789, 22.328856>,  <31.747578, 38.570705, 22.328964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653795, 38.349789, 22.328856>,  <31.497490, 37.981590, 22.328674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653795, 38.349789, 22.328856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143915, 0.061577, -0.987672,
		-0.909172, 0.385879, 0.156535,
		0.390761, 0.920492, 0.000451,
		31.771023, 38.625935, 22.328991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047251, 38.372200, 21.958572>,  <31.497490, 37.981590, 22.328674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047251, 38.372200, 21.958572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391943, 38.573406, 21.932062>,  <31.598759, 38.694130, 21.916157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391943, 38.573406, 21.932062>,  <31.047251, 38.372200, 21.958572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391943, 38.573406, 21.932062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156230, 0.138799, -0.977920,
		-0.482711, 0.853059, 0.198194,
		0.861732, 0.503017, -0.066273,
		31.650463, 38.724312, 21.912180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877970, 38.904125, 21.598597>,  <31.047251, 38.372200, 21.958572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877970, 38.904125, 21.598597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277195, 38.902630, 21.573744>,  <31.516729, 38.901733, 21.558832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277195, 38.902630, 21.573744>,  <30.877970, 38.904125, 21.598597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277195, 38.902630, 21.573744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056779, 0.354311, -0.933402,
		0.025505, 0.935120, 0.353411,
		0.998061, -0.003740, -0.062132,
		31.576612, 38.901508, 21.555103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076067, 39.569344, 21.312426>,  <30.877970, 38.904125, 21.598597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076067, 39.569344, 21.312426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385893, 39.334667, 21.217899>,  <31.571789, 39.193863, 21.161182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385893, 39.334667, 21.217899>,  <31.076067, 39.569344, 21.312426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385893, 39.334667, 21.217899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071284, 0.452218, -0.889054,
		0.628467, 0.671783, 0.392093,
		0.774563, -0.586691, -0.236317,
		31.618261, 39.158661, 21.147005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622110, 39.937305, 20.981632>,  <31.076067, 39.569344, 21.312426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622110, 39.937305, 20.981632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.663254, 39.553848, 20.875477>,  <31.687941, 39.323776, 20.811783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.663254, 39.553848, 20.875477>,  <31.622110, 39.937305, 20.981632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663254, 39.553848, 20.875477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098323, 0.275296, -0.956318,
		0.989824, 0.072273, 0.122573,
		0.102860, -0.958639, -0.265389,
		31.694111, 39.266258, 20.795860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065166, 39.960400, 20.463604>,  <31.622110, 39.937305, 20.981632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065166, 39.960400, 20.463604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877651, 39.610161, 20.417015>,  <31.765142, 39.400017, 20.389061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877651, 39.610161, 20.417015>,  <32.065166, 39.960400, 20.463604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877651, 39.610161, 20.417015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053471, 0.103487, -0.993193,
		0.881691, -0.471824, -0.001694,
		-0.468787, -0.875599, -0.116473,
		31.737015, 39.347481, 20.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226803, 39.758324, 19.762428>,  <32.065166, 39.960400, 20.463604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226803, 39.758324, 19.762428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976738, 39.455479, 19.838266>,  <31.826698, 39.273773, 19.883768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976738, 39.455479, 19.838266>,  <32.226803, 39.758324, 19.762428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976738, 39.455479, 19.838266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108764, -0.325055, -0.939420,
		0.772876, -0.566673, 0.285561,
		-0.625167, -0.757114, 0.189593,
		31.789188, 39.228344, 19.895144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452904, 39.259079, 19.383556>,  <32.226803, 39.758324, 19.762428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452904, 39.259079, 19.383556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097752, 39.087288, 19.449549>,  <31.884661, 38.984215, 19.489143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097752, 39.087288, 19.449549>,  <32.452904, 39.259079, 19.383556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097752, 39.087288, 19.449549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049978, -0.266436, -0.962556,
		0.457354, -0.862879, 0.215098,
		-0.887879, -0.429479, 0.164981,
		31.831388, 38.958443, 19.499043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386494, 38.550392, 19.041529>,  <32.452904, 39.259079, 19.383556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386494, 38.550392, 19.041529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011589, 38.682312, 19.086729>,  <31.786646, 38.761463, 19.113850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011589, 38.682312, 19.086729>,  <32.386494, 38.550392, 19.041529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011589, 38.682312, 19.086729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178227, -0.174713, -0.968355,
		-0.299616, -0.927745, 0.222530,
		-0.937265, 0.329796, 0.113002,
		31.730410, 38.781250, 19.120630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078800, 38.078747, 18.732779>,  <32.386494, 38.550392, 19.041529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078800, 38.078747, 18.732779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819843, 38.383610, 18.731730>,  <31.664469, 38.566528, 18.731100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819843, 38.383610, 18.731730>,  <32.078800, 38.078747, 18.732779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819843, 38.383610, 18.731730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279253, -0.240402, -0.929637,
		-0.709157, -0.601106, 0.368467,
		-0.647391, 0.762154, -0.002622,
		31.625626, 38.612255, 18.730944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408146, 37.819637, 18.503040>,  <32.078800, 38.078747, 18.732779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408146, 37.819637, 18.503040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426029, 38.213051, 18.432997>,  <31.436760, 38.449100, 18.390970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426029, 38.213051, 18.432997>,  <31.408146, 37.819637, 18.503040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426029, 38.213051, 18.432997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361009, -0.147532, -0.920819,
		-0.931490, 0.104385, 0.348469,
		0.044709, 0.983534, -0.175108,
		31.439442, 38.508110, 18.380465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800989, 37.921791, 18.142681>,  <31.408146, 37.819637, 18.503040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800989, 37.921791, 18.142681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040127, 38.227215, 18.045065>,  <31.183609, 38.410469, 17.986496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040127, 38.227215, 18.045065>,  <30.800989, 37.921791, 18.142681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040127, 38.227215, 18.045065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345010, -0.029699, -0.938129,
		-0.723567, 0.645052, 0.245681,
		0.597846, 0.763561, -0.244038,
		31.219481, 38.456284, 17.971853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502991, 38.182693, 17.648430>,  <30.800989, 37.921791, 18.142681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502991, 38.182693, 17.648430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853537, 38.366371, 17.590292>,  <31.063864, 38.476578, 17.555410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853537, 38.366371, 17.590292>,  <30.502991, 38.182693, 17.648430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853537, 38.366371, 17.590292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272613, 0.224127, -0.935655,
		-0.397071, 0.859598, 0.321600,
		0.876366, 0.459194, -0.145343,
		31.116446, 38.504128, 17.546690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310017, 38.762115, 17.253191>,  <30.502991, 38.182693, 17.648430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310017, 38.762115, 17.253191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700729, 38.698624, 17.195641>,  <30.935158, 38.660530, 17.161110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700729, 38.698624, 17.195641>,  <30.310017, 38.762115, 17.253191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700729, 38.698624, 17.195641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138571, 0.044070, -0.989371,
		0.163384, 0.986338, 0.021051,
		0.976782, -0.158730, -0.143878,
		30.993765, 38.651005, 17.152477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560757, 39.218235, 16.775209>,  <30.310017, 38.762115, 17.253191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560757, 39.218235, 16.775209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853647, 38.949558, 16.730185>,  <31.029383, 38.788353, 16.703171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853647, 38.949558, 16.730185>,  <30.560757, 39.218235, 16.775209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853647, 38.949558, 16.730185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028152, 0.194982, -0.980403,
		0.680478, 0.714709, 0.161681,
		0.732227, -0.671695, -0.112560,
		31.073315, 38.748051, 16.696417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109407, 39.567055, 16.445574>,  <30.560757, 39.218235, 16.775209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109407, 39.567055, 16.445574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168636, 39.176163, 16.384794>,  <31.204174, 38.941628, 16.348328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168636, 39.176163, 16.384794>,  <31.109407, 39.567055, 16.445574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168636, 39.176163, 16.384794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123253, 0.170678, -0.977588,
		0.981266, 0.126025, 0.145719,
		0.148072, -0.977234, -0.151947,
		31.213058, 38.882992, 16.339211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506994, 39.518703, 15.814094>,  <31.109407, 39.567055, 16.445574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506994, 39.518703, 15.814094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425997, 39.128689, 15.850525>,  <31.377399, 38.894680, 15.872383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425997, 39.128689, 15.850525>,  <31.506994, 39.518703, 15.814094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425997, 39.128689, 15.850525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197968, -0.131841, -0.971301,
		0.959065, -0.178650, 0.219723,
		-0.202491, -0.975040, 0.091077,
		31.365250, 38.836178, 15.877848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019444, 39.207695, 15.353539>,  <31.506994, 39.518703, 15.814094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019444, 39.207695, 15.353539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696360, 38.980068, 15.415198>,  <31.502508, 38.843491, 15.452194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696360, 38.980068, 15.415198>,  <32.019444, 39.207695, 15.353539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696360, 38.980068, 15.415198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142772, -0.064883, -0.987626,
		0.572026, -0.819728, -0.028840,
		-0.807714, -0.569066, 0.154150,
		31.454046, 38.809349, 15.461443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046562, 38.494473, 14.952682>,  <32.019444, 39.207695, 15.353539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046562, 38.494473, 14.952682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673065, 38.611320, 15.035422>,  <31.448967, 38.681431, 15.085067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673065, 38.611320, 15.035422>,  <32.046562, 38.494473, 14.952682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673065, 38.611320, 15.035422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186597, 0.095903, -0.977744,
		-0.305456, -0.951561, -0.035040,
		-0.933744, 0.292120, 0.206852,
		31.392942, 38.698956, 15.097478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386826, 37.822090, 14.955460>,  <32.046562, 38.494473, 14.952682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386826, 37.822090, 14.955460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736771, 37.672855, 14.831894>,  <32.946735, 37.583317, 14.757754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736771, 37.672855, 14.831894>,  <32.386826, 37.822090, 14.955460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736771, 37.672855, 14.831894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311436, -0.055198, 0.948663,
		-0.370982, -0.926154, 0.067901,
		0.874860, -0.373084, -0.308915,
		32.999229, 37.560932, 14.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622208, 37.194740, 15.391303>,  <32.386826, 37.822090, 14.955460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622208, 37.194740, 15.391303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955734, 37.361832, 15.246943>,  <33.155849, 37.462086, 15.160326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955734, 37.361832, 15.246943>,  <32.622208, 37.194740, 15.391303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955734, 37.361832, 15.246943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408751, -0.027779, 0.912223,
		0.371033, -0.908149, -0.193908,
		0.833820, 0.417725, -0.360900,
		33.205879, 37.487148, 15.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137806, 36.829784, 15.753428>,  <32.622208, 37.194740, 15.391303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137806, 36.829784, 15.753428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327847, 37.151691, 15.611087>,  <33.441872, 37.344837, 15.525682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327847, 37.151691, 15.611087>,  <33.137806, 36.829784, 15.753428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327847, 37.151691, 15.611087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361392, 0.190268, 0.912795,
		0.802294, -0.562271, -0.200440,
		0.475101, 0.804767, -0.355851,
		33.470375, 37.393120, 15.504332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845047, 36.837643, 16.018797>,  <33.137806, 36.829784, 15.753428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845047, 36.837643, 16.018797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775269, 37.217899, 15.916151>,  <33.733402, 37.446053, 15.854564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775269, 37.217899, 15.916151>,  <33.845047, 36.837643, 16.018797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775269, 37.217899, 15.916151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375234, 0.305126, 0.875270,
		0.910367, 0.056395, -0.409940,
		-0.174444, 0.950641, -0.256616,
		33.722935, 37.503090, 15.839167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513039, 37.142933, 16.131924>,  <33.845047, 36.837643, 16.018797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513039, 37.142933, 16.131924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192944, 37.382507, 16.143911>,  <34.000889, 37.526253, 16.151104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192944, 37.382507, 16.143911>,  <34.513039, 37.142933, 16.131924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192944, 37.382507, 16.143911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167572, 0.175348, 0.970141,
		0.575798, 0.781363, -0.240685,
		-0.800235, 0.598937, 0.029969,
		33.952873, 37.562187, 16.152903>
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
