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
	<24.196514, 35.257694, 34.736660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436380, 34.962452, 34.860340>,  <24.580301, 34.785309, 34.934547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436380, 34.962452, 34.860340>,  <24.196514, 35.257694, 34.736660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436380, 34.962452, 34.860340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797342, 0.518181, -0.309409,
		0.068154, 0.432081, 0.899256,
		0.599667, -0.738102, 0.309200,
		24.616280, 34.741020, 34.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677221, 35.534775, 35.073177>,  <24.196514, 35.257694, 34.736660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677221, 35.534775, 35.073177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836445, 35.185005, 34.962227>,  <24.931980, 34.975143, 34.895657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836445, 35.185005, 34.962227>,  <24.677221, 35.534775, 35.073177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836445, 35.185005, 34.962227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761562, 0.483559, -0.431501,
		0.511440, -0.039473, 0.858412,
		0.398060, -0.874421, -0.277373,
		24.955862, 34.922680, 34.879017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483044, 35.523014, 35.096649>,  <24.677221, 35.534775, 35.073177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483044, 35.523014, 35.096649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409567, 35.229969, 34.834492>,  <25.365480, 35.054142, 34.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409567, 35.229969, 34.834492>,  <25.483044, 35.523014, 35.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409567, 35.229969, 34.834492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652863, 0.407516, -0.638515,
		0.734866, -0.545168, 0.403439,
		-0.183690, -0.732614, -0.655389,
		25.354460, 35.010185, 34.637875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056726, 35.813332, 35.050861>,  <25.483044, 35.523014, 35.096649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056726, 35.813332, 35.050861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442141, 35.834854, 34.946014>,  <26.673389, 35.847767, 34.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442141, 35.834854, 34.946014>,  <26.056726, 35.813332, 35.050861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442141, 35.834854, 34.946014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106665, 0.975612, -0.191843,
		0.245400, 0.212806, 0.945776,
		0.963536, 0.053802, -0.262114,
		26.731201, 35.850994, 34.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295086, 36.369400, 35.372002>,  <26.056726, 35.813332, 35.050861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295086, 36.369400, 35.372002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534019, 36.305592, 35.057613>,  <26.677380, 36.267307, 34.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534019, 36.305592, 35.057613>,  <26.295086, 36.369400, 35.372002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534019, 36.305592, 35.057613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097167, 0.958403, -0.268368,
		0.796085, 0.236675, 0.556986,
		0.597334, -0.159523, -0.785968,
		26.713219, 36.257736, 34.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735872, 37.029507, 35.494488>,  <26.295086, 36.369400, 35.372002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735872, 37.029507, 35.494488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763901, 36.875870, 35.126236>,  <26.780718, 36.783688, 34.905285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763901, 36.875870, 35.126236>,  <26.735872, 37.029507, 35.494488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763901, 36.875870, 35.126236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133112, 0.911046, -0.390226,
		0.988621, 0.149890, 0.012710,
		0.070070, -0.384094, -0.920631,
		26.784922, 36.760643, 34.850048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153971, 37.424297, 35.104671>,  <26.735872, 37.029507, 35.494488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153971, 37.424297, 35.104671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980040, 37.262661, 34.782768>,  <26.875681, 37.165680, 34.589626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980040, 37.262661, 34.782768>,  <27.153971, 37.424297, 35.104671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980040, 37.262661, 34.782768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110181, 0.910826, -0.397815,
		0.893746, -0.084313, -0.440579,
		-0.434832, -0.404088, -0.804757,
		26.849590, 37.141434, 34.541340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579254, 37.668140, 34.458672>,  <27.153971, 37.424297, 35.104671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579254, 37.668140, 34.458672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199959, 37.559067, 34.393566>,  <26.972382, 37.493622, 34.354504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199959, 37.559067, 34.393566>,  <27.579254, 37.668140, 34.458672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199959, 37.559067, 34.393566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189397, 0.897005, -0.399388,
		0.254903, -0.347888, -0.902219,
		-0.948237, -0.272682, -0.162760,
		26.915487, 37.477261, 34.344738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454981, 37.750191, 33.741993>,  <27.579254, 37.668140, 34.458672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454981, 37.750191, 33.741993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102201, 37.758381, 33.930351>,  <26.890533, 37.763294, 34.043365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102201, 37.758381, 33.930351>,  <27.454981, 37.750191, 33.741993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102201, 37.758381, 33.930351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219391, 0.866402, -0.448570,
		-0.417170, -0.498927, -0.759632,
		-0.881951, 0.020474, 0.470897,
		26.837616, 37.764523, 34.071621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110268, 38.034943, 33.262131>,  <27.454981, 37.750191, 33.741993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110268, 38.034943, 33.262131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861696, 38.054100, 33.574932>,  <26.712553, 38.065594, 33.762611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861696, 38.054100, 33.574932>,  <27.110268, 38.034943, 33.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861696, 38.054100, 33.574932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398546, 0.840011, -0.368161,
		-0.674526, -0.540451, -0.502920,
		-0.621431, 0.047898, 0.782003,
		26.675266, 38.068470, 33.809532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472469, 38.270542, 32.955215>,  <27.110268, 38.034943, 33.262131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472469, 38.270542, 32.955215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450895, 38.339890, 33.348568>,  <26.437950, 38.381496, 33.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450895, 38.339890, 33.348568>,  <26.472469, 38.270542, 32.955215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450895, 38.339890, 33.348568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472252, 0.863285, -0.178093,
		-0.879812, -0.474008, 0.035312,
		-0.053934, 0.173365, 0.983380,
		26.434715, 38.391899, 33.643581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703320, 38.451405, 33.165031>,  <26.472469, 38.270542, 32.955215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703320, 38.451405, 33.165031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973713, 38.612377, 33.411964>,  <26.135948, 38.708961, 33.560123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973713, 38.612377, 33.411964>,  <25.703320, 38.451405, 33.165031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973713, 38.612377, 33.411964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564281, 0.821462, 0.082388,
		-0.473959, -0.404041, 0.782377,
		0.675981, 0.402432, 0.617331,
		26.176508, 38.733109, 33.597164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057825, 39.134872, 32.976719>,  <25.703320, 38.451405, 33.165031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057825, 39.134872, 32.976719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840866, 39.305538, 33.266205>,  <25.710691, 39.407936, 33.439896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840866, 39.305538, 33.266205>,  <26.057825, 39.134872, 32.976719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840866, 39.305538, 33.266205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467479, -0.869037, 0.161983,
		0.698048, -0.250463, 0.670819,
		-0.542395, 0.426665, 0.723715,
		25.678148, 39.433537, 33.483318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143717, 39.852989, 33.332706>,  <26.057825, 39.134872, 32.976719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143717, 39.852989, 33.332706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021235, 39.695354, 33.679333>,  <25.947744, 39.600773, 33.887310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021235, 39.695354, 33.679333>,  <26.143717, 39.852989, 33.332706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021235, 39.695354, 33.679333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448373, -0.862702, -0.233895,
		0.839762, 0.316925, 0.440861,
		-0.306205, -0.394086, 0.866565,
		25.929373, 39.577129, 33.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701714, 39.492001, 33.726170>,  <26.143717, 39.852989, 33.332706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701714, 39.492001, 33.726170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364033, 39.317234, 33.850376>,  <26.161425, 39.212372, 33.924900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364033, 39.317234, 33.850376>,  <26.701714, 39.492001, 33.726170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364033, 39.317234, 33.850376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420171, -0.899101, -0.122773,
		0.332830, 0.026826, 0.942605,
		-0.844204, -0.436918, 0.310520,
		26.110771, 39.186157, 33.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789766, 39.059505, 34.342564>,  <26.701714, 39.492001, 33.726170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789766, 39.059505, 34.342564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474594, 38.890678, 34.163219>,  <26.285490, 38.789383, 34.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474594, 38.890678, 34.163219>,  <26.789766, 39.059505, 34.342564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474594, 38.890678, 34.163219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383035, -0.906067, 0.179796,
		-0.482131, -0.030071, 0.875583,
		-0.787930, -0.422064, -0.448362,
		26.238214, 38.764061, 34.028709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516939, 38.623604, 34.876720>,  <26.789766, 39.059505, 34.342564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516939, 38.623604, 34.876720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463129, 38.548702, 34.487499>,  <26.430843, 38.503761, 34.253967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463129, 38.548702, 34.487499>,  <26.516939, 38.623604, 34.876720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463129, 38.548702, 34.487499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328341, -0.934931, 0.134525,
		-0.934931, -0.301397, 0.187255,
		-0.134525, -0.187255, -0.973056,
		26.422771, 38.492527, 34.195583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042000, 38.058281, 34.978893>,  <26.516939, 38.623604, 34.876720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042000, 38.058281, 34.978893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201454, 38.084770, 34.613007>,  <26.297127, 38.100662, 34.393475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201454, 38.084770, 34.613007>,  <26.042000, 38.058281, 34.978893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201454, 38.084770, 34.613007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075902, -0.996350, -0.039052,
		-0.913963, -0.053861, -0.402207,
		0.398635, 0.066220, -0.914716,
		26.321045, 38.104637, 34.338593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677193, 37.557495, 34.537724>,  <26.042000, 38.058281, 34.978893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677193, 37.557495, 34.537724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028641, 37.635288, 34.363277>,  <26.239510, 37.681965, 34.258610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028641, 37.635288, 34.363277>,  <25.677193, 37.557495, 34.537724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028641, 37.635288, 34.363277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208052, -0.977970, -0.016971,
		-0.429810, -0.075824, -0.899730,
		0.878622, 0.194485, -0.436117,
		26.292227, 37.693634, 34.232441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719891, 37.110970, 33.932602>,  <25.677193, 37.557495, 34.537724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719891, 37.110970, 33.932602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089399, 37.228073, 34.031345>,  <26.311104, 37.298336, 34.090591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089399, 37.228073, 34.031345>,  <25.719891, 37.110970, 33.932602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089399, 37.228073, 34.031345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252471, -0.950295, 0.182202,
		0.287932, -0.105987, -0.951768,
		0.923772, 0.292756, 0.246861,
		26.366531, 37.315899, 34.105404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222448, 36.709827, 33.583504>,  <25.719891, 37.110970, 33.932602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222448, 36.709827, 33.583504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395441, 36.848377, 33.916485>,  <26.499237, 36.931507, 34.116276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395441, 36.848377, 33.916485>,  <26.222448, 36.709827, 33.583504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395441, 36.848377, 33.916485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361856, -0.912328, 0.191619,
		0.825844, 0.218357, -0.519905,
		0.432482, 0.346378, 0.832455,
		26.525187, 36.952290, 34.166222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788788, 36.249821, 33.502865>,  <26.222448, 36.709827, 33.583504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788788, 36.249821, 33.502865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807821, 36.391594, 33.876411>,  <26.819241, 36.476658, 34.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807821, 36.391594, 33.876411>,  <26.788788, 36.249821, 33.502865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807821, 36.391594, 33.876411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475836, -0.830072, 0.290793,
		0.878246, 0.430533, -0.208148,
		0.047582, 0.354432, 0.933870,
		26.822096, 36.497925, 34.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413740, 36.184971, 33.721802>,  <26.788788, 36.249821, 33.502865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413740, 36.184971, 33.721802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183069, 36.181313, 34.048569>,  <27.044666, 36.179119, 34.244629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183069, 36.181313, 34.048569>,  <27.413740, 36.184971, 33.721802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183069, 36.181313, 34.048569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453434, -0.835370, 0.310734,
		0.679589, 0.549613, 0.485886,
		-0.576678, -0.009146, 0.816921,
		27.010065, 36.178570, 34.293644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799032, 35.905682, 34.098621>,  <27.413740, 36.184971, 33.721802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799032, 35.905682, 34.098621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452597, 35.859993, 34.293289>,  <27.244736, 35.832581, 34.410091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452597, 35.859993, 34.293289>,  <27.799032, 35.905682, 34.098621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452597, 35.859993, 34.293289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360379, -0.817355, 0.449509,
		0.346438, 0.564699, 0.749063,
		-0.866088, -0.114219, 0.486668,
		27.192770, 35.825726, 34.439289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630262, 35.881695, 34.915016>,  <27.799032, 35.905682, 34.098621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630262, 35.881695, 34.915016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415005, 35.633125, 34.687252>,  <27.285851, 35.483982, 34.550594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415005, 35.633125, 34.687252>,  <27.630262, 35.881695, 34.915016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415005, 35.633125, 34.687252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389515, -0.782467, 0.485822,
		-0.747450, 0.039647, 0.663134,
		-0.538142, -0.621428, -0.569412,
		27.253563, 35.446697, 34.516430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118624, 35.368141, 34.965881>,  <27.630262, 35.881695, 34.915016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118624, 35.368141, 34.965881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487230, 35.477722, 34.855785>,  <28.708393, 35.543472, 34.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487230, 35.477722, 34.855785>,  <28.118624, 35.368141, 34.965881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487230, 35.477722, 34.855785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035912, 0.645615, 0.762818,
		0.386678, -0.712833, 0.585106,
		0.921515, 0.273952, -0.275244,
		28.763685, 35.559910, 34.773212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238047, 35.709534, 35.593700>,  <28.118624, 35.368141, 34.965881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238047, 35.709534, 35.593700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542263, 35.825691, 35.361408>,  <28.724792, 35.895386, 35.222031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542263, 35.825691, 35.361408>,  <28.238047, 35.709534, 35.593700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542263, 35.825691, 35.361408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345875, 0.575752, 0.740864,
		0.549491, -0.764321, 0.337450,
		0.760546, 0.290383, -0.580730,
		28.770426, 35.912807, 35.187187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900568, 35.553699, 35.972816>,  <28.238047, 35.709534, 35.593700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900568, 35.553699, 35.972816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938059, 35.861370, 35.719967>,  <28.960554, 36.045971, 35.568256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938059, 35.861370, 35.719967>,  <28.900568, 35.553699, 35.972816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938059, 35.861370, 35.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249693, 0.596470, 0.762809,
		0.963778, -0.229333, -0.136152,
		0.093727, 0.769175, -0.632127,
		28.966177, 36.092121, 35.530327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551090, 35.770596, 36.012810>,  <28.900568, 35.553699, 35.972816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551090, 35.770596, 36.012810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302052, 36.075233, 35.940872>,  <29.152630, 36.258018, 35.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302052, 36.075233, 35.940872>,  <29.551090, 35.770596, 36.012810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302052, 36.075233, 35.940872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202265, 0.378627, 0.903178,
		0.755953, 0.525937, -0.389776,
		-0.622594, 0.761598, -0.179845,
		29.115273, 36.303715, 35.886917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827774, 36.458084, 36.148499>,  <29.551090, 35.770596, 36.012810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827774, 36.458084, 36.148499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441319, 36.544258, 36.205303>,  <29.209446, 36.595963, 36.239388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441319, 36.544258, 36.205303>,  <29.827774, 36.458084, 36.148499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441319, 36.544258, 36.205303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216577, 0.377881, 0.900167,
		0.140261, 0.900442, -0.411742,
		-0.966137, 0.215432, 0.142013,
		29.151478, 36.608887, 36.247906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599134, 37.184547, 36.144482>,  <29.827774, 36.458084, 36.148499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599134, 37.184547, 36.144482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316664, 37.034840, 36.384895>,  <29.147181, 36.945015, 36.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316664, 37.034840, 36.384895>,  <29.599134, 37.184547, 36.144482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316664, 37.034840, 36.384895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386627, 0.507306, 0.770169,
		-0.593154, 0.776251, -0.213547,
		-0.706178, -0.374266, 0.601031,
		29.104811, 36.922562, 36.565205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535387, 37.678070, 36.759136>,  <29.599134, 37.184547, 36.144482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535387, 37.678070, 36.759136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340269, 37.349884, 36.878399>,  <29.223198, 37.152973, 36.949955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340269, 37.349884, 36.878399>,  <29.535387, 37.678070, 36.759136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340269, 37.349884, 36.878399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023031, 0.329332, 0.943933,
		-0.872653, 0.467314, -0.141751,
		-0.487796, -0.820462, 0.298155,
		29.193930, 37.103745, 36.967846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033062, 37.940266, 37.143391>,  <29.535387, 37.678070, 36.759136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033062, 37.940266, 37.143391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080139, 37.559643, 37.257011>,  <29.108385, 37.331268, 37.325184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080139, 37.559643, 37.257011>,  <29.033062, 37.940266, 37.143391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080139, 37.559643, 37.257011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242109, 0.304902, 0.921096,
		-0.963084, -0.039638, 0.266266,
		0.117695, -0.951558, 0.284049,
		29.115448, 37.274174, 37.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660559, 37.874607, 37.746883>,  <29.033062, 37.940266, 37.143391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660559, 37.874607, 37.746883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888863, 37.551258, 37.804516>,  <29.025845, 37.357246, 37.839096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888863, 37.551258, 37.804516>,  <28.660559, 37.874607, 37.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888863, 37.551258, 37.804516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006338, 0.171130, 0.985228,
		-0.821093, -0.563242, 0.092551,
		0.570760, -0.808377, 0.144084,
		29.060091, 37.308746, 37.847740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828892, 38.027504, 38.538319>,  <28.660559, 37.874607, 37.746883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828892, 38.027504, 38.538319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672544, 38.394321, 38.506680>,  <28.578735, 38.614410, 38.487698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672544, 38.394321, 38.506680>,  <28.828892, 38.027504, 38.538319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672544, 38.394321, 38.506680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224787, 0.178431, 0.957932,
		0.892576, 0.356648, -0.275882,
		-0.390870, 0.917041, -0.079093,
		28.555283, 38.669434, 38.482952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365725, 38.458485, 38.625690>,  <28.828892, 38.027504, 38.538319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365725, 38.458485, 38.625690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996599, 38.572323, 38.729553>,  <28.775124, 38.640625, 38.791870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996599, 38.572323, 38.729553>,  <29.365725, 38.458485, 38.625690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996599, 38.572323, 38.729553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255796, -0.051335, 0.965367,
		0.288065, 0.957273, -0.025425,
		-0.922815, 0.284592, 0.259654,
		28.719755, 38.657700, 38.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399406, 38.960644, 39.132690>,  <29.365725, 38.458485, 38.625690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399406, 38.960644, 39.132690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068165, 38.739902, 39.172085>,  <28.869419, 38.607456, 39.195721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068165, 38.739902, 39.172085>,  <29.399406, 38.960644, 39.132690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068165, 38.739902, 39.172085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279281, -0.253817, 0.926056,
		-0.486051, 0.794376, 0.364310,
		-0.828104, -0.551855, 0.098486,
		28.819733, 38.574345, 39.201630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984844, 39.069126, 39.878624>,  <29.399406, 38.960644, 39.132690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984844, 39.069126, 39.878624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945311, 38.717239, 39.692581>,  <28.921591, 38.506107, 39.580956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945311, 38.717239, 39.692581>,  <28.984844, 39.069126, 39.878624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945311, 38.717239, 39.692581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373304, -0.466036, 0.802156,
		-0.922430, -0.094346, 0.374463,
		-0.098833, -0.879721, -0.465106,
		28.915661, 38.453323, 39.553051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250568, 39.056320, 40.530479>,  <28.984844, 39.069126, 39.878624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250568, 39.056320, 40.530479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628286, 39.003036, 40.650856>,  <29.854918, 38.971066, 40.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628286, 39.003036, 40.650856>,  <29.250568, 39.056320, 40.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628286, 39.003036, 40.650856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316238, -0.114067, 0.941797,
		-0.091121, -0.984503, -0.149836,
		0.944294, -0.133201, 0.300943,
		29.911575, 38.963074, 40.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303776, 38.416523, 40.881241>,  <29.250568, 39.056320, 40.530479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303776, 38.416523, 40.881241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553509, 38.703053, 41.005882>,  <29.703348, 38.874969, 41.080666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553509, 38.703053, 41.005882>,  <29.303776, 38.416523, 40.881241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553509, 38.703053, 41.005882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510656, 0.072401, 0.856732,
		0.591134, -0.694006, 0.410995,
		0.624333, 0.716320, 0.311599,
		29.740808, 38.917950, 41.099361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373249, 37.945354, 40.305786>,  <29.303776, 38.416523, 40.881241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373249, 37.945354, 40.305786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708813, 37.790585, 40.458897>,  <29.910151, 37.697723, 40.550762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708813, 37.790585, 40.458897>,  <29.373249, 37.945354, 40.305786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708813, 37.790585, 40.458897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317118, -0.224096, -0.921530,
		0.442345, 0.894465, -0.065294,
		0.838908, -0.386928, 0.382778,
		29.960485, 37.674507, 40.573730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973019, 38.129078, 39.916679>,  <29.373249, 37.945354, 40.305786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973019, 38.129078, 39.916679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093590, 37.790478, 40.092216>,  <30.165932, 37.587318, 40.197540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093590, 37.790478, 40.092216>,  <29.973019, 38.129078, 39.916679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093590, 37.790478, 40.092216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297640, -0.353720, -0.886731,
		0.905843, 0.397903, 0.145331,
		0.301427, -0.846496, 0.438847,
		30.184017, 37.536530, 40.223869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710323, 37.508076, 39.696766>,  <29.973019, 38.129078, 39.916679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710323, 37.508076, 39.696766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006577, 37.307182, 39.518227>,  <30.184328, 37.186646, 39.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006577, 37.307182, 39.518227>,  <29.710323, 37.508076, 39.696766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006577, 37.307182, 39.518227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611849, -0.229586, -0.756922,
		0.277679, 0.833696, -0.477332,
		0.740631, -0.502237, -0.446345,
		30.228765, 37.156509, 39.384323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683294, 37.746387, 39.101990>,  <29.710323, 37.508076, 39.696766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683294, 37.746387, 39.101990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871948, 37.397240, 39.051941>,  <29.985140, 37.187752, 39.021912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871948, 37.397240, 39.051941>,  <29.683294, 37.746387, 39.101990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871948, 37.397240, 39.051941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453150, -0.118195, -0.883564,
		0.756451, 0.473416, -0.451287,
		0.471633, -0.872873, -0.125120,
		30.013437, 37.135376, 39.014404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861841, 37.655079, 38.407177>,  <29.683294, 37.746387, 39.101990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861841, 37.655079, 38.407177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789637, 37.289719, 38.553120>,  <29.746315, 37.070503, 38.640686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789637, 37.289719, 38.553120>,  <29.861841, 37.655079, 38.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789637, 37.289719, 38.553120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527907, -0.223021, -0.819498,
		0.829898, -0.340539, -0.441931,
		-0.180511, -0.913397, 0.364857,
		29.735483, 37.015697, 38.662579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191946, 37.073074, 37.983116>,  <29.861841, 37.655079, 38.407177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191946, 37.073074, 37.983116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837931, 36.991497, 38.150501>,  <29.625521, 36.942551, 38.250935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837931, 36.991497, 38.150501>,  <30.191946, 37.073074, 37.983116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837931, 36.991497, 38.150501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374891, -0.220667, -0.900424,
		0.275974, -0.953790, 0.118844,
		-0.885040, -0.203941, 0.418466,
		29.572418, 36.930313, 38.276039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898861, 36.344784, 37.838554>,  <30.191946, 37.073074, 37.983116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898861, 36.344784, 37.838554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622406, 36.632988, 37.861160>,  <29.456533, 36.805912, 37.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622406, 36.632988, 37.861160>,  <29.898861, 36.344784, 37.838554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622406, 36.632988, 37.861160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337126, -0.252234, -0.907042,
		-0.639278, -0.645943, 0.417231,
		-0.691137, 0.720511, 0.056517,
		29.415066, 36.849140, 37.878117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293894, 36.031097, 37.719288>,  <29.898861, 36.344784, 37.838554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293894, 36.031097, 37.719288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241253, 36.413712, 37.615196>,  <29.209669, 36.643280, 37.552742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241253, 36.413712, 37.615196>,  <29.293894, 36.031097, 37.719288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241253, 36.413712, 37.615196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468780, -0.291354, -0.833881,
		-0.873457, 0.012250, 0.486748,
		-0.131600, 0.956537, -0.260228,
		29.201773, 36.700672, 37.537128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669985, 36.034851, 37.464535>,  <29.293894, 36.031097, 37.719288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669985, 36.034851, 37.464535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835205, 36.359821, 37.299927>,  <28.934338, 36.554806, 37.201160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835205, 36.359821, 37.299927>,  <28.669985, 36.034851, 37.464535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835205, 36.359821, 37.299927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407737, -0.239078, -0.881245,
		-0.814335, 0.531789, 0.232507,
		0.413049, 0.812430, -0.411519,
		28.959120, 36.603550, 37.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146782, 36.326679, 37.075935>,  <28.669985, 36.034851, 37.464535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146782, 36.326679, 37.075935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495401, 36.452145, 36.925190>,  <28.704573, 36.527424, 36.834743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495401, 36.452145, 36.925190>,  <28.146782, 36.326679, 37.075935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495401, 36.452145, 36.925190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322709, -0.211710, -0.922517,
		-0.369142, 0.925633, -0.083294,
		0.871546, 0.313660, -0.376861,
		28.756865, 36.546242, 36.812130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871962, 36.717495, 36.525806>,  <28.146782, 36.326679, 37.075935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871962, 36.717495, 36.525806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256882, 36.671917, 36.427021>,  <28.487835, 36.644569, 36.367748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256882, 36.671917, 36.427021>,  <27.871962, 36.717495, 36.525806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256882, 36.671917, 36.427021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264567, -0.181568, -0.947120,
		0.063079, 0.976754, -0.204870,
		0.962302, -0.113945, -0.246964,
		28.545572, 36.637733, 36.352932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821978, 36.673885, 35.824680>,  <27.871962, 36.717495, 36.525806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821978, 36.673885, 35.824680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215754, 36.615086, 35.863197>,  <28.452019, 36.579803, 35.886307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215754, 36.615086, 35.863197>,  <27.821978, 36.673885, 35.824680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215754, 36.615086, 35.863197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066498, -0.195592, -0.978428,
		0.162667, 0.969605, -0.182772,
		0.984438, -0.147003, 0.096293,
		28.511086, 36.570984, 35.892086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297703, 37.133423, 35.360451>,  <27.821978, 36.673885, 35.824680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297703, 37.133423, 35.360451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454571, 36.776001, 35.447865>,  <28.548691, 36.561546, 35.500313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454571, 36.776001, 35.447865>,  <28.297703, 37.133423, 35.360451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454571, 36.776001, 35.447865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185611, -0.155814, -0.970191,
		0.900973, 0.421041, 0.104749,
		0.392169, -0.893558, 0.218534,
		28.572222, 36.507935, 35.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815367, 37.087471, 34.963234>,  <28.297703, 37.133423, 35.360451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815367, 37.087471, 34.963234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714676, 36.708057, 35.040085>,  <28.654263, 36.480408, 35.086197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714676, 36.708057, 35.040085>,  <28.815367, 37.087471, 34.963234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714676, 36.708057, 35.040085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219352, -0.249276, -0.943264,
		0.942613, -0.195299, 0.270812,
		-0.251725, -0.948536, 0.192132,
		28.639158, 36.423496, 35.097725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823833, 37.828114, 34.943321>,  <28.815367, 37.087471, 34.963234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823833, 37.828114, 34.943321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743940, 38.096611, 34.657791>,  <28.696005, 38.257710, 34.486473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743940, 38.096611, 34.657791>,  <28.823833, 37.828114, 34.943321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743940, 38.096611, 34.657791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705067, 0.407432, 0.580413,
		0.680431, 0.619220, 0.391893,
		-0.199734, 0.671242, -0.713821,
		28.684021, 38.297985, 34.443645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953903, 38.517353, 35.103558>,  <28.823833, 37.828114, 34.943321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953903, 38.517353, 35.103558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650221, 38.508385, 34.843372>,  <28.468012, 38.503002, 34.687260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650221, 38.508385, 34.843372>,  <28.953903, 38.517353, 35.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650221, 38.508385, 34.843372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613542, 0.358157, 0.703768,
		0.217187, 0.933392, -0.285673,
		-0.759208, -0.022423, -0.650462,
		28.422459, 38.501659, 34.648235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373476, 38.997967, 35.290615>,  <28.953903, 38.517353, 35.103558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373476, 38.997967, 35.290615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148041, 38.788548, 35.035030>,  <28.012779, 38.662895, 34.881680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148041, 38.788548, 35.035030>,  <28.373476, 38.997967, 35.290615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148041, 38.788548, 35.035030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820955, 0.440820, 0.362919,
		0.091660, 0.729092, -0.678250,
		-0.563588, -0.523548, -0.638957,
		27.978964, 38.631485, 34.843342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987329, 39.416431, 34.777653>,  <28.373476, 38.997967, 35.290615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987329, 39.416431, 34.777653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844599, 39.069462, 34.916355>,  <27.758961, 38.861279, 34.999577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844599, 39.069462, 34.916355>,  <27.987329, 39.416431, 34.777653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844599, 39.069462, 34.916355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858757, 0.450698, 0.243738,
		-0.367709, -0.210809, -0.905731,
		-0.356829, -0.867428, 0.346760,
		27.737551, 38.809235, 35.020382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107725, 39.413151, 34.018616>,  <27.987329, 39.416431, 34.777653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107725, 39.413151, 34.018616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465353, 39.459656, 33.845585>,  <28.679930, 39.487560, 33.741768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465353, 39.459656, 33.845585>,  <28.107725, 39.413151, 34.018616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465353, 39.459656, 33.845585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443108, 0.370835, -0.816172,
		0.065523, 0.921392, 0.383070,
		0.894070, 0.116264, -0.432575,
		28.733574, 39.494534, 33.715813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177744, 40.085304, 33.763378>,  <28.107725, 39.413151, 34.018616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177744, 40.085304, 33.763378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360664, 39.809761, 33.538395>,  <28.470417, 39.644436, 33.403404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360664, 39.809761, 33.538395>,  <28.177744, 40.085304, 33.763378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360664, 39.809761, 33.538395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535482, 0.291667, -0.792584,
		0.710024, 0.663634, -0.235489,
		0.457302, -0.688854, -0.562454,
		28.497854, 39.603104, 33.369659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505272, 40.418423, 33.101780>,  <28.177744, 40.085304, 33.763378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505272, 40.418423, 33.101780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330452, 40.059734, 33.073822>,  <28.225559, 39.844521, 33.057049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330452, 40.059734, 33.073822>,  <28.505272, 40.418423, 33.101780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330452, 40.059734, 33.073822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597269, 0.347445, -0.722878,
		0.672501, -0.274189, -0.687432,
		-0.437049, -0.896718, -0.069892,
		28.199337, 39.790718, 33.052853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836842, 40.011822, 32.499081>,  <28.505272, 40.418423, 33.101780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836842, 40.011822, 32.499081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455488, 39.973335, 32.613487>,  <28.226677, 39.950241, 32.682133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455488, 39.973335, 32.613487>,  <28.836842, 40.011822, 32.499081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455488, 39.973335, 32.613487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284464, -0.029774, -0.958224,
		0.100716, -0.994915, 0.001015,
		-0.953382, -0.096220, 0.286016,
		28.169474, 39.944469, 32.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995564, 39.458393, 32.075146>,  <28.836842, 40.011822, 32.499081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995564, 39.458393, 32.075146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880037, 39.827705, 31.973841>,  <28.810722, 40.049294, 31.913057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880037, 39.827705, 31.973841>,  <28.995564, 39.458393, 32.075146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880037, 39.827705, 31.973841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360982, -0.139996, -0.922005,
		-0.886724, -0.357711, -0.292854,
		-0.288813, 0.923279, -0.253265,
		28.793394, 40.104691, 31.897861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567568, 39.429070, 31.449903>,  <28.995564, 39.458393, 32.075146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567568, 39.429070, 31.449903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829929, 39.720299, 31.529600>,  <28.987347, 39.895039, 31.577417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829929, 39.720299, 31.529600>,  <28.567568, 39.429070, 31.449903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829929, 39.720299, 31.529600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497375, -0.218305, -0.839620,
		-0.567812, 0.649807, -0.505313,
		0.655903, 0.728076, 0.199241,
		29.026701, 39.938721, 31.589373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736031, 39.802734, 30.893612>,  <28.567568, 39.429070, 31.449903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736031, 39.802734, 30.893612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065258, 39.861435, 31.113073>,  <29.262794, 39.896656, 31.244751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065258, 39.861435, 31.113073>,  <28.736031, 39.802734, 30.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065258, 39.861435, 31.113073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565200, -0.306455, -0.765920,
		0.055738, 0.940505, -0.335177,
		0.823069, 0.146751, 0.548655,
		29.312180, 39.905460, 31.277670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238178, 40.199760, 30.549715>,  <28.736031, 39.802734, 30.893612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238178, 40.199760, 30.549715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470694, 40.041454, 30.834103>,  <29.610203, 39.946472, 31.004736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470694, 40.041454, 30.834103>,  <29.238178, 40.199760, 30.549715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470694, 40.041454, 30.834103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735808, -0.117385, -0.666938,
		0.347406, 0.910820, 0.222971,
		0.581287, -0.395762, 0.710969,
		29.645081, 39.922726, 31.047394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839228, 40.881687, 30.463442>,  <29.238178, 40.199760, 30.549715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839228, 40.881687, 30.463442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132914, 40.993259, 30.711031>,  <29.309126, 41.060204, 30.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132914, 40.993259, 30.711031>,  <28.839228, 40.881687, 30.463442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132914, 40.993259, 30.711031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176573, 0.801880, -0.570798,
		-0.655552, 0.528383, 0.539502,
		0.734216, 0.278927, 0.618972,
		29.353178, 41.076939, 30.896723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444567, 40.986492, 29.951185>,  <28.839228, 40.881687, 30.463442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444567, 40.986492, 29.951185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726431, 41.270088, 29.962381>,  <29.895550, 41.440247, 29.969099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726431, 41.270088, 29.962381>,  <29.444567, 40.986492, 29.951185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726431, 41.270088, 29.962381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239677, -0.200716, -0.949878,
		-0.667837, 0.676051, -0.311365,
		0.704662, 0.708990, 0.027988,
		29.937830, 41.482784, 29.970778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356779, 41.521820, 29.419643>,  <29.444567, 40.986492, 29.951185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356779, 41.521820, 29.419643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743818, 41.564304, 29.511272>,  <29.976042, 41.589794, 29.566250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743818, 41.564304, 29.511272>,  <29.356779, 41.521820, 29.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743818, 41.564304, 29.511272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236524, -0.063689, -0.969536,
		-0.088388, 0.992302, -0.086747,
		0.967597, 0.106213, 0.229074,
		30.034098, 41.596169, 29.579994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584110, 41.978310, 28.693743>,  <29.356779, 41.521820, 29.419643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584110, 41.978310, 28.693743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931700, 41.914867, 28.881243>,  <30.140253, 41.876801, 28.993744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931700, 41.914867, 28.881243>,  <29.584110, 41.978310, 28.693743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931700, 41.914867, 28.881243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494000, 0.333764, -0.802849,
		-0.029115, 0.929218, 0.368384,
		0.868974, -0.158606, 0.468751,
		30.192392, 41.867287, 29.021868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974188, 42.654785, 28.651432>,  <29.584110, 41.978310, 28.693743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974188, 42.654785, 28.651432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236851, 42.356773, 28.698299>,  <30.394447, 42.177967, 28.726419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236851, 42.356773, 28.698299>,  <29.974188, 42.654785, 28.651432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236851, 42.356773, 28.698299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501335, 0.315138, -0.805823,
		0.563441, 0.587890, 0.580449,
		0.656656, -0.745033, 0.117168,
		30.433847, 42.133263, 28.733450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704191, 43.025963, 28.691706>,  <29.974188, 42.654785, 28.651432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704191, 43.025963, 28.691706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738934, 42.645550, 28.573046>,  <30.759779, 42.417301, 28.501850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738934, 42.645550, 28.573046>,  <30.704191, 43.025963, 28.691706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738934, 42.645550, 28.573046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497431, 0.299399, -0.814201,
		0.863145, -0.076844, 0.499075,
		0.086857, -0.951029, -0.296649,
		30.764990, 42.360241, 28.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352280, 43.020283, 28.357166>,  <30.704191, 43.025963, 28.691706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352280, 43.020283, 28.357166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189201, 42.674072, 28.240789>,  <31.091354, 42.466347, 28.170963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189201, 42.674072, 28.240789>,  <31.352280, 43.020283, 28.357166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189201, 42.674072, 28.240789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481286, 0.067085, -0.873993,
		0.775981, -0.496352, 0.389215,
		-0.407697, -0.865526, -0.290944,
		31.066893, 42.414413, 28.153507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907120, 42.681114, 27.884178>,  <31.352280, 43.020283, 28.357166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907120, 42.681114, 27.884178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578074, 42.476734, 27.784389>,  <31.380646, 42.354107, 27.724516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578074, 42.476734, 27.784389>,  <31.907120, 42.681114, 27.884178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578074, 42.476734, 27.784389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369758, -0.147396, -0.917362,
		0.431951, -0.846882, 0.310177,
		-0.822616, -0.510946, -0.249473,
		31.331289, 42.323452, 27.709547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174168, 42.099785, 27.465565>,  <31.907120, 42.681114, 27.884178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174168, 42.099785, 27.465565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793957, 42.115532, 27.342304>,  <31.565832, 42.124981, 27.268349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793957, 42.115532, 27.342304>,  <32.174168, 42.099785, 27.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793957, 42.115532, 27.342304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305910, -0.054088, -0.950523,
		-0.054088, -0.997760, 0.039368,
		0.950523, -0.039368, 0.308151,
		31.508801, 42.127342, 27.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199051, 41.670971, 26.852737>,  <32.174168, 42.099785, 27.465565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199051, 41.670971, 26.852737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853279, 41.871502, 26.837597>,  <31.645817, 41.991821, 26.828512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853279, 41.871502, 26.837597>,  <32.199051, 41.670971, 26.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853279, 41.871502, 26.837597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161494, 0.205584, -0.965223,
		-0.476111, -0.840479, -0.258675,
		-0.864429, 0.501328, -0.037851,
		31.593950, 42.021900, 26.826241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914417, 41.441299, 26.326578>,  <32.199051, 41.670971, 26.852737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914417, 41.441299, 26.326578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754789, 41.803047, 26.387047>,  <31.659014, 42.020096, 26.423328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754789, 41.803047, 26.387047>,  <31.914417, 41.441299, 26.326578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754789, 41.803047, 26.387047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084079, 0.200267, -0.976127,
		-0.913058, -0.376831, -0.155959,
		-0.399068, 0.904373, 0.151172,
		31.635069, 42.074360, 26.432398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351538, 41.385674, 25.946770>,  <31.914417, 41.441299, 26.326578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351538, 41.385674, 25.946770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441017, 41.774364, 25.976974>,  <31.494705, 42.007580, 25.995098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441017, 41.774364, 25.976974>,  <31.351538, 41.385674, 25.946770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441017, 41.774364, 25.976974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116284, 0.050313, -0.991941,
		-0.967697, 0.230676, -0.101742,
		0.223698, 0.971729, 0.075511,
		31.508127, 42.065884, 25.999628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006144, 41.701626, 25.463243>,  <31.351538, 41.385674, 25.946770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006144, 41.701626, 25.463243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257832, 42.003361, 25.538143>,  <31.408844, 42.184402, 25.583084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257832, 42.003361, 25.538143>,  <31.006144, 41.701626, 25.463243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257832, 42.003361, 25.538143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049308, 0.201694, -0.978207,
		-0.775663, 0.624739, 0.089715,
		0.629219, 0.754335, 0.187251,
		31.446598, 42.229660, 25.594318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706617, 42.325672, 25.088379>,  <31.006144, 41.701626, 25.463243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706617, 42.325672, 25.088379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101801, 42.364243, 25.136774>,  <31.338911, 42.387386, 25.165812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101801, 42.364243, 25.136774>,  <30.706617, 42.325672, 25.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101801, 42.364243, 25.136774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100534, 0.194291, -0.975779,
		-0.117598, 0.976193, 0.182257,
		0.987960, 0.096426, 0.120989,
		31.398190, 42.393169, 25.173071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886673, 42.846912, 24.589466>,  <30.706617, 42.325672, 25.088379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886673, 42.846912, 24.589466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237268, 42.670353, 24.666342>,  <31.447626, 42.564419, 24.712467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237268, 42.670353, 24.666342>,  <30.886673, 42.846912, 24.589466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237268, 42.670353, 24.666342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317449, 0.229783, -0.920014,
		0.361930, 0.867392, 0.341523,
		0.876489, -0.441397, 0.192187,
		31.500216, 42.537933, 24.723997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434542, 43.345436, 24.522640>,  <30.886673, 42.846912, 24.589466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434542, 43.345436, 24.522640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606825, 42.993881, 24.440626>,  <31.710196, 42.782948, 24.391417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606825, 42.993881, 24.440626>,  <31.434542, 43.345436, 24.522640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606825, 42.993881, 24.440626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343458, 0.369722, -0.863332,
		0.834581, 0.301424, 0.461105,
		0.430709, -0.878891, -0.205037,
		31.736038, 42.730213, 24.379116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999548, 43.497261, 24.042263>,  <31.434542, 43.345436, 24.522640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999548, 43.497261, 24.042263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982882, 43.100159, 23.997179>,  <31.972881, 42.861897, 23.970129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982882, 43.100159, 23.997179>,  <31.999548, 43.497261, 24.042263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982882, 43.100159, 23.997179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090598, 0.108587, -0.989950,
		0.995016, -0.051458, 0.085418,
		-0.041666, -0.992754, -0.112708,
		31.970383, 42.802334, 23.963367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556915, 43.319962, 23.618519>,  <31.999548, 43.497261, 24.042263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556915, 43.319962, 23.618519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312046, 43.008656, 23.562597>,  <32.165123, 42.821873, 23.529045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312046, 43.008656, 23.562597>,  <32.556915, 43.319962, 23.618519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312046, 43.008656, 23.562597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096952, 0.101592, -0.990091,
		0.784755, -0.619665, 0.013262,
		-0.612177, -0.778264, -0.139803,
		32.128391, 42.775177, 23.520657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766113, 42.891991, 23.063601>,  <32.556915, 43.319962, 23.618519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766113, 42.891991, 23.063601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381618, 42.781708, 23.065098>,  <32.150921, 42.715538, 23.065996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381618, 42.781708, 23.065098>,  <32.766113, 42.891991, 23.063601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381618, 42.781708, 23.065098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064665, -0.238604, -0.968962,
		0.268038, -0.931158, 0.247183,
		-0.961236, -0.275703, 0.003741,
		32.093246, 42.698997, 23.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743908, 42.304447, 22.583300>,  <32.766113, 42.891991, 23.063601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743908, 42.304447, 22.583300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372070, 42.446529, 22.622673>,  <32.148968, 42.531780, 22.646297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372070, 42.446529, 22.622673>,  <32.743908, 42.304447, 22.583300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372070, 42.446529, 22.622673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095136, 0.026791, -0.995104,
		-0.356106, -0.934403, 0.008888,
		-0.929590, 0.355208, 0.098435,
		32.093193, 42.553093, 22.652205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303688, 41.921726, 22.170452>,  <32.743908, 42.304447, 22.583300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303688, 41.921726, 22.170452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063175, 42.236488, 22.225935>,  <31.918867, 42.425346, 22.259226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063175, 42.236488, 22.225935>,  <32.303688, 41.921726, 22.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063175, 42.236488, 22.225935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157338, 0.053597, -0.986089,
		-0.783394, -0.614741, 0.091583,
		-0.601281, 0.786906, 0.138709,
		31.882792, 42.472561, 22.267548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714653, 41.785652, 21.810286>,  <32.303688, 41.921726, 22.170452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714653, 41.785652, 21.810286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701809, 42.183823, 21.846289>,  <31.694103, 42.422726, 21.867891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701809, 42.183823, 21.846289>,  <31.714653, 41.785652, 21.810286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701809, 42.183823, 21.846289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010440, 0.089716, -0.995913,
		-0.999430, -0.032917, 0.007511,
		-0.032108, 0.995423, 0.090009,
		31.692177, 42.482449, 21.873291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232925, 41.897270, 21.308397>,  <31.714653, 41.785652, 21.810286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232925, 41.897270, 21.308397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366056, 42.271488, 21.355694>,  <31.445936, 42.496017, 21.384071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366056, 42.271488, 21.355694>,  <31.232925, 41.897270, 21.308397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366056, 42.271488, 21.355694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062629, 0.103183, -0.992689,
		-0.940905, 0.337801, -0.024250,
		0.332829, 0.935545, 0.118241,
		31.465904, 42.552151, 21.391167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882364, 42.374378, 20.832605>,  <31.232925, 41.897270, 21.308397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882364, 42.374378, 20.832605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208469, 42.585255, 20.928450>,  <31.404133, 42.711781, 20.985956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208469, 42.585255, 20.928450>,  <30.882364, 42.374378, 20.832605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208469, 42.585255, 20.928450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153612, 0.202070, -0.967249,
		-0.558344, 0.825370, 0.083757,
		0.815264, 0.527192, 0.239611,
		31.453049, 42.743412, 21.000334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861603, 43.061684, 20.407854>,  <30.882364, 42.374378, 20.832605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861603, 43.061684, 20.407854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242399, 43.007114, 20.517471>,  <31.470877, 42.974373, 20.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242399, 43.007114, 20.517471>,  <30.861603, 43.061684, 20.407854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242399, 43.007114, 20.517471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297520, 0.201608, -0.933186,
		0.072060, 0.969919, 0.232518,
		0.951992, -0.136424, 0.274042,
		31.527996, 42.966187, 20.599684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217794, 43.611031, 20.083334>,  <30.861603, 43.061684, 20.407854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217794, 43.611031, 20.083334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485291, 43.329445, 20.179018>,  <31.645788, 43.160492, 20.236429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485291, 43.329445, 20.179018>,  <31.217794, 43.611031, 20.083334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485291, 43.329445, 20.179018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566360, 0.273882, -0.777319,
		0.481689, 0.655304, 0.581852,
		0.668739, -0.703964, 0.239212,
		31.685913, 43.118256, 20.250782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890059, 43.860870, 20.049124>,  <31.217794, 43.611031, 20.083334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890059, 43.860870, 20.049124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942911, 43.467976, 19.995840>,  <31.974623, 43.232239, 19.963871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942911, 43.467976, 19.995840>,  <31.890059, 43.860870, 20.049124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942911, 43.467976, 19.995840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620982, 0.186773, -0.761247,
		0.772608, 0.017865, 0.634633,
		0.132132, -0.982241, -0.133208,
		31.982552, 43.173302, 19.955877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540615, 43.889965, 19.741014>,  <31.890059, 43.860870, 20.049124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540615, 43.889965, 19.741014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389656, 43.524635, 19.679811>,  <32.299080, 43.305439, 19.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389656, 43.524635, 19.679811>,  <32.540615, 43.889965, 19.741014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389656, 43.524635, 19.679811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374924, 0.000381, -0.927055,
		0.846759, -0.407236, 0.342283,
		-0.377400, -0.913323, -0.153005,
		32.276436, 43.250637, 19.633909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076862, 43.576447, 19.306419>,  <32.540615, 43.889965, 19.741014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076862, 43.576447, 19.306419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744400, 43.363548, 19.242054>,  <32.544922, 43.235809, 19.203434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744400, 43.363548, 19.242054>,  <33.076862, 43.576447, 19.306419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744400, 43.363548, 19.242054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179340, 0.017327, -0.983635,
		0.526327, -0.846411, 0.081052,
		-0.831154, -0.532249, -0.160914,
		32.495052, 43.203873, 19.193779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248466, 43.146164, 18.793623>,  <33.076862, 43.576447, 19.306419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248466, 43.146164, 18.793623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850430, 43.125294, 18.759998>,  <32.611607, 43.112770, 18.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850430, 43.125294, 18.759998>,  <33.248466, 43.146164, 18.793623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850430, 43.125294, 18.759998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090689, -0.141352, -0.985797,
		0.039557, -0.988583, 0.145390,
		-0.995094, -0.052180, -0.084063,
		32.551903, 43.109642, 18.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028942, 42.547791, 18.418453>,  <33.248466, 43.146164, 18.793623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028942, 42.547791, 18.418453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760201, 42.843414, 18.398859>,  <32.598957, 43.020790, 18.387102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760201, 42.843414, 18.398859>,  <33.028942, 42.547791, 18.418453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760201, 42.843414, 18.398859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126114, 0.048975, -0.990806,
		-0.729868, -0.671855, -0.126110,
		-0.671854, 0.739062, -0.048985,
		32.558643, 43.065132, 18.384163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762249, 42.415257, 17.849794>,  <33.028942, 42.547791, 18.418453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762249, 42.415257, 17.849794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633934, 42.787285, 17.921427>,  <32.556946, 43.010502, 17.964405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633934, 42.787285, 17.921427>,  <32.762249, 42.415257, 17.849794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633934, 42.787285, 17.921427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038574, 0.201744, -0.978678,
		-0.946365, -0.307041, -0.100594,
		-0.320789, 0.930067, 0.179079,
		32.537697, 43.066303, 17.975151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543926, 42.472839, 17.135956>,  <32.762249, 42.415257, 17.849794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543926, 42.472839, 17.135956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560440, 42.823929, 17.326908>,  <32.570351, 43.034584, 17.441479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560440, 42.823929, 17.326908>,  <32.543926, 42.472839, 17.135956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560440, 42.823929, 17.326908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162902, 0.465480, -0.869937,
		-0.985778, 0.113682, -0.123765,
		0.041287, 0.877727, 0.477379,
		32.572826, 43.087246, 17.470121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100475, 42.981804, 16.665445>,  <32.543926, 42.472839, 17.135956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100475, 42.981804, 16.665445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344837, 43.192993, 16.901424>,  <32.491455, 43.319706, 17.043013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344837, 43.192993, 16.901424>,  <32.100475, 42.981804, 16.665445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344837, 43.192993, 16.901424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289502, 0.544582, -0.787159,
		-0.736874, 0.651671, 0.179839,
		0.610906, 0.527973, 0.589948,
		32.528111, 43.351383, 17.078409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095749, 43.759018, 16.396832>,  <32.100475, 42.981804, 16.665445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095749, 43.759018, 16.396832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430599, 43.700237, 16.607592>,  <32.631512, 43.664970, 16.734047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430599, 43.700237, 16.607592>,  <32.095749, 43.759018, 16.396832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430599, 43.700237, 16.607592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517122, 0.526628, -0.674720,
		-0.178332, 0.837298, 0.516845,
		0.837127, -0.146949, 0.526900,
		32.681736, 43.656151, 16.765661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580284, 44.341896, 16.299566>,  <32.095749, 43.759018, 16.396832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580284, 44.341896, 16.299566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836403, 44.069733, 16.442150>,  <32.990074, 43.906433, 16.527700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836403, 44.069733, 16.442150>,  <32.580284, 44.341896, 16.299566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836403, 44.069733, 16.442150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647125, 0.227810, -0.727552,
		0.413829, 0.696521, 0.586177,
		0.640293, -0.680412, 0.356462,
		33.028492, 43.865608, 16.549089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198612, 44.721222, 16.728935>,  <32.580284, 44.341896, 16.299566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198612, 44.721222, 16.728935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359516, 44.383808, 16.586586>,  <33.456059, 44.181362, 16.501177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359516, 44.383808, 16.586586>,  <33.198612, 44.721222, 16.728935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359516, 44.383808, 16.586586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515033, 0.529865, -0.673784,
		0.756922, 0.087746, 0.647587,
		0.402255, -0.843531, -0.355874,
		33.480194, 44.130749, 16.479824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789150, 44.900158, 16.503618>,  <33.198612, 44.721222, 16.728935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789150, 44.900158, 16.503618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754864, 44.549664, 16.313942>,  <33.734291, 44.339367, 16.200136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754864, 44.549664, 16.313942>,  <33.789150, 44.900158, 16.503618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754864, 44.549664, 16.313942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438446, 0.394208, -0.807691,
		0.894661, -0.277137, 0.350395,
		-0.085712, -0.876239, -0.474192,
		33.729149, 44.286793, 16.171684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459412, 44.712543, 16.229156>,  <33.789150, 44.900158, 16.503618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459412, 44.712543, 16.229156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182529, 44.532127, 16.003798>,  <34.016399, 44.423878, 15.868582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182529, 44.532127, 16.003798>,  <34.459412, 44.712543, 16.229156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182529, 44.532127, 16.003798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385203, 0.429259, -0.816918,
		0.610305, -0.782497, -0.123394,
		-0.692204, -0.451038, -0.563399,
		33.974869, 44.396816, 15.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881687, 44.594818, 15.571423>,  <34.459412, 44.712543, 16.229156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881687, 44.594818, 15.571423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511459, 44.495251, 15.457332>,  <34.289322, 44.435509, 15.388877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511459, 44.495251, 15.457332>,  <34.881687, 44.594818, 15.571423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511459, 44.495251, 15.457332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262930, 0.119376, -0.957401,
		0.272368, -0.961138, -0.045042,
		-0.925572, -0.248922, -0.285227,
		34.233788, 44.420574, 15.371763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000145, 44.304672, 15.018860>,  <34.881687, 44.594818, 15.571423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000145, 44.304672, 15.018860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614983, 44.409931, 14.994964>,  <34.383884, 44.473087, 14.980626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614983, 44.409931, 14.994964>,  <35.000145, 44.304672, 15.018860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614983, 44.409931, 14.994964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139498, 0.295923, -0.944971,
		-0.230989, -0.918250, -0.321654,
		-0.962904, 0.263148, -0.059739,
		34.326111, 44.488876, 14.977042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813206, 44.021286, 14.422546>,  <35.000145, 44.304672, 15.018860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813206, 44.021286, 14.422546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548775, 44.313931, 14.489141>,  <34.390118, 44.489517, 14.529099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548775, 44.313931, 14.489141>,  <34.813206, 44.021286, 14.422546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548775, 44.313931, 14.489141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040860, 0.256663, -0.965637,
		-0.749206, -0.631556, -0.199568,
		-0.661076, 0.731615, 0.166488,
		34.350452, 44.533417, 14.539088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353519, 44.014057, 13.870548>,  <34.813206, 44.021286, 14.422546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353519, 44.014057, 13.870548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320980, 44.382896, 14.021876>,  <34.301456, 44.604198, 14.112673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320980, 44.382896, 14.021876>,  <34.353519, 44.014057, 13.870548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320980, 44.382896, 14.021876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077605, 0.384285, -0.919947,
		-0.993660, -0.045472, -0.102818,
		-0.081344, 0.922094, 0.378320,
		34.296577, 44.659523, 14.135372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837856, 44.288116, 13.544216>,  <34.353519, 44.014057, 13.870548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837856, 44.288116, 13.544216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063961, 44.585545, 13.687093>,  <34.199623, 44.764000, 13.772819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063961, 44.585545, 13.687093>,  <33.837856, 44.288116, 13.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063961, 44.585545, 13.687093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106713, 0.495280, -0.862154,
		-0.817981, 0.449225, 0.359311,
		0.565260, 0.743569, 0.357191,
		34.233540, 44.808617, 13.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466862, 44.847206, 13.362878>,  <33.837856, 44.288116, 13.544216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466862, 44.847206, 13.362878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847973, 44.968327, 13.372000>,  <34.076641, 45.041000, 13.377473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847973, 44.968327, 13.372000>,  <33.466862, 44.847206, 13.362878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847973, 44.968327, 13.372000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133397, 0.484843, -0.864368,
		-0.272788, 0.820511, 0.502343,
		0.952781, 0.302800, 0.022805,
		34.133808, 45.059166, 13.378841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494579, 45.502720, 13.123346>,  <33.466862, 44.847206, 13.362878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494579, 45.502720, 13.123346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857742, 45.344524, 13.067780>,  <34.075642, 45.249607, 13.034439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857742, 45.344524, 13.067780>,  <33.494579, 45.502720, 13.123346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857742, 45.344524, 13.067780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008196, 0.314596, -0.949190,
		0.419092, 0.862914, 0.282383,
		0.907907, -0.395484, -0.138917,
		34.130116, 45.225880, 13.026104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977524, 45.979553, 12.783476>,  <33.494579, 45.502720, 13.123346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977524, 45.979553, 12.783476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071598, 45.605083, 12.678961>,  <34.128044, 45.380402, 12.616252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071598, 45.605083, 12.678961>,  <33.977524, 45.979553, 12.783476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071598, 45.605083, 12.678961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015846, 0.265101, -0.964090,
		0.971820, 0.230884, 0.047514,
		0.235189, -0.936170, -0.261289,
		34.142155, 45.324234, 12.600574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585621, 45.890217, 12.310165>,  <33.977524, 45.979553, 12.783476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585621, 45.890217, 12.310165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302101, 45.616169, 12.242970>,  <34.131989, 45.451740, 12.202654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302101, 45.616169, 12.242970>,  <34.585621, 45.890217, 12.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302101, 45.616169, 12.242970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092738, 0.326573, -0.940611,
		0.699293, -0.651121, -0.295010,
		-0.708794, -0.685121, -0.167986,
		34.089462, 45.410633, 12.192575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784561, 46.533783, 12.327934>,  <34.585621, 45.890217, 12.310165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784561, 46.533783, 12.327934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509449, 46.533539, 12.618302>,  <34.344383, 46.533394, 12.792523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509449, 46.533539, 12.618302>,  <34.784561, 46.533783, 12.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509449, 46.533539, 12.618302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622381, 0.514209, 0.590111,
		-0.373634, 0.857665, -0.353283,
		-0.687779, -0.000609, 0.725920,
		34.303116, 46.533356, 12.836079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921909, 47.185459, 12.682668>,  <34.784561, 46.533783, 12.327934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921909, 47.185459, 12.682668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742863, 46.946865, 12.949156>,  <34.635433, 46.803711, 13.109049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742863, 46.946865, 12.949156>,  <34.921909, 47.185459, 12.682668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742863, 46.946865, 12.949156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450498, 0.493155, 0.744211,
		-0.772458, 0.633252, 0.047970,
		-0.447617, -0.596482, 0.666220,
		34.608578, 46.767921, 13.149022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182739, 47.392014, 13.321878>,  <34.921909, 47.185459, 12.682668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182739, 47.392014, 13.321878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969116, 47.081337, 13.455471>,  <34.840942, 46.894932, 13.535626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969116, 47.081337, 13.455471>,  <35.182739, 47.392014, 13.321878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969116, 47.081337, 13.455471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317289, 0.182036, 0.930694,
		-0.783654, 0.603009, 0.149217,
		-0.534054, -0.776687, 0.333982,
		34.808899, 46.848331, 13.555666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407806, 47.491997, 13.419093>,  <35.182739, 47.392014, 13.321878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407806, 47.491997, 13.419093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111561, 47.384193, 13.665298>,  <33.933815, 47.319511, 13.813022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111561, 47.384193, 13.665298>,  <34.407806, 47.491997, 13.419093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111561, 47.384193, 13.665298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246713, -0.961124, -0.123989,
		0.625001, 0.060027, 0.778312,
		-0.740612, -0.269513, 0.615513,
		33.889378, 47.303341, 13.849953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512417, 47.858627, 14.028129>,  <34.407806, 47.491997, 13.419093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512417, 47.858627, 14.028129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406101, 47.499790, 14.169314>,  <34.342312, 47.284489, 14.254025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406101, 47.499790, 14.169314>,  <34.512417, 47.858627, 14.028129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406101, 47.499790, 14.169314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398858, 0.230994, 0.887442,
		-0.877648, 0.376658, 0.296415,
		-0.265792, -0.897090, 0.352965,
		34.326363, 47.230663, 14.275204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416183, 47.950638, 14.704784>,  <34.512417, 47.858627, 14.028129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416183, 47.950638, 14.704784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467777, 47.554165, 14.716915>,  <34.498734, 47.316280, 14.724194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467777, 47.554165, 14.716915>,  <34.416183, 47.950638, 14.704784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467777, 47.554165, 14.716915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360236, 0.075327, 0.929815,
		-0.923901, -0.109006, 0.366776,
		0.128984, -0.991183, 0.030327,
		34.506474, 47.256809, 14.726013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210461, 47.784946, 15.377213>,  <34.416183, 47.950638, 14.704784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210461, 47.784946, 15.377213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364212, 47.438469, 15.249487>,  <34.456463, 47.230583, 15.172852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364212, 47.438469, 15.249487>,  <34.210461, 47.784946, 15.377213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364212, 47.438469, 15.249487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124353, -0.294155, 0.947633,
		-0.914764, -0.403954, -0.005352,
		0.384374, -0.866195, -0.319315,
		34.479523, 47.178612, 15.153692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770557, 47.379128, 15.636370>,  <34.210461, 47.784946, 15.377213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770557, 47.379128, 15.636370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118446, 47.184418, 15.603786>,  <34.327179, 47.067593, 15.584237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118446, 47.184418, 15.603786>,  <33.770557, 47.379128, 15.636370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118446, 47.184418, 15.603786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004730, -0.173258, 0.984865,
		-0.493522, -0.856172, -0.152989,
		0.869721, -0.486776, -0.081457,
		34.379364, 47.038383, 15.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694675, 46.730801, 15.950678>,  <33.770557, 47.379128, 15.636370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694675, 46.730801, 15.950678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092945, 46.767433, 15.944421>,  <34.331905, 46.789413, 15.940667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092945, 46.767433, 15.944421>,  <33.694675, 46.730801, 15.950678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092945, 46.767433, 15.944421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031772, -0.177421, 0.983622,
		0.087307, -0.979864, -0.179563,
		0.995675, 0.091582, -0.015642,
		34.391647, 46.794907, 15.939729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955608, 46.100834, 16.248537>,  <33.694675, 46.730801, 15.950678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955608, 46.100834, 16.248537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234554, 46.384575, 16.289503>,  <34.401924, 46.554821, 16.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234554, 46.384575, 16.289503>,  <33.955608, 46.100834, 16.248537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234554, 46.384575, 16.289503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104880, -0.242362, 0.964500,
		0.708997, -0.661871, -0.243413,
		0.697369, 0.709357, 0.102417,
		34.443764, 46.597382, 16.320229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470085, 45.716885, 16.612770>,  <33.955608, 46.100834, 16.248537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470085, 45.716885, 16.612770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559246, 46.104324, 16.656822>,  <34.612743, 46.336788, 16.683254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559246, 46.104324, 16.656822>,  <34.470085, 45.716885, 16.612770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559246, 46.104324, 16.656822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236390, -0.163308, 0.957836,
		0.945745, -0.187473, -0.265369,
		0.222906, 0.968599, 0.110131,
		34.626118, 46.394905, 16.689861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035244, 45.770016, 17.129429>,  <34.470085, 45.716885, 16.612770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035244, 45.770016, 17.129429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878204, 46.137882, 17.125904>,  <34.783981, 46.358601, 17.123789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878204, 46.137882, 17.125904>,  <35.035244, 45.770016, 17.129429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878204, 46.137882, 17.125904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236946, 0.110402, 0.965229,
		0.888661, 0.376864, -0.261255,
		-0.392603, 0.919666, -0.008813,
		34.760422, 46.413780, 17.123260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499748, 46.064869, 17.465746>,  <35.035244, 45.770016, 17.129429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499748, 46.064869, 17.465746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189754, 46.315723, 17.496979>,  <35.003757, 46.466236, 17.515718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189754, 46.315723, 17.496979>,  <35.499748, 46.064869, 17.465746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189754, 46.315723, 17.496979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194494, 0.119121, 0.973644,
		0.601306, 0.769747, -0.214291,
		-0.774986, 0.627137, 0.078083,
		34.957260, 46.503864, 17.520403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736542, 46.739925, 17.820536>,  <35.499748, 46.064869, 17.465746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736542, 46.739925, 17.820536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342094, 46.684967, 17.857813>,  <35.105427, 46.651993, 17.880180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342094, 46.684967, 17.857813>,  <35.736542, 46.739925, 17.820536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342094, 46.684967, 17.857813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089237, 0.034699, 0.995406,
		-0.140001, 0.989908, -0.021957,
		-0.986122, -0.137399, 0.093194,
		35.046257, 46.643749, 17.885771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542694, 47.218872, 18.203247>,  <35.736542, 46.739925, 17.820536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542694, 47.218872, 18.203247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244743, 46.952744, 18.223269>,  <35.065975, 46.793064, 18.235281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244743, 46.952744, 18.223269>,  <35.542694, 47.218872, 18.203247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244743, 46.952744, 18.223269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157250, -0.102153, 0.982261,
		-0.648409, 0.739532, 0.180713,
		-0.744874, -0.665325, 0.050054,
		35.021282, 46.753147, 18.238285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102459, 47.290367, 18.835175>,  <35.542694, 47.218872, 18.203247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102459, 47.290367, 18.835175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035324, 46.913353, 18.719618>,  <34.995045, 46.687145, 18.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035324, 46.913353, 18.719618>,  <35.102459, 47.290367, 18.835175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035324, 46.913353, 18.719618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024219, -0.289016, 0.957018,
		-0.985518, 0.167616, 0.025679,
		-0.167833, -0.942536, -0.288890,
		34.984974, 46.630592, 18.632950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505142, 47.063129, 19.220160>,  <35.102459, 47.290367, 18.835175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505142, 47.063129, 19.220160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662514, 46.712814, 19.108294>,  <34.756935, 46.502625, 19.041174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662514, 46.712814, 19.108294>,  <34.505142, 47.063129, 19.220160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662514, 46.712814, 19.108294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014763, -0.298139, 0.954408,
		-0.919236, -0.379621, -0.104367,
		0.393429, -0.875786, -0.279664,
		34.780544, 46.450077, 19.024395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373829, 46.691845, 19.840513>,  <34.505142, 47.063129, 19.220160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373829, 46.691845, 19.840513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562920, 46.414658, 19.622772>,  <34.676373, 46.248344, 19.492128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562920, 46.414658, 19.622772>,  <34.373829, 46.691845, 19.840513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562920, 46.414658, 19.622772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187261, -0.524626, 0.830482,
		-0.861082, -0.494527, -0.118239,
		0.472727, -0.692972, -0.544352,
		34.704739, 46.206764, 19.459467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998142, 46.025459, 19.790312>,  <34.373829, 46.691845, 19.840513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998142, 46.025459, 19.790312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388138, 45.948116, 19.746475>,  <34.622135, 45.901711, 19.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388138, 45.948116, 19.746475>,  <33.998142, 46.025459, 19.790312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388138, 45.948116, 19.746475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019871, -0.566953, 0.823511,
		-0.221363, -0.800736, -0.556615,
		0.974989, -0.193356, -0.109591,
		34.680634, 45.890110, 19.713598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176701, 45.318165, 19.737255>,  <33.998142, 46.025459, 19.790312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176701, 45.318165, 19.737255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520691, 45.477951, 19.864300>,  <34.727085, 45.573822, 19.940527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520691, 45.477951, 19.864300>,  <34.176701, 45.318165, 19.737255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520691, 45.477951, 19.864300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061817, -0.536234, 0.841803,
		0.506581, -0.743562, -0.436453,
		0.859974, 0.399461, 0.317611,
		34.778683, 45.597790, 19.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676296, 44.742092, 20.017570>,  <34.176701, 45.318165, 19.737255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676296, 44.742092, 20.017570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818676, 45.072906, 20.191614>,  <34.904102, 45.271393, 20.296040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818676, 45.072906, 20.191614>,  <34.676296, 44.742092, 20.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818676, 45.072906, 20.191614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010573, -0.462007, 0.886813,
		0.934446, -0.320259, -0.155706,
		0.355947, 0.827033, 0.435107,
		34.925461, 45.321018, 20.322145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131275, 44.439201, 20.609589>,  <34.676296, 44.742092, 20.017570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131275, 44.439201, 20.609589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030590, 44.822842, 20.661371>,  <34.970177, 45.053028, 20.692442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030590, 44.822842, 20.661371>,  <35.131275, 44.439201, 20.609589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030590, 44.822842, 20.661371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118718, -0.163355, 0.979399,
		0.960492, 0.231162, 0.154982,
		-0.251717, 0.959103, 0.129458,
		34.955074, 45.110573, 20.700209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529907, 44.723282, 21.191082>,  <35.131275, 44.439201, 20.609589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529907, 44.723282, 21.191082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218277, 44.972168, 21.160406>,  <35.031300, 45.121498, 21.142000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218277, 44.972168, 21.160406>,  <35.529907, 44.723282, 21.191082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218277, 44.972168, 21.160406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165697, -0.086385, 0.982386,
		0.604631, 0.778065, 0.170400,
		-0.779080, 0.622216, -0.076692,
		34.984554, 45.158833, 21.137398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569801, 45.224098, 21.779177>,  <35.529907, 44.723282, 21.191082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569801, 45.224098, 21.779177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187145, 45.242565, 21.664143>,  <34.957550, 45.253647, 21.595123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187145, 45.242565, 21.664143>,  <35.569801, 45.224098, 21.779177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187145, 45.242565, 21.664143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290192, -0.066382, 0.954663,
		0.024983, 0.996726, 0.076901,
		-0.956642, 0.046167, -0.287584,
		34.900154, 45.256416, 21.577868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330513, 45.671082, 22.242586>,  <35.569801, 45.224098, 21.779177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330513, 45.671082, 22.242586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999779, 45.479031, 22.125408>,  <34.801338, 45.363800, 22.055101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999779, 45.479031, 22.125408>,  <35.330513, 45.671082, 22.242586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999779, 45.479031, 22.125408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347733, 0.027008, 0.937205,
		-0.442068, 0.876782, -0.189288,
		-0.826836, -0.480130, -0.292946,
		34.751728, 45.334991, 22.037525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788971, 46.004799, 22.481356>,  <35.330513, 45.671082, 22.242586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788971, 46.004799, 22.481356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635654, 45.646263, 22.392216>,  <34.543667, 45.431141, 22.338732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635654, 45.646263, 22.392216>,  <34.788971, 46.004799, 22.481356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635654, 45.646263, 22.392216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420124, -0.045681, 0.906316,
		-0.822548, 0.441006, -0.359065,
		-0.383289, -0.896341, -0.222852,
		34.520668, 45.377361, 22.325359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153545, 46.073643, 22.712111>,  <34.788971, 46.004799, 22.481356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153545, 46.073643, 22.712111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183834, 45.676273, 22.677744>,  <34.202007, 45.437851, 22.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183834, 45.676273, 22.677744>,  <34.153545, 46.073643, 22.712111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183834, 45.676273, 22.677744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638901, -0.114489, 0.760722,
		-0.765553, -0.002709, -0.643367,
		0.075719, -0.993421, -0.085917,
		34.206551, 45.378246, 22.651968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503395, 45.952793, 22.943356>,  <34.153545, 46.073643, 22.712111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503395, 45.952793, 22.943356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712055, 45.612141, 22.922905>,  <33.837250, 45.407749, 22.910635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712055, 45.612141, 22.922905>,  <33.503395, 45.952793, 22.943356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712055, 45.612141, 22.922905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607129, -0.412650, 0.679054,
		-0.599399, -0.323186, -0.732306,
		0.521647, -0.851628, -0.051126,
		33.868549, 45.356651, 22.907568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021049, 45.390938, 22.856737>,  <33.503395, 45.952793, 22.943356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021049, 45.390938, 22.856737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346504, 45.226875, 23.021553>,  <33.541775, 45.128437, 23.120441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346504, 45.226875, 23.021553>,  <33.021049, 45.390938, 22.856737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346504, 45.226875, 23.021553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528019, -0.224723, 0.818960,
		-0.243300, -0.883899, -0.399408,
		0.813635, -0.410148, 0.412040,
		33.590595, 45.103828, 23.145164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770214, 44.679546, 23.103800>,  <33.021049, 45.390938, 22.856737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770214, 44.679546, 23.103800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109245, 44.751682, 23.303438>,  <33.312664, 44.794964, 23.423222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109245, 44.751682, 23.303438>,  <32.770214, 44.679546, 23.103800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109245, 44.751682, 23.303438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464359, -0.203230, 0.862014,
		0.256884, -0.962381, -0.088512,
		0.847574, 0.180336, 0.499097,
		33.363518, 44.805782, 23.453167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954330, 44.164379, 23.681858>,  <32.770214, 44.679546, 23.103800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954330, 44.164379, 23.681858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127316, 44.505390, 23.799282>,  <33.231106, 44.709995, 23.869736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127316, 44.505390, 23.799282>,  <32.954330, 44.164379, 23.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127316, 44.505390, 23.799282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200067, -0.226734, 0.953187,
		0.879177, -0.470947, 0.072509,
		0.432460, 0.852526, 0.293560,
		33.257053, 44.761147, 23.887350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380177, 44.028835, 24.269747>,  <32.954330, 44.164379, 23.681858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380177, 44.028835, 24.269747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325661, 44.423954, 24.299913>,  <33.292953, 44.661026, 24.318014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325661, 44.423954, 24.299913>,  <33.380177, 44.028835, 24.269747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325661, 44.423954, 24.299913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267871, -0.110037, 0.957151,
		0.953767, 0.110243, 0.279598,
		-0.136285, 0.987795, 0.075419,
		33.284775, 44.720291, 24.322538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667580, 44.190491, 24.903311>,  <33.380177, 44.028835, 24.269747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667580, 44.190491, 24.903311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448711, 44.517513, 24.831539>,  <33.317390, 44.713726, 24.788475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448711, 44.517513, 24.831539>,  <33.667580, 44.190491, 24.903311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448711, 44.517513, 24.831539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287966, 0.017411, 0.957482,
		0.785924, 0.575579, 0.225902,
		-0.547173, 0.817561, -0.179431,
		33.284561, 44.762783, 24.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787846, 44.726402, 25.390804>,  <33.667580, 44.190491, 24.903311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787846, 44.726402, 25.390804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423309, 44.815300, 25.252199>,  <33.204590, 44.868641, 25.169037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423309, 44.815300, 25.252199>,  <33.787846, 44.726402, 25.390804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423309, 44.815300, 25.252199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320787, 0.144122, 0.936122,
		0.257990, 0.964279, -0.060050,
		-0.911338, 0.222247, -0.346511,
		33.149906, 44.881973, 25.148247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514008, 45.270214, 25.873917>,  <33.787846, 44.726402, 25.390804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514008, 45.270214, 25.873917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195507, 45.144600, 25.667086>,  <33.004406, 45.069233, 25.542988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195507, 45.144600, 25.667086>,  <33.514008, 45.270214, 25.873917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195507, 45.144600, 25.667086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534696, -0.034502, 0.844340,
		-0.282993, 0.948784, -0.140442,
		-0.796251, -0.314036, -0.517075,
		32.956631, 45.050388, 25.511963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936432, 45.777771, 25.920328>,  <33.514008, 45.270214, 25.873917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936432, 45.777771, 25.920328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712128, 45.466595, 25.806940>,  <32.577545, 45.279888, 25.738907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712128, 45.466595, 25.806940>,  <32.936432, 45.777771, 25.920328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712128, 45.466595, 25.806940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390092, -0.053756, 0.919205,
		-0.730327, 0.626032, -0.273325,
		-0.560759, -0.777942, -0.283470,
		32.543900, 45.233212, 25.721899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247513, 45.937450, 26.029182>,  <32.936432, 45.777771, 25.920328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247513, 45.937450, 26.029182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280876, 45.539513, 26.052246>,  <32.300896, 45.300751, 26.066084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280876, 45.539513, 26.052246>,  <32.247513, 45.937450, 26.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280876, 45.539513, 26.052246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469084, 0.011851, 0.883074,
		-0.879206, -0.100705, -0.465678,
		0.083411, -0.994846, 0.057659,
		32.305901, 45.241058, 26.069544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575678, 45.627090, 26.417698>,  <32.247513, 45.937450, 26.029182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575678, 45.627090, 26.417698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851797, 45.340435, 26.457535>,  <32.017467, 45.168442, 26.481436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851797, 45.340435, 26.457535>,  <31.575678, 45.627090, 26.417698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851797, 45.340435, 26.457535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333103, -0.192588, 0.923012,
		-0.642288, -0.670326, -0.371658,
		0.690296, -0.716640, 0.099591,
		32.058887, 45.125443, 26.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274183, 45.302570, 26.903681>,  <31.575678, 45.627090, 26.417698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274183, 45.302570, 26.903681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637629, 45.135536, 26.901024>,  <31.855696, 45.035316, 26.899429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637629, 45.135536, 26.901024>,  <31.274183, 45.302570, 26.903681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637629, 45.135536, 26.901024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083656, -0.197562, 0.976714,
		-0.409176, -0.886899, -0.214441,
		0.908613, -0.417587, -0.006643,
		31.910213, 45.010262, 26.899031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186647, 44.550514, 27.123169>,  <31.274183, 45.302570, 26.903681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186647, 44.550514, 27.123169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556089, 44.681469, 27.202948>,  <31.777754, 44.760040, 27.250814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556089, 44.681469, 27.202948>,  <31.186647, 44.550514, 27.123169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556089, 44.681469, 27.202948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171812, -0.111575, 0.978791,
		0.342693, -0.938281, -0.046803,
		0.923603, 0.327384, 0.199444,
		31.833170, 44.779682, 27.262781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353161, 44.074318, 27.646589>,  <31.186647, 44.550514, 27.123169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353161, 44.074318, 27.646589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638903, 44.353161, 27.671043>,  <31.810349, 44.520466, 27.685717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638903, 44.353161, 27.671043>,  <31.353161, 44.074318, 27.646589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638903, 44.353161, 27.671043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013425, -0.073695, 0.997190,
		0.699654, -0.713170, -0.043286,
		0.714356, 0.697107, 0.061136,
		31.853209, 44.562294, 27.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838989, 43.817802, 28.017708>,  <31.353161, 44.074318, 27.646589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838989, 43.817802, 28.017708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863651, 44.216240, 28.042974>,  <31.878448, 44.455303, 28.058134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863651, 44.216240, 28.042974>,  <31.838989, 43.817802, 28.017708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863651, 44.216240, 28.042974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135525, -0.071055, 0.988223,
		0.988854, -0.052369, -0.139377,
		0.061656, 0.996097, 0.063165,
		31.882149, 44.515068, 28.061924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533432, 43.892426, 28.392300>,  <31.838989, 43.817802, 28.017708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533432, 43.892426, 28.392300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317429, 44.228661, 28.409273>,  <32.187824, 44.430401, 28.419456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317429, 44.228661, 28.409273>,  <32.533432, 43.892426, 28.392300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317429, 44.228661, 28.409273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114092, 0.023158, 0.993200,
		0.833889, 0.541180, -0.108410,
		-0.540011, 0.840588, 0.042433,
		32.155426, 44.480839, 28.422003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831005, 44.143478, 28.913435>,  <32.533432, 43.892426, 28.392300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831005, 44.143478, 28.913435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486206, 44.346111, 28.920723>,  <32.279327, 44.467690, 28.925095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486206, 44.346111, 28.920723>,  <32.831005, 44.143478, 28.913435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486206, 44.346111, 28.920723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029983, -0.086829, 0.995772,
		0.506023, 0.857808, 0.090036,
		-0.861999, 0.506583, 0.018218,
		32.227608, 44.498085, 28.926188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926937, 44.678337, 29.316282>,  <32.831005, 44.143478, 28.913435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926937, 44.678337, 29.316282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535595, 44.596043, 29.325233>,  <32.300789, 44.546665, 29.330605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535595, 44.596043, 29.325233>,  <32.926937, 44.678337, 29.316282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535595, 44.596043, 29.325233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061979, -0.188126, 0.980187,
		-0.197452, 0.960354, 0.196805,
		-0.978351, -0.205738, 0.022376,
		32.242088, 44.534321, 29.331945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517891, 44.978374, 29.164595>,  <32.926937, 44.678337, 29.316282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517891, 44.978374, 29.164595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859531, 44.828533, 29.308918>,  <34.064514, 44.738628, 29.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859531, 44.828533, 29.308918>,  <33.517891, 44.978374, 29.164595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859531, 44.828533, 29.308918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439744, 0.149673, -0.885564,
		0.277730, 0.915026, 0.292565,
		0.854103, -0.374601, 0.360809,
		34.115761, 44.716152, 29.417160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034763, 45.435219, 28.975636>,  <33.517891, 44.978374, 29.164595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034763, 45.435219, 28.975636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201523, 45.079483, 29.050760>,  <34.301579, 44.866043, 29.095835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201523, 45.079483, 29.050760>,  <34.034763, 45.435219, 28.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201523, 45.079483, 29.050760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682955, 0.170133, -0.710371,
		0.599807, 0.424421, 0.678306,
		0.416899, -0.889338, 0.187814,
		34.326591, 44.812683, 29.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867836, 45.536713, 29.054272>,  <34.034763, 45.435219, 28.975636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867836, 45.536713, 29.054272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807755, 45.154083, 28.954351>,  <34.771706, 44.924503, 28.894400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807755, 45.154083, 28.954351>,  <34.867836, 45.536713, 29.054272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807755, 45.154083, 28.954351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676841, 0.084675, -0.731243,
		0.720641, -0.278913, 0.634731,
		-0.150207, -0.956576, -0.249800,
		34.762691, 44.867111, 28.879412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477280, 45.342472, 28.826654>,  <34.867836, 45.536713, 29.054272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477280, 45.342472, 28.826654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241516, 45.060844, 28.668217>,  <35.100060, 44.891869, 28.573154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241516, 45.060844, 28.668217>,  <35.477280, 45.342472, 28.826654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241516, 45.060844, 28.668217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498492, 0.068844, -0.864156,
		0.635692, -0.706789, 0.310394,
		-0.589408, -0.704066, -0.396092,
		35.064693, 44.849625, 28.549389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914436, 44.868851, 28.495880>,  <35.477280, 45.342472, 28.826654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914436, 44.868851, 28.495880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562443, 44.803059, 28.317631>,  <35.351246, 44.763584, 28.210682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562443, 44.803059, 28.317631>,  <35.914436, 44.868851, 28.495880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562443, 44.803059, 28.317631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452490, -0.004833, -0.891756,
		0.144524, -0.986368, 0.078680,
		-0.879980, -0.164482, -0.445624,
		35.298450, 44.753716, 28.183943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012314, 44.294617, 28.068823>,  <35.914436, 44.868851, 28.495880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012314, 44.294617, 28.068823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679070, 44.460545, 27.922487>,  <35.479122, 44.560101, 27.834686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679070, 44.460545, 27.922487>,  <36.012314, 44.294617, 28.068823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679070, 44.460545, 27.922487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406943, 0.011765, -0.913377,
		-0.374587, -0.909825, -0.178612,
		-0.833115, 0.414824, -0.365840,
		35.429134, 44.584991, 27.812735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851685, 43.862926, 27.453327>,  <36.012314, 44.294617, 28.068823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851685, 43.862926, 27.453327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668396, 44.218014, 27.435478>,  <35.558422, 44.431065, 27.424768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668396, 44.218014, 27.435478>,  <35.851685, 43.862926, 27.453327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668396, 44.218014, 27.435478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226331, 0.067984, -0.971675,
		-0.859541, -0.455339, -0.232070,
		-0.458219, 0.887719, -0.044622,
		35.530930, 44.484329, 27.422092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513714, 43.965858, 26.766682>,  <35.851685, 43.862926, 27.453327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513714, 43.965858, 26.766682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521301, 44.336491, 26.916933>,  <35.525856, 44.558868, 27.007084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521301, 44.336491, 26.916933>,  <35.513714, 43.965858, 26.766682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521301, 44.336491, 26.916933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369709, 0.342565, -0.863693,
		-0.928954, 0.155257, -0.336065,
		0.018970, 0.926577, 0.375627,
		35.526993, 44.614464, 27.029621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213963, 44.389690, 26.173786>,  <35.513714, 43.965858, 26.766682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213963, 44.389690, 26.173786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398151, 44.660053, 26.403955>,  <35.508663, 44.822273, 26.542057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398151, 44.660053, 26.403955>,  <35.213963, 44.389690, 26.173786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398151, 44.660053, 26.403955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448233, 0.382477, -0.807960,
		-0.766193, 0.629967, -0.126844,
		0.460473, 0.675909, 0.575423,
		35.536293, 44.862827, 26.576582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061653, 45.091694, 25.808161>,  <35.213963, 44.389690, 26.173786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061653, 45.091694, 25.808161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391060, 45.135891, 26.030733>,  <35.588703, 45.162411, 26.164276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391060, 45.135891, 26.030733>,  <35.061653, 45.091694, 25.808161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391060, 45.135891, 26.030733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465663, 0.428549, -0.774276,
		-0.324009, 0.896737, 0.301464,
		0.823514, 0.110491, 0.556431,
		35.638115, 45.169037, 26.197662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256763, 45.897259, 25.755531>,  <35.061653, 45.091694, 25.808161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256763, 45.897259, 25.755531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575928, 45.700039, 25.894230>,  <35.767426, 45.581707, 25.977449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575928, 45.700039, 25.894230>,  <35.256763, 45.897259, 25.755531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575928, 45.700039, 25.894230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586196, 0.500752, -0.636884,
		0.140384, 0.711439, 0.688583,
		0.797914, -0.493053, 0.346745,
		35.815300, 45.552124, 25.998253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852650, 46.404903, 25.814566>,  <35.256763, 45.897259, 25.755531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852650, 46.404903, 25.814566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036846, 46.051582, 25.779406>,  <36.147366, 45.839592, 25.758310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036846, 46.051582, 25.779406>,  <35.852650, 46.404903, 25.814566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036846, 46.051582, 25.779406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626790, 0.393680, -0.672421,
		0.628554, 0.254551, 0.734931,
		0.460493, -0.883300, -0.087900,
		36.174995, 45.786591, 25.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497368, 46.571114, 25.848564>,  <35.852650, 46.404903, 25.814566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497368, 46.571114, 25.848564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494675, 46.215096, 25.666231>,  <36.493061, 46.001484, 25.556831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494675, 46.215096, 25.666231>,  <36.497368, 46.571114, 25.848564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494675, 46.215096, 25.666231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543719, 0.379311, -0.748660,
		0.839240, -0.252883, 0.481380,
		-0.006731, -0.890041, -0.455830,
		36.492657, 45.948082, 25.529482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172760, 46.495220, 25.521034>,  <36.497368, 46.571114, 25.848564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172760, 46.495220, 25.521034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955250, 46.214748, 25.336575>,  <36.824745, 46.046467, 25.225899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955250, 46.214748, 25.336575>,  <37.172760, 46.495220, 25.521034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955250, 46.214748, 25.336575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458123, 0.212391, -0.863142,
		0.703160, -0.680617, 0.205734,
		-0.543773, -0.701179, -0.461151,
		36.792118, 46.004395, 25.198229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671852, 46.154770, 25.102341>,  <37.172760, 46.495220, 25.521034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671852, 46.154770, 25.102341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318398, 46.073391, 24.933678>,  <37.106323, 46.024563, 24.832479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318398, 46.073391, 24.933678>,  <37.671852, 46.154770, 25.102341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318398, 46.073391, 24.933678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392273, 0.169888, -0.904024,
		0.255560, -0.964233, -0.070311,
		-0.883635, -0.203451, -0.421659,
		37.053307, 46.012356, 24.807180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915176, 45.769848, 24.566879>,  <37.671852, 46.154770, 25.102341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915176, 45.769848, 24.566879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538403, 45.880413, 24.490610>,  <37.312340, 45.946751, 24.444849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538403, 45.880413, 24.490610>,  <37.915176, 45.769848, 24.566879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538403, 45.880413, 24.490610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182875, -0.053971, -0.981654,
		-0.281634, -0.959522, 0.000288,
		-0.941934, 0.276414, -0.190673,
		37.255821, 45.963337, 24.433409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696842, 45.297050, 24.070242>,  <37.915176, 45.769848, 24.566879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696842, 45.297050, 24.070242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462715, 45.619156, 24.032394>,  <37.322239, 45.812420, 24.009686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462715, 45.619156, 24.032394>,  <37.696842, 45.297050, 24.070242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462715, 45.619156, 24.032394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052600, -0.078737, -0.995507,
		-0.809100, -0.587659, 0.003729,
		-0.585313, 0.805268, -0.094616,
		37.287121, 45.860737, 24.004009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153111, 45.099995, 23.574202>,  <37.696842, 45.297050, 24.070242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153111, 45.099995, 23.574202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146793, 45.499882, 23.567169>,  <37.143002, 45.739815, 23.562950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146793, 45.499882, 23.567169>,  <37.153111, 45.099995, 23.574202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146793, 45.499882, 23.567169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030088, -0.018050, -0.999384,
		-0.999422, -0.015255, 0.030365,
		-0.015794, 0.999721, -0.017581,
		37.142056, 45.799797, 23.561895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735344, 45.241993, 23.031633>,  <37.153111, 45.099995, 23.574202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735344, 45.241993, 23.031633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924263, 45.592525, 23.069550>,  <37.037613, 45.802845, 23.092300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924263, 45.592525, 23.069550>,  <36.735344, 45.241993, 23.031633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924263, 45.592525, 23.069550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162144, 0.019330, -0.986578,
		-0.866397, 0.481329, -0.132962,
		0.472298, 0.876327, 0.094792,
		37.065952, 45.855423, 23.097986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551392, 45.624310, 22.537184>,  <36.735344, 45.241993, 23.031633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551392, 45.624310, 22.537184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889565, 45.815689, 22.632126>,  <37.092468, 45.930515, 22.689091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889565, 45.815689, 22.632126>,  <36.551392, 45.624310, 22.537184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889565, 45.815689, 22.632126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288527, -0.035154, -0.956826,
		-0.449449, 0.877411, -0.167766,
		0.845428, 0.478449, 0.237356,
		37.143192, 45.959225, 22.703333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499825, 46.105652, 21.929876>,  <36.551392, 45.624310, 22.537184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499825, 46.105652, 21.929876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869026, 46.109432, 22.083746>,  <37.090546, 46.111698, 22.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869026, 46.109432, 22.083746>,  <36.499825, 46.105652, 21.929876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869026, 46.109432, 22.083746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371789, 0.235755, -0.897882,
		-0.099171, 0.971767, 0.214090,
		0.923005, 0.009447, 0.384672,
		37.145927, 46.112267, 22.199148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857113, 46.686295, 21.640434>,  <36.499825, 46.105652, 21.929876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857113, 46.686295, 21.640434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136044, 46.441021, 21.788889>,  <37.303402, 46.293858, 21.877962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136044, 46.441021, 21.788889>,  <36.857113, 46.686295, 21.640434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136044, 46.441021, 21.788889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478056, 0.012089, -0.878246,
		0.534038, 0.789850, 0.301564,
		0.697328, -0.613181, 0.371137,
		37.345242, 46.257065, 21.900230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449635, 47.013260, 21.418552>,  <36.857113, 46.686295, 21.640434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449635, 47.013260, 21.418552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490135, 46.621067, 21.485970>,  <37.514435, 46.385750, 21.526421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490135, 46.621067, 21.485970>,  <37.449635, 47.013260, 21.418552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490135, 46.621067, 21.485970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460756, -0.103936, -0.881420,
		0.881733, 0.166899, 0.441239,
		0.101248, -0.980481, 0.168543,
		37.520508, 46.326923, 21.536533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917049, 47.039158, 21.016336>,  <37.449635, 47.013260, 21.418552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917049, 47.039158, 21.016336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803757, 46.661388, 21.083094>,  <37.735783, 46.434727, 21.123148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803757, 46.661388, 21.083094>,  <37.917049, 47.039158, 21.016336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803757, 46.661388, 21.083094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265082, -0.244328, -0.932757,
		0.921690, -0.219946, 0.319550,
		-0.283231, -0.944419, 0.166891,
		37.718788, 46.378063, 21.133162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372688, 46.647995, 20.661995>,  <37.917049, 47.039158, 21.016336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372688, 46.647995, 20.661995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062759, 46.397655, 20.697704>,  <37.876804, 46.247452, 20.719130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062759, 46.397655, 20.697704>,  <38.372688, 46.647995, 20.661995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062759, 46.397655, 20.697704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162143, -0.333226, -0.928801,
		0.611037, -0.705177, 0.359666,
		-0.774818, -0.625849, 0.089274,
		37.830315, 46.209900, 20.724487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579052, 46.129974, 20.284113>,  <38.372688, 46.647995, 20.661995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579052, 46.129974, 20.284113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182961, 46.078064, 20.304562>,  <37.945305, 46.046917, 20.316832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182961, 46.078064, 20.304562>,  <38.579052, 46.129974, 20.284113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182961, 46.078064, 20.304562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000104, -0.365826, -0.930683,
		0.139486, -0.921590, 0.362236,
		-0.990224, -0.129780, 0.051123,
		37.885895, 46.039131, 20.319899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556736, 45.463722, 20.058504>,  <38.579052, 46.129974, 20.284113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556736, 45.463722, 20.058504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204800, 45.636208, 19.978571>,  <37.993637, 45.739700, 19.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204800, 45.636208, 19.978571>,  <38.556736, 45.463722, 20.058504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204800, 45.636208, 19.978571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012703, -0.441647, -0.897099,
		-0.475103, -0.786764, 0.394056,
		-0.879839, 0.431221, -0.199834,
		37.940845, 45.765572, 19.918621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052223, 44.955208, 19.802084>,  <38.556736, 45.463722, 20.058504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052223, 44.955208, 19.802084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871090, 45.286797, 19.670784>,  <37.762409, 45.485752, 19.592005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871090, 45.286797, 19.670784>,  <38.052223, 44.955208, 19.802084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871090, 45.286797, 19.670784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198794, -0.452765, -0.869186,
		-0.869153, -0.328338, 0.369820,
		-0.452828, 0.828974, -0.328250,
		37.735241, 45.535488, 19.572309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467693, 44.727772, 19.576982>,  <38.052223, 44.955208, 19.802084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467693, 44.727772, 19.576982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523842, 45.076759, 19.389751>,  <37.557533, 45.286152, 19.277412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523842, 45.076759, 19.389751>,  <37.467693, 44.727772, 19.576982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523842, 45.076759, 19.389751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040734, -0.467271, -0.883175,
		-0.989260, 0.143042, -0.030054,
		0.140375, 0.872466, -0.468079,
		37.565956, 45.338501, 19.249329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923462, 44.780014, 19.104309>,  <37.467693, 44.727772, 19.576982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923462, 44.780014, 19.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168064, 45.050484, 18.939943>,  <37.314827, 45.212765, 18.841324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168064, 45.050484, 18.939943>,  <36.923462, 44.780014, 19.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168064, 45.050484, 18.939943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152239, -0.409081, -0.899709,
		-0.776454, 0.612737, -0.147217,
		0.611509, 0.676170, -0.410915,
		37.351517, 45.253334, 18.816669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526897, 45.093063, 18.481737>,  <36.923462, 44.780014, 19.104309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526897, 45.093063, 18.481737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921803, 45.151806, 18.457239>,  <37.158745, 45.187054, 18.442541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921803, 45.151806, 18.457239>,  <36.526897, 45.093063, 18.481737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921803, 45.151806, 18.457239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006912, -0.344947, -0.938597,
		-0.158967, 0.927062, -0.339537,
		0.987260, 0.146859, -0.061243,
		37.217979, 45.195862, 18.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625237, 45.193104, 17.789999>,  <36.526897, 45.093063, 18.481737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625237, 45.193104, 17.789999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004013, 45.137054, 17.905697>,  <37.231281, 45.103424, 17.975117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004013, 45.137054, 17.905697>,  <36.625237, 45.193104, 17.789999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004013, 45.137054, 17.905697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205040, -0.429645, -0.879411,
		0.247502, 0.892059, -0.378118,
		0.946943, -0.140126, 0.289246,
		37.288097, 45.095016, 17.992470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106899, 45.443687, 17.234497>,  <36.625237, 45.193104, 17.789999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106899, 45.443687, 17.234497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305408, 45.172997, 17.452030>,  <37.424515, 45.010582, 17.582550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305408, 45.172997, 17.452030>,  <37.106899, 45.443687, 17.234497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305408, 45.172997, 17.452030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142110, -0.554645, -0.819862,
		0.856457, 0.484159, -0.179086,
		0.496273, -0.676726, 0.543833,
		37.454288, 44.969978, 17.615181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755966, 45.397934, 16.973747>,  <37.106899, 45.443687, 17.234497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755966, 45.397934, 16.973747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 45.048965, 17.164339>,  <37.686314, 44.839584, 17.278694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 45.048965, 17.164339>,  <37.755966, 45.397934, 16.973747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712433, 45.048965, 17.164339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176316, -0.488667, -0.854469,
		0.978298, -0.008984, 0.207005,
		-0.108833, -0.872424, 0.476478,
		37.679783, 44.787239, 17.307283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356594, 45.003201, 16.876953>,  <37.755966, 45.397934, 16.973747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356594, 45.003201, 16.876953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050919, 44.757107, 16.954412>,  <37.867512, 44.609451, 17.000887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050919, 44.757107, 16.954412>,  <38.356594, 45.003201, 16.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050919, 44.757107, 16.954412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142787, -0.454154, -0.879407,
		0.628987, -0.644384, 0.434908,
		-0.764191, -0.615234, 0.193647,
		37.821663, 44.572536, 17.012506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683926, 44.409065, 16.714251>,  <38.356594, 45.003201, 16.876953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683926, 44.409065, 16.714251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288593, 44.352333, 16.692055>,  <38.051392, 44.318295, 16.678738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288593, 44.352333, 16.692055>,  <38.683926, 44.409065, 16.714251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288593, 44.352333, 16.692055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126487, -0.561447, -0.817788,
		0.084836, -0.815267, 0.572837,
		-0.988334, -0.141835, -0.055489,
		37.992092, 44.309784, 16.675407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661148, 43.688904, 16.590591>,  <38.683926, 44.409065, 16.714251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661148, 43.688904, 16.590591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322338, 43.861717, 16.466730>,  <38.119053, 43.965405, 16.392414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322338, 43.861717, 16.466730>,  <38.661148, 43.688904, 16.590591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322338, 43.861717, 16.466730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139686, -0.381155, -0.913897,
		-0.512865, -0.817352, 0.262500,
		-0.847029, 0.432038, -0.309653,
		38.068230, 43.991329, 16.373835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168049, 43.201138, 16.167694>,  <38.661148, 43.688904, 16.590591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168049, 43.201138, 16.167694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061745, 43.575172, 16.073904>,  <37.997963, 43.799595, 16.017630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061745, 43.575172, 16.073904>,  <38.168049, 43.201138, 16.167694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061745, 43.575172, 16.073904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096912, -0.267903, -0.958560,
		-0.959156, -0.232023, 0.161819,
		-0.265759, 0.935090, -0.234475,
		37.982018, 43.855698, 16.003561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960873, 43.240257, 15.468418>,  <38.168049, 43.201138, 16.167694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960873, 43.240257, 15.468418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042202, 42.877899, 15.319818>,  <38.091000, 42.660484, 15.230658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042202, 42.877899, 15.319818>,  <37.960873, 43.240257, 15.468418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042202, 42.877899, 15.319818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279695, -0.417355, 0.864630,
		-0.938312, -0.071895, -0.338234,
		0.203326, -0.905895, -0.371501,
		38.103199, 42.606133, 15.208367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394978, 42.850632, 15.690548>,  <37.960873, 43.240257, 15.468418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394978, 42.850632, 15.690548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688156, 42.591885, 15.606306>,  <37.864063, 42.436638, 15.555761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688156, 42.591885, 15.606306>,  <37.394978, 42.850632, 15.690548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688156, 42.591885, 15.606306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103686, -0.412190, 0.905179,
		-0.672338, -0.641611, -0.369184,
		0.732947, -0.646866, -0.210605,
		37.908039, 42.397823, 15.543125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166874, 42.080853, 15.893891>,  <37.394978, 42.850632, 15.690548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166874, 42.080853, 15.893891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558128, 42.161312, 15.915004>,  <37.792881, 42.209587, 15.927671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558128, 42.161312, 15.915004>,  <37.166874, 42.080853, 15.893891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558128, 42.161312, 15.915004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011974, -0.198904, 0.979946,
		0.207618, -0.959153, -0.192147,
		0.978137, 0.201153, 0.052781,
		37.851570, 42.221657, 15.930838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409569, 41.606831, 16.370378>,  <37.166874, 42.080853, 15.893891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409569, 41.606831, 16.370378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705853, 41.875549, 16.372618>,  <37.883625, 42.036781, 16.373962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705853, 41.875549, 16.372618>,  <37.409569, 41.606831, 16.370378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705853, 41.875549, 16.372618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246973, -0.280042, 0.927675,
		0.624778, -0.685758, -0.373347,
		0.740714, 0.671797, 0.005600,
		37.928066, 42.077087, 16.374298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000328, 41.270615, 16.721851>,  <37.409569, 41.606831, 16.370378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000328, 41.270615, 16.721851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070858, 41.660713, 16.775215>,  <38.113178, 41.894772, 16.807234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070858, 41.660713, 16.775215>,  <38.000328, 41.270615, 16.721851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070858, 41.660713, 16.775215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289479, -0.180917, 0.939932,
		0.940803, -0.127115, -0.314214,
		0.176326, 0.975249, 0.133410,
		38.123756, 41.953289, 16.815239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612152, 41.389973, 17.145433>,  <38.000328, 41.270615, 16.721851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612152, 41.389973, 17.145433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411774, 41.735516, 17.166653>,  <38.291546, 41.942841, 17.179384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411774, 41.735516, 17.166653>,  <38.612152, 41.389973, 17.145433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411774, 41.735516, 17.166653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140885, 0.020915, 0.989805,
		0.853937, 0.503309, -0.132181,
		-0.500943, 0.863853, 0.053049,
		38.261490, 41.994671, 17.182568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049305, 41.773472, 17.608963>,  <38.612152, 41.389973, 17.145433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049305, 41.773472, 17.608963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676853, 41.919289, 17.604973>,  <38.453381, 42.006779, 17.602579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676853, 41.919289, 17.604973>,  <39.049305, 41.773472, 17.608963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676853, 41.919289, 17.604973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009000, 0.004379, 0.999950,
		0.364572, 0.931175, -0.000796,
		-0.931132, 0.364546, -0.009977,
		38.397514, 42.028652, 17.601980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057899, 42.285793, 18.088383>,  <39.049305, 41.773472, 17.608963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057899, 42.285793, 18.088383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664928, 42.218063, 18.056957>,  <38.429146, 42.177425, 18.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664928, 42.218063, 18.056957>,  <39.057899, 42.285793, 18.088383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664928, 42.218063, 18.056957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103031, 0.140932, 0.984643,
		-0.155651, 0.975432, -0.155900,
		-0.982424, -0.169324, -0.078563,
		38.370201, 42.167267, 18.033388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808338, 42.860836, 18.413383>,  <39.057899, 42.285793, 18.088383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808338, 42.860836, 18.413383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518333, 42.586079, 18.393230>,  <38.344330, 42.421227, 18.381140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518333, 42.586079, 18.393230>,  <38.808338, 42.860836, 18.413383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518333, 42.586079, 18.393230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316290, 0.267078, 0.910291,
		-0.611813, 0.675909, -0.410891,
		-0.725014, -0.686889, -0.050381,
		38.300831, 42.380013, 18.378117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154961, 43.227634, 18.567051>,  <38.808338, 42.860836, 18.413383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154961, 43.227634, 18.567051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074669, 42.840073, 18.624928>,  <38.026493, 42.607536, 18.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074669, 42.840073, 18.624928>,  <38.154961, 43.227634, 18.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074669, 42.840073, 18.624928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360750, 0.210426, 0.908614,
		-0.910805, 0.130191, -0.391771,
		-0.200733, -0.968902, 0.144691,
		38.014450, 42.549400, 18.668335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508862, 43.213413, 18.872683>,  <38.154961, 43.227634, 18.567051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508862, 43.213413, 18.872683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669556, 42.861900, 18.975712>,  <37.765972, 42.650993, 19.037529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669556, 42.861900, 18.975712>,  <37.508862, 43.213413, 18.872683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669556, 42.861900, 18.975712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352197, 0.111367, 0.929276,
		-0.845320, -0.464040, -0.264765,
		0.401735, -0.878786, 0.257574,
		37.790077, 42.598263, 19.052984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021481, 42.910053, 19.309444>,  <37.508862, 43.213413, 18.872683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021481, 42.910053, 19.309444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373009, 42.744083, 19.403685>,  <37.583927, 42.644501, 19.460228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373009, 42.744083, 19.403685>,  <37.021481, 42.910053, 19.309444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373009, 42.744083, 19.403685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107027, 0.309764, 0.944771,
		-0.464987, -0.855503, 0.227820,
		0.878824, -0.414924, 0.235598,
		37.636658, 42.619606, 19.474363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947609, 42.453114, 19.884464>,  <37.021481, 42.910053, 19.309444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947609, 42.453114, 19.884464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337620, 42.540127, 19.902348>,  <37.571625, 42.592335, 19.913078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337620, 42.540127, 19.902348>,  <36.947609, 42.453114, 19.884464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337620, 42.540127, 19.902348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079796, 0.155287, 0.984641,
		0.207257, -0.963619, 0.168768,
		0.975027, 0.217541, 0.044709,
		37.630127, 42.605389, 19.915760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176556, 42.010109, 20.503767>,  <36.947609, 42.453114, 19.884464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176556, 42.010109, 20.503767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433285, 42.309635, 20.437626>,  <37.587322, 42.489349, 20.397942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433285, 42.309635, 20.437626>,  <37.176556, 42.010109, 20.503767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433285, 42.309635, 20.437626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122221, 0.312758, 0.941937,
		0.757053, -0.584344, 0.292255,
		0.641820, 0.748816, -0.165355,
		37.625832, 42.534279, 20.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664993, 41.980389, 21.031115>,  <37.176556, 42.010109, 20.503767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664993, 41.980389, 21.031115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681370, 42.357445, 20.898596>,  <37.691196, 42.583679, 20.819084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681370, 42.357445, 20.898596>,  <37.664993, 41.980389, 21.031115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681370, 42.357445, 20.898596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009808, 0.331939, 0.943250,
		0.999113, -0.035371, 0.022836,
		0.040943, 0.942638, -0.331297,
		37.693653, 42.640236, 20.799206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244305, 42.365105, 21.435421>,  <37.664993, 41.980389, 21.031115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244305, 42.365105, 21.435421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041161, 42.679062, 21.293421>,  <37.919273, 42.867435, 21.208221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041161, 42.679062, 21.293421>,  <38.244305, 42.365105, 21.435421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041161, 42.679062, 21.293421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145811, 0.484478, 0.862566,
		0.849009, 0.386301, -0.360493,
		-0.507861, 0.784890, -0.355000,
		37.888802, 42.914528, 21.186920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624027, 42.899292, 21.759106>,  <38.244305, 42.365105, 21.435421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624027, 42.899292, 21.759106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270775, 43.042446, 21.637777>,  <38.058823, 43.128338, 21.564981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270775, 43.042446, 21.637777>,  <38.624027, 42.899292, 21.759106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270775, 43.042446, 21.637777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109823, 0.470879, 0.875336,
		0.456092, 0.806347, -0.376543,
		-0.883130, 0.357881, -0.303320,
		38.005836, 43.149811, 21.546782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617771, 43.588455, 21.943136>,  <38.624027, 42.899292, 21.759106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617771, 43.588455, 21.943136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233246, 43.492458, 21.889038>,  <38.002533, 43.434860, 21.856579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233246, 43.492458, 21.889038>,  <38.617771, 43.588455, 21.943136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233246, 43.492458, 21.889038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204460, 0.292576, 0.934128,
		-0.184610, 0.925638, -0.330323,
		-0.961309, -0.239988, -0.135243,
		37.944855, 43.420464, 21.848465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225227, 44.133881, 22.231108>,  <38.617771, 43.588455, 21.943136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225227, 44.133881, 22.231108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988613, 43.811405, 22.236116>,  <37.846645, 43.617920, 22.239120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988613, 43.811405, 22.236116>,  <38.225227, 44.133881, 22.231108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988613, 43.811405, 22.236116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217717, 0.174662, 0.960257,
		-0.776331, 0.565296, -0.278838,
		-0.591531, -0.806185, 0.012521,
		37.811153, 43.569550, 22.239872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705635, 44.411713, 22.619070>,  <38.225227, 44.133881, 22.231108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705635, 44.411713, 22.619070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642056, 44.016975, 22.630909>,  <37.603909, 43.780132, 22.638012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642056, 44.016975, 22.630909>,  <37.705635, 44.411713, 22.619070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642056, 44.016975, 22.630909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227504, 0.065782, 0.971553,
		-0.960717, 0.147693, -0.234967,
		-0.158948, -0.986843, 0.029597,
		37.594372, 43.720921, 22.639788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986141, 44.233677, 22.944744>,  <37.705635, 44.411713, 22.619070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986141, 44.233677, 22.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231125, 43.924873, 23.012739>,  <37.378117, 43.739590, 23.053537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231125, 43.924873, 23.012739>,  <36.986141, 44.233677, 22.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231125, 43.924873, 23.012739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273149, -0.004884, 0.961960,
		-0.741810, -0.635594, -0.213864,
		0.612460, -0.772008, 0.169989,
		37.414864, 43.693272, 23.063736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746819, 43.945156, 23.570023>,  <36.986141, 44.233677, 22.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746819, 43.945156, 23.570023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076946, 43.722301, 23.533243>,  <37.275021, 43.588589, 23.511175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076946, 43.722301, 23.533243>,  <36.746819, 43.945156, 23.570023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076946, 43.722301, 23.533243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006008, -0.154165, 0.988027,
		-0.564641, -0.815986, -0.123887,
		0.825315, -0.557136, -0.091950,
		37.324539, 43.555161, 23.505659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688354, 43.366558, 23.902046>,  <36.746819, 43.945156, 23.570023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688354, 43.366558, 23.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087666, 43.350727, 23.884718>,  <37.327251, 43.341228, 23.874321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087666, 43.350727, 23.884718>,  <36.688354, 43.366558, 23.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087666, 43.350727, 23.884718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039368, -0.095697, 0.994632,
		-0.043503, -0.994624, -0.093974,
		0.998277, -0.039570, -0.043319,
		37.387150, 43.338856, 23.871721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931953, 42.815018, 24.326319>,  <36.688354, 43.366558, 23.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931953, 42.815018, 24.326319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238113, 43.068047, 24.278967>,  <37.421810, 43.219864, 24.250555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238113, 43.068047, 24.278967>,  <36.931953, 42.815018, 24.326319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238113, 43.068047, 24.278967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063983, 0.108239, 0.992064,
		0.640366, -0.766901, 0.042373,
		0.765401, 0.632572, -0.118381,
		37.467735, 43.257816, 24.243452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456516, 42.551376, 24.801970>,  <36.931953, 42.815018, 24.326319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456516, 42.551376, 24.801970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558762, 42.933998, 24.745869>,  <37.620110, 43.163570, 24.712208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558762, 42.933998, 24.745869>,  <37.456516, 42.551376, 24.801970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558762, 42.933998, 24.745869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129169, 0.109982, 0.985505,
		0.958112, -0.270021, -0.095444,
		0.255609, 0.956552, -0.140254,
		37.635445, 43.220963, 24.703793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267643, 42.634533, 24.925039>,  <37.456516, 42.551376, 24.801970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267643, 42.634533, 24.925039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070038, 42.976147, 24.990248>,  <37.951473, 43.181114, 25.029373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070038, 42.976147, 24.990248>,  <38.267643, 42.634533, 24.925039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070038, 42.976147, 24.990248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261004, -0.033184, 0.964767,
		0.829355, 0.519156, -0.206513,
		-0.494012, 0.854035, 0.163023,
		37.921833, 43.232357, 25.039154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704113, 43.009781, 25.276804>,  <38.267643, 42.634533, 24.925039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704113, 43.009781, 25.276804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345570, 43.170906, 25.350861>,  <38.130444, 43.267582, 25.395294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345570, 43.170906, 25.350861>,  <38.704113, 43.009781, 25.276804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345570, 43.170906, 25.350861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227567, 0.059673, 0.971932,
		0.380461, 0.913334, -0.145157,
		-0.896361, 0.402815, 0.185141,
		38.076660, 43.291752, 25.406403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954872, 43.364689, 25.829483>,  <38.704113, 43.009781, 25.276804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954872, 43.364689, 25.829483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556084, 43.378593, 25.857313>,  <38.316811, 43.386936, 25.874010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556084, 43.378593, 25.857313>,  <38.954872, 43.364689, 25.829483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556084, 43.378593, 25.857313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064636, -0.127214, 0.989767,
		0.043252, 0.991266, 0.124582,
		-0.996971, 0.034757, 0.069574,
		38.256992, 43.389019, 25.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805454, 43.958439, 26.202276>,  <38.954872, 43.364689, 25.829483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805454, 43.958439, 26.202276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487518, 43.724209, 26.265938>,  <38.296757, 43.583672, 26.304134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487518, 43.724209, 26.265938>,  <38.805454, 43.958439, 26.202276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487518, 43.724209, 26.265938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168972, 0.038322, 0.984876,
		-0.582817, 0.809713, 0.068485,
		-0.794842, -0.585574, 0.159153,
		38.249065, 43.548538, 26.313684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500259, 44.139286, 26.821974>,  <38.805454, 43.958439, 26.202276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500259, 44.139286, 26.821974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334198, 43.775650, 26.808130>,  <38.234562, 43.557468, 26.799824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334198, 43.775650, 26.808130>,  <38.500259, 44.139286, 26.821974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334198, 43.775650, 26.808130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013354, -0.031947, 0.999400,
		-0.909651, 0.415371, 0.001123,
		-0.415158, -0.909091, -0.034608,
		38.209652, 43.502922, 26.797749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043312, 44.159885, 27.407986>,  <38.500259, 44.139286, 26.821974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043312, 44.159885, 27.407986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073921, 43.772644, 27.312557>,  <38.092285, 43.540298, 27.255301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073921, 43.772644, 27.312557>,  <38.043312, 44.159885, 27.407986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073921, 43.772644, 27.312557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134497, -0.247109, 0.959608,
		-0.987955, -0.041344, -0.149117,
		0.076522, -0.968105, -0.238572,
		38.096878, 43.482212, 27.240986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522461, 43.788414, 27.803118>,  <38.043312, 44.159885, 27.407986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522461, 43.788414, 27.803118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795086, 43.514137, 27.700901>,  <37.958660, 43.349571, 27.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795086, 43.514137, 27.700901>,  <37.522461, 43.788414, 27.803118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795086, 43.514137, 27.700901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028298, -0.373650, 0.927138,
		-0.731212, -0.624671, -0.274069,
		0.681563, -0.685691, -0.255541,
		37.999554, 43.308430, 27.624239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262726, 43.154968, 27.923317>,  <37.522461, 43.788414, 27.803118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262726, 43.154968, 27.923317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657753, 43.092087, 27.924213>,  <37.894768, 43.054359, 27.924751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657753, 43.092087, 27.924213>,  <37.262726, 43.154968, 27.923317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657753, 43.092087, 27.924213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061412, -0.372598, 0.925958,
		-0.144723, -0.914582, -0.377619,
		0.987565, -0.157198, 0.002243,
		37.954021, 43.044926, 27.924887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293026, 42.713890, 28.388933>,  <37.262726, 43.154968, 27.923317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293026, 42.713890, 28.388933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689480, 42.747108, 28.347462>,  <37.927353, 42.767040, 28.322578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689480, 42.747108, 28.347462>,  <37.293026, 42.713890, 28.388933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689480, 42.747108, 28.347462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125583, -0.331440, 0.935081,
		0.043290, -0.939815, -0.338932,
		0.991138, 0.083044, -0.103677,
		37.986820, 42.772022, 28.316359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504261, 42.115410, 28.486393>,  <37.293026, 42.713890, 28.388933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504261, 42.115410, 28.486393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776348, 42.387703, 28.595140>,  <37.939602, 42.551079, 28.660389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776348, 42.387703, 28.595140>,  <37.504261, 42.115410, 28.486393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776348, 42.387703, 28.595140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035068, -0.340248, 0.939682,
		0.732172, -0.648721, -0.207570,
		0.680216, 0.680730, 0.271869,
		37.980412, 42.591923, 28.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900845, 41.764156, 28.973343>,  <37.504261, 42.115410, 28.486393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900845, 41.764156, 28.973343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024197, 42.137741, 29.045580>,  <38.098209, 42.361893, 29.088923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024197, 42.137741, 29.045580>,  <37.900845, 41.764156, 28.973343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024197, 42.137741, 29.045580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178047, -0.243161, 0.953505,
		0.934452, -0.261889, -0.241276,
		0.308381, 0.933963, 0.180594,
		38.116711, 42.417931, 29.099758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516361, 41.715843, 29.366835>,  <37.900845, 41.764156, 28.973343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516361, 41.715843, 29.366835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359482, 42.076225, 29.441090>,  <38.265354, 42.292454, 29.485643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359482, 42.076225, 29.441090>,  <38.516361, 41.715843, 29.366835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359482, 42.076225, 29.441090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000538, -0.202031, 0.979379,
		0.919879, 0.384014, 0.079722,
		-0.392202, 0.900953, 0.185637,
		38.241821, 42.346512, 29.496780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063618, 42.003223, 29.927460>,  <38.516361, 41.715843, 29.366835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063618, 42.003223, 29.927460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706474, 42.180801, 29.957714>,  <38.492188, 42.287350, 29.975866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706474, 42.180801, 29.957714>,  <39.063618, 42.003223, 29.927460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706474, 42.180801, 29.957714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013479, -0.141537, 0.989841,
		0.450140, 0.884806, 0.120388,
		-0.892856, 0.443944, 0.075638,
		38.438618, 42.313984, 29.980406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163414, 42.459774, 30.378002>,  <39.063618, 42.003223, 29.927460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163414, 42.459774, 30.378002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767460, 42.407391, 30.399849>,  <38.529888, 42.375961, 30.412956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767460, 42.407391, 30.399849>,  <39.163414, 42.459774, 30.378002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767460, 42.407391, 30.399849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090020, -0.282110, 0.955149,
		-0.109675, 0.950402, 0.291045,
		-0.989883, -0.130956, 0.054615,
		38.470493, 42.368103, 30.416233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014641, 42.612057, 30.975590>,  <39.163414, 42.459774, 30.378002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014641, 42.612057, 30.975590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676735, 42.417809, 30.885656>,  <38.473991, 42.301258, 30.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676735, 42.417809, 30.885656>,  <39.014641, 42.612057, 30.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676735, 42.417809, 30.885656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056127, -0.337422, 0.939679,
		-0.532194, 0.806422, 0.257784,
		-0.844760, -0.485622, -0.224836,
		38.423306, 42.272121, 30.818205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383003, 42.817791, 31.453650>,  <39.014641, 42.612057, 30.975590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383003, 42.817791, 31.453650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379082, 42.443298, 31.313150>,  <38.376728, 42.218601, 31.228851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379082, 42.443298, 31.313150>,  <38.383003, 42.817791, 31.453650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379082, 42.443298, 31.313150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334111, -0.328010, 0.883617,
		-0.942483, 0.126017, -0.309590,
		-0.009802, -0.936232, -0.351247,
		38.376141, 42.162430, 31.207777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745770, 42.476566, 31.592976>,  <38.383003, 42.817791, 31.453650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745770, 42.476566, 31.592976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025986, 42.192856, 31.624413>,  <38.194115, 42.022629, 31.643274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025986, 42.192856, 31.624413>,  <37.745770, 42.476566, 31.592976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025986, 42.192856, 31.624413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267278, -0.158664, 0.950467,
		-0.661673, -0.686843, -0.300724,
		0.700536, -0.709276, 0.078594,
		38.236145, 41.980072, 31.647991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561398, 41.706810, 31.777187>,  <37.745770, 42.476566, 31.592976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561398, 41.706810, 31.777187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926517, 41.794422, 31.915070>,  <38.145588, 41.846989, 31.997799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926517, 41.794422, 31.915070>,  <37.561398, 41.706810, 31.777187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926517, 41.794422, 31.915070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309881, -0.178345, 0.933899,
		0.266030, -0.959280, -0.094919,
		0.912799, 0.219031, 0.344708,
		38.200356, 41.860130, 32.018482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091930, 41.146149, 32.028378>,  <37.561398, 41.706810, 31.777187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091930, 41.146149, 32.028378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136887, 41.499912, 32.209572>,  <38.163860, 41.712170, 32.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136887, 41.499912, 32.209572>,  <38.091930, 41.146149, 32.028378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136887, 41.499912, 32.209572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476710, -0.351994, 0.805511,
		0.871846, -0.306473, 0.382044,
		0.112390, 0.884406, 0.452984,
		38.170605, 41.765236, 32.345467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384689, 40.767906, 31.495874>,  <38.091930, 41.146149, 32.028378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384689, 40.767906, 31.495874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735947, 40.658001, 31.652525>,  <38.946701, 40.592060, 31.746515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735947, 40.658001, 31.652525>,  <38.384689, 40.767906, 31.495874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735947, 40.658001, 31.652525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298622, 0.324733, 0.897426,
		-0.373753, -0.905016, 0.203112,
		0.878142, -0.274762, 0.391628,
		38.999390, 40.575573, 31.770014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226261, 40.338768, 32.112934>,  <38.384689, 40.767906, 31.495874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226261, 40.338768, 32.112934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574814, 40.533936, 32.133457>,  <38.783947, 40.651035, 32.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574814, 40.533936, 32.133457>,  <38.226261, 40.338768, 32.112934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574814, 40.533936, 32.133457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295492, 0.438474, 0.848778,
		0.391631, -0.754773, 0.526253,
		0.871384, 0.487912, 0.051309,
		38.836227, 40.680309, 32.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194183, 40.583332, 32.712875>,  <38.226261, 40.338768, 32.112934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194183, 40.583332, 32.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534698, 40.772491, 32.621952>,  <38.739010, 40.885986, 32.567398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534698, 40.772491, 32.621952>,  <38.194183, 40.583332, 32.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534698, 40.772491, 32.621952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109422, 0.583706, 0.804558,
		0.513155, -0.660041, 0.548650,
		0.851292, 0.472898, -0.227309,
		38.790085, 40.914360, 32.553761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597626, 40.420303, 33.239578>,  <38.194183, 40.583332, 32.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597626, 40.420303, 33.239578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742409, 40.749779, 33.064980>,  <38.829281, 40.947464, 32.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742409, 40.749779, 33.064980>,  <38.597626, 40.420303, 33.239578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742409, 40.749779, 33.064980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078735, 0.493586, 0.866126,
		0.928862, -0.279137, 0.243512,
		0.361962, 0.823684, -0.436495,
		38.850998, 40.996883, 32.934032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962234, 40.708832, 33.741241>,  <38.597626, 40.420303, 33.239578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962234, 40.708832, 33.741241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900921, 41.020916, 33.498661>,  <38.864132, 41.208164, 33.353111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900921, 41.020916, 33.498661>,  <38.962234, 40.708832, 33.741241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900921, 41.020916, 33.498661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056483, 0.605782, 0.793624,
		0.986567, 0.155902, -0.048787,
		-0.153282, 0.780207, -0.606450,
		38.854935, 41.254978, 33.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456478, 41.095860, 33.848175>,  <38.962234, 40.708832, 33.741241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456478, 41.095860, 33.848175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146759, 41.319847, 33.730255>,  <38.960930, 41.454239, 33.659504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146759, 41.319847, 33.730255>,  <39.456478, 41.095860, 33.848175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146759, 41.319847, 33.730255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058312, 0.400733, 0.914337,
		0.630134, 0.725156, -0.277633,
		-0.774294, 0.559966, -0.294800,
		38.914471, 41.487835, 33.641815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231125, 41.445866, 34.505760>,  <39.456478, 41.095860, 33.848175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231125, 41.445866, 34.505760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988220, 41.633495, 34.249260>,  <38.842476, 41.746075, 34.095360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988220, 41.633495, 34.249260>,  <39.231125, 41.445866, 34.505760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988220, 41.633495, 34.249260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456384, 0.454716, 0.764818,
		0.650344, 0.757101, -0.062053,
		-0.607261, 0.469075, -0.641251,
		38.806042, 41.774220, 34.056885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267612, 42.177715, 34.616791>,  <39.231125, 41.445866, 34.505760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267612, 42.177715, 34.616791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907990, 42.056263, 34.490616>,  <38.692215, 41.983391, 34.414909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907990, 42.056263, 34.490616>,  <39.267612, 42.177715, 34.616791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907990, 42.056263, 34.490616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424566, 0.428634, 0.797506,
		-0.106939, 0.850929, -0.514279,
		-0.899059, -0.303630, -0.315438,
		38.638271, 41.965176, 34.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593327, 41.820896, 34.015533>,  <39.267612, 42.177715, 34.616791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593327, 41.820896, 34.015533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264679, 41.997684, 33.871532>,  <39.067490, 42.103760, 33.785133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264679, 41.997684, 33.871532>,  <39.593327, 41.820896, 34.015533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264679, 41.997684, 33.871532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005825, 0.624995, 0.780607,
		0.570004, 0.643460, -0.510935,
		-0.821621, 0.441973, -0.359998,
		39.018192, 42.130276, 33.763535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622070, 42.521027, 33.946510>,  <39.593327, 41.820896, 34.015533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622070, 42.521027, 33.946510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237404, 42.424133, 33.997936>,  <39.006603, 42.365997, 34.028790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237404, 42.424133, 33.997936>,  <39.622070, 42.521027, 33.946510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237404, 42.424133, 33.997936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110613, 0.771604, 0.626413,
		-0.250935, 0.588178, -0.768817,
		-0.961664, -0.242230, 0.128562,
		38.948906, 42.351463, 34.036507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416382, 43.153286, 33.904335>,  <39.622070, 42.521027, 33.946510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416382, 43.153286, 33.904335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143066, 42.916153, 34.074821>,  <38.979076, 42.773872, 34.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143066, 42.916153, 34.074821>,  <39.416382, 43.153286, 33.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143066, 42.916153, 34.074821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125942, 0.670688, 0.730970,
		-0.719206, 0.445783, -0.532935,
		-0.683287, -0.592836, 0.426220,
		38.938080, 42.738300, 34.202686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893253, 43.560871, 33.959507>,  <39.416382, 43.153286, 33.904335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893253, 43.560871, 33.959507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818996, 43.258926, 34.211132>,  <38.774441, 43.077759, 34.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818996, 43.258926, 34.211132>,  <38.893253, 43.560871, 33.959507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818996, 43.258926, 34.211132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298457, 0.653259, 0.695828,
		-0.936195, -0.058571, -0.346568,
		-0.185643, -0.754865, 0.629059,
		38.763302, 43.032467, 34.399849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247402, 43.767460, 34.221413>,  <38.893253, 43.560871, 33.959507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247402, 43.767460, 34.221413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399517, 43.506283, 34.483418>,  <38.490788, 43.349575, 34.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399517, 43.506283, 34.483418>,  <38.247402, 43.767460, 34.221413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399517, 43.506283, 34.483418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239399, 0.614594, 0.751640,
		-0.893347, -0.442650, 0.077409,
		0.380289, -0.652944, 0.655016,
		38.513603, 43.310398, 34.679924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854519, 43.865849, 34.867916>,  <38.247402, 43.767460, 34.221413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854519, 43.865849, 34.867916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172592, 43.670036, 35.011044>,  <38.363438, 43.552547, 35.096920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172592, 43.670036, 35.011044>,  <37.854519, 43.865849, 34.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172592, 43.670036, 35.011044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005793, 0.596209, 0.802809,
		-0.606336, -0.636310, 0.476934,
		0.795187, -0.489535, 0.357817,
		38.411148, 43.523174, 35.118389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653053, 43.629021, 35.602825>,  <37.854519, 43.865849, 34.867916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653053, 43.629021, 35.602825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051758, 43.637028, 35.571663>,  <38.290981, 43.641830, 35.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051758, 43.637028, 35.571663>,  <37.653053, 43.629021, 35.602825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051758, 43.637028, 35.571663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046509, 0.646817, 0.761226,
		0.065628, -0.762382, 0.643790,
		0.996760, 0.020016, -0.077907,
		38.350784, 43.643032, 35.548290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866318, 43.576504, 36.204834>,  <37.653053, 43.629021, 35.602825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866318, 43.576504, 36.204834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191372, 43.731049, 36.030323>,  <38.386406, 43.823776, 35.925617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191372, 43.731049, 36.030323>,  <37.866318, 43.576504, 36.204834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191372, 43.731049, 36.030323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068499, 0.680120, 0.729894,
		0.578726, -0.623026, 0.526227,
		0.812640, 0.386363, -0.436280,
		38.435165, 43.846958, 35.899441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512806, 43.623886, 36.740547>,  <37.866318, 43.576504, 36.204834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512806, 43.623886, 36.740547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522293, 43.887096, 36.439499>,  <38.527985, 44.045021, 36.258869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522293, 43.887096, 36.439499>,  <38.512806, 43.623886, 36.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522293, 43.887096, 36.439499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052778, 0.750959, 0.658236,
		0.998325, -0.055332, -0.016920,
		0.023715, 0.658027, -0.752621,
		38.529408, 44.084503, 36.213711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312576, 44.395920, 36.878517>,  <38.512806, 43.623886, 36.740547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312576, 44.395920, 36.878517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458290, 44.757309, 36.788158>,  <38.545719, 44.974144, 36.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458290, 44.757309, 36.788158>,  <38.312576, 44.395920, 36.878517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458290, 44.757309, 36.788158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197853, -0.312113, -0.929215,
		-0.910027, 0.293806, -0.292453,
		0.364287, 0.903473, -0.225901,
		38.567577, 45.028351, 36.720387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007442, 44.644024, 36.224072>,  <38.312576, 44.395920, 36.878517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007442, 44.644024, 36.224072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372063, 44.781246, 36.314751>,  <38.590836, 44.863579, 36.369160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372063, 44.781246, 36.314751>,  <38.007442, 44.644024, 36.224072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372063, 44.781246, 36.314751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402469, -0.631390, -0.662846,
		-0.084262, 0.695454, -0.713613,
		0.911547, 0.343060, 0.226697,
		38.645527, 44.884163, 36.382759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312149, 44.818459, 35.644020>,  <38.007442, 44.644024, 36.224072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312149, 44.818459, 35.644020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582638, 44.693977, 35.911114>,  <38.744930, 44.619289, 36.071369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582638, 44.693977, 35.911114>,  <38.312149, 44.818459, 35.644020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582638, 44.693977, 35.911114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284366, -0.725882, -0.626284,
		0.679604, 0.613389, -0.402360,
		0.676221, -0.311208, 0.667739,
		38.785503, 44.600616, 36.111435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900993, 44.808346, 35.274624>,  <38.312149, 44.818459, 35.644020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900993, 44.808346, 35.274624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874519, 44.561317, 35.588116>,  <38.858635, 44.413101, 35.776211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874519, 44.561317, 35.588116>,  <38.900993, 44.808346, 35.274624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874519, 44.561317, 35.588116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209188, -0.776580, -0.594275,
		0.975633, 0.124616, 0.180583,
		-0.066181, -0.617571, 0.783726,
		38.854664, 44.376045, 35.823235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311836, 44.297215, 35.066280>,  <38.900993, 44.808346, 35.274624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311836, 44.297215, 35.066280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091763, 44.133846, 35.357620>,  <38.959721, 44.035824, 35.532425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091763, 44.133846, 35.357620>,  <39.311836, 44.297215, 35.066280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091763, 44.133846, 35.357620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025479, -0.863612, -0.503513,
		0.834657, -0.295581, 0.464736,
		-0.550181, -0.408419, 0.728351,
		38.926708, 44.011322, 35.576126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627472, 43.613693, 35.412270>,  <39.311836, 44.297215, 35.066280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627472, 43.613693, 35.412270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231335, 43.637142, 35.462524>,  <38.993652, 43.651211, 35.492676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231335, 43.637142, 35.462524>,  <39.627472, 43.613693, 35.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231335, 43.637142, 35.462524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110340, -0.881951, -0.458244,
		0.083943, -0.467682, 0.879902,
		-0.990343, 0.058622, 0.125637,
		38.934231, 43.654728, 35.500217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422028, 42.891788, 35.609558>,  <39.627472, 43.613693, 35.412270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422028, 42.891788, 35.609558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121208, 43.098022, 35.445316>,  <38.940716, 43.221764, 35.346771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121208, 43.098022, 35.445316>,  <39.422028, 42.891788, 35.609558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121208, 43.098022, 35.445316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107852, -0.710836, -0.695040,
		-0.650228, -0.478417, 0.590187,
		-0.752045, 0.515587, -0.410607,
		38.895596, 43.252701, 35.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846737, 42.381718, 35.570202>,  <39.422028, 42.891788, 35.609558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846737, 42.381718, 35.570202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765266, 42.669872, 35.305008>,  <38.716385, 42.842766, 35.145889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765266, 42.669872, 35.305008>,  <38.846737, 42.381718, 35.570202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765266, 42.669872, 35.305008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160862, -0.692604, -0.703152,
		-0.965732, -0.036566, 0.256951,
		-0.203677, 0.720390, -0.662988,
		38.704163, 42.885990, 35.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138805, 42.280548, 35.352955>,  <38.846737, 42.381718, 35.570202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138805, 42.280548, 35.352955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378574, 42.428223, 35.068871>,  <38.522434, 42.516827, 34.898418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378574, 42.428223, 35.068871>,  <38.138805, 42.280548, 35.352955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378574, 42.428223, 35.068871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176027, -0.804762, -0.566898,
		-0.780840, 0.464825, -0.417404,
		0.599419, 0.369182, -0.710212,
		38.558399, 42.538979, 34.855808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975166, 41.916893, 34.673927>,  <38.138805, 42.280548, 35.352955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975166, 41.916893, 34.673927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238003, 42.183933, 34.533909>,  <38.395706, 42.344158, 34.449898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238003, 42.183933, 34.533909>,  <37.975166, 41.916893, 34.673927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238003, 42.183933, 34.533909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084162, -0.396497, -0.914170,
		-0.749095, 0.630158, -0.204349,
		0.657095, 0.667601, -0.350049,
		38.435131, 42.384212, 34.428894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668598, 42.197521, 34.008472>,  <37.975166, 41.916893, 34.673927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668598, 42.197521, 34.008472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065430, 42.228836, 34.047783>,  <38.303528, 42.247627, 34.071369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065430, 42.228836, 34.047783>,  <37.668598, 42.197521, 34.008472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065430, 42.228836, 34.047783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125196, -0.549851, -0.825827,
		-0.010619, 0.831586, -0.555295,
		0.992075, 0.078290, 0.098272,
		38.363052, 42.252323, 34.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829487, 42.358994, 33.450775>,  <37.668598, 42.197521, 34.008472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829487, 42.358994, 33.450775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170025, 42.213917, 33.602390>,  <38.374348, 42.126869, 33.693359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170025, 42.213917, 33.602390>,  <37.829487, 42.358994, 33.450775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170025, 42.213917, 33.602390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169741, -0.493217, -0.853185,
		0.496394, 0.790690, -0.358332,
		0.851341, -0.362692, 0.379042,
		38.425426, 42.105110, 33.716103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073200, 42.161064, 32.814236>,  <37.829487, 42.358994, 33.450775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073200, 42.161064, 32.814236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357910, 42.004982, 33.047855>,  <38.528736, 41.911331, 33.188026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357910, 42.004982, 33.047855>,  <38.073200, 42.161064, 32.814236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357910, 42.004982, 33.047855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270851, -0.614724, -0.740779,
		0.648086, 0.685459, -0.331858,
		0.711775, -0.390204, 0.584052,
		38.571442, 41.887920, 33.223072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752541, 42.184875, 32.403805>,  <38.073200, 42.161064, 32.814236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752541, 42.184875, 32.403805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782360, 41.919418, 32.701534>,  <38.800251, 41.760143, 32.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782360, 41.919418, 32.701534>,  <38.752541, 42.184875, 32.403805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782360, 41.919418, 32.701534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501714, -0.620093, -0.603131,
		0.861816, 0.418397, 0.286736,
		0.074546, -0.663647, 0.744322,
		38.804726, 41.720325, 32.924831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508461, 42.093277, 32.502388>,  <38.752541, 42.184875, 32.403805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508461, 42.093277, 32.502388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289726, 41.779995, 32.620750>,  <39.158485, 41.592026, 32.691769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289726, 41.779995, 32.620750>,  <39.508461, 42.093277, 32.502388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289726, 41.779995, 32.620750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466804, -0.578610, -0.668808,
		0.695031, -0.227595, 0.682007,
		-0.546833, -0.783206, 0.295910,
		39.125675, 41.545033, 32.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752872, 41.606377, 32.006229>,  <39.508461, 42.093277, 32.502388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752872, 41.606377, 32.006229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518478, 41.377064, 32.235306>,  <39.377842, 41.239475, 32.372749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518478, 41.377064, 32.235306>,  <39.752872, 41.606377, 32.006229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518478, 41.377064, 32.235306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167726, -0.777246, -0.606430,
		0.792774, -0.259303, 0.551608,
		-0.585984, -0.573281, 0.572689,
		39.342682, 41.205078, 32.407112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092712, 40.945366, 32.152584>,  <39.752872, 41.606377, 32.006229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092712, 40.945366, 32.152584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705715, 40.844654, 32.162128>,  <39.473518, 40.784229, 32.167854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705715, 40.844654, 32.162128>,  <40.092712, 40.945366, 32.152584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705715, 40.844654, 32.162128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220304, -0.885348, -0.409420,
		0.124204, -0.390854, 0.912034,
		-0.967491, -0.251777, 0.023857,
		39.415466, 40.769119, 32.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046577, 40.185528, 32.400944>,  <40.092712, 40.945366, 32.152584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046577, 40.185528, 32.400944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735165, 40.308044, 32.181828>,  <39.548317, 40.381554, 32.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735165, 40.308044, 32.181828>,  <40.046577, 40.185528, 32.400944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735165, 40.308044, 32.181828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188550, -0.718356, -0.669637,
		-0.598615, -0.624619, 0.501510,
		-0.778530, 0.306295, -0.547790,
		39.501606, 40.399933, 32.017490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399357, 39.678768, 32.359772>,  <40.046577, 40.185528, 32.400944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399357, 39.678768, 32.359772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497143, 39.916275, 32.053131>,  <39.555817, 40.058781, 31.869146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497143, 39.916275, 32.053131>,  <39.399357, 39.678768, 32.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497143, 39.916275, 32.053131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266369, -0.801297, -0.535696,
		-0.932354, -0.073238, -0.354052,
		0.244468, 0.593767, -0.766601,
		39.570484, 40.094406, 31.823151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057613, 39.356873, 31.734497>,  <39.399357, 39.678768, 32.359772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057613, 39.356873, 31.734497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401913, 39.556751, 31.695696>,  <39.608494, 39.676678, 31.672415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401913, 39.556751, 31.695696>,  <39.057613, 39.356873, 31.734497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401913, 39.556751, 31.695696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429760, -0.815516, -0.387609,
		-0.272796, 0.291946, -0.916706,
		0.860749, 0.499701, -0.097003,
		39.660137, 39.706661, 31.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029617, 38.485886, 31.709991>,  <39.057613, 39.356873, 31.734497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029617, 38.485886, 31.709991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079639, 38.199726, 31.435017>,  <39.109653, 38.028030, 31.270033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079639, 38.199726, 31.435017>,  <39.029617, 38.485886, 31.709991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079639, 38.199726, 31.435017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966306, 0.244936, -0.079115,
		0.224977, -0.654378, 0.721924,
		0.125054, -0.715399, -0.687435,
		39.117157, 37.985107, 31.228786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565075, 37.886700, 31.835976>,  <39.029617, 38.485886, 31.709991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565075, 37.886700, 31.835976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547321, 37.977875, 31.446911>,  <39.536671, 38.032581, 31.213472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547321, 37.977875, 31.446911>,  <39.565075, 37.886700, 31.835976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547321, 37.977875, 31.446911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946795, 0.320257, 0.031850,
		0.318762, -0.919499, -0.230027,
		-0.044382, 0.227941, -0.972663,
		39.534008, 38.046257, 31.155111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121822, 37.527519, 31.480637>,  <39.565075, 37.886700, 31.835976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121822, 37.527519, 31.480637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028175, 37.882183, 31.321123>,  <39.971989, 38.094982, 31.225414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028175, 37.882183, 31.321123>,  <40.121822, 37.527519, 31.480637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028175, 37.882183, 31.321123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910513, 0.343760, 0.229774,
		0.340817, -0.309305, -0.887792,
		-0.234117, 0.886656, -0.398785,
		39.957939, 38.148178, 31.201487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514404, 37.748215, 30.831608>,  <40.121822, 37.527519, 31.480637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514404, 37.748215, 30.831608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396683, 38.069862, 31.038212>,  <40.326050, 38.262852, 31.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396683, 38.069862, 31.038212>,  <40.514404, 37.748215, 30.831608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396683, 38.069862, 31.038212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946739, 0.319181, 0.042531,
		-0.130661, 0.501519, -0.855223,
		-0.294301, 0.804116, 0.516512,
		40.308392, 38.311096, 31.193165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699303, 38.489796, 30.539837>,  <40.514404, 37.748215, 30.831608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699303, 38.489796, 30.539837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684788, 38.547119, 30.935442>,  <40.676079, 38.581512, 31.172806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684788, 38.547119, 30.935442>,  <40.699303, 38.489796, 30.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684788, 38.547119, 30.935442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937844, 0.346697, -0.015829,
		-0.345156, 0.926965, -0.146982,
		-0.036285, 0.143309, 0.989013,
		40.673901, 38.590111, 31.232145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078285, 39.102669, 30.615355>,  <40.699303, 38.489796, 30.539837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078285, 39.102669, 30.615355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018524, 38.937950, 30.974934>,  <40.982666, 38.839119, 31.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018524, 38.937950, 30.974934>,  <41.078285, 39.102669, 30.615355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018524, 38.937950, 30.974934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845631, 0.417952, 0.332001,
		-0.512432, 0.809779, 0.285781,
		-0.149405, -0.411793, 0.898946,
		40.973701, 38.814411, 31.244617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642807, 39.073681, 31.156267>,  <41.078285, 39.102669, 30.615355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642807, 39.073681, 31.156267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025074, 38.964790, 31.201141>,  <42.254436, 38.899456, 31.228065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025074, 38.964790, 31.201141>,  <41.642807, 39.073681, 31.156267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025074, 38.964790, 31.201141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212417, -0.373611, 0.902936,
		-0.203889, -0.886740, -0.414874,
		0.955672, -0.272225, 0.112183,
		42.311775, 38.883121, 31.234797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813080, 38.440792, 31.371975>,  <41.642807, 39.073681, 31.156267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813080, 38.440792, 31.371975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074341, 38.697601, 31.532572>,  <42.231098, 38.851685, 31.628931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074341, 38.697601, 31.532572>,  <41.813080, 38.440792, 31.371975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074341, 38.697601, 31.532572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203229, -0.362136, 0.909701,
		0.729441, -0.675772, -0.106055,
		0.653156, 0.642020, 0.401494,
		42.270287, 38.890205, 31.653019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092876, 38.654766, 32.046467>,  <41.813080, 38.440792, 31.371975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092876, 38.654766, 32.046467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446968, 38.534779, 31.904261>,  <42.659424, 38.462788, 31.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446968, 38.534779, 31.904261>,  <42.092876, 38.654766, 32.046467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446968, 38.534779, 31.904261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454846, -0.398126, -0.796625,
		0.097421, 0.866899, -0.488871,
		0.885225, -0.299969, -0.355520,
		42.712536, 38.444786, 31.797606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409969, 38.009663, 32.141121>,  <42.092876, 38.654766, 32.046467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409969, 38.009663, 32.141121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240501, 37.846935, 31.817392>,  <42.138821, 37.749298, 31.623156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240501, 37.846935, 31.817392>,  <42.409969, 38.009663, 32.141121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240501, 37.846935, 31.817392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704497, -0.709604, -0.012103,
		-0.569373, -0.575291, 0.587244,
		-0.423673, -0.406821, -0.809319,
		42.113400, 37.724888, 31.574596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132977, 37.216114, 32.209351>,  <42.409969, 38.009663, 32.141121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132977, 37.216114, 32.209351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284103, 37.337898, 31.859594>,  <42.374779, 37.410969, 31.649740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284103, 37.337898, 31.859594>,  <42.132977, 37.216114, 32.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284103, 37.337898, 31.859594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791678, -0.595932, 0.134574,
		-0.480106, -0.743082, -0.466184,
		0.377813, 0.304458, -0.874393,
		42.397446, 37.429237, 31.597277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629589, 36.974079, 32.823631>,  <42.132977, 37.216114, 32.209351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629589, 36.974079, 32.823631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479645, 37.013756, 33.192337>,  <42.389679, 37.037563, 33.413559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479645, 37.013756, 33.192337>,  <42.629589, 36.974079, 32.823631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479645, 37.013756, 33.192337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625332, -0.706968, 0.330388,
		0.684428, 0.700255, 0.202983,
		-0.374858, 0.099195, 0.921760,
		42.367188, 37.043514, 33.468864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118225, 37.274178, 33.346783>,  <42.629589, 36.974079, 32.823631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118225, 37.274178, 33.346783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859737, 37.018444, 33.513470>,  <42.704643, 36.865005, 33.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859737, 37.018444, 33.513470>,  <43.118225, 37.274178, 33.346783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859737, 37.018444, 33.513470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733425, -0.671200, 0.107599,
		0.210911, 0.375165, 0.902645,
		-0.646223, -0.639329, 0.416719,
		42.665871, 36.826645, 33.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346581, 37.181461, 34.026703>,  <43.118225, 37.274178, 33.346783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346581, 37.181461, 34.026703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178474, 36.886902, 33.814629>,  <43.077610, 36.710167, 33.687386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178474, 36.886902, 33.814629>,  <43.346581, 37.181461, 34.026703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178474, 36.886902, 33.814629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848706, -0.525734, 0.057459,
		-0.321048, -0.425821, 0.845934,
		-0.420269, -0.736397, -0.530183,
		43.052395, 36.665981, 33.655575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311447, 36.506935, 34.387699>,  <43.346581, 37.181461, 34.026703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311447, 36.506935, 34.387699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423248, 36.447590, 34.008255>,  <43.490330, 36.411983, 33.780586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423248, 36.447590, 34.008255>,  <43.311447, 36.506935, 34.387699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423248, 36.447590, 34.008255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748584, -0.585014, 0.312060,
		-0.601249, -0.797338, -0.052452,
		0.279503, -0.148361, -0.948613,
		43.507099, 36.403080, 33.723671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108379, 35.810879, 34.154900>,  <43.311447, 36.506935, 34.387699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108379, 35.810879, 34.154900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435818, 35.993931, 34.016064>,  <43.632282, 36.103760, 33.932762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435818, 35.993931, 34.016064>,  <43.108379, 35.810879, 34.154900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435818, 35.993931, 34.016064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573831, -0.677653, 0.459896,
		-0.024747, -0.575642, -0.817327,
		0.818600, 0.457627, -0.347091,
		43.681396, 36.131218, 33.911938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717262, 35.356831, 33.977913>,  <43.108379, 35.810879, 34.154900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717262, 35.356831, 33.977913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909267, 35.696796, 34.064850>,  <44.024471, 35.900776, 34.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909267, 35.696796, 34.064850>,  <43.717262, 35.356831, 33.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909267, 35.696796, 34.064850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750913, -0.526159, 0.399108,
		0.453562, -0.028373, -0.890773,
		0.480012, 0.849912, 0.217340,
		44.053272, 35.951771, 34.130051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341690, 35.318382, 33.498493>,  <43.717262, 35.356831, 33.977913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341690, 35.318382, 33.498493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320770, 35.508846, 33.849613>,  <44.308216, 35.623127, 34.060284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320770, 35.508846, 33.849613>,  <44.341690, 35.318382, 33.498493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320770, 35.508846, 33.849613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669777, -0.635259, 0.384505,
		0.740718, 0.608041, -0.285699,
		-0.052302, 0.476164, 0.877800,
		44.305080, 35.651695, 34.112953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978706, 35.622364, 33.585823>,  <44.341690, 35.318382, 33.498493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978706, 35.622364, 33.585823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802574, 35.496082, 33.922024>,  <44.696896, 35.420311, 34.123745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802574, 35.496082, 33.922024>,  <44.978706, 35.622364, 33.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802574, 35.496082, 33.922024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769828, -0.614502, 0.172488,
		0.462032, 0.722991, 0.513625,
		-0.440331, -0.315708, 0.840498,
		44.670475, 35.401371, 34.174171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681164, 35.930874, 33.648434>,  <44.978706, 35.622364, 33.585823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681164, 35.930874, 33.648434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048965, 35.931454, 33.491203>,  <46.269646, 35.931801, 33.396866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048965, 35.931454, 33.491203>,  <45.681164, 35.930874, 33.648434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048965, 35.931454, 33.491203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143351, 0.932358, -0.331902,
		0.366002, 0.361533, 0.857517,
		0.919507, 0.001449, -0.393071,
		46.324818, 35.931889, 33.373283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934116, 36.192234, 34.218918>,  <45.681164, 35.930874, 33.648434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934116, 36.192234, 34.218918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175770, 36.300613, 34.518681>,  <46.320763, 36.365643, 34.698540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175770, 36.300613, 34.518681>,  <45.934116, 36.192234, 34.218918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175770, 36.300613, 34.518681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606965, -0.765815, -0.212418,
		0.516352, 0.583192, -0.627110,
		0.604131, 0.270951, 0.749407,
		46.357010, 36.381897, 34.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557919, 36.033531, 34.022465>,  <45.934116, 36.192234, 34.218918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557919, 36.033531, 34.022465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623646, 36.075581, 34.414780>,  <46.663082, 36.100811, 34.650169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623646, 36.075581, 34.414780>,  <46.557919, 36.033531, 34.022465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623646, 36.075581, 34.414780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674231, -0.737743, -0.033881,
		0.720010, 0.666846, -0.192100,
		0.164314, 0.105125, 0.980790,
		46.672939, 36.107117, 34.709015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240589, 36.203053, 34.165226>,  <46.557919, 36.033531, 34.022465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240589, 36.203053, 34.165226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073872, 36.000004, 34.466850>,  <46.973843, 35.878174, 34.647823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073872, 36.000004, 34.466850>,  <47.240589, 36.203053, 34.165226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073872, 36.000004, 34.466850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686188, -0.719769, -0.105259,
		0.596182, 0.473557, 0.648314,
		-0.416790, -0.507618, 0.754062,
		46.948833, 35.847717, 34.693069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640106, 36.124462, 34.769676>,  <47.240589, 36.203053, 34.165226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640106, 36.124462, 34.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416580, 35.793568, 34.746311>,  <47.282467, 35.595032, 34.732292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416580, 35.793568, 34.746311>,  <47.640106, 36.124462, 34.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416580, 35.793568, 34.746311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828354, -0.553434, -0.086842,
		0.039512, -0.096913, 0.994508,
		-0.558811, -0.827236, -0.058411,
		47.248936, 35.545399, 34.728786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781746, 35.551353, 35.271935>,  <47.640106, 36.124462, 34.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781746, 35.551353, 35.271935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664734, 35.402180, 34.919720>,  <47.594524, 35.312675, 34.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664734, 35.402180, 34.919720>,  <47.781746, 35.551353, 35.271935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664734, 35.402180, 34.919720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803903, -0.594565, -0.015255,
		-0.517846, -0.712326, 0.473738,
		-0.292534, -0.372939, -0.880534,
		47.576973, 35.290298, 34.655560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.787197, 34.749039, 35.390327>,  <47.781746, 35.551353, 35.271935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.787197, 34.749039, 35.390327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801975, 34.846069, 35.002556>,  <47.810841, 34.904289, 34.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801975, 34.846069, 35.002556>,  <47.787197, 34.749039, 35.390327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801975, 34.846069, 35.002556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836328, -0.538492, -0.102873,
		-0.546984, -0.806960, -0.222766,
		0.036943, 0.242575, -0.969429,
		47.813057, 34.918842, 34.711727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.178452, 39.862656, 20.939447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803726, 39.997948, 20.903723>,  <34.578892, 40.079121, 20.882288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803726, 39.997948, 20.903723>,  <35.178452, 39.862656, 20.939447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803726, 39.997948, 20.903723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179224, -0.244804, 0.952864,
		0.300419, 0.908666, 0.289954,
		-0.936818, 0.338226, -0.089311,
		34.522682, 40.099415, 20.876930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061527, 40.331772, 21.464706>,  <35.178452, 39.862656, 20.939447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061527, 40.331772, 21.464706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691936, 40.231564, 21.349117>,  <34.470181, 40.171436, 21.279764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691936, 40.231564, 21.349117>,  <35.061527, 40.331772, 21.464706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691936, 40.231564, 21.349117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308377, 0.041126, 0.950375,
		-0.226208, 0.967236, -0.115255,
		-0.923977, -0.250524, -0.288971,
		34.414742, 40.156406, 21.262426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563118, 40.905205, 21.786854>,  <35.061527, 40.331772, 21.464706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563118, 40.905205, 21.786854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345646, 40.582832, 21.693138>,  <34.215164, 40.389408, 21.636909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345646, 40.582832, 21.693138>,  <34.563118, 40.905205, 21.786854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345646, 40.582832, 21.693138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494549, 0.082082, 0.865265,
		-0.678113, 0.586292, -0.443199,
		-0.543677, -0.805931, -0.234290,
		34.182545, 40.341053, 21.622850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962818, 41.109207, 21.956736>,  <34.563118, 40.905205, 21.786854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962818, 41.109207, 21.956736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942402, 40.709740, 21.953665>,  <33.930153, 40.470058, 21.951822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942402, 40.709740, 21.953665>,  <33.962818, 41.109207, 21.956736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942402, 40.709740, 21.953665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588610, 0.023871, 0.808065,
		-0.806804, 0.045766, -0.589044,
		-0.051042, -0.998667, -0.007679,
		33.927090, 40.410141, 21.951361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264153, 40.912140, 22.010439>,  <33.962818, 41.109207, 21.956736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264153, 40.912140, 22.010439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.462334, 40.583286, 22.122602>,  <33.581242, 40.385975, 22.189901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.462334, 40.583286, 22.122602>,  <33.264153, 40.912140, 22.010439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462334, 40.583286, 22.122602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381253, 0.084243, 0.920625,
		-0.780496, -0.563031, -0.271701,
		0.495452, -0.822131, 0.280408,
		33.610970, 40.336647, 22.206724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724098, 40.628395, 22.389671>,  <33.264153, 40.912140, 22.010439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724098, 40.628395, 22.389671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.062469, 40.463360, 22.524830>,  <33.265491, 40.364338, 22.605925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.062469, 40.463360, 22.524830>,  <32.724098, 40.628395, 22.389671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062469, 40.463360, 22.524830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278323, 0.198910, 0.939665,
		-0.454905, -0.888936, 0.053432,
		0.845930, -0.412587, 0.337896,
		33.316250, 40.339584, 22.626198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538181, 40.452541, 22.978271>,  <32.724098, 40.628395, 22.389671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538181, 40.452541, 22.978271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.932781, 40.389786, 22.997013>,  <33.169540, 40.352131, 23.008259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.932781, 40.389786, 22.997013>,  <32.538181, 40.452541, 22.978271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932781, 40.389786, 22.997013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013583, 0.206766, 0.978296,
		-0.163172, -0.965730, 0.201844,
		0.986504, -0.156889, 0.046856,
		33.228733, 40.342720, 23.011070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633087, 39.988834, 23.413967>,  <32.538181, 40.452541, 22.978271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633087, 39.988834, 23.413967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987282, 40.172874, 23.387957>,  <33.199799, 40.283298, 23.372351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987282, 40.172874, 23.387957>,  <32.633087, 39.988834, 23.413967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987282, 40.172874, 23.387957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072242, 0.001924, 0.997385,
		0.459021, -0.887865, -0.031535,
		0.885483, 0.460099, -0.065024,
		33.252926, 40.310905, 23.368450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157536, 39.579750, 23.892570>,  <32.633087, 39.988834, 23.413967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157536, 39.579750, 23.892570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.303753, 39.947933, 23.837231>,  <33.391483, 40.168842, 23.804028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.303753, 39.947933, 23.837231>,  <33.157536, 39.579750, 23.892570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303753, 39.947933, 23.837231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207009, 0.064518, 0.976210,
		0.907482, -0.385490, -0.166957,
		0.365547, 0.920454, -0.138349,
		33.413418, 40.224068, 23.795727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830429, 39.628620, 24.233389>,  <33.157536, 39.579750, 23.892570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830429, 39.628620, 24.233389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738548, 40.017742, 24.221453>,  <33.683418, 40.251213, 24.214291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738548, 40.017742, 24.221453>,  <33.830429, 39.628620, 24.233389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738548, 40.017742, 24.221453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380110, 0.117896, 0.917397,
		0.895965, 0.199386, -0.396854,
		-0.229703, 0.972803, -0.029842,
		33.669636, 40.309582, 24.212500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385761, 40.024532, 24.269472>,  <33.830429, 39.628620, 24.233389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385761, 40.024532, 24.269472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097710, 40.275486, 24.387995>,  <33.924877, 40.426060, 24.459108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097710, 40.275486, 24.387995>,  <34.385761, 40.024532, 24.269472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097710, 40.275486, 24.387995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420976, 0.055610, 0.905366,
		0.551538, 0.776719, -0.304161,
		-0.720129, 0.627388, 0.296309,
		33.881672, 40.463703, 24.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729012, 40.594627, 24.490137>,  <34.385761, 40.024532, 24.269472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729012, 40.594627, 24.490137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.370090, 40.605072, 24.666391>,  <34.154736, 40.611340, 24.772144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.370090, 40.605072, 24.666391>,  <34.729012, 40.594627, 24.490137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370090, 40.605072, 24.666391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440597, 0.113566, 0.890493,
		-0.026787, 0.993187, -0.113409,
		-0.897305, 0.026114, 0.440637,
		34.100899, 40.612907, 24.798582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737392, 41.081924, 24.922180>,  <34.729012, 40.594627, 24.490137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737392, 41.081924, 24.922180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435978, 40.864975, 25.070778>,  <34.255127, 40.734806, 25.159937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435978, 40.864975, 25.070778>,  <34.737392, 41.081924, 24.922180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435978, 40.864975, 25.070778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378031, 0.104824, 0.919839,
		-0.537837, 0.833573, 0.126045,
		-0.753541, -0.542373, 0.371495,
		34.209915, 40.702263, 25.182226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417141, 41.545113, 25.313219>,  <34.737392, 41.081924, 24.922180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417141, 41.545113, 25.313219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346924, 41.174126, 25.445271>,  <34.304794, 40.951534, 25.524502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346924, 41.174126, 25.445271>,  <34.417141, 41.545113, 25.313219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346924, 41.174126, 25.445271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263974, 0.278713, 0.923383,
		-0.948421, 0.249237, 0.195903,
		-0.175540, -0.927470, 0.330130,
		34.294262, 40.895885, 25.544310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988914, 41.655983, 25.969315>,  <34.417141, 41.545113, 25.313219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988914, 41.655983, 25.969315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136162, 41.284477, 25.986664>,  <34.224510, 41.061573, 25.997074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136162, 41.284477, 25.986664>,  <33.988914, 41.655983, 25.969315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136162, 41.284477, 25.986664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123323, 0.095010, 0.987808,
		-0.921566, -0.358277, 0.149513,
		0.368114, -0.928768, 0.043374,
		34.246597, 41.005848, 25.999676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689465, 41.404747, 26.519419>,  <33.988914, 41.655983, 25.969315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689465, 41.404747, 26.519419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997585, 41.156887, 26.459196>,  <34.182457, 41.008171, 26.423061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997585, 41.156887, 26.459196>,  <33.689465, 41.404747, 26.519419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997585, 41.156887, 26.459196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336457, 0.194378, 0.921420,
		-0.541691, -0.760429, 0.358216,
		0.770303, -0.619649, -0.150559,
		34.228676, 40.970993, 26.414028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609409, 40.904377, 27.086851>,  <33.689465, 41.404747, 26.519419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609409, 40.904377, 27.086851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982220, 40.863346, 26.947828>,  <34.205906, 40.838726, 26.864414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982220, 40.863346, 26.947828>,  <33.609409, 40.904377, 27.086851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982220, 40.863346, 26.947828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353391, 0.044984, 0.934393,
		-0.080216, -0.993707, 0.078178,
		0.932030, -0.102580, -0.347559,
		34.261829, 40.832573, 26.843561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986675, 40.409122, 27.499702>,  <33.609409, 40.904377, 27.086851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986675, 40.409122, 27.499702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289845, 40.620758, 27.347063>,  <34.471745, 40.747738, 27.255480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289845, 40.620758, 27.347063>,  <33.986675, 40.409122, 27.499702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289845, 40.620758, 27.347063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298167, 0.239319, 0.924025,
		0.580217, -0.814119, 0.023628,
		0.757921, 0.529090, -0.381600,
		34.517220, 40.779484, 27.232582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567696, 40.205585, 27.883734>,  <33.986675, 40.409122, 27.499702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567696, 40.205585, 27.883734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667244, 40.546032, 27.698839>,  <34.726974, 40.750301, 27.587902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667244, 40.546032, 27.698839>,  <34.567696, 40.205585, 27.883734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667244, 40.546032, 27.698839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412790, 0.338525, 0.845580,
		0.876166, -0.401249, -0.267082,
		0.248874, 0.851117, -0.462235,
		34.741905, 40.801369, 27.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258244, 40.359325, 28.103746>,  <34.567696, 40.205585, 27.883734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258244, 40.359325, 28.103746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098309, 40.708378, 27.991570>,  <35.002346, 40.917809, 27.924263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098309, 40.708378, 27.991570>,  <35.258244, 40.359325, 28.103746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098309, 40.708378, 27.991570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291619, 0.411175, 0.863651,
		0.868957, 0.263540, -0.418879,
		-0.399839, 0.872629, -0.280440,
		34.978355, 40.970165, 27.907438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799362, 40.820175, 28.168892>,  <35.258244, 40.359325, 28.103746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799362, 40.820175, 28.168892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471939, 41.049946, 28.169445>,  <35.275486, 41.187809, 28.169777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471939, 41.049946, 28.169445>,  <35.799362, 40.820175, 28.168892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471939, 41.049946, 28.169445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214991, 0.304128, 0.928054,
		0.532679, 0.759960, -0.372442,
		-0.818555, 0.574427, 0.001381,
		35.226372, 41.222275, 28.169859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526836, 40.536362, 28.870224>,  <35.799362, 40.820175, 28.168892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526836, 40.536362, 28.870224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816738, 40.713524, 29.081341>,  <35.990681, 40.819820, 29.208012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816738, 40.713524, 29.081341>,  <35.526836, 40.536362, 28.870224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816738, 40.713524, 29.081341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467495, 0.246610, -0.848900,
		-0.506139, 0.861987, -0.028322,
		0.724756, 0.442902, 0.527794,
		36.034164, 40.846394, 29.239679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516312, 41.274384, 28.678823>,  <35.526836, 40.536362, 28.870224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516312, 41.274384, 28.678823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878723, 41.195236, 28.828468>,  <36.096169, 41.147747, 28.918255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878723, 41.195236, 28.828468>,  <35.516312, 41.274384, 28.678823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878723, 41.195236, 28.828468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402605, 0.130465, -0.906029,
		0.130465, 0.971508, 0.197867,
		0.906029, -0.197867, 0.374113,
		36.150532, 41.135876, 28.940702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940159, 41.707008, 28.386843>,  <35.516312, 41.274384, 28.678823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940159, 41.707008, 28.386843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201008, 41.428558, 28.506937>,  <36.357517, 41.261490, 28.578995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201008, 41.428558, 28.506937>,  <35.940159, 41.707008, 28.386843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201008, 41.428558, 28.506937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444413, 0.030176, -0.895314,
		0.614190, 0.717287, 0.329045,
		0.652126, -0.696124, 0.300238,
		36.396645, 41.219723, 28.597008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727188, 41.892776, 28.243940>,  <35.940159, 41.707008, 28.386843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727188, 41.892776, 28.243940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726578, 41.493553, 28.268873>,  <36.726212, 41.254021, 28.283833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726578, 41.493553, 28.268873>,  <36.727188, 41.892776, 28.243940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726578, 41.493553, 28.268873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438018, -0.056698, -0.897176,
		0.898965, 0.025936, 0.437252,
		-0.001522, -0.998054, 0.062330,
		36.726120, 41.194138, 28.287573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384674, 41.670475, 27.835041>,  <36.727188, 41.892776, 28.243940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384674, 41.670475, 27.835041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175522, 41.332314, 27.878641>,  <37.050030, 41.129417, 27.904800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175522, 41.332314, 27.878641>,  <37.384674, 41.670475, 27.835041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175522, 41.332314, 27.878641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403079, -0.357903, -0.842278,
		0.751078, -0.396479, 0.527908,
		-0.522885, -0.845405, 0.109001,
		37.018658, 41.078693, 27.911341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832806, 41.107426, 27.689285>,  <37.384674, 41.670475, 27.835041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832806, 41.107426, 27.689285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456005, 40.986252, 27.631502>,  <37.229923, 40.913548, 27.596832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456005, 40.986252, 27.631502>,  <37.832806, 41.107426, 27.689285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456005, 40.986252, 27.631502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224174, -0.247616, -0.942567,
		0.249763, -0.920282, 0.301163,
		-0.942000, -0.302931, -0.144458,
		37.173405, 40.895374, 27.588165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012325, 40.388847, 27.525547>,  <37.832806, 41.107426, 27.689285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012325, 40.388847, 27.525547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653446, 40.523300, 27.410969>,  <37.438118, 40.603970, 27.342222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653446, 40.523300, 27.410969>,  <38.012325, 40.388847, 27.525547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653446, 40.523300, 27.410969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246302, -0.157518, -0.956307,
		-0.366563, -0.928550, 0.058536,
		-0.897200, 0.336129, -0.286444,
		37.384285, 40.624138, 27.325035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787079, 39.955257, 26.974337>,  <38.012325, 40.388847, 27.525547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787079, 39.955257, 26.974337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576885, 40.292091, 26.925756>,  <37.450768, 40.494194, 26.896608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576885, 40.292091, 26.925756>,  <37.787079, 39.955257, 26.974337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576885, 40.292091, 26.925756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172793, -0.034145, -0.984366,
		-0.833071, -0.538257, -0.127564,
		-0.525486, 0.842088, -0.121453,
		37.419239, 40.544720, 26.889320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326176, 39.744408, 26.406443>,  <37.787079, 39.955257, 26.974337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326176, 39.744408, 26.406443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300308, 40.143570, 26.405272>,  <37.284790, 40.383068, 26.404570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300308, 40.143570, 26.405272>,  <37.326176, 39.744408, 26.406443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300308, 40.143570, 26.405272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189834, -0.015183, -0.981699,
		-0.979684, -0.062927, 0.190418,
		-0.064666, 0.997903, -0.002929,
		37.280907, 40.442940, 26.404392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697838, 39.821976, 26.019014>,  <37.326176, 39.744408, 26.406443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697838, 39.821976, 26.019014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914734, 40.158035, 26.014467>,  <37.044872, 40.359669, 26.011740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914734, 40.158035, 26.014467>,  <36.697838, 39.821976, 26.019014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914734, 40.158035, 26.014467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165803, 0.093729, -0.981695,
		-0.823701, 0.534201, 0.190122,
		0.542243, 0.840145, -0.011367,
		37.077408, 40.410080, 26.011057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404301, 40.196198, 25.471684>,  <36.697838, 39.821976, 26.019014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404301, 40.196198, 25.471684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741390, 40.397514, 25.548122>,  <36.943645, 40.518303, 25.593987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741390, 40.397514, 25.548122>,  <36.404301, 40.196198, 25.471684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741390, 40.397514, 25.548122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018033, 0.381161, -0.924333,
		-0.538045, 0.775511, 0.330289,
		0.842723, 0.503289, 0.191097,
		36.994205, 40.548500, 25.605452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340649, 40.949131, 25.286182>,  <36.404301, 40.196198, 25.471684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340649, 40.949131, 25.286182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724827, 40.843281, 25.251509>,  <36.955334, 40.779770, 25.230705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724827, 40.843281, 25.251509>,  <36.340649, 40.949131, 25.286182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724827, 40.843281, 25.251509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004746, 0.295687, -0.955273,
		0.278422, 0.917901, 0.282736,
		0.960447, -0.264627, -0.086682,
		37.012962, 40.763893, 25.225504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744774, 41.540081, 24.914188>,  <36.340649, 40.949131, 25.286182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744774, 41.540081, 24.914188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975788, 41.217884, 24.861086>,  <37.114399, 41.024567, 24.829226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975788, 41.217884, 24.861086>,  <36.744774, 41.540081, 24.914188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975788, 41.217884, 24.861086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071778, 0.212092, -0.974610,
		0.813201, 0.553348, 0.180309,
		0.577540, -0.805496, -0.132755,
		37.149052, 40.976234, 24.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150734, 41.729038, 24.297915>,  <36.744774, 41.540081, 24.914188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150734, 41.729038, 24.297915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197769, 41.332058, 24.311876>,  <37.225990, 41.093872, 24.320253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197769, 41.332058, 24.311876>,  <37.150734, 41.729038, 24.297915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197769, 41.332058, 24.311876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130524, -0.019397, -0.991255,
		0.984447, 0.121119, 0.127258,
		0.117591, -0.992449, 0.034905,
		37.233047, 41.034325, 24.322348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878510, 41.559135, 24.017908>,  <37.150734, 41.729038, 24.297915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878510, 41.559135, 24.017908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633766, 41.245392, 23.977097>,  <37.486919, 41.057144, 23.952610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633766, 41.245392, 23.977097>,  <37.878510, 41.559135, 24.017908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633766, 41.245392, 23.977097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209445, -0.036275, -0.977147,
		0.762733, -0.619246, 0.186475,
		-0.611859, -0.784359, -0.102030,
		37.450207, 41.010086, 23.946487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281380, 41.111164, 23.644457>,  <37.878510, 41.559135, 24.017908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281380, 41.111164, 23.644457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909809, 40.968102, 23.606146>,  <37.686867, 40.882263, 23.583160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.909809, 40.968102, 23.606146>,  <38.281380, 41.111164, 23.644457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909809, 40.968102, 23.606146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134761, -0.085655, -0.987169,
		0.344867, -0.929916, 0.127766,
		-0.928928, -0.357660, -0.095776,
		37.631130, 40.860806, 23.577414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345764, 40.534073, 23.108038>,  <38.281380, 41.111164, 23.644457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345764, 40.534073, 23.108038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953674, 40.607533, 23.078558>,  <37.718422, 40.651608, 23.060869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953674, 40.607533, 23.078558>,  <38.345764, 40.534073, 23.108038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953674, 40.607533, 23.078558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025642, -0.251421, -0.967538,
		-0.196211, -0.950296, 0.241740,
		-0.980226, 0.183643, -0.073699,
		37.659607, 40.662628, 23.056448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071388, 39.988636, 22.859926>,  <38.345764, 40.534073, 23.108038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071388, 39.988636, 22.859926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763889, 40.229893, 22.774834>,  <37.579391, 40.374645, 22.723778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763889, 40.229893, 22.774834>,  <38.071388, 39.988636, 22.859926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763889, 40.229893, 22.774834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062686, -0.402079, -0.913457,
		-0.636477, -0.688879, 0.346904,
		-0.768744, 0.603140, -0.212731,
		37.533264, 40.410835, 22.711014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624943, 39.639496, 22.477978>,  <38.071388, 39.988636, 22.859926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624943, 39.639496, 22.477978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512455, 40.012146, 22.385891>,  <37.444962, 40.235737, 22.330639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512455, 40.012146, 22.385891>,  <37.624943, 39.639496, 22.477978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512455, 40.012146, 22.385891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110034, -0.269620, -0.956660,
		-0.953316, -0.243696, 0.178331,
		-0.281215, 0.931621, -0.230218,
		37.428089, 40.291634, 22.316826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.822586, 39.546352, 22.078444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991119, 39.894814, 21.977592>,  <37.092239, 40.103889, 21.917082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991119, 39.894814, 21.977592>,  <36.822586, 39.546352, 22.078444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991119, 39.894814, 21.977592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266022, -0.147063, -0.952683,
		-0.867013, 0.468467, 0.169784,
		0.421332, 0.871155, -0.252128,
		37.117519, 40.156158, 21.901955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350750, 39.803490, 21.751490>,  <36.822586, 39.546352, 22.078444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350750, 39.803490, 21.751490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668243, 40.004772, 21.614801>,  <36.858738, 40.125542, 21.532787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668243, 40.004772, 21.614801>,  <36.350750, 39.803490, 21.751490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668243, 40.004772, 21.614801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334075, -0.108841, -0.936241,
		-0.508318, 0.857284, 0.081719,
		0.793730, 0.503208, -0.341723,
		36.906361, 40.155735, 21.512285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135601, 40.401985, 21.260681>,  <36.350750, 39.803490, 21.751490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135601, 40.401985, 21.260681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509655, 40.305649, 21.156746>,  <36.734089, 40.247849, 21.094385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509655, 40.305649, 21.156746>,  <36.135601, 40.401985, 21.260681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509655, 40.305649, 21.156746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246967, 0.082727, -0.965486,
		0.254020, 0.967033, 0.017882,
		0.935137, -0.240837, -0.259840,
		36.790195, 40.233398, 21.078794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373886, 40.882717, 20.832209>,  <36.135601, 40.401985, 21.260681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373886, 40.882717, 20.832209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648422, 40.603416, 20.750835>,  <36.813145, 40.435837, 20.702011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648422, 40.603416, 20.750835>,  <36.373886, 40.882717, 20.832209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648422, 40.603416, 20.750835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202777, 0.084899, -0.975537,
		0.698439, 0.710803, -0.083319,
		0.686341, -0.698248, -0.203432,
		36.854324, 40.393940, 20.689806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742432, 41.071629, 20.145962>,  <36.373886, 40.882717, 20.832209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742432, 41.071629, 20.145962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828098, 40.681034, 20.155890>,  <36.879498, 40.446678, 20.161846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828098, 40.681034, 20.155890>,  <36.742432, 41.071629, 20.145962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828098, 40.681034, 20.155890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145759, -0.057070, -0.987673,
		0.965861, 0.207906, -0.154554,
		0.214164, -0.976483, 0.024817,
		36.892349, 40.388088, 20.163334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302849, 40.973751, 19.622009>,  <36.742432, 41.071629, 20.145962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302849, 40.973751, 19.622009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139580, 40.617313, 19.701359>,  <37.041618, 40.403450, 19.748968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139580, 40.617313, 19.701359>,  <37.302849, 40.973751, 19.622009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139580, 40.617313, 19.701359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126300, -0.160091, -0.978989,
		0.904125, -0.424652, -0.047199,
		-0.408173, -0.891090, 0.198376,
		37.017128, 40.349987, 19.760872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608784, 40.454517, 19.112932>,  <37.302849, 40.973751, 19.622009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608784, 40.454517, 19.112932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271881, 40.276066, 19.233974>,  <37.069740, 40.168995, 19.306599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271881, 40.276066, 19.233974>,  <37.608784, 40.454517, 19.112932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271881, 40.276066, 19.233974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161806, -0.326237, -0.931337,
		0.514217, -0.833389, 0.202589,
		-0.842258, -0.446129, 0.302604,
		37.019203, 40.142227, 19.324757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673771, 39.767979, 18.860081>,  <37.608784, 40.454517, 19.112932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673771, 39.767979, 18.860081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281612, 39.798042, 18.932934>,  <37.046318, 39.816082, 18.976646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281612, 39.798042, 18.932934>,  <37.673771, 39.767979, 18.860081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281612, 39.798042, 18.932934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193143, -0.183826, -0.963797,
		-0.038955, -0.980081, 0.194738,
		-0.980397, 0.075157, 0.182135,
		36.987492, 39.820591, 18.987574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265606, 39.072407, 18.730442>,  <37.673771, 39.767979, 18.860081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265606, 39.072407, 18.730442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006680, 39.370331, 18.665648>,  <36.851322, 39.549084, 18.626770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006680, 39.370331, 18.665648>,  <37.265606, 39.072407, 18.730442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006680, 39.370331, 18.665648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133719, -0.320190, -0.937868,
		-0.750399, -0.585439, 0.306860,
		-0.647318, 0.744808, -0.161986,
		36.812485, 39.593773, 18.617052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735714, 38.795883, 18.303156>,  <37.265606, 39.072407, 18.730442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735714, 38.795883, 18.303156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686958, 39.191639, 18.271530>,  <36.657703, 39.429092, 18.252554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686958, 39.191639, 18.271530>,  <36.735714, 38.795883, 18.303156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686958, 39.191639, 18.271530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153862, -0.097533, -0.983267,
		-0.980545, -0.107687, 0.164118,
		-0.121892, 0.989389, -0.079066,
		36.650391, 39.488457, 18.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185738, 38.798271, 17.786419>,  <36.735714, 38.795883, 18.303156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185738, 38.798271, 17.786419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390182, 39.139927, 17.824800>,  <36.512848, 39.344921, 17.847830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390182, 39.139927, 17.824800>,  <36.185738, 38.798271, 17.786419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390182, 39.139927, 17.824800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119328, 0.181074, -0.976203,
		-0.851190, 0.487500, 0.194472,
		0.511114, 0.854140, 0.095956,
		36.543518, 39.396168, 17.853588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849823, 39.257473, 17.435749>,  <36.185738, 38.798271, 17.786419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849823, 39.257473, 17.435749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207893, 39.435490, 17.445595>,  <36.422733, 39.542301, 17.451502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207893, 39.435490, 17.445595>,  <35.849823, 39.257473, 17.435749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207893, 39.435490, 17.445595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124859, 0.303395, -0.944649,
		-0.427876, 0.842550, 0.327158,
		0.895172, 0.445041, 0.024616,
		36.476444, 39.569000, 17.452980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746071, 39.981731, 17.148346>,  <35.849823, 39.257473, 17.435749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746071, 39.981731, 17.148346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139103, 39.908974, 17.133072>,  <36.374920, 39.865318, 17.123907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139103, 39.908974, 17.133072>,  <35.746071, 39.981731, 17.148346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139103, 39.908974, 17.133072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038341, 0.399408, -0.915971,
		0.181863, 0.898547, 0.399423,
		0.982576, -0.181895, -0.038186,
		36.433876, 39.854404, 17.121616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986809, 40.479019, 16.821306>,  <35.746071, 39.981731, 17.148346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986809, 40.479019, 16.821306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297024, 40.228745, 16.787710>,  <36.483154, 40.078579, 16.767553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297024, 40.228745, 16.787710>,  <35.986809, 40.479019, 16.821306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297024, 40.228745, 16.787710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109264, 0.264069, -0.958295,
		0.621773, 0.734018, 0.273160,
		0.775538, -0.625688, -0.083989,
		36.529686, 40.041039, 16.762514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503098, 40.911499, 16.524178>,  <35.986809, 40.479019, 16.821306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503098, 40.911499, 16.524178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640778, 40.546207, 16.436970>,  <36.723385, 40.327030, 16.384645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640778, 40.546207, 16.436970>,  <36.503098, 40.911499, 16.524178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640778, 40.546207, 16.436970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192264, 0.295843, -0.935688,
		0.919000, 0.280148, 0.277411,
		0.344201, -0.913233, -0.218018,
		36.744038, 40.272236, 16.371565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144081, 40.876694, 16.109112>,  <36.503098, 40.911499, 16.524178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144081, 40.876694, 16.109112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000568, 40.516052, 16.012459>,  <36.914459, 40.299667, 15.954467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000568, 40.516052, 16.012459>,  <37.144081, 40.876694, 16.109112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000568, 40.516052, 16.012459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155874, 0.313103, -0.936840,
		0.920315, -0.298457, -0.252872,
		-0.358782, -0.901604, -0.241631,
		36.892933, 40.245571, 15.939969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454712, 40.739315, 15.471892>,  <37.144081, 40.876694, 16.109112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454712, 40.739315, 15.471892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155838, 40.474136, 15.490724>,  <36.976513, 40.315029, 15.502022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155838, 40.474136, 15.490724>,  <37.454712, 40.739315, 15.471892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155838, 40.474136, 15.490724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141731, 0.089734, -0.985829,
		0.649330, -0.743268, -0.161008,
		-0.747183, -0.662948, 0.047077,
		36.931683, 40.275253, 15.504847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597683, 40.098129, 14.927904>,  <37.454712, 40.739315, 15.471892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597683, 40.098129, 14.927904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210354, 40.155392, 15.009748>,  <36.977959, 40.189751, 15.058853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210354, 40.155392, 15.009748>,  <37.597683, 40.098129, 14.927904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210354, 40.155392, 15.009748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209582, -0.020405, -0.977578,
		-0.135775, -0.989489, 0.049763,
		-0.968318, 0.143160, 0.204609,
		36.919857, 40.198341, 15.071130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354958, 39.817535, 14.368455>,  <37.597683, 40.098129, 14.927904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354958, 39.817535, 14.368455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017380, 39.976601, 14.512464>,  <36.814831, 40.072041, 14.598869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017380, 39.976601, 14.512464>,  <37.354958, 39.817535, 14.368455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017380, 39.976601, 14.512464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271422, 0.262335, -0.926019,
		-0.462691, -0.879229, -0.113462,
		-0.843947, 0.397664, 0.360022,
		36.764194, 40.095901, 14.620470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007725, 39.839951, 13.813414>,  <37.354958, 39.817535, 14.368455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007725, 39.839951, 13.813414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768147, 40.066555, 14.039803>,  <36.624397, 40.202518, 14.175636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768147, 40.066555, 14.039803>,  <37.007725, 39.839951, 13.813414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768147, 40.066555, 14.039803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433230, 0.365172, -0.823991,
		-0.673478, -0.738724, 0.026711,
		-0.598948, 0.566512, 0.565973,
		36.588463, 40.236507, 14.209595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344933, 39.778305, 13.496367>,  <37.007725, 39.839951, 13.813414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344933, 39.778305, 13.496367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417591, 40.112736, 13.703434>,  <36.461185, 40.313393, 13.827675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417591, 40.112736, 13.703434>,  <36.344933, 39.778305, 13.496367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417591, 40.112736, 13.703434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038507, 0.532070, -0.845824,
		-0.982610, 0.133707, 0.128843,
		0.181646, 0.836077, 0.517668,
		36.472084, 40.363560, 13.858734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805805, 40.290051, 13.387340>,  <36.344933, 39.778305, 13.496367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805805, 40.290051, 13.387340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143639, 40.477070, 13.491699>,  <36.346340, 40.589283, 13.554315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143639, 40.477070, 13.491699>,  <35.805805, 40.290051, 13.387340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143639, 40.477070, 13.491699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040258, 0.430446, -0.901718,
		-0.533903, 0.772082, 0.344727,
		0.844587, 0.467552, 0.260899,
		36.397015, 40.617336, 13.569969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688213, 40.944866, 13.056080>,  <35.805805, 40.290051, 13.387340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688213, 40.944866, 13.056080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081299, 40.904968, 13.118469>,  <36.317150, 40.881027, 13.155903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081299, 40.904968, 13.118469>,  <35.688213, 40.944866, 13.056080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081299, 40.904968, 13.118469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185057, 0.503522, -0.843931,
		0.005645, 0.858205, 0.513276,
		0.982712, -0.099749, 0.155974,
		36.376114, 40.875042, 13.165261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092987, 41.533531, 12.892596>,  <35.688213, 40.944866, 13.056080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092987, 41.533531, 12.892596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379086, 41.257225, 12.850150>,  <36.550747, 41.091442, 12.824682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379086, 41.257225, 12.850150>,  <36.092987, 41.533531, 12.892596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379086, 41.257225, 12.850150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398807, 0.528111, -0.749701,
		0.573908, 0.493904, 0.653214,
		0.715250, -0.690766, -0.106115,
		36.593662, 41.049995, 12.818316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329414, 41.833126, 13.019372>,  <36.092987, 41.533531, 12.892596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329414, 41.833126, 13.019372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981598, 42.027027, 12.981597>,  <34.772907, 42.143368, 12.958932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981598, 42.027027, 12.981597>,  <35.329414, 41.833126, 13.019372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981598, 42.027027, 12.981597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078235, 0.053601, 0.995493,
		0.487629, 0.873008, -0.008684,
		-0.869539, 0.484752, -0.094437,
		34.720737, 42.172451, 12.953266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354305, 42.341080, 13.556155>,  <35.329414, 41.833126, 13.019372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354305, 42.341080, 13.556155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971416, 42.284592, 13.455136>,  <34.741684, 42.250698, 13.394526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971416, 42.284592, 13.455136>,  <35.354305, 42.341080, 13.556155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971416, 42.284592, 13.455136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267832, 0.102160, 0.958034,
		-0.109491, 0.984693, -0.135613,
		-0.957224, -0.141218, -0.252546,
		34.684250, 42.242226, 13.379373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969658, 42.869884, 13.971747>,  <35.354305, 42.341080, 13.556155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969658, 42.869884, 13.971747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719364, 42.578510, 13.860151>,  <34.569187, 42.403687, 13.793194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719364, 42.578510, 13.860151>,  <34.969658, 42.869884, 13.971747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719364, 42.578510, 13.860151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313752, -0.092416, 0.944997,
		-0.714156, 0.678849, -0.170722,
		-0.625732, -0.728439, -0.278989,
		34.531643, 42.359978, 13.776455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432049, 43.050076, 14.384529>,  <34.969658, 42.869884, 13.971747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432049, 43.050076, 14.384529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357048, 42.676964, 14.261396>,  <34.312046, 42.453094, 14.187516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357048, 42.676964, 14.261396>,  <34.432049, 43.050076, 14.384529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357048, 42.676964, 14.261396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289168, -0.247084, 0.924841,
		-0.938735, 0.262428, -0.223401,
		-0.187505, -0.932781, -0.307833,
		34.300797, 42.397129, 14.169046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696022, 42.876350, 14.675443>,  <34.432049, 43.050076, 14.384529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696022, 42.876350, 14.675443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902809, 42.538181, 14.621774>,  <34.026882, 42.335278, 14.589573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902809, 42.538181, 14.621774>,  <33.696022, 42.876350, 14.675443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902809, 42.538181, 14.621774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205645, -0.274810, 0.939249,
		-0.830938, -0.457967, -0.315925,
		0.516965, -0.845426, -0.134171,
		34.057899, 42.284554, 14.581522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344410, 42.357685, 15.017050>,  <33.696022, 42.876350, 14.675443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344410, 42.357685, 15.017050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687462, 42.154305, 14.986218>,  <33.893295, 42.032276, 14.967720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687462, 42.154305, 14.986218>,  <33.344410, 42.357685, 15.017050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687462, 42.154305, 14.986218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231562, -0.515637, 0.824923,
		-0.459180, -0.689632, -0.559966,
		0.857632, -0.508455, -0.077077,
		33.944752, 42.001766, 14.963095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200241, 41.604584, 15.222450>,  <33.344410, 42.357685, 15.017050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200241, 41.604584, 15.222450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595554, 41.659725, 15.248671>,  <33.832741, 41.692810, 15.264402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595554, 41.659725, 15.248671>,  <33.200241, 41.604584, 15.222450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595554, 41.659725, 15.248671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013923, -0.346222, 0.938049,
		0.152013, -0.927968, -0.340245,
		0.988280, 0.137858, 0.065550,
		33.892040, 41.701084, 15.268335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529335, 40.972542, 15.557193>,  <33.200241, 41.604584, 15.222450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529335, 40.972542, 15.557193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793446, 41.263004, 15.633858>,  <33.951912, 41.437283, 15.679856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793446, 41.263004, 15.633858>,  <33.529335, 40.972542, 15.557193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793446, 41.263004, 15.633858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194538, -0.411859, 0.890240,
		0.725390, -0.550519, -0.413205,
		0.660276, 0.726155, 0.191662,
		33.991528, 41.480850, 15.691357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973454, 40.621666, 16.029785>,  <33.529335, 40.972542, 15.557193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973454, 40.621666, 16.029785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067635, 41.007999, 16.073105>,  <34.124142, 41.239799, 16.099096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067635, 41.007999, 16.073105>,  <33.973454, 40.621666, 16.029785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067635, 41.007999, 16.073105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422361, -0.202044, 0.883623,
		0.875315, -0.162305, -0.455501,
		0.235448, 0.965834, 0.108301,
		34.138268, 41.297749, 16.105595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691639, 40.627476, 16.245697>,  <33.973454, 40.621666, 16.029785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691639, 40.627476, 16.245697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514893, 40.968391, 16.357666>,  <34.408844, 41.172939, 16.424849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514893, 40.968391, 16.357666>,  <34.691639, 40.627476, 16.245697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514893, 40.968391, 16.357666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395369, -0.095079, 0.913588,
		0.805257, 0.514356, -0.294957,
		-0.441865, 0.852290, 0.279923,
		34.382332, 41.224079, 16.441643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138004, 41.004436, 16.664627>,  <34.691639, 40.627476, 16.245697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138004, 41.004436, 16.664627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783203, 41.145512, 16.783848>,  <34.570320, 41.230156, 16.855381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783203, 41.145512, 16.783848>,  <35.138004, 41.004436, 16.664627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783203, 41.145512, 16.783848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267124, -0.134590, 0.954217,
		0.376652, 0.926013, 0.025172,
		-0.887005, 0.352683, 0.298054,
		34.517101, 41.251316, 16.873264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241688, 41.317577, 17.237917>,  <35.138004, 41.004436, 16.664627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241688, 41.317577, 17.237917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845501, 41.266491, 17.258560>,  <34.607788, 41.235840, 17.270947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845501, 41.266491, 17.258560>,  <35.241688, 41.317577, 17.237917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845501, 41.266491, 17.258560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064919, -0.102352, 0.992628,
		-0.121491, 0.986515, 0.109667,
		-0.990467, -0.127715, 0.051609,
		34.548359, 41.228176, 17.274042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004513, 41.656521, 17.851919>,  <35.241688, 41.317577, 17.237917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004513, 41.656521, 17.851919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711056, 41.397331, 17.770041>,  <34.534981, 41.241817, 17.720913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711056, 41.397331, 17.770041>,  <35.004513, 41.656521, 17.851919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711056, 41.397331, 17.770041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012468, -0.288344, 0.957446,
		-0.679424, 0.704972, 0.203462,
		-0.733640, -0.647975, -0.204697,
		34.490963, 41.202938, 17.708632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474407, 41.775486, 18.409897>,  <35.004513, 41.656521, 17.851919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474407, 41.775486, 18.409897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403336, 41.400951, 18.288759>,  <34.360695, 41.176231, 18.216076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403336, 41.400951, 18.288759>,  <34.474407, 41.775486, 18.409897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403336, 41.400951, 18.288759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024170, -0.303495, 0.952527,
		-0.983793, 0.176559, 0.031292,
		-0.177675, -0.936332, -0.302843,
		34.350033, 41.120052, 18.197906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969547, 41.521961, 18.883303>,  <34.474407, 41.775486, 18.409897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969547, 41.521961, 18.883303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129082, 41.188843, 18.729738>,  <34.224800, 40.988972, 18.637600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129082, 41.188843, 18.729738>,  <33.969547, 41.521961, 18.883303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129082, 41.188843, 18.729738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117897, -0.461739, 0.879146,
		-0.909413, -0.305371, -0.282342,
		0.398834, -0.832794, -0.383909,
		34.248734, 40.939003, 18.614565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415775, 40.962963, 19.069704>,  <33.969547, 41.521961, 18.883303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415775, 40.962963, 19.069704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762760, 40.773678, 19.008274>,  <33.970951, 40.660107, 18.971416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762760, 40.773678, 19.008274>,  <33.415775, 40.962963, 19.069704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762760, 40.773678, 19.008274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036034, -0.367638, 0.929270,
		-0.496204, -0.800569, -0.335963,
		0.867458, -0.473214, -0.153576,
		34.022999, 40.631714, 18.962202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327259, 40.210979, 19.250906>,  <33.415775, 40.962963, 19.069704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327259, 40.210979, 19.250906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717937, 40.296005, 19.262775>,  <33.952343, 40.347019, 19.269897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717937, 40.296005, 19.262775>,  <33.327259, 40.210979, 19.250906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717937, 40.296005, 19.262775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045242, -0.339066, 0.939674,
		0.209801, -0.916434, -0.340781,
		0.976697, 0.212562, 0.029675,
		34.010948, 40.359776, 19.271677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620384, 39.573566, 19.460670>,  <33.327259, 40.210979, 19.250906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620384, 39.573566, 19.460670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883373, 39.861588, 19.549444>,  <34.041168, 40.034401, 19.602709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883373, 39.861588, 19.549444>,  <33.620384, 39.573566, 19.460670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883373, 39.861588, 19.549444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131032, -0.399327, 0.907397,
		0.741995, -0.567510, -0.356897,
		0.657476, 0.720049, 0.221936,
		34.080616, 40.077602, 19.616026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216961, 39.299351, 20.034979>,  <33.620384, 39.573566, 19.460670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216961, 39.299351, 20.034979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255928, 39.697231, 20.048115>,  <34.279308, 39.935959, 20.055996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255928, 39.697231, 20.048115>,  <34.216961, 39.299351, 20.034979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255928, 39.697231, 20.048115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156998, -0.047945, 0.986434,
		0.982782, -0.090944, -0.160837,
		0.097422, 0.994701, 0.032842,
		34.285156, 39.995640, 20.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837109, 39.420029, 20.405916>,  <34.216961, 39.299351, 20.034979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837109, 39.420029, 20.405916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627972, 39.760239, 20.428696>,  <34.502487, 39.964363, 20.442364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627972, 39.760239, 20.428696>,  <34.837109, 39.420029, 20.405916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627972, 39.760239, 20.428696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074318, -0.021074, 0.997012,
		0.849181, 0.525516, -0.052190,
		-0.522846, 0.850523, 0.056951,
		34.471119, 40.015396, 20.445782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.922729, 39.995796, 24.697123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652622, 40.289921, 24.720171>,  <37.490559, 40.466396, 24.734001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652622, 40.289921, 24.720171>,  <37.922729, 39.995796, 24.697123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652622, 40.289921, 24.720171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053387, -0.126649, 0.990510,
		0.735633, 0.665788, 0.124779,
		-0.675273, 0.735314, 0.057622,
		37.450039, 40.510513, 24.737457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248192, 40.525223, 25.140503>,  <37.922729, 39.995796, 24.697123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248192, 40.525223, 25.140503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850765, 40.561573, 25.167515>,  <37.612309, 40.583382, 25.183722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850765, 40.561573, 25.167515>,  <38.248192, 40.525223, 25.140503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850765, 40.561573, 25.167515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070810, 0.033354, 0.996932,
		0.088342, 0.995304, -0.039574,
		-0.993570, 0.090873, 0.067531,
		37.552692, 40.588837, 25.187775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237988, 40.942451, 25.651859>,  <38.248192, 40.525223, 25.140503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237988, 40.942451, 25.651859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.849712, 40.854534, 25.612953>,  <37.616749, 40.801785, 25.589609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.849712, 40.854534, 25.612953>,  <38.237988, 40.942451, 25.651859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849712, 40.854534, 25.612953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168391, 0.333111, 0.927729,
		-0.171512, 0.916911, -0.360357,
		-0.970684, -0.219797, -0.097267,
		37.558506, 40.788593, 25.583773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805439, 41.520588, 25.894333>,  <38.237988, 40.942451, 25.651859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805439, 41.520588, 25.894333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614296, 41.171177, 25.931433>,  <37.499611, 40.961529, 25.953693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614296, 41.171177, 25.931433>,  <37.805439, 41.520588, 25.894333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614296, 41.171177, 25.931433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052338, 0.133708, 0.989638,
		-0.876879, 0.468047, -0.109611,
		-0.477853, -0.873530, 0.092749,
		37.470940, 40.909119, 25.959257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314102, 41.745705, 26.423931>,  <37.805439, 41.520588, 25.894333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314102, 41.745705, 26.423931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304214, 41.345932, 26.414703>,  <37.298283, 41.106068, 26.409166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304214, 41.345932, 26.414703>,  <37.314102, 41.745705, 26.423931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304214, 41.345932, 26.414703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286445, -0.015025, 0.957979,
		-0.957778, 0.030292, -0.285909,
		-0.024723, -0.999428, -0.023068,
		37.296799, 41.046104, 26.407784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718952, 41.603424, 26.687567>,  <37.314102, 41.745705, 26.423931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718952, 41.603424, 26.687567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.923851, 41.263489, 26.737175>,  <37.046791, 41.059528, 26.766941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.923851, 41.263489, 26.737175>,  <36.718952, 41.603424, 26.687567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923851, 41.263489, 26.737175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484630, -0.166805, 0.858667,
		-0.709039, -0.499955, -0.497302,
		0.512247, -0.849836, 0.124022,
		37.077526, 41.008537, 26.774382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285423, 41.013416, 26.765045>,  <36.718952, 41.603424, 26.687567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285423, 41.013416, 26.765045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621838, 40.938324, 26.967989>,  <36.823689, 40.893269, 27.089754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621838, 40.938324, 26.967989>,  <36.285423, 41.013416, 26.765045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621838, 40.938324, 26.967989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533356, -0.130909, 0.835700,
		-0.090458, -0.973460, -0.210221,
		0.841040, -0.187718, 0.507359,
		36.874149, 40.882008, 27.120195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032578, 40.462753, 27.248774>,  <36.285423, 41.013416, 26.765045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032578, 40.462753, 27.248774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386791, 40.592907, 27.381409>,  <36.599319, 40.670998, 27.460991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386791, 40.592907, 27.381409>,  <36.032578, 40.462753, 27.248774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386791, 40.592907, 27.381409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298239, -0.149093, 0.942775,
		0.356201, -0.933754, -0.034985,
		0.885536, 0.325384, 0.331589,
		36.652451, 40.690521, 27.480885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282234, 39.998989, 27.791130>,  <36.032578, 40.462753, 27.248774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282234, 39.998989, 27.791130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499325, 40.329788, 27.849810>,  <36.629578, 40.528267, 27.885017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499325, 40.329788, 27.849810>,  <36.282234, 39.998989, 27.791130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499325, 40.329788, 27.849810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181547, -0.055025, 0.981842,
		0.820057, -0.559500, 0.120277,
		0.542722, 0.827002, 0.146699,
		36.662140, 40.577888, 27.893820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802139, 39.908695, 28.350637>,  <36.282234, 39.998989, 27.791130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802139, 39.908695, 28.350637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770500, 40.306953, 28.330898>,  <36.751518, 40.545910, 28.319056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770500, 40.306953, 28.330898>,  <36.802139, 39.908695, 28.350637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770500, 40.306953, 28.330898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342792, 0.019319, 0.939212,
		0.936075, 0.091204, 0.339771,
		-0.079096, 0.995645, -0.049348,
		36.746773, 40.605648, 28.316093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178131, 40.245628, 28.946943>,  <36.802139, 39.908695, 28.350637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178131, 40.245628, 28.946943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934113, 40.547707, 28.851004>,  <36.787701, 40.728954, 28.793440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934113, 40.547707, 28.851004>,  <37.178131, 40.245628, 28.946943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934113, 40.547707, 28.851004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258701, 0.096283, 0.961147,
		0.748947, 0.648391, 0.136633,
		-0.610044, 0.755195, -0.239850,
		36.751099, 40.774265, 28.779049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231396, 40.695580, 29.538366>,  <37.178131, 40.245628, 28.946943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231396, 40.695580, 29.538366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908691, 40.823135, 29.339394>,  <36.715069, 40.899670, 29.220011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908691, 40.823135, 29.339394>,  <37.231396, 40.695580, 29.538366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908691, 40.823135, 29.339394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458531, 0.193073, 0.867451,
		0.372666, 0.927917, -0.009541,
		-0.806765, 0.318894, -0.497431,
		36.666660, 40.918804, 29.190165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078697, 41.370693, 29.788471>,  <37.231396, 40.695580, 29.538366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078697, 41.370693, 29.788471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765339, 41.178165, 29.631184>,  <36.577324, 41.062649, 29.536812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765339, 41.178165, 29.631184>,  <37.078697, 41.370693, 29.788471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765339, 41.178165, 29.631184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454621, 0.012363, 0.890599,
		-0.423800, 0.876459, -0.228503,
		-0.783398, -0.481318, -0.393217,
		36.530319, 41.033772, 29.513218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701103, 41.382423, 30.301174>,  <37.078697, 41.370693, 29.788471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701103, 41.382423, 30.301174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474117, 41.137638, 30.080818>,  <36.337925, 40.990765, 29.948605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474117, 41.137638, 30.080818>,  <36.701103, 41.382423, 30.301174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474117, 41.137638, 30.080818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444738, -0.335261, 0.830547,
		-0.692960, 0.716307, -0.081917,
		-0.567463, -0.611968, -0.550892,
		36.303879, 40.954048, 29.915550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213978, 41.752666, 30.700724>,  <36.701103, 41.382423, 30.301174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213978, 41.752666, 30.700724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573730, 41.923153, 30.739613>,  <37.789581, 42.025444, 30.762945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573730, 41.923153, 30.739613>,  <37.213978, 41.752666, 30.700724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573730, 41.923153, 30.739613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099369, 0.415882, -0.903973,
		-0.425720, 0.803357, 0.416390,
		0.899382, 0.426216, 0.097221,
		37.843544, 42.051018, 30.768778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209621, 42.364162, 30.361980>,  <37.213978, 41.752666, 30.700724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209621, 42.364162, 30.361980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609314, 42.349964, 30.368601>,  <37.849129, 42.341446, 30.372574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609314, 42.349964, 30.368601>,  <37.209621, 42.364162, 30.361980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609314, 42.349964, 30.368601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027485, 0.334464, -0.942008,
		0.027903, 0.941740, 0.335183,
		0.999233, -0.035497, 0.016551,
		37.909084, 42.339314, 30.373566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363701, 43.005112, 30.096945>,  <37.209621, 42.364162, 30.361980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363701, 43.005112, 30.096945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.697395, 42.786930, 30.064608>,  <37.897610, 42.656021, 30.045206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.697395, 42.786930, 30.064608>,  <37.363701, 43.005112, 30.096945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697395, 42.786930, 30.064608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120542, 0.323458, -0.938533,
		0.538077, 0.773209, 0.335590,
		0.834232, -0.545456, -0.080841,
		37.947666, 42.623295, 30.040356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834362, 43.542381, 29.775461>,  <37.363701, 43.005112, 30.096945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834362, 43.542381, 29.775461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971268, 43.176609, 29.689041>,  <38.053410, 42.957146, 29.637190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971268, 43.176609, 29.689041>,  <37.834362, 43.542381, 29.775461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971268, 43.176609, 29.689041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226043, 0.303316, -0.925691,
		0.912009, 0.267993, 0.310514,
		0.342262, -0.914428, -0.216049,
		38.073948, 42.902279, 29.624226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463905, 43.657654, 29.334927>,  <37.834362, 43.542381, 29.775461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463905, 43.657654, 29.334927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374413, 43.277264, 29.249517>,  <38.320717, 43.049030, 29.198273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374413, 43.277264, 29.249517>,  <38.463905, 43.657654, 29.334927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374413, 43.277264, 29.249517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306133, 0.139423, -0.941724,
		0.925325, -0.276058, 0.259932,
		-0.223730, -0.950975, -0.213522,
		38.307293, 42.991970, 29.185461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991264, 43.391735, 28.875381>,  <38.463905, 43.657654, 29.334927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991264, 43.391735, 28.875381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680405, 43.144947, 28.825748>,  <38.493889, 42.996876, 28.795969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680405, 43.144947, 28.825748>,  <38.991264, 43.391735, 28.875381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680405, 43.144947, 28.825748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125482, 0.041291, -0.991236,
		0.616683, -0.785905, 0.045329,
		-0.777146, -0.616967, -0.124081,
		38.447262, 42.959858, 28.788525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232613, 42.991459, 28.347931>,  <38.991264, 43.391735, 28.875381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232613, 42.991459, 28.347931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835506, 42.943588, 28.351954>,  <38.597244, 42.914867, 28.354366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835506, 42.943588, 28.351954>,  <39.232613, 42.991459, 28.347931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835506, 42.943588, 28.351954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030183, 0.167577, -0.985397,
		0.116238, -0.978569, -0.169976,
		-0.992763, -0.119671, 0.010058,
		38.537678, 42.907684, 28.354971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166660, 42.671562, 27.798584>,  <39.232613, 42.991459, 28.347931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166660, 42.671562, 27.798584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792091, 42.799664, 27.855919>,  <38.567348, 42.876522, 27.890320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792091, 42.799664, 27.855919>,  <39.166660, 42.671562, 27.798584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792091, 42.799664, 27.855919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085007, 0.189270, -0.978239,
		-0.340410, -0.928233, -0.150014,
		-0.936427, 0.320250, 0.143335,
		38.511162, 42.895737, 27.898920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822292, 42.410496, 27.278917>,  <39.166660, 42.671562, 27.798584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822292, 42.410496, 27.278917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570663, 42.700569, 27.390900>,  <38.419685, 42.874611, 27.458090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570663, 42.700569, 27.390900>,  <38.822292, 42.410496, 27.278917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570663, 42.700569, 27.390900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126629, 0.259734, -0.957342,
		-0.766960, -0.637692, -0.071564,
		-0.629076, 0.725181, 0.279955,
		38.381939, 42.918125, 27.474886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221363, 42.237869, 26.896076>,  <38.822292, 42.410496, 27.278917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221363, 42.237869, 26.896076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218090, 42.620716, 27.011911>,  <38.216125, 42.850426, 27.081413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218090, 42.620716, 27.011911>,  <38.221363, 42.237869, 26.896076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218090, 42.620716, 27.011911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436299, 0.257159, -0.862272,
		-0.899764, -0.133406, 0.415484,
		-0.008187, 0.957116, 0.289588,
		38.215633, 42.907852, 27.098787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564251, 42.450962, 26.794477>,  <38.221363, 42.237869, 26.896076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564251, 42.450962, 26.794477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808411, 42.766235, 26.763018>,  <37.954906, 42.955399, 26.744141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808411, 42.766235, 26.763018>,  <37.564251, 42.450962, 26.794477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808411, 42.766235, 26.763018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433023, 0.248901, -0.866336,
		-0.663253, 0.562868, 0.493229,
		0.610398, 0.788180, -0.078650,
		37.991531, 43.002689, 26.739422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170841, 42.812630, 26.343863>,  <37.564251, 42.450962, 26.794477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170841, 42.812630, 26.343863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502205, 43.036140, 26.328329>,  <37.701023, 43.170246, 26.319008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502205, 43.036140, 26.328329>,  <37.170841, 42.812630, 26.343863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502205, 43.036140, 26.328329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218841, 0.259058, -0.940743,
		-0.515604, 0.787819, 0.336889,
		0.828409, 0.558776, -0.038836,
		37.750729, 43.203773, 26.316679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957657, 43.456158, 26.015289>,  <37.170841, 42.812630, 26.343863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957657, 43.456158, 26.015289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352543, 43.413986, 25.967461>,  <37.589474, 43.388683, 25.938763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352543, 43.413986, 25.967461>,  <36.957657, 43.456158, 26.015289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352543, 43.413986, 25.967461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079477, 0.324716, -0.942466,
		0.138186, 0.939918, 0.312185,
		0.987212, -0.105424, -0.119573,
		37.648708, 43.382359, 25.931589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051502, 44.000076, 25.633516>,  <36.957657, 43.456158, 26.015289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051502, 44.000076, 25.633516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357384, 43.751183, 25.566525>,  <37.540913, 43.601849, 25.526329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357384, 43.751183, 25.566525>,  <37.051502, 44.000076, 25.633516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357384, 43.751183, 25.566525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030665, 0.224474, -0.973997,
		0.643647, 0.749959, 0.152576,
		0.764708, -0.622232, -0.167480,
		37.586796, 43.564514, 25.516281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750164, 44.643459, 25.747135>,  <37.051502, 44.000076, 25.633516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750164, 44.643459, 25.747135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.567574, 44.998993, 25.763184>,  <36.458019, 45.212315, 25.772814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.567574, 44.998993, 25.763184>,  <36.750164, 44.643459, 25.747135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567574, 44.998993, 25.763184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526853, -0.306361, 0.792823,
		0.716979, 0.340764, 0.608130,
		-0.456473, 0.888833, 0.040122,
		36.430634, 45.265644, 25.775221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805328, 44.794312, 26.446842>,  <36.750164, 44.643459, 25.747135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805328, 44.794312, 26.446842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519741, 45.026417, 26.290100>,  <36.348389, 45.165680, 26.196054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519741, 45.026417, 26.290100>,  <36.805328, 44.794312, 26.446842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519741, 45.026417, 26.290100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598751, -0.215852, 0.771301,
		0.362974, 0.785305, 0.501544,
		-0.713966, 0.580262, -0.391853,
		36.305550, 45.200497, 26.172544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623081, 45.221970, 27.041058>,  <36.805328, 44.794312, 26.446842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623081, 45.221970, 27.041058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323959, 45.242191, 26.776260>,  <36.144485, 45.254322, 26.617382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323959, 45.242191, 26.776260>,  <36.623081, 45.221970, 27.041058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323959, 45.242191, 26.776260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663471, -0.093598, 0.742324,
		-0.024436, 0.994326, 0.103532,
		-0.747802, 0.050551, -0.661994,
		36.099617, 45.257359, 26.577662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170391, 45.745373, 27.360422>,  <36.623081, 45.221970, 27.041058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170391, 45.745373, 27.360422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.975342, 45.485283, 27.127380>,  <35.858311, 45.329227, 26.987556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.975342, 45.485283, 27.127380>,  <36.170391, 45.745373, 27.360422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975342, 45.485283, 27.127380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584626, -0.252417, 0.771037,
		-0.648407, 0.716584, -0.257054,
		-0.487627, -0.650226, -0.582603,
		35.829052, 45.290215, 26.952599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432743, 45.857754, 27.384560>,  <36.170391, 45.745373, 27.360422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432743, 45.857754, 27.384560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.466152, 45.473217, 27.279608>,  <35.486198, 45.242496, 27.216637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.466152, 45.473217, 27.279608>,  <35.432743, 45.857754, 27.384560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466152, 45.473217, 27.279608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654582, -0.251455, 0.712947,
		-0.751364, 0.112205, -0.650279,
		0.083520, -0.961343, -0.262381,
		35.491207, 45.184814, 27.200893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770672, 45.567173, 27.361504>,  <35.432743, 45.857754, 27.384560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770672, 45.567173, 27.361504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.000336, 45.239708, 27.366081>,  <35.138134, 45.043228, 27.368828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.000336, 45.239708, 27.366081>,  <34.770672, 45.567173, 27.361504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000336, 45.239708, 27.366081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491364, -0.333363, 0.804631,
		-0.654906, -0.467610, -0.593665,
		0.574159, -0.818663, 0.011445,
		35.172585, 44.994110, 27.369514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316368, 45.021015, 27.372732>,  <34.770672, 45.567173, 27.361504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316368, 45.021015, 27.372732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.656212, 44.860397, 27.509514>,  <34.860119, 44.764027, 27.591583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.656212, 44.860397, 27.509514>,  <34.316368, 45.021015, 27.372732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656212, 44.860397, 27.509514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450458, -0.215220, 0.866468,
		-0.274332, -0.890192, -0.363732,
		0.849606, -0.401546, 0.341953,
		34.911095, 44.739933, 27.612101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103195, 44.414959, 27.668795>,  <34.316368, 45.021015, 27.372732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103195, 44.414959, 27.668795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451649, 44.505325, 27.843189>,  <34.660721, 44.559544, 27.947826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451649, 44.505325, 27.843189>,  <34.103195, 44.414959, 27.668795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451649, 44.505325, 27.843189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384711, -0.237771, 0.891887,
		0.305158, -0.944683, -0.120217,
		0.871134, 0.225918, 0.435988,
		34.712990, 44.573101, 27.973986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294254, 43.913250, 28.023813>,  <34.103195, 44.414959, 27.668795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294254, 43.913250, 28.023813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505554, 44.214348, 28.180958>,  <34.632332, 44.395004, 28.275244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505554, 44.214348, 28.180958>,  <34.294254, 43.913250, 28.023813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505554, 44.214348, 28.180958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320677, -0.251552, 0.913175,
		0.786208, -0.608361, 0.108505,
		0.528246, 0.752740, 0.392860,
		34.664028, 44.440170, 28.298815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622627, 43.625965, 28.633350>,  <34.294254, 43.913250, 28.023813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622627, 43.625965, 28.633350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.645660, 44.017548, 28.711666>,  <34.659481, 44.252495, 28.758656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.645660, 44.017548, 28.711666>,  <34.622627, 43.625965, 28.633350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645660, 44.017548, 28.711666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333229, -0.166024, 0.928113,
		0.941086, -0.118683, 0.316656,
		0.057578, 0.978954, 0.195791,
		34.662933, 44.311234, 28.770403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086727, 43.749615, 29.272511>,  <34.622627, 43.625965, 28.633350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086727, 43.749615, 29.272511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825119, 44.048759, 29.226976>,  <34.668152, 44.228245, 29.199656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825119, 44.048759, 29.226976>,  <35.086727, 43.749615, 29.272511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825119, 44.048759, 29.226976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276177, -0.095962, 0.956304,
		0.704257, 0.656885, 0.269303,
		-0.654024, 0.747859, -0.113835,
		34.628910, 44.273117, 29.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114010, 43.996788, 29.884254>,  <35.086727, 43.749615, 29.272511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114010, 43.996788, 29.884254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792068, 44.188980, 29.744913>,  <34.598904, 44.304295, 29.661308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792068, 44.188980, 29.744913>,  <35.114010, 43.996788, 29.884254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792068, 44.188980, 29.744913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272683, 0.221953, 0.936152,
		0.527121, 0.848455, -0.047621,
		-0.804852, 0.480480, -0.348355,
		34.550613, 44.333122, 29.640406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.353806, 46.139450, 22.660448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980827, 46.127598, 22.516407>,  <37.757042, 46.120487, 22.429983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980827, 46.127598, 22.516407>,  <38.353806, 46.139450, 22.660448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980827, 46.127598, 22.516407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353940, 0.275284, 0.893837,
		0.072646, 0.960906, -0.267174,
		-0.932442, -0.029630, -0.360101,
		37.701096, 46.118710, 22.408377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133358, 46.733524, 22.839687>,  <38.353806, 46.139450, 22.660448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133358, 46.733524, 22.839687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828487, 46.476746, 22.806253>,  <37.645565, 46.322678, 22.786194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828487, 46.476746, 22.806253>,  <38.133358, 46.733524, 22.839687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828487, 46.476746, 22.806253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321302, 0.263033, 0.909714,
		-0.562003, 0.720221, -0.406737,
		-0.762180, -0.641947, -0.083583,
		37.599834, 46.284161, 22.781179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798431, 46.968594, 23.296871>,  <38.133358, 46.733524, 22.839687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798431, 46.968594, 23.296871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593483, 46.628933, 23.245623>,  <37.470516, 46.425137, 23.214872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593483, 46.628933, 23.245623>,  <37.798431, 46.968594, 23.296871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593483, 46.628933, 23.245623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461151, 0.146199, 0.875195,
		-0.724445, 0.507505, -0.466496,
		-0.512367, -0.849155, -0.128123,
		37.439774, 46.374187, 23.207186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159557, 47.114117, 23.519030>,  <37.798431, 46.968594, 23.296871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159557, 47.114117, 23.519030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132435, 46.715050, 23.521942>,  <37.116161, 46.475609, 23.523689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132435, 46.715050, 23.521942>,  <37.159557, 47.114117, 23.519030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132435, 46.715050, 23.521942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518019, 0.041442, 0.854365,
		-0.852678, 0.054159, -0.519623,
		-0.067806, -0.997672, 0.007281,
		37.112095, 46.415749, 23.524126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492039, 46.857246, 23.893803>,  <37.159557, 47.114117, 23.519030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492039, 46.857246, 23.893803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719414, 46.528984, 23.917112>,  <36.855839, 46.332027, 23.931099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719414, 46.528984, 23.917112>,  <36.492039, 46.857246, 23.893803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719414, 46.528984, 23.917112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402090, -0.215318, 0.889922,
		-0.717774, -0.529299, -0.452374,
		0.568440, -0.820658, 0.058276,
		36.889946, 46.282787, 23.934595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036953, 46.403687, 24.189426>,  <36.492039, 46.857246, 23.893803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036953, 46.403687, 24.189426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395573, 46.240261, 24.257875>,  <36.610744, 46.142208, 24.298944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395573, 46.240261, 24.257875>,  <36.036953, 46.403687, 24.189426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395573, 46.240261, 24.257875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324314, -0.342321, 0.881837,
		-0.301707, -0.846104, -0.439409,
		0.896545, -0.408563, 0.171123,
		36.664536, 46.117695, 24.309214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986862, 45.638290, 24.209665>,  <36.036953, 46.403687, 24.189426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986862, 45.638290, 24.209665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307785, 45.757881, 24.416323>,  <36.500340, 45.829636, 24.540318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307785, 45.757881, 24.416323>,  <35.986862, 45.638290, 24.209665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307785, 45.757881, 24.416323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332159, -0.495533, 0.802569,
		0.495961, -0.815514, -0.298262,
		0.802305, 0.298973, 0.516645,
		36.548477, 45.847572, 24.571316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147865, 45.102234, 24.610462>,  <35.986862, 45.638290, 24.209665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147865, 45.102234, 24.610462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360161, 45.392227, 24.786057>,  <36.487537, 45.566223, 24.891413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360161, 45.392227, 24.786057>,  <36.147865, 45.102234, 24.610462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360161, 45.392227, 24.786057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016276, -0.509145, 0.860527,
		0.847378, -0.463862, -0.258424,
		0.530741, 0.724985, 0.438988,
		36.519382, 45.609722, 24.917753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647423, 44.789349, 25.053658>,  <36.147865, 45.102234, 24.610462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647423, 44.789349, 25.053658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625694, 45.147617, 25.230207>,  <36.612659, 45.362579, 25.336138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625694, 45.147617, 25.230207>,  <36.647423, 44.789349, 25.053658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625694, 45.147617, 25.230207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183038, -0.443471, 0.877400,
		0.981604, -0.033130, 0.188031,
		-0.054318, 0.895676, 0.441377,
		36.609398, 45.416321, 25.362621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311977, 44.444199, 25.125212>,  <36.647423, 44.789349, 25.053658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311977, 44.444199, 25.125212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494637, 44.088669, 25.109890>,  <37.604233, 43.875351, 25.100697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494637, 44.088669, 25.109890>,  <37.311977, 44.444199, 25.125212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494637, 44.088669, 25.109890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062249, 0.011028, -0.998000,
		0.887466, 0.458120, -0.050292,
		0.456649, -0.888822, -0.038305,
		37.631630, 43.822021, 25.098398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920429, 44.539635, 24.574024>,  <37.311977, 44.444199, 25.125212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920429, 44.539635, 24.574024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857868, 44.146076, 24.608650>,  <37.820332, 43.909943, 24.629427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857868, 44.146076, 24.608650>,  <37.920429, 44.539635, 24.574024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857868, 44.146076, 24.608650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046497, -0.094883, -0.994402,
		0.986598, -0.151505, 0.060588,
		-0.156406, -0.983892, 0.086567,
		37.810947, 43.850910, 24.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453739, 44.142014, 24.242290>,  <37.920429, 44.539635, 24.574024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453739, 44.142014, 24.242290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158855, 43.871769, 24.245783>,  <37.981926, 43.709621, 24.247879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158855, 43.871769, 24.245783>,  <38.453739, 44.142014, 24.242290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158855, 43.871769, 24.245783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047932, -0.065185, -0.996721,
		0.673962, -0.734374, 0.080438,
		-0.737209, -0.675608, 0.008732,
		37.937691, 43.669086, 24.248402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622864, 43.527496, 23.785141>,  <38.453739, 44.142014, 24.242290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622864, 43.527496, 23.785141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225288, 43.496040, 23.815878>,  <37.986744, 43.477165, 23.834320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225288, 43.496040, 23.815878>,  <38.622864, 43.527496, 23.785141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225288, 43.496040, 23.815878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068318, -0.105869, -0.992031,
		0.086149, -0.991266, 0.099855,
		-0.993937, -0.078641, 0.076841,
		37.927109, 43.472450, 23.838930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498695, 43.025536, 23.379730>,  <38.622864, 43.527496, 23.785141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498695, 43.025536, 23.379730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142559, 43.206192, 23.402786>,  <37.928879, 43.314587, 23.416620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142559, 43.206192, 23.402786>,  <38.498695, 43.025536, 23.379730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142559, 43.206192, 23.402786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177517, -0.227757, -0.957400,
		-0.419273, -0.862639, 0.282954,
		-0.890336, 0.451641, 0.057640,
		37.875458, 43.341682, 23.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136330, 42.567513, 23.121264>,  <38.498695, 43.025536, 23.379730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136330, 42.567513, 23.121264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943729, 42.917290, 23.097553>,  <37.828171, 43.127155, 23.083326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943729, 42.917290, 23.097553>,  <38.136330, 42.567513, 23.121264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943729, 42.917290, 23.097553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285661, -0.220517, -0.932615,
		-0.828588, -0.432118, 0.355972,
		-0.481498, 0.874440, -0.059278,
		37.799278, 43.179623, 23.079769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582436, 42.460938, 22.849163>,  <38.136330, 42.567513, 23.121264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582436, 42.460938, 22.849163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570904, 42.853611, 22.773825>,  <37.563984, 43.089214, 22.728622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570904, 42.853611, 22.773825>,  <37.582436, 42.460938, 22.849163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570904, 42.853611, 22.773825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202791, -0.190249, -0.960563,
		-0.978798, 0.010507, 0.204560,
		-0.028825, 0.981680, -0.188346,
		37.562256, 43.148113, 22.717321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163330, 42.482388, 22.245831>,  <37.582436, 42.460938, 22.849163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163330, 42.482388, 22.245831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358902, 42.831314, 22.247118>,  <37.476246, 43.040668, 22.247890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358902, 42.831314, 22.247118>,  <37.163330, 42.482388, 22.245831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358902, 42.831314, 22.247118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071911, 0.043984, -0.996441,
		-0.869353, 0.486960, 0.084234,
		0.488931, 0.872316, 0.003219,
		37.505581, 43.093010, 22.248083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729797, 43.041363, 21.740267>,  <37.163330, 42.482388, 22.245831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729797, 43.041363, 21.740267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119179, 43.122868, 21.781965>,  <37.352810, 43.171768, 21.806984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119179, 43.122868, 21.781965>,  <36.729797, 43.041363, 21.740267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119179, 43.122868, 21.781965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124441, -0.088928, -0.988234,
		-0.192091, 0.974974, -0.111923,
		0.973455, 0.203758, 0.104245,
		37.411217, 43.183994, 21.813238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786282, 43.519367, 21.272547>,  <36.729797, 43.041363, 21.740267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786282, 43.519367, 21.272547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144066, 43.356911, 21.347376>,  <37.358734, 43.259438, 21.392273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144066, 43.356911, 21.347376>,  <36.786282, 43.519367, 21.272547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144066, 43.356911, 21.347376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209609, 0.011282, -0.977720,
		0.394983, 0.913740, 0.095222,
		0.894456, -0.406142, 0.187072,
		37.412403, 43.235069, 21.403498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138504, 43.793343, 20.680532>,  <36.786282, 43.519367, 21.272547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138504, 43.793343, 20.680532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388134, 43.519291, 20.830799>,  <37.537914, 43.354858, 20.920959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388134, 43.519291, 20.830799>,  <37.138504, 43.793343, 20.680532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388134, 43.519291, 20.830799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258854, -0.272353, -0.926725,
		0.737240, 0.675591, 0.007379,
		0.624077, -0.685129, 0.375668,
		37.575356, 43.313751, 20.943501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846394, 43.815880, 20.349293>,  <37.138504, 43.793343, 20.680532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846394, 43.815880, 20.349293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783062, 43.448174, 20.493454>,  <37.745064, 43.227551, 20.579950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783062, 43.448174, 20.493454>,  <37.846394, 43.815880, 20.349293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783062, 43.448174, 20.493454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249652, -0.390418, -0.886142,
		0.955304, -0.050328, 0.291311,
		-0.158331, -0.919261, 0.360403,
		37.735561, 43.172394, 20.601576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435276, 43.538895, 20.126993>,  <37.846394, 43.815880, 20.349293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435276, 43.538895, 20.126993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193848, 43.229301, 20.203562>,  <38.048988, 43.043545, 20.249502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193848, 43.229301, 20.203562>,  <38.435276, 43.538895, 20.126993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193848, 43.229301, 20.203562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172583, -0.361220, -0.916371,
		0.778405, -0.520061, 0.351599,
		-0.603573, -0.773988, 0.191422,
		38.012775, 42.997105, 20.260988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827396, 42.989582, 19.978159>,  <38.435276, 43.538895, 20.126993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827396, 42.989582, 19.978159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447376, 42.866760, 19.955814>,  <38.219364, 42.793068, 19.942408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447376, 42.866760, 19.955814>,  <38.827396, 42.989582, 19.978159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447376, 42.866760, 19.955814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160418, -0.326918, -0.931338,
		0.267708, -0.893780, 0.359846,
		-0.950052, -0.307053, -0.055859,
		38.162361, 42.774643, 19.939056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.434889, 42.496311, 18.826664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.740847, 42.726185, 18.943062>,  <31.924421, 42.864109, 19.012901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.740847, 42.726185, 18.943062>,  <31.434889, 42.496311, 18.826664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740847, 42.726185, 18.943062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143515, -0.288356, 0.946707,
		0.627966, -0.765892, -0.138086,
		0.764893, 0.574682, 0.290995,
		31.970314, 42.898590, 19.030361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667717, 42.103634, 19.370041>,  <31.434889, 42.496311, 18.826664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667717, 42.103634, 19.370041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.859177, 42.446468, 19.446243>,  <31.974052, 42.652168, 19.491964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.859177, 42.446468, 19.446243>,  <31.667717, 42.103634, 19.370041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859177, 42.446468, 19.446243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133731, -0.143279, 0.980605,
		0.867762, -0.494842, 0.046039,
		0.478648, 0.857089, 0.190508,
		32.002769, 42.703594, 19.503395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128784, 41.916546, 19.900614>,  <31.667717, 42.103634, 19.370041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128784, 41.916546, 19.900614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.072540, 42.312359, 19.913658>,  <32.038795, 42.549847, 19.921484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.072540, 42.312359, 19.913658>,  <32.128784, 41.916546, 19.900614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072540, 42.312359, 19.913658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121242, -0.049900, 0.991368,
		0.982614, 0.135438, 0.126988,
		-0.140606, 0.989528, 0.032611,
		32.030357, 42.609219, 19.923441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666847, 42.269989, 20.284286>,  <32.128784, 41.916546, 19.900614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666847, 42.269989, 20.284286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350185, 42.513443, 20.305632>,  <32.160187, 42.659515, 20.318438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350185, 42.513443, 20.305632>,  <32.666847, 42.269989, 20.284286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350185, 42.513443, 20.305632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065387, -0.002436, 0.997857,
		0.607461, 0.793447, -0.037869,
		-0.791654, 0.608635, 0.053361,
		32.112690, 42.696033, 20.321640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727592, 42.643406, 21.008364>,  <32.666847, 42.269989, 20.284286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727592, 42.643406, 21.008364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366825, 42.757225, 20.878387>,  <32.150364, 42.825516, 20.800402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366825, 42.757225, 20.878387>,  <32.727592, 42.643406, 21.008364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366825, 42.757225, 20.878387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268380, 0.220249, 0.937797,
		0.338414, 0.933019, -0.122279,
		-0.901914, 0.284546, -0.324939,
		32.096252, 42.842590, 20.780907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539486, 43.349213, 21.266605>,  <32.727592, 42.643406, 21.008364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539486, 43.349213, 21.266605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.196098, 43.165733, 21.174843>,  <31.990065, 43.055645, 21.119785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.196098, 43.165733, 21.174843>,  <32.539486, 43.349213, 21.266605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196098, 43.165733, 21.174843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321369, 0.132522, 0.937635,
		-0.399687, 0.878657, -0.261177,
		-0.858471, -0.458695, -0.229405,
		31.938557, 43.028126, 21.106022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151108, 43.671516, 21.737730>,  <32.539486, 43.349213, 21.266605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151108, 43.671516, 21.737730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.957945, 43.339970, 21.624748>,  <31.842049, 43.141041, 21.556959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.957945, 43.339970, 21.624748>,  <32.151108, 43.671516, 21.737730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957945, 43.339970, 21.624748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336691, -0.122011, 0.933677,
		-0.808358, 0.545976, -0.220153,
		-0.482904, -0.828869, -0.282453,
		31.813074, 43.091309, 21.540012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617189, 43.760227, 22.172119>,  <32.151108, 43.671516, 21.737730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617189, 43.760227, 22.172119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.607338, 43.376328, 22.060205>,  <31.601427, 43.145988, 21.993057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.607338, 43.376328, 22.060205>,  <31.617189, 43.760227, 22.172119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607338, 43.376328, 22.060205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149670, -0.273174, 0.950250,
		-0.988429, 0.065278, -0.136918,
		-0.024628, -0.959747, -0.279784,
		31.599949, 43.088402, 21.976271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061834, 43.444042, 22.516565>,  <31.617189, 43.760227, 22.172119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061834, 43.444042, 22.516565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.315899, 43.148685, 22.425926>,  <31.468338, 42.971470, 22.371542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.315899, 43.148685, 22.425926>,  <31.061834, 43.444042, 22.516565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315899, 43.148685, 22.425926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139447, -0.398184, 0.906645,
		-0.759686, -0.544269, -0.355878,
		0.635163, -0.738391, -0.226598,
		31.506449, 42.927170, 22.357946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808052, 42.869411, 22.868513>,  <31.061834, 43.444042, 22.516565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808052, 42.869411, 22.868513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194250, 42.799248, 22.791513>,  <31.425968, 42.757149, 22.745314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194250, 42.799248, 22.791513>,  <30.808052, 42.869411, 22.868513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194250, 42.799248, 22.791513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115465, -0.374218, 0.920124,
		-0.233433, -0.910600, -0.341052,
		0.965493, -0.175408, -0.192497,
		31.483898, 42.746624, 22.733765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899891, 42.308022, 23.234047>,  <30.808052, 42.869411, 22.868513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899891, 42.308022, 23.234047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.270395, 42.445789, 23.172834>,  <31.492699, 42.528450, 23.136106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.270395, 42.445789, 23.172834>,  <30.899891, 42.308022, 23.234047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270395, 42.445789, 23.172834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265074, -0.306707, 0.914148,
		0.267912, -0.887304, -0.375387,
		0.926261, 0.344417, -0.153030,
		31.548273, 42.549114, 23.126925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347036, 41.772221, 23.348223>,  <30.899891, 42.308022, 23.234047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347036, 41.772221, 23.348223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601295, 42.077049, 23.397530>,  <31.753851, 42.259949, 23.427113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601295, 42.077049, 23.397530>,  <31.347036, 41.772221, 23.348223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601295, 42.077049, 23.397530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090101, -0.231820, 0.968577,
		0.766705, -0.604566, -0.216019,
		0.635646, 0.762076, 0.123265,
		31.791988, 42.305672, 23.434509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985975, 41.567665, 23.626947>,  <31.347036, 41.772221, 23.348223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985975, 41.567665, 23.626947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934683, 41.943935, 23.752602>,  <31.903908, 42.169697, 23.827993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934683, 41.943935, 23.752602>,  <31.985975, 41.567665, 23.626947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934683, 41.943935, 23.752602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258214, -0.274156, 0.926371,
		0.957540, 0.199903, -0.207742,
		-0.128231, 0.940679, 0.314133,
		31.896214, 42.226139, 23.846842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364826, 41.592896, 24.307293>,  <31.985975, 41.567665, 23.626947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364826, 41.592896, 24.307293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174374, 41.943363, 24.337309>,  <32.060101, 42.153645, 24.355318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174374, 41.943363, 24.337309>,  <32.364826, 41.592896, 24.307293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174374, 41.943363, 24.337309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111091, -0.144581, 0.983237,
		0.872328, 0.459816, 0.166174,
		-0.476134, 0.876165, 0.075041,
		32.031532, 42.206211, 24.359821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096325, 41.488823, 24.133333>,  <32.364826, 41.592896, 24.307293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096325, 41.488823, 24.133333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.285061, 41.139359, 24.180803>,  <33.398300, 40.929680, 24.209286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.285061, 41.139359, 24.180803>,  <33.096325, 41.488823, 24.133333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285061, 41.139359, 24.180803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062156, -0.101306, -0.992912,
		0.879492, 0.475869, 0.006503,
		0.471837, -0.873662, 0.118676,
		33.426613, 40.877258, 24.216406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808475, 41.436184, 23.705048>,  <33.096325, 41.488823, 24.133333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808475, 41.436184, 23.705048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.701443, 41.052719, 23.743767>,  <33.637222, 40.822639, 23.766998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.701443, 41.052719, 23.743767>,  <33.808475, 41.436184, 23.705048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701443, 41.052719, 23.743767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192690, -0.151675, -0.969466,
		0.944070, -0.240764, 0.225310,
		-0.267586, -0.958659, 0.096799,
		33.621166, 40.765121, 23.772806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356445, 41.018784, 23.314346>,  <33.808475, 41.436184, 23.705048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356445, 41.018784, 23.314346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021477, 40.801044, 23.333994>,  <33.820496, 40.670403, 23.345783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021477, 40.801044, 23.333994>,  <34.356445, 41.018784, 23.314346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021477, 40.801044, 23.333994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129346, -0.284693, -0.949852,
		0.531034, -0.789072, 0.308817,
		-0.837420, -0.544348, 0.049119,
		33.770252, 40.637741, 23.348730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509602, 40.429581, 23.046196>,  <34.356445, 41.018784, 23.314346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509602, 40.429581, 23.046196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116150, 40.357529, 23.043760>,  <33.880081, 40.314297, 23.042299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116150, 40.357529, 23.043760>,  <34.509602, 40.429581, 23.046196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116150, 40.357529, 23.043760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075629, -0.381850, -0.921125,
		0.163593, -0.906502, 0.389220,
		-0.983624, -0.180126, -0.006089,
		33.821064, 40.303490, 23.041933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421001, 39.761871, 23.015800>,  <34.509602, 40.429581, 23.046196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421001, 39.761871, 23.015800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085789, 39.917545, 22.862835>,  <33.884663, 40.010948, 22.771055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085789, 39.917545, 22.862835>,  <34.421001, 39.761871, 23.015800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085789, 39.917545, 22.862835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175028, -0.472086, -0.864002,
		-0.516790, -0.790993, 0.327503,
		-0.838029, 0.389185, -0.382415,
		33.834381, 40.034302, 22.748110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102749, 39.234612, 22.575363>,  <34.421001, 39.761871, 23.015800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102749, 39.234612, 22.575363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950478, 39.586349, 22.460932>,  <33.859116, 39.797390, 22.392273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950478, 39.586349, 22.460932>,  <34.102749, 39.234612, 22.575363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950478, 39.586349, 22.460932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187037, -0.229754, -0.955107,
		-0.905594, -0.417096, -0.077007,
		-0.380678, 0.879343, -0.286076,
		33.836273, 39.850151, 22.375109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689510, 39.115753, 21.925938>,  <34.102749, 39.234612, 22.575363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689510, 39.115753, 21.925938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.760036, 39.509426, 21.919067>,  <33.802353, 39.745628, 21.914946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.760036, 39.509426, 21.919067>,  <33.689510, 39.115753, 21.925938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760036, 39.509426, 21.919067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009643, -0.015724, -0.999830,
		-0.984286, 0.176455, 0.006718,
		0.176319, 0.984183, -0.017178,
		33.812931, 39.804680, 21.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384335, 39.355991, 21.266588>,  <33.689510, 39.115753, 21.925938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384335, 39.355991, 21.266588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634354, 39.642315, 21.391123>,  <33.784367, 39.814110, 21.465843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634354, 39.642315, 21.391123>,  <33.384335, 39.355991, 21.266588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634354, 39.642315, 21.391123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265447, 0.180163, -0.947143,
		-0.734064, 0.674655, -0.077398,
		0.625050, 0.715809, 0.311336,
		33.821869, 39.857056, 21.484524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142033, 40.055969, 20.988689>,  <33.384335, 39.355991, 21.266588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142033, 40.055969, 20.988689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536247, 40.035542, 21.053320>,  <33.772778, 40.023285, 21.092098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536247, 40.035542, 21.053320>,  <33.142033, 40.055969, 20.988689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536247, 40.035542, 21.053320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169085, 0.233444, -0.957556,
		0.011184, 0.971028, 0.238703,
		0.985538, -0.051071, 0.161575,
		33.831909, 40.020222, 21.101793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316555, 40.526470, 20.526806>,  <33.142033, 40.055969, 20.988689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316555, 40.526470, 20.526806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672104, 40.383244, 20.641132>,  <33.885433, 40.297310, 20.709728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672104, 40.383244, 20.641132>,  <33.316555, 40.526470, 20.526806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672104, 40.383244, 20.641132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422070, 0.397326, -0.814855,
		0.178207, 0.844940, 0.504301,
		0.888875, -0.358063, 0.285818,
		33.938766, 40.275826, 20.726877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761131, 41.118603, 20.623613>,  <33.316555, 40.526470, 20.526806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761131, 41.118603, 20.623613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948532, 40.775444, 20.539215>,  <34.060970, 40.569550, 20.488577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948532, 40.775444, 20.539215>,  <33.761131, 41.118603, 20.623613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948532, 40.775444, 20.539215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328281, 0.390775, -0.859957,
		0.820207, 0.333624, 0.464710,
		0.468499, -0.857899, -0.210995,
		34.089081, 40.518074, 20.475916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399269, 41.249844, 20.210323>,  <33.761131, 41.118603, 20.623613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399269, 41.249844, 20.210323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369457, 40.854324, 20.158602>,  <34.351570, 40.617012, 20.127569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369457, 40.854324, 20.158602>,  <34.399269, 41.249844, 20.210323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369457, 40.854324, 20.158602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146578, 0.117393, -0.982208,
		0.986387, -0.092157, 0.136187,
		-0.074530, -0.988800, -0.129304,
		34.347099, 40.557686, 20.119810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973011, 41.059746, 19.787415>,  <34.399269, 41.249844, 20.210323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973011, 41.059746, 19.787415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693054, 40.780296, 19.727987>,  <34.525082, 40.612625, 19.692331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693054, 40.780296, 19.727987>,  <34.973011, 41.059746, 19.787415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693054, 40.780296, 19.727987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086170, 0.123892, -0.988547,
		0.709032, -0.704678, -0.026510,
		-0.699892, -0.698627, -0.148566,
		34.483086, 40.570709, 19.683418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302315, 40.525471, 19.336239>,  <34.973011, 41.059746, 19.787415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302315, 40.525471, 19.336239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902847, 40.513123, 19.319696>,  <34.663166, 40.505714, 19.309771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902847, 40.513123, 19.319696>,  <35.302315, 40.525471, 19.336239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902847, 40.513123, 19.319696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038788, 0.079579, -0.996074,
		0.034034, -0.996351, -0.078276,
		-0.998668, -0.030864, -0.041355,
		34.603249, 40.503860, 19.307289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743572, 39.985268, 19.238121>,  <35.302315, 40.525471, 19.336239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743572, 39.985268, 19.238121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132099, 39.968468, 19.144495>,  <36.365215, 39.958389, 19.088320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132099, 39.968468, 19.144495>,  <35.743572, 39.985268, 19.238121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132099, 39.968468, 19.144495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229151, -0.097818, 0.968463,
		-0.063569, -0.994318, -0.085388,
		0.971313, -0.041998, -0.234067,
		36.423492, 39.955868, 19.074274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049606, 39.402077, 19.607101>,  <35.743572, 39.985268, 19.238121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049606, 39.402077, 19.607101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378826, 39.619816, 19.542267>,  <36.576359, 39.750458, 19.503366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378826, 39.619816, 19.542267>,  <36.049606, 39.402077, 19.607101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378826, 39.619816, 19.542267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287699, -0.153513, 0.945338,
		0.489706, -0.824696, -0.282956,
		0.823053, 0.544344, -0.162088,
		36.625744, 39.783119, 19.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603268, 39.108490, 19.952412>,  <36.049606, 39.402077, 19.607101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603268, 39.108490, 19.952412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.731007, 39.482750, 19.892317>,  <36.807648, 39.707306, 19.856260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.731007, 39.482750, 19.892317>,  <36.603268, 39.108490, 19.952412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731007, 39.482750, 19.892317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325962, 0.040407, 0.944519,
		0.889813, -0.350599, -0.292084,
		0.319345, 0.935653, -0.150237,
		36.826809, 39.763447, 19.847246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199696, 39.136787, 20.252256>,  <36.603268, 39.108490, 19.952412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199696, 39.136787, 20.252256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105347, 39.524208, 20.220558>,  <37.048737, 39.756660, 20.201540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105347, 39.524208, 20.220558>,  <37.199696, 39.136787, 20.252256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105347, 39.524208, 20.220558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273829, 0.144485, 0.950864,
		0.932406, 0.202586, -0.299297,
		-0.235875, 0.968547, -0.079245,
		37.034584, 39.814774, 20.196785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587219, 39.368721, 20.718855>,  <37.199696, 39.136787, 20.252256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587219, 39.368721, 20.718855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368122, 39.701263, 20.681286>,  <37.236664, 39.900787, 20.658745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368122, 39.701263, 20.681286>,  <37.587219, 39.368721, 20.718855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368122, 39.701263, 20.681286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279750, 0.287791, 0.915924,
		0.788488, 0.475420, -0.390208,
		-0.547747, 0.831356, -0.093921,
		37.203796, 39.950668, 20.653109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078602, 39.919407, 20.896309>,  <37.587219, 39.368721, 20.718855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078602, 39.919407, 20.896309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695137, 40.023090, 20.943260>,  <37.465057, 40.085300, 20.971432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695137, 40.023090, 20.943260>,  <38.078602, 39.919407, 20.896309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695137, 40.023090, 20.943260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193494, 0.291382, 0.936833,
		0.208637, 0.920818, -0.329493,
		-0.958661, 0.259213, 0.117380,
		37.407539, 40.100853, 20.978474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986763, 40.691231, 21.115961>,  <38.078602, 39.919407, 20.896309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986763, 40.691231, 21.115961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632992, 40.555759, 21.244387>,  <37.420727, 40.474476, 21.321442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632992, 40.555759, 21.244387>,  <37.986763, 40.691231, 21.115961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632992, 40.555759, 21.244387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163583, 0.419342, 0.892969,
		-0.437061, 0.842290, -0.315477,
		-0.884431, -0.338675, 0.321062,
		37.367664, 40.454159, 21.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482601, 41.288467, 21.394104>,  <37.986763, 40.691231, 21.115961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482601, 41.288467, 21.394104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361706, 40.949890, 21.569460>,  <37.289169, 40.746742, 21.674673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361706, 40.949890, 21.569460>,  <37.482601, 41.288467, 21.394104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361706, 40.949890, 21.569460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090665, 0.432288, 0.897166,
		-0.948910, 0.310907, -0.053912,
		-0.302241, -0.846442, 0.438390,
		37.271034, 40.695957, 21.700977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007694, 41.425076, 21.935757>,  <37.482601, 41.288467, 21.394104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007694, 41.425076, 21.935757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173038, 41.075489, 22.037985>,  <37.272243, 40.865738, 22.099321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173038, 41.075489, 22.037985>,  <37.007694, 41.425076, 21.935757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173038, 41.075489, 22.037985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145483, 0.213678, 0.966011,
		-0.898871, -0.436491, -0.038821,
		0.413360, -0.873966, 0.255571,
		37.297047, 40.813297, 22.114656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615734, 41.376564, 22.561172>,  <37.007694, 41.425076, 21.935757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615734, 41.376564, 22.561172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891754, 41.088886, 22.593637>,  <37.057365, 40.916279, 22.613117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891754, 41.088886, 22.593637>,  <36.615734, 41.376564, 22.561172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891754, 41.088886, 22.593637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083022, 0.190057, 0.978256,
		-0.718987, -0.668305, 0.190858,
		0.690047, -0.719199, 0.081165,
		37.098770, 40.873127, 22.617987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415997, 40.896759, 23.067884>,  <36.615734, 41.376564, 22.561172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415997, 40.896759, 23.067884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798050, 40.779476, 23.051107>,  <37.027283, 40.709106, 23.041042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798050, 40.779476, 23.051107>,  <36.415997, 40.896759, 23.067884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798050, 40.779476, 23.051107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029971, -0.045198, 0.998528,
		-0.294670, -0.954980, -0.034382,
		0.955129, -0.293206, -0.041940,
		37.084587, 40.691513, 23.038525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424667, 40.356300, 23.485067>,  <36.415997, 40.896759, 23.067884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424667, 40.356300, 23.485067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804413, 40.481731, 23.492886>,  <37.032261, 40.556992, 23.497576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804413, 40.481731, 23.492886>,  <36.424667, 40.356300, 23.485067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804413, 40.481731, 23.492886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074443, -0.284942, 0.955650,
		0.305239, -0.905802, -0.293857,
		0.949362, 0.313577, 0.019545,
		37.089222, 40.575806, 23.498749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817490, 39.830730, 23.949863>,  <36.424667, 40.356300, 23.485067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817490, 39.830730, 23.949863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025215, 40.172062, 23.931335>,  <37.149849, 40.376862, 23.920219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025215, 40.172062, 23.931335>,  <36.817490, 39.830730, 23.949863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025215, 40.172062, 23.931335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067546, 0.013045, 0.997631,
		0.851912, -0.521209, -0.050864,
		0.519310, 0.853330, -0.046319,
		37.181007, 40.428062, 23.917440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483700, 39.799061, 24.191797>,  <36.817490, 39.830730, 23.949863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483700, 39.799061, 24.191797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393677, 40.184685, 24.248272>,  <37.339661, 40.416061, 24.282156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393677, 40.184685, 24.248272>,  <37.483700, 39.799061, 24.191797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393677, 40.184685, 24.248272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152691, -0.108216, 0.982331,
		0.962306, 0.242642, -0.122849,
		-0.225060, 0.964061, 0.141187,
		37.326160, 40.473904, 24.290628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.695816, 41.965088, 19.751774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.365303, 42.170578, 19.659391>,  <38.166996, 42.293873, 19.603962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.365303, 42.170578, 19.659391>,  <38.695816, 41.965088, 19.751774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365303, 42.170578, 19.659391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064662, -0.320813, -0.944932,
		-0.559534, -0.795714, 0.231863,
		-0.826281, 0.513729, -0.230958,
		38.117420, 42.324696, 19.590103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418137, 41.447487, 19.239019>,  <38.695816, 41.965088, 19.751774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418137, 41.447487, 19.239019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214825, 41.789524, 19.198088>,  <38.092838, 41.994747, 19.173529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214825, 41.789524, 19.198088>,  <38.418137, 41.447487, 19.239019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214825, 41.789524, 19.198088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051069, -0.148539, -0.987587,
		-0.859677, -0.496744, 0.119168,
		-0.508279, 0.855092, -0.102328,
		38.062340, 42.046051, 19.167389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821510, 41.304535, 18.922358>,  <38.418137, 41.447487, 19.239019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821510, 41.304535, 18.922358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882820, 41.694935, 18.860483>,  <37.919605, 41.929176, 18.823359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882820, 41.694935, 18.860483>,  <37.821510, 41.304535, 18.922358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882820, 41.694935, 18.860483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203062, -0.122088, -0.971524,
		-0.967094, 0.180325, 0.179475,
		0.153279, 0.976000, -0.154688,
		37.928802, 41.987736, 18.814077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416309, 41.420040, 18.329906>,  <37.821510, 41.304535, 18.922358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416309, 41.420040, 18.329906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681091, 41.719540, 18.343691>,  <37.839962, 41.899239, 18.351961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681091, 41.719540, 18.343691>,  <37.416309, 41.420040, 18.329906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681091, 41.719540, 18.343691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006983, 0.052134, -0.998616,
		-0.749510, 0.660799, 0.039739,
		0.661956, 0.748750, 0.034460,
		37.879677, 41.944164, 18.354029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148544, 41.892063, 17.862848>,  <37.416309, 41.420040, 18.329906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148544, 41.892063, 17.862848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534378, 41.980633, 17.920197>,  <37.765877, 42.033775, 17.954605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534378, 41.980633, 17.920197>,  <37.148544, 41.892063, 17.862848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534378, 41.980633, 17.920197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134246, 0.055807, -0.989375,
		-0.227075, 0.973579, 0.024104,
		0.964580, 0.221427, 0.143371,
		37.823753, 42.047062, 17.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226723, 42.623779, 17.622496>,  <37.148544, 41.892063, 17.862848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226723, 42.623779, 17.622496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564785, 42.410091, 17.615305>,  <37.767624, 42.281879, 17.610991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564785, 42.410091, 17.615305>,  <37.226723, 42.623779, 17.622496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564785, 42.410091, 17.615305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151191, 0.271182, -0.950580,
		0.512692, 0.800669, 0.309960,
		0.845155, -0.534218, -0.017979,
		37.818333, 42.249825, 17.609911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592831, 43.054527, 17.234339>,  <37.226723, 42.623779, 17.622496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592831, 43.054527, 17.234339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801193, 42.713192, 17.225693>,  <37.926212, 42.508392, 17.220505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801193, 42.713192, 17.225693>,  <37.592831, 43.054527, 17.234339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801193, 42.713192, 17.225693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235519, 0.168016, -0.957236,
		0.820478, 0.493543, 0.288498,
		0.520910, -0.853338, -0.021615,
		37.957466, 42.457191, 17.219208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375305, 43.150696, 17.047407>,  <37.592831, 43.054527, 17.234339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375305, 43.150696, 17.047407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246853, 42.782890, 16.956753>,  <38.169781, 42.562206, 16.902359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246853, 42.782890, 16.956753>,  <38.375305, 43.150696, 17.047407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246853, 42.782890, 16.956753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266980, 0.141706, -0.953227,
		0.908624, -0.366618, 0.199986,
		-0.321131, -0.919517, -0.226637,
		38.150513, 42.507034, 16.888762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841564, 42.897793, 16.570375>,  <38.375305, 43.150696, 17.047407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841564, 42.897793, 16.570375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548096, 42.632374, 16.511812>,  <38.372017, 42.473122, 16.476675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548096, 42.632374, 16.511812>,  <38.841564, 42.897793, 16.570375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548096, 42.632374, 16.511812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200143, -0.005119, -0.979753,
		0.649364, -0.748116, 0.136560,
		-0.733668, -0.663548, -0.146407,
		38.327995, 42.433308, 16.467890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120556, 42.424347, 16.056044>,  <38.841564, 42.897793, 16.570375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120556, 42.424347, 16.056044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727894, 42.363983, 16.009443>,  <38.492294, 42.327763, 15.981483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727894, 42.363983, 16.009443>,  <39.120556, 42.424347, 16.056044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727894, 42.363983, 16.009443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123898, -0.040536, -0.991467,
		0.144903, -0.987715, 0.058491,
		-0.981658, -0.150914, -0.116502,
		38.433395, 42.318710, 15.974492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045555, 41.868931, 15.491196>,  <39.120556, 42.424347, 16.056044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045555, 41.868931, 15.491196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687038, 42.046112, 15.482698>,  <38.471928, 42.152420, 15.477600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687038, 42.046112, 15.482698>,  <39.045555, 41.868931, 15.491196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687038, 42.046112, 15.482698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054048, 0.061567, -0.996638,
		-0.440153, -0.894430, -0.079122,
		-0.896295, 0.442950, -0.021243,
		38.418152, 42.178997, 15.476325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709236, 41.464756, 15.028624>,  <39.045555, 41.868931, 15.491196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709236, 41.464756, 15.028624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490482, 41.798164, 15.060005>,  <38.359230, 41.998211, 15.078834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490482, 41.798164, 15.060005>,  <38.709236, 41.464756, 15.028624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490482, 41.798164, 15.060005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179420, -0.025155, -0.983451,
		-0.817755, -0.551912, 0.163308,
		-0.546886, 0.833523, 0.078453,
		38.326416, 42.048222, 15.083541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932388, 41.406670, 14.874170>,  <38.709236, 41.464756, 15.028624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932388, 41.406670, 14.874170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087914, 41.757637, 14.761768>,  <38.181229, 41.968216, 14.694327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087914, 41.757637, 14.761768>,  <37.932388, 41.406670, 14.874170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087914, 41.757637, 14.761768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327412, -0.153505, -0.932329,
		-0.861178, 0.454504, 0.227593,
		0.388811, 0.877418, -0.281005,
		38.204556, 42.020863, 14.677467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406021, 41.909168, 14.560829>,  <37.932388, 41.406670, 14.874170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406021, 41.909168, 14.560829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765110, 41.954407, 14.390506>,  <37.980564, 41.981548, 14.288312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765110, 41.954407, 14.390506>,  <37.406021, 41.909168, 14.560829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765110, 41.954407, 14.390506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371684, -0.324500, -0.869799,
		-0.236545, 0.939100, -0.249274,
		0.897718, 0.113096, -0.425808,
		38.034424, 41.988335, 14.262763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313267, 41.393658, 13.977090>,  <37.406021, 41.909168, 14.560829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313267, 41.393658, 13.977090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.982437, 41.196880, 13.868327>,  <36.783939, 41.078812, 13.803069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.982437, 41.196880, 13.868327>,  <37.313267, 41.393658, 13.977090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982437, 41.196880, 13.868327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057911, -0.406592, 0.911773,
		-0.559098, 0.769853, 0.307793,
		-0.827077, -0.491946, -0.271908,
		36.734314, 41.049297, 13.786755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895378, 41.309528, 14.606889>,  <37.313267, 41.393658, 13.977090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895378, 41.309528, 14.606889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739815, 41.035580, 14.360407>,  <36.646477, 40.871212, 14.212518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739815, 41.035580, 14.360407>,  <36.895378, 41.309528, 14.606889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739815, 41.035580, 14.360407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194885, -0.592564, 0.781593,
		-0.900428, 0.424057, 0.096982,
		-0.388908, -0.684868, -0.616204,
		36.623142, 40.830120, 14.175546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078812, 41.242405, 14.758897>,  <36.895378, 41.309528, 14.606889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078812, 41.242405, 14.758897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265495, 40.919739, 14.613861>,  <36.377506, 40.726139, 14.526840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265495, 40.919739, 14.613861>,  <36.078812, 41.242405, 14.758897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265495, 40.919739, 14.613861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356353, -0.546747, 0.757681,
		-0.809438, -0.224410, -0.542632,
		0.466714, -0.806664, -0.362589,
		36.405510, 40.677738, 14.505084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623199, 40.654919, 14.848895>,  <36.078812, 41.242405, 14.758897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623199, 40.654919, 14.848895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985355, 40.495323, 14.790835>,  <36.202648, 40.399567, 14.756000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985355, 40.495323, 14.790835>,  <35.623199, 40.654919, 14.848895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985355, 40.495323, 14.790835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041075, -0.422581, 0.905394,
		-0.422581, -0.813776, -0.398991,
		-0.905394, 0.398991, 0.145149,
		36.256973, 40.375626, 14.747291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644058, 40.237110, 15.445787>,  <35.623199, 40.654919, 14.848895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644058, 40.237110, 15.445787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020954, 40.214951, 15.313659>,  <36.247093, 40.201653, 15.234382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020954, 40.214951, 15.313659>,  <35.644058, 40.237110, 15.445787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020954, 40.214951, 15.313659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291866, -0.347978, 0.890913,
		-0.164302, -0.935864, -0.311710,
		0.942242, -0.055401, -0.330320,
		36.303627, 40.198330, 15.214562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833378, 39.552387, 15.600037>,  <35.644058, 40.237110, 15.445787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833378, 39.552387, 15.600037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182594, 39.743355, 15.560316>,  <36.392124, 39.857937, 15.536484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182594, 39.743355, 15.560316>,  <35.833378, 39.552387, 15.600037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182594, 39.743355, 15.560316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254800, -0.272993, 0.927659,
		0.415776, -0.835190, -0.359983,
		0.873044, 0.477422, -0.099302,
		36.444508, 39.886581, 15.530525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367256, 39.086788, 15.716059>,  <35.833378, 39.552387, 15.600037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367256, 39.086788, 15.716059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531342, 39.441387, 15.801701>,  <36.629791, 39.654148, 15.853086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531342, 39.441387, 15.801701>,  <36.367256, 39.086788, 15.716059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531342, 39.441387, 15.801701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319224, -0.359488, 0.876849,
		0.854297, -0.291345, -0.430459,
		0.410211, 0.886502, 0.214105,
		36.654404, 39.707336, 15.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070732, 38.942341, 15.986008>,  <36.367256, 39.086788, 15.716059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070732, 38.942341, 15.986008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975979, 39.305859, 16.123404>,  <36.919128, 39.523968, 16.205841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975979, 39.305859, 16.123404>,  <37.070732, 38.942341, 15.986008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975979, 39.305859, 16.123404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458593, -0.207094, 0.864179,
		0.856493, 0.362229, -0.367709,
		-0.236880, 0.908792, 0.343490,
		36.904915, 39.578495, 16.226450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391975, 39.131535, 16.593590>,  <37.070732, 38.942341, 15.986008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391975, 39.131535, 16.593590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141518, 39.437252, 16.655296>,  <36.991245, 39.620682, 16.692320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141518, 39.437252, 16.655296>,  <37.391975, 39.131535, 16.593590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141518, 39.437252, 16.655296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213974, -0.021819, 0.976596,
		0.749776, 0.644494, -0.149878,
		-0.626140, 0.764298, 0.154265,
		36.953674, 39.666542, 16.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726444, 39.670971, 17.099325>,  <37.391975, 39.131535, 16.593590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726444, 39.670971, 17.099325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329769, 39.722431, 17.099640>,  <37.091763, 39.753307, 17.099829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329769, 39.722431, 17.099640>,  <37.726444, 39.670971, 17.099325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329769, 39.722431, 17.099640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012361, 0.089190, 0.995938,
		0.128061, 0.987671, -0.090039,
		-0.991689, 0.128654, 0.000787,
		37.032261, 39.761028, 17.099876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583393, 40.259148, 17.551497>,  <37.726444, 39.670971, 17.099325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583393, 40.259148, 17.551497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250439, 40.040596, 17.514400>,  <37.050667, 39.909466, 17.492144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250439, 40.040596, 17.514400>,  <37.583393, 40.259148, 17.551497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250439, 40.040596, 17.514400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157289, 0.072453, 0.984891,
		-0.531408, 0.834396, -0.146249,
		-0.832385, -0.546383, -0.092739,
		37.000725, 39.876682, 17.486578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077381, 40.659698, 17.920279>,  <37.583393, 40.259148, 17.551497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077381, 40.659698, 17.920279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915737, 40.294746, 17.894192>,  <36.818752, 40.075775, 17.878540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915737, 40.294746, 17.894192>,  <37.077381, 40.659698, 17.920279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915737, 40.294746, 17.894192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263156, 0.047680, 0.963575,
		-0.876041, 0.406548, -0.259367,
		-0.404106, -0.912385, -0.065215,
		36.794506, 40.021030, 17.874628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466324, 40.741058, 18.286161>,  <37.077381, 40.659698, 17.920279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466324, 40.741058, 18.286161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508186, 40.343426, 18.274549>,  <36.533306, 40.104847, 18.267582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508186, 40.343426, 18.274549>,  <36.466324, 40.741058, 18.286161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508186, 40.343426, 18.274549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274126, -0.056895, 0.960009,
		-0.955982, -0.092517, -0.278459,
		0.104660, -0.994084, -0.029029,
		36.539585, 40.045200, 18.265841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802727, 40.390751, 18.619003>,  <36.466324, 40.741058, 18.286161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802727, 40.390751, 18.619003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117405, 40.143982, 18.609869>,  <36.306210, 39.995922, 18.604389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117405, 40.143982, 18.609869>,  <35.802727, 40.390751, 18.619003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117405, 40.143982, 18.609869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019882, -0.011652, 0.999734,
		-0.617025, -0.786937, 0.003099,
		0.786692, -0.616923, -0.022836,
		36.353413, 39.958904, 18.603018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188221, 40.029167, 18.753693>,  <35.802727, 40.390751, 18.619003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188221, 40.029167, 18.753693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834736, 40.209015, 18.805696>,  <34.622646, 40.316925, 18.836899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834736, 40.209015, 18.805696>,  <35.188221, 40.029167, 18.753693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834736, 40.209015, 18.805696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015185, 0.305170, -0.952177,
		-0.467790, -0.839473, -0.276509,
		-0.883709, 0.449618, 0.130009,
		34.569622, 40.343899, 18.844700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765404, 39.869038, 18.191244>,  <35.188221, 40.029167, 18.753693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765404, 39.869038, 18.191244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619267, 40.211369, 18.337713>,  <34.531586, 40.416767, 18.425594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619267, 40.211369, 18.337713>,  <34.765404, 39.869038, 18.191244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619267, 40.211369, 18.337713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223109, 0.301395, -0.927029,
		-0.903742, -0.420377, 0.080832,
		-0.365339, 0.855830, 0.366173,
		34.509666, 40.468117, 18.447565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174370, 39.875641, 17.764820>,  <34.765404, 39.869038, 18.191244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174370, 39.875641, 17.764820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232140, 40.253365, 17.883089>,  <34.266800, 40.480000, 17.954050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232140, 40.253365, 17.883089>,  <34.174370, 39.875641, 17.764820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232140, 40.253365, 17.883089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511599, 0.327027, -0.794556,
		-0.846999, -0.036512, 0.530339,
		0.144424, 0.944309, 0.295671,
		34.275467, 40.536659, 17.971790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626751, 40.276196, 17.539816>,  <34.174370, 39.875641, 17.764820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626751, 40.276196, 17.539816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907703, 40.558754, 17.574846>,  <34.076275, 40.728287, 17.595863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907703, 40.558754, 17.574846>,  <33.626751, 40.276196, 17.539816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907703, 40.558754, 17.574846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349789, 0.449690, -0.821843,
		-0.619925, 0.546615, 0.562942,
		0.702382, 0.706393, 0.087574,
		34.118420, 40.770672, 17.601118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313946, 40.903145, 17.327364>,  <33.626751, 40.276196, 17.539816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313946, 40.903145, 17.327364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696701, 41.016819, 17.303329>,  <33.926353, 41.085022, 17.288910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696701, 41.016819, 17.303329>,  <33.313946, 40.903145, 17.327364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696701, 41.016819, 17.303329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178637, 0.412650, -0.893201,
		-0.229040, 0.865424, 0.445625,
		0.956885, 0.284184, -0.060084,
		33.983768, 41.102074, 17.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374191, 41.650707, 17.248409>,  <33.313946, 40.903145, 17.327364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374191, 41.650707, 17.248409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733784, 41.530876, 17.120602>,  <33.949539, 41.458977, 17.043917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733784, 41.530876, 17.120602>,  <33.374191, 41.650707, 17.248409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733784, 41.530876, 17.120602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174175, 0.424829, -0.888360,
		0.401872, 0.854269, 0.329733,
		0.898979, -0.299576, -0.319519,
		34.003479, 41.441002, 17.024746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731293, 42.223907, 16.860363>,  <33.374191, 41.650707, 17.248409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731293, 42.223907, 16.860363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888569, 41.880375, 16.729029>,  <33.982937, 41.674255, 16.650229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888569, 41.880375, 16.729029>,  <33.731293, 42.223907, 16.860363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888569, 41.880375, 16.729029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144851, 0.410497, -0.900284,
		0.907974, 0.306427, 0.285808,
		0.393195, -0.858833, -0.328334,
		34.006527, 41.622726, 16.630529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801281, 42.942619, 16.937349>,  <33.731293, 42.223907, 16.860363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801281, 42.942619, 16.937349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591209, 43.260948, 16.816784>,  <33.465164, 43.451946, 16.744444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591209, 43.260948, 16.816784>,  <33.801281, 42.942619, 16.937349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591209, 43.260948, 16.816784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722315, -0.229600, 0.652339,
		0.449941, 0.560312, 0.695416,
		-0.525181, 0.795823, -0.301415,
		33.433655, 43.499695, 16.726360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749290, 43.412102, 17.501251>,  <33.801281, 42.942619, 16.937349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749290, 43.412102, 17.501251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436024, 43.500404, 17.268730>,  <33.248062, 43.553387, 17.129217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436024, 43.500404, 17.268730>,  <33.749290, 43.412102, 17.501251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436024, 43.500404, 17.268730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611225, -0.101559, 0.784914,
		0.114235, 0.970028, 0.214467,
		-0.783169, 0.220752, -0.581304,
		33.201073, 43.566631, 17.094339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398235, 43.956631, 17.817156>,  <33.749290, 43.412102, 17.501251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398235, 43.956631, 17.817156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133392, 43.784508, 17.571733>,  <32.974487, 43.681236, 17.424480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133392, 43.784508, 17.571733>,  <33.398235, 43.956631, 17.817156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133392, 43.784508, 17.571733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608280, -0.169636, 0.775383,
		-0.437731, 0.886602, -0.149427,
		-0.662108, -0.430303, -0.613557,
		32.934761, 43.655418, 17.387667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725788, 44.297661, 17.810768>,  <33.398235, 43.956631, 17.817156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725788, 44.297661, 17.810768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689281, 43.905201, 17.742630>,  <32.667377, 43.669724, 17.701748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689281, 43.905201, 17.742630>,  <32.725788, 44.297661, 17.810768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689281, 43.905201, 17.742630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557707, -0.091358, 0.824995,
		-0.825006, 0.170295, -0.538856,
		-0.091264, -0.981149, -0.170346,
		32.661903, 43.610855, 17.691526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042084, 44.284184, 18.123386>,  <32.725788, 44.297661, 17.810768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042084, 44.284184, 18.123386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210960, 43.922836, 18.093212>,  <32.312286, 43.706028, 18.075108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210960, 43.922836, 18.093212>,  <32.042084, 44.284184, 18.123386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210960, 43.922836, 18.093212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415088, -0.266625, 0.869835,
		-0.805891, -0.335922, -0.487542,
		0.422187, -0.903365, -0.075434,
		32.337616, 43.651829, 18.070581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579090, 43.910023, 18.255806>,  <32.042084, 44.284184, 18.123386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579090, 43.910023, 18.255806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875502, 43.645180, 18.300505>,  <32.053349, 43.486275, 18.327324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875502, 43.645180, 18.300505>,  <31.579090, 43.910023, 18.255806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875502, 43.645180, 18.300505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374248, -0.269078, 0.887432,
		-0.557509, -0.699433, -0.447188,
		0.741027, -0.662111, 0.111748,
		32.097809, 43.446548, 18.334028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259794, 43.329815, 18.638994>,  <31.579090, 43.910023, 18.255806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259794, 43.329815, 18.638994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651724, 43.256832, 18.671625>,  <31.886881, 43.213043, 18.691204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651724, 43.256832, 18.671625>,  <31.259794, 43.329815, 18.638994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651724, 43.256832, 18.671625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116524, -0.189872, 0.974870,
		-0.162373, -0.964708, -0.207301,
		0.979825, -0.182448, 0.081581,
		31.945671, 43.202095, 18.696098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.377850, 44.830193, 15.985259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411232, 44.437092, 15.919259>,  <37.431263, 44.201229, 15.879659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411232, 44.437092, 15.919259>,  <37.377850, 44.830193, 15.985259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411232, 44.437092, 15.919259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047914, -0.161429, 0.985720,
		-0.995359, -0.090171, 0.033615,
		0.083457, -0.982756, -0.165001,
		37.436268, 44.142265, 15.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778954, 44.314552, 16.148815>,  <37.377850, 44.830193, 15.985259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778954, 44.314552, 16.148815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.149994, 44.183784, 16.221130>,  <37.372616, 44.105324, 16.264519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.149994, 44.183784, 16.221130>,  <36.778954, 44.314552, 16.148815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149994, 44.183784, 16.221130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130784, 0.169129, 0.976878,
		-0.349936, -0.929795, 0.114129,
		0.927599, -0.326919, 0.180786,
		37.428272, 44.085709, 16.275366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673798, 43.872475, 16.825094>,  <36.778954, 44.314552, 16.148815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673798, 43.872475, 16.825094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057800, 43.976357, 16.783243>,  <37.288200, 44.038685, 16.758133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057800, 43.976357, 16.783243>,  <36.673798, 43.872475, 16.825094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057800, 43.976357, 16.783243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004020, 0.360863, 0.932610,
		0.279957, -0.895730, 0.345386,
		0.960004, 0.259702, -0.104627,
		37.345802, 44.054268, 16.751856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049538, 43.629417, 17.427990>,  <36.673798, 43.872475, 16.825094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049538, 43.629417, 17.427990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.294147, 43.917625, 17.297216>,  <37.440914, 44.090549, 17.218752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.294147, 43.917625, 17.297216>,  <37.049538, 43.629417, 17.427990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294147, 43.917625, 17.297216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060164, 0.369660, 0.927217,
		0.788931, -0.586690, 0.182708,
		0.611529, 0.720518, -0.326934,
		37.477608, 44.133781, 17.199137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452366, 43.746361, 18.011238>,  <37.049538, 43.629417, 17.427990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452366, 43.746361, 18.011238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544415, 44.059521, 17.780027>,  <37.599644, 44.247417, 17.641300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544415, 44.059521, 17.780027>,  <37.452366, 43.746361, 18.011238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544415, 44.059521, 17.780027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072283, 0.578576, 0.812419,
		0.970474, -0.228735, 0.076552,
		0.230120, 0.782898, -0.578027,
		37.613449, 44.294392, 17.606619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030487, 44.114311, 18.355455>,  <37.452366, 43.746361, 18.011238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030487, 44.114311, 18.355455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830830, 44.372498, 18.124207>,  <37.711033, 44.527409, 17.985456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830830, 44.372498, 18.124207>,  <38.030487, 44.114311, 18.355455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830830, 44.372498, 18.124207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103520, 0.706820, 0.699778,
		0.860311, 0.289446, -0.419626,
		-0.499148, 0.645467, -0.578122,
		37.681084, 44.566139, 17.950769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492840, 44.727345, 18.309509>,  <38.030487, 44.114311, 18.355455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492840, 44.727345, 18.309509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112091, 44.820210, 18.229471>,  <37.883640, 44.875927, 18.181448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112091, 44.820210, 18.229471>,  <38.492840, 44.727345, 18.309509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112091, 44.820210, 18.229471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009450, 0.674781, 0.737958,
		0.306342, 0.700553, -0.644500,
		-0.951875, 0.232158, -0.200093,
		37.826530, 44.889858, 18.169443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514874, 45.510960, 18.169302>,  <38.492840, 44.727345, 18.309509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514874, 45.510960, 18.169302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.142437, 45.397560, 18.261133>,  <37.918976, 45.329521, 18.316231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.142437, 45.397560, 18.261133>,  <38.514874, 45.510960, 18.169302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142437, 45.397560, 18.261133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045854, 0.533384, 0.844630,
		-0.361903, 0.796951, -0.483627,
		-0.931087, -0.283498, 0.229577,
		37.863110, 45.312511, 18.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184196, 46.100227, 18.377104>,  <38.514874, 45.510960, 18.169302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184196, 46.100227, 18.377104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937229, 45.811928, 18.503164>,  <37.789047, 45.638950, 18.578800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937229, 45.811928, 18.503164>,  <38.184196, 46.100227, 18.377104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937229, 45.811928, 18.503164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055551, 0.439581, 0.896483,
		-0.784670, 0.535999, -0.311444,
		-0.617419, -0.720745, 0.315151,
		37.752003, 45.595703, 18.597710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667912, 46.524632, 18.655790>,  <38.184196, 46.100227, 18.377104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667912, 46.524632, 18.655790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.655396, 46.158966, 18.817444>,  <37.647884, 45.939568, 18.914436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.655396, 46.158966, 18.817444>,  <37.667912, 46.524632, 18.655790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655396, 46.158966, 18.817444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208147, 0.401429, 0.891925,
		-0.977597, -0.056210, -0.202841,
		-0.031291, -0.914164, 0.404136,
		37.646008, 45.884716, 18.938684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090149, 46.511497, 19.027702>,  <37.667912, 46.524632, 18.655790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090149, 46.511497, 19.027702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324608, 46.232216, 19.192116>,  <37.465282, 46.064648, 19.290764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324608, 46.232216, 19.192116>,  <37.090149, 46.511497, 19.027702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324608, 46.232216, 19.192116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291939, 0.291232, 0.911019,
		-0.755783, -0.653983, -0.033130,
		0.586142, -0.698205, 0.411031,
		37.500450, 46.022755, 19.315426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721275, 46.357605, 19.652634>,  <37.090149, 46.511497, 19.027702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721275, 46.357605, 19.652634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077969, 46.193851, 19.729801>,  <37.291985, 46.095600, 19.776102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077969, 46.193851, 19.729801>,  <36.721275, 46.357605, 19.652634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077969, 46.193851, 19.729801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108732, 0.219989, 0.969424,
		-0.439310, -0.885441, 0.151657,
		0.891731, -0.409388, 0.192920,
		37.345490, 46.071033, 19.787678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990902, 45.870182, 19.621687>,  <36.721275, 46.357605, 19.652634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990902, 45.870182, 19.621687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.591469, 45.856289, 19.637857>,  <35.351810, 45.847954, 19.647560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.591469, 45.856289, 19.637857>,  <35.990902, 45.870182, 19.621687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591469, 45.856289, 19.637857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049046, 0.301963, -0.952057,
		0.020862, -0.952687, -0.303238,
		-0.998578, -0.034734, 0.040426,
		35.291897, 45.845867, 19.649984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724342, 45.567383, 19.013645>,  <35.990902, 45.870182, 19.621687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724342, 45.567383, 19.013645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396114, 45.756008, 19.142822>,  <35.199177, 45.869183, 19.220329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396114, 45.756008, 19.142822>,  <35.724342, 45.567383, 19.013645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396114, 45.756008, 19.142822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197601, 0.296126, -0.934486,
		-0.536300, -0.830625, -0.149811,
		-0.820570, 0.471562, 0.322945,
		35.149944, 45.897476, 19.239706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253029, 45.361046, 18.523136>,  <35.724342, 45.567383, 19.013645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253029, 45.361046, 18.523136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.103966, 45.693134, 18.688963>,  <35.014526, 45.892387, 18.788460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.103966, 45.693134, 18.688963>,  <35.253029, 45.361046, 18.523136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103966, 45.693134, 18.688963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295766, 0.317183, -0.901064,
		-0.879573, -0.458404, 0.127349,
		-0.372658, 0.830218, 0.414566,
		34.992168, 45.942200, 18.813334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677311, 45.460915, 18.156378>,  <35.253029, 45.361046, 18.523136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677311, 45.460915, 18.156378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761082, 45.815567, 18.321312>,  <34.811344, 46.028358, 18.420273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761082, 45.815567, 18.321312>,  <34.677311, 45.460915, 18.156378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761082, 45.815567, 18.321312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374731, 0.462267, -0.803670,
		-0.903171, 0.013794, 0.429060,
		0.209426, 0.886633, 0.412337,
		34.823910, 46.081558, 18.445013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082253, 45.918011, 18.169519>,  <34.677311, 45.460915, 18.156378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082253, 45.918011, 18.169519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.370399, 46.192650, 18.208836>,  <34.543285, 46.357433, 18.232426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.370399, 46.192650, 18.208836>,  <34.082253, 45.918011, 18.169519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370399, 46.192650, 18.208836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222234, 0.362725, -0.905010,
		-0.657028, 0.630094, 0.413879,
		0.720366, 0.686595, 0.098292,
		34.586510, 46.398628, 18.238323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781197, 46.514217, 17.981169>,  <34.082253, 45.918011, 18.169519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781197, 46.514217, 17.981169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.175819, 46.570404, 17.947781>,  <34.412594, 46.604118, 17.927748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.175819, 46.570404, 17.947781>,  <33.781197, 46.514217, 17.981169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175819, 46.570404, 17.947781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126464, 0.332952, -0.934425,
		-0.103468, 0.932422, 0.346242,
		0.986560, 0.140470, -0.083468,
		34.471786, 46.612545, 17.922741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916504, 47.205692, 17.679262>,  <33.781197, 46.514217, 17.981169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916504, 47.205692, 17.679262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255383, 46.999401, 17.628225>,  <34.458710, 46.875626, 17.597603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255383, 46.999401, 17.628225>,  <33.916504, 47.205692, 17.679262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255383, 46.999401, 17.628225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036403, 0.295948, -0.954510,
		0.530029, 0.804014, 0.269500,
		0.847197, -0.515729, -0.127592,
		34.509541, 46.844681, 17.589947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295624, 47.602009, 17.204893>,  <33.916504, 47.205692, 17.679262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295624, 47.602009, 17.204893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.445431, 47.232430, 17.173771>,  <34.535313, 47.010681, 17.155098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.445431, 47.232430, 17.173771>,  <34.295624, 47.602009, 17.204893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445431, 47.232430, 17.173771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134338, 0.137094, -0.981406,
		0.917438, 0.357099, 0.175465,
		0.374515, -0.923951, -0.077803,
		34.557785, 46.955246, 17.150431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973141, 47.679119, 16.819229>,  <34.295624, 47.602009, 17.204893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973141, 47.679119, 16.819229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858643, 47.297810, 16.780602>,  <34.789944, 47.069023, 16.757425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858643, 47.297810, 16.780602>,  <34.973141, 47.679119, 16.819229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858643, 47.297810, 16.780602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081405, 0.076225, -0.993762,
		0.954692, -0.292320, 0.055783,
		-0.286245, -0.953278, -0.096568,
		34.772770, 47.011826, 16.751631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489090, 47.367504, 16.441746>,  <34.973141, 47.679119, 16.819229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489090, 47.367504, 16.441746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154579, 47.153233, 16.394939>,  <34.953873, 47.024670, 16.366856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154579, 47.153233, 16.394939>,  <35.489090, 47.367504, 16.441746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154579, 47.153233, 16.394939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156010, -0.027868, -0.987362,
		0.525651, -0.843960, 0.106877,
		-0.836273, -0.535682, -0.117017,
		34.903698, 46.992527, 16.359835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665844, 47.045494, 15.919606>,  <35.489090, 47.367504, 16.441746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665844, 47.045494, 15.919606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.282104, 46.933659, 15.934957>,  <35.051861, 46.866558, 15.944166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.282104, 46.933659, 15.934957>,  <35.665844, 47.045494, 15.919606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282104, 46.933659, 15.934957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032704, -0.245208, -0.968919,
		0.280307, -0.928280, 0.244385,
		-0.959353, -0.279587, 0.038375,
		34.994297, 46.849781, 15.946469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561729, 46.514271, 15.412746>,  <35.665844, 47.045494, 15.919606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561729, 46.514271, 15.412746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.185497, 46.643402, 15.454861>,  <34.959759, 46.720879, 15.480129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.185497, 46.643402, 15.454861>,  <35.561729, 46.514271, 15.412746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185497, 46.643402, 15.454861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123218, -0.035567, -0.991742,
		-0.316414, -0.945790, 0.073232,
		-0.940585, 0.322825, 0.105285,
		34.903320, 46.740250, 15.486446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240498, 46.245983, 14.784856>,  <35.561729, 46.514271, 15.412746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240498, 46.245983, 14.784856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.980423, 46.520069, 14.916155>,  <34.824379, 46.684521, 14.994934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.980423, 46.520069, 14.916155>,  <35.240498, 46.245983, 14.784856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980423, 46.520069, 14.916155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346756, 0.116795, -0.930655,
		-0.676034, -0.718918, 0.161664,
		-0.650183, 0.685212, 0.328246,
		34.785366, 46.725632, 15.014628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925213, 45.831867, 14.181801>,  <35.240498, 46.245983, 14.784856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925213, 45.831867, 14.181801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.691032, 45.528290, 14.067785>,  <34.550522, 45.346142, 13.999376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.691032, 45.528290, 14.067785>,  <34.925213, 45.831867, 14.181801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691032, 45.528290, 14.067785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088358, -0.289764, 0.953011,
		-0.805877, 0.583129, 0.102584,
		-0.585453, -0.758945, -0.285038,
		34.515396, 45.300606, 13.982274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289917, 45.810863, 14.691402>,  <34.925213, 45.831867, 14.181801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289917, 45.810863, 14.691402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.295212, 45.457432, 14.504162>,  <34.298389, 45.245373, 14.391817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.295212, 45.457432, 14.504162>,  <34.289917, 45.810863, 14.691402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295212, 45.457432, 14.504162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237858, -0.457486, 0.856814,
		-0.971210, 0.100000, -0.216221,
		0.013237, -0.883576, -0.468101,
		34.299183, 45.192360, 14.363731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638073, 45.568142, 14.880971>,  <34.289917, 45.810863, 14.691402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638073, 45.568142, 14.880971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854870, 45.257290, 14.753027>,  <33.984947, 45.070778, 14.676260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854870, 45.257290, 14.753027>,  <33.638073, 45.568142, 14.880971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854870, 45.257290, 14.753027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368699, -0.561916, 0.740481,
		-0.755186, -0.283402, -0.591082,
		0.541992, -0.777132, -0.319861,
		34.017467, 45.024151, 14.657069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109352, 44.944099, 14.975001>,  <33.638073, 45.568142, 14.880971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109352, 44.944099, 14.975001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480717, 44.796509, 14.957521>,  <33.703537, 44.707954, 14.947034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480717, 44.796509, 14.957521>,  <33.109352, 44.944099, 14.975001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480717, 44.796509, 14.957521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271888, -0.754821, 0.596927,
		-0.253235, -0.542313, -0.801105,
		0.928412, -0.368973, -0.043699,
		33.759239, 44.685818, 14.944412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122746, 44.246861, 14.726730>,  <33.109352, 44.944099, 14.975001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122746, 44.246861, 14.726730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.436516, 44.321724, 14.963256>,  <33.624779, 44.366642, 15.105171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.436516, 44.321724, 14.963256>,  <33.122746, 44.246861, 14.726730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436516, 44.321724, 14.963256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292667, -0.728873, 0.618942,
		0.546832, -0.658571, -0.516971,
		0.784424, 0.187157, 0.591313,
		33.671844, 44.377872, 15.140650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051983, 43.711559, 15.179403>,  <33.122746, 44.246861, 14.726730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051983, 43.711559, 15.179403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336636, 43.907307, 15.381035>,  <33.507427, 44.024754, 15.502013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336636, 43.907307, 15.381035>,  <33.051983, 43.711559, 15.179403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336636, 43.907307, 15.381035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213691, -0.532729, 0.818862,
		0.669263, -0.690447, -0.274535,
		0.711634, 0.489369, 0.504078,
		33.550125, 44.054119, 15.532258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401649, 43.186302, 15.602487>,  <33.051983, 43.711559, 15.179403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401649, 43.186302, 15.602487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.515404, 43.526993, 15.778530>,  <33.583656, 43.731407, 15.884156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.515404, 43.526993, 15.778530>,  <33.401649, 43.186302, 15.602487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515404, 43.526993, 15.778530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082194, -0.435712, 0.896325,
		0.955181, -0.291073, -0.053902,
		0.284382, 0.851723, 0.440109,
		33.600719, 43.782509, 15.910563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878979, 42.956142, 16.125418>,  <33.401649, 43.186302, 15.602487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878979, 42.956142, 16.125418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.746284, 43.319878, 16.225857>,  <33.666668, 43.538120, 16.286121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.746284, 43.319878, 16.225857>,  <33.878979, 42.956142, 16.125418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746284, 43.319878, 16.225857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426139, -0.381911, 0.820091,
		0.841641, 0.165047, 0.514199,
		-0.331732, 0.909342, 0.251099,
		33.646767, 43.592682, 16.301186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401676, 42.505634, 16.347311>,  <33.878979, 42.956142, 16.125418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401676, 42.505634, 16.347311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.311031, 42.127792, 16.252338>,  <34.256645, 41.901089, 16.195354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.311031, 42.127792, 16.252338>,  <34.401676, 42.505634, 16.347311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311031, 42.127792, 16.252338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144382, 0.273660, -0.950928,
		0.963224, -0.181213, -0.198399,
		-0.226615, -0.944601, -0.237432,
		34.243046, 41.844414, 16.181108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968975, 42.218655, 15.919246>,  <34.401676, 42.505634, 16.347311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968975, 42.218655, 15.919246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633297, 42.011932, 15.851517>,  <34.431892, 41.887897, 15.810879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633297, 42.011932, 15.851517>,  <34.968975, 42.218655, 15.919246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633297, 42.011932, 15.851517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068402, 0.208573, -0.975612,
		0.539517, -0.830307, -0.139682,
		-0.839192, -0.516805, -0.169324,
		34.381538, 41.856892, 15.800719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171864, 41.768696, 15.394916>,  <34.968975, 42.218655, 15.919246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171864, 41.768696, 15.394916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774662, 41.743298, 15.355099>,  <34.536339, 41.728058, 15.331209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774662, 41.743298, 15.355099>,  <35.171864, 41.768696, 15.394916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774662, 41.743298, 15.355099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098706, 0.016165, -0.994985,
		0.064787, -0.997851, -0.009784,
		-0.993006, -0.063496, -0.099542,
		34.476761, 41.724251, 15.325236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047195, 41.300137, 14.833820>,  <35.171864, 41.768696, 15.394916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047195, 41.300137, 14.833820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.719116, 41.526718, 14.865825>,  <34.522266, 41.662666, 14.885027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.719116, 41.526718, 14.865825>,  <35.047195, 41.300137, 14.833820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719116, 41.526718, 14.865825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052910, 0.064147, -0.996537,
		-0.569625, -0.821593, -0.022643,
		-0.820200, 0.566454, 0.080010,
		34.473057, 41.696655, 14.889828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705837, 41.138916, 14.292762>,  <35.047195, 41.300137, 14.833820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705837, 41.138916, 14.292762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530441, 41.483501, 14.395220>,  <34.425201, 41.690250, 14.456695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530441, 41.483501, 14.395220>,  <34.705837, 41.138916, 14.292762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530441, 41.483501, 14.395220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043766, 0.264201, -0.963474,
		-0.897668, -0.433687, -0.078148,
		-0.438493, 0.861460, 0.256145,
		34.398891, 41.741940, 14.472063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139442, 41.163609, 13.870846>,  <34.705837, 41.138916, 14.292762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139442, 41.163609, 13.870846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199223, 41.545967, 13.971973>,  <34.235092, 41.775383, 14.032650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199223, 41.545967, 13.971973>,  <34.139442, 41.163609, 13.870846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199223, 41.545967, 13.971973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036371, 0.250202, -0.967510,
		-0.988100, 0.153792, 0.002626,
		0.149452, 0.955901, 0.252818,
		34.244057, 41.832737, 14.047819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636337, 41.459858, 13.485107>,  <34.139442, 41.163609, 13.870846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636337, 41.459858, 13.485107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925812, 41.721382, 13.573481>,  <34.099495, 41.878296, 13.626505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925812, 41.721382, 13.573481>,  <33.636337, 41.459858, 13.485107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925812, 41.721382, 13.573481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043644, 0.362850, -0.930825,
		-0.688747, 0.663983, 0.291124,
		0.723686, 0.653809, 0.220933,
		34.142918, 41.917526, 13.639761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361305, 42.165756, 13.219543>,  <33.636337, 41.459858, 13.485107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361305, 42.165756, 13.219543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.759914, 42.152416, 13.250090>,  <33.999081, 42.144413, 13.268417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.759914, 42.152416, 13.250090>,  <33.361305, 42.165756, 13.219543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759914, 42.152416, 13.250090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080896, 0.167396, -0.982565,
		0.019982, 0.985326, 0.169511,
		0.996522, -0.033346, 0.076364,
		34.058872, 42.142414, 13.272999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544918, 42.725929, 13.001225>,  <33.361305, 42.165756, 13.219543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544918, 42.725929, 13.001225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897228, 42.538403, 12.974562>,  <34.108616, 42.425888, 12.958564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897228, 42.538403, 12.974562>,  <33.544918, 42.725929, 13.001225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897228, 42.538403, 12.974562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194976, 0.487329, -0.851173,
		0.431529, 0.736696, 0.520636,
		0.880776, -0.468817, -0.066659,
		34.161461, 42.397758, 12.954564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.106804, 41.509777, 28.709978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498840, 41.557053, 28.646162>,  <34.734062, 41.585419, 28.607872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498840, 41.557053, 28.646162>,  <34.106804, 41.509777, 28.709978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498840, 41.557053, 28.646162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120719, -0.283218, -0.951427,
		-0.157632, 0.951745, -0.263312,
		0.980091, 0.118189, -0.159539,
		34.792870, 41.592510, 28.598301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176537, 42.009380, 28.145065>,  <34.106804, 41.509777, 28.709978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176537, 42.009380, 28.145065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492569, 41.764576, 28.158981>,  <34.682190, 41.617691, 28.167332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492569, 41.764576, 28.158981>,  <34.176537, 42.009380, 28.145065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492569, 41.764576, 28.158981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142668, -0.238782, -0.960536,
		0.596170, 0.753937, -0.275972,
		0.790080, -0.612015, 0.034792,
		34.729591, 41.580971, 28.169418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483803, 42.106712, 27.579033>,  <34.176537, 42.009380, 28.145065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483803, 42.106712, 27.579033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634083, 41.755924, 27.698881>,  <34.724251, 41.545452, 27.770790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634083, 41.755924, 27.698881>,  <34.483803, 42.106712, 27.579033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634083, 41.755924, 27.698881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120861, -0.366911, -0.922371,
		0.918826, 0.310323, -0.243841,
		0.375701, -0.876969, 0.299621,
		34.746792, 41.492832, 27.788767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083210, 42.021816, 27.145700>,  <34.483803, 42.106712, 27.579033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083210, 42.021816, 27.145700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939289, 41.665871, 27.257902>,  <34.852936, 41.452305, 27.325222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939289, 41.665871, 27.257902>,  <35.083210, 42.021816, 27.145700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939289, 41.665871, 27.257902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078420, -0.328415, -0.941272,
		0.929727, -0.316676, 0.187948,
		-0.359803, -0.889865, 0.280502,
		34.831348, 41.398911, 27.342052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437561, 41.515614, 26.681011>,  <35.083210, 42.021816, 27.145700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437561, 41.515614, 26.681011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119423, 41.330750, 26.837898>,  <34.928539, 41.219830, 26.932030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119423, 41.330750, 26.837898>,  <35.437561, 41.515614, 26.681011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119423, 41.330750, 26.837898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159533, -0.464641, -0.871010,
		0.584788, -0.755324, 0.295819,
		-0.795344, -0.462163, 0.392215,
		34.880821, 41.192101, 26.955563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526535, 40.832573, 26.386881>,  <35.437561, 41.515614, 26.681011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526535, 40.832573, 26.386881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145798, 40.868851, 26.504021>,  <34.917355, 40.890617, 26.574305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145798, 40.868851, 26.504021>,  <35.526535, 40.832573, 26.386881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145798, 40.868851, 26.504021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305807, -0.348269, -0.886110,
		0.021629, -0.932998, 0.359232,
		-0.951848, 0.090690, 0.292850,
		34.860245, 40.896057, 26.591875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221027, 40.188030, 26.162855>,  <35.526535, 40.832573, 26.386881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221027, 40.188030, 26.162855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916424, 40.433796, 26.245411>,  <34.733662, 40.581257, 26.294945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916424, 40.433796, 26.245411>,  <35.221027, 40.188030, 26.162855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916424, 40.433796, 26.245411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399546, -0.194255, -0.895895,
		-0.510359, -0.764695, 0.393414,
		-0.761510, 0.614415, 0.206391,
		34.687969, 40.618122, 26.307329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663254, 39.784225, 26.015636>,  <35.221027, 40.188030, 26.162855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663254, 39.784225, 26.015636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539227, 40.164368, 26.026150>,  <34.464809, 40.392452, 26.032457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539227, 40.164368, 26.026150>,  <34.663254, 39.784225, 26.015636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539227, 40.164368, 26.026150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632393, -0.185528, -0.752102,
		-0.709885, -0.249825, 0.658522,
		-0.310068, 0.950351, 0.026284,
		34.446205, 40.449474, 26.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877171, 39.752499, 26.038923>,  <34.663254, 39.784225, 26.015636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877171, 39.752499, 26.038923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980991, 40.107754, 25.887213>,  <34.043282, 40.320908, 25.796186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980991, 40.107754, 25.887213>,  <33.877171, 39.752499, 26.038923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980991, 40.107754, 25.887213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613130, -0.151883, -0.775244,
		-0.746127, 0.433758, 0.505122,
		0.259549, 0.888136, -0.379274,
		34.058857, 40.374195, 25.773430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224590, 40.057690, 25.671770>,  <33.877171, 39.752499, 26.038923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224590, 40.057690, 25.671770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543190, 40.237213, 25.509701>,  <33.734348, 40.344925, 25.412460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543190, 40.237213, 25.509701>,  <33.224590, 40.057690, 25.671770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543190, 40.237213, 25.509701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458996, 0.012602, -0.888349,
		-0.393589, 0.893541, 0.216036,
		0.796499, 0.448804, -0.405172,
		33.782139, 40.371853, 25.388149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956612, 40.663471, 25.372633>,  <33.224590, 40.057690, 25.671770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956612, 40.663471, 25.372633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309574, 40.640522, 25.185841>,  <33.521351, 40.626751, 25.073765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309574, 40.640522, 25.185841>,  <32.956612, 40.663471, 25.372633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309574, 40.640522, 25.185841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456683, 0.134259, -0.879441,
		0.113153, 0.989284, 0.092269,
		0.882405, -0.057373, -0.466980,
		33.574295, 40.623310, 25.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792717, 41.105042, 24.802601>,  <32.956612, 40.663471, 25.372633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792717, 41.105042, 24.802601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137287, 40.931282, 24.697338>,  <33.344028, 40.827026, 24.634180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137287, 40.931282, 24.697338>,  <32.792717, 41.105042, 24.802601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137287, 40.931282, 24.697338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290925, 0.002680, -0.956742,
		0.416313, 0.900717, -0.124069,
		0.861421, -0.434399, -0.263157,
		33.395714, 40.800961, 24.618391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542931, 41.877045, 25.023046>,  <32.792717, 41.105042, 24.802601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542931, 41.877045, 25.023046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224785, 42.094280, 24.915377>,  <32.033897, 42.224621, 24.850775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224785, 42.094280, 24.915377>,  <32.542931, 41.877045, 25.023046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224785, 42.094280, 24.915377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246074, 0.116532, 0.962220,
		0.553936, 0.831551, 0.040954,
		-0.795363, 0.543087, -0.269175,
		31.986176, 42.257206, 24.834623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680199, 42.512180, 25.492424>,  <32.542931, 41.877045, 25.023046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680199, 42.512180, 25.492424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297882, 42.463070, 25.385551>,  <32.068493, 42.433601, 25.321428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297882, 42.463070, 25.385551>,  <32.680199, 42.512180, 25.492424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297882, 42.463070, 25.385551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283122, 0.138936, 0.948967,
		-0.079391, 0.982661, -0.167555,
		-0.955792, -0.122778, -0.267183,
		32.011143, 42.426235, 25.305397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400539, 43.070110, 25.864141>,  <32.680199, 42.512180, 25.492424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400539, 43.070110, 25.864141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119850, 42.799175, 25.775776>,  <31.951437, 42.636616, 25.722757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119850, 42.799175, 25.775776>,  <32.400539, 43.070110, 25.864141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119850, 42.799175, 25.775776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387754, 0.102961, 0.915995,
		-0.597691, 0.728433, -0.334890,
		-0.701721, -0.677336, -0.220914,
		31.909334, 42.595974, 25.709501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834595, 43.308475, 26.185791>,  <32.400539, 43.070110, 25.864141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834595, 43.308475, 26.185791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720381, 42.927551, 26.142759>,  <31.651852, 42.698997, 26.116941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720381, 42.927551, 26.142759>,  <31.834595, 43.308475, 26.185791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720381, 42.927551, 26.142759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469124, 0.041004, 0.882180,
		-0.835699, 0.302360, -0.458460,
		-0.285535, -0.952311, -0.107577,
		31.634720, 42.641857, 26.110487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088291, 43.223198, 26.399038>,  <31.834595, 43.308475, 26.185791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088291, 43.223198, 26.399038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256098, 42.860386, 26.413467>,  <31.356783, 42.642700, 26.422125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256098, 42.860386, 26.413467>,  <31.088291, 43.223198, 26.399038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256098, 42.860386, 26.413467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375286, -0.137121, 0.916710,
		-0.826538, -0.398114, -0.397921,
		0.419518, -0.907030, 0.036071,
		31.381954, 42.588276, 26.424288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521570, 42.738605, 26.649387>,  <31.088291, 43.223198, 26.399038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521570, 42.738605, 26.649387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857038, 42.534210, 26.724773>,  <31.058319, 42.411572, 26.770006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857038, 42.534210, 26.724773>,  <30.521570, 42.738605, 26.649387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857038, 42.534210, 26.724773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384227, -0.309857, 0.869689,
		-0.386006, -0.801796, -0.456204,
		0.838671, -0.510991, 0.188466,
		31.108641, 42.380913, 26.781313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323425, 42.079884, 26.787220>,  <30.521570, 42.738605, 26.649387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323425, 42.079884, 26.787220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687992, 42.108425, 26.949320>,  <30.906733, 42.125549, 27.046579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687992, 42.108425, 26.949320>,  <30.323425, 42.079884, 26.787220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687992, 42.108425, 26.949320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336938, -0.435926, 0.834531,
		0.236204, -0.897150, -0.373269,
		0.911417, 0.071350, 0.405251,
		30.961418, 42.129829, 27.070894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228992, 41.712646, 27.351994>,  <30.323425, 42.079884, 26.787220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228992, 41.712646, 27.351994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575893, 41.883720, 27.453947>,  <30.784033, 41.986362, 27.515120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575893, 41.883720, 27.453947>,  <30.228992, 41.712646, 27.351994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575893, 41.883720, 27.453947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186949, -0.194744, 0.962873,
		0.461441, -0.882702, -0.088937,
		0.867250, 0.427682, 0.254883,
		30.836069, 42.012024, 27.530413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581083, 41.275475, 27.775230>,  <30.228992, 41.712646, 27.351994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581083, 41.275475, 27.775230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737560, 41.627705, 27.882236>,  <30.831446, 41.839043, 27.946440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737560, 41.627705, 27.882236>,  <30.581083, 41.275475, 27.775230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737560, 41.627705, 27.882236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044586, -0.272202, 0.961207,
		0.919229, -0.387942, -0.067222,
		0.391191, 0.880572, 0.267513,
		30.854918, 41.891876, 27.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147024, 41.163532, 28.159447>,  <30.581083, 41.275475, 27.775230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147024, 41.163532, 28.159447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984480, 41.516689, 28.253572>,  <30.886953, 41.728584, 28.310047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984480, 41.516689, 28.253572>,  <31.147024, 41.163532, 28.159447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984480, 41.516689, 28.253572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102320, -0.299887, 0.948472,
		0.907965, 0.361346, 0.212200,
		-0.406362, 0.882891, 0.235314,
		30.862572, 41.781555, 28.324167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221542, 41.054928, 28.868649>,  <31.147024, 41.163532, 28.159447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221542, 41.054928, 28.868649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016663, 41.393703, 28.811594>,  <30.893734, 41.596970, 28.777361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016663, 41.393703, 28.811594>,  <31.221542, 41.054928, 28.868649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016663, 41.393703, 28.811594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368093, -0.066418, 0.927414,
		0.775989, 0.527525, 0.345772,
		-0.512200, 0.846939, -0.142639,
		30.863003, 41.647785, 28.768803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399714, 41.504784, 29.430588>,  <31.221542, 41.054928, 28.868649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399714, 41.504784, 29.430588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024996, 41.585793, 29.316467>,  <30.800165, 41.634399, 29.247995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024996, 41.585793, 29.316467>,  <31.399714, 41.504784, 29.430588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024996, 41.585793, 29.316467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272210, 0.090408, 0.957981,
		0.219808, 0.975095, -0.029564,
		-0.936796, 0.202524, -0.285303,
		30.743958, 41.646549, 29.230877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224459, 42.017090, 29.780262>,  <31.399714, 41.504784, 29.430588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224459, 42.017090, 29.780262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852446, 41.893215, 29.701132>,  <30.629238, 41.818890, 29.653654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852446, 41.893215, 29.701132>,  <31.224459, 42.017090, 29.780262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852446, 41.893215, 29.701132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277448, 0.238757, 0.930601,
		-0.240967, 0.920373, -0.307975,
		-0.930031, -0.309691, -0.197824,
		30.573437, 41.800308, 29.641785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727665, 42.565338, 30.083424>,  <31.224459, 42.017090, 29.780262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727665, 42.565338, 30.083424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503124, 42.235405, 30.056473>,  <30.368401, 42.037445, 30.040302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503124, 42.235405, 30.056473>,  <30.727665, 42.565338, 30.083424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503124, 42.235405, 30.056473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436251, 0.225746, 0.871047,
		-0.703257, 0.518355, -0.486556,
		-0.561350, -0.824831, -0.067376,
		30.334719, 41.987957, 30.036261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853455, 43.349628, 30.137026>,  <30.727665, 42.565338, 30.083424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853455, 43.349628, 30.137026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491917, 43.369781, 30.306980>,  <30.274994, 43.381874, 30.408953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491917, 43.369781, 30.306980>,  <30.853455, 43.349628, 30.137026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491917, 43.369781, 30.306980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311792, -0.757610, -0.573423,
		0.293007, -0.650760, 0.700470,
		-0.903843, 0.050384, 0.424887,
		30.220764, 43.384895, 30.434446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212048, 43.856262, 29.684570>,  <30.853455, 43.349628, 30.137026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212048, 43.856262, 29.684570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445635, 44.180676, 29.698460>,  <31.585787, 44.375324, 29.706793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445635, 44.180676, 29.698460>,  <31.212048, 43.856262, 29.684570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445635, 44.180676, 29.698460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006660, 0.037987, -0.999256,
		-0.811751, 0.583763, 0.016782,
		0.583966, 0.811035, 0.034724,
		31.620825, 44.423985, 29.708878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955233, 44.571949, 29.426861>,  <31.212048, 43.856262, 29.684570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955233, 44.571949, 29.426861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352659, 44.559223, 29.383379>,  <31.591114, 44.551586, 29.357290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352659, 44.559223, 29.383379>,  <30.955233, 44.571949, 29.426861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352659, 44.559223, 29.383379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099602, 0.211511, -0.972287,
		0.053926, 0.976858, 0.206981,
		0.993565, -0.031816, -0.108703,
		31.650728, 44.549679, 29.350769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098915, 45.114151, 29.071064>,  <30.955233, 44.571949, 29.426861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098915, 45.114151, 29.071064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435974, 44.904678, 29.020937>,  <31.638210, 44.778996, 28.990860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435974, 44.904678, 29.020937>,  <31.098915, 45.114151, 29.071064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435974, 44.904678, 29.020937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070964, 0.338705, -0.938213,
		0.533770, 0.781689, 0.322571,
		0.842647, -0.523680, -0.125319,
		31.688768, 44.747574, 28.983341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435131, 45.565136, 28.521955>,  <31.098915, 45.114151, 29.071064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435131, 45.565136, 28.521955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662655, 45.236275, 28.512793>,  <31.799170, 45.038960, 28.507296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662655, 45.236275, 28.512793>,  <31.435131, 45.565136, 28.521955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662655, 45.236275, 28.512793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321614, 0.247972, -0.913824,
		0.756980, 0.512427, 0.405464,
		0.568811, -0.822149, -0.022906,
		31.833298, 44.989632, 28.505920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174263, 45.727516, 28.373068>,  <31.435131, 45.565136, 28.521955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174263, 45.727516, 28.373068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137489, 45.348511, 28.250587>,  <32.115425, 45.121105, 28.177099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137489, 45.348511, 28.250587>,  <32.174263, 45.727516, 28.373068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137489, 45.348511, 28.250587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410557, 0.244080, -0.878560,
		0.907188, -0.206484, 0.366570,
		-0.091937, -0.947517, -0.306200,
		32.109909, 45.064255, 28.158728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666336, 45.618847, 27.876169>,  <32.174263, 45.727516, 28.373068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666336, 45.618847, 27.876169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434635, 45.301517, 27.801229>,  <32.295612, 45.111118, 27.756266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434635, 45.301517, 27.801229>,  <32.666336, 45.618847, 27.876169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434635, 45.301517, 27.801229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360021, -0.042782, -0.931962,
		0.731333, -0.607295, 0.310395,
		-0.579256, -0.793324, -0.187351,
		32.260857, 45.063519, 27.745024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058983, 45.229958, 27.453094>,  <32.666336, 45.618847, 27.876169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058983, 45.229958, 27.453094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682846, 45.099438, 27.414551>,  <32.457165, 45.021126, 27.391424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682846, 45.099438, 27.414551>,  <33.058983, 45.229958, 27.453094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682846, 45.099438, 27.414551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153343, -0.153641, -0.976156,
		0.303713, -0.932697, 0.194511,
		-0.940343, -0.326298, -0.096360,
		32.400742, 45.001549, 27.385643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188465, 44.689812, 26.928001>,  <33.058983, 45.229958, 27.453094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188465, 44.689812, 26.928001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798672, 44.779224, 26.919813>,  <32.564796, 44.832870, 26.914900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798672, 44.779224, 26.919813>,  <33.188465, 44.689812, 26.928001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798672, 44.779224, 26.919813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019305, -0.174319, -0.984500,
		-0.223641, -0.958981, 0.174185,
		-0.974480, 0.223537, -0.020472,
		32.506329, 44.846283, 26.913671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912167, 44.144844, 26.620136>,  <33.188465, 44.689812, 26.928001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912167, 44.144844, 26.620136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670570, 44.459770, 26.570599>,  <32.525612, 44.648724, 26.540876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670570, 44.459770, 26.570599>,  <32.912167, 44.144844, 26.620136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670570, 44.459770, 26.570599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016539, -0.167736, -0.985693,
		-0.796820, -0.593301, 0.114333,
		-0.603990, 0.787311, -0.123843,
		32.489372, 44.695965, 26.533445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414768, 43.968655, 26.160036>,  <32.912167, 44.144844, 26.620136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414768, 43.968655, 26.160036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409618, 44.367802, 26.134430>,  <32.406528, 44.607288, 26.119066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409618, 44.367802, 26.134430>,  <32.414768, 43.968655, 26.160036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409618, 44.367802, 26.134430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072364, -0.062922, -0.995391,
		-0.997295, -0.017446, -0.071400,
		-0.012873, 0.997866, -0.064014,
		32.405758, 44.667160, 26.115227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005814, 44.078953, 25.592703>,  <32.414768, 43.968655, 26.160036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005814, 44.078953, 25.592703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204437, 44.425346, 25.616375>,  <32.323612, 44.633183, 25.630579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204437, 44.425346, 25.616375>,  <32.005814, 44.078953, 25.592703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204437, 44.425346, 25.616375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018503, 0.078728, -0.996724,
		-0.867804, 0.493841, 0.055117,
		0.496563, 0.865981, 0.059183,
		32.353405, 44.685143, 25.634130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821571, 44.644989, 25.116671>,  <32.005814, 44.078953, 25.592703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821571, 44.644989, 25.116671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196617, 44.749088, 25.208891>,  <32.421646, 44.811546, 25.264223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196617, 44.749088, 25.208891>,  <31.821571, 44.644989, 25.116671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196617, 44.749088, 25.208891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181904, 0.197931, -0.963190,
		-0.296299, 0.945037, 0.138243,
		0.937613, 0.260245, 0.230553,
		32.477901, 44.827164, 25.278057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990732, 45.222343, 24.683001>,  <31.821571, 44.644989, 25.116671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990732, 45.222343, 24.683001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348553, 45.116394, 24.827013>,  <32.563244, 45.052826, 24.913422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348553, 45.116394, 24.827013>,  <31.990732, 45.222343, 24.683001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348553, 45.116394, 24.827013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392239, 0.078980, -0.916466,
		0.214309, 0.961044, 0.174544,
		0.894550, -0.264870, 0.360033,
		32.616917, 45.036934, 24.935022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421913, 45.728741, 24.402027>,  <31.990732, 45.222343, 24.683001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421913, 45.728741, 24.402027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673328, 45.436550, 24.508863>,  <32.824177, 45.261234, 24.572966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673328, 45.436550, 24.508863>,  <32.421913, 45.728741, 24.402027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673328, 45.436550, 24.508863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645469, 0.298304, -0.703125,
		0.433944, 0.614342, 0.658997,
		0.628540, -0.730479, 0.267091,
		32.861889, 45.217407, 24.588991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141823, 45.994053, 24.348902>,  <32.421913, 45.728741, 24.402027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141823, 45.994053, 24.348902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203300, 45.599026, 24.362125>,  <33.240185, 45.362011, 24.370060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203300, 45.599026, 24.362125>,  <33.141823, 45.994053, 24.348902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203300, 45.599026, 24.362125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697678, 0.084763, -0.711379,
		0.699731, 0.132399, 0.702031,
		0.153692, -0.987566, 0.033061,
		33.249409, 45.302757, 24.372044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814445, 45.930069, 24.211197>,  <33.141823, 45.994053, 24.348902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814445, 45.930069, 24.211197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657192, 45.574280, 24.118002>,  <33.562840, 45.360806, 24.062086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657192, 45.574280, 24.118002>,  <33.814445, 45.930069, 24.211197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657192, 45.574280, 24.118002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433346, 0.044246, -0.900141,
		0.810959, -0.454842, 0.368054,
		-0.393137, -0.889472, -0.232986,
		33.539249, 45.307438, 24.048105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358025, 45.382210, 24.130325>,  <33.814445, 45.930069, 24.211197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358025, 45.382210, 24.130325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032444, 45.249447, 23.939613>,  <33.837097, 45.169788, 23.825186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032444, 45.249447, 23.939613>,  <34.358025, 45.382210, 24.130325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032444, 45.249447, 23.939613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462661, 0.125963, -0.877541,
		0.351323, -0.934863, 0.051035,
		-0.813952, -0.331912, -0.476778,
		33.788258, 45.149872, 23.796579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649090, 44.722515, 23.786297>,  <34.358025, 45.382210, 24.130325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649090, 44.722515, 23.786297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334435, 44.876663, 23.593344>,  <34.145641, 44.969154, 23.477571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334435, 44.876663, 23.593344>,  <34.649090, 44.722515, 23.786297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334435, 44.876663, 23.593344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530590, 0.022425, -0.847332,
		-0.315721, -0.922488, -0.222116,
		-0.786635, 0.385373, -0.482383,
		34.098446, 44.992275, 23.448629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604107, 44.314636, 23.168755>,  <34.649090, 44.722515, 23.786297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604107, 44.314636, 23.168755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385750, 44.644650, 23.110342>,  <34.254734, 44.842659, 23.075294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385750, 44.644650, 23.110342>,  <34.604107, 44.314636, 23.168755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385750, 44.644650, 23.110342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359790, 0.073426, -0.930140,
		-0.756672, -0.560296, -0.336921,
		-0.545892, 0.825032, -0.146029,
		34.221981, 44.892159, 23.066534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296772, 44.113930, 22.545059>,  <34.604107, 44.314636, 23.168755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296772, 44.113930, 22.545059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266430, 44.510838, 22.584362>,  <34.248226, 44.748981, 22.607944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266430, 44.510838, 22.584362>,  <34.296772, 44.113930, 22.545059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266430, 44.510838, 22.584362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399212, 0.120520, -0.908903,
		-0.913716, -0.029717, -0.405266,
		-0.075852, 0.992266, 0.098258,
		34.243675, 44.808517, 22.613840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069180, 44.268978, 21.936909>,  <34.296772, 44.113930, 22.545059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069180, 44.268978, 21.936909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183754, 44.629467, 22.066986>,  <34.252499, 44.845760, 22.145033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183754, 44.629467, 22.066986>,  <34.069180, 44.268978, 21.936909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183754, 44.629467, 22.066986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181057, 0.282385, -0.942060,
		-0.940836, 0.328720, -0.082287,
		0.286438, 0.901222, 0.325196,
		34.269684, 44.899834, 22.164545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697037, 44.745197, 21.536375>,  <34.069180, 44.268978, 21.936909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697037, 44.745197, 21.536375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009991, 44.935581, 21.697039>,  <34.197765, 45.049812, 21.793436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009991, 44.935581, 21.697039>,  <33.697037, 44.745197, 21.536375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009991, 44.935581, 21.697039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207377, 0.409031, -0.888644,
		-0.587251, 0.778559, 0.221317,
		0.782388, 0.475961, 0.401659,
		34.244705, 45.078369, 21.817537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668404, 45.353367, 21.211853>,  <33.697037, 44.745197, 21.536375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668404, 45.353367, 21.211853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046272, 45.299934, 21.331690>,  <34.272991, 45.267876, 21.403591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046272, 45.299934, 21.331690>,  <33.668404, 45.353367, 21.211853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046272, 45.299934, 21.331690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327622, 0.339095, -0.881861,
		0.016207, 0.931221, 0.364095,
		0.944670, -0.133578, 0.299593,
		34.329674, 45.259861, 21.421568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969257, 45.976521, 21.031382>,  <33.668404, 45.353367, 21.211853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969257, 45.976521, 21.031382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269218, 45.715115, 21.072502>,  <34.449196, 45.558270, 21.097176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269218, 45.715115, 21.072502>,  <33.969257, 45.976521, 21.031382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269218, 45.715115, 21.072502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400272, 0.324491, -0.857023,
		0.526718, 0.683831, 0.504919,
		0.749900, -0.653514, 0.102803,
		34.494190, 45.519062, 21.103344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493370, 46.330364, 20.905180>,  <33.969257, 45.976521, 21.031382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493370, 46.330364, 20.905180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642300, 45.963917, 20.845709>,  <34.731655, 45.744049, 20.810026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642300, 45.963917, 20.845709>,  <34.493370, 46.330364, 20.905180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642300, 45.963917, 20.845709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457137, 0.320431, -0.829668,
		0.807715, 0.240937, 0.538095,
		0.372320, -0.916119, -0.148676,
		34.753994, 45.689079, 20.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293491, 46.416592, 20.840620>,  <34.493370, 46.330364, 20.905180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293491, 46.416592, 20.840620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179211, 46.069214, 20.678541>,  <35.110641, 45.860786, 20.581295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179211, 46.069214, 20.678541>,  <35.293491, 46.416592, 20.840620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179211, 46.069214, 20.678541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403399, 0.274548, -0.872864,
		0.869277, -0.412836, 0.271889,
		-0.285704, -0.868441, -0.405196,
		35.093498, 45.808681, 20.556982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838268, 46.144703, 20.349644>,  <35.293491, 46.416592, 20.840620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838268, 46.144703, 20.349644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496521, 45.970997, 20.235477>,  <35.291473, 45.866772, 20.166979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496521, 45.970997, 20.235477>,  <35.838268, 46.144703, 20.349644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496521, 45.970997, 20.235477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220856, 0.193723, -0.955873,
		0.470394, -0.879707, -0.069602,
		-0.854373, -0.434265, -0.285414,
		35.240208, 45.840717, 20.149853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576324, 46.035362, 20.345396>,  <35.838268, 46.144703, 20.349644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576324, 46.035362, 20.345396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975620, 46.035179, 20.321663>,  <37.215199, 46.035069, 20.307423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975620, 46.035179, 20.321663>,  <36.576324, 46.035362, 20.345396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975620, 46.035179, 20.321663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059035, 0.108228, 0.992372,
		0.005965, -0.994126, 0.108064,
		0.998238, -0.000460, -0.059334,
		37.275093, 46.035042, 20.303864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840405, 45.349720, 20.811043>,  <36.576324, 46.035362, 20.345396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840405, 45.349720, 20.811043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155724, 45.595806, 20.807066>,  <37.344913, 45.743458, 20.804680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155724, 45.595806, 20.807066>,  <36.840405, 45.349720, 20.811043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155724, 45.595806, 20.807066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111246, -0.126616, 0.985694,
		0.605156, -0.778124, -0.168252,
		0.788296, 0.615216, -0.009941,
		37.392212, 45.780373, 20.804083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267185, 45.170467, 21.407169>,  <36.840405, 45.349720, 20.811043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267185, 45.170467, 21.407169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412540, 45.535976, 21.334528>,  <37.499752, 45.755280, 21.290943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412540, 45.535976, 21.334528>,  <37.267185, 45.170467, 21.407169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412540, 45.535976, 21.334528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123362, 0.146016, 0.981560,
		0.923436, -0.379086, -0.059664,
		0.363384, 0.913769, -0.181601,
		37.521557, 45.810108, 21.280048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031200, 45.146214, 21.692265>,  <37.267185, 45.170467, 21.407169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031200, 45.146214, 21.692265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845863, 45.499813, 21.667429>,  <37.734661, 45.711975, 21.652527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845863, 45.499813, 21.667429>,  <38.031200, 45.146214, 21.692265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845863, 45.499813, 21.667429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076831, 0.109874, 0.990972,
		0.882843, 0.454388, -0.118828,
		-0.463342, 0.884002, -0.062090,
		37.706860, 45.765015, 21.648802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226864, 45.432091, 22.356377>,  <38.031200, 45.146214, 21.692265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226864, 45.432091, 22.356377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973660, 45.706093, 22.212114>,  <37.821739, 45.870495, 22.125557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973660, 45.706093, 22.212114>,  <38.226864, 45.432091, 22.356377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973660, 45.706093, 22.212114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257792, 0.252768, 0.932551,
		0.729962, 0.683287, 0.016584,
		-0.633008, 0.685002, -0.360657,
		37.783756, 45.911594, 22.103918>
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
