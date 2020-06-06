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
	<24.233801, 34.963207, 35.188469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.248781, 34.824249, 34.813679>,  <24.257771, 34.740875, 34.588806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.248781, 34.824249, 34.813679>,  <24.233801, 34.963207, 35.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.248781, 34.824249, 34.813679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826054, -0.516879, 0.224658,
		-0.562345, -0.782403, 0.267606,
		0.037453, -0.347392, -0.936972,
		24.260017, 34.720032, 34.532589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.273561, 34.121529, 35.194561>,  <24.233801, 34.963207, 35.188469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.273561, 34.121529, 35.194561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437641, 34.300755, 34.876823>,  <24.536089, 34.408291, 34.686180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437641, 34.300755, 34.876823>,  <24.273561, 34.121529, 35.194561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437641, 34.300755, 34.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799227, -0.596146, 0.076455,
		-0.439287, -0.666220, -0.602642,
		0.410199, 0.448062, -0.794341,
		24.560701, 34.435173, 34.638519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309786, 33.733318, 34.466743>,  <24.273561, 34.121529, 35.194561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.309786, 33.733318, 34.466743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622032, 33.962185, 34.567352>,  <24.809380, 34.099506, 34.627716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622032, 33.962185, 34.567352>,  <24.309786, 33.733318, 34.466743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622032, 33.962185, 34.567352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617688, -0.767661, -0.170755,
		0.095384, 0.288657, -0.952670,
		0.780617, 0.572166, 0.251523,
		24.856216, 34.133835, 34.642811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892317, 33.462418, 33.944744>,  <24.309786, 33.733318, 34.466743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892317, 33.462418, 33.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086380, 33.681450, 34.217442>,  <25.202818, 33.812870, 34.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086380, 33.681450, 34.217442>,  <24.892317, 33.462418, 33.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086380, 33.681450, 34.217442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672026, -0.732318, 0.109964,
		0.559467, 0.404799, -0.723281,
		0.485158, 0.547584, 0.681743,
		25.231928, 33.845726, 34.421963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614130, 33.531136, 33.745136>,  <24.892317, 33.462418, 33.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614130, 33.531136, 33.745136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591885, 33.570000, 34.142620>,  <25.578537, 33.593319, 34.381111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591885, 33.570000, 34.142620>,  <25.614130, 33.531136, 33.745136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591885, 33.570000, 34.142620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568038, -0.815412, 0.111515,
		0.821121, 0.570669, -0.009841,
		-0.055614, 0.097157, 0.993714,
		25.575201, 33.599148, 34.440735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272970, 33.523960, 33.903675>,  <25.614130, 33.531136, 33.745136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272970, 33.523960, 33.903675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063717, 33.445740, 34.235481>,  <25.938166, 33.398808, 34.434563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063717, 33.445740, 34.235481>,  <26.272970, 33.523960, 33.903675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063717, 33.445740, 34.235481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604895, -0.770843, 0.199758,
		0.600361, 0.606268, 0.521542,
		-0.523134, -0.195552, 0.829512,
		25.906776, 33.387074, 34.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778612, 33.360260, 34.414421>,  <26.272970, 33.523960, 33.903675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778612, 33.360260, 34.414421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422636, 33.214291, 34.523846>,  <26.209051, 33.126709, 34.589500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422636, 33.214291, 34.523846>,  <26.778612, 33.360260, 34.414421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422636, 33.214291, 34.523846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424553, -0.881987, 0.204579,
		0.166625, 0.298206, 0.939845,
		-0.889939, -0.364926, 0.273565,
		26.155655, 33.104813, 34.605915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836298, 33.076668, 35.003330>,  <26.778612, 33.360260, 34.414421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836298, 33.076668, 35.003330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539371, 32.834919, 34.887604>,  <26.361216, 32.689869, 34.818169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539371, 32.834919, 34.887604>,  <26.836298, 33.076668, 35.003330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539371, 32.834919, 34.887604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585400, -0.795038, 0.158815,
		-0.326000, -0.051475, 0.943967,
		-0.742315, -0.604372, -0.289315,
		26.316677, 32.653606, 34.800808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702202, 32.607174, 35.459270>,  <26.836298, 33.076668, 35.003330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702202, 32.607174, 35.459270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569576, 32.429939, 35.126106>,  <26.490002, 32.323597, 34.926208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569576, 32.429939, 35.126106>,  <26.702202, 32.607174, 35.459270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569576, 32.429939, 35.126106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473996, -0.841570, 0.259011,
		-0.815716, -0.308917, 0.489057,
		-0.331563, -0.443091, -0.832908,
		26.470108, 32.297012, 34.876232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549686, 31.862581, 35.611698>,  <26.702202, 32.607174, 35.459270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549686, 31.862581, 35.611698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612268, 31.861753, 35.216625>,  <26.649818, 31.861258, 34.979580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612268, 31.861753, 35.216625>,  <26.549686, 31.862581, 35.611698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612268, 31.861753, 35.216625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485473, -0.870700, 0.078726,
		-0.860138, -0.491811, -0.135221,
		0.156455, -0.002069, -0.987683,
		26.659204, 31.861134, 34.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323391, 31.193687, 35.454823>,  <26.549686, 31.862581, 35.611698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323391, 31.193687, 35.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569639, 31.307919, 35.161034>,  <26.717388, 31.376457, 34.984760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569639, 31.307919, 35.161034>,  <26.323391, 31.193687, 35.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569639, 31.307919, 35.161034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444226, -0.895590, 0.024119,
		-0.650900, -0.341121, -0.678207,
		0.615623, 0.285578, -0.734475,
		26.754326, 31.393593, 34.940693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374567, 30.688770, 34.822620>,  <26.323391, 31.193687, 35.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374567, 30.688770, 34.822620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710281, 30.894634, 34.892735>,  <26.911711, 31.018152, 34.934803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710281, 30.894634, 34.892735>,  <26.374567, 30.688770, 34.822620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710281, 30.894634, 34.892735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529585, -0.846821, -0.049333,
		0.123043, 0.134231, -0.983281,
		0.839286, 0.514661, 0.175282,
		26.962067, 31.049032, 34.945320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033642, 30.315195, 34.803787>,  <26.374567, 30.688770, 34.822620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033642, 30.315195, 34.803787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155680, 30.250662, 34.428364>,  <27.228903, 30.211943, 34.203110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155680, 30.250662, 34.428364>,  <27.033642, 30.315195, 34.803787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155680, 30.250662, 34.428364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115268, 0.984556, -0.131769,
		0.945320, -0.067983, 0.318980,
		0.305095, -0.161332, -0.938557,
		27.247208, 30.202263, 34.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682026, 30.502117, 34.755291>,  <27.033642, 30.315195, 34.803787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682026, 30.502117, 34.755291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472248, 30.539463, 34.416767>,  <27.346382, 30.561871, 34.213654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472248, 30.539463, 34.416767>,  <27.682026, 30.502117, 34.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472248, 30.539463, 34.416767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106017, 0.979074, 0.173711,
		0.844818, 0.180825, -0.503572,
		-0.524445, 0.093367, -0.846309,
		27.314915, 30.567472, 34.162876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025043, 31.058113, 34.352730>,  <27.682026, 30.502117, 34.755291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025043, 31.058113, 34.352730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635448, 31.020132, 34.270428>,  <27.401691, 30.997343, 34.221046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635448, 31.020132, 34.270428>,  <28.025043, 31.058113, 34.352730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635448, 31.020132, 34.270428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119889, 0.986414, 0.112312,
		0.192292, 0.134058, -0.972138,
		-0.973987, -0.094952, -0.205752,
		27.343252, 30.991646, 34.208702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831221, 31.705782, 34.643784>,  <28.025043, 31.058113, 34.352730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831221, 31.705782, 34.643784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530645, 31.449541, 34.580578>,  <27.350300, 31.295797, 34.542656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530645, 31.449541, 34.580578>,  <27.831221, 31.705782, 34.643784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530645, 31.449541, 34.580578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649868, 0.759989, 0.009398,
		0.114069, 0.109751, -0.987392,
		-0.751439, -0.640602, -0.158015,
		27.305214, 31.257360, 34.533173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540030, 31.848911, 34.017262>,  <27.831221, 31.705782, 34.643784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540030, 31.848911, 34.017262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305563, 31.701183, 34.305710>,  <27.164883, 31.612547, 34.478779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305563, 31.701183, 34.305710>,  <27.540030, 31.848911, 34.017262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305563, 31.701183, 34.305710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662448, 0.730903, -0.164144,
		-0.466448, -0.573920, -0.673084,
		-0.586165, -0.369318, 0.721121,
		27.129713, 31.590387, 34.522045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805731, 31.645267, 33.657829>,  <27.540030, 31.848911, 34.017262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805731, 31.645267, 33.657829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767405, 31.743141, 34.043774>,  <26.744408, 31.801867, 34.275341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767405, 31.743141, 34.043774>,  <26.805731, 31.645267, 33.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767405, 31.743141, 34.043774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831238, 0.513579, -0.212791,
		-0.547597, -0.822415, 0.154182,
		-0.095818, 0.244686, 0.964856,
		26.738659, 31.816547, 34.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125269, 31.742754, 33.727821>,  <26.805731, 31.645267, 33.657829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125269, 31.742754, 33.727821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229458, 31.914700, 34.073624>,  <26.291971, 32.017868, 34.281105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229458, 31.914700, 34.073624>,  <26.125269, 31.742754, 33.727821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229458, 31.914700, 34.073624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870235, 0.492330, 0.017394,
		-0.418145, -0.756854, 0.502321,
		0.260473, 0.429864, 0.864506,
		26.307600, 32.043659, 34.332977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516022, 31.832129, 34.151115>,  <26.125269, 31.742754, 33.727821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516022, 31.832129, 34.151115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767754, 32.076408, 34.343361>,  <25.918793, 32.222977, 34.458710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767754, 32.076408, 34.343361>,  <25.516022, 31.832129, 34.151115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767754, 32.076408, 34.343361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741969, 0.656106, 0.137862,
		-0.231145, -0.443364, 0.866026,
		0.629328, 0.610699, 0.480618,
		25.956553, 32.259617, 34.487545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123224, 32.378860, 34.433514>,  <25.516022, 31.832129, 34.151115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123224, 32.378860, 34.433514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494246, 32.497223, 34.524796>,  <25.716858, 32.568241, 34.579567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494246, 32.497223, 34.524796>,  <25.123224, 32.378860, 34.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494246, 32.497223, 34.524796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341058, 0.919934, 0.193395,
		-0.152710, -0.257217, 0.954211,
		0.927555, 0.295908, 0.228209,
		25.772512, 32.585995, 34.593258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040462, 32.647835, 35.105907>,  <25.123224, 32.378860, 34.433514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040462, 32.647835, 35.105907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384943, 32.790489, 34.961052>,  <25.591631, 32.876083, 34.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384943, 32.790489, 34.961052>,  <25.040462, 32.647835, 35.105907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384943, 32.790489, 34.961052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285414, 0.928886, 0.236030,
		0.420565, -0.099909, 0.901745,
		0.861200, 0.356636, -0.362141,
		25.643303, 32.897480, 34.852409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202459, 33.102856, 35.558544>,  <25.040462, 32.647835, 35.105907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202459, 33.102856, 35.558544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417311, 33.191986, 35.233131>,  <25.546223, 33.245464, 35.037884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417311, 33.191986, 35.233131>,  <25.202459, 33.102856, 35.558544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417311, 33.191986, 35.233131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276163, 0.957776, 0.079997,
		0.797010, 0.181699, 0.575986,
		0.537130, 0.222824, -0.813536,
		25.578449, 33.258835, 34.989071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777693, 33.666565, 35.533981>,  <25.202459, 33.102856, 35.558544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777693, 33.666565, 35.533981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952469, 33.761517, 35.186939>,  <25.057335, 33.818489, 34.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952469, 33.761517, 35.186939>,  <24.777693, 33.666565, 35.533981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952469, 33.761517, 35.186939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767879, 0.600770, -0.222346,
		0.468448, 0.763365, 0.444781,
		0.436942, 0.237380, -0.867602,
		25.083551, 33.832729, 34.926659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500183, 33.806381, 35.714535>,  <24.777693, 33.666565, 35.533981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500183, 33.806381, 35.714535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532831, 33.741257, 35.321224>,  <25.552420, 33.702183, 35.085239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532831, 33.741257, 35.321224>,  <25.500183, 33.806381, 35.714535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532831, 33.741257, 35.321224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256211, 0.949984, -0.178566,
		0.963169, 0.266501, 0.035826,
		0.081622, -0.162810, -0.983276,
		25.557318, 33.692413, 35.026241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727182, 34.454369, 35.476711>,  <25.500183, 33.806381, 35.714535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727182, 34.454369, 35.476711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572258, 34.267296, 35.158901>,  <25.479303, 34.155052, 34.968216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572258, 34.267296, 35.158901>,  <25.727182, 34.454369, 35.476711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572258, 34.267296, 35.158901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516317, 0.823996, -0.233340,
		0.763811, 0.319849, -0.560615,
		-0.387311, -0.467682, -0.794521,
		25.456064, 34.126991, 34.920544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833921, 34.921364, 34.869785>,  <25.727182, 34.454369, 35.476711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833921, 34.921364, 34.869785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519157, 34.680351, 34.816521>,  <25.330299, 34.535744, 34.784561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519157, 34.680351, 34.816521>,  <25.833921, 34.921364, 34.869785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519157, 34.680351, 34.816521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588151, 0.797649, -0.133543,
		0.186676, -0.026770, -0.982057,
		-0.786911, -0.602527, -0.133157,
		25.283083, 34.499592, 34.776573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043013, 35.326813, 34.274643>,  <25.833921, 34.921364, 34.869785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043013, 35.326813, 34.274643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253036, 35.620583, 34.102627>,  <26.379051, 35.796844, 33.999416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253036, 35.620583, 34.102627>,  <26.043013, 35.326813, 34.274643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253036, 35.620583, 34.102627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548223, -0.678366, -0.489153,
		-0.650971, 0.021076, -0.758810,
		0.525060, 0.734422, -0.430042,
		26.410555, 35.840908, 33.973614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081448, 35.242374, 33.437103>,  <26.043013, 35.326813, 34.274643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081448, 35.242374, 33.437103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385382, 35.386383, 33.653633>,  <26.567741, 35.472790, 33.783550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385382, 35.386383, 33.653633>,  <26.081448, 35.242374, 33.437103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385382, 35.386383, 33.653633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593022, -0.725050, -0.350183,
		0.266412, 0.587098, -0.764422,
		0.759836, 0.360026, 0.541324,
		26.613333, 35.494392, 33.816029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701597, 35.460770, 33.078373>,  <26.081448, 35.242374, 33.437103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701597, 35.460770, 33.078373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792368, 35.333942, 33.446712>,  <26.846830, 35.257847, 33.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792368, 35.333942, 33.446712>,  <26.701597, 35.460770, 33.078373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792368, 35.333942, 33.446712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537085, -0.748004, -0.389911,
		0.812431, 0.583057, 0.000553,
		0.226927, -0.317072, 0.920853,
		26.860445, 35.238819, 33.722969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460253, 35.410519, 33.180355>,  <26.701597, 35.460770, 33.078373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460253, 35.410519, 33.180355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266006, 35.139610, 33.401436>,  <27.149458, 34.977066, 33.534084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266006, 35.139610, 33.401436>,  <27.460253, 35.410519, 33.180355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266006, 35.139610, 33.401436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575690, -0.723566, -0.380833,
		0.657843, 0.133246, 0.741275,
		-0.485617, -0.677273, 0.552701,
		27.120321, 34.936428, 33.567245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994410, 35.439529, 33.639713>,  <27.460253, 35.410519, 33.180355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994410, 35.439529, 33.639713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117258, 35.076366, 33.753826>,  <28.190968, 34.858471, 33.822296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117258, 35.076366, 33.753826>,  <27.994410, 35.439529, 33.639713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117258, 35.076366, 33.753826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309543, -0.378773, -0.872190,
		0.899923, 0.179559, -0.397364,
		0.307120, -0.907904, 0.285285,
		28.209394, 34.803997, 33.839413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491175, 35.044079, 32.999786>,  <27.994410, 35.439529, 33.639713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491175, 35.044079, 32.999786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319834, 34.782116, 33.248821>,  <28.217030, 34.624939, 33.398243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319834, 34.782116, 33.248821>,  <28.491175, 35.044079, 32.999786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319834, 34.782116, 33.248821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324556, -0.531514, -0.782404,
		0.843313, -0.537210, 0.015124,
		-0.428354, -0.654902, 0.622587,
		28.191328, 34.585644, 33.435596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434652, 34.549072, 32.639149>,  <28.491175, 35.044079, 32.999786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434652, 34.549072, 32.639149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194675, 34.411701, 32.928181>,  <28.050690, 34.329277, 33.101601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194675, 34.411701, 32.928181>,  <28.434652, 34.549072, 32.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194675, 34.411701, 32.928181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516330, -0.523699, -0.677600,
		0.611124, -0.779612, 0.136866,
		-0.599942, -0.343430, 0.722582,
		28.014692, 34.308674, 33.144955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373922, 33.769402, 32.581379>,  <28.434652, 34.549072, 32.639149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373922, 33.769402, 32.581379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051493, 33.907955, 32.773323>,  <27.858034, 33.991085, 32.888489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051493, 33.907955, 32.773323>,  <28.373922, 33.769402, 32.581379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051493, 33.907955, 32.773323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582710, -0.606209, -0.541257,
		0.103414, -0.715912, 0.690489,
		-0.806074, 0.346381, 0.479860,
		27.809671, 34.011871, 32.917282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679722, 33.648911, 33.231300>,  <28.373922, 33.769402, 32.581379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679722, 33.648911, 33.231300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332439, 33.659874, 33.429478>,  <28.124069, 33.666454, 33.548386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332439, 33.659874, 33.429478>,  <28.679722, 33.648911, 33.231300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332439, 33.659874, 33.429478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471584, -0.356189, -0.806684,
		0.154360, -0.934012, 0.322172,
		-0.868206, 0.027411, 0.495446,
		28.071978, 33.668098, 33.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435146, 33.008408, 33.146263>,  <28.679722, 33.648911, 33.231300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435146, 33.008408, 33.146263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115526, 33.240582, 33.209015>,  <27.923754, 33.379887, 33.246666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115526, 33.240582, 33.209015>,  <28.435146, 33.008408, 33.146263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115526, 33.240582, 33.209015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549159, -0.598286, -0.583505,
		-0.244830, -0.552401, 0.796813,
		-0.799051, 0.580437, 0.156878,
		27.875811, 33.414711, 33.256077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951954, 32.539722, 33.091446>,  <28.435146, 33.008408, 33.146263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951954, 32.539722, 33.091446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784698, 32.893894, 33.010284>,  <27.684345, 33.106400, 32.961590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784698, 32.893894, 33.010284>,  <27.951954, 32.539722, 33.091446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784698, 32.893894, 33.010284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567469, -0.429029, -0.702789,
		-0.709325, -0.178721, 0.681849,
		-0.418136, 0.885434, -0.202903,
		27.659258, 33.159523, 32.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240416, 32.394432, 33.245785>,  <27.951954, 32.539722, 33.091446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240416, 32.394432, 33.245785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303728, 32.690983, 32.984921>,  <27.341717, 32.868912, 32.828403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303728, 32.690983, 32.984921>,  <27.240416, 32.394432, 33.245785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303728, 32.690983, 32.984921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642582, -0.424137, -0.638119,
		-0.749690, 0.520068, 0.409261,
		0.158283, 0.741375, -0.652158,
		27.351213, 32.913395, 32.789272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783419, 32.463032, 32.637768>,  <27.240416, 32.394432, 33.245785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783419, 32.463032, 32.637768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091820, 32.679111, 32.502865>,  <27.276861, 32.808758, 32.421925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091820, 32.679111, 32.502865>,  <26.783419, 32.463032, 32.637768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091820, 32.679111, 32.502865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370977, -0.049466, -0.927324,
		-0.517620, 0.840084, 0.162262,
		0.771003, 0.540197, -0.337256,
		27.323120, 32.841171, 32.401688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902298, 32.151669, 31.917030>,  <26.783419, 32.463032, 32.637768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902298, 32.151669, 31.917030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694864, 32.459476, 31.767950>,  <26.570404, 32.644161, 31.678503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694864, 32.459476, 31.767950>,  <26.902298, 32.151669, 31.917030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694864, 32.459476, 31.767950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509948, 0.628241, 0.587593,
		0.686312, 0.114659, -0.718213,
		-0.518584, 0.769524, -0.372699,
		26.539289, 32.690334, 31.656139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329866, 32.720104, 31.668451>,  <26.902298, 32.151669, 31.917030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329866, 32.720104, 31.668451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971029, 32.828960, 31.807686>,  <26.755728, 32.894276, 31.891226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971029, 32.828960, 31.807686>,  <27.329866, 32.720104, 31.668451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971029, 32.828960, 31.807686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441367, 0.515359, 0.734575,
		0.020522, 0.812614, -0.582440,
		-0.897092, 0.272145, 0.348085,
		26.701902, 32.910603, 31.912111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416222, 33.394997, 31.781094>,  <27.329866, 32.720104, 31.668451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416222, 33.394997, 31.781094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135557, 33.267258, 32.035870>,  <26.967159, 33.190613, 32.188736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135557, 33.267258, 32.035870>,  <27.416222, 33.394997, 31.781094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135557, 33.267258, 32.035870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528162, 0.366904, 0.765785,
		-0.478246, 0.873727, -0.088775,
		-0.701659, -0.319346, 0.636940,
		26.925060, 33.171455, 32.226952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251816, 34.025879, 32.089096>,  <27.416222, 33.394997, 31.781094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251816, 34.025879, 32.089096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253532, 33.706352, 32.329720>,  <27.254562, 33.514637, 32.474094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253532, 33.706352, 32.329720>,  <27.251816, 34.025879, 32.089096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253532, 33.706352, 32.329720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455195, 0.537187, 0.710090,
		-0.890382, 0.270781, 0.365922,
		0.004290, -0.798816, 0.601560,
		27.254820, 33.466709, 32.510189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099529, 34.309799, 32.670113>,  <27.251816, 34.025879, 32.089096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099529, 34.309799, 32.670113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296480, 33.969933, 32.745617>,  <27.414650, 33.766010, 32.790920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296480, 33.969933, 32.745617>,  <27.099529, 34.309799, 32.670113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296480, 33.969933, 32.745617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498058, 0.452898, 0.739474,
		-0.713795, -0.270088, 0.646181,
		0.492376, -0.849668, 0.188757,
		27.444193, 33.715031, 32.802242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876726, 34.178902, 33.256641>,  <27.099529, 34.309799, 32.670113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876726, 34.178902, 33.256641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216690, 33.972034, 33.216267>,  <27.420668, 33.847912, 33.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216690, 33.972034, 33.216267>,  <26.876726, 34.178902, 33.256641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216690, 33.972034, 33.216267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372316, 0.453847, 0.809570,
		-0.372874, -0.725643, 0.578280,
		0.849909, -0.517171, -0.100941,
		27.471663, 33.816883, 33.185986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147558, 33.879032, 33.908516>,  <26.876726, 34.178902, 33.256641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147558, 33.879032, 33.908516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461390, 33.973969, 33.679394>,  <27.649689, 34.030930, 33.541920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461390, 33.973969, 33.679394>,  <27.147558, 33.879032, 33.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461390, 33.973969, 33.679394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387717, 0.533133, 0.751960,
		0.483850, -0.812059, 0.326265,
		0.784579, 0.237338, -0.572806,
		27.696762, 34.045170, 33.507553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682764, 33.651455, 34.265522>,  <27.147558, 33.879032, 33.908516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682764, 33.651455, 34.265522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838205, 33.921249, 34.014423>,  <27.931471, 34.083126, 33.863766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838205, 33.921249, 34.014423>,  <27.682764, 33.651455, 34.265522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838205, 33.921249, 34.014423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458223, 0.449601, 0.766740,
		0.799386, -0.585605, -0.134347,
		0.388604, 0.674482, -0.627742,
		27.954786, 34.123592, 33.826099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417809, 33.662674, 34.341221>,  <27.682764, 33.651455, 34.265522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417809, 33.662674, 34.341221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343487, 34.026058, 34.191456>,  <28.298893, 34.244087, 34.101597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343487, 34.026058, 34.191456>,  <28.417809, 33.662674, 34.341221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343487, 34.026058, 34.191456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701725, 0.389408, 0.596610,
		0.687793, -0.151878, -0.709841,
		-0.185806, 0.908457, -0.374409,
		28.287745, 34.298595, 34.079132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007320, 33.883163, 33.997181>,  <28.417809, 33.662674, 34.341221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007320, 33.883163, 33.997181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788469, 34.174004, 34.163059>,  <28.657158, 34.348507, 34.262585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788469, 34.174004, 34.163059>,  <29.007320, 33.883163, 33.997181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788469, 34.174004, 34.163059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783848, 0.271250, 0.558575,
		0.293654, 0.630672, -0.718346,
		-0.547128, 0.727102, 0.414697,
		28.624331, 34.392136, 34.287468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331806, 34.617218, 33.976753>,  <29.007320, 33.883163, 33.997181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331806, 34.617218, 33.976753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070379, 34.591217, 34.278381>,  <28.913523, 34.575619, 34.459358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070379, 34.591217, 34.278381>,  <29.331806, 34.617218, 33.976753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070379, 34.591217, 34.278381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715112, 0.273315, 0.643361,
		-0.247916, 0.959726, -0.132149,
		-0.653569, -0.064998, 0.754071,
		28.874310, 34.571716, 34.504604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423157, 35.229527, 34.341610>,  <29.331806, 34.617218, 33.976753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423157, 35.229527, 34.341610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312725, 34.923260, 34.573997>,  <29.246466, 34.739498, 34.713432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312725, 34.923260, 34.573997>,  <29.423157, 35.229527, 34.341610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312725, 34.923260, 34.573997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705692, 0.248891, 0.663364,
		-0.652517, 0.593128, 0.471615,
		-0.276080, -0.765671, 0.580971,
		29.229900, 34.693558, 34.748287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192274, 35.385300, 35.058815>,  <29.423157, 35.229527, 34.341610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192274, 35.385300, 35.058815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369026, 35.027409, 35.032894>,  <29.475079, 34.812672, 35.017342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369026, 35.027409, 35.032894>,  <29.192274, 35.385300, 35.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369026, 35.027409, 35.032894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638103, 0.262726, 0.723740,
		-0.630528, -0.361155, 0.687024,
		0.441881, -0.894730, -0.064798,
		29.501591, 34.758991, 35.013454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295366, 35.108780, 35.740601>,  <29.192274, 35.385300, 35.058815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295366, 35.108780, 35.740601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582197, 34.964310, 35.502151>,  <29.754295, 34.877628, 35.359081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582197, 34.964310, 35.502151>,  <29.295366, 35.108780, 35.740601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582197, 34.964310, 35.502151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694970, 0.305357, 0.650979,
		-0.053086, -0.881086, 0.469968,
		0.717076, -0.361172, -0.596118,
		29.797319, 34.855957, 35.323315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858429, 35.246063, 36.075119>,  <29.295366, 35.108780, 35.740601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858429, 35.246063, 36.075119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050632, 35.091747, 35.760090>,  <30.165955, 34.999157, 35.571072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050632, 35.091747, 35.760090>,  <29.858429, 35.246063, 36.075119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050632, 35.091747, 35.760090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876027, 0.169077, 0.451652,
		-0.041084, -0.906959, 0.419210,
		0.480508, -0.385795, -0.787575,
		30.194784, 34.976009, 35.523819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301798, 34.819805, 36.306072>,  <29.858429, 35.246063, 36.075119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301798, 34.819805, 36.306072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440035, 34.942242, 35.951248>,  <30.522978, 35.015705, 35.738354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440035, 34.942242, 35.951248>,  <30.301798, 34.819805, 36.306072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440035, 34.942242, 35.951248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855982, 0.284532, 0.431667,
		0.384526, -0.908488, -0.163675,
		0.345593, 0.306090, -0.887059,
		30.543713, 35.034069, 35.685131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029276, 34.501553, 36.112587>,  <30.301798, 34.819805, 36.306072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029276, 34.501553, 36.112587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998024, 34.843307, 35.907097>,  <30.979273, 35.048363, 35.783802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998024, 34.843307, 35.907097>,  <31.029276, 34.501553, 36.112587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998024, 34.843307, 35.907097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917671, 0.263003, 0.297841,
		0.389584, -0.448162, -0.804597,
		-0.078130, 0.854389, -0.513727,
		30.974585, 35.099625, 35.752979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645716, 34.580227, 35.671177>,  <31.029276, 34.501553, 36.112587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645716, 34.580227, 35.671177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471714, 34.925827, 35.772587>,  <31.367313, 35.133186, 35.833431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471714, 34.925827, 35.772587>,  <31.645716, 34.580227, 35.671177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471714, 34.925827, 35.772587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849043, 0.299830, 0.435002,
		0.299830, 0.404477, -0.864003,
		-0.435002, 0.864003, 0.253520,
		31.341213, 35.185028, 35.848644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114670, 35.171329, 35.595501>,  <31.645716, 34.580227, 35.671177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114670, 35.171329, 35.595501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860737, 35.337410, 35.856148>,  <31.708378, 35.437057, 36.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860737, 35.337410, 35.856148>,  <32.114670, 35.171329, 35.595501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860737, 35.337410, 35.856148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772650, 0.342718, 0.534375,
		-0.001448, 0.842707, -0.538371,
		-0.634831, 0.415199, 0.651614,
		31.670288, 35.461971, 36.051632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438267, 35.770668, 35.702190>,  <32.114670, 35.171329, 35.595501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438267, 35.770668, 35.702190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187534, 35.736370, 36.011959>,  <32.037094, 35.715794, 36.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187534, 35.736370, 36.011959>,  <32.438267, 35.770668, 35.702190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187534, 35.736370, 36.011959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640909, 0.508463, 0.575066,
		-0.443071, 0.856804, -0.263769,
		-0.626836, -0.085743, 0.774419,
		31.999483, 35.710648, 36.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258160, 36.476185, 35.892464>,  <32.438267, 35.770668, 35.702190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258160, 36.476185, 35.892464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225475, 36.258308, 36.226322>,  <32.205864, 36.127583, 36.426636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225475, 36.258308, 36.226322>,  <32.258160, 36.476185, 35.892464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225475, 36.258308, 36.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497128, 0.703554, 0.507815,
		-0.863821, 0.456421, 0.213292,
		-0.081715, -0.544694, 0.834644,
		32.200962, 36.094902, 36.476715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015388, 36.539185, 36.059841>,  <32.258160, 36.476185, 35.892464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015388, 36.539185, 36.059841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380219, 36.654980, 36.175987>,  <33.599117, 36.724457, 36.245674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380219, 36.654980, 36.175987>,  <33.015388, 36.539185, 36.059841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380219, 36.654980, 36.175987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320099, -0.060200, -0.945469,
		-0.256224, 0.955286, -0.147572,
		0.912078, 0.289490, 0.290362,
		33.653843, 36.741825, 36.263096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140125, 37.234875, 35.769722>,  <33.015388, 36.539185, 36.059841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140125, 37.234875, 35.769722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470337, 37.016411, 35.826584>,  <33.668465, 36.885334, 35.860699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470337, 37.016411, 35.826584>,  <33.140125, 37.234875, 35.769722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470337, 37.016411, 35.826584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306967, 0.223186, -0.925181,
		0.473569, 0.807402, 0.351900,
		0.825532, -0.546159, 0.142151,
		33.717995, 36.852562, 35.869228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701027, 37.702366, 35.673763>,  <33.140125, 37.234875, 35.769722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701027, 37.702366, 35.673763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796070, 37.324181, 35.584641>,  <33.853096, 37.097271, 35.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796070, 37.324181, 35.584641>,  <33.701027, 37.702366, 35.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796070, 37.324181, 35.584641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204906, 0.273005, -0.939937,
		0.949502, 0.177684, 0.258599,
		0.237611, -0.945461, -0.222810,
		33.867352, 37.040543, 35.517796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618195, 38.461586, 35.504940>,  <33.701027, 37.702366, 35.673763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618195, 38.461586, 35.504940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803776, 38.400604, 35.155884>,  <33.915123, 38.364014, 34.946449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803776, 38.400604, 35.155884>,  <33.618195, 38.461586, 35.504940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803776, 38.400604, 35.155884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083176, 0.988225, -0.128426,
		0.881948, -0.013000, 0.471167,
		0.463950, -0.152455, -0.872644,
		33.942959, 38.354866, 34.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950817, 38.227852, 35.392647>,  <33.618195, 38.461586, 35.504940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950817, 38.227852, 35.392647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664749, 38.500835, 35.332272>,  <32.493107, 38.664623, 35.296047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664749, 38.500835, 35.332272>,  <32.950817, 38.227852, 35.392647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664749, 38.500835, 35.332272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532100, -0.671633, -0.515537,
		-0.453208, -0.288382, 0.843468,
		-0.715173, 0.682455, -0.150941,
		32.450199, 38.705570, 35.286987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374580, 37.961575, 35.306633>,  <32.950817, 38.227852, 35.392647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374580, 37.961575, 35.306633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314030, 38.266304, 35.054695>,  <32.277699, 38.449142, 34.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314030, 38.266304, 35.054695>,  <32.374580, 37.961575, 35.306633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314030, 38.266304, 35.054695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339604, -0.638485, -0.690656,
		-0.928307, 0.109347, 0.355372,
		-0.151379, 0.761827, -0.629845,
		32.268616, 38.494850, 34.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756775, 37.903748, 34.894592>,  <32.374580, 37.961575, 35.306633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756775, 37.903748, 34.894592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972387, 38.153809, 34.668800>,  <32.101753, 38.303844, 34.533325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972387, 38.153809, 34.668800>,  <31.756775, 37.903748, 34.894592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972387, 38.153809, 34.668800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307080, -0.478188, -0.822823,
		-0.784313, 0.616867, -0.065789,
		0.539032, 0.625148, -0.564477,
		32.134098, 38.341354, 34.499458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380026, 38.121986, 34.378269>,  <31.756775, 37.903748, 34.894592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380026, 38.121986, 34.378269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745300, 38.171017, 34.222801>,  <31.964466, 38.200436, 34.129520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745300, 38.171017, 34.222801>,  <31.380026, 38.121986, 34.378269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745300, 38.171017, 34.222801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264780, -0.546534, -0.794476,
		-0.309807, 0.828417, -0.466631,
		0.913188, 0.122580, -0.388668,
		32.019257, 38.207790, 34.106201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301006, 38.267696, 33.622257>,  <31.380026, 38.121986, 34.378269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301006, 38.267696, 33.622257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680117, 38.155750, 33.683441>,  <31.907583, 38.088581, 33.720150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680117, 38.155750, 33.683441>,  <31.301006, 38.267696, 33.622257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680117, 38.155750, 33.683441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004478, -0.467861, -0.883791,
		0.318903, 0.838321, -0.442174,
		0.947777, -0.279864, 0.152956,
		31.964449, 38.071793, 33.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687214, 38.387424, 33.059910>,  <31.301006, 38.267696, 33.622257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687214, 38.387424, 33.059910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952215, 38.135586, 33.222240>,  <32.111217, 37.984482, 33.319637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952215, 38.135586, 33.222240>,  <31.687214, 38.387424, 33.059910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952215, 38.135586, 33.222240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125748, -0.440612, -0.888847,
		0.738428, 0.639896, -0.212736,
		0.662503, -0.629598, 0.405826,
		32.150967, 37.946705, 33.343987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216454, 38.428333, 32.655422>,  <31.687214, 38.387424, 33.059910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216454, 38.428333, 32.655422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255718, 38.081730, 32.851192>,  <32.279278, 37.873768, 32.968655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255718, 38.081730, 32.851192>,  <32.216454, 38.428333, 32.655422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255718, 38.081730, 32.851192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443118, -0.402295, -0.801127,
		0.891072, 0.295516, 0.344472,
		0.098166, -0.866504, 0.489422,
		32.285168, 37.821777, 32.998020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735157, 38.260532, 32.434875>,  <32.216454, 38.428333, 32.655422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735157, 38.260532, 32.434875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605827, 37.905277, 32.565521>,  <32.528229, 37.692123, 32.643909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605827, 37.905277, 32.565521>,  <32.735157, 38.260532, 32.434875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605827, 37.905277, 32.565521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132435, -0.384220, -0.913693,
		0.936976, -0.252162, 0.241847,
		-0.323321, -0.888138, 0.326610,
		32.508831, 37.638836, 32.663506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211079, 37.804817, 32.231750>,  <32.735157, 38.260532, 32.434875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211079, 37.804817, 32.231750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876278, 37.594662, 32.292931>,  <32.675396, 37.468567, 32.329639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876278, 37.594662, 32.292931>,  <33.211079, 37.804817, 32.231750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876278, 37.594662, 32.292931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134398, -0.468327, -0.873273,
		0.530439, -0.710376, 0.462602,
		-0.837001, -0.525391, 0.152946,
		32.625175, 37.437046, 32.338814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470257, 37.141361, 32.165394>,  <33.211079, 37.804817, 32.231750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470257, 37.141361, 32.165394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071758, 37.136639, 32.131081>,  <32.832661, 37.133804, 32.110493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071758, 37.136639, 32.131081>,  <33.470257, 37.141361, 32.165394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071758, 37.136639, 32.131081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080197, -0.499550, -0.862565,
		-0.032667, -0.866205, 0.498620,
		-0.996243, -0.011810, -0.085785,
		32.772884, 37.133095, 32.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321487, 36.448559, 32.082691>,  <33.470257, 37.141361, 32.165394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321487, 36.448559, 32.082691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004528, 36.646301, 31.939743>,  <32.814354, 36.764946, 31.853973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004528, 36.646301, 31.939743>,  <33.321487, 36.448559, 32.082691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004528, 36.646301, 31.939743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035408, -0.622140, -0.782105,
		-0.608972, -0.607087, 0.510489,
		-0.792401, 0.494355, -0.357370,
		32.766808, 36.794609, 31.832531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928143, 36.003662, 31.788660>,  <33.321487, 36.448559, 32.082691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928143, 36.003662, 31.788660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781666, 36.331665, 31.612707>,  <32.693779, 36.528465, 31.507135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781666, 36.331665, 31.612707>,  <32.928143, 36.003662, 31.788660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781666, 36.331665, 31.612707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026547, -0.481733, -0.875916,
		-0.930161, -0.309075, 0.198175,
		-0.366191, 0.820004, -0.439884,
		32.671810, 36.577667, 31.480742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356949, 35.803368, 31.478418>,  <32.928143, 36.003662, 31.788660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356949, 35.803368, 31.478418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424881, 36.154358, 31.299000>,  <32.465641, 36.364952, 31.191349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424881, 36.154358, 31.299000>,  <32.356949, 35.803368, 31.478418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424881, 36.154358, 31.299000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174500, -0.421191, -0.890027,
		-0.969900, 0.229429, 0.081587,
		0.169834, 0.877474, -0.448548,
		32.475830, 36.417599, 31.164434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993280, 35.757240, 30.958601>,  <32.356949, 35.803368, 31.478418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993280, 35.757240, 30.958601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239731, 36.054283, 30.853582>,  <32.387600, 36.232510, 30.790571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239731, 36.054283, 30.853582>,  <31.993280, 35.757240, 30.958601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239731, 36.054283, 30.853582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003787, -0.336118, -0.941812,
		-0.787640, 0.579279, -0.209902,
		0.616124, 0.742604, -0.262547,
		32.424568, 36.277065, 30.774818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714123, 35.994942, 30.351875>,  <31.993280, 35.757240, 30.958601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714123, 35.994942, 30.351875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090698, 36.129005, 30.366646>,  <32.316643, 36.209442, 30.375507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090698, 36.129005, 30.366646>,  <31.714123, 35.994942, 30.351875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090698, 36.129005, 30.366646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063533, -0.068775, -0.995607,
		-0.331146, 0.939648, -0.086041,
		0.941438, 0.335158, 0.036924,
		32.373131, 36.229553, 30.377724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652960, 36.495228, 29.939846>,  <31.714123, 35.994942, 30.351875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652960, 36.495228, 29.939846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040974, 36.398056, 29.941820>,  <32.273781, 36.339752, 29.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040974, 36.398056, 29.941820>,  <31.652960, 36.495228, 29.939846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040974, 36.398056, 29.941820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014979, 0.039524, -0.999106,
		0.242513, 0.969239, 0.041978,
		0.970032, -0.242925, 0.004933,
		32.331982, 36.325180, 29.943300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933502, 36.988914, 29.606188>,  <31.652960, 36.495228, 29.939846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933502, 36.988914, 29.606188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223660, 36.713585, 29.607510>,  <32.397755, 36.548386, 29.608303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223660, 36.713585, 29.607510>,  <31.933502, 36.988914, 29.606188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223660, 36.713585, 29.607510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150780, 0.154212, -0.976465,
		0.671618, 0.708819, 0.215650,
		0.725393, -0.688327, 0.003304,
		32.441277, 36.507088, 29.608501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622147, 37.220726, 29.315084>,  <31.933502, 36.988914, 29.606188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622147, 37.220726, 29.315084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604588, 36.823307, 29.273243>,  <32.594051, 36.584858, 29.248138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604588, 36.823307, 29.273243>,  <32.622147, 37.220726, 29.315084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604588, 36.823307, 29.273243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090319, 0.100327, -0.990846,
		0.994945, -0.052946, 0.085332,
		-0.043900, -0.993545, -0.104602,
		32.591419, 36.525242, 29.241863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094711, 37.125164, 28.644485>,  <32.622147, 37.220726, 29.315084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094711, 37.125164, 28.644485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918648, 36.771004, 28.704269>,  <32.813011, 36.558510, 28.740139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918648, 36.771004, 28.704269>,  <33.094711, 37.125164, 28.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918648, 36.771004, 28.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179272, -0.249749, -0.951571,
		0.879844, -0.392044, 0.268655,
		-0.440154, -0.885396, 0.149458,
		32.786602, 36.505386, 28.749107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560886, 36.534542, 28.367718>,  <33.094711, 37.125164, 28.644485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560886, 36.534542, 28.367718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173222, 36.436066, 28.371984>,  <32.940620, 36.376980, 28.374544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173222, 36.436066, 28.371984>,  <33.560886, 36.534542, 28.367718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173222, 36.436066, 28.371984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085225, -0.375489, -0.922900,
		0.231212, -0.893532, 0.384891,
		-0.969164, -0.246188, 0.010666,
		32.882473, 36.362209, 28.375185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581806, 35.888878, 28.045162>,  <33.560886, 36.534542, 28.367718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581806, 35.888878, 28.045162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200424, 36.009399, 28.040323>,  <32.971596, 36.081715, 28.037420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200424, 36.009399, 28.040323>,  <33.581806, 35.888878, 28.045162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200424, 36.009399, 28.040323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089874, -0.322229, -0.942386,
		-0.287838, -0.897434, 0.334309,
		-0.953453, 0.301300, -0.012094,
		32.914391, 36.099792, 28.036694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138481, 35.329517, 27.841141>,  <33.581806, 35.888878, 28.045162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138481, 35.329517, 27.841141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907784, 35.644577, 27.754452>,  <32.769363, 35.833614, 27.702438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907784, 35.644577, 27.754452>,  <33.138481, 35.329517, 27.841141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907784, 35.644577, 27.754452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124432, -0.346897, -0.929613,
		-0.807392, -0.509182, 0.298080,
		-0.576745, 0.787653, -0.216723,
		32.734760, 35.880871, 27.689434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732033, 35.039722, 27.284670>,  <33.138481, 35.329517, 27.841141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732033, 35.039722, 27.284670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664265, 35.433613, 27.268642>,  <32.623604, 35.669949, 27.259026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664265, 35.433613, 27.268642>,  <32.732033, 35.039722, 27.284670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664265, 35.433613, 27.268642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170657, -0.069357, -0.982886,
		-0.970655, -0.159686, 0.179801,
		-0.169424, 0.984728, -0.040070,
		32.613438, 35.729031, 27.256622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974964, 35.207142, 26.999626>,  <32.732033, 35.039722, 27.284670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974964, 35.207142, 26.999626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180157, 35.545815, 26.943081>,  <32.303272, 35.749020, 26.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180157, 35.545815, 26.943081>,  <31.974964, 35.207142, 26.999626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180157, 35.545815, 26.943081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250878, -0.009614, -0.967971,
		-0.820921, 0.532015, 0.207482,
		0.512980, 0.846680, -0.141364,
		32.334049, 35.799820, 26.900671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568745, 35.617908, 26.636801>,  <31.974964, 35.207142, 26.999626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568745, 35.617908, 26.636801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927046, 35.779102, 26.561722>,  <32.142025, 35.875816, 26.516674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927046, 35.779102, 26.561722>,  <31.568745, 35.617908, 26.636801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927046, 35.779102, 26.561722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239508, 0.081768, -0.967445,
		-0.374516, 0.911548, 0.169761,
		0.895753, 0.402982, -0.187700,
		32.195770, 35.899998, 26.505411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488466, 36.328640, 26.327204>,  <31.568745, 35.617908, 26.636801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488466, 36.328640, 26.327204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846979, 36.198631, 26.206514>,  <32.062088, 36.120628, 26.134100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846979, 36.198631, 26.206514>,  <31.488466, 36.328640, 26.327204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846979, 36.198631, 26.206514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289594, 0.086330, -0.953248,
		0.335872, 0.941759, -0.016747,
		0.896284, -0.325019, -0.301723,
		32.115864, 36.101124, 26.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622215, 36.781258, 25.799950>,  <31.488466, 36.328640, 26.327204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622215, 36.781258, 25.799950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878790, 36.477573, 25.755836>,  <32.032734, 36.295364, 25.729368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878790, 36.477573, 25.755836>,  <31.622215, 36.781258, 25.799950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878790, 36.477573, 25.755836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152636, 0.014583, -0.988175,
		0.751840, 0.650683, -0.106529,
		0.641435, -0.759209, -0.110282,
		32.071220, 36.249809, 25.722752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153572, 37.007610, 25.346369>,  <31.622215, 36.781258, 25.799950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153572, 37.007610, 25.346369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140045, 36.607979, 25.356953>,  <32.131927, 36.368198, 25.363304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140045, 36.607979, 25.356953>,  <32.153572, 37.007610, 25.346369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140045, 36.607979, 25.356953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189254, -0.019596, -0.981733,
		0.981346, -0.038207, -0.188416,
		-0.033817, -0.999078, 0.026461,
		32.129902, 36.308254, 25.364891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553257, 36.759415, 24.781590>,  <32.153572, 37.007610, 25.346369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553257, 36.759415, 24.781590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317604, 36.449734, 24.874146>,  <32.176212, 36.263927, 24.929680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317604, 36.449734, 24.874146>,  <32.553257, 36.759415, 24.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317604, 36.449734, 24.874146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218050, -0.123418, -0.968102,
		0.778063, -0.620790, -0.096106,
		-0.589127, -0.774201, 0.231391,
		32.140865, 36.217472, 24.943563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707253, 36.192482, 24.187616>,  <32.553257, 36.759415, 24.781590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707253, 36.192482, 24.187616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364555, 36.097744, 24.370876>,  <32.158939, 36.040901, 24.480831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364555, 36.097744, 24.370876>,  <32.707253, 36.192482, 24.187616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364555, 36.097744, 24.370876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426435, -0.174334, -0.887559,
		0.290089, -0.955777, 0.048358,
		-0.856739, -0.236850, 0.458149,
		32.107533, 36.026688, 24.508322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553879, 35.430862, 24.083143>,  <32.707253, 36.192482, 24.187616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553879, 35.430862, 24.083143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197021, 35.587109, 24.173916>,  <31.982906, 35.680859, 24.228378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197021, 35.587109, 24.173916>,  <32.553879, 35.430862, 24.083143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197021, 35.587109, 24.173916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365291, -0.328228, -0.871108,
		-0.265785, -0.860049, 0.435516,
		-0.892144, 0.390618, 0.226930,
		31.929379, 35.704296, 24.241995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995005, 34.900841, 23.931992>,  <32.553879, 35.430862, 24.083143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995005, 34.900841, 23.931992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800394, 35.248329, 23.969133>,  <31.683628, 35.456821, 23.991419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800394, 35.248329, 23.969133>,  <31.995005, 34.900841, 23.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800394, 35.248329, 23.969133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610869, -0.262269, -0.747030,
		-0.624607, -0.420170, 0.658273,
		-0.486525, 0.868719, 0.092853,
		31.654436, 35.508945, 23.996990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280933, 34.690937, 23.925898>,  <31.995005, 34.900841, 23.931992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280933, 34.690937, 23.925898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286463, 35.078556, 23.827297>,  <31.289780, 35.311127, 23.768137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286463, 35.078556, 23.827297>,  <31.280933, 34.690937, 23.925898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286463, 35.078556, 23.827297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558035, -0.197084, -0.806073,
		-0.829702, 0.148696, 0.538037,
		0.013821, 0.969045, -0.246499,
		31.290609, 35.369270, 23.753347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630013, 34.888340, 23.892450>,  <31.280933, 34.690937, 23.925898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630013, 34.888340, 23.892450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808611, 35.153378, 23.651915>,  <30.915770, 35.312401, 23.507593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808611, 35.153378, 23.651915>,  <30.630013, 34.888340, 23.892450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808611, 35.153378, 23.651915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719650, -0.133455, -0.681391,
		-0.531740, 0.736990, 0.417251,
		0.446494, 0.662597, -0.601339,
		30.942558, 35.352158, 23.471514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136642, 35.184078, 23.464516>,  <30.630013, 34.888340, 23.892450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136642, 35.184078, 23.464516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481464, 35.290726, 23.292109>,  <30.688356, 35.354713, 23.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481464, 35.290726, 23.292109>,  <30.136642, 35.184078, 23.464516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481464, 35.290726, 23.292109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406125, -0.145365, -0.902182,
		-0.303195, 0.952776, -0.017031,
		0.862053, 0.266620, -0.431020,
		30.740080, 35.370712, 23.162802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923744, 35.573494, 22.909403>,  <30.136642, 35.184078, 23.464516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923744, 35.573494, 22.909403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291933, 35.447353, 22.817070>,  <30.512846, 35.371670, 22.761671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291933, 35.447353, 22.817070>,  <29.923744, 35.573494, 22.909403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291933, 35.447353, 22.817070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299790, -0.190859, -0.934718,
		0.250705, 0.929585, -0.270219,
		0.920474, -0.315348, -0.230831,
		30.568075, 35.352749, 22.747820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122452, 35.981548, 22.315378>,  <29.923744, 35.573494, 22.909403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122452, 35.981548, 22.315378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370432, 35.668694, 22.290304>,  <30.519220, 35.480980, 22.275261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370432, 35.668694, 22.290304>,  <30.122452, 35.981548, 22.315378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370432, 35.668694, 22.290304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127121, -0.021285, -0.991659,
		0.774276, 0.622747, -0.112621,
		0.619949, -0.782134, -0.062684,
		30.556417, 35.434052, 22.271500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645575, 36.106743, 21.764610>,  <30.122452, 35.981548, 22.315378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645575, 36.106743, 21.764610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658621, 35.707176, 21.777925>,  <30.666449, 35.467438, 21.785915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658621, 35.707176, 21.777925>,  <30.645575, 36.106743, 21.764610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658621, 35.707176, 21.777925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029276, -0.034248, -0.998984,
		0.999039, 0.031606, -0.030361,
		0.032614, -0.998914, 0.033290,
		30.668406, 35.407501, 21.787912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940540, 35.973785, 21.173733>,  <30.645575, 36.106743, 21.764610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940540, 35.973785, 21.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815838, 35.605988, 21.269516>,  <30.741016, 35.385307, 21.326986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815838, 35.605988, 21.269516>,  <30.940540, 35.973785, 21.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815838, 35.605988, 21.269516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099259, -0.282155, -0.954220,
		0.944963, -0.273716, 0.179232,
		-0.311757, -0.919493, 0.239458,
		30.722311, 35.330139, 21.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393347, 35.496479, 20.824736>,  <30.940540, 35.973785, 21.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393347, 35.496479, 20.824736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040760, 35.323235, 20.900026>,  <30.829208, 35.219288, 20.945200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040760, 35.323235, 20.900026>,  <31.393347, 35.496479, 20.824736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040760, 35.323235, 20.900026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047408, -0.315410, -0.947770,
		0.469856, -0.844354, 0.257492,
		-0.881469, -0.433109, 0.188226,
		30.776320, 35.193302, 20.956493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373566, 34.791603, 20.545471>,  <31.393347, 35.496479, 20.824736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373566, 34.791603, 20.545471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990660, 34.907215, 20.541372>,  <30.760916, 34.976582, 20.538912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990660, 34.907215, 20.541372>,  <31.373566, 34.791603, 20.545471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990660, 34.907215, 20.541372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115894, -0.415820, -0.902032,
		-0.264979, -0.862296, 0.431547,
		-0.957264, 0.289033, -0.010248,
		30.703480, 34.993927, 20.538298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105856, 34.251419, 20.133749>,  <31.373566, 34.791603, 20.545471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105856, 34.251419, 20.133749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789759, 34.496033, 20.149466>,  <30.600100, 34.642799, 20.158895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789759, 34.496033, 20.149466>,  <31.105856, 34.251419, 20.133749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789759, 34.496033, 20.149466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276424, -0.298509, -0.913500,
		-0.546905, -0.732749, 0.404937,
		-0.790243, 0.611532, 0.039293,
		30.552685, 34.679493, 20.161253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428444, 33.854080, 20.015484>,  <31.105856, 34.251419, 20.133749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428444, 33.854080, 20.015484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322502, 34.230087, 19.929485>,  <30.258936, 34.455692, 19.877886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322502, 34.230087, 19.929485>,  <30.428444, 33.854080, 20.015484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322502, 34.230087, 19.929485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419368, -0.313057, -0.852130,
		-0.868322, -0.135528, 0.477126,
		-0.264855, 0.940015, -0.214999,
		30.243046, 34.512093, 19.864986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687071, 33.863281, 19.659645>,  <30.428444, 33.854080, 20.015484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687071, 33.863281, 19.659645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821804, 34.225121, 19.555153>,  <29.902643, 34.442226, 19.492458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821804, 34.225121, 19.555153>,  <29.687071, 33.863281, 19.659645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821804, 34.225121, 19.555153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324247, -0.149031, -0.934159,
		-0.883973, 0.399357, 0.243117,
		0.336831, 0.904601, -0.261229,
		29.922853, 34.496502, 19.476784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146198, 34.236126, 19.250273>,  <29.687071, 33.863281, 19.659645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146198, 34.236126, 19.250273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477139, 34.443367, 19.163498>,  <29.675703, 34.567711, 19.111433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477139, 34.443367, 19.163498>,  <29.146198, 34.236126, 19.250273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477139, 34.443367, 19.163498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127702, -0.202600, -0.970899,
		-0.546979, 0.830975, -0.101458,
		0.827349, 0.518106, -0.216935,
		29.725344, 34.598797, 19.098417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952419, 34.855476, 18.830938>,  <29.146198, 34.236126, 19.250273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952419, 34.855476, 18.830938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310001, 34.691017, 18.759602>,  <29.524551, 34.592342, 18.716801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310001, 34.691017, 18.759602>,  <28.952419, 34.855476, 18.830938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310001, 34.691017, 18.759602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219737, -0.055293, -0.973991,
		0.390590, 0.909892, -0.139773,
		0.893955, -0.411144, -0.178340,
		29.578188, 34.567673, 18.706099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261713, 35.247509, 18.222818>,  <28.952419, 34.855476, 18.830938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261713, 35.247509, 18.222818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385065, 34.867435, 18.240965>,  <29.459076, 34.639393, 18.251854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385065, 34.867435, 18.240965>,  <29.261713, 35.247509, 18.222818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385065, 34.867435, 18.240965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203616, -0.112519, -0.972564,
		0.929217, 0.290680, -0.228170,
		0.308378, -0.950182, 0.045368,
		29.477579, 34.582382, 18.254576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714098, 35.180511, 17.718237>,  <29.261713, 35.247509, 18.222818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714098, 35.180511, 17.718237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515921, 34.841755, 17.795506>,  <29.397015, 34.638500, 17.841867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515921, 34.841755, 17.795506>,  <29.714098, 35.180511, 17.718237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515921, 34.841755, 17.795506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324066, -0.026123, -0.945674,
		0.805927, -0.531127, -0.261505,
		-0.495442, -0.846889, 0.193173,
		29.367289, 34.587688, 17.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259209, 35.102066, 18.379208>,  <29.714098, 35.180511, 17.718237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259209, 35.102066, 18.379208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250431, 35.169449, 17.985022>,  <30.245165, 35.209881, 17.748510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250431, 35.169449, 17.985022>,  <30.259209, 35.102066, 18.379208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250431, 35.169449, 17.985022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925097, -0.370346, -0.083911,
		-0.379098, -0.913491, -0.147715,
		-0.021946, 0.168461, -0.985464,
		30.243847, 35.219986, 17.689383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866861, 34.894367, 18.169308>,  <30.259209, 35.102066, 18.379208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866861, 34.894367, 18.169308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747482, 35.007484, 17.804680>,  <30.675854, 35.075356, 17.585903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747482, 35.007484, 17.804680>,  <30.866861, 34.894367, 18.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747482, 35.007484, 17.804680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818928, -0.414659, -0.396755,
		-0.490189, -0.864921, -0.107830,
		-0.298449, 0.282790, -0.911569,
		30.657948, 35.092323, 17.531210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813465, 34.368164, 17.655813>,  <30.866861, 34.894367, 18.169308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813465, 34.368164, 17.655813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832397, 34.488129, 17.274696>,  <30.843758, 34.560108, 17.046026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832397, 34.488129, 17.274696>,  <30.813465, 34.368164, 17.655813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832397, 34.488129, 17.274696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752393, 0.616696, 0.231493,
		0.657011, -0.727833, -0.196459,
		0.047333, 0.299908, -0.952793,
		30.846598, 34.578102, 16.988859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551031, 34.415436, 17.503862>,  <30.813465, 34.368164, 17.655813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551031, 34.415436, 17.503862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335482, 34.668072, 17.280899>,  <31.206152, 34.819653, 17.147121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335482, 34.668072, 17.280899>,  <31.551031, 34.415436, 17.503862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335482, 34.668072, 17.280899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711458, 0.695534, 0.100303,
		0.451048, -0.342524, -0.824156,
		-0.538872, 0.631594, -0.557410,
		31.173820, 34.857552, 17.113676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076580, 34.732193, 17.134995>,  <31.551031, 34.415436, 17.503862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076580, 34.732193, 17.134995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775108, 34.991932, 17.094370>,  <31.594225, 35.147778, 17.069996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775108, 34.991932, 17.094370>,  <32.076580, 34.732193, 17.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775108, 34.991932, 17.094370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646341, 0.760302, 0.064688,
		0.119221, -0.016889, -0.992724,
		-0.753678, 0.649350, -0.101560,
		31.549006, 35.186737, 17.063902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210960, 35.307346, 16.729073>,  <32.076580, 34.732193, 17.134995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210960, 35.307346, 16.729073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949493, 35.431587, 17.005116>,  <31.792614, 35.506130, 17.170742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949493, 35.431587, 17.005116>,  <32.210960, 35.307346, 16.729073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949493, 35.431587, 17.005116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615792, 0.748375, 0.246446,
		-0.439912, 0.586055, -0.680453,
		-0.653665, 0.310603, 0.690107,
		31.753393, 35.524769, 17.212147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137074, 36.050846, 16.726446>,  <32.210960, 35.307346, 16.729073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137074, 36.050846, 16.726446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027618, 35.953167, 17.098574>,  <31.961945, 35.894558, 17.321850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027618, 35.953167, 17.098574>,  <32.137074, 36.050846, 16.726446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027618, 35.953167, 17.098574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520185, 0.776000, 0.356696,
		-0.809030, 0.581543, -0.085318,
		-0.273641, -0.244197, 0.930316,
		31.945526, 35.879910, 17.377668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441578, 36.532951, 17.187281>,  <32.137074, 36.050846, 16.726446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441578, 36.532951, 17.187281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248962, 36.310158, 17.457951>,  <32.133392, 36.176483, 17.620352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248962, 36.310158, 17.457951>,  <32.441578, 36.532951, 17.187281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248962, 36.310158, 17.457951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377269, 0.565156, 0.733667,
		-0.791066, 0.608579, -0.062013,
		-0.481541, -0.556984, 0.676674,
		32.104500, 36.143063, 17.660954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092617, 37.075882, 17.593994>,  <32.441578, 36.532951, 17.187281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092617, 37.075882, 17.593994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104134, 36.726246, 17.787960>,  <32.111042, 36.516464, 17.904341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104134, 36.726246, 17.787960>,  <32.092617, 37.075882, 17.593994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104134, 36.726246, 17.787960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095440, 0.485305, 0.869120,
		-0.995019, 0.021257, 0.097396,
		0.028792, -0.874086, 0.484916,
		32.112770, 36.464020, 17.933435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558506, 37.092922, 18.185452>,  <32.092617, 37.075882, 17.593994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558506, 37.092922, 18.185452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843777, 36.823097, 18.261705>,  <32.014938, 36.661201, 18.307459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843777, 36.823097, 18.261705>,  <31.558506, 37.092922, 18.185452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843777, 36.823097, 18.261705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182659, 0.441391, 0.878527,
		-0.676769, -0.591723, 0.438004,
		0.713175, -0.674566, 0.190636,
		32.057728, 36.620728, 18.318895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498104, 36.961849, 18.929634>,  <31.558506, 37.092922, 18.185452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498104, 36.961849, 18.929634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853998, 36.792225, 18.862053>,  <32.067535, 36.690449, 18.821505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853998, 36.792225, 18.862053>,  <31.498104, 36.961849, 18.929634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853998, 36.792225, 18.862053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326277, 0.331948, 0.885073,
		-0.319242, -0.842605, 0.433707,
		0.889735, -0.424061, -0.168951,
		32.120918, 36.665009, 18.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633541, 36.612995, 19.520752>,  <31.498104, 36.961849, 18.929634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633541, 36.612995, 19.520752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988789, 36.658882, 19.342726>,  <32.201939, 36.686417, 19.235910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988789, 36.658882, 19.342726>,  <31.633541, 36.612995, 19.520752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988789, 36.658882, 19.342726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370995, 0.392679, 0.841526,
		0.271307, -0.912493, 0.306185,
		0.888119, 0.114719, -0.445067,
		32.255226, 36.693298, 19.209206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053913, 36.280884, 19.914272>,  <31.633541, 36.612995, 19.520752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053913, 36.280884, 19.914272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303398, 36.510525, 19.702089>,  <32.453091, 36.648308, 19.574780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303398, 36.510525, 19.702089>,  <32.053913, 36.280884, 19.914272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303398, 36.510525, 19.702089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303113, 0.447889, 0.841141,
		0.720486, -0.685423, 0.105338,
		0.623717, 0.574100, -0.530459,
		32.490513, 36.682755, 19.542952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748035, 36.284851, 20.298306>,  <32.053913, 36.280884, 19.914272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748035, 36.284851, 20.298306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771141, 36.604012, 20.058300>,  <32.785004, 36.795509, 19.914297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771141, 36.604012, 20.058300>,  <32.748035, 36.284851, 20.298306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771141, 36.604012, 20.058300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488640, 0.501507, 0.713948,
		0.870571, -0.334432, -0.360916,
		0.057765, 0.797901, -0.600014,
		32.788471, 36.843380, 19.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418060, 36.559753, 20.360027>,  <32.748035, 36.284851, 20.298306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418060, 36.559753, 20.360027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188881, 36.855892, 20.219395>,  <33.051373, 37.033577, 20.135015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188881, 36.855892, 20.219395>,  <33.418060, 36.559753, 20.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188881, 36.855892, 20.219395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065991, 0.469253, 0.880595,
		0.816928, 0.481338, -0.317716,
		-0.572953, 0.740348, -0.351582,
		33.016994, 37.077995, 20.113920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787270, 37.081490, 20.617455>,  <33.418060, 36.559753, 20.360027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787270, 37.081490, 20.617455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455196, 37.276173, 20.508705>,  <33.255951, 37.392982, 20.443455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455196, 37.276173, 20.508705>,  <33.787270, 37.081490, 20.617455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455196, 37.276173, 20.508705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105811, 0.616370, 0.780315,
		0.547359, 0.619037, -0.563198,
		-0.830182, 0.486705, -0.271874,
		33.206142, 37.422184, 20.427143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868919, 37.701420, 20.781500>,  <33.787270, 37.081490, 20.617455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868919, 37.701420, 20.781500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472897, 37.706902, 20.725498>,  <33.235283, 37.710190, 20.691896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472897, 37.706902, 20.725498>,  <33.868919, 37.701420, 20.781500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472897, 37.706902, 20.725498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109742, 0.547447, 0.829614,
		0.088012, 0.836729, -0.540499,
		-0.990056, 0.013700, -0.140006,
		33.175880, 37.711010, 20.683496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647137, 38.393108, 20.780432>,  <33.868919, 37.701420, 20.781500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647137, 38.393108, 20.780432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335712, 38.171402, 20.898157>,  <33.148857, 38.038376, 20.968792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335712, 38.171402, 20.898157>,  <33.647137, 38.393108, 20.780432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335712, 38.171402, 20.898157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046925, 0.519084, 0.853434,
		-0.625808, 0.650642, -0.430150,
		-0.778564, -0.554271, 0.294316,
		33.102142, 38.005119, 20.986452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274662, 38.822231, 21.302631>,  <33.647137, 38.393108, 20.780432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274662, 38.822231, 21.302631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137150, 38.456024, 21.386190>,  <33.054642, 38.236298, 21.436327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137150, 38.456024, 21.386190>,  <33.274662, 38.822231, 21.302631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137150, 38.456024, 21.386190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127650, 0.265954, 0.955497,
		-0.930334, 0.301815, -0.208295,
		-0.343780, -0.915520, 0.208899,
		33.034016, 38.181370, 21.448860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628681, 38.872448, 21.806509>,  <33.274662, 38.822231, 21.302631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628681, 38.872448, 21.806509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752094, 38.496487, 21.864996>,  <32.826141, 38.270908, 21.900089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752094, 38.496487, 21.864996>,  <32.628681, 38.872448, 21.806509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752094, 38.496487, 21.864996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243830, 0.070434, 0.967257,
		-0.919431, -0.334085, -0.207446,
		0.308535, -0.939908, 0.146219,
		32.844654, 38.214516, 21.908861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102367, 38.405579, 22.168684>,  <32.628681, 38.872448, 21.806509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102367, 38.405579, 22.168684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441635, 38.206181, 22.240374>,  <32.645195, 38.086544, 22.283388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441635, 38.206181, 22.240374>,  <32.102367, 38.405579, 22.168684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441635, 38.206181, 22.240374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139973, 0.115412, 0.983406,
		-0.510905, -0.859177, 0.028113,
		0.848165, -0.498492, 0.179226,
		32.696083, 38.056633, 22.294142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952175, 37.898098, 22.726622>,  <32.102367, 38.405579, 22.168684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952175, 37.898098, 22.726622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351723, 37.914436, 22.736391>,  <32.591450, 37.924240, 22.742252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351723, 37.914436, 22.736391>,  <31.952175, 37.898098, 22.726622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351723, 37.914436, 22.736391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023590, -0.020748, 0.999506,
		0.041335, -0.998950, -0.019761,
		0.998867, 0.040848, 0.024423,
		32.651382, 37.926689, 22.743717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202717, 37.443726, 23.188484>,  <31.952175, 37.898098, 22.726622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202717, 37.443726, 23.188484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515991, 37.692123, 23.175983>,  <32.703957, 37.841164, 23.168482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515991, 37.692123, 23.175983>,  <32.202717, 37.443726, 23.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515991, 37.692123, 23.175983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000826, 0.049226, 0.998787,
		0.621784, -0.782264, 0.038041,
		0.783189, 0.620999, -0.031254,
		32.750946, 37.878422, 23.166607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671398, 37.203876, 23.735563>,  <32.202717, 37.443726, 23.188484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671398, 37.203876, 23.735563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761292, 37.588242, 23.670891>,  <32.815228, 37.818859, 23.632088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761292, 37.588242, 23.670891>,  <32.671398, 37.203876, 23.735563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761292, 37.588242, 23.670891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168277, 0.201703, 0.964883,
		0.959780, -0.189635, 0.207029,
		0.224734, 0.960913, -0.161680,
		32.828712, 37.876514, 23.622387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391476, 37.383720, 24.019106>,  <32.671398, 37.203876, 23.735563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391476, 37.383720, 24.019106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158764, 37.708588, 24.001587>,  <33.019138, 37.903507, 23.991076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158764, 37.708588, 24.001587>,  <33.391476, 37.383720, 24.019106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158764, 37.708588, 24.001587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059295, 0.096055, 0.993608,
		0.811185, 0.575461, -0.104040,
		-0.581776, 0.812169, -0.043796,
		32.984230, 37.952240, 23.988449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628635, 37.779385, 24.608213>,  <33.391476, 37.383720, 24.019106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628635, 37.779385, 24.608213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296688, 37.990097, 24.534647>,  <33.097519, 38.116524, 24.490507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296688, 37.990097, 24.534647>,  <33.628635, 37.779385, 24.608213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296688, 37.990097, 24.534647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008223, 0.341132, 0.939979,
		0.557898, 0.778547, -0.287427,
		-0.829869, 0.526777, -0.183915,
		33.047726, 38.148129, 24.479473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782810, 38.393242, 24.905735>,  <33.628635, 37.779385, 24.608213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782810, 38.393242, 24.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385014, 38.390682, 24.863874>,  <33.146336, 38.389145, 24.838758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385014, 38.390682, 24.863874>,  <33.782810, 38.393242, 24.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385014, 38.390682, 24.863874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098728, 0.393102, 0.914179,
		0.035289, 0.919472, -0.391567,
		-0.994489, -0.006398, -0.104650,
		33.086666, 38.388763, 24.832479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431271, 39.082592, 24.973219>,  <33.782810, 38.393242, 24.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431271, 39.082592, 24.973219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136192, 38.825569, 25.056091>,  <32.959145, 38.671356, 25.105814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136192, 38.825569, 25.056091>,  <33.431271, 39.082592, 24.973219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136192, 38.825569, 25.056091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155923, 0.460727, 0.873738,
		-0.656885, 0.612246, -0.440065,
		-0.737693, -0.642561, 0.207182,
		32.914883, 38.632801, 25.118246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775814, 39.495579, 25.198761>,  <33.431271, 39.082592, 24.973219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775814, 39.495579, 25.198761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722481, 39.123837, 25.336466>,  <32.690483, 38.900791, 25.419088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722481, 39.123837, 25.336466>,  <32.775814, 39.495579, 25.198761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722481, 39.123837, 25.336466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358258, 0.369070, 0.857577,
		-0.924053, -0.008993, -0.382158,
		-0.133331, -0.929358, 0.344262,
		32.682480, 38.845028, 25.439745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294872, 39.440968, 25.760942>,  <32.775814, 39.495579, 25.198761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294872, 39.440968, 25.760942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436455, 39.073433, 25.830746>,  <32.521404, 38.852913, 25.872627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436455, 39.073433, 25.830746>,  <32.294872, 39.440968, 25.760942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436455, 39.073433, 25.830746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303336, 0.063715, 0.950751,
		-0.884704, -0.389461, -0.256164,
		0.353959, -0.918837, 0.174506,
		32.542641, 38.797783, 25.883097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756376, 39.157387, 26.217169>,  <32.294872, 39.440968, 25.760942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756376, 39.157387, 26.217169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086250, 38.940788, 26.282509>,  <32.284176, 38.810829, 26.321712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086250, 38.940788, 26.282509>,  <31.756376, 39.157387, 26.217169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086250, 38.940788, 26.282509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220982, -0.042627, 0.974346,
		-0.520637, -0.839624, -0.154814,
		0.824684, -0.541492, 0.163349,
		32.333656, 38.778339, 26.331514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611872, 38.532749, 26.751926>,  <31.756376, 39.157387, 26.217169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611872, 38.532749, 26.751926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010010, 38.570858, 26.746117>,  <32.248894, 38.593723, 26.742630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010010, 38.570858, 26.746117>,  <31.611872, 38.532749, 26.751926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010010, 38.570858, 26.746117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025903, -0.119309, 0.992519,
		0.092825, -0.988276, -0.121222,
		0.995345, 0.095271, -0.014524,
		32.308613, 38.599438, 26.741758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930925, 37.876629, 27.124512>,  <31.611872, 38.532749, 26.751926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930925, 37.876629, 27.124512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200897, 38.171467, 27.110880>,  <32.362881, 38.348370, 27.102701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200897, 38.171467, 27.110880>,  <31.930925, 37.876629, 27.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200897, 38.171467, 27.110880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133841, -0.076875, 0.988017,
		0.725643, -0.671402, -0.150538,
		0.674929, 0.737095, -0.034077,
		32.403378, 38.392597, 27.100657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225204, 37.775967, 27.728060>,  <31.930925, 37.876629, 27.124512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225204, 37.775967, 27.728060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374336, 38.136734, 27.640842>,  <32.463818, 38.353195, 27.588512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374336, 38.136734, 27.640842>,  <32.225204, 37.775967, 27.728060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374336, 38.136734, 27.640842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302282, 0.104113, 0.947516,
		0.877281, -0.419176, -0.233816,
		0.372832, 0.901916, -0.218045,
		32.486187, 38.407310, 27.575428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907406, 37.751961, 27.925953>,  <32.225204, 37.775967, 27.728060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907406, 37.751961, 27.925953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831100, 38.143776, 27.900295>,  <32.785316, 38.378864, 27.884901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831100, 38.143776, 27.900295>,  <32.907406, 37.751961, 27.925953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831100, 38.143776, 27.900295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239505, 0.109816, 0.964665,
		0.951969, 0.168664, -0.255553,
		-0.190768, 0.979537, -0.064146,
		32.773869, 38.437637, 27.881052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454960, 38.069736, 28.255251>,  <32.907406, 37.751961, 27.925953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454960, 38.069736, 28.255251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177601, 38.357880, 28.248411>,  <33.011185, 38.530766, 28.244307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177601, 38.357880, 28.248411>,  <33.454960, 38.069736, 28.255251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177601, 38.357880, 28.248411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307148, 0.316955, 0.897329,
		0.651814, 0.616953, -0.441031,
		-0.693397, 0.720353, -0.017100,
		32.969582, 38.573986, 28.243280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765648, 38.753777, 28.414673>,  <33.454960, 38.069736, 28.255251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765648, 38.753777, 28.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381405, 38.757191, 28.525789>,  <33.150860, 38.759239, 28.592459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381405, 38.757191, 28.525789>,  <33.765648, 38.753777, 28.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381405, 38.757191, 28.525789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268020, 0.292907, 0.917808,
		-0.073530, 0.956103, -0.283656,
		-0.960603, 0.008539, 0.277792,
		33.093224, 38.759754, 28.609127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756329, 39.227112, 28.916739>,  <33.765648, 38.753777, 28.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756329, 39.227112, 28.916739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380009, 39.096664, 28.953691>,  <33.154217, 39.018394, 28.975863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380009, 39.096664, 28.953691>,  <33.756329, 39.227112, 28.916739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380009, 39.096664, 28.953691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006984, 0.253841, 0.967221,
		-0.338879, 0.910610, -0.236538,
		-0.940804, -0.326119, 0.092381,
		33.097767, 38.998829, 28.981405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352036, 39.777882, 29.137760>,  <33.756329, 39.227112, 28.916739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352036, 39.777882, 29.137760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203712, 39.424610, 29.252647>,  <33.114719, 39.212646, 29.321579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203712, 39.424610, 29.252647>,  <33.352036, 39.777882, 29.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203712, 39.424610, 29.252647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058427, 0.330836, 0.941878,
		-0.926869, 0.332476, -0.174279,
		-0.370809, -0.883180, 0.287216,
		33.092468, 39.159657, 29.338812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954166, 39.962273, 29.636375>,  <33.352036, 39.777882, 29.137760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954166, 39.962273, 29.636375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976677, 39.569031, 29.706055>,  <32.990181, 39.333088, 29.747862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976677, 39.569031, 29.706055>,  <32.954166, 39.962273, 29.636375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976677, 39.569031, 29.706055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, 0.167661, 0.980209,
		-0.992851, -0.073494, -0.094047,
		0.056272, -0.983102, 0.174198,
		32.993557, 39.274101, 29.758314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400211, 39.706711, 30.029613>,  <32.954166, 39.962273, 29.636375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400211, 39.706711, 30.029613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679398, 39.425823, 30.085800>,  <32.846909, 39.257290, 30.119513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679398, 39.425823, 30.085800>,  <32.400211, 39.706711, 30.029613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679398, 39.425823, 30.085800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212384, -0.015654, 0.977061,
		-0.683912, -0.711789, -0.160066,
		0.697967, -0.702219, 0.140466,
		32.888786, 39.215157, 30.127939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188633, 39.403419, 30.631399>,  <32.400211, 39.706711, 30.029613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188633, 39.403419, 30.631399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576706, 39.327766, 30.570778>,  <32.809551, 39.282375, 30.534405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576706, 39.327766, 30.570778>,  <32.188633, 39.403419, 30.631399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576706, 39.327766, 30.570778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193500, 0.227922, 0.954258,
		-0.145942, -0.955133, 0.257724,
		0.970184, -0.189137, -0.151555,
		32.867760, 39.271027, 30.525311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273518, 38.888546, 31.073769>,  <32.188633, 39.403419, 30.631399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273518, 38.888546, 31.073769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640564, 39.021702, 30.986902>,  <32.860790, 39.101597, 30.934782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640564, 39.021702, 30.986902>,  <32.273518, 38.888546, 31.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640564, 39.021702, 30.986902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212165, 0.051786, 0.975861,
		0.336104, -0.941542, -0.023109,
		0.917617, 0.332893, -0.217167,
		32.915848, 39.121571, 30.921753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706818, 38.598145, 31.635784>,  <32.273518, 38.888546, 31.073769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706818, 38.598145, 31.635784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940693, 38.881775, 31.478125>,  <33.081017, 39.051952, 31.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940693, 38.881775, 31.478125>,  <32.706818, 38.598145, 31.635784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940693, 38.881775, 31.478125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388021, 0.182241, 0.903453,
		0.712445, -0.681177, -0.168582,
		0.584689, 0.709075, -0.394148,
		33.116100, 39.094498, 31.359880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384266, 38.384212, 31.782938>,  <32.706818, 38.598145, 31.635784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384266, 38.384212, 31.782938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378719, 38.780533, 31.729086>,  <33.375393, 39.018326, 31.696775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378719, 38.780533, 31.729086>,  <33.384266, 38.384212, 31.782938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378719, 38.780533, 31.729086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530467, 0.121422, 0.838965,
		0.847592, -0.059783, -0.527270,
		-0.013866, 0.990799, -0.134629,
		33.374561, 39.077774, 31.688698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066933, 38.615963, 31.760727>,  <33.384266, 38.384212, 31.782938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066933, 38.615963, 31.760727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845734, 38.924343, 31.887112>,  <33.713013, 39.109371, 31.962942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845734, 38.924343, 31.887112>,  <34.066933, 38.615963, 31.760727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845734, 38.924343, 31.887112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596379, 0.101439, 0.796268,
		0.581829, 0.628769, -0.515872,
		-0.552998, 0.770947, 0.315964,
		33.679832, 39.155628, 31.981901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533695, 38.731613, 31.259150>,  <34.066933, 38.615963, 31.760727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533695, 38.731613, 31.259150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905216, 38.729557, 31.407366>,  <35.128128, 38.728325, 31.496296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905216, 38.729557, 31.407366>,  <34.533695, 38.731613, 31.259150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905216, 38.729557, 31.407366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369175, 0.099720, -0.923994,
		-0.032202, 0.995002, 0.094518,
		0.928802, -0.005139, 0.370541,
		35.183857, 38.728016, 31.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981724, 39.216885, 30.835051>,  <34.533695, 38.731613, 31.259150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981724, 39.216885, 30.835051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218987, 38.947449, 31.011431>,  <35.361343, 38.785786, 31.117258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218987, 38.947449, 31.011431>,  <34.981724, 39.216885, 30.835051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218987, 38.947449, 31.011431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391766, -0.236989, -0.889020,
		0.703338, 0.700078, 0.123319,
		0.593158, -0.673593, 0.440950,
		35.396935, 38.745369, 31.143715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597420, 39.314384, 30.513674>,  <34.981724, 39.216885, 30.835051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597420, 39.314384, 30.513674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628845, 38.950275, 30.676266>,  <35.647701, 38.731808, 30.773821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628845, 38.950275, 30.676266>,  <35.597420, 39.314384, 30.513674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628845, 38.950275, 30.676266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352862, -0.355953, -0.865324,
		0.932371, 0.211418, 0.293235,
		0.078568, -0.910275, 0.406482,
		35.652416, 38.677193, 30.798210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313435, 39.137890, 30.416758>,  <35.597420, 39.314384, 30.513674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313435, 39.137890, 30.416758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117832, 38.797928, 30.495287>,  <36.000473, 38.593952, 30.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117832, 38.797928, 30.495287>,  <36.313435, 39.137890, 30.416758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117832, 38.797928, 30.495287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375543, -0.408272, -0.832034,
		0.787301, -0.333139, 0.518821,
		-0.489003, -0.849902, 0.196325,
		35.971130, 38.542957, 30.554184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777992, 38.537842, 30.249765>,  <36.313435, 39.137890, 30.416758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777992, 38.537842, 30.249765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404354, 38.395718, 30.235806>,  <36.180172, 38.310444, 30.227430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404354, 38.395718, 30.235806>,  <36.777992, 38.537842, 30.249765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404354, 38.395718, 30.235806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169757, -0.356025, -0.918928,
		0.314080, -0.864291, 0.392879,
		-0.934096, -0.355311, -0.034899,
		36.124126, 38.289124, 30.225336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870098, 37.798950, 30.211033>,  <36.777992, 38.537842, 30.249765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870098, 37.798950, 30.211033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495056, 37.858295, 30.085251>,  <36.270031, 37.893902, 30.009781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495056, 37.858295, 30.085251>,  <36.870098, 37.798950, 30.211033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495056, 37.858295, 30.085251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150259, -0.642688, -0.751249,
		-0.313553, -0.751626, 0.580296,
		-0.937607, 0.148361, -0.314455,
		36.213776, 37.902805, 29.990913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510517, 37.158092, 30.170240>,  <36.870098, 37.798950, 30.211033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510517, 37.158092, 30.170240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303471, 37.395741, 29.923956>,  <36.179245, 37.538330, 29.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303471, 37.395741, 29.923956>,  <36.510517, 37.158092, 30.170240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303471, 37.395741, 29.923956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043566, -0.700381, -0.712439,
		-0.854505, -0.395592, 0.336643,
		-0.517614, 0.594116, -0.615713,
		36.148186, 37.573975, 29.739243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955715, 36.750610, 29.839394>,  <36.510517, 37.158092, 30.170240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955715, 36.750610, 29.839394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974995, 37.076401, 29.608120>,  <35.986561, 37.271877, 29.469355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974995, 37.076401, 29.608120>,  <35.955715, 36.750610, 29.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974995, 37.076401, 29.608120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079305, -0.580152, -0.810638,
		-0.995685, -0.006782, -0.092554,
		0.048198, 0.814480, -0.578186,
		35.989452, 37.320744, 29.434664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528229, 36.681671, 29.290760>,  <35.955715, 36.750610, 29.839394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528229, 36.681671, 29.290760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763680, 36.975952, 29.156742>,  <35.904949, 37.152523, 29.076332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763680, 36.975952, 29.156742>,  <35.528229, 36.681671, 29.290760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763680, 36.975952, 29.156742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048006, -0.445531, -0.893978,
		-0.806976, 0.510138, -0.297571,
		0.588630, 0.735704, -0.335043,
		35.940269, 37.196663, 29.056229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256603, 36.927673, 28.655725>,  <35.528229, 36.681671, 29.290760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256603, 36.927673, 28.655725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645012, 37.022129, 28.640959>,  <35.878056, 37.078804, 28.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645012, 37.022129, 28.640959>,  <35.256603, 36.927673, 28.655725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645012, 37.022129, 28.640959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057218, -0.379636, -0.923365,
		-0.232057, 0.894491, -0.382145,
		0.971018, 0.236139, -0.036917,
		35.936317, 37.092972, 28.629885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342373, 37.363419, 28.094517>,  <35.256603, 36.927673, 28.655725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342373, 37.363419, 28.094517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714035, 37.229542, 28.157314>,  <35.937031, 37.149216, 28.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714035, 37.229542, 28.157314>,  <35.342373, 37.363419, 28.094517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714035, 37.229542, 28.157314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039028, -0.333485, -0.941947,
		0.367620, 0.881344, -0.296797,
		0.929157, -0.334695, 0.156993,
		35.992783, 37.129131, 28.204412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732117, 37.731880, 27.612419>,  <35.342373, 37.363419, 28.094517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732117, 37.731880, 27.612419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923706, 37.399517, 27.725687>,  <36.038658, 37.200100, 27.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923706, 37.399517, 27.725687>,  <35.732117, 37.731880, 27.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923706, 37.399517, 27.725687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093670, -0.272358, -0.957626,
		0.872818, 0.485200, -0.052621,
		0.478972, -0.830904, 0.283168,
		36.067398, 37.150246, 27.810637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187939, 37.586864, 27.057981>,  <35.732117, 37.731880, 27.612419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187939, 37.586864, 27.057981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238659, 37.227505, 27.226171>,  <36.269093, 37.011890, 27.327085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238659, 37.227505, 27.226171>,  <36.187939, 37.586864, 27.057981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238659, 37.227505, 27.226171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212832, -0.389383, -0.896149,
		0.968826, 0.203127, 0.141833,
		0.126804, -0.898399, 0.420476,
		36.276699, 36.957985, 27.352314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779415, 37.391655, 26.913836>,  <36.187939, 37.586864, 27.057981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779415, 37.391655, 26.913836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542526, 37.074421, 26.970810>,  <36.400391, 36.884079, 27.004993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542526, 37.074421, 26.970810>,  <36.779415, 37.391655, 26.913836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542526, 37.074421, 26.970810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122110, -0.263061, -0.957021,
		0.796467, -0.549378, 0.252635,
		-0.592224, -0.793084, 0.142435,
		36.364861, 36.836494, 27.013540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060150, 36.880692, 26.430143>,  <36.779415, 37.391655, 26.913836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060150, 36.880692, 26.430143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692066, 36.752083, 26.519445>,  <36.471218, 36.674915, 26.573027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692066, 36.752083, 26.519445>,  <37.060150, 36.880692, 26.430143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692066, 36.752083, 26.519445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162939, -0.203951, -0.965326,
		0.355909, -0.924676, 0.135288,
		-0.920206, -0.321525, 0.223254,
		36.416004, 36.655624, 26.586422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032032, 36.309711, 25.929600>,  <37.060150, 36.880692, 26.430143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032032, 36.309711, 25.929600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660892, 36.403996, 26.045206>,  <36.438210, 36.460564, 26.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660892, 36.403996, 26.045206>,  <37.032032, 36.309711, 25.929600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660892, 36.403996, 26.045206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304922, -0.033249, -0.951797,
		-0.214737, -0.971255, 0.102723,
		-0.927853, 0.235708, 0.289018,
		36.382538, 36.474709, 26.131912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708729, 35.878899, 25.550007>,  <37.032032, 36.309711, 25.929600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708729, 35.878899, 25.550007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425209, 36.125713, 25.686750>,  <36.255096, 36.273804, 25.768797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425209, 36.125713, 25.686750>,  <36.708729, 35.878899, 25.550007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425209, 36.125713, 25.686750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497453, -0.093622, -0.862424,
		-0.500144, -0.781344, 0.373307,
		-0.708799, 0.617039, 0.341857,
		36.212570, 36.310825, 25.789309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066368, 35.542156, 25.581615>,  <36.708729, 35.878899, 25.550007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066368, 35.542156, 25.581615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968746, 35.928898, 25.551592>,  <35.910172, 36.160942, 25.533579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968746, 35.928898, 25.551592>,  <36.066368, 35.542156, 25.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968746, 35.928898, 25.551592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485566, -0.188831, -0.853562,
		-0.839441, -0.171871, 0.515556,
		-0.244056, 0.966852, -0.075058,
		35.895531, 36.218952, 25.529074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323551, 35.578732, 25.256546>,  <36.066368, 35.542156, 25.581615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323551, 35.578732, 25.256546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464882, 35.947552, 25.193321>,  <35.549679, 36.168842, 25.155386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464882, 35.947552, 25.193321>,  <35.323551, 35.578732, 25.256546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464882, 35.947552, 25.193321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519277, 0.052767, -0.852976,
		-0.778146, 0.383457, 0.497443,
		0.353328, 0.922050, -0.158060,
		35.570881, 36.224167, 25.145903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754135, 36.044147, 24.997517>,  <35.323551, 35.578732, 25.256546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754135, 36.044147, 24.997517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095921, 36.224773, 24.894773>,  <35.300991, 36.333149, 24.833128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095921, 36.224773, 24.894773>,  <34.754135, 36.044147, 24.997517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095921, 36.224773, 24.894773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381959, 0.210945, -0.899783,
		-0.352127, 0.866944, 0.352725,
		0.854467, 0.451564, -0.256857,
		35.352261, 36.360241, 24.817717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618355, 36.780918, 24.807920>,  <34.754135, 36.044147, 24.997517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618355, 36.780918, 24.807920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954372, 36.669415, 24.621752>,  <35.155983, 36.602512, 24.510050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954372, 36.669415, 24.621752>,  <34.618355, 36.780918, 24.807920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954372, 36.669415, 24.621752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428542, 0.185119, -0.884354,
		0.332677, 0.942351, 0.036050,
		0.840046, -0.278755, -0.465422,
		35.206387, 36.585789, 24.482124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876350, 37.343124, 24.276121>,  <34.618355, 36.780918, 24.807920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876350, 37.343124, 24.276121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955395, 36.965897, 24.169106>,  <35.002819, 36.739559, 24.104897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955395, 36.965897, 24.169106>,  <34.876350, 37.343124, 24.276121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955395, 36.965897, 24.169106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422798, 0.164238, -0.891217,
		0.884417, 0.289228, -0.366271,
		0.197609, -0.943066, -0.267540,
		35.014679, 36.682976, 24.088844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089447, 37.350163, 23.578472>,  <34.876350, 37.343124, 24.276121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089447, 37.350163, 23.578472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030258, 36.956608, 23.618601>,  <34.994743, 36.720474, 23.642677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030258, 36.956608, 23.618601>,  <35.089447, 37.350163, 23.578472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030258, 36.956608, 23.618601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282454, -0.055170, -0.957693,
		0.947799, -0.170048, -0.269740,
		-0.147972, -0.983890, 0.100321,
		34.985867, 36.661442, 23.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452538, 36.972424, 23.043718>,  <35.089447, 37.350163, 23.578472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452538, 36.972424, 23.043718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159714, 36.729725, 23.167614>,  <34.984020, 36.584106, 23.241951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159714, 36.729725, 23.167614>,  <35.452538, 36.972424, 23.043718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159714, 36.729725, 23.167614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217178, -0.223087, -0.950298,
		0.645692, -0.762946, 0.031541,
		-0.732062, -0.606750, 0.309740,
		34.940094, 36.547699, 23.260536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500889, 36.292927, 22.568951>,  <35.452538, 36.972424, 23.043718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500889, 36.292927, 22.568951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143532, 36.273716, 22.747629>,  <34.929115, 36.262188, 22.854836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143532, 36.273716, 22.747629>,  <35.500889, 36.292927, 22.568951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143532, 36.273716, 22.747629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372596, -0.476340, -0.796412,
		0.251028, -0.877948, 0.407666,
		-0.893397, -0.048027, 0.446695,
		34.875511, 36.259308, 22.881638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332462, 35.531197, 22.405895>,  <35.500889, 36.292927, 22.568951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332462, 35.531197, 22.405895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023594, 35.765179, 22.505161>,  <34.838272, 35.905567, 22.564722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023594, 35.765179, 22.505161>,  <35.332462, 35.531197, 22.405895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023594, 35.765179, 22.505161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565974, -0.455622, -0.687083,
		-0.288838, -0.671001, 0.682884,
		-0.772170, 0.584950, 0.248168,
		34.791943, 35.940662, 22.579611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809448, 35.148651, 22.672329>,  <35.332462, 35.531197, 22.405895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809448, 35.148651, 22.672329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663048, 35.482086, 22.506840>,  <34.575207, 35.682148, 22.407545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663048, 35.482086, 22.506840>,  <34.809448, 35.148651, 22.672329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663048, 35.482086, 22.506840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648183, -0.547348, -0.529404,
		-0.667758, 0.074407, 0.740650,
		-0.366002, 0.833591, -0.413725,
		34.553246, 35.732162, 22.382723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098583, 34.946766, 22.679428>,  <34.809448, 35.148651, 22.672329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098583, 34.946766, 22.679428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129585, 35.275547, 22.453728>,  <34.148186, 35.472816, 22.318308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129585, 35.275547, 22.453728>,  <34.098583, 34.946766, 22.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129585, 35.275547, 22.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673231, -0.374284, -0.637708,
		-0.735359, 0.429300, 0.524356,
		0.077509, 0.821957, -0.564251,
		34.152840, 35.522133, 22.284452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503838, 35.045471, 22.450026>,  <34.098583, 34.946766, 22.679428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503838, 35.045471, 22.450026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726494, 35.261887, 22.197855>,  <33.860088, 35.391735, 22.046553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726494, 35.261887, 22.197855>,  <33.503838, 35.045471, 22.450026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726494, 35.261887, 22.197855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431426, -0.460245, -0.775916,
		-0.709949, 0.703885, -0.022773,
		0.556637, 0.541036, -0.630425,
		33.893486, 35.424198, 22.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100761, 35.353184, 22.008518>,  <33.503838, 35.045471, 22.450026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100761, 35.353184, 22.008518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451740, 35.327591, 21.818361>,  <33.662327, 35.312237, 21.704268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451740, 35.327591, 21.818361>,  <33.100761, 35.353184, 22.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451740, 35.327591, 21.818361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448901, -0.458815, -0.766796,
		-0.169059, 0.886225, -0.431304,
		0.877443, -0.063979, -0.475394,
		33.714973, 35.308395, 21.675743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110546, 35.609940, 21.296816>,  <33.100761, 35.353184, 22.008518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110546, 35.609940, 21.296816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425400, 35.363262, 21.292637>,  <33.614311, 35.215256, 21.290129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425400, 35.363262, 21.292637>,  <33.110546, 35.609940, 21.296816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425400, 35.363262, 21.292637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335020, -0.413267, -0.846742,
		0.517860, 0.670002, -0.531901,
		0.787136, -0.616691, -0.010450,
		33.661541, 35.178253, 21.289501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254150, 35.509529, 20.636412>,  <33.110546, 35.609940, 21.296816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254150, 35.509529, 20.636412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490555, 35.225277, 20.789095>,  <33.632397, 35.054726, 20.880705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490555, 35.225277, 20.789095>,  <33.254150, 35.509529, 20.636412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490555, 35.225277, 20.789095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166192, -0.570312, -0.804440,
		0.789355, 0.411999, -0.455165,
		0.591015, -0.710634, 0.381708,
		33.667858, 35.012085, 20.903606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678448, 35.378830, 20.162455>,  <33.254150, 35.509529, 20.636412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678448, 35.378830, 20.162455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650059, 35.047504, 20.384756>,  <33.633026, 34.848709, 20.518137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650059, 35.047504, 20.384756>,  <33.678448, 35.378830, 20.162455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650059, 35.047504, 20.384756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240594, -0.526493, -0.815426,
		0.968028, -0.191583, -0.161921,
		-0.070972, -0.828312, 0.555754,
		33.628769, 34.799011, 20.551483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947533, 34.904919, 19.720982>,  <33.678448, 35.378830, 20.162455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947533, 34.904919, 19.720982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761566, 34.676514, 19.991623>,  <33.649986, 34.539471, 20.154009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761566, 34.676514, 19.991623>,  <33.947533, 34.904919, 19.720982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761566, 34.676514, 19.991623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005986, -0.762175, -0.647344,
		0.885335, -0.305010, 0.350929,
		-0.464916, -0.571015, 0.676605,
		33.622093, 34.505211, 20.194605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333565, 34.276146, 19.796848>,  <33.947533, 34.904919, 19.720982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333565, 34.276146, 19.796848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960659, 34.185829, 19.909920>,  <33.736916, 34.131638, 19.977762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960659, 34.185829, 19.909920>,  <34.333565, 34.276146, 19.796848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960659, 34.185829, 19.909920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013575, -0.758960, -0.650995,
		0.361533, -0.610735, 0.704484,
		-0.932261, -0.225793, 0.282680,
		33.680981, 34.118092, 19.994724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411945, 33.597900, 19.813742>,  <34.333565, 34.276146, 19.796848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411945, 33.597900, 19.813742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019318, 33.670509, 19.789858>,  <33.783741, 33.714073, 19.775528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019318, 33.670509, 19.789858>,  <34.411945, 33.597900, 19.813742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019318, 33.670509, 19.789858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078555, -0.668164, -0.739855,
		-0.174195, -0.721531, 0.670111,
		-0.981573, 0.181520, -0.059711,
		33.724846, 33.724964, 19.771944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149025, 33.011524, 19.612844>,  <34.411945, 33.597900, 19.813742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149025, 33.011524, 19.612844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852375, 33.261398, 19.515062>,  <33.674385, 33.411324, 19.456392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852375, 33.261398, 19.515062>,  <34.149025, 33.011524, 19.612844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852375, 33.261398, 19.515062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375235, -0.688388, -0.620742,
		-0.556050, -0.368629, 0.744930,
		-0.741624, 0.624687, -0.244456,
		33.629887, 33.448803, 19.441725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557976, 32.573074, 19.568062>,  <34.149025, 33.011524, 19.612844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557976, 32.573074, 19.568062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454426, 32.889629, 19.346542>,  <33.392296, 33.079563, 19.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454426, 32.889629, 19.346542>,  <33.557976, 32.573074, 19.568062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454426, 32.889629, 19.346542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228471, -0.607241, -0.760959,
		-0.938502, -0.070465, 0.338008,
		-0.258874, 0.791387, -0.553798,
		33.376762, 33.127045, 19.180403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095753, 32.067581, 19.770672>,  <33.557976, 32.573074, 19.568062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095753, 32.067581, 19.770672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002228, 31.678913, 19.756845>,  <32.946114, 31.445713, 19.748550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002228, 31.678913, 19.756845>,  <33.095753, 32.067581, 19.770672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002228, 31.678913, 19.756845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571838, -0.166179, 0.803359,
		-0.786341, 0.168071, 0.594491,
		-0.233813, -0.971667, -0.034564,
		32.932083, 31.387413, 19.746477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741993, 31.807428, 20.432938>,  <33.095753, 32.067581, 19.770672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741993, 31.807428, 20.432938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901501, 31.464371, 20.303061>,  <32.997208, 31.258535, 20.225134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901501, 31.464371, 20.303061>,  <32.741993, 31.807428, 20.432938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901501, 31.464371, 20.303061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307964, -0.208257, 0.928325,
		-0.863794, -0.470182, 0.181077,
		0.398772, -0.857646, -0.324691,
		33.021133, 31.207077, 20.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617584, 31.180389, 20.946074>,  <32.741993, 31.807428, 20.432938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617584, 31.180389, 20.946074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949104, 31.074797, 20.748730>,  <33.148018, 31.011440, 20.630323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949104, 31.074797, 20.748730>,  <32.617584, 31.180389, 20.946074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949104, 31.074797, 20.748730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533089, 0.104616, 0.839567,
		-0.170018, -0.958837, 0.227432,
		0.828801, -0.263983, -0.493358,
		33.197746, 30.995602, 20.600721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002697, 30.732817, 21.402599>,  <32.617584, 31.180389, 20.946074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002697, 30.732817, 21.402599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282166, 30.832588, 21.134378>,  <33.449848, 30.892452, 20.973446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282166, 30.832588, 21.134378>,  <33.002697, 30.732817, 21.402599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282166, 30.832588, 21.134378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642366, 0.193947, 0.741452,
		0.314992, -0.948772, -0.024720,
		0.698674, 0.249431, -0.670550,
		33.491768, 30.907417, 20.933212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632099, 30.275961, 21.560026>,  <33.002697, 30.732817, 21.402599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632099, 30.275961, 21.560026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741116, 30.621847, 21.391270>,  <33.806526, 30.829378, 21.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741116, 30.621847, 21.391270>,  <33.632099, 30.275961, 21.560026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741116, 30.621847, 21.391270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587285, 0.197820, 0.784833,
		0.762116, -0.461666, -0.453920,
		0.272536, 0.864715, -0.421892,
		33.822876, 30.881262, 21.264702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301483, 30.518362, 21.776083>,  <33.632099, 30.275961, 21.560026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301483, 30.518362, 21.776083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175964, 30.870605, 21.634062>,  <34.100651, 31.081951, 21.548849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175964, 30.870605, 21.634062>,  <34.301483, 30.518362, 21.776083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175964, 30.870605, 21.634062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451009, 0.467303, 0.760407,
		0.835536, 0.078483, -0.543801,
		-0.313799, 0.880607, -0.355052,
		34.081825, 31.134789, 21.527546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804176, 30.893835, 21.725042>,  <34.301483, 30.518362, 21.776083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804176, 30.893835, 21.725042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523426, 31.178680, 21.718487>,  <34.354977, 31.349588, 21.714554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523426, 31.178680, 21.718487>,  <34.804176, 30.893835, 21.725042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523426, 31.178680, 21.718487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488036, 0.497523, 0.717141,
		0.518841, 0.495342, -0.696735,
		-0.701872, 0.712114, -0.016390,
		34.312866, 31.392315, 21.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168221, 31.531836, 21.830845>,  <34.804176, 30.893835, 21.725042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168221, 31.531836, 21.830845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797054, 31.667248, 21.893290>,  <34.574356, 31.748495, 21.930756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797054, 31.667248, 21.893290>,  <35.168221, 31.531836, 21.830845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797054, 31.667248, 21.893290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346153, 0.626965, 0.697921,
		0.138391, 0.701650, -0.698953,
		-0.927915, 0.338530, 0.156112,
		34.518681, 31.768806, 21.940123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214169, 32.287136, 21.837690>,  <35.168221, 31.531836, 21.830845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214169, 32.287136, 21.837690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887398, 32.187092, 22.045563>,  <34.691334, 32.127064, 22.170286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887398, 32.187092, 22.045563>,  <35.214169, 32.287136, 21.837690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887398, 32.187092, 22.045563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347164, 0.506280, 0.789403,
		-0.460543, 0.825303, -0.326766,
		-0.816932, -0.250113, 0.519679,
		34.642319, 32.112057, 22.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851471, 32.970470, 22.129702>,  <35.214169, 32.287136, 21.837690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851471, 32.970470, 22.129702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767258, 32.644379, 22.345510>,  <34.716728, 32.448723, 22.474995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767258, 32.644379, 22.345510>,  <34.851471, 32.970470, 22.129702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767258, 32.644379, 22.345510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249832, 0.488696, 0.835919,
		-0.945123, 0.310780, 0.100782,
		-0.210536, -0.815225, 0.539521,
		34.704098, 32.399811, 22.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528088, 33.265968, 22.678530>,  <34.851471, 32.970470, 22.129702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528088, 33.265968, 22.678530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595142, 32.893715, 22.808653>,  <34.635376, 32.670364, 22.886726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595142, 32.893715, 22.808653>,  <34.528088, 33.265968, 22.678530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595142, 32.893715, 22.808653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226274, 0.357489, 0.906091,
		-0.959529, -0.078289, 0.270507,
		0.167640, -0.930630, 0.325307,
		34.645435, 32.614525, 22.906244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215466, 33.228603, 23.339825>,  <34.528088, 33.265968, 22.678530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215466, 33.228603, 23.339825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481865, 32.930351, 23.348606>,  <34.641705, 32.751400, 23.353874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481865, 32.930351, 23.348606>,  <34.215466, 33.228603, 23.339825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481865, 32.930351, 23.348606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282471, 0.279323, 0.917708,
		-0.690400, -0.604995, 0.396648,
		0.666002, -0.745627, 0.021951,
		34.681667, 32.706665, 23.355192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153137, 32.847832, 23.946951>,  <34.215466, 33.228603, 23.339825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153137, 32.847832, 23.946951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520535, 32.750790, 23.822046>,  <34.740974, 32.692562, 23.747103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520535, 32.750790, 23.822046>,  <34.153137, 32.847832, 23.946951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520535, 32.750790, 23.822046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332741, 0.047504, 0.941821,
		-0.213659, -0.968961, 0.124358,
		0.918495, -0.242608, -0.312263,
		34.796082, 32.678009, 23.728367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461552, 32.457947, 24.506947>,  <34.153137, 32.847832, 23.946951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461552, 32.457947, 24.506947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779373, 32.584526, 24.299664>,  <34.970066, 32.660473, 24.175295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779373, 32.584526, 24.299664>,  <34.461552, 32.457947, 24.506947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779373, 32.584526, 24.299664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475645, 0.206092, 0.855154,
		0.377415, -0.925950, 0.013232,
		0.794556, 0.316454, -0.518206,
		35.017738, 32.679462, 24.144201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044384, 32.109005, 24.714909>,  <34.461552, 32.457947, 24.506947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044384, 32.109005, 24.714909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192032, 32.430084, 24.527536>,  <35.280621, 32.622730, 24.415113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192032, 32.430084, 24.527536>,  <35.044384, 32.109005, 24.714909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192032, 32.430084, 24.527536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714222, 0.077502, 0.695615,
		0.594673, -0.591329, -0.544696,
		0.369123, 0.802697, -0.468428,
		35.302769, 32.670895, 24.387009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765282, 32.109177, 24.903082>,  <35.044384, 32.109005, 24.714909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765282, 32.109177, 24.903082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706886, 32.475826, 24.754227>,  <35.671848, 32.695816, 24.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706886, 32.475826, 24.754227>,  <35.765282, 32.109177, 24.903082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706886, 32.475826, 24.754227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465058, 0.395597, 0.791975,
		0.873161, -0.057448, -0.484035,
		-0.145985, 0.916626, -0.372136,
		35.663090, 32.750813, 24.642586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410061, 32.443066, 25.036442>,  <35.765282, 32.109177, 24.903082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410061, 32.443066, 25.036442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134056, 32.729534, 24.994530>,  <35.968452, 32.901417, 24.969383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134056, 32.729534, 24.994530>,  <36.410061, 32.443066, 25.036442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134056, 32.729534, 24.994530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452197, 0.539581, 0.710191,
		0.565156, 0.442660, -0.696169,
		-0.690012, 0.716174, -0.104778,
		35.927052, 32.944386, 24.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780464, 32.968189, 24.988390>,  <36.410061, 32.443066, 25.036442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780464, 32.968189, 24.988390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419342, 33.111652, 25.083300>,  <36.202667, 33.197731, 25.140245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419342, 33.111652, 25.083300>,  <36.780464, 32.968189, 24.988390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419342, 33.111652, 25.083300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414326, 0.577654, 0.703313,
		0.115186, 0.733267, -0.670113,
		-0.902810, 0.358657, 0.237274,
		36.148499, 33.219250, 25.154482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925327, 33.697323, 25.067858>,  <36.780464, 32.968189, 24.988390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925327, 33.697323, 25.067858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584221, 33.623699, 25.263371>,  <36.379555, 33.579525, 25.380678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584221, 33.623699, 25.263371>,  <36.925327, 33.697323, 25.067858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584221, 33.623699, 25.263371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372432, 0.441815, 0.816146,
		-0.366169, 0.878022, -0.308217,
		-0.852769, -0.184058, 0.488782,
		36.328392, 33.568481, 25.410006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786491, 34.332794, 25.452652>,  <36.925327, 33.697323, 25.067858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786491, 34.332794, 25.452652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580151, 34.028225, 25.609692>,  <36.456348, 33.845482, 25.703915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580151, 34.028225, 25.609692>,  <36.786491, 34.332794, 25.452652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580151, 34.028225, 25.609692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287443, 0.277875, 0.916603,
		-0.807017, 0.585679, 0.075525,
		-0.515849, -0.761423, 0.392599,
		36.425396, 33.799797, 25.727472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281643, 34.597576, 25.892727>,  <36.786491, 34.332794, 25.452652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281643, 34.597576, 25.892727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392132, 34.238754, 26.030712>,  <36.458424, 34.023460, 26.113503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392132, 34.238754, 26.030712>,  <36.281643, 34.597576, 25.892727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392132, 34.238754, 26.030712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204558, 0.405578, 0.890878,
		-0.939072, -0.175515, 0.295529,
		0.276223, -0.897051, 0.344964,
		36.474998, 33.969639, 26.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904137, 34.571217, 26.552904>,  <36.281643, 34.597576, 25.892727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904137, 34.571217, 26.552904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184544, 34.288338, 26.589684>,  <36.352787, 34.118610, 26.611752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184544, 34.288338, 26.589684>,  <35.904137, 34.571217, 26.552904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184544, 34.288338, 26.589684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126547, 0.250241, 0.959878,
		-0.701830, -0.661252, 0.264916,
		0.701014, -0.707195, 0.091947,
		36.394848, 34.076180, 26.617268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771843, 34.220104, 27.209738>,  <35.904137, 34.571217, 26.552904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771843, 34.220104, 27.209738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150860, 34.122528, 27.127131>,  <36.378269, 34.063980, 27.077566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150860, 34.122528, 27.127131>,  <35.771843, 34.220104, 27.209738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150860, 34.122528, 27.127131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268426, 0.256589, 0.928499,
		-0.173511, -0.935229, 0.308611,
		0.947545, -0.243943, -0.206519,
		36.435123, 34.049347, 27.065174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048664, 33.772369, 27.666073>,  <35.771843, 34.220104, 27.209738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048664, 33.772369, 27.666073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383965, 33.937244, 27.523275>,  <36.585144, 34.036171, 27.437597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383965, 33.937244, 27.523275>,  <36.048664, 33.772369, 27.666073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383965, 33.937244, 27.523275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260817, 0.271864, 0.926318,
		0.478871, -0.869592, 0.120383,
		0.838246, 0.412189, -0.356992,
		36.635437, 34.060902, 27.416178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603416, 33.499245, 28.087751>,  <36.048664, 33.772369, 27.666073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603416, 33.499245, 28.087751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740463, 33.828873, 27.907299>,  <36.822693, 34.026649, 27.799026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740463, 33.828873, 27.907299>,  <36.603416, 33.499245, 28.087751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740463, 33.828873, 27.907299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441033, 0.282910, 0.851735,
		0.829518, -0.490787, -0.266511,
		0.342622, 0.824069, -0.451132,
		36.843250, 34.076092, 27.771959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328789, 33.466118, 28.223383>,  <36.603416, 33.499245, 28.087751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328789, 33.466118, 28.223383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248291, 33.844479, 28.121578>,  <37.199993, 34.071495, 28.060495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248291, 33.844479, 28.121578>,  <37.328789, 33.466118, 28.223383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248291, 33.844479, 28.121578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489865, 0.322190, 0.810078,
		0.848252, 0.038350, -0.528203,
		-0.201248, 0.945898, -0.254512,
		37.187916, 34.128246, 28.045225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909702, 33.753864, 28.318592>,  <37.328789, 33.466118, 28.223383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909702, 33.753864, 28.318592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659626, 34.065155, 28.342268>,  <37.509579, 34.251930, 28.356474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659626, 34.065155, 28.342268>,  <37.909702, 33.753864, 28.318592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659626, 34.065155, 28.342268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535906, 0.372911, 0.757458,
		0.567400, 0.505275, -0.650195,
		-0.625190, 0.778225, 0.059190,
		37.472069, 34.298622, 28.360025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294498, 34.413555, 28.513481>,  <37.909702, 33.753864, 28.318592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294498, 34.413555, 28.513481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920921, 34.528698, 28.598234>,  <37.696777, 34.597782, 28.649086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920921, 34.528698, 28.598234>,  <38.294498, 34.413555, 28.513481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920921, 34.528698, 28.598234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337772, 0.516916, 0.786580,
		0.116893, 0.806188, -0.579998,
		-0.933941, 0.287853, 0.211883,
		37.640739, 34.615055, 28.661798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337822, 35.125652, 28.683836>,  <38.294498, 34.413555, 28.513481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337822, 35.125652, 28.683836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999310, 35.006123, 28.860250>,  <37.796204, 34.934402, 28.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999310, 35.006123, 28.860250>,  <38.337822, 35.125652, 28.683836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999310, 35.006123, 28.860250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240098, 0.525083, 0.816481,
		-0.475569, 0.796863, -0.372618,
		-0.846279, -0.298828, 0.441038,
		37.745426, 34.916473, 28.992561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043831, 35.784374, 29.049623>,  <38.337822, 35.125652, 28.683836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043831, 35.784374, 29.049623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856964, 35.480652, 29.230824>,  <37.744846, 35.298416, 29.339544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856964, 35.480652, 29.230824>,  <38.043831, 35.784374, 29.049623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856964, 35.480652, 29.230824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259369, 0.372117, 0.891211,
		-0.845272, 0.533836, 0.023101,
		-0.467164, -0.759308, 0.453001,
		37.716816, 35.252861, 29.366724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671608, 36.046890, 29.602638>,  <38.043831, 35.784374, 29.049623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671608, 36.046890, 29.602638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732510, 35.667549, 29.713959>,  <37.769051, 35.439945, 29.780750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732510, 35.667549, 29.713959>,  <37.671608, 36.046890, 29.602638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732510, 35.667549, 29.713959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335386, 0.314448, 0.888053,
		-0.929697, -0.041868, 0.365938,
		0.152250, -0.948351, 0.278300,
		37.778183, 35.383045, 29.797449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347351, 36.004215, 30.297247>,  <37.671608, 36.046890, 29.602638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347351, 36.004215, 30.297247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583786, 35.683716, 30.260117>,  <37.725647, 35.491417, 30.237839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583786, 35.683716, 30.260117>,  <37.347351, 36.004215, 30.297247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583786, 35.683716, 30.260117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273781, 0.091047, 0.957473,
		-0.758720, -0.591367, 0.273183,
		0.591091, -0.801246, -0.092826,
		37.761112, 35.443340, 30.232269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185623, 35.539841, 30.871838>,  <37.347351, 36.004215, 30.297247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185623, 35.539841, 30.871838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545567, 35.425182, 30.740335>,  <37.761532, 35.356388, 30.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545567, 35.425182, 30.740335>,  <37.185623, 35.539841, 30.871838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545567, 35.425182, 30.740335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339880, -0.011568, 0.940397,
		-0.273365, -0.957966, 0.087016,
		0.899863, -0.286647, -0.328756,
		37.815525, 35.339188, 30.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346333, 34.957317, 31.341377>,  <37.185623, 35.539841, 30.871838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346333, 34.957317, 31.341377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682129, 35.099373, 31.176880>,  <37.883606, 35.184608, 31.078182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682129, 35.099373, 31.176880>,  <37.346333, 34.957317, 31.341377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682129, 35.099373, 31.176880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423456, 0.046654, 0.904715,
		0.340489, -0.933647, -0.111222,
		0.839495, 0.355143, -0.411243,
		37.933979, 35.205917, 31.053507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863766, 34.474545, 31.632265>,  <37.346333, 34.957317, 31.341377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863766, 34.474545, 31.632265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051758, 34.810970, 31.525139>,  <38.164555, 35.012825, 31.460863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051758, 34.810970, 31.525139>,  <37.863766, 34.474545, 31.632265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051758, 34.810970, 31.525139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489378, 0.004222, 0.872061,
		0.734592, -0.540916, -0.409615,
		0.469983, 0.841066, -0.267814,
		38.192753, 35.063290, 31.444794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520206, 34.324177, 32.051155>,  <37.863766, 34.474545, 31.632265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520206, 34.324177, 32.051155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498764, 34.711304, 31.952797>,  <38.485901, 34.943581, 31.893784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498764, 34.711304, 31.952797>,  <38.520206, 34.324177, 32.051155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498764, 34.711304, 31.952797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382534, 0.247362, 0.890213,
		0.922385, -0.046343, -0.383481,
		-0.053604, 0.967814, -0.245891,
		38.482681, 35.001648, 31.879030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199619, 34.609047, 32.154339>,  <38.520206, 34.324177, 32.051155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199619, 34.609047, 32.154339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977562, 34.941380, 32.170021>,  <38.844326, 35.140778, 32.179432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977562, 34.941380, 32.170021>,  <39.199619, 34.609047, 32.154339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977562, 34.941380, 32.170021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534107, 0.319950, 0.782536,
		0.637608, 0.455363, -0.621370,
		-0.555145, 0.830829, 0.039210,
		38.811020, 35.190628, 32.181786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645638, 35.113029, 32.334320>,  <39.199619, 34.609047, 32.154339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645638, 35.113029, 32.334320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290569, 35.269497, 32.431503>,  <39.077530, 35.363377, 32.489815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290569, 35.269497, 32.431503>,  <39.645638, 35.113029, 32.334320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290569, 35.269497, 32.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374603, 0.306589, 0.875029,
		0.267792, 0.867751, -0.418682,
		-0.887671, 0.391165, 0.242960,
		39.024269, 35.386845, 32.504391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789532, 35.859890, 32.411945>,  <39.645638, 35.113029, 32.334320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789532, 35.859890, 32.411945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466106, 35.759941, 32.625034>,  <39.272053, 35.699970, 32.752888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466106, 35.759941, 32.625034>,  <39.789532, 35.859890, 32.411945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466106, 35.759941, 32.625034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338941, 0.542273, 0.768803,
		-0.480983, 0.802186, -0.353770,
		-0.808563, -0.249874, 0.532718,
		39.223537, 35.684978, 32.784851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428936, 36.565956, 32.628136>,  <39.789532, 35.859890, 32.411945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428936, 36.565956, 32.628136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322994, 36.246540, 32.844353>,  <39.259430, 36.054890, 32.974083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322994, 36.246540, 32.844353>,  <39.428936, 36.565956, 32.628136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322994, 36.246540, 32.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226672, 0.493298, 0.839808,
		-0.937269, 0.344952, 0.050355,
		-0.264854, -0.798540, 0.540543,
		39.243538, 36.006977, 33.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936619, 36.765232, 33.218380>,  <39.428936, 36.565956, 32.628136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936619, 36.765232, 33.218380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133667, 36.433258, 33.323097>,  <39.251896, 36.234074, 33.385925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133667, 36.433258, 33.323097>,  <38.936619, 36.765232, 33.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133667, 36.433258, 33.323097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204374, 0.402740, 0.892206,
		-0.845906, -0.386015, 0.368015,
		0.492619, -0.829936, 0.261789,
		39.281452, 36.184277, 33.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604908, 36.465664, 33.746704>,  <38.936619, 36.765232, 33.218380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604908, 36.465664, 33.746704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999516, 36.406998, 33.775745>,  <39.236279, 36.371799, 33.793171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999516, 36.406998, 33.775745>,  <38.604908, 36.465664, 33.746704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999516, 36.406998, 33.775745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019194, 0.544269, 0.838691,
		-0.162523, -0.825990, 0.539746,
		0.986518, -0.146666, 0.072603,
		39.295471, 36.362999, 33.797527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839958, 36.400166, 34.481743>,  <38.604908, 36.465664, 33.746704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839958, 36.400166, 34.481743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182240, 36.467327, 34.285957>,  <39.387608, 36.507622, 34.168488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182240, 36.467327, 34.285957>,  <38.839958, 36.400166, 34.481743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182240, 36.467327, 34.285957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307833, 0.595142, 0.742324,
		0.415935, -0.785886, 0.457583,
		0.855708, 0.167899, -0.489462,
		39.438953, 36.517696, 34.139118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440151, 36.044708, 34.918961>,  <38.839958, 36.400166, 34.481743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440151, 36.044708, 34.918961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557274, 36.363888, 34.708233>,  <39.627548, 36.555397, 34.581795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557274, 36.363888, 34.708233>,  <39.440151, 36.044708, 34.918961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557274, 36.363888, 34.708233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601239, 0.274771, 0.750341,
		0.743491, -0.536448, -0.399306,
		0.292802, 0.797950, -0.526823,
		39.645115, 36.603271, 34.550186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036499, 35.905090, 35.140289>,  <39.440151, 36.044708, 34.918961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036499, 35.905090, 35.140289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995285, 36.272377, 34.987312>,  <39.970558, 36.492748, 34.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995285, 36.272377, 34.987312>,  <40.036499, 35.905090, 35.140289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995285, 36.272377, 34.987312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379434, 0.391696, 0.838215,
		0.919464, -0.058746, -0.388761,
		-0.103034, 0.918217, -0.382441,
		39.964375, 36.547844, 34.872581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647343, 36.204643, 35.154118>,  <40.036499, 35.905090, 35.140289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647343, 36.204643, 35.154118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363621, 36.485218, 35.182045>,  <40.193390, 36.653564, 35.198803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363621, 36.485218, 35.182045>,  <40.647343, 36.204643, 35.154118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363621, 36.485218, 35.182045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526565, 0.461391, 0.714037,
		0.468638, 0.543232, -0.696618,
		-0.709301, 0.701439, 0.069822,
		40.150829, 36.695648, 35.202991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078323, 36.659439, 35.453781>,  <40.647343, 36.204643, 35.154118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078323, 36.659439, 35.453781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721027, 36.839149, 35.447132>,  <40.506649, 36.946976, 35.443142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721027, 36.839149, 35.447132>,  <41.078323, 36.659439, 35.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721027, 36.839149, 35.447132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252467, 0.531859, 0.808324,
		0.372003, 0.717828, -0.588504,
		-0.893238, 0.449276, -0.016625,
		40.453056, 36.973934, 35.442146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172985, 37.340225, 35.472450>,  <41.078323, 36.659439, 35.453781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172985, 37.340225, 35.472450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809639, 37.281986, 35.629253>,  <40.591629, 37.247044, 35.723335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809639, 37.281986, 35.629253>,  <41.172985, 37.340225, 35.472450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809639, 37.281986, 35.629253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257780, 0.543157, 0.799081,
		-0.329268, 0.826910, -0.455853,
		-0.908368, -0.145602, 0.392005,
		40.537128, 37.238304, 35.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170414, 37.870117, 35.935226>,  <41.172985, 37.340225, 35.472450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170414, 37.870117, 35.935226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831226, 37.671890, 36.010437>,  <40.627712, 37.552952, 36.055565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831226, 37.671890, 36.010437>,  <41.170414, 37.870117, 35.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831226, 37.671890, 36.010437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101953, 0.500614, 0.859646,
		-0.520145, 0.709785, -0.475031,
		-0.847971, -0.495572, 0.188027,
		40.576836, 37.523220, 36.066845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597969, 38.420418, 35.903568>,  <41.170414, 37.870117, 35.935226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597969, 38.420418, 35.903568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523132, 38.110374, 36.144962>,  <40.478230, 37.924347, 36.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523132, 38.110374, 36.144962>,  <40.597969, 38.420418, 35.903568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523132, 38.110374, 36.144962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188149, 0.631238, 0.752422,
		-0.964156, 0.027226, -0.263936,
		-0.187092, -0.775111, 0.603489,
		40.467007, 37.877842, 36.326008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983021, 38.591522, 36.349934>,  <40.597969, 38.420418, 35.903568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983021, 38.591522, 36.349934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180058, 38.296566, 36.534801>,  <40.298279, 38.119591, 36.645721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180058, 38.296566, 36.534801>,  <39.983021, 38.591522, 36.349934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180058, 38.296566, 36.534801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108586, 0.474844, 0.873346,
		-0.863459, -0.480389, 0.153834,
		0.492593, -0.737394, 0.462171,
		40.327835, 38.075348, 36.673454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586586, 38.412064, 36.946228>,  <39.983021, 38.591522, 36.349934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586586, 38.412064, 36.946228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949059, 38.259724, 37.019760>,  <40.166542, 38.168320, 37.063881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949059, 38.259724, 37.019760>,  <39.586586, 38.412064, 36.946228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949059, 38.259724, 37.019760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048466, 0.525369, 0.849493,
		-0.420107, -0.760883, 0.494537,
		0.906180, -0.380846, 0.183835,
		40.220913, 38.145470, 37.074909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564873, 38.377235, 37.644897>,  <39.586586, 38.412064, 36.946228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564873, 38.377235, 37.644897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960308, 38.364014, 37.586113>,  <40.197571, 38.356083, 37.550842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960308, 38.364014, 37.586113>,  <39.564873, 38.377235, 37.644897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960308, 38.364014, 37.586113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145573, 0.460248, 0.875774,
		0.038692, -0.887175, 0.459808,
		0.988590, -0.033051, -0.146957,
		40.256886, 38.354099, 37.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744053, 38.140186, 38.291046>,  <39.564873, 38.377235, 37.644897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744053, 38.140186, 38.291046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056999, 38.312817, 38.111427>,  <40.244766, 38.416397, 38.003654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056999, 38.312817, 38.111427>,  <39.744053, 38.140186, 38.291046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056999, 38.312817, 38.111427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194063, 0.516174, 0.834209,
		0.591813, -0.739800, 0.320084,
		0.782366, 0.431579, -0.449046,
		40.291710, 38.442291, 37.976715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345203, 37.948032, 38.717434>,  <39.744053, 38.140186, 38.291046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345203, 37.948032, 38.717434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357624, 38.272804, 38.484261>,  <40.365078, 38.467667, 38.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357624, 38.272804, 38.484261>,  <40.345203, 37.948032, 38.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357624, 38.272804, 38.484261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238065, 0.560421, 0.793255,
		0.970753, -0.163409, -0.175888,
		0.031054, 0.811927, -0.582932,
		40.366940, 38.516384, 38.309380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040245, 38.197258, 38.629528>,  <40.345203, 37.948032, 38.717434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040245, 38.197258, 38.629528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833382, 38.526440, 38.535473>,  <40.709263, 38.723949, 38.479042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833382, 38.526440, 38.535473>,  <41.040245, 38.197258, 38.629528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833382, 38.526440, 38.535473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411646, 0.480023, 0.774678,
		0.750399, 0.303836, -0.587014,
		-0.517155, 0.822959, -0.235136,
		40.678234, 38.773327, 38.464931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479431, 38.753880, 38.709599>,  <41.040245, 38.197258, 38.629528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479431, 38.753880, 38.709599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116814, 38.911709, 38.769585>,  <40.899242, 39.006409, 38.805576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116814, 38.911709, 38.769585>,  <41.479431, 38.753880, 38.709599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116814, 38.911709, 38.769585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289897, 0.323749, 0.900637,
		0.306820, 0.859940, -0.407879,
		-0.906543, 0.394576, 0.149961,
		40.844852, 39.030083, 38.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732552, 39.259964, 39.079838>,  <41.479431, 38.753880, 38.709599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732552, 39.259964, 39.079838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337811, 39.254780, 39.144276>,  <41.100967, 39.251667, 39.182938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337811, 39.254780, 39.144276>,  <41.732552, 39.259964, 39.079838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337811, 39.254780, 39.144276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139084, 0.439551, 0.887384,
		-0.082313, 0.898124, -0.431970,
		-0.986854, -0.012963, 0.161095,
		41.041756, 39.250893, 39.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598148, 39.894497, 39.349220>,  <41.732552, 39.259964, 39.079838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598148, 39.894497, 39.349220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307053, 39.653202, 39.479759>,  <41.132397, 39.508427, 39.558083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307053, 39.653202, 39.479759>,  <41.598148, 39.894497, 39.349220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307053, 39.653202, 39.479759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116464, 0.360228, 0.925566,
		-0.675894, 0.711578, -0.191897,
		-0.727739, -0.603235, 0.326349,
		41.088730, 39.472233, 39.577663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140663, 40.297287, 39.814854>,  <41.598148, 39.894497, 39.349220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140663, 40.297287, 39.814854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103889, 39.906525, 39.892006>,  <41.081825, 39.672066, 39.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103889, 39.906525, 39.892006>,  <41.140663, 40.297287, 39.814854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103889, 39.906525, 39.892006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110697, 0.202531, 0.972999,
		-0.989593, 0.068102, -0.126760,
		-0.091936, -0.976905, 0.192884,
		41.076309, 39.613453, 39.949871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493462, 40.134148, 40.272854>,  <41.140663, 40.297287, 39.814854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493462, 40.134148, 40.272854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788204, 39.865452, 40.303329>,  <40.965050, 39.704235, 40.321613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788204, 39.865452, 40.303329>,  <40.493462, 40.134148, 40.272854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788204, 39.865452, 40.303329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004677, 0.107629, 0.994180,
		-0.676030, -0.732927, 0.076166,
		0.736859, -0.671740, 0.076188,
		41.009262, 39.663929, 40.326187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590141, 40.229591, 41.006413>,  <40.493462, 40.134148, 40.272854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590141, 40.229591, 41.006413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863754, 39.982235, 40.851650>,  <41.027924, 39.833820, 40.758793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863754, 39.982235, 40.851650>,  <40.590141, 40.229591, 41.006413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863754, 39.982235, 40.851650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408424, -0.114791, 0.905546,
		-0.604394, -0.777442, 0.174045,
		0.684031, -0.618390, -0.386905,
		41.068962, 39.796719, 40.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382072, 39.594692, 41.232582>,  <40.590141, 40.229591, 41.006413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382072, 39.594692, 41.232582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779274, 39.591808, 41.185432>,  <41.017593, 39.590076, 41.157143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779274, 39.591808, 41.185432>,  <40.382072, 39.594692, 41.232582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779274, 39.591808, 41.185432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105682, -0.391122, 0.914251,
		-0.052697, -0.920311, -0.387623,
		0.993003, -0.007214, -0.117871,
		41.077175, 39.589645, 41.150070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502247, 38.849220, 41.295544>,  <40.382072, 39.594692, 41.232582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502247, 38.849220, 41.295544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403629, 38.696934, 40.939056>,  <40.344460, 38.605564, 40.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403629, 38.696934, 40.939056>,  <40.502247, 38.849220, 41.295544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403629, 38.696934, 40.939056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030710, 0.922214, -0.385457,
		0.968645, -0.067662, -0.239056,
		-0.246541, -0.380713, -0.891221,
		40.329666, 38.582722, 40.671692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949139, 39.052895, 40.769768>,  <40.502247, 38.849220, 41.295544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949139, 39.052895, 40.769768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604351, 38.965714, 40.586681>,  <40.397476, 38.913406, 40.476830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604351, 38.965714, 40.586681>,  <40.949139, 39.052895, 40.769768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604351, 38.965714, 40.586681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000598, 0.902427, -0.430842,
		0.506956, -0.371647, -0.777736,
		-0.861972, -0.217952, -0.457713,
		40.345760, 38.900330, 40.449368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975693, 38.851086, 40.048077>,  <40.949139, 39.052895, 40.769768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975693, 38.851086, 40.048077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708317, 39.146420, 40.083961>,  <40.547890, 39.323620, 40.105492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708317, 39.146420, 40.083961>,  <40.975693, 38.851086, 40.048077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708317, 39.146420, 40.083961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176856, -0.040625, -0.983398,
		-0.722433, -0.673209, 0.157734,
		-0.668440, 0.738335, 0.089713,
		40.507786, 39.367920, 40.110874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189533, 38.603092, 39.872807>,  <40.975693, 38.851086, 40.048077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189533, 38.603092, 39.872807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396000, 38.934464, 39.785839>,  <40.519882, 39.133286, 39.733658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396000, 38.934464, 39.785839>,  <40.189533, 38.603092, 39.872807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396000, 38.934464, 39.785839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092828, -0.198248, -0.975746,
		-0.851441, 0.523833, -0.025428,
		0.516169, 0.828430, -0.217423,
		40.550850, 39.182991, 39.720612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765965, 39.164352, 39.474617>,  <40.189533, 38.603092, 39.872807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765965, 39.164352, 39.474617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153358, 39.213516, 39.387970>,  <40.385796, 39.243015, 39.335979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153358, 39.213516, 39.387970>,  <39.765965, 39.164352, 39.474617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153358, 39.213516, 39.387970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215216, -0.024764, -0.976252,
		-0.125351, 0.992109, 0.002467,
		0.968488, 0.122905, -0.216622,
		40.443905, 39.250389, 39.322983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677856, 39.556767, 38.947453>,  <39.765965, 39.164352, 39.474617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677856, 39.556767, 38.947453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032490, 39.375202, 38.911823>,  <40.245270, 39.266266, 38.890446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032490, 39.375202, 38.911823>,  <39.677856, 39.556767, 38.947453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032490, 39.375202, 38.911823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201224, -0.205067, -0.957840,
		0.416503, 0.867131, -0.273146,
		0.886586, -0.453906, -0.089077,
		40.298466, 39.239029, 38.885101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870632, 39.682922, 38.203045>,  <39.677856, 39.556767, 38.947453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870632, 39.682922, 38.203045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100510, 39.377586, 38.321056>,  <40.238438, 39.194386, 38.391865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100510, 39.377586, 38.321056>,  <39.870632, 39.682922, 38.203045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100510, 39.377586, 38.321056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096743, -0.421352, -0.901722,
		0.812628, 0.489675, -0.315997,
		0.574696, -0.763336, 0.295030,
		40.272919, 39.148586, 38.409565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271015, 39.561111, 37.627651>,  <39.870632, 39.682922, 38.203045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271015, 39.561111, 37.627651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317490, 39.242485, 37.864964>,  <40.345375, 39.051308, 38.007351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317490, 39.242485, 37.864964>,  <40.271015, 39.561111, 37.627651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317490, 39.242485, 37.864964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004151, -0.597712, -0.801700,
		0.993219, 0.090683, -0.072752,
		0.116186, -0.796566, 0.593282,
		40.352345, 39.003517, 38.042950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952976, 39.461685, 37.744354>,  <40.271015, 39.561111, 37.627651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952976, 39.461685, 37.744354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896469, 39.126270, 37.954838>,  <40.862564, 38.925022, 38.081127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896469, 39.126270, 37.954838>,  <40.952976, 39.461685, 37.744354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896469, 39.126270, 37.954838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187628, -0.499223, -0.845915,
		0.972028, -0.218234, -0.086808,
		-0.141270, -0.838540, 0.526206,
		40.854088, 38.874706, 38.112701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377625, 38.998005, 37.482788>,  <40.952976, 39.461685, 37.744354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377625, 38.998005, 37.482788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062698, 38.803497, 37.634403>,  <40.873741, 38.686794, 37.725372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062698, 38.803497, 37.634403>,  <41.377625, 38.998005, 37.482788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062698, 38.803497, 37.634403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069366, -0.541015, -0.838147,
		0.612631, -0.686182, 0.392221,
		-0.787319, -0.486268, 0.379040,
		40.826504, 38.657616, 37.748116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536926, 38.342430, 37.301182>,  <41.377625, 38.998005, 37.482788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536926, 38.342430, 37.301182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146343, 38.330883, 37.386696>,  <40.911995, 38.323956, 37.438004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146343, 38.330883, 37.386696>,  <41.536926, 38.342430, 37.301182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146343, 38.330883, 37.386696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157663, -0.580914, -0.798550,
		0.147244, -0.813453, 0.562684,
		-0.976454, -0.028867, 0.213787,
		40.853409, 38.322224, 37.450832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389977, 37.708775, 37.066994>,  <41.536926, 38.342430, 37.301182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389977, 37.708775, 37.066994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039974, 37.901333, 37.087509>,  <40.829975, 38.016869, 37.099819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039974, 37.901333, 37.087509>,  <41.389977, 37.708775, 37.066994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039974, 37.901333, 37.087509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330320, -0.516223, -0.790191,
		-0.353920, -0.708359, 0.610711,
		-0.875003, 0.481394, 0.051284,
		40.777473, 38.045750, 37.102894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985523, 37.073406, 37.145885>,  <41.389977, 37.708775, 37.066994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985523, 37.073406, 37.145885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794487, 37.397503, 37.009991>,  <40.679867, 37.591961, 36.928452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794487, 37.397503, 37.009991>,  <40.985523, 37.073406, 37.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794487, 37.397503, 37.009991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331105, -0.524164, -0.784616,
		-0.813805, -0.262235, 0.518609,
		-0.477590, 0.810238, -0.339739,
		40.651211, 37.640575, 36.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300991, 36.776363, 36.965412>,  <40.985523, 37.073406, 37.145885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300991, 36.776363, 36.965412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360352, 37.104908, 36.745110>,  <40.395969, 37.302036, 36.612926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360352, 37.104908, 36.745110>,  <40.300991, 36.776363, 36.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360352, 37.104908, 36.745110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279693, -0.499328, -0.820027,
		-0.948551, 0.275736, 0.155629,
		0.148401, 0.821365, -0.550759,
		40.404873, 37.351318, 36.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600197, 36.891590, 36.540562>,  <40.300991, 36.776363, 36.965412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600197, 36.891590, 36.540562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910545, 37.097977, 36.395348>,  <40.096756, 37.221809, 36.308220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910545, 37.097977, 36.395348>,  <39.600197, 36.891590, 36.540562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910545, 37.097977, 36.395348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280716, -0.232992, -0.931082,
		-0.564994, 0.824312, -0.035931,
		0.775874, 0.515970, -0.363037,
		40.143307, 37.252769, 36.286438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294945, 37.351372, 36.041172>,  <39.600197, 36.891590, 36.540562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294945, 37.351372, 36.041172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682060, 37.308636, 35.949986>,  <39.914330, 37.282993, 35.895271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682060, 37.308636, 35.949986>,  <39.294945, 37.351372, 36.041172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682060, 37.308636, 35.949986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248648, -0.263573, -0.932043,
		0.039490, 0.958705, -0.281648,
		0.967789, -0.106838, -0.227971,
		39.972397, 37.276585, 35.881596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366917, 37.699501, 35.405842>,  <39.294945, 37.351372, 36.041172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366917, 37.699501, 35.405842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686722, 37.459995, 35.424866>,  <39.878605, 37.316292, 35.436279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686722, 37.459995, 35.424866>,  <39.366917, 37.699501, 35.405842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686722, 37.459995, 35.424866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154531, -0.281565, -0.947017,
		0.580432, 0.749802, -0.317642,
		0.799512, -0.598764, 0.047561,
		39.926575, 37.280365, 35.439133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961376, 37.992096, 34.989662>,  <39.366917, 37.699501, 35.405842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961376, 37.992096, 34.989662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940083, 37.592953, 35.004829>,  <39.927307, 37.353466, 35.013931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940083, 37.592953, 35.004829>,  <39.961376, 37.992096, 34.989662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940083, 37.592953, 35.004829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033560, -0.039739, -0.998646,
		0.998018, -0.051885, 0.035603,
		-0.053229, -0.997862, 0.037919,
		39.924114, 37.293594, 35.016205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924393, 37.775646, 34.321606>,  <39.961376, 37.992096, 34.989662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924393, 37.775646, 34.321606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926701, 37.405731, 34.473778>,  <39.928085, 37.183781, 34.565083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926701, 37.405731, 34.473778>,  <39.924393, 37.775646, 34.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926701, 37.405731, 34.473778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028549, -0.380433, -0.924368,
		0.999576, -0.005528, -0.028597,
		0.005769, -0.924792, 0.380429,
		39.928432, 37.128292, 34.587906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382805, 37.462074, 33.871387>,  <39.924393, 37.775646, 34.321606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382805, 37.462074, 33.871387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153931, 37.190159, 34.054909>,  <40.016605, 37.027012, 34.165020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153931, 37.190159, 34.054909>,  <40.382805, 37.462074, 33.871387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153931, 37.190159, 34.054909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061654, -0.522194, -0.850595,
		0.817806, -0.514982, 0.256878,
		-0.572181, -0.679784, 0.458804,
		39.982277, 36.986225, 34.192551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527946, 36.922440, 33.574135>,  <40.382805, 37.462074, 33.871387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527946, 36.922440, 33.574135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210701, 36.758671, 33.754513>,  <40.020355, 36.660408, 33.862740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210701, 36.758671, 33.754513>,  <40.527946, 36.922440, 33.574135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210701, 36.758671, 33.754513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170906, -0.561033, -0.809959,
		0.584610, -0.719455, 0.374987,
		-0.793109, -0.409423, 0.450944,
		39.972767, 36.635845, 33.889797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540882, 36.136902, 33.515694>,  <40.527946, 36.922440, 33.574135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540882, 36.136902, 33.515694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164127, 36.258724, 33.572388>,  <39.938072, 36.331818, 33.606403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164127, 36.258724, 33.572388>,  <40.540882, 36.136902, 33.515694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164127, 36.258724, 33.572388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325999, -0.726946, -0.604379,
		-0.081031, -0.615465, 0.783988,
		-0.941891, 0.304552, 0.141736,
		39.881561, 36.350090, 33.614910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032906, 35.687794, 33.951328>,  <40.540882, 36.136902, 33.515694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032906, 35.687794, 33.951328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927727, 35.893246, 33.624638>,  <39.864620, 36.016518, 33.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927727, 35.893246, 33.624638>,  <40.032906, 35.687794, 33.951328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927727, 35.893246, 33.624638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176508, -0.857838, -0.482657,
		-0.948528, 0.017246, 0.316224,
		-0.262945, 0.513630, -0.816728,
		39.848843, 36.047337, 33.379620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676796, 35.452343, 33.956421>,  <40.032906, 35.687794, 33.951328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676796, 35.452343, 33.956421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857094, 35.095314, 33.951534>,  <40.965275, 34.881096, 33.948601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857094, 35.095314, 33.951534>,  <40.676796, 35.452343, 33.956421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857094, 35.095314, 33.951534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704866, 0.364291, -0.608652,
		0.547714, 0.265735, 0.793343,
		0.450748, -0.892568, -0.012219,
		40.992317, 34.827545, 33.947868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372501, 35.565777, 34.154423>,  <40.676796, 35.452343, 33.956421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372501, 35.565777, 34.154423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307503, 35.236446, 33.936897>,  <41.268501, 35.038849, 33.806381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307503, 35.236446, 33.936897>,  <41.372501, 35.565777, 34.154423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307503, 35.236446, 33.936897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602745, 0.353525, -0.715344,
		0.781212, -0.444021, 0.438809,
		-0.162498, -0.823326, -0.543810,
		41.258755, 34.989449, 33.773754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910851, 35.031361, 34.302460>,  <41.372501, 35.565777, 34.154423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910851, 35.031361, 34.302460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752213, 35.070732, 33.937378>,  <41.657028, 35.094357, 33.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752213, 35.070732, 33.937378>,  <41.910851, 35.031361, 34.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752213, 35.070732, 33.937378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904279, 0.213107, -0.369953,
		0.158089, -0.972058, -0.173523,
		-0.396595, 0.098428, -0.912702,
		41.633236, 35.100262, 33.663567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186108, 34.603432, 33.810673>,  <41.910851, 35.031361, 34.302460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186108, 34.603432, 33.810673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059216, 34.950027, 33.656498>,  <41.983078, 35.157986, 33.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059216, 34.950027, 33.656498>,  <42.186108, 34.603432, 33.810673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059216, 34.950027, 33.656498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919128, 0.180804, -0.350021,
		-0.233599, -0.465306, -0.853769,
		-0.317232, 0.866487, -0.385439,
		41.964046, 35.209972, 33.540867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163559, 34.830326, 33.023685>,  <42.186108, 34.603432, 33.810673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163559, 34.830326, 33.023685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249123, 35.114769, 33.291588>,  <42.300461, 35.285435, 33.452328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249123, 35.114769, 33.291588>,  <42.163559, 34.830326, 33.023685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249123, 35.114769, 33.291588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976183, -0.130211, -0.173527,
		-0.036187, 0.690919, -0.722026,
		0.213909, 0.711109, 0.669752,
		42.313297, 35.328102, 33.492512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093445, 34.249947, 32.440487>,  <42.163559, 34.830326, 33.023685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093445, 34.249947, 32.440487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302612, 33.970730, 32.636158>,  <42.428112, 33.803200, 32.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302612, 33.970730, 32.636158>,  <42.093445, 34.249947, 32.440487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302612, 33.970730, 32.636158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031700, -0.557574, -0.829521,
		0.851792, 0.449280, -0.269439,
		0.522920, -0.698039, 0.489179,
		42.459488, 33.761318, 32.782913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506561, 33.884705, 31.910709>,  <42.093445, 34.249947, 32.440487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506561, 33.884705, 31.910709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547329, 33.639736, 32.224285>,  <42.571789, 33.492756, 32.412430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547329, 33.639736, 32.224285>,  <42.506561, 33.884705, 31.910709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547329, 33.639736, 32.224285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144617, -0.770549, -0.620758,
		0.984225, 0.176637, 0.010033,
		0.101918, -0.612417, 0.783938,
		42.577904, 33.456013, 32.459465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158207, 33.550434, 32.018677>,  <42.506561, 33.884705, 31.910709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158207, 33.550434, 32.018677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854801, 33.332798, 32.162132>,  <42.672756, 33.202217, 32.248207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854801, 33.332798, 32.162132>,  <43.158207, 33.550434, 32.018677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854801, 33.332798, 32.162132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296899, -0.778453, -0.553048,
		0.580091, -0.313016, 0.752008,
		-0.758516, -0.544089, 0.358639,
		42.627247, 33.169571, 32.269726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415257, 32.948620, 32.321041>,  <43.158207, 33.550434, 32.018677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415257, 32.948620, 32.321041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045460, 32.880840, 32.184456>,  <42.823582, 32.840172, 32.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045460, 32.880840, 32.184456>,  <43.415257, 32.948620, 32.321041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045460, 32.880840, 32.184456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335573, -0.786726, -0.518125,
		-0.180841, -0.593590, 0.784186,
		-0.924493, -0.169453, -0.341465,
		42.768112, 32.830006, 32.082016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637733, 32.429623, 32.675240>,  <43.415257, 32.948620, 32.321041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637733, 32.429623, 32.675240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835056, 32.551476, 32.349335>,  <43.953449, 32.624588, 32.153790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835056, 32.551476, 32.349335>,  <43.637733, 32.429623, 32.675240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835056, 32.551476, 32.349335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595437, -0.564560, -0.571600,
		-0.634113, 0.767118, -0.097112,
		0.493311, 0.304635, -0.814765,
		43.983051, 32.642864, 32.104904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227119, 32.004505, 32.869869>,  <43.637733, 32.429623, 32.675240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227119, 32.004505, 32.869869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527645, 32.007744, 32.605907>,  <44.707958, 32.009686, 32.447533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527645, 32.007744, 32.605907>,  <44.227119, 32.004505, 32.869869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527645, 32.007744, 32.605907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656914, 0.086624, 0.748972,
		0.063219, -0.996208, 0.059769,
		0.751310, 0.008086, -0.659900,
		44.753036, 32.010170, 32.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739330, 31.403173, 33.043694>,  <44.227119, 32.004505, 32.869869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739330, 31.403173, 33.043694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886139, 31.722582, 32.852837>,  <44.974224, 31.914227, 32.738323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886139, 31.722582, 32.852837>,  <44.739330, 31.403173, 33.043694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886139, 31.722582, 32.852837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615762, 0.175911, 0.768045,
		0.697234, -0.575690, -0.427137,
		0.367018, 0.798521, -0.477139,
		44.996243, 31.962139, 32.709694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488178, 31.437599, 32.797646>,  <44.739330, 31.403173, 33.043694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488178, 31.437599, 32.797646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342728, 31.790035, 32.918613>,  <45.255459, 32.001495, 32.991192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342728, 31.790035, 32.918613>,  <45.488178, 31.437599, 32.797646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342728, 31.790035, 32.918613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696833, 0.041827, 0.716013,
		0.618222, 0.471096, -0.629182,
		-0.363628, 0.881090, 0.302417,
		45.233639, 32.054363, 33.009338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884235, 32.121792, 32.737846>,  <45.488178, 31.437599, 32.797646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884235, 32.121792, 32.737846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682541, 32.142723, 33.082638>,  <45.561523, 32.155281, 33.289513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682541, 32.142723, 33.082638>,  <45.884235, 32.121792, 32.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682541, 32.142723, 33.082638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814554, 0.360316, 0.454615,
		-0.286795, 0.931361, -0.224310,
		-0.504233, 0.052331, 0.861981,
		45.531273, 32.158421, 33.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797817, 32.798916, 33.125828>,  <45.884235, 32.121792, 32.737846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797817, 32.798916, 33.125828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859795, 32.466507, 33.339516>,  <45.896980, 32.267063, 33.467728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859795, 32.466507, 33.339516>,  <45.797817, 32.798916, 33.125828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859795, 32.466507, 33.339516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718369, 0.465988, 0.516528,
		-0.678188, 0.303738, 0.669182,
		0.154942, -0.831023, 0.534223,
		45.906277, 32.217201, 33.499783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196465, 32.982063, 33.618126>,  <45.797817, 32.798916, 33.125828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196465, 32.982063, 33.618126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231285, 32.604172, 33.744564>,  <46.252178, 32.377438, 33.820427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231285, 32.604172, 33.744564>,  <46.196465, 32.982063, 33.618126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231285, 32.604172, 33.744564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600425, 0.302944, 0.740077,
		-0.794929, 0.125364, 0.593609,
		0.087051, -0.944727, 0.316091,
		46.257401, 32.320755, 33.839390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280281, 33.838367, 33.456783>,  <46.196465, 32.982063, 33.618126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280281, 33.838367, 33.456783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223785, 34.217823, 33.570011>,  <46.189888, 34.445496, 33.637947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223785, 34.217823, 33.570011>,  <46.280281, 33.838367, 33.456783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223785, 34.217823, 33.570011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579181, -0.311074, 0.753513,
		0.802871, -0.057525, 0.593371,
		-0.141237, 0.948643, 0.283070,
		46.181416, 34.502415, 33.654934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829571, 33.841160, 33.964336>,  <46.280281, 33.838367, 33.456783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829571, 33.841160, 33.964336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069530, 33.857368, 34.283955>,  <47.213505, 33.867092, 34.475727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069530, 33.857368, 34.283955>,  <46.829571, 33.841160, 33.964336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069530, 33.857368, 34.283955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149692, 0.975397, -0.161845,
		-0.785948, 0.216702, 0.579074,
		0.599899, 0.040519, 0.799049,
		47.249500, 33.869526, 34.523670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661957, 34.346443, 34.558018>,  <46.829571, 33.841160, 33.964336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661957, 34.346443, 34.558018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057137, 34.287724, 34.538410>,  <47.294243, 34.252491, 34.526646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057137, 34.287724, 34.538410>,  <46.661957, 34.346443, 34.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057137, 34.287724, 34.538410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152220, 0.978912, 0.136236,
		0.027986, -0.142056, 0.989463,
		0.987950, -0.146804, -0.049020,
		47.353523, 34.243683, 34.523705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978489, 34.600563, 35.168148>,  <46.661957, 34.346443, 34.558018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978489, 34.600563, 35.168148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236549, 34.628998, 34.863853>,  <47.391388, 34.646057, 34.681274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236549, 34.628998, 34.863853>,  <46.978489, 34.600563, 35.168148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236549, 34.628998, 34.863853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153759, 0.963214, 0.220402,
		0.748421, -0.259164, 0.610491,
		0.645154, 0.071085, -0.760739,
		47.430096, 34.650322, 34.635632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656746, 34.921818, 35.447548>,  <46.978489, 34.600563, 35.168148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656746, 34.921818, 35.447548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594624, 34.992462, 35.058769>,  <47.557350, 35.034851, 34.825500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594624, 34.992462, 35.058769>,  <47.656746, 34.921818, 35.447548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594624, 34.992462, 35.058769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277674, 0.952025, 0.128626,
		0.948038, -0.249910, -0.196896,
		-0.155305, 0.176615, -0.971950,
		47.548031, 35.045448, 34.767185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.063858, 32.112038, 27.415802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.943102, 32.491909, 27.382399>,  <31.870647, 32.719830, 27.362356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.943102, 32.491909, 27.382399>,  <32.063858, 32.112038, 27.415802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943102, 32.491909, 27.382399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596688, 0.256544, 0.760361,
		0.743521, 0.179720, -0.644110,
		-0.301895, 0.949677, -0.083509,
		31.852533, 32.776814, 27.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651733, 32.644669, 27.314526>,  <32.063858, 32.112038, 27.415802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651733, 32.644669, 27.314526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.356735, 32.884605, 27.438641>,  <32.179733, 33.028568, 27.513109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.356735, 32.884605, 27.438641>,  <32.651733, 32.644669, 27.314526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356735, 32.884605, 27.438641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573889, 0.314443, 0.756159,
		0.356012, 0.735737, -0.576148,
		-0.737500, 0.599847, 0.310286,
		32.135487, 33.064560, 27.531727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836426, 33.290977, 27.468651>,  <32.651733, 32.644669, 27.314526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836426, 33.290977, 27.468651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512302, 33.269333, 27.702051>,  <32.317829, 33.256344, 27.842091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512302, 33.269333, 27.702051>,  <32.836426, 33.290977, 27.468651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512302, 33.269333, 27.702051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538909, 0.322284, 0.778274,
		-0.230169, 0.945095, -0.231986,
		-0.810308, -0.054115, 0.583500,
		32.269211, 33.253098, 27.877102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794331, 33.917007, 27.705404>,  <32.836426, 33.290977, 27.468651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794331, 33.917007, 27.705404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.597942, 33.685879, 27.966194>,  <32.480110, 33.547203, 28.122667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.597942, 33.685879, 27.966194>,  <32.794331, 33.917007, 27.705404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597942, 33.685879, 27.966194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247203, 0.625220, 0.740264,
		-0.835367, 0.524618, -0.164126,
		-0.490971, -0.577820, 0.651975,
		32.450649, 33.512531, 28.161787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559761, 34.349464, 28.130350>,  <32.794331, 33.917007, 27.705404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559761, 34.349464, 28.130350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.526184, 34.010113, 28.339426>,  <32.506039, 33.806503, 28.464872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.526184, 34.010113, 28.339426>,  <32.559761, 34.349464, 28.130350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526184, 34.010113, 28.339426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288336, 0.481422, 0.827704,
		-0.953843, 0.220190, 0.204207,
		-0.083942, -0.848380, 0.522690,
		32.501003, 33.755600, 28.496233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265724, 34.515781, 28.775024>,  <32.559761, 34.349464, 28.130350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265724, 34.515781, 28.775024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451488, 34.165432, 28.827435>,  <32.562946, 33.955223, 28.858881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451488, 34.165432, 28.827435>,  <32.265724, 34.515781, 28.775024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451488, 34.165432, 28.827435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447798, 0.359883, 0.818512,
		-0.764065, -0.321456, 0.559348,
		0.464415, -0.875871, 0.131027,
		32.590813, 33.902672, 28.866743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192162, 34.301094, 29.399767>,  <32.265724, 34.515781, 28.775024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192162, 34.301094, 29.399767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511547, 34.071587, 29.326841>,  <32.703178, 33.933884, 29.283085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511547, 34.071587, 29.326841>,  <32.192162, 34.301094, 29.399767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511547, 34.071587, 29.326841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411494, 0.299075, 0.860945,
		-0.439459, -0.762458, 0.474904,
		0.798466, -0.573770, -0.182316,
		32.751087, 33.899456, 29.272146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288605, 34.099655, 30.097593>,  <32.192162, 34.301094, 29.399767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288605, 34.099655, 30.097593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619312, 34.011799, 29.890436>,  <32.817738, 33.959087, 29.766142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619312, 34.011799, 29.890436>,  <32.288605, 34.099655, 30.097593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619312, 34.011799, 29.890436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534504, 0.019697, 0.844936,
		-0.175378, -0.975383, 0.133682,
		0.826769, -0.219637, -0.517892,
		32.867344, 33.945908, 29.735069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650417, 33.828449, 30.629827>,  <32.288605, 34.099655, 30.097593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650417, 33.828449, 30.629827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915810, 33.892021, 30.337379>,  <33.075047, 33.930164, 30.161911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915810, 33.892021, 30.337379>,  <32.650417, 33.828449, 30.629827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915810, 33.892021, 30.337379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695727, 0.228429, 0.681017,
		0.275241, -0.960501, 0.040989,
		0.663481, 0.158927, -0.731119,
		33.114853, 33.939697, 30.118044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207611, 33.427254, 30.792313>,  <32.650417, 33.828449, 30.629827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207611, 33.427254, 30.792313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317879, 33.744728, 30.575399>,  <33.384037, 33.935211, 30.445251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317879, 33.744728, 30.575399>,  <33.207611, 33.427254, 30.792313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317879, 33.744728, 30.575399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742429, 0.182542, 0.644575,
		0.610579, -0.580296, -0.538933,
		0.275667, 0.793684, -0.542285,
		33.400578, 33.982834, 30.412714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942116, 33.415413, 30.731480>,  <33.207611, 33.427254, 30.792313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942116, 33.415413, 30.731480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840946, 33.790104, 30.634678>,  <33.780247, 34.014919, 30.576597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840946, 33.790104, 30.634678>,  <33.942116, 33.415413, 30.731480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840946, 33.790104, 30.634678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836266, 0.337449, 0.432188,
		0.486509, -0.093071, -0.868704,
		-0.252920, 0.936731, -0.242004,
		33.765072, 34.071125, 30.562077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604061, 33.818264, 30.698641>,  <33.942116, 33.415413, 30.731480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604061, 33.818264, 30.698641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339466, 34.118053, 30.709414>,  <34.180710, 34.297928, 30.715878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339466, 34.118053, 30.709414>,  <34.604061, 33.818264, 30.698641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339466, 34.118053, 30.709414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538352, 0.449542, 0.712803,
		0.522119, 0.486009, -0.700847,
		-0.661489, 0.749471, 0.026930,
		34.141018, 34.342896, 30.717493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979046, 34.440426, 30.797514>,  <34.604061, 33.818264, 30.698641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979046, 34.440426, 30.797514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624512, 34.568897, 30.930937>,  <34.411793, 34.645981, 31.010990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624512, 34.568897, 30.930937>,  <34.979046, 34.440426, 30.797514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624512, 34.568897, 30.930937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430241, 0.304899, 0.849664,
		0.171192, 0.896594, -0.408426,
		-0.886333, 0.321178, 0.333556,
		34.358612, 34.665249, 31.031004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097519, 35.041283, 31.187561>,  <34.979046, 34.440426, 30.797514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097519, 35.041283, 31.187561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749187, 34.910118, 31.334057>,  <34.540188, 34.831421, 31.421955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749187, 34.910118, 31.334057>,  <35.097519, 35.041283, 31.187561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749187, 34.910118, 31.334057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275221, 0.292096, 0.915933,
		-0.407320, 0.898418, -0.164118,
		-0.870829, -0.327909, 0.366240,
		34.487938, 34.811745, 31.443930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804501, 35.545506, 31.498075>,  <35.097519, 35.041283, 31.187561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804501, 35.545506, 31.498075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625916, 35.230865, 31.668690>,  <34.518764, 35.042080, 31.771059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625916, 35.230865, 31.668690>,  <34.804501, 35.545506, 31.498075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625916, 35.230865, 31.668690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234970, 0.356893, 0.904111,
		-0.863401, 0.503875, 0.025488,
		-0.446462, -0.786599, 0.426537,
		34.491978, 34.994884, 31.796650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500286, 35.838917, 32.037067>,  <34.804501, 35.545506, 31.498075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500286, 35.838917, 32.037067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511444, 35.449299, 32.126915>,  <34.518139, 35.215527, 32.180824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511444, 35.449299, 32.126915>,  <34.500286, 35.838917, 32.037067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511444, 35.449299, 32.126915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295499, 0.222699, 0.929024,
		-0.954936, 0.040458, 0.294043,
		0.027897, -0.974047, 0.224619,
		34.519814, 35.157085, 32.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192715, 35.861607, 32.582314>,  <34.500286, 35.838917, 32.037067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192715, 35.861607, 32.582314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381836, 35.509312, 32.593353>,  <34.495308, 35.297935, 32.599976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381836, 35.509312, 32.593353>,  <34.192715, 35.861607, 32.582314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381836, 35.509312, 32.593353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373980, 0.228920, 0.898741,
		-0.797871, -0.414605, 0.437612,
		0.472801, -0.880737, 0.027595,
		34.523678, 35.245090, 32.601631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993553, 35.671661, 33.176201>,  <34.192715, 35.861607, 32.582314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993553, 35.671661, 33.176201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302956, 35.433472, 33.089386>,  <34.488598, 35.290558, 33.037296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302956, 35.433472, 33.089386>,  <33.993553, 35.671661, 33.176201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302956, 35.433472, 33.089386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320736, 0.072410, 0.944397,
		-0.546644, -0.800108, 0.246999,
		0.773504, -0.595470, -0.217041,
		34.535007, 35.254829, 33.024273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067280, 35.022999, 33.651371>,  <33.993553, 35.671661, 33.176201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067280, 35.022999, 33.651371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437847, 35.074760, 33.509945>,  <34.660187, 35.105820, 33.425087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437847, 35.074760, 33.509945>,  <34.067280, 35.022999, 33.651371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437847, 35.074760, 33.509945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356463, 0.000858, 0.934309,
		0.121212, -0.991591, -0.045335,
		0.926413, 0.129410, -0.353569,
		34.715771, 35.113583, 33.403873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479794, 34.631577, 34.112720>,  <34.067280, 35.022999, 33.651371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479794, 34.631577, 34.112720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.738438, 34.879543, 33.934910>,  <34.893623, 35.028324, 33.828224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.738438, 34.879543, 33.934910>,  <34.479794, 34.631577, 34.112720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738438, 34.879543, 33.934910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527883, 0.057036, 0.847400,
		0.550673, -0.782590, -0.290365,
		0.646606, 0.619919, -0.444524,
		34.932419, 35.065517, 33.801552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141197, 34.298641, 34.198154>,  <34.479794, 34.631577, 34.112720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141197, 34.298641, 34.198154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205154, 34.688942, 34.138359>,  <35.243530, 34.923122, 34.102482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205154, 34.688942, 34.138359>,  <35.141197, 34.298641, 34.198154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205154, 34.688942, 34.138359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589558, 0.027064, 0.807273,
		0.791741, -0.217209, -0.570934,
		0.159895, 0.975750, -0.149485,
		35.253124, 34.981667, 34.093513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859360, 34.326832, 34.145790>,  <35.141197, 34.298641, 34.198154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859360, 34.326832, 34.145790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705837, 34.682129, 34.246758>,  <35.613724, 34.895309, 34.307339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705837, 34.682129, 34.246758>,  <35.859360, 34.326832, 34.145790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705837, 34.682129, 34.246758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681759, 0.088202, 0.726240,
		0.622817, 0.450820, -0.639422,
		-0.383802, 0.888247, 0.252417,
		35.590698, 34.948605, 34.322483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219913, 34.549278, 33.485386>,  <35.859360, 34.326832, 34.145790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219913, 34.549278, 33.485386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526493, 34.298557, 33.541489>,  <36.710442, 34.148125, 33.575150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526493, 34.298557, 33.541489>,  <36.219913, 34.549278, 33.485386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526493, 34.298557, 33.541489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088075, -0.318866, -0.943699,
		0.636238, 0.710944, -0.299601,
		0.766449, -0.626804, 0.140258,
		36.756428, 34.110516, 33.583565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666256, 34.657478, 32.919479>,  <36.219913, 34.549278, 33.485386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666256, 34.657478, 32.919479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788292, 34.314606, 33.085449>,  <36.861515, 34.108883, 33.185032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788292, 34.314606, 33.085449>,  <36.666256, 34.657478, 32.919479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788292, 34.314606, 33.085449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075340, -0.412603, -0.907790,
		0.949338, 0.308219, -0.061301,
		0.305091, -0.857181, 0.414921,
		36.879818, 34.057453, 33.209927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237713, 34.482971, 32.514103>,  <36.666256, 34.657478, 32.919479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237713, 34.482971, 32.514103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117336, 34.145409, 32.691753>,  <37.045109, 33.942871, 32.798344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117336, 34.145409, 32.691753>,  <37.237713, 34.482971, 32.514103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117336, 34.145409, 32.691753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197479, -0.510772, -0.836728,
		0.932972, -0.164099, 0.320366,
		-0.300940, -0.843910, 0.444130,
		37.027054, 33.892235, 32.824993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610207, 33.886112, 32.105709>,  <37.237713, 34.482971, 32.514103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610207, 33.886112, 32.105709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309139, 33.707088, 32.298866>,  <37.128498, 33.599674, 32.414761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309139, 33.707088, 32.298866>,  <37.610207, 33.886112, 32.105709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309139, 33.707088, 32.298866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102008, -0.645312, -0.757078,
		0.650454, -0.619086, 0.440049,
		-0.752665, -0.447556, 0.482897,
		37.083340, 33.572823, 32.443737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847012, 33.218403, 32.078423>,  <37.610207, 33.886112, 32.105709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847012, 33.218403, 32.078423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454224, 33.225346, 32.153713>,  <37.218552, 33.229511, 32.198887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454224, 33.225346, 32.153713>,  <37.847012, 33.218403, 32.078423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454224, 33.225346, 32.153713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166471, -0.551147, -0.817633,
		0.089547, -0.834227, 0.544101,
		-0.981972, 0.017361, 0.188228,
		37.159634, 33.230553, 32.210182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592468, 32.518776, 32.099243>,  <37.847012, 33.218403, 32.078423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592468, 32.518776, 32.099243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270435, 32.746948, 32.034191>,  <37.077217, 32.883854, 31.995159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270435, 32.746948, 32.034191>,  <37.592468, 32.518776, 32.099243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270435, 32.746948, 32.034191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354686, -0.682716, -0.638824,
		-0.475438, -0.456622, 0.751967,
		-0.805082, 0.570433, -0.162632,
		37.028912, 32.918079, 31.985401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042542, 32.082893, 32.095173>,  <37.592468, 32.518776, 32.099243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042542, 32.082893, 32.095173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908005, 32.399601, 31.891220>,  <36.827282, 32.589626, 31.768848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908005, 32.399601, 31.891220>,  <37.042542, 32.082893, 32.095173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908005, 32.399601, 31.891220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354895, -0.608069, -0.710142,
		-0.872311, -0.057895, 0.485512,
		-0.336339, 0.791770, -0.509878,
		36.807102, 32.637131, 31.738256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492630, 31.863480, 31.912449>,  <37.042542, 32.082893, 32.095173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492630, 31.863480, 31.912449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521076, 32.182590, 31.672953>,  <36.538143, 32.374058, 31.529255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521076, 32.182590, 31.672953>,  <36.492630, 31.863480, 31.912449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521076, 32.182590, 31.672953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305424, -0.554014, -0.774458,
		-0.949557, 0.237949, 0.204259,
		0.071119, 0.797777, -0.598743,
		36.542412, 32.421925, 31.493330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847843, 31.916864, 31.586203>,  <36.492630, 31.863480, 31.912449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847843, 31.916864, 31.586203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111958, 32.103580, 31.350870>,  <36.270424, 32.215611, 31.209671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111958, 32.103580, 31.350870>,  <35.847843, 31.916864, 31.586203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111958, 32.103580, 31.350870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386354, -0.460646, -0.799085,
		-0.644017, 0.754926, -0.123810,
		0.660282, 0.466790, -0.588332,
		36.310043, 32.243618, 31.174370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403065, 32.115280, 31.049044>,  <35.847843, 31.916864, 31.586203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403065, 32.115280, 31.049044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778343, 32.118053, 30.910629>,  <36.003510, 32.119717, 30.827581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778343, 32.118053, 30.910629>,  <35.403065, 32.115280, 31.049044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778343, 32.118053, 30.910629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316627, -0.386554, -0.866212,
		-0.139766, 0.922241, -0.360469,
		0.938197, 0.006932, -0.346034,
		36.059803, 32.120132, 30.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325363, 32.380547, 30.427826>,  <35.403065, 32.115280, 31.049044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325363, 32.380547, 30.427826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689198, 32.214931, 30.413805>,  <35.907497, 32.115562, 30.405392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689198, 32.214931, 30.413805>,  <35.325363, 32.380547, 30.427826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689198, 32.214931, 30.413805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235196, -0.443477, -0.864876,
		0.342542, 0.794924, -0.500760,
		0.909586, -0.414034, -0.035053,
		35.962074, 32.090721, 30.403290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751446, 32.626698, 29.742325>,  <35.325363, 32.380547, 30.427826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751446, 32.626698, 29.742325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859646, 32.274845, 29.898827>,  <35.924568, 32.063732, 29.992727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859646, 32.274845, 29.898827>,  <35.751446, 32.626698, 29.742325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859646, 32.274845, 29.898827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393722, -0.471944, -0.788830,
		0.878528, 0.059336, -0.473992,
		0.270504, -0.879630, 0.391254,
		35.940796, 32.010956, 30.016203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089035, 32.355892, 29.342405>,  <35.751446, 32.626698, 29.742325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089035, 32.355892, 29.342405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942394, 32.056259, 29.563122>,  <35.854412, 31.876478, 29.695553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942394, 32.056259, 29.563122>,  <36.089035, 32.355892, 29.342405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942394, 32.056259, 29.563122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306571, -0.462701, -0.831818,
		0.878419, -0.474107, -0.060023,
		-0.366598, -0.749086, 0.551793,
		35.832417, 31.831533, 29.728661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256229, 31.705217, 28.983992>,  <36.089035, 32.355892, 29.342405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256229, 31.705217, 28.983992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929188, 31.621973, 29.198734>,  <35.732964, 31.572027, 29.327579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929188, 31.621973, 29.198734>,  <36.256229, 31.705217, 28.983992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929188, 31.621973, 29.198734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427453, -0.405296, -0.808096,
		0.385758, -0.890183, 0.242415,
		-0.817604, -0.208109, 0.536857,
		35.683907, 31.559540, 29.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054173, 31.135265, 28.631512>,  <36.256229, 31.705217, 28.983992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054173, 31.135265, 28.631512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729210, 31.231022, 28.844185>,  <35.534233, 31.288475, 28.971788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729210, 31.231022, 28.844185>,  <36.054173, 31.135265, 28.631512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729210, 31.231022, 28.844185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581452, -0.264300, -0.769454,
		-0.043676, -0.934258, 0.353913,
		-0.812407, 0.239390, 0.531683,
		35.485489, 31.302839, 29.003689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542713, 30.627649, 28.504389>,  <36.054173, 31.135265, 28.631512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542713, 30.627649, 28.504389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347141, 30.956600, 28.620762>,  <35.229797, 31.153971, 28.690586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347141, 30.956600, 28.620762>,  <35.542713, 30.627649, 28.504389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347141, 30.956600, 28.620762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724129, -0.196671, -0.661028,
		-0.486396, -0.533870, 0.691666,
		-0.488934, 0.822377, 0.290931,
		35.200462, 31.203314, 28.708042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922596, 30.395435, 28.530476>,  <35.542713, 30.627649, 28.504389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922596, 30.395435, 28.530476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875443, 30.791037, 28.494740>,  <34.847153, 31.028397, 28.473297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875443, 30.791037, 28.494740>,  <34.922596, 30.395435, 28.530476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875443, 30.791037, 28.494740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737324, -0.147434, -0.659255,
		-0.665175, -0.011840, 0.746593,
		-0.117879, 0.989001, -0.089340,
		34.840080, 31.087736, 28.467937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248402, 30.413366, 28.335041>,  <34.922596, 30.395435, 28.530476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248402, 30.413366, 28.335041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382076, 30.775814, 28.231293>,  <34.462280, 30.993282, 28.169044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382076, 30.775814, 28.231293>,  <34.248402, 30.413366, 28.335041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382076, 30.775814, 28.231293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635935, 0.013665, -0.771622,
		-0.695635, 0.422806, 0.580798,
		0.334183, 0.906117, -0.259371,
		34.482330, 31.047649, 28.153481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.597839, 30.812845, 28.113403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887459, 31.045212, 27.964649>,  <34.061230, 31.184631, 27.875397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887459, 31.045212, 27.964649>,  <33.597839, 30.812845, 28.113403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887459, 31.045212, 27.964649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543657, 0.148820, -0.826009,
		-0.424496, 0.800244, 0.423570,
		0.724045, 0.580914, -0.371884,
		34.104671, 31.219486, 27.853085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279911, 31.391766, 27.876123>,  <33.597839, 30.812845, 28.113403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279911, 31.391766, 27.876123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632893, 31.395407, 27.687996>,  <33.844681, 31.397593, 27.575119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632893, 31.395407, 27.687996>,  <33.279911, 31.391766, 27.876123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632893, 31.395407, 27.687996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456275, 0.259785, -0.851073,
		0.114433, 0.965624, 0.233402,
		0.882450, 0.009105, -0.470318,
		33.897629, 31.398138, 27.546900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414082, 32.004589, 27.535013>,  <33.279911, 31.391766, 27.876123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414082, 32.004589, 27.535013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604206, 31.723198, 27.323660>,  <33.718281, 31.554361, 27.196848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604206, 31.723198, 27.323660>,  <33.414082, 32.004589, 27.535013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604206, 31.723198, 27.323660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547333, 0.233776, -0.803601,
		0.688843, 0.671164, -0.273923,
		0.475312, -0.703482, -0.528385,
		33.746799, 31.512154, 27.165144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616852, 32.317226, 26.960981>,  <33.414082, 32.004589, 27.535013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616852, 32.317226, 26.960981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613754, 31.933821, 26.847004>,  <33.611897, 31.703777, 26.778618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613754, 31.933821, 26.847004>,  <33.616852, 32.317226, 26.960981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613754, 31.933821, 26.847004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605028, 0.231368, -0.761847,
		0.796167, 0.166498, -0.581719,
		-0.007745, -0.958513, -0.284943,
		33.611431, 31.646267, 26.761520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700226, 32.370296, 26.246033>,  <33.616852, 32.317226, 26.960981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700226, 32.370296, 26.246033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578136, 31.991274, 26.283924>,  <33.504883, 31.763861, 26.306660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578136, 31.991274, 26.283924>,  <33.700226, 32.370296, 26.246033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578136, 31.991274, 26.283924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567050, 0.100932, -0.817476,
		0.765043, -0.303232, -0.568119,
		-0.305226, -0.947556, 0.094730,
		33.486568, 31.707006, 26.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764988, 32.096664, 25.611546>,  <33.700226, 32.370296, 26.246033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764988, 32.096664, 25.611546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504456, 31.855375, 25.795668>,  <33.348137, 31.710602, 25.906141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504456, 31.855375, 25.795668>,  <33.764988, 32.096664, 25.611546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504456, 31.855375, 25.795668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567812, -0.014930, -0.823023,
		0.503342, -0.797430, -0.332795,
		-0.651334, -0.603227, 0.460305,
		33.309055, 31.674408, 25.933760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732758, 31.603168, 25.104319>,  <33.764988, 32.096664, 25.611546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732758, 31.603168, 25.104319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409729, 31.575409, 25.338587>,  <33.215912, 31.558752, 25.479147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409729, 31.575409, 25.338587>,  <33.732758, 31.603168, 25.104319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409729, 31.575409, 25.338587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564517, -0.196495, -0.801692,
		0.170719, -0.978046, 0.119507,
		-0.807574, -0.069400, 0.585669,
		33.167458, 31.554588, 25.514288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389946, 31.010416, 24.833092>,  <33.732758, 31.603168, 25.104319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389946, 31.010416, 24.833092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097538, 31.150806, 25.067160>,  <32.922092, 31.235041, 25.207600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097538, 31.150806, 25.067160>,  <33.389946, 31.010416, 24.833092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097538, 31.150806, 25.067160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680607, -0.313737, -0.662075,
		-0.048782, -0.882262, 0.468224,
		-0.731022, 0.350974, 0.585169,
		32.878231, 31.256100, 25.242710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932251, 30.368002, 24.928471>,  <33.389946, 31.010416, 24.833092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932251, 30.368002, 24.928471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706184, 30.691404, 24.994081>,  <32.570545, 30.885447, 25.033447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706184, 30.691404, 24.994081>,  <32.932251, 30.368002, 24.928471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706184, 30.691404, 24.994081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677392, -0.341307, -0.651652,
		-0.470881, -0.479401, 0.740571,
		-0.565165, 0.808507, 0.164027,
		32.536636, 30.933956, 25.043289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293842, 30.192911, 25.091413>,  <32.932251, 30.368002, 24.928471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293842, 30.192911, 25.091413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.242741, 30.569691, 24.967213>,  <32.212078, 30.795757, 24.892693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.242741, 30.569691, 24.967213>,  <32.293842, 30.192911, 25.091413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242741, 30.569691, 24.967213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751271, -0.296300, -0.589744,
		-0.647510, 0.157929, 0.745513,
		-0.127758, 0.941947, -0.310504,
		32.204414, 30.852276, 24.874062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476379, 30.344538, 25.101171>,  <32.293842, 30.192911, 25.091413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476379, 30.344538, 25.101171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683611, 30.588148, 24.860945>,  <31.807951, 30.734314, 24.716808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683611, 30.588148, 24.860945>,  <31.476379, 30.344538, 25.101171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683611, 30.588148, 24.860945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626992, -0.207179, -0.750971,
		-0.581785, 0.765614, 0.274519,
		0.518080, 0.609025, -0.600568,
		31.839035, 30.770855, 24.680775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949728, 30.816183, 24.837048>,  <31.476379, 30.344538, 25.101171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949728, 30.816183, 24.837048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239935, 30.786839, 24.563335>,  <31.414059, 30.769232, 24.399109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239935, 30.786839, 24.563335>,  <30.949728, 30.816183, 24.837048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239935, 30.786839, 24.563335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687715, -0.039865, -0.724886,
		0.025901, 0.996508, -0.079376,
		0.725519, -0.073364, -0.684281,
		31.457590, 30.764830, 24.358051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714941, 31.130604, 24.204950>,  <30.949728, 30.816183, 24.837048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714941, 31.130604, 24.204950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041840, 30.949823, 24.061924>,  <31.237978, 30.841356, 23.976109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041840, 30.949823, 24.061924>,  <30.714941, 31.130604, 24.204950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041840, 30.949823, 24.061924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344175, 0.114882, -0.931851,
		0.462227, 0.884615, -0.061663,
		0.817245, -0.451950, -0.357564,
		31.287014, 30.814238, 23.954655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875050, 31.559195, 23.591763>,  <30.714941, 31.130604, 24.204950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875050, 31.559195, 23.591763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059799, 31.208429, 23.538548>,  <31.170649, 30.997971, 23.506618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059799, 31.208429, 23.538548>,  <30.875050, 31.559195, 23.591763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059799, 31.208429, 23.538548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292414, -0.008942, -0.956250,
		0.837356, 0.480570, -0.260551,
		0.461875, -0.876911, -0.133038,
		31.198362, 30.945356, 23.498636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087519, 31.509201, 22.837490>,  <30.875050, 31.559195, 23.591763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087519, 31.509201, 22.837490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109442, 31.124161, 22.943619>,  <31.122595, 30.893137, 23.007296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109442, 31.124161, 22.943619>,  <31.087519, 31.509201, 22.837490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109442, 31.124161, 22.943619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187564, -0.270916, -0.944153,
		0.980722, 0.001981, -0.195398,
		0.054806, -0.962601, 0.265322,
		31.125883, 30.835381, 23.023214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605011, 31.176743, 22.464352>,  <31.087519, 31.509201, 22.837490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605011, 31.176743, 22.464352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359896, 30.886395, 22.589319>,  <31.212826, 30.712187, 22.664299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359896, 30.886395, 22.589319>,  <31.605011, 31.176743, 22.464352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359896, 30.886395, 22.589319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171998, -0.263357, -0.949242,
		0.771303, -0.635419, 0.036534,
		-0.612788, -0.725869, 0.312419,
		31.176060, 30.668634, 22.683044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811245, 30.507774, 22.079435>,  <31.605011, 31.176743, 22.464352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811245, 30.507774, 22.079435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437944, 30.452419, 22.212038>,  <31.213964, 30.419207, 22.291599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437944, 30.452419, 22.212038>,  <31.811245, 30.507774, 22.079435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437944, 30.452419, 22.212038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257131, -0.387088, -0.885464,
		0.250858, -0.911599, 0.325666,
		-0.933249, -0.138386, 0.331505,
		31.157970, 30.410904, 22.311489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544643, 29.834072, 21.779858>,  <31.811245, 30.507774, 22.079435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544643, 29.834072, 21.779858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217110, 30.036417, 21.888386>,  <31.020590, 30.157824, 21.953503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217110, 30.036417, 21.888386>,  <31.544643, 29.834072, 21.779858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217110, 30.036417, 21.888386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510327, -0.425103, -0.747565,
		-0.262824, -0.750595, 0.606243,
		-0.818834, 0.505861, 0.271322,
		30.971460, 30.188175, 21.969782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995241, 29.331940, 21.606041>,  <31.544643, 29.834072, 21.779858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995241, 29.331940, 21.606041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818068, 29.690266, 21.620615>,  <30.711763, 29.905260, 21.629358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818068, 29.690266, 21.620615>,  <30.995241, 29.331940, 21.606041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818068, 29.690266, 21.620615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475001, -0.200012, -0.856954,
		-0.760383, -0.396881, 0.514104,
		-0.442936, 0.895813, 0.036433,
		30.685186, 29.959009, 21.631544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417984, 29.205795, 21.246605>,  <30.995241, 29.331940, 21.606041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417984, 29.205795, 21.246605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410372, 29.605581, 21.257259>,  <30.405804, 29.845453, 21.263653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410372, 29.605581, 21.257259>,  <30.417984, 29.205795, 21.246605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410372, 29.605581, 21.257259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252305, 0.020978, -0.967420,
		-0.967461, -0.025132, 0.251770,
		-0.019032, 0.999464, 0.026636,
		30.404663, 29.905420, 21.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770569, 29.360659, 20.974522>,  <30.417984, 29.205795, 21.246605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770569, 29.360659, 20.974522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964375, 29.705795, 20.916904>,  <30.080658, 29.912878, 20.882334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964375, 29.705795, 20.916904>,  <29.770569, 29.360659, 20.974522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964375, 29.705795, 20.916904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418629, 0.084116, -0.904253,
		-0.768112, 0.498425, 0.401966,
		0.484514, 0.862842, -0.144045,
		30.109728, 29.964647, 20.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321795, 29.865776, 20.719336>,  <29.770569, 29.360659, 20.974522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321795, 29.865776, 20.719336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671757, 30.029642, 20.616022>,  <29.881735, 30.127962, 20.554033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671757, 30.029642, 20.616022>,  <29.321795, 29.865776, 20.719336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671757, 30.029642, 20.616022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374398, 0.233864, -0.897293,
		-0.307186, 0.881750, 0.357987,
		0.874907, 0.409665, -0.258286,
		29.934229, 30.152542, 20.538536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272467, 30.605330, 20.451931>,  <29.321795, 29.865776, 20.719336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272467, 30.605330, 20.451931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601364, 30.437450, 20.298166>,  <29.798702, 30.336723, 20.205908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601364, 30.437450, 20.298166>,  <29.272467, 30.605330, 20.451931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601364, 30.437450, 20.298166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220033, 0.388492, -0.894796,
		0.524885, 0.820322, 0.227086,
		0.822242, -0.419698, -0.384411,
		29.848036, 30.311541, 20.182842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188757, 31.026175, 19.882759>,  <29.272467, 30.605330, 20.451931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188757, 31.026175, 19.882759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221346, 31.368729, 19.678812>,  <29.240900, 31.574261, 19.556444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221346, 31.368729, 19.678812>,  <29.188757, 31.026175, 19.882759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221346, 31.368729, 19.678812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435290, 0.429628, 0.791165,
		0.896596, -0.286398, -0.337774,
		0.081471, 0.856385, -0.509869,
		29.245787, 31.625645, 19.525852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910542, 31.276054, 19.945475>,  <29.188757, 31.026175, 19.882759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910542, 31.276054, 19.945475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637566, 31.563944, 19.894451>,  <29.473780, 31.736677, 19.863838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637566, 31.563944, 19.894451>,  <29.910542, 31.276054, 19.945475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637566, 31.563944, 19.894451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342313, 0.468886, 0.814228,
		0.645830, 0.511998, -0.566358,
		-0.682441, 0.719725, -0.127556,
		29.432833, 31.779861, 19.856184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224564, 31.914289, 19.950140>,  <29.910542, 31.276054, 19.945475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224564, 31.914289, 19.950140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846630, 31.994526, 20.053720>,  <29.619871, 32.042667, 20.115868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846630, 31.994526, 20.053720>,  <30.224564, 31.914289, 19.950140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846630, 31.994526, 20.053720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327361, 0.551106, 0.767540,
		0.011253, 0.809966, -0.586368,
		-0.944832, 0.200592, 0.258950,
		29.563181, 32.054703, 20.131405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361742, 32.597633, 20.127005>,  <30.224564, 31.914289, 19.950140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361742, 32.597633, 20.127005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.991674, 32.533558, 20.264645>,  <29.769634, 32.495113, 20.347229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.991674, 32.533558, 20.264645>,  <30.361742, 32.597633, 20.127005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991674, 32.533558, 20.264645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209128, 0.541429, 0.814322,
		-0.316751, 0.825345, -0.467412,
		-0.925167, -0.160188, 0.344101,
		29.714125, 32.485500, 20.367874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230558, 33.181072, 20.540461>,  <30.361742, 32.597633, 20.127005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230558, 33.181072, 20.540461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937822, 32.950882, 20.686466>,  <29.762180, 32.812767, 20.774071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937822, 32.950882, 20.686466>,  <30.230558, 33.181072, 20.540461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937822, 32.950882, 20.686466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098433, 0.440742, 0.892220,
		-0.674332, 0.688891, -0.265906,
		-0.731839, -0.575478, 0.365016,
		29.718271, 32.778240, 20.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885584, 33.612770, 20.951935>,  <30.230558, 33.181072, 20.540461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885584, 33.612770, 20.951935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792486, 33.246803, 21.083849>,  <29.736628, 33.027222, 21.162998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792486, 33.246803, 21.083849>,  <29.885584, 33.612770, 20.951935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792486, 33.246803, 21.083849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227650, 0.278427, 0.933089,
		-0.945519, 0.292245, 0.143479,
		-0.232743, -0.914916, 0.329787,
		29.722664, 32.972328, 21.182785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496122, 33.627972, 21.507607>,  <29.885584, 33.612770, 20.951935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496122, 33.627972, 21.507607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628174, 33.252316, 21.545616>,  <29.707405, 33.026920, 21.568422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628174, 33.252316, 21.545616>,  <29.496122, 33.627972, 21.507607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628174, 33.252316, 21.545616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278005, 0.192938, 0.941004,
		-0.902068, -0.284238, 0.324780,
		0.330131, -0.939140, 0.095024,
		29.727213, 32.970573, 21.574123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179417, 33.356529, 22.068172>,  <29.496122, 33.627972, 21.507607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179417, 33.356529, 22.068172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513668, 33.138092, 22.044481>,  <29.714220, 33.007030, 22.030266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513668, 33.138092, 22.044481>,  <29.179417, 33.356529, 22.068172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513668, 33.138092, 22.044481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108808, 0.058873, 0.992318,
		-0.538408, -0.835655, 0.108614,
		0.835630, -0.546090, -0.059228,
		29.764357, 32.974266, 22.026712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218054, 33.053810, 22.711460>,  <29.179417, 33.356529, 22.068172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218054, 33.053810, 22.711460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586237, 33.014072, 22.560259>,  <29.807148, 32.990231, 22.469538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586237, 33.014072, 22.560259>,  <29.218054, 33.053810, 22.711460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586237, 33.014072, 22.560259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367615, -0.108361, 0.923643,
		-0.132724, -0.989135, -0.063219,
		0.920458, -0.099350, -0.378003,
		29.862375, 32.984268, 22.446857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665220, 32.513374, 23.124947>,  <29.218054, 33.053810, 22.711460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665220, 32.513374, 23.124947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951683, 32.713737, 22.930538>,  <30.123560, 32.833954, 22.813894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951683, 32.713737, 22.930538>,  <29.665220, 32.513374, 23.124947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951683, 32.713737, 22.930538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472365, 0.164780, 0.865863,
		0.513801, -0.849672, -0.118601,
		0.716156, 0.500904, -0.486019,
		30.166531, 32.864010, 22.784733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245766, 32.201363, 23.341160>,  <29.665220, 32.513374, 23.124947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245766, 32.201363, 23.341160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333387, 32.577061, 23.235451>,  <30.385960, 32.802479, 23.172026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333387, 32.577061, 23.235451>,  <30.245766, 32.201363, 23.341160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333387, 32.577061, 23.235451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379895, 0.167379, 0.909761,
		0.898719, -0.299684, -0.320148,
		0.219054, 0.939241, -0.264275,
		30.399103, 32.858833, 23.156168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031384, 32.284828, 23.509912>,  <30.245766, 32.201363, 23.341160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031384, 32.284828, 23.509912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840405, 32.635380, 23.484615>,  <30.725817, 32.845711, 23.469437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840405, 32.635380, 23.484615>,  <31.031384, 32.284828, 23.509912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840405, 32.635380, 23.484615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331716, 0.246432, 0.910624,
		0.813639, 0.413796, -0.408368,
		-0.477447, 0.876381, -0.063244,
		30.697170, 32.898293, 23.465643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508072, 32.829933, 23.712307>,  <31.031384, 32.284828, 23.509912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508072, 32.829933, 23.712307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142033, 32.980785, 23.769396>,  <30.922409, 33.071297, 23.803648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142033, 32.980785, 23.769396>,  <31.508072, 32.829933, 23.712307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142033, 32.980785, 23.769396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284664, 0.353522, 0.891060,
		0.285590, 0.856035, -0.430862,
		-0.915098, 0.377129, 0.142720,
		30.867502, 33.093925, 23.812212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617374, 33.541939, 23.931231>,  <31.508072, 32.829933, 23.712307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617374, 33.541939, 23.931231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.251915, 33.423538, 24.042681>,  <31.032640, 33.352497, 24.109550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.251915, 33.423538, 24.042681>,  <31.617374, 33.541939, 23.931231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251915, 33.423538, 24.042681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206786, 0.251684, 0.945460,
		-0.349986, 0.921432, -0.168741,
		-0.913646, -0.296004, 0.278625,
		30.977821, 33.334736, 24.126268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564081, 33.755440, 24.663351>,  <31.617374, 33.541939, 23.931231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564081, 33.755440, 24.663351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235071, 33.530968, 24.626400>,  <31.037666, 33.396286, 24.604229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235071, 33.530968, 24.626400>,  <31.564081, 33.755440, 24.663351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235071, 33.530968, 24.626400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026733, -0.200395, 0.979350,
		-0.568103, 0.803069, 0.179832,
		-0.822523, -0.561180, -0.092377,
		30.988314, 33.362614, 24.598686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108105, 34.139107, 25.126316>,  <31.564081, 33.755440, 24.663351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108105, 34.139107, 25.126316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962318, 33.769310, 25.081625>,  <30.874846, 33.547432, 25.054810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962318, 33.769310, 25.081625>,  <31.108105, 34.139107, 25.126316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962318, 33.769310, 25.081625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096743, -0.156924, 0.982861,
		-0.926178, 0.347411, 0.146631,
		-0.364467, -0.924489, -0.111730,
		30.852978, 33.491962, 25.048105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477261, 34.063919, 25.526741>,  <31.108105, 34.139107, 25.126316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477261, 34.063919, 25.526741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649260, 33.706627, 25.474232>,  <30.752459, 33.492252, 25.442726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649260, 33.706627, 25.474232>,  <30.477261, 34.063919, 25.526741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649260, 33.706627, 25.474232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033126, -0.129697, 0.991000,
		-0.902221, -0.430477, -0.026180,
		0.429999, -0.893234, -0.131275,
		30.778259, 33.438656, 25.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200657, 33.628799, 26.062168>,  <30.477261, 34.063919, 25.526741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200657, 33.628799, 26.062168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535469, 33.445133, 25.943136>,  <30.736357, 33.334934, 25.871717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535469, 33.445133, 25.943136>,  <30.200657, 33.628799, 26.062168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535469, 33.445133, 25.943136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110449, -0.390876, 0.913793,
		-0.535896, -0.797738, -0.276460,
		0.837028, -0.459163, -0.297578,
		30.786577, 33.307384, 25.853863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161514, 32.966267, 26.376419>,  <30.200657, 33.628799, 26.062168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161514, 32.966267, 26.376419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549089, 33.033493, 26.303850>,  <30.781633, 33.073830, 26.260309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549089, 33.033493, 26.303850>,  <30.161514, 32.966267, 26.376419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549089, 33.033493, 26.303850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224860, -0.293323, 0.929193,
		0.102953, -0.941124, -0.322004,
		0.968937, 0.168069, -0.181422,
		30.839771, 33.083912, 26.249424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457819, 32.540657, 26.800238>,  <30.161514, 32.966267, 26.376419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457819, 32.540657, 26.800238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754120, 32.797817, 26.722292>,  <30.931900, 32.952114, 26.675526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754120, 32.797817, 26.722292>,  <30.457819, 32.540657, 26.800238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754120, 32.797817, 26.722292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342406, -0.111766, 0.932881,
		0.577967, -0.757754, -0.302923,
		0.740751, 0.642897, -0.194862,
		30.976345, 32.990688, 26.663834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053698, 32.149063, 27.034370>,  <30.457819, 32.540657, 26.800238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053698, 32.149063, 27.034370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115454, 32.543915, 27.017683>,  <31.152508, 32.780827, 27.007671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115454, 32.543915, 27.017683>,  <31.053698, 32.149063, 27.034370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115454, 32.543915, 27.017683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298667, -0.006382, 0.954336,
		0.941787, -0.159799, -0.295808,
		0.154390, 0.987129, -0.041717,
		31.161770, 32.840054, 27.005169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.450996, 30.916920, 30.404617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310749, 31.263403, 30.262207>,  <36.226601, 31.471292, 30.176762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310749, 31.263403, 30.262207>,  <36.450996, 30.916920, 30.404617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310749, 31.263403, 30.262207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512034, 0.495612, 0.701563,
		0.784149, 0.063683, -0.617297,
		-0.350617, 0.866206, -0.356026,
		36.205563, 31.523264, 30.155399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064842, 31.408918, 30.424534>,  <36.450996, 30.916920, 30.404617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064842, 31.408918, 30.424534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.738178, 31.636108, 30.383589>,  <36.542179, 31.772423, 30.359022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.738178, 31.636108, 30.383589>,  <37.064842, 31.408918, 30.424534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738178, 31.636108, 30.383589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383875, 0.667027, 0.638526,
		0.430945, 0.482161, -0.762763,
		-0.816656, 0.567975, -0.102362,
		36.493183, 31.806501, 30.352880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211773, 32.161911, 30.211262>,  <37.064842, 31.408918, 30.424534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211773, 32.161911, 30.211262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867207, 32.167503, 30.414343>,  <36.660465, 32.170856, 30.536192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867207, 32.167503, 30.414343>,  <37.211773, 32.161911, 30.211262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867207, 32.167503, 30.414343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293474, 0.829551, 0.475099,
		-0.414526, 0.558257, -0.718691,
		-0.861418, 0.013976, 0.507704,
		36.608780, 32.171696, 30.566654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186607, 32.813511, 30.402834>,  <37.211773, 32.161911, 30.211262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186607, 32.813511, 30.402834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911896, 32.650330, 30.643469>,  <36.747066, 32.552422, 30.787849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911896, 32.650330, 30.643469>,  <37.186607, 32.813511, 30.402834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911896, 32.650330, 30.643469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187899, 0.699874, 0.689108,
		-0.702156, 0.586305, -0.404008,
		-0.686783, -0.407949, 0.601587,
		36.705860, 32.527946, 30.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821251, 33.425812, 30.722067>,  <37.186607, 32.813511, 30.402834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821251, 33.425812, 30.722067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720245, 33.108105, 30.943111>,  <36.659641, 32.917480, 31.075739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720245, 33.108105, 30.943111>,  <36.821251, 33.425812, 30.722067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720245, 33.108105, 30.943111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006688, 0.572540, 0.819849,
		-0.967569, 0.203330, -0.149888,
		-0.252517, -0.794263, 0.552613,
		36.644489, 32.869827, 31.108894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196075, 33.583298, 31.168837>,  <36.821251, 33.425812, 30.722067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196075, 33.583298, 31.168837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.392326, 33.288589, 31.354933>,  <36.510078, 33.111763, 31.466591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.392326, 33.288589, 31.354933>,  <36.196075, 33.583298, 31.168837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392326, 33.288589, 31.354933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053090, 0.558205, 0.828003,
		-0.869748, -0.381545, 0.312988,
		0.490631, -0.736771, 0.465241,
		36.539516, 33.067558, 31.494505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928074, 33.611561, 31.891445>,  <36.196075, 33.583298, 31.168837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928074, 33.611561, 31.891445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251411, 33.380783, 31.938288>,  <36.445415, 33.242317, 31.966393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251411, 33.380783, 31.938288>,  <35.928074, 33.611561, 31.891445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251411, 33.380783, 31.938288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243749, 0.509068, 0.825492,
		-0.535875, -0.638739, 0.552132,
		0.808346, -0.576942, 0.117105,
		36.493916, 33.207699, 31.973419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842827, 33.147923, 32.466160>,  <35.928074, 33.611561, 31.891445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842827, 33.147923, 32.466160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240089, 33.134819, 32.421307>,  <36.478447, 33.126957, 32.394394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240089, 33.134819, 32.421307>,  <35.842827, 33.147923, 32.466160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240089, 33.134819, 32.421307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114515, 0.462722, 0.879076,
		0.023089, -0.885898, 0.463305,
		0.993153, -0.032758, -0.112132,
		36.538036, 33.124992, 32.387669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148647, 32.868618, 32.977169>,  <35.842827, 33.147923, 32.466160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148647, 32.868618, 32.977169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454964, 33.087246, 32.841629>,  <36.638756, 33.218422, 32.760307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454964, 33.087246, 32.841629>,  <36.148647, 32.868618, 32.977169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454964, 33.087246, 32.841629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114482, 0.402623, 0.908179,
		0.632815, -0.734269, 0.245753,
		0.765793, 0.546574, -0.338847,
		36.684700, 33.251217, 32.739975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576981, 32.850956, 33.481743>,  <36.148647, 32.868618, 32.977169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576981, 32.850956, 33.481743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712570, 33.168144, 33.279243>,  <36.793922, 33.358459, 33.157742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712570, 33.168144, 33.279243>,  <36.576981, 32.850956, 33.481743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712570, 33.168144, 33.279243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149314, 0.485943, 0.861142,
		0.928872, -0.367493, 0.046319,
		0.338971, 0.792975, -0.506251,
		36.814262, 33.406036, 33.127369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281715, 32.972298, 33.689938>,  <36.576981, 32.850956, 33.481743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281715, 32.972298, 33.689938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157681, 33.311340, 33.517700>,  <37.083260, 33.514767, 33.414356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157681, 33.311340, 33.517700>,  <37.281715, 32.972298, 33.689938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157681, 33.311340, 33.517700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106386, 0.481012, 0.870235,
		0.944737, 0.224039, -0.239328,
		-0.310086, 0.847605, -0.430595,
		37.064655, 33.565620, 33.388523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792881, 33.324413, 33.922188>,  <37.281715, 32.972298, 33.689938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792881, 33.324413, 33.922188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469707, 33.541306, 33.829903>,  <37.275803, 33.671440, 33.774532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469707, 33.541306, 33.829903>,  <37.792881, 33.324413, 33.922188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469707, 33.541306, 33.829903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062285, 0.467903, 0.881582,
		0.585974, 0.697889, -0.411807,
		-0.807933, 0.542234, -0.230711,
		37.227329, 33.703976, 33.760689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950043, 34.042248, 33.931465>,  <37.792881, 33.324413, 33.922188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950043, 34.042248, 33.931465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556908, 34.024086, 34.002983>,  <37.321026, 34.013187, 34.045895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556908, 34.024086, 34.002983>,  <37.950043, 34.042248, 33.931465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556908, 34.024086, 34.002983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149888, 0.368425, 0.917495,
		-0.107533, 0.928548, -0.355296,
		-0.982838, -0.045406, 0.178796,
		37.262054, 34.010464, 34.056622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073231, 34.814075, 34.183941>,  <37.950043, 34.042248, 33.931465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073231, 34.814075, 34.183941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408741, 34.817413, 34.401707>,  <38.610046, 34.819416, 34.532368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408741, 34.817413, 34.401707>,  <38.073231, 34.814075, 34.183941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408741, 34.817413, 34.401707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110773, 0.981587, 0.155617,
		-0.533094, -0.190834, 0.824253,
		0.838773, 0.008347, 0.544417,
		38.660374, 34.819916, 34.565033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643940, 35.044529, 33.686771>,  <38.073231, 34.814075, 34.183941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643940, 35.044529, 33.686771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828274, 35.355556, 33.515648>,  <38.938873, 35.542171, 33.412975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828274, 35.355556, 33.515648>,  <38.643940, 35.044529, 33.686771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828274, 35.355556, 33.515648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427156, -0.228201, -0.874907,
		-0.777924, 0.585931, 0.226978,
		0.460839, 0.777566, -0.427807,
		38.966526, 35.588825, 33.387306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121037, 35.525810, 33.445900>,  <38.643940, 35.044529, 33.686771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121037, 35.525810, 33.445900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459335, 35.570583, 33.237213>,  <38.662315, 35.597446, 33.112000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459335, 35.570583, 33.237213>,  <38.121037, 35.525810, 33.445900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459335, 35.570583, 33.237213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492710, -0.211514, -0.844096,
		-0.204831, 0.970945, -0.123737,
		0.845743, 0.111930, -0.521719,
		38.713058, 35.604164, 33.080696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817360, 35.800240, 32.805080>,  <38.121037, 35.525810, 33.445900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817360, 35.800240, 32.805080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192600, 35.700466, 32.708961>,  <38.417744, 35.640602, 32.651291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192600, 35.700466, 32.708961>,  <37.817360, 35.800240, 32.805080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192600, 35.700466, 32.708961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287201, -0.172428, -0.942223,
		0.193586, 0.952918, -0.233393,
		0.938104, -0.249432, -0.240300,
		38.474033, 35.625637, 32.636871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980106, 36.173439, 32.228249>,  <37.817360, 35.800240, 32.805080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980106, 36.173439, 32.228249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269073, 35.897850, 32.204815>,  <38.442455, 35.732498, 32.190754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269073, 35.897850, 32.204815>,  <37.980106, 36.173439, 32.228249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269073, 35.897850, 32.204815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259155, -0.191243, -0.946713,
		0.641052, 0.699106, -0.316707,
		0.722421, -0.688968, -0.058580,
		38.485798, 35.691158, 32.187241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296791, 36.314934, 31.602053>,  <37.980106, 36.173439, 32.228249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296791, 36.314934, 31.602053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375397, 35.930431, 31.679379>,  <38.422558, 35.699730, 31.725775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375397, 35.930431, 31.679379>,  <38.296791, 36.314934, 31.602053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375397, 35.930431, 31.679379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223670, -0.235909, -0.945684,
		0.954649, 0.142599, -0.261363,
		0.196512, -0.961256, 0.193315,
		38.434349, 35.642056, 31.737373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923641, 36.061432, 31.293278>,  <38.296791, 36.314934, 31.602053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923641, 36.061432, 31.293278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.691422, 35.738388, 31.334715>,  <38.552090, 35.544563, 31.359577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.691422, 35.738388, 31.334715>,  <38.923641, 36.061432, 31.293278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691422, 35.738388, 31.334715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034914, -0.151801, -0.987794,
		0.813476, -0.569847, 0.116325,
		-0.580549, -0.807608, 0.103591,
		38.517258, 35.496105, 31.365791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075241, 35.710346, 30.676889>,  <38.923641, 36.061432, 31.293278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075241, 35.710346, 30.676889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742405, 35.515720, 30.783384>,  <38.542706, 35.398945, 30.847281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742405, 35.515720, 30.783384>,  <39.075241, 35.710346, 30.676889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742405, 35.515720, 30.783384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225064, -0.142516, -0.963865,
		0.506929, -0.861940, 0.009077,
		-0.832088, -0.486568, 0.266237,
		38.492779, 35.369751, 30.863255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010334, 34.947601, 30.421867>,  <39.075241, 35.710346, 30.676889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010334, 34.947601, 30.421867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628418, 35.049496, 30.483162>,  <38.399269, 35.110630, 30.519938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628418, 35.049496, 30.483162>,  <39.010334, 34.947601, 30.421867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628418, 35.049496, 30.483162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230108, -0.306974, -0.923481,
		-0.188199, -0.916995, 0.351712,
		-0.954794, 0.254730, 0.153235,
		38.341980, 35.125916, 30.529133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589985, 34.326958, 30.253002>,  <39.010334, 34.947601, 30.421867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589985, 34.326958, 30.253002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361816, 34.651264, 30.200424>,  <38.224915, 34.845848, 30.168877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361816, 34.651264, 30.200424>,  <38.589985, 34.326958, 30.253002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361816, 34.651264, 30.200424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428655, -0.430367, -0.794379,
		-0.700628, -0.396783, 0.593029,
		-0.570417, 0.810769, -0.131444,
		38.190693, 34.894497, 30.160992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920464, 34.122196, 30.162331>,  <38.589985, 34.326958, 30.253002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920464, 34.122196, 30.162331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.885452, 34.499962, 30.035576>,  <37.864445, 34.726624, 29.959522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.885452, 34.499962, 30.035576>,  <37.920464, 34.122196, 30.162331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885452, 34.499962, 30.035576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555944, -0.310269, -0.771141,
		-0.826599, 0.108678, 0.552199,
		-0.087524, 0.944416, -0.316887,
		37.859196, 34.783287, 29.940510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235317, 34.179825, 29.882133>,  <37.920464, 34.122196, 30.162331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235317, 34.179825, 29.882133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414429, 34.492016, 29.707617>,  <37.521896, 34.679329, 29.602907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414429, 34.492016, 29.707617>,  <37.235317, 34.179825, 29.882133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414429, 34.492016, 29.707617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532071, -0.159563, -0.831529,
		-0.718603, 0.604482, 0.343818,
		0.447783, 0.780475, -0.436290,
		37.548763, 34.726158, 29.576731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673138, 34.528172, 29.580589>,  <37.235317, 34.179825, 29.882133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673138, 34.528172, 29.580589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006111, 34.645256, 29.392385>,  <37.205894, 34.715508, 29.279463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006111, 34.645256, 29.392385>,  <36.673138, 34.528172, 29.580589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006111, 34.645256, 29.392385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454621, -0.124715, -0.881911,
		-0.316826, 0.948032, 0.029257,
		0.832431, 0.292713, -0.470508,
		37.255840, 34.733070, 29.251232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482700, 34.982521, 28.967682>,  <36.673138, 34.528172, 29.580589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482700, 34.982521, 28.967682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842220, 34.836933, 28.869959>,  <37.057930, 34.749580, 28.811325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842220, 34.836933, 28.869959>,  <36.482700, 34.982521, 28.967682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842220, 34.836933, 28.869959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325297, -0.180207, -0.928282,
		0.293845, 0.913810, -0.280369,
		0.898798, -0.363974, -0.244307,
		37.111858, 34.727741, 28.796667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543385, 35.280285, 28.284298>,  <36.482700, 34.982521, 28.967682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543385, 35.280285, 28.284298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814964, 34.989292, 28.323893>,  <36.977913, 34.814697, 28.347651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814964, 34.989292, 28.323893>,  <36.543385, 35.280285, 28.284298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814964, 34.989292, 28.323893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062782, -0.191861, -0.979412,
		0.731498, 0.658754, -0.175937,
		0.678947, -0.727483, 0.098988,
		37.018650, 34.771046, 28.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686768, 36.084690, 28.247032>,  <36.543385, 35.280285, 28.284298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686768, 36.084690, 28.247032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.484650, 36.401569, 28.110151>,  <36.363380, 36.591698, 28.028023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.484650, 36.401569, 28.110151>,  <36.686768, 36.084690, 28.247032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484650, 36.401569, 28.110151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103977, 0.337768, 0.935469,
		0.856663, 0.508264, -0.088301,
		-0.505290, 0.792200, -0.342201,
		36.333061, 36.639229, 28.007490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194660, 36.749298, 28.418097>,  <36.686768, 36.084690, 28.247032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194660, 36.749298, 28.418097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821327, 36.870159, 28.340536>,  <36.597328, 36.942677, 28.293999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821327, 36.870159, 28.340536>,  <37.194660, 36.749298, 28.418097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821327, 36.870159, 28.340536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007744, 0.556905, 0.830540,
		0.358936, 0.773666, -0.522116,
		-0.933330, 0.302154, -0.193903,
		36.541328, 36.960804, 28.282366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100040, 37.519035, 28.447405>,  <37.194660, 36.749298, 28.418097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100040, 37.519035, 28.447405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732094, 37.373451, 28.505899>,  <36.511326, 37.286102, 28.540997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732094, 37.373451, 28.505899>,  <37.100040, 37.519035, 28.447405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732094, 37.373451, 28.505899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149964, 0.670828, 0.726292,
		-0.362440, 0.646160, -0.671651,
		-0.919863, -0.363961, 0.146234,
		36.456135, 37.264263, 28.549770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716148, 38.129097, 28.481483>,  <37.100040, 37.519035, 28.447405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716148, 38.129097, 28.481483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.489494, 37.842922, 28.644987>,  <36.353504, 37.671219, 28.743090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.489494, 37.842922, 28.644987>,  <36.716148, 38.129097, 28.481483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489494, 37.842922, 28.644987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273005, 0.631072, 0.726097,
		-0.777430, 0.299836, -0.552902,
		-0.566631, -0.715434, 0.408758,
		36.319504, 37.628292, 28.767614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996544, 38.383942, 28.737911>,  <36.716148, 38.129097, 28.481483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996544, 38.383942, 28.737911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009415, 38.051903, 28.960585>,  <36.017136, 37.852680, 29.094189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009415, 38.051903, 28.960585>,  <35.996544, 38.383942, 28.737911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009415, 38.051903, 28.960585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404749, 0.498438, 0.766640,
		-0.913861, -0.249986, -0.319945,
		0.032177, -0.830101, 0.556685,
		36.019066, 37.802872, 29.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297169, 38.314316, 29.070436>,  <35.996544, 38.383942, 28.737911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297169, 38.314316, 29.070436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.544014, 38.083260, 29.284168>,  <35.692120, 37.944626, 29.412407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.544014, 38.083260, 29.284168>,  <35.297169, 38.314316, 29.070436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544014, 38.083260, 29.284168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400133, 0.354337, 0.845186,
		-0.677545, -0.735376, -0.012467,
		0.617111, -0.577640, 0.534327,
		35.729149, 37.909969, 29.444466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927402, 38.056641, 29.628792>,  <35.297169, 38.314316, 29.070436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927402, 38.056641, 29.628792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307571, 37.997471, 29.738207>,  <35.535671, 37.961967, 29.803856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307571, 37.997471, 29.738207>,  <34.927402, 38.056641, 29.628792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307571, 37.997471, 29.738207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190174, 0.419479, 0.887621,
		-0.246043, -0.895632, 0.370550,
		0.950420, -0.147924, 0.273536,
		35.592697, 37.953094, 29.820267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886421, 37.777378, 30.258492>,  <34.927402, 38.056641, 29.628792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886421, 37.777378, 30.258492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253334, 37.935623, 30.240240>,  <35.473484, 38.030571, 30.229290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253334, 37.935623, 30.240240>,  <34.886421, 37.777378, 30.258492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253334, 37.935623, 30.240240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023398, 0.060840, 0.997873,
		0.397546, -0.916401, 0.046551,
		0.917284, 0.395611, -0.045629,
		35.528519, 38.054306, 30.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338974, 37.416290, 30.689381>,  <34.886421, 37.777378, 30.258492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338974, 37.416290, 30.689381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514927, 37.775043, 30.671026>,  <35.620499, 37.990295, 30.660013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514927, 37.775043, 30.671026>,  <35.338974, 37.416290, 30.689381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514927, 37.775043, 30.671026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002964, 0.049646, 0.998763,
		0.898049, -0.439477, 0.019180,
		0.439886, 0.896881, -0.045888,
		35.646893, 38.044109, 30.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662209, 37.529118, 31.410425>,  <35.338974, 37.416290, 30.689381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662209, 37.529118, 31.410425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.689774, 37.880802, 31.221853>,  <35.706310, 38.091812, 31.108711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.689774, 37.880802, 31.221853>,  <35.662209, 37.529118, 31.410425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689774, 37.880802, 31.221853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061026, 0.475382, 0.877661,
		0.995755, -0.031708, 0.086412,
		0.068908, 0.879208, -0.471429,
		35.710445, 38.144566, 31.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224869, 37.942963, 31.733639>,  <35.662209, 37.529118, 31.410425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224869, 37.942963, 31.733639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.959450, 38.185673, 31.558584>,  <35.800198, 38.331299, 31.453550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.959450, 38.185673, 31.558584>,  <36.224869, 37.942963, 31.733639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959450, 38.185673, 31.558584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152468, 0.463019, 0.873137,
		0.732430, 0.646097, -0.214723,
		-0.663552, 0.606773, -0.437637,
		35.760384, 38.367706, 31.427294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397209, 38.755493, 31.882450>,  <36.224869, 37.942963, 31.733639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397209, 38.755493, 31.882450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010380, 38.693813, 31.801464>,  <35.778282, 38.656807, 31.752872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010380, 38.693813, 31.801464>,  <36.397209, 38.755493, 31.882450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010380, 38.693813, 31.801464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249905, 0.424921, 0.870051,
		-0.048126, 0.892001, -0.449464,
		-0.967074, -0.154196, -0.202466,
		35.720257, 38.647556, 31.740725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.396004, 36.257740, 24.188009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026287, 36.398846, 24.246294>,  <35.804455, 36.483509, 24.281265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026287, 36.398846, 24.246294>,  <36.396004, 36.257740, 24.188009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026287, 36.398846, 24.246294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112110, -0.113997, 0.987135,
		0.364840, 0.928741, 0.065818,
		-0.924296, 0.352768, 0.145712,
		35.748997, 36.504677, 24.290009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456749, 36.944706, 24.586561>,  <36.396004, 36.257740, 24.188009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456749, 36.944706, 24.586561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103706, 36.765614, 24.643908>,  <35.891880, 36.658157, 24.678316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103706, 36.765614, 24.643908>,  <36.456749, 36.944706, 24.586561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103706, 36.765614, 24.643908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150281, 0.020258, 0.988436,
		-0.445454, 0.893941, 0.049405,
		-0.882602, -0.447727, 0.143366,
		35.838924, 36.631294, 24.686918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164360, 37.378105, 25.100983>,  <36.456749, 36.944706, 24.586561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164360, 37.378105, 25.100983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956268, 37.036499, 25.102924>,  <35.831413, 36.831535, 25.104090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956268, 37.036499, 25.102924>,  <36.164360, 37.378105, 25.100983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956268, 37.036499, 25.102924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017104, -0.004738, 0.999843,
		-0.853854, 0.520233, 0.017071,
		-0.520232, -0.854011, 0.004852,
		35.800198, 36.780296, 25.104380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640327, 37.505863, 25.553251>,  <36.164360, 37.378105, 25.100983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640327, 37.505863, 25.553251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727055, 37.116608, 25.522272>,  <35.779091, 36.883057, 25.503685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727055, 37.116608, 25.522272>,  <35.640327, 37.505863, 25.553251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727055, 37.116608, 25.522272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073136, -0.062919, 0.995335,
		-0.973468, -0.221472, 0.057529,
		0.216819, -0.973135, -0.077447,
		35.792099, 36.824669, 25.499039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357338, 37.273952, 26.137465>,  <35.640327, 37.505863, 25.553251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357338, 37.273952, 26.137465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620159, 36.990776, 26.033855>,  <35.777851, 36.820869, 25.971689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620159, 36.990776, 26.033855>,  <35.357338, 37.273952, 26.137465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620159, 36.990776, 26.033855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238353, -0.130876, 0.962320,
		-0.715169, -0.694036, 0.082748,
		0.657055, -0.707944, -0.259024,
		35.817276, 36.778393, 25.956148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153706, 36.678291, 26.513218>,  <35.357338, 37.273952, 26.137465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153706, 36.678291, 26.513218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531693, 36.620129, 26.395992>,  <35.758484, 36.585232, 26.325657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531693, 36.620129, 26.395992>,  <35.153706, 36.678291, 26.513218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531693, 36.620129, 26.395992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267113, -0.174290, 0.947773,
		-0.188894, -0.973899, -0.125858,
		0.944971, -0.145410, -0.293063,
		35.815186, 36.576508, 26.308073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291962, 36.066784, 26.801188>,  <35.153706, 36.678291, 26.513218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291962, 36.066784, 26.801188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645176, 36.244678, 26.741249>,  <35.857105, 36.351414, 26.705286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645176, 36.244678, 26.741249>,  <35.291962, 36.066784, 26.801188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645176, 36.244678, 26.741249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205302, -0.078950, 0.975509,
		0.422011, -0.892177, -0.161020,
		0.883039, 0.444733, -0.149848,
		35.910088, 36.378098, 26.696295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784904, 35.740444, 27.307051>,  <35.291962, 36.066784, 26.801188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784904, 35.740444, 27.307051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957230, 36.088120, 27.209961>,  <36.060627, 36.296722, 27.151707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957230, 36.088120, 27.209961>,  <35.784904, 35.740444, 27.307051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957230, 36.088120, 27.209961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333657, 0.096493, 0.937743,
		0.838494, -0.484981, -0.248439,
		0.430815, 0.869185, -0.242726,
		36.086475, 36.348873, 27.137144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331669, 35.734222, 27.711683>,  <35.784904, 35.740444, 27.307051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331669, 35.734222, 27.711683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314716, 36.124172, 27.624216>,  <36.304546, 36.358143, 27.571735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314716, 36.124172, 27.624216>,  <36.331669, 35.734222, 27.711683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314716, 36.124172, 27.624216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030557, 0.220029, 0.975015,
		0.998634, 0.034641, -0.039114,
		-0.042382, 0.974878, -0.218670,
		36.302002, 36.416637, 27.558615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016136, 35.369438, 27.666088>,  <36.331669, 35.734222, 27.711683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016136, 35.369438, 27.666088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056702, 34.986931, 27.775822>,  <37.081039, 34.757427, 27.841661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056702, 34.986931, 27.775822>,  <37.016136, 35.369438, 27.666088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056702, 34.986931, 27.775822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239221, -0.291102, -0.926301,
		0.965655, 0.028310, -0.258281,
		0.101410, -0.956273, 0.274332,
		37.087124, 34.700050, 27.858122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403679, 35.079231, 27.121576>,  <37.016136, 35.369438, 27.666088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403679, 35.079231, 27.121576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253807, 34.767330, 27.322216>,  <37.163883, 34.580189, 27.442600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253807, 34.767330, 27.322216>,  <37.403679, 35.079231, 27.121576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253807, 34.767330, 27.322216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268918, -0.426353, -0.863659,
		0.887297, -0.458486, -0.049942,
		-0.374683, -0.779752, 0.501597,
		37.141403, 34.533405, 27.472694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695988, 34.465733, 26.927923>,  <37.403679, 35.079231, 27.121576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695988, 34.465733, 26.927923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368511, 34.318241, 27.104006>,  <37.172024, 34.229744, 27.209656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368511, 34.318241, 27.104006>,  <37.695988, 34.465733, 26.927923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368511, 34.318241, 27.104006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202190, -0.532404, -0.821989,
		0.537460, -0.761961, 0.361321,
		-0.818691, -0.368730, 0.440206,
		37.122902, 34.207623, 27.236067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664852, 33.770824, 26.861256>,  <37.695988, 34.465733, 26.927923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664852, 33.770824, 26.861256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277752, 33.856956, 26.913542>,  <37.045490, 33.908638, 26.944914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277752, 33.856956, 26.913542>,  <37.664852, 33.770824, 26.861256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277752, 33.856956, 26.913542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229988, -0.543586, -0.807230,
		-0.102768, -0.811262, 0.575580,
		-0.967752, 0.215334, 0.130717,
		36.987427, 33.921558, 26.952757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217987, 33.098072, 26.882393>,  <37.664852, 33.770824, 26.861256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217987, 33.098072, 26.882393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981930, 33.399746, 26.767197>,  <36.840298, 33.580750, 26.698078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981930, 33.399746, 26.767197>,  <37.217987, 33.098072, 26.882393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981930, 33.399746, 26.767197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261012, -0.515820, -0.815967,
		-0.763943, -0.406365, 0.501257,
		-0.590139, 0.754186, -0.287991,
		36.804890, 33.626003, 26.680799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569897, 32.759792, 26.624041>,  <37.217987, 33.098072, 26.882393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569897, 32.759792, 26.624041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528378, 33.132957, 26.486113>,  <36.503468, 33.356857, 26.403355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528378, 33.132957, 26.486113>,  <36.569897, 32.759792, 26.624041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528378, 33.132957, 26.486113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454028, -0.352907, -0.818117,
		-0.884920, 0.071640, 0.460199,
		-0.103798, 0.932911, -0.344821,
		36.497238, 33.412830, 26.382666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879539, 32.843998, 26.398584>,  <36.569897, 32.759792, 26.624041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879539, 32.843998, 26.398584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064358, 33.129864, 26.188528>,  <36.175247, 33.301384, 26.062494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064358, 33.129864, 26.188528>,  <35.879539, 32.843998, 26.398584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064358, 33.129864, 26.188528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639357, -0.141933, -0.755696,
		-0.614604, 0.684915, 0.391347,
		0.462043, 0.714665, -0.525139,
		36.202972, 33.344265, 26.030987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306995, 33.220833, 26.088535>,  <35.879539, 32.843998, 26.398584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306995, 33.220833, 26.088535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619068, 33.336060, 25.866423>,  <35.806313, 33.405197, 25.733154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619068, 33.336060, 25.866423>,  <35.306995, 33.220833, 26.088535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619068, 33.336060, 25.866423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505570, -0.232399, -0.830897,
		-0.368403, 0.928982, -0.035673,
		0.780178, 0.288069, -0.555282,
		35.853123, 33.422482, 25.699839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961269, 33.530170, 25.513655>,  <35.306995, 33.220833, 26.088535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961269, 33.530170, 25.513655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340496, 33.470177, 25.401466>,  <35.568031, 33.434181, 25.334152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340496, 33.470177, 25.401466>,  <34.961269, 33.530170, 25.513655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340496, 33.470177, 25.401466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318006, -0.463127, -0.827276,
		-0.005812, 0.873508, -0.486775,
		0.948071, -0.149989, -0.280472,
		35.624916, 33.425179, 25.317326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027813, 33.880486, 24.912031>,  <34.961269, 33.530170, 25.513655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027813, 33.880486, 24.912031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305531, 33.592697, 24.919167>,  <35.472160, 33.420025, 24.923447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305531, 33.592697, 24.919167>,  <35.027813, 33.880486, 24.912031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305531, 33.592697, 24.919167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299538, -0.311412, -0.901831,
		0.654398, 0.620791, -0.431720,
		0.694291, -0.719473, 0.017837,
		35.513817, 33.376854, 24.924517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332130, 34.004707, 24.269291>,  <35.027813, 33.880486, 24.912031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332130, 34.004707, 24.269291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434845, 33.635925, 24.385260>,  <35.496471, 33.414654, 24.454840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434845, 33.635925, 24.385260>,  <35.332130, 34.004707, 24.269291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434845, 33.635925, 24.385260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086646, -0.320732, -0.943199,
		0.962577, 0.217077, -0.162242,
		0.256783, -0.921959, 0.289920,
		35.511879, 33.359337, 24.472237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799484, 33.710464, 23.781015>,  <35.332130, 34.004707, 24.269291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799484, 33.710464, 23.781015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633369, 33.397499, 23.966644>,  <35.533699, 33.209721, 24.078022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633369, 33.397499, 23.966644>,  <35.799484, 33.710464, 23.781015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633369, 33.397499, 23.966644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112577, -0.462022, -0.879694,
		0.902696, -0.417573, 0.103792,
		-0.415291, -0.782412, 0.464074,
		35.508781, 33.162777, 24.105867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961346, 33.172417, 23.363420>,  <35.799484, 33.710464, 23.781015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961346, 33.172417, 23.363420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697620, 33.006104, 23.613997>,  <35.539383, 32.906315, 23.764343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697620, 33.006104, 23.613997>,  <35.961346, 33.172417, 23.363420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697620, 33.006104, 23.613997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344653, -0.573358, -0.743286,
		0.668219, -0.705966, 0.234725,
		-0.659316, -0.415779, 0.626442,
		35.499825, 32.881371, 23.801929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971207, 32.440109, 23.234077>,  <35.961346, 33.172417, 23.363420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971207, 32.440109, 23.234077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614189, 32.499531, 23.404396>,  <35.399979, 32.535183, 23.506588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614189, 32.499531, 23.404396>,  <35.971207, 32.440109, 23.234077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614189, 32.499531, 23.404396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435917, -0.526089, -0.730210,
		0.115534, -0.837354, 0.534312,
		-0.892540, 0.148551, 0.425798,
		35.346428, 32.544098, 23.532135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.013683, 35.686356, 25.115528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.352448, 35.778557, 24.923855>,  <31.555706, 35.833878, 24.808851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.352448, 35.778557, 24.923855>,  <31.013683, 35.686356, 25.115528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352448, 35.778557, 24.923855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487930, 0.021316, 0.872622,
		0.211355, -0.972838, -0.094416,
		0.846908, 0.230501, -0.479183,
		31.606520, 35.847706, 24.780100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403526, 35.200539, 25.229717>,  <31.013683, 35.686356, 25.115528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403526, 35.200539, 25.229717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645460, 35.509880, 25.153723>,  <31.790621, 35.695484, 25.108126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645460, 35.509880, 25.153723>,  <31.403526, 35.200539, 25.229717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645460, 35.509880, 25.153723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365989, -0.058064, 0.928806,
		0.707266, -0.631308, -0.318158,
		0.604837, 0.773355, -0.189985,
		31.826912, 35.741886, 25.096727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102726, 34.964695, 25.319292>,  <31.403526, 35.200539, 25.229717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102726, 34.964695, 25.319292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.101223, 35.364574, 25.329002>,  <32.100323, 35.604504, 25.334827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.101223, 35.364574, 25.329002>,  <32.102726, 34.964695, 25.319292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101223, 35.364574, 25.329002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582642, -0.017540, 0.812540,
		0.812721, 0.017195, -0.582400,
		-0.003756, 0.999698, 0.024274,
		32.100098, 35.664482, 25.336285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774170, 35.153076, 25.568964>,  <32.102726, 34.964695, 25.319292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774170, 35.153076, 25.568964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.552807, 35.484169, 25.606077>,  <32.419991, 35.682823, 25.628345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.552807, 35.484169, 25.606077>,  <32.774170, 35.153076, 25.568964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552807, 35.484169, 25.606077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323106, 0.110671, 0.939870,
		0.767689, 0.550106, -0.328690,
		-0.553405, 0.827729, 0.092782,
		32.386787, 35.732487, 25.633911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283546, 35.598499, 25.845839>,  <32.774170, 35.153076, 25.568964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283546, 35.598499, 25.845839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.917763, 35.734005, 25.934383>,  <32.698292, 35.815308, 25.987511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.917763, 35.734005, 25.934383>,  <33.283546, 35.598499, 25.845839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917763, 35.734005, 25.934383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308253, 0.228702, 0.923404,
		0.262191, 0.912652, -0.313564,
		-0.914459, 0.338766, 0.221364,
		32.643425, 35.835636, 26.000793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389019, 36.234600, 26.225769>,  <33.283546, 35.598499, 25.845839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389019, 36.234600, 26.225769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018650, 36.119431, 26.323555>,  <32.796429, 36.050327, 26.382227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018650, 36.119431, 26.323555>,  <33.389019, 36.234600, 26.225769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018650, 36.119431, 26.323555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196593, 0.185281, 0.962820,
		-0.322517, 0.939558, -0.114951,
		-0.925923, -0.287927, 0.244466,
		32.740871, 36.033051, 26.396894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154018, 36.794476, 26.739344>,  <33.389019, 36.234600, 26.225769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154018, 36.794476, 26.739344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906261, 36.483437, 26.782589>,  <32.757607, 36.296814, 26.808537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906261, 36.483437, 26.782589>,  <33.154018, 36.794476, 26.739344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906261, 36.483437, 26.782589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083482, 0.071694, 0.993927,
		-0.780630, 0.624656, 0.020509,
		-0.619392, -0.777602, 0.108114,
		32.720444, 36.250156, 26.815023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574745, 36.982746, 27.116465>,  <33.154018, 36.794476, 26.739344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574745, 36.982746, 27.116465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586098, 36.584728, 27.154581>,  <32.592907, 36.345917, 27.177450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586098, 36.584728, 27.154581>,  <32.574745, 36.982746, 27.116465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586098, 36.584728, 27.154581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103383, 0.091895, 0.990387,
		-0.994237, -0.037957, -0.100263,
		0.028378, -0.995045, 0.095290,
		32.594612, 36.286213, 27.183168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957006, 36.895245, 27.479364>,  <32.574745, 36.982746, 27.116465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957006, 36.895245, 27.479364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201237, 36.585827, 27.547266>,  <32.347775, 36.400177, 27.588007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201237, 36.585827, 27.547266>,  <31.957006, 36.895245, 27.479364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201237, 36.585827, 27.547266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217513, 0.042308, 0.975140,
		-0.761501, -0.632322, -0.142425,
		0.610577, -0.773549, 0.169756,
		32.384411, 36.353764, 27.598192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716383, 36.625710, 28.091730>,  <31.957006, 36.895245, 27.479364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716383, 36.625710, 28.091730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068928, 36.439194, 28.061323>,  <32.280453, 36.327286, 28.043079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068928, 36.439194, 28.061323>,  <31.716383, 36.625710, 28.091730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068928, 36.439194, 28.061323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045435, -0.076498, 0.996034,
		-0.470253, -0.881320, -0.046237,
		0.881361, -0.466288, -0.076016,
		32.333336, 36.299309, 28.038519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630444, 35.945263, 28.472076>,  <31.716383, 36.625710, 28.091730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630444, 35.945263, 28.472076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.017403, 36.041550, 28.440598>,  <32.249577, 36.099323, 28.421711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.017403, 36.041550, 28.440598>,  <31.630444, 35.945263, 28.472076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017403, 36.041550, 28.440598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119457, -0.159718, 0.979908,
		0.223314, -0.957363, -0.183267,
		0.967399, 0.240720, -0.078697,
		32.307621, 36.113766, 28.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957506, 35.463448, 28.824303>,  <31.630444, 35.945263, 28.472076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957506, 35.463448, 28.824303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.231853, 35.753990, 28.806438>,  <32.396461, 35.928314, 28.795721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.231853, 35.753990, 28.806438>,  <31.957506, 35.463448, 28.824303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231853, 35.753990, 28.806438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225292, -0.153580, 0.962111,
		0.691975, -0.669942, -0.268977,
		0.685868, 0.726355, -0.044659,
		32.437614, 35.971897, 28.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607979, 35.289791, 29.264009>,  <31.957506, 35.463448, 28.824303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607979, 35.289791, 29.264009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625240, 35.687809, 29.228167>,  <32.635597, 35.926620, 29.206661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625240, 35.687809, 29.228167>,  <32.607979, 35.289791, 29.264009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625240, 35.687809, 29.228167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376996, 0.066841, 0.923800,
		0.925209, -0.073642, -0.372243,
		0.043149, 0.995042, -0.089605,
		32.638184, 35.986320, 29.201284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216869, 35.501125, 29.448338>,  <32.607979, 35.289791, 29.264009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216869, 35.501125, 29.448338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974846, 35.814114, 29.507181>,  <32.829632, 36.001907, 29.542488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974846, 35.814114, 29.507181>,  <33.216869, 35.501125, 29.448338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974846, 35.814114, 29.507181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324201, 0.073376, 0.943138,
		0.727188, 0.618344, -0.298076,
		-0.605055, 0.782475, 0.147109,
		32.793331, 36.048855, 29.551313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785378, 34.888309, 29.514288>,  <33.216869, 35.501125, 29.448338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785378, 34.888309, 29.514288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682755, 34.615398, 29.788128>,  <33.621181, 34.451653, 29.952433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682755, 34.615398, 29.788128>,  <33.785378, 34.888309, 29.514288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682755, 34.615398, 29.788128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415213, -0.561817, -0.715513,
		0.872797, -0.467829, -0.139148,
		-0.256562, -0.682274, 0.684601,
		33.605785, 34.410717, 29.993507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008739, 34.291252, 29.272224>,  <33.785378, 34.888309, 29.514288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008739, 34.291252, 29.272224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749626, 34.147781, 29.541067>,  <33.594158, 34.061699, 29.702372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749626, 34.147781, 29.541067>,  <34.008739, 34.291252, 29.272224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749626, 34.147781, 29.541067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531479, -0.419303, -0.736013,
		0.545810, -0.833986, 0.080985,
		-0.647782, -0.358681, 0.672106,
		33.555290, 34.040176, 29.742699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862164, 33.699776, 29.016285>,  <34.008739, 34.291252, 29.272224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862164, 33.699776, 29.016285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548306, 33.730576, 29.262344>,  <33.359993, 33.749054, 29.409979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548306, 33.730576, 29.262344>,  <33.862164, 33.699776, 29.016285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548306, 33.730576, 29.262344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570543, -0.477847, -0.667939,
		0.242518, -0.875062, 0.418869,
		-0.784643, 0.076996, 0.615147,
		33.312912, 33.753674, 29.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668743, 32.959534, 29.074697>,  <33.862164, 33.699776, 29.016285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668743, 32.959534, 29.074697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.395645, 33.239925, 29.157146>,  <33.231789, 33.408161, 29.206615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.395645, 33.239925, 29.157146>,  <33.668743, 32.959534, 29.074697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395645, 33.239925, 29.157146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662303, -0.474594, -0.579754,
		-0.308574, -0.532336, 0.788289,
		-0.682742, 0.700984, 0.206120,
		33.190823, 33.450222, 29.218983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999130, 32.702999, 29.200142>,  <33.668743, 32.959534, 29.074697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999130, 32.702999, 29.200142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899075, 33.072124, 29.082943>,  <32.839043, 33.293598, 29.012625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899075, 33.072124, 29.082943>,  <32.999130, 32.702999, 29.200142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899075, 33.072124, 29.082943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791707, -0.369148, -0.486755,
		-0.557343, 0.110210, 0.822936,
		-0.250140, 0.922813, -0.292995,
		32.824032, 33.348969, 28.995045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315044, 32.636974, 29.113602>,  <32.999130, 32.702999, 29.200142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315044, 32.636974, 29.113602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.389221, 32.984810, 28.930550>,  <32.433727, 33.193512, 28.820719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.389221, 32.984810, 28.930550>,  <32.315044, 32.636974, 29.113602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389221, 32.984810, 28.930550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772453, -0.158862, -0.614882,
		-0.607395, 0.467520, 0.642259,
		0.185439, 0.869591, -0.457628,
		32.444855, 33.245686, 28.793261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621386, 32.878544, 28.941917>,  <32.315044, 32.636974, 29.113602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621386, 32.878544, 28.941917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.889894, 33.056038, 28.704433>,  <32.050999, 33.162533, 28.561943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.889894, 33.056038, 28.704433>,  <31.621386, 32.878544, 28.941917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889894, 33.056038, 28.704433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602645, -0.139593, -0.785705,
		-0.431524, 0.885219, 0.173710,
		0.671272, 0.443736, -0.593711,
		32.091274, 33.189159, 28.526320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264023, 33.317673, 28.635317>,  <31.621386, 32.878544, 28.941917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264023, 33.317673, 28.635317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569658, 33.285286, 28.379313>,  <31.753040, 33.265854, 28.225710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569658, 33.285286, 28.379313>,  <31.264023, 33.317673, 28.635317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569658, 33.285286, 28.379313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645075, -0.085364, -0.759336,
		0.006848, 0.993054, -0.117455,
		0.764089, -0.080967, -0.640010,
		31.798885, 33.260998, 28.187309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066912, 33.742004, 28.016794>,  <31.264023, 33.317673, 28.635317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066912, 33.742004, 28.016794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.369184, 33.516998, 27.882616>,  <31.550549, 33.381996, 27.802109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.369184, 33.516998, 27.882616>,  <31.066912, 33.742004, 28.016794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369184, 33.516998, 27.882616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424617, -0.030838, -0.904848,
		0.498645, 0.826213, -0.262156,
		0.755681, -0.562514, -0.335447,
		31.595888, 33.348244, 27.781982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314169, 34.046490, 27.402987>,  <31.066912, 33.742004, 28.016794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314169, 34.046490, 27.402987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.427692, 33.663349, 27.385227>,  <31.495808, 33.433464, 27.374571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.427692, 33.663349, 27.385227>,  <31.314169, 34.046490, 27.402987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427692, 33.663349, 27.385227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264117, -0.033578, -0.963906,
		0.921789, 0.285293, -0.262514,
		0.283810, -0.957852, -0.044398,
		31.512835, 33.375992, 27.371908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791393, 34.049679, 26.849575>,  <31.314169, 34.046490, 27.402987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791393, 34.049679, 26.849575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.647202, 33.681992, 26.912937>,  <31.560686, 33.461380, 26.950954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.647202, 33.681992, 26.912937>,  <31.791393, 34.049679, 26.849575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647202, 33.681992, 26.912937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217234, -0.082418, -0.972634,
		0.907118, -0.385026, -0.169976,
		-0.360480, -0.919218, 0.158403,
		31.539057, 33.406227, 26.960459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926813, 33.772346, 26.240189>,  <31.791393, 34.049679, 26.849575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926813, 33.772346, 26.240189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671358, 33.503078, 26.389311>,  <31.518085, 33.341518, 26.478785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671358, 33.503078, 26.389311>,  <31.926813, 33.772346, 26.240189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671358, 33.503078, 26.389311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334157, -0.193802, -0.922377,
		0.693169, -0.713639, -0.101176,
		-0.638636, -0.673172, 0.372805,
		31.479767, 33.301128, 26.501152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067684, 33.207451, 25.853731>,  <31.926813, 33.772346, 26.240189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067684, 33.207451, 25.853731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.696835, 33.168682, 25.998531>,  <31.474325, 33.145420, 26.085411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.696835, 33.168682, 25.998531>,  <32.067684, 33.207451, 25.853731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696835, 33.168682, 25.998531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343321, -0.167563, -0.924150,
		0.150228, -0.981086, 0.122077,
		-0.927126, -0.096921, 0.362000,
		31.418697, 33.139606, 26.107132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765152, 32.560848, 25.663799>,  <32.067684, 33.207451, 25.853731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765152, 32.560848, 25.663799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459620, 32.812992, 25.719234>,  <31.276300, 32.964279, 25.752497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459620, 32.812992, 25.719234>,  <31.765152, 32.560848, 25.663799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459620, 32.812992, 25.719234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275969, -0.124875, -0.953020,
		-0.583438, -0.766194, 0.269343,
		-0.763833, 0.630359, 0.138589,
		31.230469, 33.002098, 25.760811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898411, 31.900331, 25.817110>,  <31.765152, 32.560848, 25.663799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898411, 31.900331, 25.817110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.198334, 31.701443, 25.642496>,  <32.378288, 31.582109, 25.537727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.198334, 31.701443, 25.642496>,  <31.898411, 31.900331, 25.817110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198334, 31.701443, 25.642496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529061, 0.054337, 0.846842,
		-0.397347, -0.865921, 0.303802,
		0.749807, -0.497220, -0.436534,
		32.423275, 31.552277, 25.511536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144299, 31.326633, 26.305201>,  <31.898411, 31.900331, 25.817110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144299, 31.326633, 26.305201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.447628, 31.382418, 26.050488>,  <32.629627, 31.415888, 25.897659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.447628, 31.382418, 26.050488>,  <32.144299, 31.326633, 26.305201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447628, 31.382418, 26.050488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650414, -0.227275, 0.724781,
		-0.043644, -0.963792, -0.263058,
		0.758325, 0.139464, -0.636783,
		32.675125, 31.424257, 25.859453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511520, 30.807356, 26.490948>,  <32.144299, 31.326633, 26.305201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511520, 30.807356, 26.490948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752361, 31.077932, 26.321285>,  <32.896866, 31.240278, 26.219488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752361, 31.077932, 26.321285>,  <32.511520, 30.807356, 26.490948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752361, 31.077932, 26.321285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656072, -0.116406, 0.745667,
		0.455024, -0.727241, -0.513880,
		0.602098, 0.676439, -0.424156,
		32.932991, 31.280865, 26.194038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096966, 30.465487, 26.374670>,  <32.511520, 30.807356, 26.490948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096966, 30.465487, 26.374670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208103, 30.849562, 26.363089>,  <33.274788, 31.080008, 26.356140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208103, 30.849562, 26.363089>,  <33.096966, 30.465487, 26.374670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208103, 30.849562, 26.363089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805955, -0.216604, 0.550925,
		0.522721, -0.176407, -0.834052,
		0.277846, 0.960189, -0.028953,
		33.291458, 31.137619, 26.354403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771885, 30.387144, 26.416565>,  <33.096966, 30.465487, 26.374670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771885, 30.387144, 26.416565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.738682, 30.778219, 26.493752>,  <33.718761, 31.012865, 26.540064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.738682, 30.778219, 26.493752>,  <33.771885, 30.387144, 26.416565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738682, 30.778219, 26.493752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745945, -0.067444, 0.662584,
		0.660815, 0.198937, -0.723704,
		-0.083003, 0.977689, 0.192964,
		33.713779, 31.071526, 26.551641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420330, 30.575539, 26.567654>,  <33.771885, 30.387144, 26.416565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420330, 30.575539, 26.567654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218288, 30.875586, 26.738390>,  <34.097065, 31.055614, 26.840832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218288, 30.875586, 26.738390>,  <34.420330, 30.575539, 26.567654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218288, 30.875586, 26.738390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625236, -0.022891, 0.780100,
		0.594939, 0.660907, -0.457439,
		-0.505102, 0.750119, 0.426841,
		34.066757, 31.100622, 26.866442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866737, 31.200727, 26.755177>,  <34.420330, 30.575539, 26.567654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866737, 31.200727, 26.755177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562435, 31.242319, 27.011438>,  <34.379852, 31.267273, 27.165195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562435, 31.242319, 27.011438>,  <34.866737, 31.200727, 26.755177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562435, 31.242319, 27.011438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646145, 0.214392, 0.732484,
		-0.061190, 0.971198, -0.230285,
		-0.760758, 0.103977, 0.640653,
		34.334209, 31.273512, 27.203634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058167, 31.778620, 27.182789>,  <34.866737, 31.200727, 26.755177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058167, 31.778620, 27.182789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786678, 31.581999, 27.401041>,  <34.623783, 31.464027, 27.531992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786678, 31.581999, 27.401041>,  <35.058167, 31.778620, 27.182789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786678, 31.581999, 27.401041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522429, 0.198999, 0.829136,
		-0.516142, 0.847807, 0.121735,
		-0.678723, -0.491550, 0.545632,
		34.583061, 31.434534, 27.564730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917038, 32.172791, 27.696875>,  <35.058167, 31.778620, 27.182789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917038, 32.172791, 27.696875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778130, 31.828560, 27.845903>,  <34.694782, 31.622021, 27.935320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778130, 31.828560, 27.845903>,  <34.917038, 32.172791, 27.696875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778130, 31.828560, 27.845903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362358, 0.243295, 0.899725,
		-0.864927, 0.447454, 0.227347,
		-0.347273, -0.860577, 0.372571,
		34.673946, 31.570387, 27.957674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679707, 32.401150, 28.371403>,  <34.917038, 32.172791, 27.696875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679707, 32.401150, 28.371403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728279, 32.004623, 28.391567>,  <34.757423, 31.766706, 28.403666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728279, 32.004623, 28.391567>,  <34.679707, 32.401150, 28.371403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728279, 32.004623, 28.391567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488234, 0.103870, 0.866510,
		-0.864224, -0.080608, 0.496608,
		0.121430, -0.991319, 0.050411,
		34.764709, 31.707228, 28.406691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498554, 32.200047, 29.058859>,  <34.679707, 32.401150, 28.371403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498554, 32.200047, 29.058859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721546, 31.886530, 28.949394>,  <34.855343, 31.698420, 28.883715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721546, 31.886530, 28.949394>,  <34.498554, 32.200047, 29.058859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721546, 31.886530, 28.949394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378891, -0.053096, 0.923917,
		-0.738687, -0.618753, 0.267371,
		0.557480, -0.783789, -0.273661,
		34.888790, 31.651394, 28.867296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427670, 31.789631, 29.636318>,  <34.498554, 32.200047, 29.058859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427670, 31.789631, 29.636318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743561, 31.640934, 29.441122>,  <34.933098, 31.551716, 29.324005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743561, 31.640934, 29.441122>,  <34.427670, 31.789631, 29.636318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743561, 31.640934, 29.441122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443560, -0.203487, 0.872839,
		-0.423769, -0.905760, 0.004189,
		0.789731, -0.371740, -0.487990,
		34.980480, 31.529411, 29.294725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702534, 31.182764, 30.101484>,  <34.427670, 31.789631, 29.636318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702534, 31.182764, 30.101484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996586, 31.301180, 29.857534>,  <35.173016, 31.372231, 29.711164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996586, 31.301180, 29.857534>,  <34.702534, 31.182764, 30.101484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996586, 31.301180, 29.857534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654709, -0.076592, 0.751990,
		0.175910, -0.952099, -0.250126,
		0.735127, 0.296042, -0.609875,
		35.217125, 31.389992, 29.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260624, 30.815626, 30.330406>,  <34.702534, 31.182764, 30.101484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260624, 30.815626, 30.330406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.407158, 31.136547, 30.141891>,  <35.495079, 31.329100, 30.028782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.407158, 31.136547, 30.141891>,  <35.260624, 30.815626, 30.330406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407158, 31.136547, 30.141891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761258, 0.032826, 0.647617,
		0.535054, -0.596017, -0.598733,
		0.366337, 0.802301, -0.471286,
		35.517059, 31.377237, 30.000505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.527126, 31.747644, 23.284645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262180, 32.046558, 23.305969>,  <35.103214, 32.225906, 23.318764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262180, 32.046558, 23.305969>,  <35.527126, 31.747644, 23.284645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262180, 32.046558, 23.305969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484871, -0.373348, -0.790893,
		-0.571118, -0.549707, 0.609628,
		-0.662363, 0.747284, 0.053312,
		35.063473, 32.270744, 23.321962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775291, 31.389204, 23.349262>,  <35.527126, 31.747644, 23.284645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775291, 31.389204, 23.349262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721420, 31.764280, 23.221136>,  <34.689098, 31.989326, 23.144260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721420, 31.764280, 23.221136>,  <34.775291, 31.389204, 23.349262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721420, 31.764280, 23.221136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361477, -0.347474, -0.865214,
		-0.922603, -0.000738, 0.385750,
		-0.134677, 0.937689, -0.320313,
		34.681019, 32.045586, 23.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110237, 31.405970, 23.186726>,  <34.775291, 31.389204, 23.349262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110237, 31.405970, 23.186726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271984, 31.711315, 22.985228>,  <34.369034, 31.894522, 22.864328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271984, 31.711315, 22.985228>,  <34.110237, 31.405970, 23.186726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271984, 31.711315, 22.985228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572411, -0.218344, -0.790362,
		-0.713323, 0.607950, 0.348665,
		0.404371, 0.763363, -0.503747,
		34.393295, 31.940325, 22.834103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587132, 31.726282, 22.875032>,  <34.110237, 31.405970, 23.186726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587132, 31.726282, 22.875032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892239, 31.866034, 22.657366>,  <34.075302, 31.949884, 22.526766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892239, 31.866034, 22.657366>,  <33.587132, 31.726282, 22.875032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892239, 31.866034, 22.657366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531876, -0.139683, -0.835222,
		-0.367821, 0.926511, 0.079282,
		0.762768, 0.349380, -0.544167,
		34.121071, 31.970848, 22.494116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268303, 32.113106, 22.262787>,  <33.587132, 31.726282, 22.875032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268303, 32.113106, 22.262787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639160, 31.991711, 22.174877>,  <33.861675, 31.918875, 22.122131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639160, 31.991711, 22.174877>,  <33.268303, 32.113106, 22.262787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639160, 31.991711, 22.174877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293997, -0.225534, -0.928817,
		0.232315, 0.925760, -0.298326,
		0.927144, -0.303485, -0.219775,
		33.917305, 31.900665, 22.108944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479561, 32.337646, 21.589741>,  <33.268303, 32.113106, 22.262787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479561, 32.337646, 21.589741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738087, 32.034817, 21.627930>,  <33.893204, 31.853119, 21.650843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738087, 32.034817, 21.627930>,  <33.479561, 32.337646, 21.589741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738087, 32.034817, 21.627930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245854, -0.325048, -0.913181,
		0.722378, 0.566732, -0.396213,
		0.646317, -0.757072, 0.095475,
		33.931980, 31.807695, 21.656572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750671, 32.283188, 20.957581>,  <33.479561, 32.337646, 21.589741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750671, 32.283188, 20.957581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860378, 31.935234, 21.121572>,  <33.926201, 31.726463, 21.219969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860378, 31.935234, 21.121572>,  <33.750671, 32.283188, 20.957581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860378, 31.935234, 21.121572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364774, -0.488575, -0.792612,
		0.889785, 0.067838, -0.451311,
		0.274269, -0.869881, 0.409981,
		33.942657, 31.674271, 21.244566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382267, 31.866791, 20.613276>,  <33.750671, 32.283188, 20.957581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382267, 31.866791, 20.613276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175999, 31.579613, 20.800312>,  <34.052238, 31.407307, 20.912535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175999, 31.579613, 20.800312>,  <34.382267, 31.866791, 20.613276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175999, 31.579613, 20.800312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176413, -0.445086, -0.877939,
		0.838430, -0.535214, 0.102862,
		-0.515668, -0.717945, 0.467592,
		34.021297, 31.364229, 20.940590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288033, 31.432432, 20.046612>,  <34.382267, 31.866791, 20.613276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288033, 31.432432, 20.046612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054031, 31.262022, 20.322662>,  <33.913631, 31.159777, 20.488293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054031, 31.262022, 20.322662>,  <34.288033, 31.432432, 20.046612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054031, 31.262022, 20.322662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431667, -0.556826, -0.709654,
		0.686610, -0.713055, 0.141844,
		-0.585004, -0.426026, 0.690124,
		33.878529, 31.134214, 20.529699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192860, 30.738768, 19.866316>,  <34.288033, 31.432432, 20.046612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192860, 30.738768, 19.866316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873875, 30.834934, 20.087679>,  <33.682484, 30.892635, 20.220497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873875, 30.834934, 20.087679>,  <34.192860, 30.738768, 19.866316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873875, 30.834934, 20.087679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600960, -0.234513, -0.764101,
		-0.053921, -0.941915, 0.331495,
		-0.797458, 0.240416, 0.553408,
		33.634636, 30.907059, 20.253700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712761, 30.228136, 19.622414>,  <34.192860, 30.738768, 19.866316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712761, 30.228136, 19.622414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481991, 30.503294, 19.798576>,  <33.343529, 30.668388, 19.904274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481991, 30.503294, 19.798576>,  <33.712761, 30.228136, 19.622414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481991, 30.503294, 19.798576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633158, -0.036007, -0.773185,
		-0.516012, -0.724917, 0.456319,
		-0.576926, 0.687895, 0.440407,
		33.308914, 30.709661, 19.930698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911961, 29.960171, 19.604589>,  <33.712761, 30.228136, 19.622414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911961, 29.960171, 19.604589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947708, 30.358334, 19.618334>,  <32.969158, 30.597231, 19.626579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947708, 30.358334, 19.618334>,  <32.911961, 29.960171, 19.604589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947708, 30.358334, 19.618334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670611, 0.085642, -0.736849,
		-0.736407, 0.042809, 0.675184,
		0.089368, 0.995406, 0.034359,
		32.974518, 30.656956, 19.628641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283600, 30.337543, 19.906694>,  <32.911961, 29.960171, 19.604589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283600, 30.337543, 19.906694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444950, 30.594982, 19.646519>,  <32.541759, 30.749445, 19.490414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444950, 30.594982, 19.646519>,  <32.283600, 30.337543, 19.906694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444950, 30.594982, 19.646519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913370, 0.240378, -0.328593,
		-0.055131, 0.726638, 0.684805,
		0.403380, 0.643596, -0.650437,
		32.565964, 30.788061, 19.451387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518368, 30.128468, 19.955645>,  <32.283600, 30.337543, 19.906694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518368, 30.128468, 19.955645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852390, 29.913404, 20.002300>,  <32.052803, 29.784367, 20.030293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852390, 29.913404, 20.002300>,  <31.518368, 30.128468, 19.955645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852390, 29.913404, 20.002300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441027, 0.527447, -0.726151,
		0.328901, 0.657817, 0.677570,
		0.835057, -0.537658, 0.116637,
		32.102909, 29.752108, 20.037291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038523, 30.585543, 20.146254>,  <31.518368, 30.128468, 19.955645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038523, 30.585543, 20.146254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.676491, 30.470131, 20.271208>,  <30.459272, 30.400885, 20.346180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.676491, 30.470131, 20.271208>,  <31.038523, 30.585543, 20.146254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676491, 30.470131, 20.271208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280856, 0.146001, 0.948580,
		-0.319301, 0.946274, -0.051107,
		-0.905078, -0.288529, 0.312385,
		30.404968, 30.383572, 20.364923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874437, 31.049845, 20.731060>,  <31.038523, 30.585543, 20.146254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874437, 31.049845, 20.731060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668543, 30.709135, 20.770111>,  <30.545006, 30.504709, 20.793541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668543, 30.709135, 20.770111>,  <30.874437, 31.049845, 20.731060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668543, 30.709135, 20.770111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357598, -0.109808, 0.927397,
		-0.779211, 0.512276, 0.361114,
		-0.514737, -0.851772, 0.097626,
		30.514122, 30.453604, 20.799398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483240, 31.218651, 21.286808>,  <30.874437, 31.049845, 20.731060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483240, 31.218651, 21.286808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.435181, 30.821791, 21.272938>,  <30.406345, 30.583675, 21.264616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.435181, 30.821791, 21.272938>,  <30.483240, 31.218651, 21.286808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435181, 30.821791, 21.272938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221611, -0.060850, 0.973235,
		-0.967705, 0.109248, 0.227182,
		-0.120148, -0.992150, -0.034674,
		30.399136, 30.524145, 21.262535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016577, 31.064505, 21.812576>,  <30.483240, 31.218651, 21.286808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016577, 31.064505, 21.812576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.234833, 30.733925, 21.757067>,  <30.365786, 30.535576, 21.723761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.234833, 30.733925, 21.757067>,  <30.016577, 31.064505, 21.812576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234833, 30.733925, 21.757067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200860, -0.031794, 0.979104,
		-0.813593, -0.562110, 0.148653,
		0.545638, -0.826451, -0.138773,
		30.398525, 30.485991, 21.715435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853262, 30.691679, 22.417732>,  <30.016577, 31.064505, 21.812576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853262, 30.691679, 22.417732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194742, 30.539768, 22.275206>,  <30.399632, 30.448622, 22.189690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194742, 30.539768, 22.275206>,  <29.853262, 30.691679, 22.417732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194742, 30.539768, 22.275206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362875, -0.056933, 0.930097,
		-0.373514, -0.923325, 0.089207,
		0.853703, -0.379776, -0.356317,
		30.450853, 30.425835, 22.168310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999172, 30.127529, 22.791695>,  <29.853262, 30.691679, 22.417732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999172, 30.127529, 22.791695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357145, 30.235361, 22.649473>,  <30.571930, 30.300060, 22.564140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357145, 30.235361, 22.649473>,  <29.999172, 30.127529, 22.791695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357145, 30.235361, 22.649473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385251, -0.064834, 0.920531,
		0.225107, -0.960792, -0.161879,
		0.894935, 0.269582, -0.355552,
		30.625626, 30.316236, 22.542809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428144, 29.777126, 23.171820>,  <29.999172, 30.127529, 22.791695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428144, 29.777126, 23.171820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651142, 30.063656, 23.003971>,  <30.784941, 30.235573, 22.903261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651142, 30.063656, 23.003971>,  <30.428144, 29.777126, 23.171820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651142, 30.063656, 23.003971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569201, 0.038132, 0.821314,
		0.604328, -0.696726, -0.386474,
		0.557493, 0.716324, -0.419621,
		30.818390, 30.278553, 22.878084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038662, 29.627211, 23.411707>,  <30.428144, 29.777126, 23.171820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038662, 29.627211, 23.411707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067581, 30.006321, 23.287451>,  <31.084932, 30.233788, 23.212896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067581, 30.006321, 23.287451>,  <31.038662, 29.627211, 23.411707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067581, 30.006321, 23.287451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560812, 0.218926, 0.798474,
		0.824780, -0.231940, -0.515695,
		0.072300, 0.947774, -0.310640,
		31.089272, 30.290653, 23.194258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746061, 29.785269, 23.453075>,  <31.038662, 29.627211, 23.411707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746061, 29.785269, 23.453075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.578220, 30.148346, 23.455179>,  <31.477516, 30.366192, 23.456442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.578220, 30.148346, 23.455179>,  <31.746061, 29.785269, 23.453075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578220, 30.148346, 23.455179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513974, 0.232812, 0.825608,
		0.748175, 0.349129, -0.564219,
		-0.419601, 0.907693, 0.005259,
		31.452339, 30.420654, 23.456757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346260, 30.249525, 23.403183>,  <31.746061, 29.785269, 23.453075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346260, 30.249525, 23.403183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028210, 30.442274, 23.550468>,  <31.837381, 30.557922, 23.638840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028210, 30.442274, 23.550468>,  <32.346260, 30.249525, 23.403183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028210, 30.442274, 23.550468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573249, 0.399057, 0.715639,
		0.197907, 0.780099, -0.593530,
		-0.795122, 0.481871, 0.368215,
		31.789673, 30.586836, 23.660933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382099, 30.996313, 23.475061>,  <32.346260, 30.249525, 23.403183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382099, 30.996313, 23.475061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103046, 30.927336, 23.753220>,  <31.935616, 30.885948, 23.920115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103046, 30.927336, 23.753220>,  <32.382099, 30.996313, 23.475061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103046, 30.927336, 23.753220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483321, 0.603208, 0.634461,
		-0.528876, 0.778719, -0.337471,
		-0.697632, -0.172444, 0.695394,
		31.893757, 30.875603, 23.961838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398911, 31.613049, 23.906216>,  <32.382099, 30.996313, 23.475061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398911, 31.613049, 23.906216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223011, 31.343565, 24.143784>,  <32.117474, 31.181875, 24.286324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223011, 31.343565, 24.143784>,  <32.398911, 31.613049, 23.906216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223011, 31.343565, 24.143784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329885, 0.493902, 0.804510,
		-0.835344, 0.549705, 0.005055,
		-0.439746, -0.673710, 0.593917,
		32.091087, 31.141453, 24.321959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014629, 31.965614, 24.284449>,  <32.398911, 31.613049, 23.906216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014629, 31.965614, 24.284449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111752, 31.633730, 24.485497>,  <32.170025, 31.434599, 24.606125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111752, 31.633730, 24.485497>,  <32.014629, 31.965614, 24.284449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111752, 31.633730, 24.485497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251199, 0.554230, 0.793554,
		-0.936986, -0.066425, 0.342995,
		0.242810, -0.829709, 0.502620,
		32.184593, 31.384817, 24.636282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928097, 32.136200, 25.099775>,  <32.014629, 31.965614, 24.284449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928097, 32.136200, 25.099775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083973, 31.767849, 25.104340>,  <32.177498, 31.546839, 25.107079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083973, 31.767849, 25.104340>,  <31.928097, 32.136200, 25.099775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083973, 31.767849, 25.104340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393651, 0.177760, 0.901910,
		-0.832574, -0.346974, 0.431775,
		0.389691, -0.920875, 0.011412,
		32.200882, 31.491587, 25.107763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169317, 32.211044, 25.245758>,  <31.928097, 32.136200, 25.099775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169317, 32.211044, 25.245758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066013, 32.592785, 25.305775>,  <31.004030, 32.821831, 25.341785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066013, 32.592785, 25.305775>,  <31.169317, 32.211044, 25.245758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066013, 32.592785, 25.305775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363983, 0.047744, -0.930181,
		-0.894884, -0.294841, 0.335038,
		-0.258259, 0.954353, 0.150043,
		30.988535, 32.879089, 25.350788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560509, 32.209427, 24.946579>,  <31.169317, 32.211044, 25.245758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560509, 32.209427, 24.946579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658978, 32.596813, 24.961906>,  <30.718060, 32.829247, 24.971104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658978, 32.596813, 24.961906>,  <30.560509, 32.209427, 24.946579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658978, 32.596813, 24.961906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406381, 0.139029, -0.903064,
		-0.879917, 0.206737, 0.427792,
		0.246172, 0.968469, 0.038320,
		30.732828, 32.887352, 24.973402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071680, 32.488762, 24.541649>,  <30.560509, 32.209427, 24.946579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071680, 32.488762, 24.541649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349571, 32.775784, 24.561525>,  <30.516306, 32.947998, 24.573452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349571, 32.775784, 24.561525>,  <30.071680, 32.488762, 24.541649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349571, 32.775784, 24.561525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260606, 0.315500, -0.912438,
		-0.670403, 0.620945, 0.406186,
		0.694726, 0.717556, 0.049690,
		30.557989, 32.991051, 24.576433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674244, 33.158905, 24.350651>,  <30.071680, 32.488762, 24.541649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674244, 33.158905, 24.350651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064533, 33.217453, 24.285486>,  <30.298706, 33.252583, 24.246387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064533, 33.217453, 24.285486>,  <29.674244, 33.158905, 24.350651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064533, 33.217453, 24.285486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182323, 0.130750, -0.974506,
		-0.121340, 0.980551, 0.154263,
		0.975723, 0.146372, -0.162912,
		30.357250, 33.261364, 24.236612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771545, 33.761703, 23.866655>,  <29.674244, 33.158905, 24.350651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771545, 33.761703, 23.866655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.100643, 33.534889, 23.850840>,  <30.298103, 33.398800, 23.841351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.100643, 33.534889, 23.850840>,  <29.771545, 33.761703, 23.866655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100643, 33.534889, 23.850840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001271, 0.071401, -0.997447,
		0.568407, 0.820596, 0.059466,
		0.822747, -0.567031, -0.039542,
		30.347467, 33.364780, 23.838978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076429, 34.052036, 23.316011>,  <29.771545, 33.761703, 23.866655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076429, 34.052036, 23.316011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232414, 33.684853, 23.345060>,  <30.326006, 33.464542, 23.362490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232414, 33.684853, 23.345060>,  <30.076429, 34.052036, 23.316011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232414, 33.684853, 23.345060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209917, 0.011832, -0.977647,
		0.896585, 0.396490, 0.197310,
		0.389962, -0.917963, 0.072622,
		30.349403, 33.409462, 23.366846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769579, 34.055019, 22.907610>,  <30.076429, 34.052036, 23.316011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769579, 34.055019, 22.907610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594252, 33.697327, 22.943901>,  <30.489056, 33.482712, 22.965675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594252, 33.697327, 22.943901>,  <30.769579, 34.055019, 22.907610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594252, 33.697327, 22.943901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157633, -0.175854, -0.971713,
		0.884889, -0.411619, 0.218040,
		-0.438319, -0.894229, 0.090726,
		30.462755, 33.429058, 22.971119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271385, 34.395531, 22.377022>,  <30.769579, 34.055019, 22.907610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271385, 34.395531, 22.377022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069637, 34.736843, 22.324076>,  <30.948587, 34.941631, 22.292309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069637, 34.736843, 22.324076>,  <31.271385, 34.395531, 22.377022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069637, 34.736843, 22.324076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409076, 0.371117, 0.833624,
		0.760438, 0.366310, -0.536238,
		-0.504371, 0.853282, -0.132363,
		30.918325, 34.992828, 22.284367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721680, 34.881516, 22.435604>,  <31.271385, 34.395531, 22.377022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721680, 34.881516, 22.435604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.364357, 35.042030, 22.516573>,  <31.149963, 35.138340, 22.565153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.364357, 35.042030, 22.516573>,  <31.721680, 34.881516, 22.435604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364357, 35.042030, 22.516573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420423, 0.586853, 0.691988,
		0.158892, 0.703260, -0.692949,
		-0.893307, 0.401283, 0.202420,
		31.096365, 35.162415, 22.577299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819328, 35.583389, 22.513489>,  <31.721680, 34.881516, 22.435604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819328, 35.583389, 22.513489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477173, 35.518917, 22.710398>,  <31.271879, 35.480232, 22.828543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477173, 35.518917, 22.710398>,  <31.819328, 35.583389, 22.513489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477173, 35.518917, 22.710398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331840, 0.559215, 0.759711,
		-0.397738, 0.813203, -0.424859,
		-0.855387, -0.161181, 0.492274,
		31.220556, 35.470562, 22.858080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645882, 36.278091, 22.764896>,  <31.819328, 35.583389, 22.513489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645882, 36.278091, 22.764896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452021, 35.999561, 22.976646>,  <31.335705, 35.832443, 23.103697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452021, 35.999561, 22.976646>,  <31.645882, 36.278091, 22.764896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452021, 35.999561, 22.976646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376409, 0.380273, 0.844813,
		-0.789575, 0.608701, 0.077805,
		-0.484652, -0.696330, 0.529374,
		31.306625, 35.790661, 23.135458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282007, 36.631523, 23.413555>,  <31.645882, 36.278091, 22.764896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282007, 36.631523, 23.413555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293888, 36.249943, 23.532957>,  <31.301016, 36.020996, 23.604597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293888, 36.249943, 23.532957>,  <31.282007, 36.631523, 23.413555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293888, 36.249943, 23.532957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307411, 0.292879, 0.905384,
		-0.951113, 0.064874, 0.301952,
		0.029700, -0.953946, 0.298504,
		31.302797, 35.963760, 23.622509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041231, 36.665298, 24.074505>,  <31.282007, 36.631523, 23.413555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041231, 36.665298, 24.074505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226320, 36.312695, 24.036936>,  <31.337374, 36.101131, 24.014395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226320, 36.312695, 24.036936>,  <31.041231, 36.665298, 24.074505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226320, 36.312695, 24.036936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335435, 0.076028, 0.938990,
		-0.820592, -0.465997, 0.330870,
		0.462722, -0.881514, -0.093924,
		31.365137, 36.048241, 24.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861563, 36.298725, 24.652414>,  <31.041231, 36.665298, 24.074505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861563, 36.298725, 24.652414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.189926, 36.113796, 24.518328>,  <31.386944, 36.002838, 24.437876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.189926, 36.113796, 24.518328>,  <30.861563, 36.298725, 24.652414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189926, 36.113796, 24.518328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349521, -0.057448, 0.935166,
		-0.451603, -0.884851, 0.114431,
		0.820908, -0.462319, -0.335218,
		31.436199, 35.975101, 24.417763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.014683, 34.174011, 18.540112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.134312, 33.855614, 18.750616>,  <33.206089, 33.664577, 18.876919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.134312, 33.855614, 18.750616>,  <33.014683, 34.174011, 18.540112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134312, 33.855614, 18.750616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042133, 0.561984, 0.826074,
		-0.953298, -0.224886, 0.201614,
		0.299077, -0.795990, 0.526264,
		33.224033, 33.616817, 18.908495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660198, 34.232616, 19.097094>,  <33.014683, 34.174011, 18.540112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660198, 34.232616, 19.097094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.942440, 33.978542, 19.222736>,  <33.111786, 33.826099, 19.298122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.942440, 33.978542, 19.222736>,  <32.660198, 34.232616, 19.097094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942440, 33.978542, 19.222736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008378, 0.435767, 0.900020,
		-0.708557, -0.637690, 0.302158,
		0.705604, -0.635184, 0.314108,
		33.154121, 33.787987, 19.316969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447342, 34.028633, 19.797731>,  <32.660198, 34.232616, 19.097094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447342, 34.028633, 19.797731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828876, 33.909103, 19.785704>,  <33.057796, 33.837387, 19.778486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828876, 33.909103, 19.785704>,  <32.447342, 34.028633, 19.797731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828876, 33.909103, 19.785704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136314, 0.341533, 0.929932,
		-0.267616, -0.891100, 0.366499,
		0.953834, -0.298824, -0.030070,
		33.115028, 33.819458, 19.776682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535282, 33.831627, 20.513992>,  <32.447342, 34.028633, 19.797731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535282, 33.831627, 20.513992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.880524, 33.912434, 20.328846>,  <33.087669, 33.960918, 20.217758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.880524, 33.912434, 20.328846>,  <32.535282, 33.831627, 20.513992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880524, 33.912434, 20.328846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288386, 0.555241, 0.780090,
		0.414595, -0.806781, 0.420970,
		0.863101, 0.202020, -0.462864,
		33.139454, 33.973042, 20.189987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962933, 33.787975, 21.030596>,  <32.535282, 33.831627, 20.513992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962933, 33.787975, 21.030596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.192352, 33.993931, 20.775745>,  <33.330006, 34.117504, 20.622835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.192352, 33.993931, 20.775745>,  <32.962933, 33.787975, 21.030596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192352, 33.993931, 20.775745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321213, 0.574119, 0.753133,
		0.753568, -0.636611, 0.163894,
		0.573548, 0.514892, -0.637125,
		33.364418, 34.148399, 20.584608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671852, 33.708637, 21.283928>,  <32.962933, 33.787975, 21.030596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671852, 33.708637, 21.283928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644005, 34.037571, 21.058035>,  <33.627296, 34.234932, 20.922499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644005, 34.037571, 21.058035>,  <33.671852, 33.708637, 21.283928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644005, 34.037571, 21.058035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447076, 0.531792, 0.719249,
		0.891783, -0.202407, -0.404667,
		-0.069618, 0.822331, -0.564735,
		33.623119, 34.284271, 20.888615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309605, 33.998127, 21.362007>,  <33.671852, 33.708637, 21.283928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309605, 33.998127, 21.362007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098724, 34.310680, 21.228443>,  <33.972198, 34.498215, 21.148306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098724, 34.310680, 21.228443>,  <34.309605, 33.998127, 21.362007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098724, 34.310680, 21.228443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526233, 0.608756, 0.593713,
		0.667189, 0.137291, -0.732127,
		-0.527198, 0.781388, -0.333908,
		33.940563, 34.545097, 21.128271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759357, 34.540611, 21.324001>,  <34.309605, 33.998127, 21.362007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759357, 34.540611, 21.324001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.408772, 34.733128, 21.318806>,  <34.198421, 34.848637, 21.315689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.408772, 34.733128, 21.318806>,  <34.759357, 34.540611, 21.324001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408772, 34.733128, 21.318806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436263, 0.805299, 0.401457,
		0.203676, 0.346197, -0.915786,
		-0.876465, 0.481291, -0.012987,
		34.145832, 34.877514, 21.314909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871746, 35.295830, 21.071255>,  <34.759357, 34.540611, 21.324001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871746, 35.295830, 21.071255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514694, 35.294613, 21.251566>,  <34.300461, 35.293884, 21.359753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514694, 35.294613, 21.251566>,  <34.871746, 35.295830, 21.071255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514694, 35.294613, 21.251566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250928, 0.827384, 0.502465,
		-0.374493, 0.561628, -0.737786,
		-0.892631, -0.003039, 0.450778,
		34.246906, 35.293701, 21.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696846, 35.952232, 21.178133>,  <34.871746, 35.295830, 21.071255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696846, 35.952232, 21.178133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429741, 35.808483, 21.438883>,  <34.269478, 35.722233, 21.595333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429741, 35.808483, 21.438883>,  <34.696846, 35.952232, 21.178133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429741, 35.808483, 21.438883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278161, 0.691822, 0.666339,
		-0.690448, 0.626283, -0.362010,
		-0.667764, -0.359376, 0.651875,
		34.229412, 35.700672, 21.634445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422230, 36.572624, 21.569206>,  <34.696846, 35.952232, 21.178133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422230, 36.572624, 21.569206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355362, 36.249371, 21.795118>,  <34.315243, 36.055420, 21.930666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355362, 36.249371, 21.795118>,  <34.422230, 36.572624, 21.569206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355362, 36.249371, 21.795118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062731, 0.562961, 0.824100,
		-0.983930, 0.173195, -0.043416,
		-0.167171, -0.808133, 0.564779,
		34.305210, 36.006931, 21.964552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940502, 36.825214, 22.114704>,  <34.422230, 36.572624, 21.569206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940502, 36.825214, 22.114704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.109043, 36.481812, 22.231623>,  <34.210167, 36.275772, 22.301775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.109043, 36.481812, 22.231623>,  <33.940502, 36.825214, 22.114704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109043, 36.481812, 22.231623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336366, 0.447254, 0.828747,
		-0.842213, -0.250874, 0.477221,
		0.421350, -0.858502, 0.292297,
		34.235447, 36.224262, 22.319311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172768, 36.930347, 22.009960>,  <33.940502, 36.825214, 22.114704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172768, 36.930347, 22.009960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099445, 37.322140, 21.976473>,  <33.055450, 37.557217, 21.956381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099445, 37.322140, 21.976473>,  <33.172768, 36.930347, 22.009960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099445, 37.322140, 21.976473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202691, -0.120991, -0.971740,
		-0.961933, -0.161156, 0.220711,
		-0.183306, 0.979484, -0.083720,
		33.044453, 37.615986, 21.951357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588749, 36.972023, 21.550575>,  <33.172768, 36.930347, 22.009960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588749, 36.972023, 21.550575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750454, 37.337872, 21.548290>,  <32.847477, 37.557381, 21.546919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750454, 37.337872, 21.548290>,  <32.588749, 36.972023, 21.550575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750454, 37.337872, 21.548290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147904, 0.059208, -0.987228,
		-0.902605, 0.399945, 0.159212,
		0.404264, 0.914625, -0.005712,
		32.871735, 37.612259, 21.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984316, 37.345299, 21.295193>,  <32.588749, 36.972023, 21.550575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984316, 37.345299, 21.295193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.337883, 37.513138, 21.212608>,  <32.550022, 37.613842, 21.163057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.337883, 37.513138, 21.212608>,  <31.984316, 37.345299, 21.295193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337883, 37.513138, 21.212608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198752, -0.062560, -0.978051,
		-0.423303, 0.905552, 0.028098,
		0.883919, 0.419597, -0.206462,
		32.603058, 37.639015, 21.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851105, 37.737206, 20.744873>,  <31.984316, 37.345299, 21.295193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851105, 37.737206, 20.744873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.246391, 37.694324, 20.701164>,  <32.483562, 37.668594, 20.674940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.246391, 37.694324, 20.701164>,  <31.851105, 37.737206, 20.744873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246391, 37.694324, 20.701164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136925, -0.299902, -0.944092,
		0.068437, 0.947928, -0.311046,
		0.988214, -0.107201, -0.109271,
		32.542854, 37.662163, 20.668383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030354, 37.917652, 20.104328>,  <31.851105, 37.737206, 20.744873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030354, 37.917652, 20.104328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378128, 37.747097, 20.204147>,  <32.586792, 37.644764, 20.264040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378128, 37.747097, 20.204147>,  <32.030354, 37.917652, 20.104328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378128, 37.747097, 20.204147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104705, -0.334608, -0.936523,
		0.482826, 0.840374, -0.246274,
		0.869434, -0.426391, 0.249549,
		32.638958, 37.619179, 20.279013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543781, 38.111988, 19.602367>,  <32.030354, 37.917652, 20.104328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543781, 38.111988, 19.602367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.633644, 37.763985, 19.777916>,  <32.687561, 37.555183, 19.883245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.633644, 37.763985, 19.777916>,  <32.543781, 38.111988, 19.602367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633644, 37.763985, 19.777916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121681, -0.421814, -0.898480,
		0.966810, 0.255256, 0.011099,
		0.224661, -0.870010, 0.438874,
		32.701042, 37.502983, 19.909578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916267, 37.889511, 19.159582>,  <32.543781, 38.111988, 19.602367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916267, 37.889511, 19.159582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876141, 37.549419, 19.366287>,  <32.852066, 37.345364, 19.490311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876141, 37.549419, 19.366287>,  <32.916267, 37.889511, 19.159582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876141, 37.549419, 19.366287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016170, -0.520709, -0.853581,
		0.994824, -0.077274, 0.065985,
		-0.100319, -0.850230, 0.516765,
		32.846046, 37.294350, 19.521317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176910, 37.507038, 18.772064>,  <32.916267, 37.889511, 19.159582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176910, 37.507038, 18.772064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.974472, 37.263519, 19.016438>,  <32.853008, 37.117409, 19.163061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.974472, 37.263519, 19.016438>,  <33.176910, 37.507038, 18.772064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974472, 37.263519, 19.016438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151096, -0.634810, -0.757751,
		0.849142, -0.475801, 0.229285,
		-0.506091, -0.608794, 0.610935,
		32.822643, 37.080883, 19.199718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427544, 36.872135, 18.547979>,  <33.176910, 37.507038, 18.772064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427544, 36.872135, 18.547979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095829, 36.810852, 18.762945>,  <32.896801, 36.774082, 18.891926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095829, 36.810852, 18.762945>,  <33.427544, 36.872135, 18.547979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095829, 36.810852, 18.762945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279326, -0.719292, -0.636078,
		0.484010, -0.677604, 0.553703,
		-0.829284, -0.153205, 0.537417,
		32.847042, 36.764893, 18.924170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312542, 36.221851, 18.557676>,  <33.427544, 36.872135, 18.547979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312542, 36.221851, 18.557676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943764, 36.360199, 18.627413>,  <32.722496, 36.443207, 18.669254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943764, 36.360199, 18.627413>,  <33.312542, 36.221851, 18.557676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943764, 36.360199, 18.627413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367916, -0.641320, -0.673310,
		-0.121068, -0.684897, 0.718512,
		-0.921944, 0.345868, 0.174341,
		32.667179, 36.463959, 18.679714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876244, 35.696804, 18.801056>,  <33.312542, 36.221851, 18.557676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876244, 35.696804, 18.801056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.635281, 35.968037, 18.632626>,  <32.490704, 36.130775, 18.531567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.635281, 35.968037, 18.632626>,  <32.876244, 35.696804, 18.801056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635281, 35.968037, 18.632626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430774, -0.720315, -0.543673,
		-0.671963, -0.146125, 0.726026,
		-0.602412, 0.678081, -0.421078,
		32.454556, 36.171459, 18.506302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196831, 35.453163, 18.808126>,  <32.876244, 35.696804, 18.801056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196831, 35.453163, 18.808126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122261, 35.751991, 18.552900>,  <32.077518, 35.931290, 18.399765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122261, 35.751991, 18.552900>,  <32.196831, 35.453163, 18.808126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122261, 35.751991, 18.552900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610887, -0.596784, -0.520255,
		-0.769456, 0.292798, 0.567632,
		-0.186424, 0.747073, -0.638066,
		32.066334, 35.976112, 18.361481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535749, 35.341408, 18.538464>,  <32.196831, 35.453163, 18.808126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535749, 35.341408, 18.538464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705978, 35.589256, 18.274656>,  <31.808117, 35.737965, 18.116373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705978, 35.589256, 18.274656>,  <31.535749, 35.341408, 18.538464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705978, 35.589256, 18.274656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487477, -0.457049, -0.743957,
		-0.762400, 0.638108, 0.107541,
		0.425573, 0.619617, -0.659517,
		31.833651, 35.775143, 18.076801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843836, 35.064369, 18.872089>,  <31.535749, 35.341408, 18.538464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843836, 35.064369, 18.872089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461874, 34.955849, 18.920341>,  <30.232697, 34.890736, 18.949293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461874, 34.955849, 18.920341>,  <30.843836, 35.064369, 18.872089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461874, 34.955849, 18.920341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080283, 0.155226, 0.984611,
		-0.285856, 0.949894, -0.126445,
		-0.954904, -0.271306, 0.120632,
		30.175404, 34.874458, 18.956532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479357, 35.606422, 19.131538>,  <30.843836, 35.064369, 18.872089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479357, 35.606422, 19.131538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308443, 35.261517, 19.240295>,  <30.205894, 35.054573, 19.305550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308443, 35.261517, 19.240295>,  <30.479357, 35.606422, 19.131538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308443, 35.261517, 19.240295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083032, 0.262030, 0.961481,
		-0.900296, 0.433402, -0.040366,
		-0.427285, -0.862266, 0.271891,
		30.180258, 35.002838, 19.321863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096483, 35.803738, 19.736542>,  <30.479357, 35.606422, 19.131538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096483, 35.803738, 19.736542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.132965, 35.405720, 19.752354>,  <30.154854, 35.166908, 19.761841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.132965, 35.405720, 19.752354>,  <30.096483, 35.803738, 19.736542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132965, 35.405720, 19.752354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113956, 0.049862, 0.992234,
		-0.989290, -0.085994, 0.117940,
		0.091206, -0.995047, 0.039528,
		30.160328, 35.107204, 19.764212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590725, 35.561543, 20.172449>,  <30.096483, 35.803738, 19.736542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590725, 35.561543, 20.172449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887390, 35.293274, 20.177021>,  <30.065390, 35.132313, 20.179764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887390, 35.293274, 20.177021>,  <29.590725, 35.561543, 20.172449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887390, 35.293274, 20.177021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022388, 0.041780, 0.998876,
		-0.670398, -0.740574, 0.046002,
		0.741664, -0.670675, 0.011429,
		30.109890, 35.092072, 20.180450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469019, 35.253548, 20.786167>,  <29.590725, 35.561543, 20.172449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469019, 35.253548, 20.786167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847891, 35.154202, 20.705015>,  <30.075214, 35.094593, 20.656324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847891, 35.154202, 20.705015>,  <29.469019, 35.253548, 20.786167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847891, 35.154202, 20.705015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156837, -0.193054, 0.968572,
		-0.279731, -0.949233, -0.143904,
		0.947182, -0.248370, -0.202878,
		30.132046, 35.079693, 20.644152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569277, 34.652054, 21.147243>,  <29.469019, 35.253548, 20.786167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569277, 34.652054, 21.147243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928566, 34.820560, 21.097076>,  <30.144138, 34.921665, 21.066977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928566, 34.820560, 21.097076>,  <29.569277, 34.652054, 21.147243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928566, 34.820560, 21.097076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161800, -0.051602, 0.985473,
		0.408678, -0.905466, -0.114512,
		0.898222, 0.421270, -0.125416,
		30.198032, 34.946941, 21.059452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994366, 34.272930, 21.521986>,  <29.569277, 34.652054, 21.147243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994366, 34.272930, 21.521986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215961, 34.604065, 21.486717>,  <30.348919, 34.802746, 21.465555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215961, 34.604065, 21.486717>,  <29.994366, 34.272930, 21.521986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215961, 34.604065, 21.486717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269772, -0.078309, 0.959735,
		0.787603, -0.555470, -0.266711,
		0.553990, 0.827841, -0.088174,
		30.382158, 34.852417, 21.460264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642395, 34.126560, 21.940613>,  <29.994366, 34.272930, 21.521986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642395, 34.126560, 21.940613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.660999, 34.522125, 21.884209>,  <30.672161, 34.759464, 21.850367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.660999, 34.522125, 21.884209>,  <30.642395, 34.126560, 21.940613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660999, 34.522125, 21.884209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331506, 0.117880, 0.936060,
		0.942306, -0.090283, -0.322349,
		0.046511, 0.988915, -0.141008,
		30.674953, 34.818798, 21.841906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077126, 33.575489, 22.196686>,  <30.642395, 34.126560, 21.940613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077126, 33.575489, 22.196686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808546, 33.342674, 22.380159>,  <30.647398, 33.202984, 22.490244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808546, 33.342674, 22.380159>,  <31.077126, 33.575489, 22.196686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808546, 33.342674, 22.380159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263789, -0.390698, -0.881913,
		0.692514, -0.713153, 0.108798,
		-0.671446, -0.582037, 0.458685,
		30.607113, 33.168064, 22.517765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117085, 32.892513, 21.890213>,  <31.077126, 33.575489, 22.196686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117085, 32.892513, 21.890213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753391, 32.911629, 22.055626>,  <30.535175, 32.923096, 22.154873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753391, 32.911629, 22.055626>,  <31.117085, 32.892513, 21.890213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753391, 32.911629, 22.055626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403439, -0.346026, -0.847056,
		0.102617, -0.937007, 0.333897,
		-0.909234, 0.047785, 0.413533,
		30.480621, 32.925964, 22.179686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783875, 32.226486, 21.755701>,  <31.117085, 32.892513, 21.890213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783875, 32.226486, 21.755701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487415, 32.482014, 21.838264>,  <30.309540, 32.635330, 21.887802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487415, 32.482014, 21.838264>,  <30.783875, 32.226486, 21.755701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487415, 32.482014, 21.838264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559040, -0.417041, -0.716625,
		-0.371711, -0.646520, 0.666215,
		-0.741152, 0.638818, 0.206411,
		30.265070, 32.673660, 21.900187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170675, 31.812674, 21.942163>,  <30.783875, 32.226486, 21.755701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170675, 31.812674, 21.942163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056074, 32.163460, 21.787840>,  <29.987312, 32.373932, 21.695246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056074, 32.163460, 21.787840>,  <30.170675, 31.812674, 21.942163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056074, 32.163460, 21.787840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463464, -0.479300, -0.745300,
		-0.838520, -0.034722, 0.543763,
		-0.286504, 0.876964, -0.385810,
		29.970123, 32.426548, 21.672096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625193, 31.738041, 21.532900>,  <30.170675, 31.812674, 21.942163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625193, 31.738041, 21.532900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630491, 32.121979, 21.420813>,  <29.633671, 32.352341, 21.353559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630491, 32.121979, 21.420813>,  <29.625193, 31.738041, 21.532900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630491, 32.121979, 21.420813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545490, -0.227930, -0.806529,
		-0.838012, 0.163541, 0.520567,
		0.013248, 0.959845, -0.280218,
		29.634466, 32.409931, 21.336748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938988, 31.850649, 21.272127>,  <29.625193, 31.738041, 21.532900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938988, 31.850649, 21.272127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164143, 32.145035, 21.121656>,  <29.299236, 32.321667, 21.031374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164143, 32.145035, 21.121656>,  <28.938988, 31.850649, 21.272127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164143, 32.145035, 21.121656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310429, -0.233564, -0.921456,
		-0.766022, 0.635454, 0.096995,
		0.562888, 0.735966, -0.376178,
		29.333010, 32.365826, 21.008802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506639, 32.251373, 20.931631>,  <28.938988, 31.850649, 21.272127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506639, 32.251373, 20.931631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866085, 32.324123, 20.771925>,  <29.081753, 32.367775, 20.676102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866085, 32.324123, 20.771925>,  <28.506639, 32.251373, 20.931631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866085, 32.324123, 20.771925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355881, -0.230066, -0.905770,
		-0.256598, 0.956028, -0.142014,
		0.898614, 0.181878, -0.399266,
		29.135670, 32.378685, 20.652145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433121, 32.588867, 20.276457>,  <28.506639, 32.251373, 20.931631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433121, 32.588867, 20.276457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786652, 32.411354, 20.217258>,  <28.998770, 32.304844, 20.181740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786652, 32.411354, 20.217258>,  <28.433121, 32.588867, 20.276457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786652, 32.411354, 20.217258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294607, -0.282264, -0.912981,
		0.363396, 0.850517, -0.380215,
		0.883827, -0.443787, -0.147995,
		29.051800, 32.278217, 20.172859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574030, 32.745300, 19.648371>,  <28.433121, 32.588867, 20.276457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574030, 32.745300, 19.648371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818569, 32.440643, 19.734312>,  <28.965292, 32.257851, 19.785877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818569, 32.440643, 19.734312>,  <28.574030, 32.745300, 19.648371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818569, 32.440643, 19.734312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031353, -0.294593, -0.955108,
		0.790741, 0.577166, -0.203978,
		0.611347, -0.761639, 0.214851,
		29.001974, 32.212151, 19.798767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.174393, 36.227535, 34.490387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300011, 35.852211, 34.432487>,  <35.375381, 35.627018, 34.397747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300011, 35.852211, 34.432487>,  <35.174393, 36.227535, 34.490387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300011, 35.852211, 34.432487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433738, -0.006174, -0.901018,
		0.844538, 0.345747, -0.408919,
		0.314049, -0.938308, -0.144749,
		35.394226, 35.570717, 34.389061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504642, 36.220478, 33.889557>,  <35.174393, 36.227535, 34.490387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504642, 36.220478, 33.889557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412506, 35.835659, 33.948086>,  <35.357224, 35.604767, 33.983204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412506, 35.835659, 33.948086>,  <35.504642, 36.220478, 33.889557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412506, 35.835659, 33.948086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153791, -0.112484, -0.981680,
		0.960881, -0.248623, -0.122044,
		-0.230341, -0.962047, 0.146320,
		35.343403, 35.547047, 33.991982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756645, 35.870533, 33.270687>,  <35.504642, 36.220478, 33.889557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756645, 35.870533, 33.270687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515316, 35.597393, 33.435478>,  <35.370518, 35.433510, 33.534351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515316, 35.597393, 33.435478>,  <35.756645, 35.870533, 33.270687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515316, 35.597393, 33.435478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365969, -0.221924, -0.903779,
		0.708569, -0.696040, -0.116009,
		-0.603321, -0.682845, 0.411978,
		35.334320, 35.392540, 33.559071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921658, 35.275810, 32.952885>,  <35.756645, 35.870533, 33.270687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921658, 35.275810, 32.952885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546211, 35.241138, 33.086441>,  <35.320942, 35.220337, 33.166576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546211, 35.241138, 33.086441>,  <35.921658, 35.275810, 32.952885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546211, 35.241138, 33.086441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288950, -0.331141, -0.898250,
		0.188424, -0.939591, 0.285770,
		-0.938618, -0.086679, 0.333890,
		35.264626, 35.215134, 33.186607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643890, 34.584747, 32.742615>,  <35.921658, 35.275810, 32.952885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643890, 34.584747, 32.742615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317646, 34.804256, 32.815960>,  <35.121899, 34.935963, 32.859966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317646, 34.804256, 32.815960>,  <35.643890, 34.584747, 32.742615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317646, 34.804256, 32.815960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442598, -0.387626, -0.808612,
		-0.372654, -0.740681, 0.559036,
		-0.815620, 0.548760, 0.183374,
		35.072964, 34.968887, 32.870968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156948, 34.100594, 32.649273>,  <35.643890, 34.584747, 32.742615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156948, 34.100594, 32.649273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968632, 34.453491, 32.649693>,  <34.855640, 34.665230, 32.649944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968632, 34.453491, 32.649693>,  <35.156948, 34.100594, 32.649273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968632, 34.453491, 32.649693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466370, -0.247858, -0.849156,
		-0.748902, -0.400265, 0.528141,
		-0.470792, 0.882244, 0.001050,
		34.827393, 34.718163, 32.650009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524307, 33.871418, 32.529854>,  <35.156948, 34.100594, 32.649273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524307, 33.871418, 32.529854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514423, 34.258476, 32.429417>,  <34.508495, 34.490711, 32.369152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514423, 34.258476, 32.429417>,  <34.524307, 33.871418, 32.529854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514423, 34.258476, 32.429417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400377, -0.239726, -0.884438,
		-0.916018, 0.078680, 0.393346,
		-0.024708, 0.967647, -0.251095,
		34.507011, 34.548771, 32.354088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781105, 34.122749, 32.422775>,  <34.524307, 33.871418, 32.529854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781105, 34.122749, 32.422775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005016, 34.380646, 32.214561>,  <34.139362, 34.535385, 32.089634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005016, 34.380646, 32.214561>,  <33.781105, 34.122749, 32.422775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005016, 34.380646, 32.214561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595770, -0.123469, -0.793608,
		-0.575942, 0.754363, 0.315003,
		0.559776, 0.644741, -0.520538,
		34.172951, 34.574070, 32.058399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363060, 34.345463, 31.827936>,  <33.781105, 34.122749, 32.422775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363060, 34.345463, 31.827936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721325, 34.489815, 31.723967>,  <33.936283, 34.576424, 31.661585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721325, 34.489815, 31.723967>,  <33.363060, 34.345463, 31.827936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721325, 34.489815, 31.723967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330590, 0.149289, -0.931892,
		-0.297496, 0.920587, 0.253015,
		0.895660, 0.360878, -0.259923,
		33.990025, 34.598080, 31.645990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268120, 35.082191, 31.589001>,  <33.363060, 34.345463, 31.827936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268120, 35.082191, 31.589001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602104, 34.933510, 31.426683>,  <33.802494, 34.844299, 31.329292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602104, 34.933510, 31.426683>,  <33.268120, 35.082191, 31.589001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602104, 34.933510, 31.426683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372810, 0.160320, -0.913953,
		0.404780, 0.914402, -0.004715,
		0.834965, -0.371707, -0.405793,
		33.852592, 34.821999, 31.304945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182766, 35.254681, 30.908880>,  <33.268120, 35.082191, 31.589001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182766, 35.254681, 30.908880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480423, 34.991024, 30.865450>,  <33.659016, 34.832829, 30.839392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480423, 34.991024, 30.865450>,  <33.182766, 35.254681, 30.908880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480423, 34.991024, 30.865450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282143, -0.162787, -0.945460,
		0.605518, 0.734188, -0.307109,
		0.744139, -0.659143, -0.108576,
		33.703663, 34.793282, 30.832878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531487, 35.263016, 30.145006>,  <33.182766, 35.254681, 30.908880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531487, 35.263016, 30.145006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583961, 34.895649, 30.294294>,  <33.615444, 34.675228, 30.383867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583961, 34.895649, 30.294294>,  <33.531487, 35.263016, 30.145006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583961, 34.895649, 30.294294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452080, -0.390474, -0.801969,
		0.882277, -0.063519, -0.466424,
		0.131186, -0.918420, 0.373222,
		33.623318, 34.620121, 30.406261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650177, 36.001015, 29.981369>,  <33.531487, 35.263016, 30.145006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650177, 36.001015, 29.981369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263767, 36.102993, 29.964420>,  <33.031921, 36.164181, 29.954250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263767, 36.102993, 29.964420>,  <33.650177, 36.001015, 29.981369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263767, 36.102993, 29.964420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044299, 0.324875, 0.944719,
		0.254618, 0.910747, -0.325132,
		-0.966027, 0.254945, -0.042374,
		32.973961, 36.179478, 29.951708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593018, 36.676628, 30.270945>,  <33.650177, 36.001015, 29.981369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593018, 36.676628, 30.270945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217888, 36.538677, 30.286669>,  <32.992809, 36.455906, 30.296103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217888, 36.538677, 30.286669>,  <33.593018, 36.676628, 30.270945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217888, 36.538677, 30.286669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143748, 0.488955, 0.860384,
		-0.315948, 0.801237, -0.508129,
		-0.937824, -0.344879, 0.039308,
		32.936543, 36.435215, 30.298462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217625, 37.245171, 30.391520>,  <33.593018, 36.676628, 30.270945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217625, 37.245171, 30.391520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960819, 36.962791, 30.511160>,  <32.806736, 36.793365, 30.582945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960819, 36.962791, 30.511160>,  <33.217625, 37.245171, 30.391520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960819, 36.962791, 30.511160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215371, 0.540466, 0.813334,
		-0.735823, 0.457753, -0.499026,
		-0.642012, -0.705946, 0.299101,
		32.768215, 36.751007, 30.600889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875069, 37.542858, 30.803440>,  <33.217625, 37.245171, 30.391520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875069, 37.542858, 30.803440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749805, 37.174339, 30.895658>,  <32.674648, 36.953228, 30.950989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749805, 37.174339, 30.895658>,  <32.875069, 37.542858, 30.803440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749805, 37.174339, 30.895658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356270, 0.338988, 0.870723,
		-0.880344, 0.190536, -0.434385,
		-0.313156, -0.921294, 0.230544,
		32.655857, 36.897949, 30.964821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097706, 37.510647, 30.892239>,  <32.875069, 37.542858, 30.803440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097706, 37.510647, 30.892239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234158, 37.196064, 31.098194>,  <32.316029, 37.007313, 31.221767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234158, 37.196064, 31.098194>,  <32.097706, 37.510647, 30.892239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234158, 37.196064, 31.098194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384606, 0.383026, 0.839863,
		-0.857733, -0.484535, -0.171813,
		0.341134, -0.786458, 0.514889,
		32.336498, 36.960125, 31.252661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631687, 37.426834, 31.459299>,  <32.097706, 37.510647, 30.892239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631687, 37.426834, 31.459299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948935, 37.208591, 31.567575>,  <32.139282, 37.077644, 31.632542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948935, 37.208591, 31.567575>,  <31.631687, 37.426834, 31.459299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948935, 37.208591, 31.567575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105155, 0.315098, 0.943216,
		-0.599924, -0.776545, 0.192535,
		0.793117, -0.545611, 0.270692,
		32.186871, 37.044907, 31.648783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420650, 37.077366, 32.085297>,  <31.631687, 37.426834, 31.459299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420650, 37.077366, 32.085297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820473, 37.080284, 32.073746>,  <32.060368, 37.082035, 32.066814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820473, 37.080284, 32.073746>,  <31.420650, 37.077366, 32.085297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820473, 37.080284, 32.073746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024872, 0.329104, 0.943966,
		0.016388, -0.944266, 0.328776,
		0.999556, 0.007292, -0.028879,
		32.120338, 37.082474, 32.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592644, 36.704914, 32.619720>,  <31.420650, 37.077366, 32.085297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592644, 36.704914, 32.619720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894857, 36.949711, 32.526226>,  <32.076187, 37.096588, 32.470127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894857, 36.949711, 32.526226>,  <31.592644, 36.704914, 32.619720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894857, 36.949711, 32.526226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058226, 0.292649, 0.954446,
		0.652519, -0.734725, 0.185472,
		0.755533, 0.611994, -0.233738,
		32.121517, 37.133308, 32.456104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142376, 36.494358, 33.085125>,  <31.592644, 36.704914, 32.619720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142376, 36.494358, 33.085125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236042, 36.860722, 32.954723>,  <32.292244, 37.080540, 32.876484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236042, 36.860722, 32.954723>,  <32.142376, 36.494358, 33.085125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236042, 36.860722, 32.954723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124502, 0.304312, 0.944401,
		0.964191, -0.261738, -0.042771,
		0.234170, 0.915908, -0.326002,
		32.306293, 37.135494, 32.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593105, 36.676491, 33.503372>,  <32.142376, 36.494358, 33.085125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593105, 36.676491, 33.503372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491749, 37.033630, 33.354446>,  <32.430935, 37.247913, 33.265091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491749, 37.033630, 33.354446>,  <32.593105, 36.676491, 33.503372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491749, 37.033630, 33.354446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199403, 0.424822, 0.883043,
		0.946590, 0.149513, -0.285681,
		-0.253390, 0.892845, -0.372319,
		32.415733, 37.301483, 33.242752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974876, 37.120880, 33.907486>,  <32.593105, 36.676491, 33.503372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974876, 37.120880, 33.907486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712986, 37.364525, 33.728458>,  <32.555851, 37.510712, 33.621040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712986, 37.364525, 33.728458>,  <32.974876, 37.120880, 33.907486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712986, 37.364525, 33.728458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063737, 0.634509, 0.770283,
		0.753175, 0.475797, -0.454252,
		-0.654725, 0.609110, -0.447570,
		32.516567, 37.547256, 33.594189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216434, 37.835262, 33.893135>,  <32.974876, 37.120880, 33.907486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216434, 37.835262, 33.893135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821205, 37.886475, 33.858936>,  <32.584068, 37.917202, 33.838417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821205, 37.886475, 33.858936>,  <33.216434, 37.835262, 33.893135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821205, 37.886475, 33.858936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035250, 0.728722, 0.683902,
		0.149864, 0.672734, -0.724547,
		-0.988078, 0.128033, -0.085495,
		32.524780, 37.924885, 33.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111721, 38.562920, 33.697701>,  <33.216434, 37.835262, 33.893135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111721, 38.562920, 33.697701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789856, 38.412277, 33.881306>,  <32.596737, 38.321892, 33.991467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789856, 38.412277, 33.881306>,  <33.111721, 38.562920, 33.697701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789856, 38.412277, 33.881306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025807, 0.794542, 0.606660,
		-0.593173, 0.476311, -0.649056,
		-0.804661, -0.376604, 0.459009,
		32.548458, 38.299297, 34.019009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694641, 39.091431, 33.622566>,  <33.111721, 38.562920, 33.697701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694641, 39.091431, 33.622566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567074, 38.870029, 33.930313>,  <32.490532, 38.737190, 34.114964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567074, 38.870029, 33.930313>,  <32.694641, 39.091431, 33.622566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567074, 38.870029, 33.930313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041802, 0.802754, 0.594844,
		-0.946860, 0.221867, -0.232875,
		-0.318918, -0.553499, 0.769370,
		32.471397, 38.703979, 34.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198948, 39.018772, 33.081486>,  <32.694641, 39.091431, 33.622566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198948, 39.018772, 33.081486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418159, 39.338409, 32.982597>,  <33.549686, 39.530190, 32.923264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418159, 39.338409, 32.982597>,  <33.198948, 39.018772, 33.081486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418159, 39.338409, 32.982597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240605, -0.132474, -0.961540,
		-0.801109, 0.586433, 0.119666,
		0.548026, 0.799091, -0.247225,
		33.582569, 39.578136, 32.908428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731831, 39.580704, 32.702633>,  <33.198948, 39.018772, 33.081486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731831, 39.580704, 32.702633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118885, 39.556259, 32.604702>,  <33.351120, 39.541592, 32.545944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118885, 39.556259, 32.604702>,  <32.731831, 39.580704, 32.702633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118885, 39.556259, 32.604702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250293, -0.109220, -0.961990,
		0.032049, 0.992137, -0.120981,
		0.967639, -0.061112, -0.244825,
		33.409176, 39.537926, 32.531254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881489, 40.127342, 32.306885>,  <32.731831, 39.580704, 32.702633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881489, 40.127342, 32.306885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134815, 39.842613, 32.185413>,  <33.286812, 39.671776, 32.112530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134815, 39.842613, 32.185413>,  <32.881489, 40.127342, 32.306885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134815, 39.842613, 32.185413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295300, 0.140433, -0.945027,
		0.715336, 0.688178, -0.121262,
		0.633318, -0.711821, -0.303676,
		33.324810, 39.629066, 32.094311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260899, 40.400291, 31.677818>,  <32.881489, 40.127342, 32.306885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260899, 40.400291, 31.677818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303795, 40.002728, 31.667660>,  <33.329533, 39.764191, 31.661566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303795, 40.002728, 31.667660>,  <33.260899, 40.400291, 31.677818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303795, 40.002728, 31.667660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272545, -0.004824, -0.962131,
		0.956148, 0.110099, -0.271402,
		0.107239, -0.993909, -0.025395,
		33.335968, 39.704556, 31.660042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542267, 40.251308, 30.973103>,  <33.260899, 40.400291, 31.677818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542267, 40.251308, 30.973103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434196, 39.886116, 31.095392>,  <33.369354, 39.667000, 31.168766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434196, 39.886116, 31.095392>,  <33.542267, 40.251308, 30.973103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434196, 39.886116, 31.095392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075876, -0.296356, -0.952059,
		0.959816, -0.280423, 0.010795,
		-0.270178, -0.912982, 0.305724,
		33.353142, 39.612221, 31.187109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055614, 39.640423, 30.627172>,  <33.542267, 40.251308, 30.973103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055614, 39.640423, 30.627172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713104, 39.466763, 30.739103>,  <33.507599, 39.362564, 30.806261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713104, 39.466763, 30.739103>,  <34.055614, 39.640423, 30.627172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713104, 39.466763, 30.739103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086396, -0.413735, -0.906288,
		0.509243, -0.800208, 0.316762,
		-0.856275, -0.434154, 0.279827,
		33.456223, 39.336517, 30.823051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107834, 38.946003, 30.242552>,  <34.055614, 39.640423, 30.627172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107834, 38.946003, 30.242552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735947, 39.052586, 30.344234>,  <33.512814, 39.116535, 30.405245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735947, 39.052586, 30.344234>,  <34.107834, 38.946003, 30.242552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735947, 39.052586, 30.344234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349667, -0.422099, -0.836400,
		-0.115564, -0.866506, 0.485606,
		-0.929719, 0.266458, 0.254209,
		33.457031, 39.132523, 30.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712219, 38.259090, 30.188076>,  <34.107834, 38.946003, 30.242552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712219, 38.259090, 30.188076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479782, 38.584442, 30.177156>,  <33.340321, 38.779655, 30.170605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479782, 38.584442, 30.177156>,  <33.712219, 38.259090, 30.188076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479782, 38.584442, 30.177156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421541, -0.329507, -0.844825,
		-0.696160, -0.479411, 0.534347,
		-0.581089, 0.813382, -0.027298,
		33.305454, 38.828457, 30.168966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097366, 37.988159, 29.995298>,  <33.712219, 38.259090, 30.188076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097366, 37.988159, 29.995298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087837, 38.382027, 29.926186>,  <33.082119, 38.618347, 29.884718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087837, 38.382027, 29.926186>,  <33.097366, 37.988159, 29.995298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087837, 38.382027, 29.926186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519668, -0.159844, -0.839282,
		-0.854036, 0.069793, 0.515511,
		-0.023826, 0.984672, -0.172782,
		33.080688, 38.677429, 29.874352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521427, 38.090553, 29.773031>,  <33.097366, 37.988159, 29.995298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521427, 38.090553, 29.773031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692921, 38.420246, 29.625069>,  <32.795818, 38.618061, 29.536291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692921, 38.420246, 29.625069>,  <32.521427, 38.090553, 29.773031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692921, 38.420246, 29.625069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572320, -0.069014, -0.817121,
		-0.699026, 0.562031, 0.442136,
		0.428734, 0.824232, -0.369905,
		32.821541, 38.667515, 29.514097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072151, 38.212082, 29.234499>,  <32.521427, 38.090553, 29.773031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072151, 38.212082, 29.234499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383823, 38.451118, 29.158844>,  <32.570827, 38.594540, 29.113451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383823, 38.451118, 29.158844>,  <32.072151, 38.212082, 29.234499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383823, 38.451118, 29.158844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270530, 0.048424, -0.961493,
		-0.565419, 0.800339, 0.199397,
		0.779176, 0.597589, -0.189137,
		32.617577, 38.630394, 29.102102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805494, 38.721901, 28.785948>,  <32.072151, 38.212082, 29.234499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805494, 38.721901, 28.785948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202610, 38.752903, 28.749374>,  <32.440880, 38.771503, 28.727430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202610, 38.752903, 28.749374>,  <31.805494, 38.721901, 28.785948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202610, 38.752903, 28.749374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104279, 0.182334, -0.977691,
		-0.059103, 0.980177, 0.189101,
		0.992790, 0.077504, -0.091435,
		32.500446, 38.776154, 28.721945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920866, 39.405907, 28.413782>,  <31.805494, 38.721901, 28.785948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920866, 39.405907, 28.413782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232311, 39.161808, 28.355324>,  <32.419178, 39.015347, 28.320248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232311, 39.161808, 28.355324>,  <31.920866, 39.405907, 28.413782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232311, 39.161808, 28.355324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082474, 0.131362, -0.987898,
		0.622061, 0.781243, 0.051951,
		0.778613, -0.610249, -0.146148,
		32.465897, 38.978733, 28.311480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348633, 39.664352, 27.947634>,  <31.920866, 39.405907, 28.413782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348633, 39.664352, 27.947634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483723, 39.289246, 27.915304>,  <32.564777, 39.064182, 27.895906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483723, 39.289246, 27.915304>,  <32.348633, 39.664352, 27.947634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483723, 39.289246, 27.915304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038869, 0.071899, -0.996654,
		0.940443, 0.339735, -0.012168,
		0.337723, -0.937769, -0.080822,
		32.585041, 39.007915, 27.891058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853462, 39.646908, 27.347277>,  <32.348633, 39.664352, 27.947634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853462, 39.646908, 27.347277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758736, 39.263046, 27.407925>,  <32.701900, 39.032730, 27.444313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758736, 39.263046, 27.407925>,  <32.853462, 39.646908, 27.347277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758736, 39.263046, 27.407925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047905, -0.144334, -0.988369,
		0.970372, -0.241327, -0.011791,
		-0.236818, -0.959650, 0.151618,
		32.687691, 38.975151, 27.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392826, 39.288036, 27.028063>,  <32.853462, 39.646908, 27.347277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392826, 39.288036, 27.028063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100842, 39.016312, 27.058220>,  <32.925652, 38.853275, 27.076313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100842, 39.016312, 27.058220>,  <33.392826, 39.288036, 27.028063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100842, 39.016312, 27.058220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251378, -0.369407, -0.894621,
		0.635578, -0.634091, 0.440419,
		-0.729965, -0.679313, 0.075391,
		32.881851, 38.812519, 27.080837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609379, 38.690319, 26.697992>,  <33.392826, 39.288036, 27.028063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609379, 38.690319, 26.697992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209480, 38.681366, 26.697958>,  <32.969540, 38.675995, 26.697937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209480, 38.681366, 26.697958>,  <33.609379, 38.690319, 26.697992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209480, 38.681366, 26.697958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007326, -0.323605, -0.946164,
		0.021154, -0.945927, 0.323688,
		-0.999750, -0.022387, -0.000084,
		32.909557, 38.674648, 26.697933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491051, 38.158203, 26.344942>,  <33.609379, 38.690319, 26.697992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491051, 38.158203, 26.344942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146202, 38.360714, 26.336727>,  <32.939293, 38.482220, 26.331799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146202, 38.360714, 26.336727>,  <33.491051, 38.158203, 26.344942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146202, 38.360714, 26.336727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195450, -0.369672, -0.908373,
		-0.467486, -0.779115, 0.417656,
		-0.862123, 0.506283, -0.020538,
		32.887566, 38.512600, 26.330566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966480, 37.684380, 26.269762>,  <33.491051, 38.158203, 26.344942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966480, 37.684380, 26.269762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814911, 38.034920, 26.150814>,  <32.723969, 38.245243, 26.079445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814911, 38.034920, 26.150814>,  <32.966480, 37.684380, 26.269762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814911, 38.034920, 26.150814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206156, -0.393192, -0.896047,
		-0.902173, -0.278230, 0.329655,
		-0.378925, 0.876349, -0.297369,
		32.701233, 38.297825, 26.061604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255821, 37.716610, 25.938969>,  <32.966480, 37.684380, 26.269762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255821, 37.716610, 25.938969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409084, 38.056152, 25.793293>,  <32.501041, 38.259876, 25.705887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409084, 38.056152, 25.793293>,  <32.255821, 37.716610, 25.938969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409084, 38.056152, 25.793293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030864, -0.405827, -0.913429,
		-0.923165, 0.338751, -0.181697,
		0.383162, 0.848854, -0.364190,
		32.524033, 38.310810, 25.684036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869331, 37.897362, 25.273245>,  <32.255821, 37.716610, 25.938969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869331, 37.897362, 25.273245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198082, 38.121723, 25.233431>,  <32.395332, 38.256340, 25.209541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198082, 38.121723, 25.233431>,  <31.869331, 37.897362, 25.273245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198082, 38.121723, 25.233431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032889, -0.221156, -0.974684,
		-0.568715, 0.797796, -0.200211,
		0.821877, 0.560902, -0.099536,
		32.444645, 38.289993, 25.203569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761795, 38.278839, 24.706982>,  <31.869331, 37.897362, 25.273245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761795, 38.278839, 24.706982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158321, 38.313923, 24.746174>,  <32.396236, 38.334972, 24.769690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158321, 38.313923, 24.746174>,  <31.761795, 38.278839, 24.706982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158321, 38.313923, 24.746174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101184, -0.032857, -0.994325,
		-0.083993, 0.995604, -0.041447,
		0.991316, 0.087710, 0.097980,
		32.455715, 38.340237, 24.775568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928989, 38.706348, 24.165354>,  <31.761795, 38.278839, 24.706982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928989, 38.706348, 24.165354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274109, 38.527878, 24.260439>,  <32.481178, 38.420795, 24.317490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274109, 38.527878, 24.260439>,  <31.928989, 38.706348, 24.165354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274109, 38.527878, 24.260439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307723, 0.090432, -0.947169,
		0.401110, 0.890363, 0.215324,
		0.862796, -0.446178, 0.237712,
		32.532948, 38.394024, 24.331753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402222, 39.081161, 23.868164>,  <31.928989, 38.706348, 24.165354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402222, 39.081161, 23.868164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596806, 38.736183, 23.924093>,  <32.713554, 38.529198, 23.957651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596806, 38.736183, 23.924093>,  <32.402222, 39.081161, 23.868164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596806, 38.736183, 23.924093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353459, 0.047906, -0.934222,
		0.799014, 0.503884, 0.328143,
		0.486460, -0.862442, 0.139825,
		32.742744, 38.477451, 23.966042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165497, 39.119835, 23.597063>,  <32.402222, 39.081161, 23.868164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165497, 39.119835, 23.597063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066311, 38.732327, 23.596573>,  <33.006798, 38.499821, 23.596279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066311, 38.732327, 23.596573>,  <33.165497, 39.119835, 23.597063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066311, 38.732327, 23.596573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463025, -0.117404, -0.878535,
		0.850953, -0.218412, 0.477676,
		-0.247964, -0.968768, -0.001225,
		32.991920, 38.441696, 23.596205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701363, 38.728706, 23.165007>,  <33.165497, 39.119835, 23.597063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701363, 38.728706, 23.165007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419880, 38.444611, 23.172583>,  <33.250992, 38.274155, 23.177128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419880, 38.444611, 23.172583>,  <33.701363, 38.728706, 23.165007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419880, 38.444611, 23.172583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188162, -0.212006, -0.958983,
		0.685123, -0.671278, 0.282830,
		-0.703706, -0.710239, 0.018941,
		33.208767, 38.231541, 23.178265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944572, 38.071987, 22.768982>,  <33.701363, 38.728706, 23.165007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944572, 38.071987, 22.768982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548435, 38.016544, 22.769253>,  <33.310753, 37.983276, 22.769415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548435, 38.016544, 22.769253>,  <33.944572, 38.071987, 22.768982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548435, 38.016544, 22.769253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037050, -0.269419, -0.962310,
		0.133569, -0.952996, 0.271953,
		-0.990347, -0.138610, 0.000678,
		33.251331, 37.974960, 22.769457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810154, 37.426510, 22.487747>,  <33.944572, 38.071987, 22.768982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810154, 37.426510, 22.487747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466846, 37.624027, 22.431837>,  <33.260860, 37.742538, 22.398291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466846, 37.624027, 22.431837>,  <33.810154, 37.426510, 22.487747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466846, 37.624027, 22.431837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081396, -0.137931, -0.987091,
		-0.506702, -0.858568, 0.078189,
		-0.858270, 0.493797, -0.139774,
		33.209366, 37.772167, 22.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734657, 36.714836, 22.864979>,  <33.810154, 37.426510, 22.487747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734657, 36.714836, 22.864979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022835, 36.445240, 22.799627>,  <34.195744, 36.283482, 22.760416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022835, 36.445240, 22.799627>,  <33.734657, 36.714836, 22.864979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022835, 36.445240, 22.799627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192494, -0.031981, 0.980777,
		-0.666259, -0.738047, 0.106699,
		0.720448, -0.673990, -0.163377,
		34.238968, 36.243042, 22.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691605, 36.190796, 23.374254>,  <33.734657, 36.714836, 22.864979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691605, 36.190796, 23.374254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065453, 36.199883, 23.232285>,  <34.289761, 36.205334, 23.147102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065453, 36.199883, 23.232285>,  <33.691605, 36.190796, 23.374254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065453, 36.199883, 23.232285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355650, -0.055967, 0.932942,
		0.001328, -0.998174, -0.060387,
		0.934618, 0.022715, -0.354926,
		34.345837, 36.206696, 23.125807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109608, 35.684788, 23.742891>,  <33.691605, 36.190796, 23.374254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109608, 35.684788, 23.742891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368099, 35.949677, 23.591185>,  <34.523193, 36.108608, 23.500160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368099, 35.949677, 23.591185>,  <34.109608, 35.684788, 23.742891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368099, 35.949677, 23.591185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411958, 0.115635, 0.903836,
		0.642397, -0.740331, -0.198081,
		0.646232, 0.662223, -0.379269,
		34.561970, 36.148342, 23.477404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711369, 35.407574, 23.928234>,  <34.109608, 35.684788, 23.742891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711369, 35.407574, 23.928234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777664, 35.790882, 23.835070>,  <34.817444, 36.020866, 23.779171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777664, 35.790882, 23.835070>,  <34.711369, 35.407574, 23.928234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777664, 35.790882, 23.835070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470001, 0.130873, 0.872910,
		0.866965, -0.254145, -0.428697,
		0.165741, 0.958271, -0.232911,
		34.827385, 36.078362, 23.765196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404083, 35.433140, 23.890125>,  <34.711369, 35.407574, 23.928234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404083, 35.433140, 23.890125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267227, 35.800762, 23.968386>,  <35.185112, 36.021336, 24.015341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267227, 35.800762, 23.968386>,  <35.404083, 35.433140, 23.890125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267227, 35.800762, 23.968386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588189, 0.047098, 0.807351,
		0.732785, 0.391305, -0.556692,
		-0.342139, 0.919055, 0.195649,
		35.164585, 36.076477, 24.027081>
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
