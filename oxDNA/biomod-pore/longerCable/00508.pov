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
	<24.362923, 34.663784, 35.607563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270983, 34.836563, 35.258717>,  <24.215818, 34.940231, 35.049408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270983, 34.836563, 35.258717>,  <24.362923, 34.663784, 35.607563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270983, 34.836563, 35.258717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774195, -0.461861, -0.432791,
		-0.589739, -0.774668, -0.228250,
		-0.229849, 0.431943, -0.872120,
		24.202028, 34.966145, 34.997082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571003, 34.206345, 35.081249>,  <24.362923, 34.663784, 35.607563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571003, 34.206345, 35.081249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606356, 34.588039, 34.966969>,  <24.627567, 34.817055, 34.898399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606356, 34.588039, 34.966969>,  <24.571003, 34.206345, 35.081249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606356, 34.588039, 34.966969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980455, -0.133954, -0.144102,
		-0.175778, -0.267383, -0.947422,
		0.088381, 0.954234, -0.285703,
		24.632870, 34.874310, 34.881256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010242, 34.330322, 34.407455>,  <24.571003, 34.206345, 35.081249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010242, 34.330322, 34.407455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018728, 34.615604, 34.687710>,  <25.023821, 34.786774, 34.855862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018728, 34.615604, 34.687710>,  <25.010242, 34.330322, 34.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018728, 34.615604, 34.687710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997501, -0.062338, 0.033250,
		0.067390, 0.698182, -0.712742,
		0.021216, 0.713201, 0.700638,
		25.025093, 34.829563, 34.897900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123308, 34.777695, 33.803463>,  <25.010242, 34.330322, 34.407455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123308, 34.777695, 33.803463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467621, 34.619434, 33.931538>,  <25.674208, 34.524479, 34.008381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467621, 34.619434, 33.931538>,  <25.123308, 34.777695, 33.803463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467621, 34.619434, 33.931538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357203, 0.021468, -0.933780,
		0.362579, 0.918149, 0.159807,
		0.860780, -0.395652, 0.320182,
		25.725855, 34.500740, 34.027592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617716, 35.287514, 33.628258>,  <25.123308, 34.777695, 33.803463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617716, 35.287514, 33.628258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787663, 34.926323, 33.653927>,  <25.889631, 34.709610, 33.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787663, 34.926323, 33.653927>,  <25.617716, 35.287514, 33.628258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787663, 34.926323, 33.653927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485448, 0.167428, -0.858084,
		0.764086, 0.395726, 0.509483,
		0.424868, -0.902978, 0.064175,
		25.915123, 34.655430, 33.673180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134455, 35.416870, 33.227085>,  <25.617716, 35.287514, 33.628258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134455, 35.416870, 33.227085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144985, 35.019005, 33.267002>,  <26.151302, 34.780285, 33.290951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144985, 35.019005, 33.267002>,  <26.134455, 35.416870, 33.227085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144985, 35.019005, 33.267002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550504, -0.068903, -0.831984,
		0.834417, 0.076838, 0.545750,
		0.026324, -0.994660, 0.099794,
		26.152882, 34.720608, 33.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918228, 35.006802, 33.154861>,  <26.134455, 35.416870, 33.227085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918228, 35.006802, 33.154861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596762, 34.806892, 33.025650>,  <26.403883, 34.686947, 32.948124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596762, 34.806892, 33.025650>,  <26.918228, 35.006802, 33.154861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596762, 34.806892, 33.025650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372601, 0.000644, -0.927991,
		0.463996, -0.866155, 0.185699,
		-0.803664, -0.499776, -0.323029,
		26.355663, 34.656960, 32.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238480, 34.517044, 32.637074>,  <26.918228, 35.006802, 33.154861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238480, 34.517044, 32.637074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846447, 34.586922, 32.599285>,  <26.611227, 34.628849, 32.576614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846447, 34.586922, 32.599285>,  <27.238480, 34.517044, 32.637074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846447, 34.586922, 32.599285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069179, -0.145573, -0.986926,
		-0.186164, -0.973802, 0.130588,
		-0.980080, 0.174696, -0.094467,
		26.552423, 34.639332, 32.570946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351963, 34.262856, 31.938490>,  <27.238480, 34.517044, 32.637074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351963, 34.262856, 31.938490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448465, 34.644894, 31.869682>,  <27.506367, 34.874115, 31.828398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448465, 34.644894, 31.869682>,  <27.351963, 34.262856, 31.938490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448465, 34.644894, 31.869682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908108, -0.159670, 0.387098,
		0.342249, -0.249603, -0.905850,
		0.241258, 0.955094, -0.172020,
		27.520844, 34.931423, 31.818077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956594, 34.186047, 31.701494>,  <27.351963, 34.262856, 31.938490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956594, 34.186047, 31.701494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932795, 34.552746, 31.859497>,  <27.918514, 34.772766, 31.954298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932795, 34.552746, 31.859497>,  <27.956594, 34.186047, 31.701494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932795, 34.552746, 31.859497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827986, -0.175707, 0.532509,
		0.557582, 0.358745, -0.748601,
		-0.059501, 0.916749, 0.395007,
		27.914944, 34.827770, 31.977999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564356, 34.422333, 31.540249>,  <27.956594, 34.186047, 31.701494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564356, 34.422333, 31.540249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446413, 34.677177, 31.825108>,  <28.375647, 34.830082, 31.996023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446413, 34.677177, 31.825108>,  <28.564356, 34.422333, 31.540249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446413, 34.677177, 31.825108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874648, -0.120152, 0.469633,
		0.384772, 0.761352, -0.521817,
		-0.294858, 0.637108, 0.712146,
		28.357956, 34.868309, 32.038750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085741, 34.868408, 31.677189>,  <28.564356, 34.422333, 31.540249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085741, 34.868408, 31.677189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851915, 34.845135, 32.000893>,  <28.711620, 34.831169, 32.195114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851915, 34.845135, 32.000893>,  <29.085741, 34.868408, 31.677189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851915, 34.845135, 32.000893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810741, -0.080413, 0.579856,
		0.031335, 0.995062, 0.094182,
		-0.584566, -0.058188, 0.809257,
		28.676546, 34.827679, 32.243671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165661, 35.528572, 32.104027>,  <29.085741, 34.868408, 31.677189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165661, 35.528572, 32.104027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039894, 35.207947, 32.307453>,  <28.964434, 35.015572, 32.429508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039894, 35.207947, 32.307453>,  <29.165661, 35.528572, 32.104027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039894, 35.207947, 32.307453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740015, 0.128587, 0.660184,
		-0.594574, 0.583919, 0.552738,
		-0.314419, -0.801563, 0.508564,
		28.945568, 34.967476, 32.460022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007610, 35.790062, 32.765450>,  <29.165661, 35.528572, 32.104027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007610, 35.790062, 32.765450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126062, 35.408192, 32.753441>,  <29.197134, 35.179070, 32.746235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126062, 35.408192, 32.753441>,  <29.007610, 35.790062, 32.765450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126062, 35.408192, 32.753441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770888, 0.220328, 0.597651,
		-0.563950, -0.200121, 0.801194,
		0.296128, -0.954676, -0.030017,
		29.214901, 35.121788, 32.744434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028872, 35.542141, 33.455639>,  <29.007610, 35.790062, 32.765450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028872, 35.542141, 33.455639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266073, 35.333969, 33.209873>,  <29.408394, 35.209064, 33.062416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266073, 35.333969, 33.209873>,  <29.028872, 35.542141, 33.455639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266073, 35.333969, 33.209873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799537, 0.290257, 0.525824,
		-0.095317, -0.803060, 0.588225,
		0.593005, -0.520428, -0.614410,
		29.443975, 35.177841, 33.025551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301477, 35.221169, 33.316605>,  <29.028872, 35.542141, 33.455639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301477, 35.221169, 33.316605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448988, 35.195038, 32.945717>,  <28.537495, 35.179359, 32.723183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448988, 35.195038, 32.945717>,  <28.301477, 35.221169, 33.316605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448988, 35.195038, 32.945717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900476, 0.222290, -0.373805,
		0.230533, 0.972790, 0.023147,
		0.368779, -0.065331, -0.927219,
		28.559622, 35.175438, 32.667553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954002, 35.689079, 32.940926>,  <28.301477, 35.221169, 33.316605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954002, 35.689079, 32.940926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096220, 35.474411, 32.634834>,  <28.181551, 35.345608, 32.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096220, 35.474411, 32.634834>,  <27.954002, 35.689079, 32.940926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096220, 35.474411, 32.634834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880633, 0.081971, -0.466654,
		0.313167, 0.839798, -0.443470,
		0.355544, -0.536675, -0.765225,
		28.202883, 35.313408, 32.405266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966684, 36.096199, 32.352509>,  <27.954002, 35.689079, 32.940926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966684, 36.096199, 32.352509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943737, 35.707287, 32.261845>,  <27.929970, 35.473938, 32.207447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943737, 35.707287, 32.261845>,  <27.966684, 36.096199, 32.352509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943737, 35.707287, 32.261845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714810, 0.198493, -0.670557,
		0.696962, 0.123548, -0.706385,
		-0.057367, -0.972284, -0.226655,
		27.926527, 35.415600, 32.193848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936731, 36.074192, 31.575153>,  <27.966684, 36.096199, 32.352509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936731, 36.074192, 31.575153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789980, 35.732807, 31.723211>,  <27.701929, 35.527977, 31.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789980, 35.732807, 31.723211>,  <27.936731, 36.074192, 31.575153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789980, 35.732807, 31.723211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838495, 0.131055, -0.528915,
		0.402899, -0.504409, -0.763704,
		-0.366876, -0.853461, 0.370143,
		27.679916, 35.476768, 31.834255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717636, 35.490200, 31.117599>,  <27.936731, 36.074192, 31.575153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717636, 35.490200, 31.117599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483284, 35.512970, 31.440958>,  <27.342672, 35.526630, 31.634974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483284, 35.512970, 31.440958>,  <27.717636, 35.490200, 31.117599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483284, 35.512970, 31.440958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767796, 0.280186, -0.576181,
		-0.259299, -0.958256, -0.120451,
		-0.585878, 0.056922, 0.808398,
		27.307520, 35.530045, 31.683477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074324, 35.138706, 31.055466>,  <27.717636, 35.490200, 31.117599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074324, 35.138706, 31.055466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029585, 35.451614, 31.300591>,  <27.002743, 35.639359, 31.447666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029585, 35.451614, 31.300591>,  <27.074324, 35.138706, 31.055466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029585, 35.451614, 31.300591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623246, 0.425096, -0.656398,
		-0.773987, -0.455348, 0.440004,
		-0.111845, 0.782274, 0.612812,
		26.996031, 35.686295, 31.484434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284035, 35.315163, 31.250420>,  <27.074324, 35.138706, 31.055466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284035, 35.315163, 31.250420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526447, 35.632225, 31.276999>,  <26.671896, 35.822464, 31.292946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526447, 35.632225, 31.276999>,  <26.284035, 35.315163, 31.250420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526447, 35.632225, 31.276999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467876, 0.422778, -0.776113,
		-0.643286, 0.439260, 0.627084,
		0.606033, 0.792659, 0.066448,
		26.708258, 35.870022, 31.296932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937393, 35.988018, 31.323921>,  <26.284035, 35.315163, 31.250420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937393, 35.988018, 31.323921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296354, 36.044662, 31.156773>,  <26.511730, 36.078651, 31.056484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296354, 36.044662, 31.156773>,  <25.937393, 35.988018, 31.323921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296354, 36.044662, 31.156773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439876, 0.360872, -0.822363,
		0.034338, 0.921801, 0.386141,
		0.897402, 0.141615, -0.417870,
		26.565575, 36.087147, 31.031412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375532, 35.627609, 31.161608>,  <25.937393, 35.988018, 31.323921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375532, 35.627609, 31.161608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996771, 35.735878, 31.092203>,  <24.769514, 35.800838, 31.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996771, 35.735878, 31.092203>,  <25.375532, 35.627609, 31.161608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996771, 35.735878, 31.092203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321492, 0.803635, -0.500813,
		0.003883, -0.530005, -0.847986,
		-0.946905, 0.270676, -0.173512,
		24.712700, 35.817081, 31.040150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474398, 36.098202, 30.756092>,  <25.375532, 35.627609, 31.161608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474398, 36.098202, 30.756092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086227, 36.142071, 30.842113>,  <24.853325, 36.168392, 30.893726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086227, 36.142071, 30.842113>,  <25.474398, 36.098202, 30.756092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086227, 36.142071, 30.842113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026938, 0.934479, -0.354997,
		-0.239897, -0.338705, -0.909796,
		-0.970424, 0.109671, 0.215055,
		24.795099, 36.174973, 30.906630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032639, 36.164021, 30.140194>,  <25.474398, 36.098202, 30.756092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032639, 36.164021, 30.140194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858345, 36.345535, 30.451118>,  <24.753769, 36.454445, 30.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858345, 36.345535, 30.451118>,  <25.032639, 36.164021, 30.140194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858345, 36.345535, 30.451118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086829, 0.838386, -0.538117,
		-0.895878, -0.301968, -0.325910,
		-0.435732, 0.453789, 0.777311,
		24.727625, 36.481670, 30.684311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460838, 36.457115, 29.840412>,  <25.032639, 36.164021, 30.140194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460838, 36.457115, 29.840412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496208, 36.614502, 30.206442>,  <24.517429, 36.708935, 30.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496208, 36.614502, 30.206442>,  <24.460838, 36.457115, 29.840412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496208, 36.614502, 30.206442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264554, 0.894957, -0.359254,
		-0.960309, -0.210320, 0.183229,
		0.088423, 0.393468, 0.915076,
		24.522736, 36.732544, 30.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016321, 36.218964, 29.424641>,  <24.460838, 36.457115, 29.840412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016321, 36.218964, 29.424641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759346, 36.351292, 29.148138>,  <24.605162, 36.430687, 28.982237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759346, 36.351292, 29.148138>,  <25.016321, 36.218964, 29.424641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759346, 36.351292, 29.148138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609953, 0.325333, 0.722576,
		0.463930, 0.885843, -0.007222,
		-0.642438, 0.330819, -0.691254,
		24.566614, 36.450539, 28.940762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853319, 37.030029, 29.390364>,  <25.016321, 36.218964, 29.424641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853319, 37.030029, 29.390364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577450, 36.751549, 29.310705>,  <24.411928, 36.584461, 29.262909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577450, 36.751549, 29.310705>,  <24.853319, 37.030029, 29.390364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577450, 36.751549, 29.310705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498393, 0.256866, 0.828024,
		-0.525313, 0.670321, -0.524133,
		-0.689674, -0.696197, -0.199148,
		24.370548, 36.542690, 29.250961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862978, 37.816898, 29.440477>,  <24.853319, 37.030029, 29.390364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862978, 37.816898, 29.440477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123800, 37.731762, 29.149405>,  <25.280294, 37.680679, 28.974760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123800, 37.731762, 29.149405>,  <24.862978, 37.816898, 29.440477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123800, 37.731762, 29.149405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225851, 0.861685, -0.454412,
		0.723749, 0.460650, 0.513799,
		0.652058, -0.212838, -0.727682,
		25.319418, 37.667912, 28.931101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508581, 38.224895, 29.393219>,  <24.862978, 37.816898, 29.440477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508581, 38.224895, 29.393219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405741, 38.104034, 29.026045>,  <25.344036, 38.031517, 28.805740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405741, 38.104034, 29.026045>,  <25.508581, 38.224895, 29.393219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405741, 38.104034, 29.026045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095192, 0.937327, -0.335195,
		0.961685, -0.173559, -0.212224,
		-0.257100, -0.302150, -0.917935,
		25.328609, 38.013390, 28.750664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904055, 38.622814, 28.945259>,  <25.508581, 38.224895, 29.393219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904055, 38.622814, 28.945259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629240, 38.473782, 28.695726>,  <25.464352, 38.384361, 28.546007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629240, 38.473782, 28.695726>,  <25.904055, 38.622814, 28.945259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629240, 38.473782, 28.695726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057533, 0.827946, -0.557848,
		0.724339, -0.419154, -0.547396,
		-0.687039, -0.372578, -0.623829,
		25.423128, 38.362007, 28.508577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160608, 38.565254, 28.280460>,  <25.904055, 38.622814, 28.945259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160608, 38.565254, 28.280460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762783, 38.596287, 28.252666>,  <25.524088, 38.614906, 28.235991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762783, 38.596287, 28.252666>,  <26.160608, 38.565254, 28.280460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762783, 38.596287, 28.252666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100615, 0.887989, -0.448723,
		0.026892, -0.453274, -0.890965,
		-0.994562, 0.077578, -0.069486,
		25.464415, 38.619560, 28.231821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967543, 38.829472, 27.569782>,  <26.160608, 38.565254, 28.280460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967543, 38.829472, 27.569782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659403, 38.919193, 27.808529>,  <25.474520, 38.973026, 27.951777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659403, 38.919193, 27.808529>,  <25.967543, 38.829472, 27.569782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659403, 38.919193, 27.808529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003971, 0.937752, -0.347282,
		-0.637609, -0.265158, -0.723288,
		-0.770350, 0.224303, 0.596866,
		25.428297, 38.986485, 27.987589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711367, 39.476379, 27.145136>,  <25.967543, 38.829472, 27.569782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711367, 39.476379, 27.145136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494385, 39.401672, 27.472761>,  <25.364197, 39.356850, 27.669336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494385, 39.401672, 27.472761>,  <25.711367, 39.476379, 27.145136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494385, 39.401672, 27.472761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389880, 0.919586, -0.048527,
		-0.744136, -0.345660, -0.571648,
		-0.542453, -0.186763, 0.819063,
		25.331648, 39.345642, 27.718479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203749, 40.002945, 27.027637>,  <25.711367, 39.476379, 27.145136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203749, 40.002945, 27.027637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182899, 39.884972, 27.409275>,  <25.170389, 39.814186, 27.638258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182899, 39.884972, 27.409275>,  <25.203749, 40.002945, 27.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182899, 39.884972, 27.409275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420317, 0.873128, 0.246941,
		-0.905879, -0.388151, -0.169477,
		-0.052124, -0.294933, 0.954095,
		25.167263, 39.796494, 27.695503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680574, 40.422112, 27.317623>,  <25.203749, 40.002945, 27.027637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680574, 40.422112, 27.317623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832302, 40.262859, 27.651714>,  <24.923340, 40.167309, 27.852169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832302, 40.262859, 27.651714>,  <24.680574, 40.422112, 27.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832302, 40.262859, 27.651714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085445, 0.883763, 0.460068,
		-0.921311, -0.245879, 0.301212,
		0.379321, -0.398129, 0.835230,
		24.946098, 40.143421, 27.902283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153549, 40.441055, 27.877476>,  <24.680574, 40.422112, 27.317623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153549, 40.441055, 27.877476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532337, 40.461063, 28.004438>,  <24.759609, 40.473068, 28.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532337, 40.461063, 28.004438>,  <24.153549, 40.441055, 27.877476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532337, 40.461063, 28.004438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172678, 0.912266, 0.371421,
		-0.270982, -0.406533, 0.872525,
		0.946969, 0.050017, 0.317407,
		24.816427, 40.476070, 28.099661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.216660, 40.679344, 28.668198>,  <24.153549, 40.441055, 27.877476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.216660, 40.679344, 28.668198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533319, 40.746685, 28.433270>,  <24.723316, 40.787090, 28.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533319, 40.746685, 28.433270>,  <24.216660, 40.679344, 28.668198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533319, 40.746685, 28.433270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118589, 0.985346, 0.122597,
		0.599353, -0.027405, 0.800016,
		0.791652, 0.168352, -0.587320,
		24.770815, 40.797192, 28.257072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733557, 41.111755, 28.959066>,  <24.216660, 40.679344, 28.668198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733557, 41.111755, 28.959066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754902, 41.195267, 28.568464>,  <24.767710, 41.245373, 28.334103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754902, 41.195267, 28.568464>,  <24.733557, 41.111755, 28.959066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754902, 41.195267, 28.568464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018817, 0.977937, 0.208053,
		0.998398, 0.007272, 0.056117,
		0.053366, 0.208776, -0.976507,
		24.770912, 41.257900, 28.275513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072441, 41.750881, 28.819386>,  <24.733557, 41.111755, 28.959066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072441, 41.750881, 28.819386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905321, 41.922825, 28.499220>,  <24.805050, 42.025990, 28.307119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905321, 41.922825, 28.499220>,  <25.072441, 41.750881, 28.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905321, 41.922825, 28.499220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856714, 0.479692, -0.189568,
		0.302465, -0.764928, -0.568682,
		-0.417799, 0.429860, -0.800415,
		24.779982, 42.051785, 28.259096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596756, 41.672710, 28.377977>,  <25.072441, 41.750881, 28.819386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596756, 41.672710, 28.377977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352882, 41.941349, 28.209579>,  <25.206558, 42.102531, 28.108541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352882, 41.941349, 28.209579>,  <25.596756, 41.672710, 28.377977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352882, 41.941349, 28.209579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779019, 0.605755, -0.161833,
		0.146332, -0.426630, -0.892510,
		-0.609685, 0.671601, -0.420995,
		25.169977, 42.142830, 28.083281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966129, 40.975212, 28.325184>,  <25.596756, 41.672710, 28.377977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966129, 40.975212, 28.325184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576313, 40.904400, 28.380217>,  <25.342422, 40.861912, 28.413237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576313, 40.904400, 28.380217>,  <25.966129, 40.975212, 28.325184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576313, 40.904400, 28.380217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136399, -0.955144, -0.262860,
		0.177945, -0.237402, 0.954974,
		-0.974541, -0.177032, 0.137582,
		25.283951, 40.851292, 28.421492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993282, 40.415897, 28.602592>,  <25.966129, 40.975212, 28.325184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993282, 40.415897, 28.602592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621134, 40.416737, 28.455946>,  <25.397844, 40.417240, 28.367958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621134, 40.416737, 28.455946>,  <25.993282, 40.415897, 28.602592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621134, 40.416737, 28.455946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107985, -0.954056, -0.279492,
		-0.350358, -0.299620, 0.887399,
		-0.930370, 0.002097, -0.366616,
		25.342022, 40.417366, 28.345961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618099, 39.886715, 29.013144>,  <25.993282, 40.415897, 28.602592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618099, 39.886715, 29.013144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441738, 39.951416, 28.660000>,  <25.335920, 39.990238, 28.448114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441738, 39.951416, 28.660000>,  <25.618099, 39.886715, 29.013144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441738, 39.951416, 28.660000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007243, -0.982954, -0.183711,
		-0.897525, -0.087393, 0.432217,
		-0.440904, 0.161755, -0.882858,
		25.309467, 39.999943, 28.395142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075073, 39.482437, 28.971998>,  <25.618099, 39.886715, 29.013144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075073, 39.482437, 28.971998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145203, 39.533642, 28.581537>,  <25.187281, 39.564365, 28.347261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145203, 39.533642, 28.581537>,  <25.075073, 39.482437, 28.971998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145203, 39.533642, 28.581537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368960, -0.910705, -0.185700,
		-0.912759, 0.392719, -0.112437,
		0.175325, 0.128014, -0.976152,
		25.197800, 39.572044, 28.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447672, 39.383411, 28.647825>,  <25.075073, 39.482437, 28.971998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447672, 39.383411, 28.647825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729080, 39.235737, 28.404922>,  <24.897924, 39.147133, 28.259180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729080, 39.235737, 28.404922>,  <24.447672, 39.383411, 28.647825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729080, 39.235737, 28.404922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296976, -0.929018, 0.220749,
		-0.645652, 0.025041, -0.763221,
		0.703519, -0.369186, -0.607259,
		24.940136, 39.124981, 28.222744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179562, 38.818932, 28.217571>,  <24.447672, 39.383411, 28.647825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179562, 38.818932, 28.217571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575344, 38.763138, 28.233171>,  <24.812813, 38.729660, 28.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575344, 38.763138, 28.233171>,  <24.179562, 38.818932, 28.217571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.575344, 38.763138, 28.233171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144757, -0.961170, 0.234941,
		0.004714, -0.238109, -0.971227,
		0.989456, -0.139484, 0.038999,
		24.872181, 38.721294, 28.244871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396925, 38.221455, 27.738688>,  <24.179562, 38.818932, 28.217571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396925, 38.221455, 27.738688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665951, 38.275021, 28.029816>,  <24.827366, 38.307159, 28.204493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665951, 38.275021, 28.029816>,  <24.396925, 38.221455, 27.738688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665951, 38.275021, 28.029816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038615, -0.975801, 0.215226,
		0.739032, -0.172858, -0.651116,
		0.672563, 0.133916, 0.727823,
		24.867720, 38.315197, 28.248163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076965, 38.466530, 27.615238>,  <24.396925, 38.221455, 27.738688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076965, 38.466530, 27.615238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076851, 38.731522, 27.315605>,  <25.076782, 38.890514, 27.135824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076851, 38.731522, 27.315605>,  <25.076965, 38.466530, 27.615238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076851, 38.731522, 27.315605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666435, -0.558615, -0.493774,
		-0.745563, 0.499075, 0.441656,
		-0.000285, 0.662475, -0.749084,
		25.076765, 38.930264, 27.090879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823654, 37.655704, 27.616341>,  <25.076965, 38.466530, 27.615238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823654, 37.655704, 27.616341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963524, 37.754719, 27.977772>,  <25.047445, 37.814129, 28.194630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963524, 37.754719, 27.977772>,  <24.823654, 37.655704, 27.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963524, 37.754719, 27.977772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080927, -0.968839, 0.234096,
		0.933369, -0.008734, -0.358813,
		0.349676, 0.247536, 0.903578,
		25.068426, 37.828979, 28.248844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611536, 37.280743, 27.584215>,  <24.823654, 37.655704, 27.616341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611536, 37.280743, 27.584215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444864, 37.177845, 27.235456>,  <25.344860, 37.116108, 27.026201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444864, 37.177845, 27.235456>,  <25.611536, 37.280743, 27.584215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444864, 37.177845, 27.235456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516907, 0.721930, -0.460027,
		0.747787, -0.642373, -0.167841,
		-0.416679, -0.257244, -0.871897,
		25.319860, 37.100674, 26.973888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296099, 36.935402, 27.712460>,  <25.611536, 37.280743, 27.584215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296099, 36.935402, 27.712460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363766, 36.554512, 27.610758>,  <26.404366, 36.325977, 27.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363766, 36.554512, 27.610758>,  <26.296099, 36.935402, 27.712460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363766, 36.554512, 27.610758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949480, 0.226640, -0.217075,
		0.264330, -0.204690, 0.942461,
		0.169167, -0.952227, -0.254256,
		26.414516, 36.268845, 27.534481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803600, 36.467587, 28.190575>,  <26.296099, 36.935402, 27.712460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803600, 36.467587, 28.190575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799871, 36.402157, 27.795980>,  <26.797634, 36.362900, 27.559223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799871, 36.402157, 27.795980>,  <26.803600, 36.467587, 28.190575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799871, 36.402157, 27.795980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906667, 0.414698, -0.077332,
		0.421744, -0.895136, 0.144444,
		-0.009322, -0.163577, -0.986487,
		26.797075, 36.353085, 27.500034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429409, 36.162125, 27.975275>,  <26.803600, 36.467587, 28.190575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429409, 36.162125, 27.975275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299688, 36.350353, 27.647032>,  <27.221857, 36.463291, 27.450087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299688, 36.350353, 27.647032>,  <27.429409, 36.162125, 27.975275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299688, 36.350353, 27.647032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886029, 0.454956, -0.089265,
		0.331335, -0.756030, -0.564478,
		-0.324300, 0.470567, -0.820607,
		27.202398, 36.491524, 27.400850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912136, 36.102516, 27.367598>,  <27.429409, 36.162125, 27.975275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912136, 36.102516, 27.367598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692017, 36.434498, 27.331068>,  <27.559944, 36.633686, 27.309151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692017, 36.434498, 27.331068>,  <27.912136, 36.102516, 27.367598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692017, 36.434498, 27.331068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834651, 0.549800, -0.032817,
		0.022973, -0.094283, -0.995280,
		-0.550299, 0.829958, -0.091324,
		27.526926, 36.683487, 27.303671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146544, 36.499893, 26.662922>,  <27.912136, 36.102516, 27.367598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146544, 36.499893, 26.662922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990210, 36.732090, 26.948658>,  <27.896408, 36.871407, 27.120100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990210, 36.732090, 26.948658>,  <28.146544, 36.499893, 26.662922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990210, 36.732090, 26.948658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751109, 0.649723, -0.117024,
		-0.532054, 0.490810, -0.689945,
		-0.390837, 0.580487, 0.714340,
		27.872959, 36.906235, 27.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950781, 37.172344, 26.435902>,  <28.146544, 36.499893, 26.662922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950781, 37.172344, 26.435902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034122, 37.183239, 26.826971>,  <28.084127, 37.189774, 27.061613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034122, 37.183239, 26.826971>,  <27.950781, 37.172344, 26.435902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034122, 37.183239, 26.826971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735546, 0.654487, -0.174983,
		-0.644641, 0.755583, 0.116331,
		0.208352, 0.027234, 0.977675,
		28.096628, 37.191410, 27.120274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028877, 37.840099, 26.692326>,  <27.950781, 37.172344, 26.435902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028877, 37.840099, 26.692326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259716, 37.625534, 26.938650>,  <28.398220, 37.496796, 27.086445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259716, 37.625534, 26.938650>,  <28.028877, 37.840099, 26.692326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259716, 37.625534, 26.938650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725665, 0.682735, -0.085339,
		-0.374658, 0.496121, 0.783259,
		0.577097, -0.536411, 0.615810,
		28.432846, 37.464611, 27.123394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241594, 38.277988, 27.267994>,  <28.028877, 37.840099, 26.692326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241594, 38.277988, 27.267994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494204, 37.977203, 27.192387>,  <28.645769, 37.796734, 27.147022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494204, 37.977203, 27.192387>,  <28.241594, 38.277988, 27.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494204, 37.977203, 27.192387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747026, 0.655389, -0.111436,
		0.207675, -0.070825, 0.975631,
		0.631525, -0.751964, -0.189016,
		28.683661, 37.751614, 27.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906193, 38.107117, 27.695415>,  <28.241594, 38.277988, 27.267994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906193, 38.107117, 27.695415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986752, 37.994160, 27.320248>,  <29.035088, 37.926384, 27.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986752, 37.994160, 27.320248>,  <28.906193, 38.107117, 27.695415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986752, 37.994160, 27.320248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915299, 0.395240, 0.077540,
		0.348806, -0.874093, 0.338076,
		0.201399, -0.282394, -0.937919,
		29.047171, 37.909443, 27.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647238, 37.695686, 27.557177>,  <28.906193, 38.107117, 27.695415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647238, 37.695686, 27.557177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509653, 37.915779, 27.252827>,  <29.427101, 38.047836, 27.070217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509653, 37.915779, 27.252827>,  <29.647238, 37.695686, 27.557177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509653, 37.915779, 27.252827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884840, 0.461119, -0.066540,
		0.314241, -0.696140, -0.645478,
		-0.343963, 0.550235, -0.760875,
		29.406464, 38.080849, 27.024565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138178, 37.571148, 27.073669>,  <29.647238, 37.695686, 27.557177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138178, 37.571148, 27.073669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947969, 37.907513, 26.970324>,  <29.833845, 38.109329, 26.908316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947969, 37.907513, 26.970324>,  <30.138178, 37.571148, 27.073669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947969, 37.907513, 26.970324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878684, 0.468160, -0.093487,
		0.042343, -0.271478, -0.961513,
		-0.475521, 0.840908, -0.258367,
		29.805313, 38.159786, 26.892813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552822, 38.196548, 27.532219>,  <30.138178, 37.571148, 27.073669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552822, 38.196548, 27.532219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688618, 37.873180, 27.724554>,  <30.770096, 37.679161, 27.839954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688618, 37.873180, 27.724554>,  <30.552822, 38.196548, 27.532219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688618, 37.873180, 27.724554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211873, -0.432336, -0.876468,
		0.916437, 0.399428, 0.024509,
		0.339490, -0.808420, 0.480837,
		30.790464, 37.630653, 27.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240971, 38.131638, 27.325476>,  <30.552822, 38.196548, 27.532219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240971, 38.131638, 27.325476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139723, 37.778763, 27.484310>,  <31.078974, 37.567039, 27.579611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139723, 37.778763, 27.484310>,  <31.240971, 38.131638, 27.325476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139723, 37.778763, 27.484310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133345, -0.438348, -0.888859,
		0.958202, -0.172036, 0.228589,
		-0.253117, -0.882187, 0.397086,
		31.063787, 37.514107, 27.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730804, 37.549194, 27.076584>,  <31.240971, 38.131638, 27.325476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730804, 37.549194, 27.076584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360548, 37.431549, 27.171820>,  <31.138395, 37.360962, 27.228962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360548, 37.431549, 27.171820>,  <31.730804, 37.549194, 27.076584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360548, 37.431549, 27.171820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063474, -0.499601, -0.863927,
		0.373045, -0.814798, 0.443782,
		-0.925640, -0.294115, 0.238092,
		31.082855, 37.343315, 27.243248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655092, 36.831612, 26.941872>,  <31.730804, 37.549194, 27.076584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655092, 36.831612, 26.941872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337475, 37.073563, 26.917789>,  <31.146904, 37.218731, 26.903341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337475, 37.073563, 26.917789>,  <31.655092, 36.831612, 26.941872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337475, 37.073563, 26.917789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098251, -0.225452, -0.969288,
		-0.599871, -0.763739, 0.238448,
		-0.794041, 0.604876, -0.060204,
		31.099262, 37.255024, 26.899729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945642, 36.499332, 26.617249>,  <31.655092, 36.831612, 26.941872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945642, 36.499332, 26.617249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957996, 36.894810, 26.558563>,  <30.965408, 37.132095, 26.523352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957996, 36.894810, 26.558563>,  <30.945642, 36.499332, 26.617249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957996, 36.894810, 26.558563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056691, -0.144814, -0.987833,
		-0.997914, 0.038828, 0.051578,
		0.030887, 0.988697, -0.146713,
		30.967262, 37.191418, 26.514549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338470, 36.696690, 26.189526>,  <30.945642, 36.499332, 26.617249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338470, 36.696690, 26.189526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588526, 37.006905, 26.154318>,  <30.738560, 37.193031, 26.133194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588526, 37.006905, 26.154318>,  <30.338470, 36.696690, 26.189526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588526, 37.006905, 26.154318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082950, -0.046119, -0.995486,
		-0.776092, 0.629620, 0.035500,
		0.625140, 0.775533, -0.088020,
		30.776068, 37.239563, 26.127913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999809, 37.046162, 25.651228>,  <30.338470, 36.696690, 26.189526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999809, 37.046162, 25.651228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368971, 37.199745, 25.662729>,  <30.590467, 37.291897, 25.669630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368971, 37.199745, 25.662729>,  <29.999809, 37.046162, 25.651228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368971, 37.199745, 25.662729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008019, 0.055499, -0.998426,
		-0.384950, 0.921681, 0.048142,
		0.922902, 0.383959, 0.028755,
		30.645842, 37.314934, 25.671356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999441, 37.632160, 25.191153>,  <29.999809, 37.046162, 25.651228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999441, 37.632160, 25.191153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388601, 37.547733, 25.228918>,  <30.622097, 37.497078, 25.251577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388601, 37.547733, 25.228918>,  <29.999441, 37.632160, 25.191153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388601, 37.547733, 25.228918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143965, 0.233430, -0.961657,
		0.180935, 0.949190, 0.257490,
		0.972901, -0.211067, 0.094414,
		30.680471, 37.484413, 25.257242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385529, 38.219727, 25.033421>,  <29.999441, 37.632160, 25.191153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385529, 38.219727, 25.033421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617840, 37.900974, 24.966877>,  <30.757227, 37.709724, 24.926950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617840, 37.900974, 24.966877>,  <30.385529, 38.219727, 25.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617840, 37.900974, 24.966877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089026, 0.140958, -0.986005,
		0.809178, 0.587462, 0.010923,
		0.580780, -0.796881, -0.166359,
		30.792074, 37.661911, 24.916969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618073, 38.424160, 24.370356>,  <30.385529, 38.219727, 25.033421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618073, 38.424160, 24.370356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789034, 38.063423, 24.395681>,  <30.891611, 37.846981, 24.410877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789034, 38.063423, 24.395681>,  <30.618073, 38.424160, 24.370356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789034, 38.063423, 24.395681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266458, 0.058739, -0.962055,
		0.863901, 0.428059, 0.265408,
		0.427406, -0.901840, 0.063315,
		30.917255, 37.792870, 24.414677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345762, 38.451988, 24.268938>,  <30.618073, 38.424160, 24.370356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345762, 38.451988, 24.268938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232550, 38.080067, 24.174820>,  <31.164621, 37.856915, 24.118349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232550, 38.080067, 24.174820>,  <31.345762, 38.451988, 24.268938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232550, 38.080067, 24.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528996, 0.053302, -0.846949,
		0.800035, -0.364186, 0.476774,
		-0.283034, -0.929800, -0.235297,
		31.147640, 37.801128, 24.104231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921030, 38.138386, 23.951101>,  <31.345762, 38.451988, 24.268938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921030, 38.138386, 23.951101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605274, 37.910110, 23.860609>,  <31.415821, 37.773148, 23.806314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605274, 37.910110, 23.860609>,  <31.921030, 38.138386, 23.951101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605274, 37.910110, 23.860609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396097, -0.191944, -0.897922,
		0.469009, -0.798420, 0.377566,
		-0.789390, -0.570687, -0.226229,
		31.368458, 37.738903, 23.792740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278118, 37.606407, 23.511209>,  <31.921030, 38.138386, 23.951101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278118, 37.606407, 23.511209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888409, 37.558064, 23.435118>,  <31.654583, 37.529057, 23.389463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888409, 37.558064, 23.435118>,  <32.278118, 37.606407, 23.511209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888409, 37.558064, 23.435118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193935, -0.019589, -0.980819,
		0.114811, -0.992477, 0.042523,
		-0.974273, -0.120856, -0.190227,
		31.596127, 37.521809, 23.378050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233204, 37.194202, 22.914913>,  <32.278118, 37.606407, 23.511209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233204, 37.194202, 22.914913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882164, 37.384457, 22.938875>,  <31.671539, 37.498608, 22.953253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882164, 37.384457, 22.938875>,  <32.233204, 37.194202, 22.914913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882164, 37.384457, 22.938875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064227, 0.007175, -0.997910,
		-0.475071, -0.879613, 0.024252,
		-0.877601, 0.475636, 0.059903,
		31.618883, 37.527145, 22.956846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708263, 36.775856, 22.602095>,  <32.233204, 37.194202, 22.914913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708263, 36.775856, 22.602095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601513, 37.161343, 22.603979>,  <31.537462, 37.392635, 22.605110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601513, 37.161343, 22.603979>,  <31.708263, 36.775856, 22.602095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601513, 37.161343, 22.603979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250989, -0.064782, -0.965820,
		-0.930474, -0.258937, 0.259171,
		-0.266876, 0.963719, 0.004712,
		31.521450, 37.450459, 22.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180328, 36.788651, 22.130627>,  <31.708263, 36.775856, 22.602095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180328, 36.788651, 22.130627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269615, 37.177284, 22.162104>,  <31.323187, 37.410465, 22.180990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269615, 37.177284, 22.162104>,  <31.180328, 36.788651, 22.130627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269615, 37.177284, 22.162104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107163, 0.104699, -0.988713,
		-0.968860, 0.212264, 0.127488,
		0.223216, 0.971587, 0.078692,
		31.336580, 37.468761, 22.185711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766508, 37.119831, 21.628019>,  <31.180328, 36.788651, 22.130627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766508, 37.119831, 21.628019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055378, 37.380749, 21.720091>,  <31.228701, 37.537300, 21.775333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055378, 37.380749, 21.720091>,  <30.766508, 37.119831, 21.628019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055378, 37.380749, 21.720091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040585, 0.292239, -0.955484,
		-0.690520, 0.699368, 0.184574,
		0.722174, 0.652290, 0.230181,
		31.272030, 37.576435, 21.789145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500055, 37.698177, 21.430840>,  <30.766508, 37.119831, 21.628019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500055, 37.698177, 21.430840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896610, 37.748932, 21.443830>,  <31.134542, 37.779385, 21.451624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896610, 37.748932, 21.443830>,  <30.500055, 37.698177, 21.430840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896610, 37.748932, 21.443830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016792, 0.369041, -0.929262,
		-0.129895, 0.920711, 0.367992,
		0.991386, 0.126885, 0.032476,
		31.194025, 37.786999, 21.453573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697945, 38.456528, 21.157644>,  <30.500055, 37.698177, 21.430840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697945, 38.456528, 21.157644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038338, 38.248676, 21.127138>,  <31.242573, 38.123966, 21.108835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038338, 38.248676, 21.127138>,  <30.697945, 38.456528, 21.157644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038338, 38.248676, 21.127138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165668, 0.403388, -0.899907,
		0.498382, 0.753169, 0.429361,
		0.850982, -0.519629, -0.076265,
		31.293633, 38.092789, 21.104258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257931, 38.917755, 20.886541>,  <30.697945, 38.456528, 21.157644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257931, 38.917755, 20.886541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412083, 38.556183, 20.812361>,  <31.504574, 38.339241, 20.767853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412083, 38.556183, 20.812361>,  <31.257931, 38.917755, 20.886541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412083, 38.556183, 20.812361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234466, 0.290306, -0.927765,
		0.892472, 0.314061, 0.323820,
		0.385382, -0.903929, -0.185454,
		31.527697, 38.285004, 20.756725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923243, 39.024979, 20.587679>,  <31.257931, 38.917755, 20.886541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923243, 39.024979, 20.587679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830601, 38.651184, 20.479532>,  <31.775017, 38.426907, 20.414644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830601, 38.651184, 20.479532>,  <31.923243, 39.024979, 20.587679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830601, 38.651184, 20.479532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488693, 0.128546, -0.862934,
		0.841153, -0.331983, 0.426905,
		-0.231603, -0.934486, -0.270364,
		31.761120, 38.370838, 20.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481457, 38.804344, 20.158834>,  <31.923243, 39.024979, 20.587679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481457, 38.804344, 20.158834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182938, 38.554722, 20.066225>,  <32.003826, 38.404949, 20.010660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182938, 38.554722, 20.066225>,  <32.481457, 38.804344, 20.158834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182938, 38.554722, 20.066225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236917, 0.076004, -0.968552,
		0.622026, -0.777676, 0.091128,
		-0.746294, -0.624054, -0.231521,
		31.959049, 38.367504, 19.996769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751266, 38.297394, 19.619028>,  <32.481457, 38.804344, 20.158834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751266, 38.297394, 19.619028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353218, 38.283337, 19.582159>,  <32.114388, 38.274902, 19.560038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353218, 38.283337, 19.582159>,  <32.751266, 38.297394, 19.619028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353218, 38.283337, 19.582159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090340, 0.050574, -0.994626,
		0.039605, -0.998102, -0.047153,
		-0.995123, -0.035133, -0.092172,
		32.054680, 38.272793, 19.554508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589241, 37.822697, 18.994907>,  <32.751266, 38.297394, 19.619028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589241, 37.822697, 18.994907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260136, 38.043873, 19.047544>,  <32.062672, 38.176579, 19.079126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260136, 38.043873, 19.047544>,  <32.589241, 37.822697, 18.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260136, 38.043873, 19.047544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075842, 0.122653, -0.989547,
		-0.563300, -0.824145, -0.058978,
		-0.822764, 0.552939, 0.131595,
		32.013306, 38.209755, 19.087023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899200, 37.538914, 18.644234>,  <32.589241, 37.822697, 18.994907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899200, 37.538914, 18.644234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874559, 37.936947, 18.675280>,  <31.859774, 38.175766, 18.693907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874559, 37.936947, 18.675280>,  <31.899200, 37.538914, 18.644234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874559, 37.936947, 18.675280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058501, 0.074029, -0.995539,
		-0.996385, -0.065870, 0.053652,
		-0.061605, 0.995078, 0.077614,
		31.856077, 38.235470, 18.698565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586155, 37.657799, 18.107489>,  <31.899200, 37.538914, 18.644234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586155, 37.657799, 18.107489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715548, 38.023636, 18.204556>,  <31.793184, 38.243137, 18.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715548, 38.023636, 18.204556>,  <31.586155, 37.657799, 18.107489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715548, 38.023636, 18.204556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107656, 0.219216, -0.969719,
		-0.940090, 0.339812, -0.027548,
		0.323483, 0.914588, 0.242665,
		31.812593, 38.298012, 18.277355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434830, 38.087440, 17.549414>,  <31.586155, 37.657799, 18.107489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434830, 38.087440, 17.549414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677971, 38.336998, 17.745892>,  <31.823854, 38.486732, 17.863777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677971, 38.336998, 17.745892>,  <31.434830, 38.087440, 17.549414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677971, 38.336998, 17.745892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284038, 0.406822, -0.868227,
		-0.741511, 0.667271, 0.070078,
		0.607852, 0.623895, 0.491193,
		31.860327, 38.524166, 17.893250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135412, 38.749641, 17.337740>,  <31.434830, 38.087440, 17.549414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135412, 38.749641, 17.337740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511993, 38.815186, 17.455601>,  <31.737942, 38.854511, 17.526318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511993, 38.815186, 17.455601>,  <31.135412, 38.749641, 17.337740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511993, 38.815186, 17.455601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247917, 0.255825, -0.934393,
		-0.228486, 0.952735, 0.200224,
		0.941452, 0.163857, 0.294652,
		31.794430, 38.864342, 17.543997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353672, 39.428165, 17.004137>,  <31.135412, 38.749641, 17.337740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353672, 39.428165, 17.004137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692842, 39.253330, 17.124117>,  <31.896345, 39.148430, 17.196104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692842, 39.253330, 17.124117>,  <31.353672, 39.428165, 17.004137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692842, 39.253330, 17.124117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455135, 0.310160, -0.834658,
		0.271789, 0.844247, 0.461929,
		0.847928, -0.437091, 0.299948,
		31.947222, 39.122204, 17.214102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760883, 39.977684, 17.066833>,  <31.353672, 39.428165, 17.004137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760883, 39.977684, 17.066833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975052, 39.644337, 17.011957>,  <32.103554, 39.444328, 16.979031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975052, 39.644337, 17.011957>,  <31.760883, 39.977684, 17.066833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975052, 39.644337, 17.011957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275129, 0.325677, -0.904565,
		0.798517, 0.446577, 0.403658,
		0.535420, -0.833369, -0.137192,
		32.135677, 39.394325, 16.970800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436836, 40.143307, 16.902117>,  <31.760883, 39.977684, 17.066833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436836, 40.143307, 16.902117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400883, 39.770786, 16.760923>,  <32.379311, 39.547276, 16.676207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400883, 39.770786, 16.760923>,  <32.436836, 40.143307, 16.902117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400883, 39.770786, 16.760923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432289, 0.282810, -0.856239,
		0.897244, -0.229556, 0.377170,
		-0.089887, -0.931302, -0.352984,
		32.373917, 39.491394, 16.655027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246933, 39.910191, 16.766449>,  <32.436836, 40.143307, 16.902117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246933, 39.910191, 16.766449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970303, 39.705627, 16.562418>,  <32.804325, 39.582890, 16.439999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970303, 39.705627, 16.562418>,  <33.246933, 39.910191, 16.766449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970303, 39.705627, 16.562418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292987, 0.446861, -0.845266,
		0.660212, -0.734013, -0.159202,
		-0.691577, -0.511410, -0.510079,
		32.762829, 39.552204, 16.409393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590099, 39.624046, 16.155685>,  <33.246933, 39.910191, 16.766449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590099, 39.624046, 16.155685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200363, 39.596741, 16.069901>,  <32.966522, 39.580357, 16.018429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200363, 39.596741, 16.069901>,  <33.590099, 39.624046, 16.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200363, 39.596741, 16.069901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183997, 0.307158, -0.933702,
		0.129613, -0.949207, -0.286717,
		-0.974343, -0.068265, -0.214463,
		32.908062, 39.576260, 16.005562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731411, 39.423405, 15.558785>,  <33.590099, 39.624046, 16.155685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731411, 39.423405, 15.558785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355053, 39.556969, 15.581509>,  <33.129238, 39.637108, 15.595142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355053, 39.556969, 15.581509>,  <33.731411, 39.423405, 15.558785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355053, 39.556969, 15.581509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059644, 0.328435, -0.942641,
		-0.333415, -0.883535, -0.328938,
		-0.940892, 0.333910, 0.056808,
		33.072784, 39.657143, 15.598551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455997, 39.129887, 14.913199>,  <33.731411, 39.423405, 15.558785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455997, 39.129887, 14.913199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220608, 39.429672, 15.034528>,  <33.079372, 39.609543, 15.107325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220608, 39.429672, 15.034528>,  <33.455997, 39.129887, 14.913199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220608, 39.429672, 15.034528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049052, 0.407562, -0.911859,
		-0.807026, -0.521728, -0.276603,
		-0.588475, 0.749462, 0.303321,
		33.044064, 39.654510, 15.125525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065151, 39.336666, 14.317636>,  <33.455997, 39.129887, 14.913199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065151, 39.336666, 14.317636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088997, 39.650539, 14.564445>,  <33.103306, 39.838863, 14.712530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088997, 39.650539, 14.564445>,  <33.065151, 39.336666, 14.317636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088997, 39.650539, 14.564445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136532, 0.605904, -0.783735,
		-0.988840, 0.130964, -0.071015,
		0.059613, 0.784684, 0.617023,
		33.106880, 39.885944, 14.749552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720055, 39.841785, 13.950826>,  <33.065151, 39.336666, 14.317636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720055, 39.841785, 13.950826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931812, 40.044643, 14.222867>,  <33.058868, 40.166359, 14.386092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931812, 40.044643, 14.222867>,  <32.720055, 39.841785, 13.950826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931812, 40.044643, 14.222867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214976, 0.695300, -0.685816,
		-0.820684, 0.509276, 0.259067,
		0.529398, 0.507145, 0.680104,
		33.090633, 40.196789, 14.426898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553818, 40.451752, 13.776528>,  <32.720055, 39.841785, 13.950826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553818, 40.451752, 13.776528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879868, 40.512112, 14.000243>,  <33.075497, 40.548328, 14.134472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879868, 40.512112, 14.000243>,  <32.553818, 40.451752, 13.776528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879868, 40.512112, 14.000243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262264, 0.764732, -0.588560,
		-0.516516, 0.626431, 0.583777,
		0.815125, 0.150897, 0.559287,
		33.124405, 40.557381, 14.168029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666866, 41.122303, 13.583883>,  <32.553818, 40.451752, 13.776528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666866, 41.122303, 13.583883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004330, 41.031704, 13.778587>,  <33.206810, 40.977345, 13.895410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004330, 41.031704, 13.778587>,  <32.666866, 41.122303, 13.583883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004330, 41.031704, 13.778587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437173, 0.816099, -0.377971,
		-0.311636, 0.531677, 0.787529,
		0.843661, -0.226497, 0.486761,
		33.257427, 40.963757, 13.924616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842495, 41.730869, 14.008076>,  <32.666866, 41.122303, 13.583883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842495, 41.730869, 14.008076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166603, 41.516884, 13.912340>,  <33.361069, 41.388493, 13.854898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166603, 41.516884, 13.912340>,  <32.842495, 41.730869, 14.008076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166603, 41.516884, 13.912340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410846, 0.809726, -0.418987,
		0.417941, 0.241159, 0.875881,
		0.810266, -0.534964, -0.239339,
		33.409683, 41.356396, 13.840539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458286, 42.149448, 14.229369>,  <32.842495, 41.730869, 14.008076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458286, 42.149448, 14.229369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603085, 41.889660, 13.961891>,  <33.689964, 41.733788, 13.801405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603085, 41.889660, 13.961891>,  <33.458286, 42.149448, 14.229369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603085, 41.889660, 13.961891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537871, 0.731410, -0.419207,
		0.761351, -0.207921, 0.614096,
		0.361995, -0.649468, -0.668694,
		33.711681, 41.694820, 13.761283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096706, 42.341415, 14.234000>,  <33.458286, 42.149448, 14.229369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096706, 42.341415, 14.234000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030872, 42.157356, 13.885019>,  <33.991371, 42.046921, 13.675631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030872, 42.157356, 13.885019>,  <34.096706, 42.341415, 14.234000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030872, 42.157356, 13.885019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565500, 0.680694, -0.465689,
		0.808160, -0.570016, 0.148186,
		-0.164581, -0.460151, -0.872453,
		33.981499, 42.019310, 13.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709641, 42.186913, 13.895744>,  <34.096706, 42.341415, 14.234000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709641, 42.186913, 13.895744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446568, 42.211956, 13.595469>,  <34.288723, 42.226982, 13.415304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446568, 42.211956, 13.595469>,  <34.709641, 42.186913, 13.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446568, 42.211956, 13.595469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686526, 0.459992, -0.563107,
		0.310053, -0.885713, -0.345513,
		-0.657685, 0.062610, -0.750687,
		34.249264, 42.230740, 13.370263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041485, 42.118195, 13.254165>,  <34.709641, 42.186913, 13.895744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041485, 42.118195, 13.254165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692600, 42.227997, 13.092227>,  <34.483269, 42.293877, 12.995064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692600, 42.227997, 13.092227>,  <35.041485, 42.118195, 13.254165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692600, 42.227997, 13.092227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488929, 0.513325, -0.705299,
		0.014208, -0.813107, -0.581941,
		-0.872208, 0.274507, -0.404845,
		34.430939, 42.310349, 12.970774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061680, 41.961395, 12.567086>,  <35.041485, 42.118195, 13.254165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061680, 41.961395, 12.567086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793774, 42.257454, 12.591045>,  <34.633030, 42.435089, 12.605421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793774, 42.257454, 12.591045>,  <35.061680, 41.961395, 12.567086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793774, 42.257454, 12.591045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414000, 0.439156, -0.797337,
		-0.616454, -0.509232, -0.600555,
		-0.669767, 0.740151, 0.059898,
		34.592842, 42.479500, 12.609015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819942, 42.076527, 11.843995>,  <35.061680, 41.961395, 12.567086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819942, 42.076527, 11.843995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696278, 42.403351, 12.038655>,  <34.622078, 42.599445, 12.155452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696278, 42.403351, 12.038655>,  <34.819942, 42.076527, 11.843995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696278, 42.403351, 12.038655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237753, 0.561877, -0.792318,
		-0.920810, -0.129255, -0.367972,
		-0.309165, 0.817061, 0.486651,
		34.603527, 42.648468, 12.184650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568150, 42.513523, 11.405348>,  <34.819942, 42.076527, 11.843995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568150, 42.513523, 11.405348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624763, 42.774761, 11.702919>,  <34.658730, 42.931503, 11.881462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624763, 42.774761, 11.702919>,  <34.568150, 42.513523, 11.405348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624763, 42.774761, 11.702919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226513, 0.710191, -0.666574,
		-0.963670, 0.262851, -0.047421,
		0.141532, 0.653099, 0.743929,
		34.667225, 42.970692, 11.926098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218605, 43.170319, 11.219983>,  <34.568150, 42.513523, 11.405348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218605, 43.170319, 11.219983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510841, 43.238937, 11.484348>,  <34.686184, 43.280109, 11.642967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510841, 43.238937, 11.484348>,  <34.218605, 43.170319, 11.219983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510841, 43.238937, 11.484348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433281, 0.631620, -0.642903,
		-0.527732, 0.756061, 0.387131,
		0.730593, 0.171544, 0.660913,
		34.730019, 43.290401, 11.682622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275551, 43.974693, 11.358479>,  <34.218605, 43.170319, 11.219983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275551, 43.974693, 11.358479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604946, 43.749950, 11.389964>,  <34.802582, 43.615105, 11.408854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604946, 43.749950, 11.389964>,  <34.275551, 43.974693, 11.358479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604946, 43.749950, 11.389964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382245, 0.446935, -0.808788,
		0.419241, 0.696111, 0.582809,
		0.823484, -0.561853, 0.078712,
		34.851990, 43.581394, 11.413578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775074, 44.516773, 11.255794>,  <34.275551, 43.974693, 11.358479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775074, 44.516773, 11.255794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910919, 44.151199, 11.166906>,  <34.992428, 43.931854, 11.113574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910919, 44.151199, 11.166906>,  <34.775074, 44.516773, 11.255794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910919, 44.151199, 11.166906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138311, 0.282220, -0.949327,
		0.930339, 0.291672, 0.222254,
		0.339616, -0.913936, -0.222219,
		35.012806, 43.877018, 11.100241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514488, 44.403519, 11.045617>,  <34.775074, 44.516773, 11.255794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514488, 44.403519, 11.045617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270866, 44.143818, 10.863400>,  <35.124695, 43.987995, 10.754069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270866, 44.143818, 10.863400>,  <35.514488, 44.403519, 11.045617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270866, 44.143818, 10.863400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398010, 0.246611, -0.883613,
		0.686033, -0.719478, 0.108210,
		-0.609054, -0.649256, -0.455543,
		35.088150, 43.949039, 10.726737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068787, 44.875687, 11.322310>,  <35.514488, 44.403519, 11.045617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068787, 44.875687, 11.322310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323563, 44.746872, 11.602481>,  <36.476429, 44.669582, 11.770583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323563, 44.746872, 11.602481>,  <36.068787, 44.875687, 11.322310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323563, 44.746872, 11.602481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707999, 0.115135, 0.696765,
		-0.305029, -0.939700, -0.154668,
		0.636942, -0.322038, 0.700426,
		36.514645, 44.650261, 11.812609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861866, 44.241085, 11.673893>,  <36.068787, 44.875687, 11.322310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861866, 44.241085, 11.673893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053970, 44.546776, 11.846086>,  <36.169231, 44.730190, 11.949401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053970, 44.546776, 11.846086>,  <35.861866, 44.241085, 11.673893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053970, 44.546776, 11.846086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782691, 0.151863, 0.603599,
		0.395910, -0.626819, 0.671084,
		0.480260, 0.764223, 0.430482,
		36.198048, 44.776043, 11.975230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023342, 44.061359, 12.340933>,  <35.861866, 44.241085, 11.673893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023342, 44.061359, 12.340933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948418, 44.449471, 12.279642>,  <35.903461, 44.682335, 12.242867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948418, 44.449471, 12.279642>,  <36.023342, 44.061359, 12.340933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948418, 44.449471, 12.279642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854122, -0.083834, 0.513271,
		0.485169, 0.227017, 0.844438,
		-0.187314, 0.970276, -0.153227,
		35.892223, 44.740555, 12.233674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728233, 44.466084, 13.008101>,  <36.023342, 44.061359, 12.340933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728233, 44.466084, 13.008101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587574, 44.616344, 12.665117>,  <35.503178, 44.706501, 12.459328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587574, 44.616344, 12.665117>,  <35.728233, 44.466084, 13.008101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587574, 44.616344, 12.665117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934984, -0.186302, 0.301822,
		-0.046367, 0.907843, 0.416739,
		-0.351646, 0.375650, -0.857457,
		35.482079, 44.729038, 12.407880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356407, 45.062786, 13.251637>,  <35.728233, 44.466084, 13.008101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356407, 45.062786, 13.251637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174240, 44.834877, 12.978007>,  <35.064938, 44.698132, 12.813830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174240, 44.834877, 12.978007>,  <35.356407, 45.062786, 13.251637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174240, 44.834877, 12.978007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771731, -0.130444, 0.622427,
		-0.443874, 0.811385, -0.380302,
		-0.455420, -0.569770, -0.684072,
		35.037613, 44.663944, 12.772786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709175, 45.219154, 13.298869>,  <35.356407, 45.062786, 13.251637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709175, 45.219154, 13.298869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715157, 44.851425, 13.141584>,  <34.718746, 44.630787, 13.047214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715157, 44.851425, 13.141584>,  <34.709175, 45.219154, 13.298869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715157, 44.851425, 13.141584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794175, -0.249850, 0.553951,
		-0.607506, 0.303996, -0.733842,
		0.014951, -0.919327, -0.393211,
		34.719643, 44.575626, 13.023622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989048, 44.991596, 13.065464>,  <34.709175, 45.219154, 13.298869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989048, 44.991596, 13.065464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220993, 44.679401, 13.158924>,  <34.360161, 44.492085, 13.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220993, 44.679401, 13.158924>,  <33.989048, 44.991596, 13.065464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220993, 44.679401, 13.158924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695562, -0.324937, 0.640789,
		-0.424210, -0.534086, -0.731299,
		0.579862, -0.780492, 0.233648,
		34.394951, 44.445255, 13.229019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569080, 44.386055, 13.012007>,  <33.989048, 44.991596, 13.065464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569080, 44.386055, 13.012007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867802, 44.300179, 13.263781>,  <34.047035, 44.248653, 13.414845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867802, 44.300179, 13.263781>,  <33.569080, 44.386055, 13.012007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867802, 44.300179, 13.263781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657886, -0.376966, 0.651983,
		0.097298, -0.901001, -0.422766,
		0.746806, -0.214696, 0.629434,
		34.091843, 44.235771, 13.452611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360218, 43.732975, 13.212563>,  <33.569080, 44.386055, 13.012007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360218, 43.732975, 13.212563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 43.871113, 13.479765>,  <33.782085, 43.953995, 13.640086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 43.871113, 13.479765>,  <33.360218, 43.732975, 13.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623886, 43.871113, 13.479765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602484, -0.289056, 0.743949,
		0.450009, -0.892852, 0.017527,
		0.659170, 0.345343, 0.668007,
		33.821636, 43.974716, 13.680167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405712, 43.316238, 13.936676>,  <33.360218, 43.732975, 13.212563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405712, 43.316238, 13.936676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597492, 43.652924, 14.035993>,  <33.712559, 43.854935, 14.095583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597492, 43.652924, 14.035993>,  <33.405712, 43.316238, 13.936676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597492, 43.652924, 14.035993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417043, -0.030405, 0.908378,
		0.772144, -0.539066, 0.336454,
		0.479446, 0.841715, 0.248291,
		33.741325, 43.905437, 14.110480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733402, 43.158360, 14.589560>,  <33.405712, 43.316238, 13.936676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733402, 43.158360, 14.589560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706337, 43.557438, 14.587330>,  <33.690098, 43.796883, 14.585992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706337, 43.557438, 14.587330>,  <33.733402, 43.158360, 14.589560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706337, 43.557438, 14.587330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181964, -0.006848, 0.983281,
		0.980974, 0.067547, 0.182007,
		-0.067664, 0.997693, -0.005574,
		33.686039, 43.856747, 14.585658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265800, 43.436718, 15.001565>,  <33.733402, 43.158360, 14.589560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265800, 43.436718, 15.001565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947567, 43.677677, 14.975761>,  <33.756626, 43.822250, 14.960279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947567, 43.677677, 14.975761>,  <34.265800, 43.436718, 15.001565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947567, 43.677677, 14.975761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081832, -0.001350, 0.996645,
		0.600288, 0.798196, 0.050370,
		-0.795587, 0.602396, -0.064508,
		33.708893, 43.858395, 14.956409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401588, 43.814739, 15.567937>,  <34.265800, 43.436718, 15.001565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401588, 43.814739, 15.567937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029026, 43.903767, 15.452740>,  <33.805489, 43.957184, 15.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029026, 43.903767, 15.452740>,  <34.401588, 43.814739, 15.567937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029026, 43.903767, 15.452740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287338, 0.036056, 0.957151,
		0.223418, 0.974249, 0.030370,
		-0.931408, 0.222571, -0.287994,
		33.749603, 43.970539, 15.366342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313377, 44.348171, 15.954267>,  <34.401588, 43.814739, 15.567937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313377, 44.348171, 15.954267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960205, 44.197453, 15.842222>,  <33.748302, 44.107021, 15.774996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960205, 44.197453, 15.842222>,  <34.313377, 44.348171, 15.954267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960205, 44.197453, 15.842222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337744, 0.095295, 0.936402,
		-0.326136, 0.921383, -0.211398,
		-0.882930, -0.376793, -0.280112,
		33.695328, 44.084415, 15.758188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879211, 44.776791, 16.261286>,  <34.313377, 44.348171, 15.954267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879211, 44.776791, 16.261286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646271, 44.469212, 16.155771>,  <33.506508, 44.284664, 16.092463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646271, 44.469212, 16.155771>,  <33.879211, 44.776791, 16.261286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646271, 44.469212, 16.155771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211169, -0.170259, 0.962507,
		-0.785032, 0.616220, -0.063228,
		-0.582351, -0.768950, -0.263786,
		33.471565, 44.238525, 16.076635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264587, 44.849121, 16.669207>,  <33.879211, 44.776791, 16.261286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264587, 44.849121, 16.669207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304688, 44.468449, 16.553102>,  <33.328747, 44.240044, 16.483440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304688, 44.468449, 16.553102>,  <33.264587, 44.849121, 16.669207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304688, 44.468449, 16.553102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304091, -0.307078, 0.901794,
		-0.947353, -0.002143, -0.320184,
		0.100253, -0.951682, -0.290259,
		33.334763, 44.182945, 16.466024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703373, 44.525085, 16.871603>,  <33.264587, 44.849121, 16.669207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703373, 44.525085, 16.871603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953812, 44.218163, 16.816101>,  <33.104073, 44.034008, 16.782799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953812, 44.218163, 16.816101>,  <32.703373, 44.525085, 16.871603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953812, 44.218163, 16.816101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399186, -0.468271, 0.788272,
		-0.669819, -0.438141, -0.599478,
		0.626093, -0.767303, -0.138757,
		33.141640, 43.987972, 16.774473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341965, 43.850922, 16.866982>,  <32.703373, 44.525085, 16.871603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341965, 43.850922, 16.866982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721924, 43.788982, 16.975586>,  <32.949898, 43.751820, 17.040749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721924, 43.788982, 16.975586>,  <32.341965, 43.850922, 16.866982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721924, 43.788982, 16.975586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310097, -0.575835, 0.756474,
		0.039204, -0.802767, -0.595003,
		0.949896, -0.154852, 0.271511,
		33.006893, 43.742527, 17.057039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233334, 43.294884, 17.258904>,  <32.341965, 43.850922, 16.866982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233334, 43.294884, 17.258904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617142, 43.379841, 17.332880>,  <32.847427, 43.430813, 17.377266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617142, 43.379841, 17.332880>,  <32.233334, 43.294884, 17.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617142, 43.379841, 17.332880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109947, -0.322072, 0.940309,
		0.259277, -0.922583, -0.285684,
		0.959525, 0.212390, 0.184941,
		32.904999, 43.443558, 17.388363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544418, 42.692528, 17.420172>,  <32.233334, 43.294884, 17.258904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544418, 42.692528, 17.420172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797340, 42.957809, 17.580347>,  <32.949093, 43.116978, 17.676453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797340, 42.957809, 17.580347>,  <32.544418, 42.692528, 17.420172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797340, 42.957809, 17.580347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161356, -0.392809, 0.905353,
		0.757731, -0.637072, -0.141363,
		0.632304, 0.663205, 0.400439,
		32.987030, 43.156773, 17.700480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996460, 42.292618, 17.798908>,  <32.544418, 42.692528, 17.420172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996460, 42.292618, 17.798908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999813, 42.660656, 17.955553>,  <33.001827, 42.881477, 18.049540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999813, 42.660656, 17.955553>,  <32.996460, 42.292618, 17.798908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999813, 42.660656, 17.955553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313607, -0.369446, 0.874735,
		0.949516, -0.130148, 0.285449,
		0.008387, 0.920093, 0.391610,
		33.002331, 42.936684, 18.073036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539383, 42.224846, 18.280014>,  <32.996460, 42.292618, 17.798908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539383, 42.224846, 18.280014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277805, 42.518524, 18.353031>,  <33.120861, 42.694729, 18.396841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277805, 42.518524, 18.353031>,  <33.539383, 42.224846, 18.280014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277805, 42.518524, 18.353031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213360, -0.410464, 0.886565,
		0.725837, 0.540814, 0.425066,
		-0.653941, 0.734194, 0.182541,
		33.081623, 42.738781, 18.407793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639565, 42.487339, 18.947174>,  <33.539383, 42.224846, 18.280014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639565, 42.487339, 18.947174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271675, 42.621418, 18.865444>,  <33.050941, 42.701866, 18.816406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271675, 42.621418, 18.865444>,  <33.639565, 42.487339, 18.947174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271675, 42.621418, 18.865444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318465, -0.332755, 0.887611,
		0.229539, 0.881427, 0.412793,
		-0.919724, 0.335202, -0.204324,
		32.995758, 42.721977, 18.804148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336796, 42.815582, 19.527731>,  <33.639565, 42.487339, 18.947174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336796, 42.815582, 19.527731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997368, 42.749836, 19.326569>,  <32.793713, 42.710388, 19.205872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997368, 42.749836, 19.326569>,  <33.336796, 42.815582, 19.527731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997368, 42.749836, 19.326569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484800, -0.139113, 0.863491,
		-0.211888, 0.976541, 0.038363,
		-0.848571, -0.164365, -0.502904,
		32.742798, 42.700527, 19.175697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811001, 43.097172, 19.881496>,  <33.336796, 42.815582, 19.527731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811001, 43.097172, 19.881496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560989, 42.878391, 19.658720>,  <32.410984, 42.747124, 19.525053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560989, 42.878391, 19.658720>,  <32.811001, 43.097172, 19.881496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560989, 42.878391, 19.658720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625669, -0.075617, 0.776416,
		-0.466776, 0.833742, -0.294948,
		-0.625028, -0.546951, -0.556943,
		32.373482, 42.714306, 19.491638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156075, 43.421207, 19.984743>,  <32.811001, 43.097172, 19.881496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156075, 43.421207, 19.984743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106316, 43.042854, 19.864859>,  <32.076462, 42.815842, 19.792927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106316, 43.042854, 19.864859>,  <32.156075, 43.421207, 19.984743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106316, 43.042854, 19.864859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486346, -0.205161, 0.849339,
		-0.864866, 0.251419, -0.434506,
		-0.124397, -0.945885, -0.299713,
		32.068996, 42.759090, 19.774944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516016, 43.215191, 20.195463>,  <32.156075, 43.421207, 19.984743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516016, 43.215191, 20.195463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680639, 42.859112, 20.117311>,  <31.779413, 42.645466, 20.070421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680639, 42.859112, 20.117311>,  <31.516016, 43.215191, 20.195463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680639, 42.859112, 20.117311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427220, -0.377798, 0.821433,
		-0.805049, -0.254596, -0.535795,
		0.411556, -0.890196, -0.195378,
		31.804106, 42.592052, 20.058699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917599, 42.646854, 20.297771>,  <31.516016, 43.215191, 20.195463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917599, 42.646854, 20.297771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265493, 42.450172, 20.314642>,  <31.474230, 42.332161, 20.324764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265493, 42.450172, 20.314642>,  <30.917599, 42.646854, 20.297771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265493, 42.450172, 20.314642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347696, -0.549866, 0.759444,
		-0.350233, -0.675182, -0.649204,
		0.869738, -0.491707, 0.042177,
		31.526415, 42.302662, 20.327295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701572, 41.920425, 20.155283>,  <30.917599, 42.646854, 20.297771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701572, 41.920425, 20.155283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059858, 41.896576, 20.331530>,  <31.274830, 41.882267, 20.437279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059858, 41.896576, 20.331530>,  <30.701572, 41.920425, 20.155283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059858, 41.896576, 20.331530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371143, -0.645970, 0.667065,
		0.244850, -0.761031, -0.600734,
		0.895712, -0.059627, 0.440617,
		31.328571, 41.878689, 20.463715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832806, 41.226440, 20.183599>,  <30.701572, 41.920425, 20.155283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832806, 41.226440, 20.183599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064341, 41.403053, 20.457825>,  <31.203262, 41.509022, 20.622360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064341, 41.403053, 20.457825>,  <30.832806, 41.226440, 20.183599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064341, 41.403053, 20.457825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383462, -0.594582, 0.706703,
		0.719655, -0.671954, -0.174857,
		0.578838, 0.441531, 0.685563,
		31.237991, 41.535511, 20.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225910, 40.661774, 20.595451>,  <30.832806, 41.226440, 20.183599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225910, 40.661774, 20.595451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223669, 40.978596, 20.839622>,  <31.222324, 41.168690, 20.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223669, 40.978596, 20.839622>,  <31.225910, 40.661774, 20.595451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223669, 40.978596, 20.839622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201194, -0.598848, 0.775179,
		0.979535, -0.118470, 0.162713,
		-0.005605, 0.792052, 0.610428,
		31.221987, 41.216213, 21.022751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624186, 40.475945, 21.182428>,  <31.225910, 40.661774, 20.595451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624186, 40.475945, 21.182428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392241, 40.779961, 21.299799>,  <31.253075, 40.962372, 21.370220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392241, 40.779961, 21.299799>,  <31.624186, 40.475945, 21.182428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392241, 40.779961, 21.299799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210691, -0.487798, 0.847150,
		0.787001, 0.429408, 0.442989,
		-0.579862, 0.760041, 0.293425,
		31.218283, 41.007973, 21.387827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800243, 40.334251, 21.856987>,  <31.624186, 40.475945, 21.182428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800243, 40.334251, 21.856987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499304, 40.597755, 21.857569>,  <31.318741, 40.755859, 21.857918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499304, 40.597755, 21.857569>,  <31.800243, 40.334251, 21.856987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499304, 40.597755, 21.857569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331929, -0.380992, 0.862942,
		0.569029, 0.648750, 0.505301,
		-0.752349, 0.658763, 0.001457,
		31.273600, 40.795383, 21.858006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780161, 40.678146, 22.566107>,  <31.800243, 40.334251, 21.856987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780161, 40.678146, 22.566107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423355, 40.716957, 22.389517>,  <31.209272, 40.740242, 22.283564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423355, 40.716957, 22.389517>,  <31.780161, 40.678146, 22.566107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423355, 40.716957, 22.389517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451933, -0.209556, 0.867089,
		-0.008384, 0.972971, 0.230776,
		-0.892013, 0.097025, -0.441474,
		31.155752, 40.746063, 22.257074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465771, 41.101067, 22.942989>,  <31.780161, 40.678146, 22.566107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465771, 41.101067, 22.942989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162294, 40.925507, 22.750425>,  <30.980207, 40.820171, 22.634888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162294, 40.925507, 22.750425>,  <31.465771, 41.101067, 22.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162294, 40.925507, 22.750425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461083, -0.160256, 0.872766,
		-0.460205, 0.884130, -0.080784,
		-0.758692, -0.438899, -0.481408,
		30.934687, 40.793839, 22.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896486, 41.462296, 23.140863>,  <31.465771, 41.101067, 22.942989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896486, 41.462296, 23.140863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758358, 41.104156, 23.028362>,  <30.675480, 40.889275, 22.960861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758358, 41.104156, 23.028362>,  <30.896486, 41.462296, 23.140863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758358, 41.104156, 23.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500401, -0.077872, 0.862284,
		-0.793946, 0.438506, -0.421143,
		-0.345322, -0.895348, -0.281255,
		30.654762, 40.835552, 22.943985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204962, 41.400623, 23.470005>,  <30.896486, 41.462296, 23.140863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204962, 41.400623, 23.470005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322495, 41.029808, 23.376825>,  <30.393015, 40.807320, 23.320917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322495, 41.029808, 23.376825>,  <30.204962, 41.400623, 23.470005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322495, 41.029808, 23.376825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110847, -0.275108, 0.955002,
		-0.949408, -0.254789, -0.183595,
		0.293832, -0.927037, -0.232947,
		30.410645, 40.751698, 23.306942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633825, 40.893448, 23.664593>,  <30.204962, 41.400623, 23.470005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633825, 40.893448, 23.664593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974741, 40.684559, 23.652691>,  <30.179291, 40.559227, 23.645550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974741, 40.684559, 23.652691>,  <29.633825, 40.893448, 23.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974741, 40.684559, 23.652691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197632, -0.374169, 0.906057,
		-0.484298, -0.766342, -0.422109,
		0.852290, -0.522223, -0.029756,
		30.230429, 40.527893, 23.643764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501848, 40.217747, 23.895926>,  <29.633825, 40.893448, 23.664593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501848, 40.217747, 23.895926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895580, 40.274918, 23.937243>,  <30.131819, 40.309219, 23.962032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895580, 40.274918, 23.937243>,  <29.501848, 40.217747, 23.895926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895580, 40.274918, 23.937243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001653, -0.578238, 0.815866,
		0.176340, -0.803251, -0.568939,
		0.984328, 0.142929, 0.103295,
		30.190878, 40.317795, 23.968231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799015, 39.646759, 24.204227>,  <29.501848, 40.217747, 23.895926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799015, 39.646759, 24.204227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088411, 39.914745, 24.270813>,  <30.262049, 40.075539, 24.310764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088411, 39.914745, 24.270813>,  <29.799015, 39.646759, 24.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088411, 39.914745, 24.270813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178859, -0.414818, 0.892152,
		0.666763, -0.615689, -0.419946,
		0.723490, 0.669965, 0.166464,
		30.305458, 40.115734, 24.320751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097237, 39.319401, 24.774956>,  <29.799015, 39.646759, 24.204227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097237, 39.319401, 24.774956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276653, 39.676857, 24.780863>,  <30.384302, 39.891331, 24.784407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276653, 39.676857, 24.780863>,  <30.097237, 39.319401, 24.774956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276653, 39.676857, 24.780863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336864, -0.184339, 0.923332,
		0.827849, -0.409176, -0.383719,
		0.448540, 0.893640, 0.014768,
		30.411215, 39.944950, 24.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744684, 39.272945, 25.015444>,  <30.097237, 39.319401, 24.774956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744684, 39.272945, 25.015444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687740, 39.666500, 25.058699>,  <30.653574, 39.902634, 25.084652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687740, 39.666500, 25.058699>,  <30.744684, 39.272945, 25.015444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687740, 39.666500, 25.058699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332228, -0.055417, 0.941570,
		0.932393, 0.169970, -0.318987,
		-0.142361, 0.983890, 0.108139,
		30.645033, 39.961666, 25.091141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366680, 39.573582, 25.169847>,  <30.744684, 39.272945, 25.015444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366680, 39.573582, 25.169847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065037, 39.801823, 25.299915>,  <30.884050, 39.938766, 25.377956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065037, 39.801823, 25.299915>,  <31.366680, 39.573582, 25.169847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065037, 39.801823, 25.299915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352877, -0.065542, 0.933372,
		0.553894, 0.818609, -0.151926,
		-0.754109, 0.570600, 0.325171,
		30.838804, 39.973003, 25.397467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652208, 40.007057, 25.695601>,  <31.366680, 39.573582, 25.169847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652208, 40.007057, 25.695601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255726, 40.012527, 25.748247>,  <31.017836, 40.015812, 25.779835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255726, 40.012527, 25.748247>,  <31.652208, 40.007057, 25.695601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255726, 40.012527, 25.748247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131394, 0.219693, 0.966680,
		-0.015693, 0.975473, -0.219558,
		-0.991206, 0.013679, 0.131619,
		30.958364, 40.016632, 25.787733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619909, 40.280781, 26.400587>,  <31.652208, 40.007057, 25.695601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619909, 40.280781, 26.400587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240980, 40.165314, 26.345079>,  <31.013622, 40.096035, 26.311775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240980, 40.165314, 26.345079>,  <31.619909, 40.280781, 26.400587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240980, 40.165314, 26.345079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208963, 0.228685, 0.950809,
		-0.242729, 0.929719, -0.276958,
		-0.947321, -0.288663, -0.138768,
		30.956783, 40.078716, 26.303450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754543, 40.452572, 27.049133>,  <31.619909, 40.280781, 26.400587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754543, 40.452572, 27.049133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138012, 40.558414, 27.090954>,  <32.368092, 40.621922, 27.116047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138012, 40.558414, 27.090954>,  <31.754543, 40.452572, 27.049133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138012, 40.558414, 27.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029563, 0.272841, -0.961605,
		-0.282975, 0.924954, 0.253742,
		0.958672, 0.264608, 0.104552,
		32.425613, 40.637798, 27.122320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885393, 41.026516, 26.680336>,  <31.754543, 40.452572, 27.049133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885393, 41.026516, 26.680336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234612, 40.832706, 26.702362>,  <32.444141, 40.716419, 26.715578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234612, 40.832706, 26.702362>,  <31.885393, 41.026516, 26.680336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234612, 40.832706, 26.702362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253242, 0.353986, -0.900312,
		0.416728, 0.799958, 0.431747,
		0.873044, -0.484522, 0.055067,
		32.496525, 40.687351, 26.718882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388618, 41.525833, 26.394133>,  <31.885393, 41.026516, 26.680336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388618, 41.525833, 26.394133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554119, 41.161716, 26.388721>,  <32.653419, 40.943245, 26.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554119, 41.161716, 26.388721>,  <32.388618, 41.525833, 26.394133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554119, 41.161716, 26.388721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409387, 0.199308, -0.890325,
		0.813151, 0.362831, 0.455124,
		0.413748, -0.910291, -0.013530,
		32.678242, 40.888630, 26.384663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107048, 41.700878, 26.195524>,  <32.388618, 41.525833, 26.394133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107048, 41.700878, 26.195524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056335, 41.312351, 26.115046>,  <33.025909, 41.079235, 26.066759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056335, 41.312351, 26.115046>,  <33.107048, 41.700878, 26.195524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056335, 41.312351, 26.115046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291671, 0.157361, -0.943486,
		0.948080, -0.178295, 0.263354,
		-0.126777, -0.971313, -0.201194,
		33.018303, 41.020958, 26.054688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745567, 41.383213, 25.891439>,  <33.107048, 41.700878, 26.195524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745567, 41.383213, 25.891439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451088, 41.140942, 25.770666>,  <33.274399, 40.995579, 25.698202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451088, 41.140942, 25.770666>,  <33.745567, 41.383213, 25.891439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451088, 41.140942, 25.770666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313154, 0.090631, -0.945368,
		0.599953, -0.790532, 0.122948,
		-0.736200, -0.605678, -0.301932,
		33.230228, 40.959240, 25.680086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056332, 40.844376, 25.471073>,  <33.745567, 41.383213, 25.891439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056332, 40.844376, 25.471073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672295, 40.886589, 25.367476>,  <33.441872, 40.911915, 25.305317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672295, 40.886589, 25.367476>,  <34.056332, 40.844376, 25.471073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672295, 40.886589, 25.367476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278267, 0.267860, -0.922398,
		-0.027967, -0.957661, -0.286537,
		-0.960096, 0.105530, -0.258994,
		33.384266, 40.918247, 25.289778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125240, 40.591923, 24.828222>,  <34.056332, 40.844376, 25.471073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125240, 40.591923, 24.828222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775242, 40.785343, 24.837669>,  <33.565243, 40.901394, 24.843338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775242, 40.785343, 24.837669>,  <34.125240, 40.591923, 24.828222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775242, 40.785343, 24.837669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147931, 0.313497, -0.937996,
		-0.460971, -0.817251, -0.345842,
		-0.874999, 0.483549, 0.023616,
		33.512741, 40.930408, 24.844753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677673, 40.408764, 24.243235>,  <34.125240, 40.591923, 24.828222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677673, 40.408764, 24.243235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546684, 40.764503, 24.370871>,  <33.468090, 40.977947, 24.447453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546684, 40.764503, 24.370871>,  <33.677673, 40.408764, 24.243235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546684, 40.764503, 24.370871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024508, 0.345592, -0.938065,
		-0.944542, -0.299372, -0.134969,
		-0.327474, 0.889350, 0.319089,
		33.448441, 41.031307, 24.466597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221642, 40.649033, 23.744417>,  <33.677673, 40.408764, 24.243235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221642, 40.649033, 23.744417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343456, 40.986294, 23.921659>,  <33.416546, 41.188652, 24.028004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343456, 40.986294, 23.921659>,  <33.221642, 40.649033, 23.744417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343456, 40.986294, 23.921659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044053, 0.452235, -0.890810,
		-0.951481, 0.290807, 0.100579,
		0.304539, 0.843158, 0.443104,
		33.434818, 41.239243, 24.054590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244190, 41.123642, 23.220295>,  <33.221642, 40.649033, 23.744417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244190, 41.123642, 23.220295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421700, 41.369331, 23.481306>,  <33.528206, 41.516747, 23.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421700, 41.369331, 23.481306>,  <33.244190, 41.123642, 23.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421700, 41.369331, 23.481306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206685, 0.638370, -0.741461,
		-0.871980, 0.463907, 0.156338,
		0.443771, 0.614227, 0.652529,
		33.554832, 41.553600, 23.677065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005383, 41.743095, 23.070395>,  <33.244190, 41.123642, 23.220295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005383, 41.743095, 23.070395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348976, 41.794498, 23.268637>,  <33.555134, 41.825340, 23.387583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348976, 41.794498, 23.268637>,  <33.005383, 41.743095, 23.070395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348976, 41.794498, 23.268637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321239, 0.618483, -0.717136,
		-0.398678, 0.775220, 0.489990,
		0.858989, 0.128503, 0.495606,
		33.606674, 41.833050, 23.417318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069637, 42.474792, 23.020140>,  <33.005383, 41.743095, 23.070395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069637, 42.474792, 23.020140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426487, 42.321163, 23.115309>,  <33.640594, 42.228985, 23.172411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426487, 42.321163, 23.115309>,  <33.069637, 42.474792, 23.020140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426487, 42.321163, 23.115309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449251, 0.698269, -0.557309,
		0.047915, 0.604073, 0.795487,
		0.892120, -0.384077, 0.237923,
		33.694122, 42.205940, 23.186686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619061, 43.025509, 23.336740>,  <33.069637, 42.474792, 23.020140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619061, 43.025509, 23.336740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825695, 42.726112, 23.170416>,  <33.949677, 42.546474, 23.070621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825695, 42.726112, 23.170416>,  <33.619061, 43.025509, 23.336740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825695, 42.726112, 23.170416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523256, 0.660365, -0.538629,
		0.677745, 0.060675, 0.732789,
		0.516590, -0.748489, -0.415811,
		33.980671, 42.501564, 23.045673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290718, 43.364017, 23.316187>,  <33.619061, 43.025509, 23.336740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290718, 43.364017, 23.316187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326408, 43.048393, 23.073069>,  <34.347824, 42.859016, 22.927198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326408, 43.048393, 23.073069>,  <34.290718, 43.364017, 23.316187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326408, 43.048393, 23.073069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505369, 0.561711, -0.655044,
		0.858278, -0.248713, 0.448889,
		0.089228, -0.789064, -0.607796,
		34.353176, 42.811672, 22.890730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035000, 43.371807, 23.187389>,  <34.290718, 43.364017, 23.316187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035000, 43.371807, 23.187389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836521, 43.159855, 22.912285>,  <34.717434, 43.032684, 22.747221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836521, 43.159855, 22.912285>,  <35.035000, 43.371807, 23.187389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836521, 43.159855, 22.912285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532868, 0.439544, -0.723086,
		0.685450, -0.725279, 0.064255,
		-0.496196, -0.529878, -0.687763,
		34.687664, 43.000893, 22.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530670, 43.274326, 22.731485>,  <35.035000, 43.371807, 23.187389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530670, 43.274326, 22.731485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187496, 43.219635, 22.533394>,  <34.981590, 43.186821, 22.414539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187496, 43.219635, 22.533394>,  <35.530670, 43.274326, 22.731485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187496, 43.219635, 22.533394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451234, 0.260318, -0.853594,
		0.245630, -0.955792, -0.161638,
		-0.857936, -0.136731, -0.495228,
		34.930115, 43.178616, 22.384825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852154, 43.069908, 22.077406>,  <35.530670, 43.274326, 22.731485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852154, 43.069908, 22.077406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464909, 43.130550, 21.997639>,  <35.232559, 43.166935, 21.949778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464909, 43.130550, 21.997639>,  <35.852154, 43.069908, 22.077406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464909, 43.130550, 21.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235468, 0.279084, -0.930950,
		-0.085485, -0.948223, -0.305885,
		-0.968116, 0.151609, -0.199418,
		35.174473, 43.176033, 21.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658455, 42.711575, 21.414783>,  <35.852154, 43.069908, 22.077406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658455, 42.711575, 21.414783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390392, 42.999935, 21.485420>,  <35.229553, 43.172951, 21.527802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390392, 42.999935, 21.485420>,  <35.658455, 42.711575, 21.414783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390392, 42.999935, 21.485420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034097, 0.267575, -0.962934,
		-0.741432, -0.639299, -0.203899,
		-0.670161, 0.720903, 0.176590,
		35.189342, 43.216206, 21.538397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152489, 42.605366, 20.898506>,  <35.658455, 42.711575, 21.414783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152489, 42.605366, 20.898506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136936, 42.988209, 21.013350>,  <35.127605, 43.217915, 21.082254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136936, 42.988209, 21.013350>,  <35.152489, 42.605366, 20.898506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136936, 42.988209, 21.013350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034291, 0.285877, -0.957653,
		-0.998655, -0.047079, 0.021706,
		-0.038880, 0.957109, 0.287107,
		35.125271, 43.275341, 21.099482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623550, 42.910900, 20.445843>,  <35.152489, 42.605366, 20.898506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623550, 42.910900, 20.445843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855671, 43.210243, 20.574350>,  <34.994942, 43.389851, 20.651455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855671, 43.210243, 20.574350>,  <34.623550, 42.910900, 20.445843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855671, 43.210243, 20.574350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068566, 0.437977, -0.896367,
		-0.811511, 0.498134, 0.305471,
		0.580301, 0.748357, 0.321268,
		35.029762, 43.434750, 20.670731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288429, 43.590500, 20.229485>,  <34.623550, 42.910900, 20.445843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288429, 43.590500, 20.229485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671654, 43.690815, 20.284939>,  <34.901588, 43.751003, 20.318213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671654, 43.690815, 20.284939>,  <34.288429, 43.590500, 20.229485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671654, 43.690815, 20.284939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026807, 0.403240, -0.914701,
		-0.285300, 0.880058, 0.379607,
		0.958063, 0.250788, 0.138636,
		34.959072, 43.766052, 20.326530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341625, 44.282818, 20.018337>,  <34.288429, 43.590500, 20.229485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341625, 44.282818, 20.018337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711910, 44.132370, 20.002375>,  <34.934082, 44.042103, 19.992798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711910, 44.132370, 20.002375>,  <34.341625, 44.282818, 20.018337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711910, 44.132370, 20.002375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093334, 0.329405, -0.939564,
		0.366532, 0.866042, 0.340038,
		0.925712, -0.376117, -0.039906,
		34.989624, 44.019535, 19.990402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740673, 44.729515, 19.611294>,  <34.341625, 44.282818, 20.018337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740673, 44.729515, 19.611294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001095, 44.426098, 19.600332>,  <35.157349, 44.244049, 19.593756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001095, 44.426098, 19.600332>,  <34.740673, 44.729515, 19.611294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001095, 44.426098, 19.600332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240047, 0.240012, -0.940623,
		0.720076, 0.605817, 0.338345,
		0.651052, -0.758538, -0.027403,
		35.196411, 44.198536, 19.592112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456848, 44.972790, 19.496469>,  <34.740673, 44.729515, 19.611294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456848, 44.972790, 19.496469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439987, 44.590725, 19.379240>,  <35.429871, 44.361488, 19.308903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439987, 44.590725, 19.379240>,  <35.456848, 44.972790, 19.496469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439987, 44.590725, 19.379240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450567, 0.243640, -0.858853,
		0.891747, -0.168255, 0.420092,
		-0.042155, -0.955159, -0.293076,
		35.427341, 44.304176, 19.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074478, 44.932293, 19.146271>,  <35.456848, 44.972790, 19.496469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074478, 44.932293, 19.146271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848026, 44.615265, 19.055645>,  <35.712154, 44.425049, 19.001268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848026, 44.615265, 19.055645>,  <36.074478, 44.932293, 19.146271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848026, 44.615265, 19.055645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115293, 0.196021, -0.973799,
		0.816213, -0.577419, -0.019596,
		-0.566131, -0.792567, -0.226567,
		35.678188, 44.377495, 18.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325684, 44.750156, 18.516037>,  <36.074478, 44.932293, 19.146271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325684, 44.750156, 18.516037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000130, 44.517902, 18.507582>,  <35.804798, 44.378548, 18.502508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000130, 44.517902, 18.507582>,  <36.325684, 44.750156, 18.516037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000130, 44.517902, 18.507582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028745, -0.003898, -0.999579,
		0.580312, -0.814152, 0.019863,
		-0.813887, -0.580639, -0.021141,
		35.755962, 44.343712, 18.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473915, 44.111435, 18.204288>,  <36.325684, 44.750156, 18.516037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473915, 44.111435, 18.204288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080376, 44.170845, 18.164316>,  <35.844254, 44.206490, 18.140333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080376, 44.170845, 18.164316>,  <36.473915, 44.111435, 18.204288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080376, 44.170845, 18.164316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068699, -0.202212, -0.976929,
		-0.165302, -0.968014, 0.188742,
		-0.983847, 0.148522, -0.099928,
		35.785221, 44.215405, 18.134338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243259, 43.473759, 17.881697>,  <36.473915, 44.111435, 18.204288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243259, 43.473759, 17.881697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010681, 43.792606, 17.816555>,  <35.871136, 43.983917, 17.777470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010681, 43.792606, 17.816555>,  <36.243259, 43.473759, 17.881697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010681, 43.792606, 17.816555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241172, -0.022305, -0.970226,
		-0.777021, -0.603406, -0.179275,
		-0.581442, 0.797122, -0.162856,
		35.836250, 44.031742, 17.767698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730549, 43.281158, 17.239510>,  <36.243259, 43.473759, 17.881697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730549, 43.281158, 17.239510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746284, 43.677601, 17.290375>,  <35.755726, 43.915466, 17.320894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746284, 43.677601, 17.290375>,  <35.730549, 43.281158, 17.239510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746284, 43.677601, 17.290375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004960, 0.127066, -0.991882,
		-0.999214, 0.039650, 0.000083,
		0.039338, 0.991102, 0.127163,
		35.758087, 43.974930, 17.328524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256035, 43.542103, 16.730310>,  <35.730549, 43.281158, 17.239510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256035, 43.542103, 16.730310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488304, 43.856430, 16.815449>,  <35.627666, 44.045029, 16.866531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488304, 43.856430, 16.815449>,  <35.256035, 43.542103, 16.730310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488304, 43.856430, 16.815449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103247, 0.188251, -0.976679,
		-0.807563, 0.589108, 0.028179,
		0.580674, 0.785820, 0.212848,
		35.662506, 44.092175, 16.879303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123543, 43.989502, 16.215742>,  <35.256035, 43.542103, 16.730310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123543, 43.989502, 16.215742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464085, 44.149837, 16.351105>,  <35.668411, 44.246037, 16.432323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464085, 44.149837, 16.351105>,  <35.123543, 43.989502, 16.215742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464085, 44.149837, 16.351105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243150, 0.270089, -0.931628,
		-0.464831, 0.875432, 0.132479,
		0.851358, 0.400837, 0.338408,
		35.719494, 44.270088, 16.452627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274532, 44.676315, 15.770265>,  <35.123543, 43.989502, 16.215742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274532, 44.676315, 15.770265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630238, 44.573437, 15.921561>,  <35.843658, 44.511711, 16.012339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630238, 44.573437, 15.921561>,  <35.274532, 44.676315, 15.770265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630238, 44.573437, 15.921561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438193, 0.241915, -0.865716,
		0.131153, 0.935590, 0.327825,
		0.889261, -0.257192, 0.378241,
		35.897015, 44.496281, 16.035034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709274, 45.281364, 15.609502>,  <35.274532, 44.676315, 15.770265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709274, 45.281364, 15.609502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936771, 44.958569, 15.673117>,  <36.073269, 44.764889, 15.711286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936771, 44.958569, 15.673117>,  <35.709274, 45.281364, 15.609502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936771, 44.958569, 15.673117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587045, 0.262832, -0.765701,
		0.576115, 0.528850, 0.623225,
		0.568744, -0.806993, 0.159037,
		36.107395, 44.716469, 15.720828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301785, 45.497887, 15.256092>,  <35.709274, 45.281364, 15.609502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301785, 45.497887, 15.256092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369740, 45.109108, 15.321159>,  <36.410511, 44.875843, 15.360200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369740, 45.109108, 15.321159>,  <36.301785, 45.497887, 15.256092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369740, 45.109108, 15.321159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577324, -0.035614, -0.815738,
		0.798646, 0.232496, 0.555077,
		0.169888, -0.971945, 0.162668,
		36.420708, 44.817524, 15.369960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030891, 45.451485, 15.245479>,  <36.301785, 45.497887, 15.256092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030891, 45.451485, 15.245479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918224, 45.070812, 15.196538>,  <36.850624, 44.842407, 15.167173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918224, 45.070812, 15.196538>,  <37.030891, 45.451485, 15.245479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918224, 45.070812, 15.196538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781457, -0.153533, -0.604775,
		0.556768, -0.265956, 0.786942,
		-0.281665, -0.951680, -0.122351,
		36.833725, 44.785309, 15.159833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550682, 44.991352, 15.299088>,  <37.030891, 45.451485, 15.245479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550682, 44.991352, 15.299088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282448, 44.787079, 15.083860>,  <37.121506, 44.664516, 14.954723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282448, 44.787079, 15.083860>,  <37.550682, 44.991352, 15.299088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282448, 44.787079, 15.083860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680740, -0.135380, -0.719906,
		0.294798, -0.849046, 0.438424,
		-0.670587, -0.510680, -0.538070,
		37.081272, 44.633877, 14.922440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832939, 44.359013, 15.163408>,  <37.550682, 44.991352, 15.299088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832939, 44.359013, 15.163408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547668, 44.399624, 14.885971>,  <37.376507, 44.423992, 14.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547668, 44.399624, 14.885971>,  <37.832939, 44.359013, 15.163408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547668, 44.399624, 14.885971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671943, -0.182836, -0.717679,
		-0.199683, -0.977886, 0.062169,
		-0.713175, 0.101534, -0.693593,
		37.333717, 44.430084, 14.677894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121250, 44.001091, 14.570122>,  <37.832939, 44.359013, 15.163408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121250, 44.001091, 14.570122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807636, 44.194817, 14.414822>,  <37.619469, 44.311050, 14.321642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807636, 44.194817, 14.414822>,  <38.121250, 44.001091, 14.570122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807636, 44.194817, 14.414822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452514, 0.017819, -0.891579,
		-0.424882, -0.874715, -0.233128,
		-0.784032, 0.484310, -0.388249,
		37.572426, 44.340111, 14.298347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338657, 43.397816, 14.115139>,  <38.121250, 44.001091, 14.570122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338657, 43.397816, 14.115139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629787, 43.151577, 13.994269>,  <38.804466, 43.003834, 13.921747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629787, 43.151577, 13.994269>,  <38.338657, 43.397816, 14.115139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629787, 43.151577, 13.994269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040977, -0.400811, 0.915244,
		-0.684538, -0.678519, -0.266495,
		0.727825, -0.615599, -0.302175,
		38.848137, 42.966896, 13.903617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121658, 42.765297, 14.050306>,  <38.338657, 43.397816, 14.115139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121658, 42.765297, 14.050306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515404, 42.716259, 14.100902>,  <38.751652, 42.686836, 14.131259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515404, 42.716259, 14.100902>,  <38.121658, 42.765297, 14.050306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515404, 42.716259, 14.100902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175998, -0.654859, 0.734972,
		-0.007269, -0.745742, -0.666195,
		0.984364, -0.122591, 0.126489,
		38.810715, 42.679482, 14.138848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226894, 42.084900, 14.095421>,  <38.121658, 42.765297, 14.050306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226894, 42.084900, 14.095421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558552, 42.249466, 14.246819>,  <38.757545, 42.348206, 14.337659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558552, 42.249466, 14.246819>,  <38.226894, 42.084900, 14.095421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558552, 42.249466, 14.246819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147199, -0.492492, 0.857778,
		0.539308, -0.766936, -0.347787,
		0.829144, 0.411413, 0.378497,
		38.807297, 42.372890, 14.360369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463295, 41.515877, 14.397316>,  <38.226894, 42.084900, 14.095421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463295, 41.515877, 14.397316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684105, 41.807697, 14.558820>,  <38.816589, 41.982788, 14.655723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684105, 41.807697, 14.558820>,  <38.463295, 41.515877, 14.397316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684105, 41.807697, 14.558820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038196, -0.505842, 0.861780,
		0.832952, -0.460303, -0.307104,
		0.552026, 0.729551, 0.403760,
		38.849712, 42.026562, 14.679948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011555, 41.158627, 14.788819>,  <38.463295, 41.515877, 14.397316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011555, 41.158627, 14.788819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015587, 41.528419, 14.941257>,  <39.018005, 41.750294, 15.032719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015587, 41.528419, 14.941257>,  <39.011555, 41.158627, 14.788819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015587, 41.528419, 14.941257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098228, -0.378354, 0.920435,
		0.995113, -0.046712, 0.086996,
		0.010080, 0.924482, 0.381093,
		39.018612, 41.805763, 15.055585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435863, 41.089207, 15.455597>,  <39.011555, 41.158627, 14.788819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435863, 41.089207, 15.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207283, 41.415390, 15.492412>,  <39.070133, 41.611099, 15.514501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207283, 41.415390, 15.492412>,  <39.435863, 41.089207, 15.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207283, 41.415390, 15.492412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182663, -0.235736, 0.954496,
		0.800048, 0.528637, 0.283666,
		-0.571452, 0.815458, 0.092037,
		39.035847, 41.660027, 15.520022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647339, 41.330639, 16.096914>,  <39.435863, 41.089207, 15.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647339, 41.330639, 16.096914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287994, 41.463978, 15.982491>,  <39.072388, 41.543983, 15.913836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287994, 41.463978, 15.982491>,  <39.647339, 41.330639, 16.096914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287994, 41.463978, 15.982491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378820, -0.258277, 0.888700,
		0.222365, 0.906737, 0.358305,
		-0.898359, 0.333349, -0.286058,
		39.018486, 41.563984, 15.896673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480286, 41.723366, 16.637171>,  <39.647339, 41.330639, 16.096914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480286, 41.723366, 16.637171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132812, 41.665852, 16.447552>,  <38.924328, 41.631344, 16.333780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132812, 41.665852, 16.447552>,  <39.480286, 41.723366, 16.637171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132812, 41.665852, 16.447552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442063, -0.206845, 0.872809,
		-0.223552, 0.967750, 0.116119,
		-0.868680, -0.143786, -0.474048,
		38.872208, 41.622715, 16.305338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025658, 41.852703, 17.120064>,  <39.480286, 41.723366, 16.637171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025658, 41.852703, 17.120064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783966, 41.663464, 16.863598>,  <38.638950, 41.549919, 16.709719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783966, 41.663464, 16.863598>,  <39.025658, 41.852703, 17.120064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783966, 41.663464, 16.863598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624612, -0.218393, 0.749776,
		-0.494740, 0.853514, -0.163541,
		-0.604228, -0.473094, -0.641163,
		38.602699, 41.521534, 16.671249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412663, 42.154202, 17.166397>,  <39.025658, 41.852703, 17.120064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412663, 42.154202, 17.166397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337494, 41.792168, 17.013815>,  <38.292393, 41.574947, 16.922266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337494, 41.792168, 17.013815>,  <38.412663, 42.154202, 17.166397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337494, 41.792168, 17.013815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706451, -0.145264, 0.692695,
		-0.682359, 0.399649, -0.612100,
		-0.187919, -0.905085, -0.381455,
		38.281116, 41.520641, 16.899378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684780, 42.073009, 17.233723>,  <38.412663, 42.154202, 17.166397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684780, 42.073009, 17.233723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806999, 41.697399, 17.170645>,  <37.880329, 41.472031, 17.132797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806999, 41.697399, 17.170645>,  <37.684780, 42.073009, 17.233723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806999, 41.697399, 17.170645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760741, -0.340346, 0.552665,
		-0.572639, -0.048898, -0.818348,
		0.305545, -0.939028, -0.157697,
		37.898663, 41.415691, 17.123335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118397, 41.586281, 17.004309>,  <37.684780, 42.073009, 17.233723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118397, 41.586281, 17.004309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388687, 41.339588, 17.165817>,  <37.550861, 41.191574, 17.262722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388687, 41.339588, 17.165817>,  <37.118397, 41.586281, 17.004309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388687, 41.339588, 17.165817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655152, -0.251396, 0.712443,
		-0.337880, -0.745951, -0.573928,
		0.675731, -0.616731, 0.403770,
		37.591408, 41.154568, 17.286947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661797, 40.966480, 17.241489>,  <37.118397, 41.586281, 17.004309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661797, 40.966480, 17.241489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014153, 40.954826, 17.430460>,  <37.225567, 40.947834, 17.543842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014153, 40.954826, 17.430460>,  <36.661797, 40.966480, 17.241489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014153, 40.954826, 17.430460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464328, -0.246859, 0.850565,
		0.091840, -0.968613, -0.230984,
		0.880888, -0.029136, 0.472426,
		37.278419, 40.946087, 17.572187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543594, 40.491734, 17.658381>,  <36.661797, 40.966480, 17.241489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543594, 40.491734, 17.658381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859993, 40.684277, 17.809443>,  <37.049831, 40.799801, 17.900080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859993, 40.684277, 17.809443>,  <36.543594, 40.491734, 17.658381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859993, 40.684277, 17.809443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333537, -0.178216, 0.925739,
		0.512911, -0.858218, 0.019581,
		0.790996, 0.481353, 0.377657,
		37.097290, 40.828682, 17.922739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811089, 40.047626, 18.147682>,  <36.543594, 40.491734, 17.658381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811089, 40.047626, 18.147682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947365, 40.410606, 18.246046>,  <37.029133, 40.628395, 18.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947365, 40.410606, 18.246046>,  <36.811089, 40.047626, 18.147682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947365, 40.410606, 18.246046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265166, -0.158196, 0.951137,
		0.902006, -0.389252, 0.186727,
		0.340693, 0.907445, 0.245910,
		37.049572, 40.682838, 18.319818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180756, 39.936123, 18.700197>,  <36.811089, 40.047626, 18.147682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180756, 39.936123, 18.700197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065968, 40.318504, 18.724848>,  <36.997097, 40.547935, 18.739637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065968, 40.318504, 18.724848>,  <37.180756, 39.936123, 18.700197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065968, 40.318504, 18.724848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353767, -0.165539, 0.920568,
		0.890224, 0.242371, 0.385690,
		-0.286966, 0.955956, 0.061624,
		36.979877, 40.605289, 18.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410793, 40.205822, 19.359245>,  <37.180756, 39.936123, 18.700197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410793, 40.205822, 19.359245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107681, 40.452301, 19.273390>,  <36.925812, 40.600189, 19.221876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107681, 40.452301, 19.273390>,  <37.410793, 40.205822, 19.359245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107681, 40.452301, 19.273390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314892, -0.057238, 0.947400,
		0.571496, 0.785513, 0.237408,
		-0.757784, 0.616193, -0.214640,
		36.880344, 40.637157, 19.208998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308132, 40.492485, 19.935757>,  <37.410793, 40.205822, 19.359245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308132, 40.492485, 19.935757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962242, 40.614841, 19.776417>,  <36.754707, 40.688255, 19.680813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962242, 40.614841, 19.776417>,  <37.308132, 40.492485, 19.935757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962242, 40.614841, 19.776417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434697, -0.058552, 0.898672,
		0.251569, 0.950265, 0.183600,
		-0.864726, 0.305888, -0.398347,
		36.702824, 40.706608, 19.656912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074135, 41.169781, 20.253477>,  <37.308132, 40.492485, 19.935757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074135, 41.169781, 20.253477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754959, 40.987133, 20.096102>,  <36.563454, 40.877544, 20.001677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754959, 40.987133, 20.096102>,  <37.074135, 41.169781, 20.253477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754959, 40.987133, 20.096102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395086, -0.096726, 0.913538,
		-0.455197, 0.884387, -0.103223,
		-0.797937, -0.456621, -0.393439,
		36.515579, 40.850147, 19.978069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465168, 41.512951, 20.614073>,  <37.074135, 41.169781, 20.253477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465168, 41.512951, 20.614073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363953, 41.142960, 20.500658>,  <36.303223, 40.920967, 20.432610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363953, 41.142960, 20.500658>,  <36.465168, 41.512951, 20.614073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363953, 41.142960, 20.500658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392108, -0.169873, 0.904099,
		-0.884435, 0.339946, -0.319706,
		-0.253035, -0.924976, -0.283536,
		36.288044, 40.865467, 20.415598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868088, 41.494698, 20.913025>,  <36.465168, 41.512951, 20.614073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868088, 41.494698, 20.913025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947155, 41.115391, 20.813648>,  <35.994595, 40.887806, 20.754023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947155, 41.115391, 20.813648>,  <35.868088, 41.494698, 20.913025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947155, 41.115391, 20.813648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433914, -0.311902, 0.845243,
		-0.879002, -0.059279, -0.473119,
		0.197672, -0.948263, -0.248440,
		36.006458, 40.830914, 20.739117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242290, 41.075527, 21.093189>,  <35.868088, 41.494698, 20.913025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242290, 41.075527, 21.093189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531647, 40.800331, 21.069960>,  <35.705261, 40.635212, 21.056023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531647, 40.800331, 21.069960>,  <35.242290, 41.075527, 21.093189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531647, 40.800331, 21.069960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409954, -0.495677, 0.765664,
		-0.555556, -0.530068, -0.640613,
		0.723391, -0.687991, -0.058073,
		35.748665, 40.593933, 21.052538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948586, 40.389759, 21.309534>,  <35.242290, 41.075527, 21.093189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948586, 40.389759, 21.309534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340763, 40.386433, 21.388184>,  <35.576069, 40.384438, 21.435373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340763, 40.386433, 21.388184>,  <34.948586, 40.389759, 21.309534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340763, 40.386433, 21.388184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185824, -0.368061, 0.911044,
		0.064797, -0.929764, -0.362408,
		0.980444, -0.008312, 0.196622,
		35.634895, 40.383938, 21.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092926, 39.712387, 21.686922>,  <34.948586, 40.389759, 21.309534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092926, 39.712387, 21.686922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416233, 39.939678, 21.748667>,  <35.610218, 40.076054, 21.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416233, 39.939678, 21.748667>,  <35.092926, 39.712387, 21.686922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416233, 39.939678, 21.748667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120877, -0.096448, 0.987971,
		0.576281, -0.817199, -0.009270,
		0.808263, 0.568229, 0.154362,
		35.658710, 40.110146, 21.794975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246841, 39.421043, 22.252436>,  <35.092926, 39.712387, 21.686922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246841, 39.421043, 22.252436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418171, 39.782288, 22.240290>,  <35.520969, 39.999035, 22.233002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418171, 39.782288, 22.240290>,  <35.246841, 39.421043, 22.252436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418171, 39.782288, 22.240290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055991, 0.007015, 0.998407,
		0.901888, -0.429344, -0.047561,
		0.428327, 0.903113, -0.030366,
		35.546669, 40.053223, 22.231180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847252, 39.259697, 22.539839>,  <35.246841, 39.421043, 22.252436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847252, 39.259697, 22.539839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778912, 39.652882, 22.566950>,  <35.737907, 39.888794, 22.583216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778912, 39.652882, 22.566950>,  <35.847252, 39.259697, 22.539839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778912, 39.652882, 22.566950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139664, -0.043934, 0.989224,
		0.975349, 0.178472, -0.129779,
		-0.170847, 0.982964, 0.067777,
		35.727657, 39.947769, 22.587282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499474, 39.585922, 22.716173>,  <35.847252, 39.259697, 22.539839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499474, 39.585922, 22.716173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188179, 39.810024, 22.829632>,  <36.001400, 39.944485, 22.897707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188179, 39.810024, 22.829632>,  <36.499474, 39.585922, 22.716173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188179, 39.810024, 22.829632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428281, 0.143197, 0.892228,
		0.459261, 0.815846, -0.351389,
		-0.778238, 0.560259, 0.283646,
		35.954708, 39.978104, 22.914726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775558, 40.165344, 23.021404>,  <36.499474, 39.585922, 22.716173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775558, 40.165344, 23.021404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404060, 40.108532, 23.158382>,  <36.181164, 40.074444, 23.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404060, 40.108532, 23.158382>,  <36.775558, 40.165344, 23.021404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404060, 40.108532, 23.158382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303383, 0.239715, 0.922223,
		-0.213071, 0.960398, -0.179544,
		-0.928741, -0.142028, 0.342445,
		36.125439, 40.065922, 23.261116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868122, 40.276726, 23.626081>,  <36.775558, 40.165344, 23.021404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868122, 40.276726, 23.626081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484943, 40.167953, 23.662725>,  <36.255035, 40.102692, 23.684711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484943, 40.167953, 23.662725>,  <36.868122, 40.276726, 23.626081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484943, 40.167953, 23.662725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095680, -0.001718, 0.995411,
		-0.270523, 0.962316, 0.027664,
		-0.957947, -0.271929, 0.091610,
		36.197559, 40.086376, 23.690208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489986, 40.839687, 24.021654>,  <36.868122, 40.276726, 23.626081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489986, 40.839687, 24.021654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262268, 40.514465, 24.070393>,  <36.125637, 40.319332, 24.099636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262268, 40.514465, 24.070393>,  <36.489986, 40.839687, 24.021654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262268, 40.514465, 24.070393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017388, 0.136264, 0.990520,
		-0.821951, 0.566014, -0.063437,
		-0.569292, -0.813056, 0.121844,
		36.091480, 40.270550, 24.106945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926239, 41.121780, 24.489283>,  <36.489986, 40.839687, 24.021654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926239, 41.121780, 24.489283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960430, 40.723675, 24.507761>,  <35.980946, 40.484810, 24.518848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960430, 40.723675, 24.507761>,  <35.926239, 41.121780, 24.489283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960430, 40.723675, 24.507761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083829, 0.039020, 0.995716,
		-0.992807, -0.088983, -0.080097,
		0.085477, -0.995269, 0.046198,
		35.986073, 40.425095, 24.521620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383770, 41.006596, 24.915535>,  <35.926239, 41.121780, 24.489283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383770, 41.006596, 24.915535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635056, 40.695473, 24.923254>,  <35.785828, 40.508801, 24.927885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635056, 40.695473, 24.923254>,  <35.383770, 41.006596, 24.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635056, 40.695473, 24.923254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159972, -0.104855, 0.981537,
		-0.761419, -0.619700, -0.190298,
		0.628212, -0.777803, 0.019296,
		35.823521, 40.462132, 24.929043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983593, 40.488571, 25.193445>,  <35.383770, 41.006596, 24.915535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983593, 40.488571, 25.193445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371708, 40.402016, 25.236740>,  <35.604576, 40.350082, 25.262716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371708, 40.402016, 25.236740>,  <34.983593, 40.488571, 25.193445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371708, 40.402016, 25.236740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171402, -0.299032, 0.938723,
		-0.170762, -0.929385, -0.327237,
		0.970290, -0.216387, 0.108235,
		35.662796, 40.337101, 25.269211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881145, 39.903267, 25.602146>,  <34.983593, 40.488571, 25.193445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881145, 39.903267, 25.602146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262829, 40.022648, 25.610186>,  <35.491840, 40.094276, 25.615009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262829, 40.022648, 25.610186>,  <34.881145, 39.903267, 25.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262829, 40.022648, 25.610186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075027, -0.303840, 0.949764,
		0.289567, -0.904769, -0.312319,
		0.954213, 0.298453, 0.020100,
		35.549091, 40.112183, 25.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291313, 39.321136, 25.800179>,  <34.881145, 39.903267, 25.602146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291313, 39.321136, 25.800179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530495, 39.633255, 25.873476>,  <35.674004, 39.820526, 25.917456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530495, 39.633255, 25.873476>,  <35.291313, 39.321136, 25.800179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530495, 39.633255, 25.873476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212281, -0.374627, 0.902547,
		0.772906, -0.500785, -0.389654,
		0.597957, 0.780300, 0.183245,
		35.709881, 39.867344, 25.928450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004242, 39.084629, 26.090246>,  <35.291313, 39.321136, 25.800179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004242, 39.084629, 26.090246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958599, 39.453381, 26.238367>,  <35.931213, 39.674629, 26.327240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958599, 39.453381, 26.238367>,  <36.004242, 39.084629, 26.090246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958599, 39.453381, 26.238367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358604, -0.309384, 0.880730,
		0.926489, 0.233293, -0.295284,
		-0.114112, 0.921876, 0.370301,
		35.924366, 39.729942, 26.349457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719223, 39.290451, 26.418129>,  <36.004242, 39.084629, 26.090246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719223, 39.290451, 26.418129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421947, 39.497261, 26.588007>,  <36.243584, 39.621346, 26.689934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421947, 39.497261, 26.588007>,  <36.719223, 39.290451, 26.418129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421947, 39.497261, 26.588007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280194, -0.335907, 0.899254,
		0.607591, 0.787309, 0.104775,
		-0.743185, 0.517022, 0.424693,
		36.198994, 39.652367, 26.715414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949669, 39.704556, 27.035828>,  <36.719223, 39.290451, 26.418129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949669, 39.704556, 27.035828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553596, 39.711418, 27.091322>,  <36.315952, 39.715538, 27.124619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553596, 39.711418, 27.091322>,  <36.949669, 39.704556, 27.035828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553596, 39.711418, 27.091322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121632, -0.383403, 0.915537,
		0.068902, 0.923422, 0.377551,
		-0.990181, 0.017160, 0.138735,
		36.256542, 39.716568, 27.132942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861481, 39.767853, 27.766222>,  <36.949669, 39.704556, 27.035828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861481, 39.767853, 27.766222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498077, 39.667305, 27.632702>,  <36.280033, 39.606976, 27.552589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498077, 39.667305, 27.632702>,  <36.861481, 39.767853, 27.766222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498077, 39.667305, 27.632702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153041, -0.543157, 0.825566,
		-0.388828, 0.801120, 0.454994,
		-0.908510, -0.251371, -0.333799,
		36.225525, 39.591892, 27.532562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410973, 39.962494, 28.329269>,  <36.861481, 39.767853, 27.766222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410973, 39.962494, 28.329269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242466, 39.683022, 28.097965>,  <36.141361, 39.515339, 27.959183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242466, 39.683022, 28.097965>,  <36.410973, 39.962494, 28.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242466, 39.683022, 28.097965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042495, -0.621689, 0.782111,
		-0.905941, 0.354050, 0.232206,
		-0.421266, -0.698678, -0.578259,
		36.116085, 39.473419, 27.924488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650230, 39.652512, 28.454247>,  <36.410973, 39.962494, 28.329269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650230, 39.652512, 28.454247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917385, 39.389404, 28.314953>,  <36.077679, 39.231541, 28.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917385, 39.389404, 28.314953>,  <35.650230, 39.652512, 28.454247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917385, 39.389404, 28.314953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048010, -0.504992, 0.861788,
		-0.742716, -0.558855, -0.368855,
		0.667883, -0.657772, -0.348235,
		36.117752, 39.192074, 28.210482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299831, 39.018593, 28.365595>,  <35.650230, 39.652512, 28.454247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299831, 39.018593, 28.365595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693459, 38.976704, 28.423075>,  <35.929634, 38.951569, 28.457563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693459, 38.976704, 28.423075>,  <35.299831, 39.018593, 28.365595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693459, 38.976704, 28.423075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177787, -0.592323, 0.785841,
		0.002822, -0.798866, -0.601502,
		0.984065, -0.104721, 0.143700,
		35.988678, 38.945286, 28.466185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424152, 38.300308, 28.494289>,  <35.299831, 39.018593, 28.365595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424152, 38.300308, 28.494289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704273, 38.532410, 28.660608>,  <35.872345, 38.671669, 28.760399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704273, 38.532410, 28.660608>,  <35.424152, 38.300308, 28.494289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704273, 38.532410, 28.660608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048074, -0.619483, 0.783536,
		0.712230, -0.528720, -0.461718,
		0.700298, 0.580255, 0.415797,
		35.914364, 38.706486, 28.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643459, 37.983540, 29.204386>,  <35.424152, 38.300308, 28.494289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643459, 37.983540, 29.204386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909199, 38.272873, 29.129103>,  <36.068642, 38.446472, 29.083933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909199, 38.272873, 29.129103>,  <35.643459, 37.983540, 29.204386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909199, 38.272873, 29.129103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524136, -0.271352, 0.807248,
		0.532840, -0.634944, -0.559399,
		0.664351, 0.723336, -0.188210,
		36.108505, 38.489872, 29.072639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411652, 37.740356, 29.024603>,  <35.643459, 37.983540, 29.204386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411652, 37.740356, 29.024603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397991, 38.098999, 29.201208>,  <36.389793, 38.314186, 29.307171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397991, 38.098999, 29.201208>,  <36.411652, 37.740356, 29.024603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397991, 38.098999, 29.201208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668285, -0.307992, 0.677153,
		0.743121, 0.318182, -0.588670,
		-0.034152, 0.896605, 0.441511,
		36.387745, 38.367981, 29.333662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100620, 38.086060, 29.106619>,  <36.411652, 37.740356, 29.024603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100620, 38.086060, 29.106619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828964, 38.192142, 29.380388>,  <36.665970, 38.255791, 29.544651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828964, 38.192142, 29.380388>,  <37.100620, 38.086060, 29.106619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828964, 38.192142, 29.380388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563547, -0.409056, 0.717696,
		0.470305, 0.873121, 0.128350,
		-0.679137, 0.265205, 0.684426,
		36.625221, 38.271706, 29.585716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539139, 38.390114, 29.622168>,  <37.100620, 38.086060, 29.106619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539139, 38.390114, 29.622168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189995, 38.254616, 29.762665>,  <36.980507, 38.173317, 29.846962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189995, 38.254616, 29.762665>,  <37.539139, 38.390114, 29.622168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189995, 38.254616, 29.762665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468315, -0.379274, 0.798018,
		-0.137105, 0.861049, 0.489691,
		-0.872859, -0.338742, 0.351241,
		36.928139, 38.152992, 29.868036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468063, 38.678661, 30.309013>,  <37.539139, 38.390114, 29.622168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468063, 38.678661, 30.309013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273376, 38.330666, 30.277483>,  <37.156563, 38.121868, 30.258566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273376, 38.330666, 30.277483>,  <37.468063, 38.678661, 30.309013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273376, 38.330666, 30.277483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538635, -0.369927, 0.756985,
		-0.687732, 0.325983, 0.648660,
		-0.486721, -0.869994, -0.078825,
		37.127361, 38.069668, 30.253836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370937, 38.417049, 30.974178>,  <37.468063, 38.678661, 30.309013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370937, 38.417049, 30.974178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362915, 38.103882, 30.725456>,  <37.358101, 37.915981, 30.576223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362915, 38.103882, 30.725456>,  <37.370937, 38.417049, 30.974178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362915, 38.103882, 30.725456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633970, -0.490868, 0.597604,
		-0.773098, -0.382219, 0.506190,
		-0.020057, -0.782915, -0.621805,
		37.356899, 37.869007, 30.538916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778778, 38.955639, 31.205509>,  <37.370937, 38.417049, 30.974178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778778, 38.955639, 31.205509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115585, 39.078964, 31.028448>,  <38.317669, 39.152962, 30.922211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115585, 39.078964, 31.028448>,  <37.778778, 38.955639, 31.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115585, 39.078964, 31.028448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492542, 0.104743, -0.863963,
		-0.220010, 0.945500, 0.240055,
		0.842020, 0.308317, -0.442654,
		38.368191, 39.171459, 30.895653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459026, 39.448082, 30.780338>,  <37.778778, 38.955639, 31.205509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459026, 39.448082, 30.780338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493317, 39.842628, 30.836535>,  <37.513889, 40.079357, 30.870253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493317, 39.842628, 30.836535>,  <37.459026, 39.448082, 30.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493317, 39.842628, 30.836535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989050, 0.067247, 0.131373,
		0.120134, -0.150214, 0.981327,
		0.085725, 0.986364, 0.140491,
		37.519035, 40.138538, 30.878681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103382, 39.533989, 31.342112>,  <37.459026, 39.448082, 30.780338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103382, 39.533989, 31.342112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100506, 39.865990, 31.119026>,  <37.098778, 40.065189, 30.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100506, 39.865990, 31.119026>,  <37.103382, 39.533989, 31.342112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100506, 39.865990, 31.119026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993117, 0.059270, 0.101018,
		0.116901, 0.554600, 0.823865,
		-0.007194, 0.830004, -0.557712,
		37.098347, 40.114990, 30.951714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677723, 40.092564, 31.644630>,  <37.103382, 39.533989, 31.342112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677723, 40.092564, 31.644630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672791, 40.180012, 31.254337>,  <36.669830, 40.232483, 31.020163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672791, 40.180012, 31.254337>,  <36.677723, 40.092564, 31.644630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672791, 40.180012, 31.254337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971351, 0.228985, 0.063579,
		0.237328, 0.948561, 0.209539,
		-0.012328, 0.218625, -0.975731,
		36.669094, 40.245598, 30.961618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419746, 40.744736, 31.537621>,  <36.677723, 40.092564, 31.644630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419746, 40.744736, 31.537621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336426, 40.512070, 31.223099>,  <36.286434, 40.372471, 31.034386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336426, 40.512070, 31.223099>,  <36.419746, 40.744736, 31.537621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336426, 40.512070, 31.223099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948910, 0.315013, 0.018351,
		0.237022, 0.749954, -0.617567,
		-0.208304, -0.581666, -0.786304,
		36.273933, 40.337570, 30.987207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926849, 41.143539, 31.161890>,  <36.419746, 40.744736, 31.537621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926849, 41.143539, 31.161890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878494, 40.762978, 31.048607>,  <35.849480, 40.534641, 30.980637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878494, 40.762978, 31.048607>,  <35.926849, 41.143539, 31.161890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878494, 40.762978, 31.048607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986970, 0.145722, -0.068237,
		0.106191, 0.271267, -0.956628,
		-0.120891, -0.951409, -0.283207,
		35.842228, 40.477554, 30.963644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302837, 41.163071, 31.092382>,  <35.926849, 41.143539, 31.161890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302837, 41.163071, 31.092382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304825, 40.795727, 30.934095>,  <35.306019, 40.575321, 30.839123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304825, 40.795727, 30.934095>,  <35.302837, 41.163071, 31.092382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304825, 40.795727, 30.934095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998779, 0.014888, -0.047104,
		0.049150, 0.395469, -0.917163,
		0.004973, -0.918359, -0.395718,
		35.306316, 40.520218, 30.815380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057587, 41.064743, 30.318563>,  <35.302837, 41.163071, 31.092382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057587, 41.064743, 30.318563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989170, 40.714478, 30.499212>,  <34.948120, 40.504318, 30.607601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989170, 40.714478, 30.499212>,  <35.057587, 41.064743, 30.318563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989170, 40.714478, 30.499212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943679, 0.013831, -0.330574,
		0.283224, -0.482727, -0.828709,
		-0.171039, -0.875662, 0.451622,
		34.937859, 40.451778, 30.634699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657219, 40.734741, 29.855049>,  <35.057587, 41.064743, 30.318563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657219, 40.734741, 29.855049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575603, 40.580009, 30.214767>,  <34.526634, 40.487171, 30.430597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575603, 40.580009, 30.214767>,  <34.657219, 40.734741, 29.855049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575603, 40.580009, 30.214767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968096, 0.216220, -0.126642,
		-0.145457, -0.896444, -0.418606,
		-0.204038, -0.386829, 0.899294,
		34.514393, 40.463959, 30.484556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087730, 40.374210, 29.786520>,  <34.657219, 40.734741, 29.855049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087730, 40.374210, 29.786520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142712, 40.499886, 30.162264>,  <34.175701, 40.575291, 30.387711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142712, 40.499886, 30.162264>,  <34.087730, 40.374210, 29.786520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142712, 40.499886, 30.162264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939722, 0.341137, 0.023403,
		-0.313097, -0.885953, 0.342136,
		0.137449, 0.314186, 0.939359,
		34.183945, 40.594143, 30.444071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477154, 40.191692, 30.283087>,  <34.087730, 40.374210, 29.786520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477154, 40.191692, 30.283087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640751, 40.525841, 30.429987>,  <33.738911, 40.726330, 30.518127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640751, 40.525841, 30.429987>,  <33.477154, 40.191692, 30.283087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640751, 40.525841, 30.429987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909007, 0.337596, 0.244409,
		0.080190, -0.433796, 0.897435,
		0.408994, 0.835374, 0.367252,
		33.763451, 40.776455, 30.540163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916161, 40.629604, 30.599751>,  <33.477154, 40.191692, 30.283087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916161, 40.629604, 30.599751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561489, 40.692970, 30.425989>,  <32.348686, 40.730991, 30.321733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561489, 40.692970, 30.425989>,  <32.916161, 40.629604, 30.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561489, 40.692970, 30.425989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450660, -0.506304, 0.735229,
		-0.103468, 0.847679, 0.520321,
		-0.886679, 0.158416, -0.434401,
		32.295486, 40.740494, 30.295670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370438, 40.904816, 31.111013>,  <32.916161, 40.629604, 30.599751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370438, 40.904816, 31.111013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197994, 40.681534, 30.827448>,  <32.094528, 40.547565, 30.657309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197994, 40.681534, 30.827448>,  <32.370438, 40.904816, 31.111013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197994, 40.681534, 30.827448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383267, -0.597987, 0.703930,
		-0.816856, 0.575172, 0.043856,
		-0.431107, -0.558201, -0.708914,
		32.068661, 40.514072, 30.614773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102501, 40.908230, 31.432808>,  <32.370438, 40.904816, 31.111013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102501, 40.908230, 31.432808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097778, 41.040054, 31.810432>,  <33.094944, 41.119148, 32.037006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097778, 41.040054, 31.810432>,  <33.102501, 40.908230, 31.432808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097778, 41.040054, 31.810432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795726, 0.574844, -0.190721,
		-0.605542, 0.748960, -0.269032,
		-0.011809, 0.329565, 0.944059,
		33.094234, 41.138924, 32.093651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218288, 41.698021, 31.416914>,  <33.102501, 40.908230, 31.432808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218288, 41.698021, 31.416914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318928, 41.511269, 31.756025>,  <33.379311, 41.399220, 31.959492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318928, 41.511269, 31.756025>,  <33.218288, 41.698021, 31.416914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318928, 41.511269, 31.756025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931490, 0.354598, -0.081159,
		-0.262729, 0.810115, 0.524106,
		0.251595, -0.466877, 0.847777,
		33.394405, 41.371204, 32.010357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724400, 41.796673, 31.021645>,  <33.218288, 41.698021, 31.416914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724400, 41.796673, 31.021645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606476, 41.416798, 31.063951>,  <33.535721, 41.188873, 31.089334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606476, 41.416798, 31.063951>,  <33.724400, 41.796673, 31.021645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606476, 41.416798, 31.063951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955542, -0.293615, 0.027012,
		0.005402, 0.109027, 0.994024,
		-0.294806, -0.949686, 0.105766,
		33.518036, 41.131893, 31.095682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156883, 41.389221, 31.567434>,  <33.724400, 41.796673, 31.021645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156883, 41.389221, 31.567434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024632, 41.105419, 31.318508>,  <33.945278, 40.935139, 31.169151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024632, 41.105419, 31.318508>,  <34.156883, 41.389221, 31.567434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024632, 41.105419, 31.318508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874577, -0.478159, 0.080495,
		-0.354678, -0.517650, 0.778615,
		-0.330634, -0.709508, -0.622318,
		33.925442, 40.892567, 31.131813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404556, 40.704567, 31.748396>,  <34.156883, 41.389221, 31.567434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404556, 40.704567, 31.748396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295361, 40.629276, 31.371027>,  <34.229843, 40.584103, 31.144606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295361, 40.629276, 31.371027>,  <34.404556, 40.704567, 31.748396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295361, 40.629276, 31.371027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863543, -0.480161, -0.154073,
		-0.423995, -0.856748, 0.293619,
		-0.272986, -0.188226, -0.943424,
		34.213467, 40.572807, 31.087999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336956, 39.968395, 31.678507>,  <34.404556, 40.704567, 31.748396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336956, 39.968395, 31.678507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394852, 40.094166, 31.303232>,  <34.429588, 40.169628, 31.078068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394852, 40.094166, 31.303232>,  <34.336956, 39.968395, 31.678507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394852, 40.094166, 31.303232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817500, -0.572176, -0.065640,
		-0.557445, -0.757465, -0.339855,
		0.144737, 0.314422, -0.938184,
		34.438274, 40.188492, 31.021776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706249, 39.416355, 31.453901>,  <34.336956, 39.968395, 31.678507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706249, 39.416355, 31.453901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768780, 39.722729, 31.204451>,  <34.806297, 39.906551, 31.054781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768780, 39.722729, 31.204451>,  <34.706249, 39.416355, 31.453901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768780, 39.722729, 31.204451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952325, -0.284360, -0.110524,
		-0.261988, -0.576616, -0.773871,
		0.156329, 0.765933, -0.623625,
		34.815678, 39.952507, 31.017363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333839, 39.180542, 31.063688>,  <34.706249, 39.416355, 31.453901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333839, 39.180542, 31.063688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308640, 39.567432, 30.965292>,  <35.293518, 39.799564, 30.906254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308640, 39.567432, 30.965292>,  <35.333839, 39.180542, 31.063688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308640, 39.567432, 30.965292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895854, -0.053822, -0.441078,
		-0.439860, -0.248161, -0.863099,
		-0.063004, 0.967222, -0.245990,
		35.289738, 39.857597, 30.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644669, 39.317627, 30.354979>,  <35.333839, 39.180542, 31.063688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644669, 39.317627, 30.354979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713528, 39.663372, 30.543976>,  <35.754841, 39.870819, 30.657373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713528, 39.663372, 30.543976>,  <35.644669, 39.317627, 30.354979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713528, 39.663372, 30.543976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907940, 0.046838, -0.416475,
		-0.382114, 0.500690, -0.776723,
		0.172144, 0.864359, 0.472494,
		35.765171, 39.922680, 30.685724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050247, 39.727211, 29.888611>,  <35.644669, 39.317627, 30.354979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050247, 39.727211, 29.888611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094837, 39.917568, 30.237576>,  <36.121593, 40.031780, 30.446955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094837, 39.917568, 30.237576>,  <36.050247, 39.727211, 29.888611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094837, 39.917568, 30.237576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948611, 0.210666, -0.236129,
		-0.296159, 0.853901, -0.427951,
		0.111477, 0.475891, 0.872411,
		36.128281, 40.060337, 30.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469200, 40.117584, 29.561958>,  <36.050247, 39.727211, 29.888611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469200, 40.117584, 29.561958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470634, 40.174946, 29.957821>,  <36.471497, 40.209362, 30.195339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470634, 40.174946, 29.957821>,  <36.469200, 40.117584, 29.561958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470634, 40.174946, 29.957821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842545, 0.532617, -0.080234,
		-0.538614, 0.834119, -0.118916,
		0.003588, 0.143408, 0.989657,
		36.471710, 40.217968, 30.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056099, 40.629887, 29.650265>,  <36.469200, 40.117584, 29.561958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056099, 40.629887, 29.650265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951511, 40.557491, 30.029501>,  <36.888760, 40.514053, 30.257044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951511, 40.557491, 30.029501>,  <37.056099, 40.629887, 29.650265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951511, 40.557491, 30.029501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884070, 0.349307, 0.310491,
		-0.387372, 0.919362, 0.068677,
		-0.261465, -0.180991, 0.948092,
		36.873074, 40.503193, 30.313929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179989, 41.115204, 30.103556>,  <37.056099, 40.629887, 29.650265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179989, 41.115204, 30.103556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128593, 40.838791, 30.388083>,  <37.097755, 40.672943, 30.558798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128593, 40.838791, 30.388083>,  <37.179989, 41.115204, 30.103556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128593, 40.838791, 30.388083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965825, 0.075617, 0.247918,
		-0.225106, 0.718861, 0.657698,
		-0.128485, -0.691029, 0.711316,
		37.090050, 40.631481, 30.601477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319016, 41.433487, 30.794014>,  <37.179989, 41.115204, 30.103556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319016, 41.433487, 30.794014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403690, 41.043358, 30.819103>,  <37.454494, 40.809280, 30.834156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403690, 41.043358, 30.819103>,  <37.319016, 41.433487, 30.794014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403690, 41.043358, 30.819103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938563, 0.220769, 0.265256,
		-0.272557, 0.002717, 0.962136,
		0.211689, -0.975322, 0.062722,
		37.467197, 40.750763, 30.837919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896626, 41.417923, 31.246225>,  <37.319016, 41.433487, 30.794014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896626, 41.417923, 31.246225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934418, 41.044304, 31.108452>,  <37.957092, 40.820133, 31.025787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934418, 41.044304, 31.108452>,  <37.896626, 41.417923, 31.246225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934418, 41.044304, 31.108452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954644, -0.013130, 0.297460,
		-0.282364, -0.356916, 0.890439,
		0.094477, -0.934044, -0.344435,
		37.962761, 40.764091, 31.005121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114761, 40.964081, 31.731264>,  <37.896626, 41.417923, 31.246225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114761, 40.964081, 31.731264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 40.811420, 31.398203>,  <38.371586, 40.719822, 31.198366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 40.811420, 31.398203>,  <38.114761, 40.964081, 31.731264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275276, 40.811420, 31.398203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910879, 0.070719, 0.406568,
		-0.096285, -0.921595, 0.376020,
		0.401283, -0.381655, -0.832653,
		38.395660, 40.696922, 31.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500698, 40.208527, 31.723436>,  <38.114761, 40.964081, 31.731264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500698, 40.208527, 31.723436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670872, 40.455605, 31.458872>,  <38.772976, 40.603851, 31.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670872, 40.455605, 31.458872>,  <38.500698, 40.208527, 31.723436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670872, 40.455605, 31.458872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851724, -0.026244, 0.523333,
		0.305900, -0.785982, -0.537268,
		0.425430, 0.617692, -0.661412,
		38.798500, 40.640911, 31.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151581, 40.017120, 31.426886>,  <38.500698, 40.208527, 31.723436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151581, 40.017120, 31.426886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127159, 40.415810, 31.448076>,  <39.112507, 40.655025, 31.460791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127159, 40.415810, 31.448076>,  <39.151581, 40.017120, 31.426886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127159, 40.415810, 31.448076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781760, 0.014750, 0.623405,
		0.620584, 0.079473, -0.780102,
		-0.061050, 0.996728, 0.052976,
		39.108845, 40.714828, 31.463968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199711, 39.744045, 32.204197>,  <39.151581, 40.017120, 31.426886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199711, 39.744045, 32.204197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339275, 40.071571, 32.021858>,  <39.423016, 40.268089, 31.912455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339275, 40.071571, 32.021858>,  <39.199711, 39.744045, 32.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339275, 40.071571, 32.021858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057656, 0.504250, 0.861631,
		0.935379, -0.274353, 0.223150,
		0.348915, 0.818817, -0.455847,
		39.443951, 40.317215, 31.885105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865490, 39.791676, 32.453018>,  <39.199711, 39.744045, 32.204197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865490, 39.791676, 32.453018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633999, 40.114758, 32.407951>,  <39.495106, 40.308605, 32.380913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633999, 40.114758, 32.407951>,  <39.865490, 39.791676, 32.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633999, 40.114758, 32.407951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049749, 0.172862, 0.983689,
		0.814004, 0.563680, -0.140222,
		-0.578725, 0.807703, -0.112668,
		39.460381, 40.357067, 32.374149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940159, 39.802887, 33.291294>,  <39.865490, 39.791676, 32.453018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940159, 39.802887, 33.291294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121937, 39.452812, 33.357658>,  <40.231003, 39.242767, 33.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121937, 39.452812, 33.357658>,  <39.940159, 39.802887, 33.291294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121937, 39.452812, 33.357658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025349, -0.198887, -0.979694,
		0.890412, 0.441016, -0.112569,
		0.454449, -0.875185, 0.165912,
		40.258270, 39.190258, 33.407433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465805, 39.744400, 32.905739>,  <39.940159, 39.802887, 33.291294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465805, 39.744400, 32.905739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350384, 39.364433, 32.953743>,  <40.281132, 39.136456, 32.982544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350384, 39.364433, 32.953743>,  <40.465805, 39.744400, 32.905739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350384, 39.364433, 32.953743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289539, -0.206044, -0.934726,
		0.912636, -0.234969, 0.334491,
		-0.288552, -0.949913, 0.120011,
		40.263817, 39.079460, 32.989746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772808, 39.874825, 33.556927>,  <40.465805, 39.744400, 32.905739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772808, 39.874825, 33.556927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821636, 40.019756, 33.926537>,  <40.850933, 40.106716, 34.148300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821636, 40.019756, 33.926537>,  <40.772808, 39.874825, 33.556927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821636, 40.019756, 33.926537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500333, -0.826502, 0.257995,
		0.857185, 0.430825, -0.282177,
		0.122069, 0.362332, 0.924021,
		40.858257, 40.128456, 34.203743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536434, 39.750614, 33.714451>,  <40.772808, 39.874825, 33.556927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536434, 39.750614, 33.714451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288975, 39.764523, 34.028408>,  <41.140499, 39.772865, 34.216782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288975, 39.764523, 34.028408>,  <41.536434, 39.750614, 33.714451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288975, 39.764523, 34.028408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473657, -0.780549, 0.407913,
		0.626831, 0.624127, 0.466420,
		-0.618653, 0.034769, 0.784895,
		41.103378, 39.774952, 34.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922390, 39.755806, 34.287766>,  <41.536434, 39.750614, 33.714451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922390, 39.755806, 34.287766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561890, 39.593307, 34.348053>,  <41.345589, 39.495808, 34.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561890, 39.593307, 34.348053>,  <41.922390, 39.755806, 34.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561890, 39.593307, 34.348053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433076, -0.833350, 0.343472,
		-0.013934, 0.374825, 0.926991,
		-0.901249, -0.406244, 0.150716,
		41.291515, 39.471436, 34.393269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865772, 39.643650, 35.074596>,  <41.922390, 39.755806, 34.287766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865772, 39.643650, 35.074596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716820, 39.425388, 34.774303>,  <41.627449, 39.294434, 34.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716820, 39.425388, 34.774303>,  <41.865772, 39.643650, 35.074596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716820, 39.425388, 34.774303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615643, -0.750544, 0.240138,
		-0.694487, -0.372757, 0.615418,
		-0.372386, -0.545651, -0.750729,
		41.605103, 39.261692, 34.549084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587193, 38.936539, 35.199383>,  <41.865772, 39.643650, 35.074596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587193, 38.936539, 35.199383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734081, 38.934319, 34.827335>,  <41.822216, 38.932987, 34.604107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734081, 38.934319, 34.827335>,  <41.587193, 38.936539, 35.199383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734081, 38.934319, 34.827335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575913, -0.783883, 0.232061,
		-0.730390, -0.620884, -0.284664,
		0.367227, -0.005554, -0.930115,
		41.844250, 38.932652, 34.548302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587814, 38.225693, 35.023281>,  <41.587193, 38.936539, 35.199383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587814, 38.225693, 35.023281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836361, 38.381279, 34.751217>,  <41.985489, 38.474632, 34.587978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836361, 38.381279, 34.751217>,  <41.587814, 38.225693, 35.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836361, 38.381279, 34.751217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498915, -0.865759, -0.039317,
		-0.604144, -0.314910, -0.732012,
		0.621364, 0.388965, -0.680157,
		42.022770, 38.497967, 34.547169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717869, 37.683975, 34.615730>,  <41.587814, 38.225693, 35.023281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717869, 37.683975, 34.615730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010204, 37.941853, 34.526073>,  <42.185608, 38.096581, 34.472279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010204, 37.941853, 34.526073>,  <41.717869, 37.683975, 34.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010204, 37.941853, 34.526073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618383, -0.764420, -0.182387,
		-0.288920, -0.005307, -0.957339,
		0.730841, 0.644697, -0.224137,
		42.229458, 38.135262, 34.458832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973316, 37.499008, 33.967110>,  <41.717869, 37.683975, 34.615730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973316, 37.499008, 33.967110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252533, 37.688122, 34.182228>,  <42.420063, 37.801590, 34.311298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252533, 37.688122, 34.182228>,  <41.973316, 37.499008, 33.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252533, 37.688122, 34.182228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635810, -0.754696, -0.161800,
		0.329375, 0.454877, -0.827405,
		0.698038, 0.472780, 0.537794,
		42.461945, 37.829956, 34.343567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618248, 37.576832, 33.593674>,  <41.973316, 37.499008, 33.967110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618248, 37.576832, 33.593674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712265, 37.589828, 33.982250>,  <42.768677, 37.597626, 34.215397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712265, 37.589828, 33.982250>,  <42.618248, 37.576832, 33.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712265, 37.589828, 33.982250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859135, -0.474365, -0.192006,
		0.454578, 0.879729, -0.139414,
		0.235046, 0.032493, 0.971441,
		42.782780, 37.599575, 34.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232975, 37.874023, 33.761395>,  <42.618248, 37.576832, 33.593674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232975, 37.874023, 33.761395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234943, 37.597240, 34.050163>,  <43.236126, 37.431171, 34.223427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234943, 37.597240, 34.050163>,  <43.232975, 37.874023, 33.761395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234943, 37.597240, 34.050163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965722, -0.184080, -0.183018,
		0.259532, 0.698080, 0.667328,
		0.004920, -0.691953, 0.721926,
		43.236420, 37.389656, 34.266743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816498, 38.041252, 34.176662>,  <43.232975, 37.874023, 33.761395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816498, 38.041252, 34.176662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697876, 37.660240, 34.204189>,  <43.626705, 37.431633, 34.220703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697876, 37.660240, 34.204189>,  <43.816498, 38.041252, 34.176662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697876, 37.660240, 34.204189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939082, -0.303954, -0.160426,
		0.173728, 0.017047, 0.984646,
		-0.296553, -0.952534, 0.068814,
		43.608910, 37.374481, 34.224834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418774, 37.658440, 33.975994>,  <43.816498, 38.041252, 34.176662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418774, 37.658440, 33.975994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150856, 37.369709, 34.045677>,  <43.990105, 37.196472, 34.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150856, 37.369709, 34.045677>,  <44.418774, 37.658440, 33.975994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150856, 37.369709, 34.045677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688978, -0.691620, -0.216729,
		0.276929, -0.025135, 0.960562,
		-0.669791, -0.721825, 0.174212,
		43.949921, 37.153160, 34.097942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055401, 37.245090, 33.899734>,  <44.418774, 37.658440, 33.975994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055401, 37.245090, 33.899734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700977, 37.059753, 33.893799>,  <44.488323, 36.948551, 33.890236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700977, 37.059753, 33.893799>,  <45.055401, 37.245090, 33.899734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700977, 37.059753, 33.893799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462438, -0.885669, 0.041746,
		-0.032487, 0.030126, 0.999018,
		-0.886056, -0.463340, -0.014842,
		44.435162, 36.920750, 33.889347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610729, 37.423481, 34.431416>,  <45.055401, 37.245090, 33.899734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610729, 37.423481, 34.431416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535843, 37.761646, 34.231323>,  <45.490913, 37.964546, 34.111267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535843, 37.761646, 34.231323>,  <45.610729, 37.423481, 34.431416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535843, 37.761646, 34.231323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324287, -0.427491, -0.843854,
		-0.927249, -0.320196, -0.194125,
		-0.187212, 0.845415, -0.500226,
		45.479679, 38.015270, 34.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275616, 37.196800, 35.016518>,  <45.610729, 37.423481, 34.431416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275616, 37.196800, 35.016518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180267, 36.808472, 35.026958>,  <45.123058, 36.575474, 35.033222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180267, 36.808472, 35.026958>,  <45.275616, 37.196800, 35.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180267, 36.808472, 35.026958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970633, -0.237260, 0.039743,
		-0.032389, 0.034814, 0.998869,
		-0.238375, -0.970822, 0.026107,
		45.108753, 36.517223, 35.034790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530228, 36.907757, 35.598030>,  <45.275616, 37.196800, 35.016518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530228, 36.907757, 35.598030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491180, 36.663052, 35.284031>,  <45.467751, 36.516228, 35.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491180, 36.663052, 35.284031>,  <45.530228, 36.907757, 35.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491180, 36.663052, 35.284031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980529, -0.194164, 0.029378,
		-0.170391, -0.766844, 0.618803,
		-0.097622, -0.611760, -0.784996,
		45.461895, 36.479523, 35.048531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550629, 36.149620, 35.683346>,  <45.530228, 36.907757, 35.598030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550629, 36.149620, 35.683346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719227, 36.267365, 35.340256>,  <45.820385, 36.338013, 35.134403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719227, 36.267365, 35.340256>,  <45.550629, 36.149620, 35.683346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719227, 36.267365, 35.340256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859459, -0.431377, 0.274308,
		-0.289256, -0.852799, -0.434816,
		0.421499, 0.294361, -0.857724,
		45.845676, 36.355671, 35.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729610, 35.554089, 35.276752>,  <45.550629, 36.149620, 35.683346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729610, 35.554089, 35.276752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971909, 35.867153, 35.219460>,  <46.117287, 36.054993, 35.185081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971909, 35.867153, 35.219460>,  <45.729610, 35.554089, 35.276752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971909, 35.867153, 35.219460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795460, -0.591666, 0.131051,
		0.017822, -0.193321, -0.980974,
		0.605744, 0.782661, -0.143234,
		46.153633, 36.101952, 35.176491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869270, 35.654030, 34.619495>,  <45.729610, 35.554089, 35.276752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869270, 35.654030, 34.619495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131260, 35.737118, 34.910110>,  <46.288452, 35.786972, 35.084480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131260, 35.737118, 34.910110>,  <45.869270, 35.654030, 34.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131260, 35.737118, 34.910110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495375, -0.844083, -0.205252,
		0.570625, 0.494345, -0.655751,
		0.654974, 0.207720, 0.726541,
		46.327751, 35.799435, 35.128071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473015, 35.668095, 34.327057>,  <45.869270, 35.654030, 34.619495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473015, 35.668095, 34.327057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532448, 35.558453, 34.707119>,  <46.568108, 35.492668, 34.935154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532448, 35.558453, 34.707119>,  <46.473015, 35.668095, 34.327057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532448, 35.558453, 34.707119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588637, -0.747543, -0.307711,
		0.794624, 0.605016, 0.050276,
		0.148587, -0.274109, 0.950151,
		46.577023, 35.476219, 34.992165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134071, 35.652542, 34.491123>,  <46.473015, 35.668095, 34.327057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134071, 35.652542, 34.491123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029297, 35.390759, 34.774834>,  <46.966431, 35.233688, 34.945061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029297, 35.390759, 34.774834>,  <47.134071, 35.652542, 34.491123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029297, 35.390759, 34.774834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887492, -0.452071, -0.089383,
		0.379141, 0.606063, 0.699242,
		-0.261935, -0.654461, 0.709275,
		46.950718, 35.194420, 34.987617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.688099, 35.646938, 34.980656>,  <47.134071, 35.652542, 34.491123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.688099, 35.646938, 34.980656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492420, 35.298580, 34.961777>,  <47.375015, 35.089565, 34.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492420, 35.298580, 34.961777>,  <47.688099, 35.646938, 34.980656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492420, 35.298580, 34.961777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866260, -0.478871, -0.142393,
		0.101410, -0.110540, 0.988684,
		-0.489193, -0.870898, -0.047194,
		47.345661, 35.037312, 34.947620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.048649, 35.199375, 35.383045>,  <47.688099, 35.646938, 34.980656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.048649, 35.199375, 35.383045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841175, 35.016865, 35.093830>,  <47.716690, 34.907360, 34.920303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841175, 35.016865, 35.093830>,  <48.048649, 35.199375, 35.383045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.841175, 35.016865, 35.093830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774560, -0.608819, -0.171452,
		-0.361967, -0.648963, 0.669199,
		-0.518687, -0.456275, -0.723033,
		47.685570, 34.879982, 34.876919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.572777, 37.361019, 17.948317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181522, 37.444038, 17.943069>,  <34.946770, 37.493851, 17.939920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181522, 37.444038, 17.943069>,  <35.572777, 37.361019, 17.948317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181522, 37.444038, 17.943069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059129, -0.217083, 0.974361,
		0.199377, 0.953834, 0.224609,
		-0.978137, 0.207546, -0.013118,
		34.888081, 37.506302, 17.939135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438190, 37.598396, 18.620935>,  <35.572777, 37.361019, 17.948317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438190, 37.598396, 18.620935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077415, 37.514458, 18.469955>,  <34.860950, 37.464092, 18.379368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077415, 37.514458, 18.469955>,  <35.438190, 37.598396, 18.620935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077415, 37.514458, 18.469955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346155, -0.171314, 0.922403,
		-0.258229, 0.962608, 0.081874,
		-0.901939, -0.209850, -0.377450,
		34.806835, 37.451504, 18.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965065, 37.962040, 19.114319>,  <35.438190, 37.598396, 18.620935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965065, 37.962040, 19.114319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768135, 37.678143, 18.912771>,  <34.649975, 37.507805, 18.791843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768135, 37.678143, 18.912771>,  <34.965065, 37.962040, 19.114319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768135, 37.678143, 18.912771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435319, -0.300508, 0.848641,
		-0.753730, 0.637154, -0.161014,
		-0.492329, -0.709739, -0.503867,
		34.620438, 37.465221, 18.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247131, 38.059822, 19.292055>,  <34.965065, 37.962040, 19.114319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247131, 38.059822, 19.292055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284607, 37.695515, 19.131201>,  <34.307095, 37.476929, 19.034687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284607, 37.695515, 19.131201>,  <34.247131, 38.059822, 19.292055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284607, 37.695515, 19.131201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505460, -0.391502, 0.768919,
		-0.857748, 0.131222, -0.497040,
		0.093693, -0.910773, -0.402138,
		34.312714, 37.422283, 19.010559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574444, 37.716209, 19.229538>,  <34.247131, 38.059822, 19.292055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574444, 37.716209, 19.229538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836643, 37.414143, 19.231968>,  <33.993965, 37.232903, 19.233425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836643, 37.414143, 19.231968>,  <33.574444, 37.716209, 19.229538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836643, 37.414143, 19.231968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522461, -0.447670, 0.725690,
		-0.545300, -0.478864, -0.687995,
		0.655501, -0.755169, 0.006073,
		34.033295, 37.187592, 19.233789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100449, 37.132004, 19.277119>,  <33.574444, 37.716209, 19.229538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100449, 37.132004, 19.277119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.459812, 37.002640, 19.395960>,  <33.675430, 36.925022, 19.467264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.459812, 37.002640, 19.395960>,  <33.100449, 37.132004, 19.277119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459812, 37.002640, 19.395960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397192, -0.309747, 0.863884,
		-0.187361, -0.894126, -0.406735,
		0.898407, -0.323410, 0.297105,
		33.729336, 36.905617, 19.485090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063065, 36.360199, 19.548786>,  <33.100449, 37.132004, 19.277119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063065, 36.360199, 19.548786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381779, 36.554565, 19.692463>,  <33.573009, 36.671185, 19.778669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381779, 36.554565, 19.692463>,  <33.063065, 36.360199, 19.548786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381779, 36.554565, 19.692463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207221, -0.338655, 0.917808,
		0.567617, -0.805730, -0.169145,
		0.796787, 0.485913, 0.359191,
		33.620815, 36.700340, 19.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347450, 35.923363, 20.212793>,  <33.063065, 36.360199, 19.548786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347450, 35.923363, 20.212793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523743, 36.277424, 20.272476>,  <33.629517, 36.489861, 20.308287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523743, 36.277424, 20.272476>,  <33.347450, 35.923363, 20.212793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523743, 36.277424, 20.272476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021124, -0.176404, 0.984091,
		0.897392, -0.430564, -0.096444,
		0.440728, 0.885153, 0.149208,
		33.655960, 36.542969, 20.317238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939346, 35.802483, 20.470402>,  <33.347450, 35.923363, 20.212793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939346, 35.802483, 20.470402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857010, 36.178894, 20.577801>,  <33.807610, 36.404743, 20.642241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857010, 36.178894, 20.577801>,  <33.939346, 35.802483, 20.470402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857010, 36.178894, 20.577801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077098, -0.257924, 0.963084,
		0.975545, 0.218938, -0.019462,
		-0.205836, 0.941032, 0.268496,
		33.795258, 36.461205, 20.658350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277187, 35.877384, 21.125200>,  <33.939346, 35.802483, 20.470402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277187, 35.877384, 21.125200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060276, 36.212460, 21.099266>,  <33.930130, 36.413506, 21.083706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060276, 36.212460, 21.099266>,  <34.277187, 35.877384, 21.125200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060276, 36.212460, 21.099266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114581, 0.150178, 0.981997,
		0.832347, 0.525090, -0.177423,
		-0.542282, 0.837692, -0.064835,
		33.897591, 36.463768, 21.079815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622738, 36.388187, 21.458082>,  <34.277187, 35.877384, 21.125200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622738, 36.388187, 21.458082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248997, 36.530708, 21.456003>,  <34.024750, 36.616219, 21.454756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248997, 36.530708, 21.456003>,  <34.622738, 36.388187, 21.458082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248997, 36.530708, 21.456003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076899, 0.215864, 0.973391,
		0.347942, 0.909095, -0.229093,
		-0.934357, 0.356300, -0.005200,
		33.968689, 36.637600, 21.454443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691330, 37.021111, 21.837563>,  <34.622738, 36.388187, 21.458082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691330, 37.021111, 21.837563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307384, 36.909050, 21.842947>,  <34.077019, 36.841812, 21.846178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307384, 36.909050, 21.842947>,  <34.691330, 37.021111, 21.837563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307384, 36.909050, 21.842947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069790, 0.285043, 0.955971,
		-0.271653, 0.916660, -0.293154,
		-0.959861, -0.280152, 0.013460,
		34.019424, 36.825005, 21.846985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414238, 37.570034, 22.100031>,  <34.691330, 37.021111, 21.837563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414238, 37.570034, 22.100031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156857, 37.269299, 22.157589>,  <34.002430, 37.088856, 22.192123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156857, 37.269299, 22.157589>,  <34.414238, 37.570034, 22.100031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156857, 37.269299, 22.157589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081325, 0.254057, 0.963764,
		-0.761155, 0.608433, -0.224616,
		-0.643451, -0.751841, 0.143896,
		33.963821, 37.043747, 22.200758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079872, 37.835705, 22.705442>,  <34.414238, 37.570034, 22.100031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079872, 37.835705, 22.705442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974239, 37.449905, 22.704718>,  <33.910858, 37.218426, 22.704283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974239, 37.449905, 22.704718>,  <34.079872, 37.835705, 22.705442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974239, 37.449905, 22.704718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031053, 0.006627, 0.999496,
		-0.963999, 0.264008, -0.031701,
		-0.264085, -0.964498, -0.001810,
		33.895012, 37.160557, 22.704174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362850, 37.726482, 23.054445>,  <34.079872, 37.835705, 22.705442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362850, 37.726482, 23.054445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583900, 37.396893, 23.104511>,  <33.716530, 37.199139, 23.134550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583900, 37.396893, 23.104511>,  <33.362850, 37.726482, 23.054445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583900, 37.396893, 23.104511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170132, 0.035485, 0.984782,
		-0.815877, -0.565514, -0.120574,
		0.552630, -0.823975, 0.125164,
		33.749691, 37.149700, 23.142061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023426, 37.368099, 23.594004>,  <33.362850, 37.726482, 23.054445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023426, 37.368099, 23.594004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374073, 37.176254, 23.609610>,  <33.584461, 37.061150, 23.618973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374073, 37.176254, 23.609610>,  <33.023426, 37.368099, 23.594004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374073, 37.176254, 23.609610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092631, -0.088629, 0.991748,
		-0.472194, -0.872995, -0.122121,
		0.876614, -0.479609, 0.039016,
		33.637058, 37.032372, 23.621315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929493, 36.828873, 24.095634>,  <33.023426, 37.368099, 23.594004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929493, 36.828873, 24.095634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326267, 36.862507, 24.057705>,  <33.564331, 36.882687, 24.034946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326267, 36.862507, 24.057705>,  <32.929493, 36.828873, 24.095634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326267, 36.862507, 24.057705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087015, 0.092140, 0.991937,
		0.092140, -0.992190, 0.084081,
		-0.991937, -0.084081, 0.094825,
		33.623848, 36.887730, 24.029257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071712, 36.620800, 24.686750>,  <32.929493, 36.828873, 24.095634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071712, 36.620800, 24.686750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435760, 36.755692, 24.590452>,  <33.654190, 36.836624, 24.532673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435760, 36.755692, 24.590452>,  <33.071712, 36.620800, 24.686750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435760, 36.755692, 24.590452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271669, -0.046954, 0.961244,
		0.312854, -0.940252, -0.134348,
		0.910120, 0.337227, -0.240747,
		33.708797, 36.856861, 24.518229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604790, 36.178825, 25.098644>,  <33.071712, 36.620800, 24.686750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604790, 36.178825, 25.098644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784466, 36.512943, 24.971830>,  <33.892269, 36.713413, 24.895742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784466, 36.512943, 24.971830>,  <33.604790, 36.178825, 25.098644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784466, 36.512943, 24.971830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299548, 0.193509, 0.934251,
		0.841725, -0.514622, -0.163289,
		0.449188, 0.835295, -0.317036,
		33.919224, 36.763531, 24.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263882, 36.082088, 25.289183>,  <33.604790, 36.178825, 25.098644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263882, 36.082088, 25.289183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157848, 36.463634, 25.232790>,  <34.094231, 36.692562, 25.198956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157848, 36.463634, 25.232790>,  <34.263882, 36.082088, 25.289183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157848, 36.463634, 25.232790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184429, 0.193669, 0.963576,
		0.946424, 0.229424, -0.227258,
		-0.265081, 0.953864, -0.140981,
		34.078323, 36.749794, 25.190496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791389, 36.417950, 25.645920>,  <34.263882, 36.082088, 25.289183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791389, 36.417950, 25.645920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523048, 36.712799, 25.613407>,  <34.362045, 36.889709, 25.593899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523048, 36.712799, 25.613407>,  <34.791389, 36.417950, 25.645920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523048, 36.712799, 25.613407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222538, 0.304651, 0.926102,
		0.707413, 0.603190, -0.368414,
		-0.670853, 0.737123, -0.081281,
		34.321793, 36.933937, 25.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177708, 37.010361, 25.793491>,  <34.791389, 36.417950, 25.645920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177708, 37.010361, 25.793491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788841, 37.080421, 25.855745>,  <34.555523, 37.122456, 25.893099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788841, 37.080421, 25.855745>,  <35.177708, 37.010361, 25.793491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788841, 37.080421, 25.855745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201065, 0.282563, 0.937940,
		0.120301, 0.943123, -0.309914,
		-0.972163, 0.175148, 0.155636,
		34.497192, 37.132965, 25.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829781, 37.051701, 26.216007>,  <35.177708, 37.010361, 25.793491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829781, 37.051701, 26.216007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148212, 37.259979, 26.339384>,  <36.339272, 37.384945, 26.413410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148212, 37.259979, 26.339384>,  <35.829781, 37.051701, 26.216007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148212, 37.259979, 26.339384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184432, 0.276686, -0.943096,
		-0.576404, 0.807666, 0.124232,
		0.796080, 0.520692, 0.308443,
		36.387035, 37.416187, 26.431917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826614, 37.604000, 25.727118>,  <35.829781, 37.051701, 26.216007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826614, 37.604000, 25.727118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187889, 37.583977, 25.897648>,  <36.404652, 37.571964, 25.999966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187889, 37.583977, 25.897648>,  <35.826614, 37.604000, 25.727118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187889, 37.583977, 25.897648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406455, 0.419096, -0.811882,
		-0.138030, 0.906561, 0.398867,
		0.903184, -0.050057, 0.426325,
		36.458843, 37.568958, 26.025545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076569, 38.243908, 25.579659>,  <35.826614, 37.604000, 25.727118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076569, 38.243908, 25.579659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369827, 37.977512, 25.634727>,  <36.545784, 37.817677, 25.667768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369827, 37.977512, 25.634727>,  <36.076569, 38.243908, 25.579659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369827, 37.977512, 25.634727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364798, 0.214280, -0.906094,
		0.573949, 0.714522, 0.400050,
		0.733147, -0.665989, 0.137670,
		36.589771, 37.777714, 25.676029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637115, 38.660843, 25.390192>,  <36.076569, 38.243908, 25.579659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637115, 38.660843, 25.390192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 38.269527, 25.352062>,  <36.754906, 38.034740, 25.329185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 38.269527, 25.352062>,  <36.637115, 38.660843, 25.390192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710735, 38.269527, 25.352062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395700, 0.162517, -0.903886,
		0.899749, 0.128638, 0.417018,
		0.184046, -0.978284, -0.095323,
		36.765949, 37.976044, 25.323465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287235, 38.673447, 25.087078>,  <36.637115, 38.660843, 25.390192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287235, 38.673447, 25.087078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193668, 38.285671, 25.057480>,  <37.137527, 38.053005, 25.039721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193668, 38.285671, 25.057480>,  <37.287235, 38.673447, 25.087078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193668, 38.285671, 25.057480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217544, 0.021993, -0.975803,
		0.947607, -0.244352, 0.205751,
		-0.233914, -0.969437, -0.073998,
		37.123493, 37.994839, 25.035280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777233, 38.333096, 24.787985>,  <37.287235, 38.673447, 25.087078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777233, 38.333096, 24.787985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468651, 38.088409, 24.717934>,  <37.283501, 37.941597, 24.675903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468651, 38.088409, 24.717934>,  <37.777233, 38.333096, 24.787985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468651, 38.088409, 24.717934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237537, -0.021535, -0.971140,
		0.590287, -0.790787, 0.161918,
		-0.771452, -0.611713, -0.175130,
		37.237217, 37.904896, 24.665394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010761, 37.865631, 24.304594>,  <37.777233, 38.333096, 24.787985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010761, 37.865631, 24.304594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614624, 37.847912, 24.252035>,  <37.376942, 37.837280, 24.220501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614624, 37.847912, 24.252035>,  <38.010761, 37.865631, 24.304594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614624, 37.847912, 24.252035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137858, -0.212666, -0.967351,
		0.014906, -0.976121, 0.216718,
		-0.990340, -0.044296, -0.131396,
		37.317524, 37.834621, 24.212616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833241, 37.292858, 23.936035>,  <38.010761, 37.865631, 24.304594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833241, 37.292858, 23.936035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541103, 37.556011, 23.862503>,  <37.365822, 37.713902, 23.818382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541103, 37.556011, 23.862503>,  <37.833241, 37.292858, 23.936035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541103, 37.556011, 23.862503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143168, -0.115719, -0.982910,
		-0.667912, -0.744177, -0.009674,
		-0.730340, 0.657882, -0.183833,
		37.322002, 37.753376, 23.807354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482533, 36.951099, 23.342300>,  <37.833241, 37.292858, 23.936035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482533, 36.951099, 23.342300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339268, 37.322098, 23.385132>,  <37.253311, 37.544697, 23.410831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339268, 37.322098, 23.385132>,  <37.482533, 36.951099, 23.342300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339268, 37.322098, 23.385132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222177, 0.026726, -0.974640,
		-0.906841, -0.372866, 0.196497,
		-0.358159, 0.927500, 0.107079,
		37.231819, 37.600349, 23.417255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954155, 37.001499, 22.820320>,  <37.482533, 36.951099, 23.342300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954155, 37.001499, 22.820320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042900, 37.385372, 22.889347>,  <37.096146, 37.615696, 22.930763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042900, 37.385372, 22.889347>,  <36.954155, 37.001499, 22.820320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042900, 37.385372, 22.889347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102773, 0.199006, -0.974594,
		-0.969647, 0.198488, 0.142781,
		0.221859, 0.959687, 0.172566,
		37.109459, 37.673279, 22.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391884, 37.425026, 22.491409>,  <36.954155, 37.001499, 22.820320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391884, 37.425026, 22.491409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722080, 37.646553, 22.534962>,  <36.920197, 37.779469, 22.561092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722080, 37.646553, 22.534962>,  <36.391884, 37.425026, 22.491409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722080, 37.646553, 22.534962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012428, 0.210695, -0.977473,
		-0.564278, 0.805542, 0.180810,
		0.825491, 0.553814, 0.108879,
		36.969727, 37.812698, 22.567625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237282, 37.939072, 22.106527>,  <36.391884, 37.425026, 22.491409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237282, 37.939072, 22.106527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636799, 37.936581, 22.125984>,  <36.876511, 37.935085, 22.137657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636799, 37.936581, 22.125984>,  <36.237282, 37.939072, 22.106527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636799, 37.936581, 22.125984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048888, 0.203786, -0.977794,
		-0.003827, 0.978996, 0.203845,
		0.998797, -0.006224, 0.048641,
		36.936440, 37.934715, 22.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423985, 38.541744, 21.699608>,  <36.237282, 37.939072, 22.106527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423985, 38.541744, 21.699608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760193, 38.326210, 21.722153>,  <36.961918, 38.196888, 21.735680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760193, 38.326210, 21.722153>,  <36.423985, 38.541744, 21.699608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760193, 38.326210, 21.722153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304919, 0.384498, -0.871313,
		0.447827, 0.749542, 0.487481,
		0.840521, -0.538839, 0.056361,
		37.012348, 38.164558, 21.739061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925980, 39.015888, 21.575510>,  <36.423985, 38.541744, 21.699608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925980, 39.015888, 21.575510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063202, 38.648277, 21.497845>,  <37.145535, 38.427711, 21.451244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063202, 38.648277, 21.497845>,  <36.925980, 39.015888, 21.575510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063202, 38.648277, 21.497845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190697, 0.270547, -0.943631,
		0.919753, 0.286693, 0.268069,
		0.343057, -0.919027, -0.194165,
		37.166119, 38.372570, 21.439594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466839, 39.116467, 21.094913>,  <36.925980, 39.015888, 21.575510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466839, 39.116467, 21.094913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386868, 38.725342, 21.069885>,  <37.338882, 38.490669, 21.054869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386868, 38.725342, 21.069885>,  <37.466839, 39.116467, 21.094913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386868, 38.725342, 21.069885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186757, 0.024657, -0.982096,
		0.961847, -0.208037, 0.177684,
		-0.199932, -0.977810, -0.062569,
		37.326889, 38.431999, 21.051115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936974, 38.973068, 20.736626>,  <37.466839, 39.116467, 21.094913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936974, 38.973068, 20.736626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639622, 38.707813, 20.701693>,  <37.461208, 38.548660, 20.680733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639622, 38.707813, 20.701693>,  <37.936974, 38.973068, 20.736626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639622, 38.707813, 20.701693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157695, -0.046872, -0.986375,
		0.650013, -0.747025, 0.139418,
		-0.743382, -0.663142, -0.087334,
		37.416607, 38.508869, 20.675491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181900, 38.522163, 20.297140>,  <37.936974, 38.973068, 20.736626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181900, 38.522163, 20.297140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798397, 38.409870, 20.279354>,  <37.568295, 38.342495, 20.268682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798397, 38.409870, 20.279354>,  <38.181900, 38.522163, 20.297140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798397, 38.409870, 20.279354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100279, -0.187706, -0.977093,
		0.265958, -0.941251, 0.208116,
		-0.958755, -0.280735, -0.044465,
		37.510769, 38.325649, 20.266014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171253, 37.864094, 19.974327>,  <38.181900, 38.522163, 20.297140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171253, 37.864094, 19.974327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801868, 38.008629, 19.922705>,  <37.580238, 38.095348, 19.891731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801868, 38.008629, 19.922705>,  <38.171253, 37.864094, 19.974327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801868, 38.008629, 19.922705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016970, -0.297555, -0.954554,
		-0.383320, -0.883682, 0.268648,
		-0.923460, 0.361341, -0.129055,
		37.524830, 38.117031, 19.883989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.919624, 37.399597, 19.486296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691177, 37.727703, 19.473719>,  <37.554111, 37.924568, 19.466171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691177, 37.727703, 19.473719>,  <37.919624, 37.399597, 19.486296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691177, 37.727703, 19.473719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044421, -0.069133, -0.996618,
		-0.819667, -0.567787, 0.075920,
		-0.571116, 0.820267, -0.031444,
		37.519844, 37.973782, 19.464285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402061, 37.233761, 19.007387>,  <37.919624, 37.399597, 19.486296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402061, 37.233761, 19.007387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404705, 37.632858, 19.034115>,  <37.406292, 37.872318, 19.050152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404705, 37.632858, 19.034115>,  <37.402061, 37.233761, 19.007387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404705, 37.632858, 19.034115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193820, 0.066832, -0.978758,
		-0.981015, -0.006482, 0.193824,
		0.006609, 0.997743, 0.066820,
		37.406689, 37.932182, 19.054161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824970, 37.453720, 18.636402>,  <37.402061, 37.233761, 19.007387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824970, 37.453720, 18.636402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025177, 37.799301, 18.658604>,  <37.145302, 38.006649, 18.671925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025177, 37.799301, 18.658604>,  <36.824970, 37.453720, 18.636402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025177, 37.799301, 18.658604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297832, 0.232033, -0.925990,
		-0.812886, 0.446939, 0.373447,
		0.500513, 0.863948, 0.055503,
		37.175331, 38.058487, 18.675255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355957, 37.966763, 18.284601>,  <36.824970, 37.453720, 18.636402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355957, 37.966763, 18.284601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722820, 38.126167, 18.285757>,  <36.942940, 38.221809, 18.286451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722820, 38.126167, 18.285757>,  <36.355957, 37.966763, 18.284601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722820, 38.126167, 18.285757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176543, 0.412778, -0.893559,
		-0.357290, 0.819023, 0.448937,
		0.917157, 0.398516, 0.002889,
		36.997967, 38.245724, 18.286623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291439, 38.637623, 18.135504>,  <36.355957, 37.966763, 18.284601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291439, 38.637623, 18.135504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667995, 38.555904, 18.028137>,  <36.893929, 38.506874, 17.963718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667995, 38.555904, 18.028137>,  <36.291439, 38.637623, 18.135504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667995, 38.555904, 18.028137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179581, 0.370054, -0.911488,
		0.285546, 0.906268, 0.311677,
		0.941390, -0.204300, -0.268416,
		36.950413, 38.494614, 17.947613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407394, 39.203541, 17.708002>,  <36.291439, 38.637623, 18.135504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407394, 39.203541, 17.708002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690151, 38.937771, 17.610966>,  <36.859806, 38.778309, 17.552744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690151, 38.937771, 17.610966>,  <36.407394, 39.203541, 17.708002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690151, 38.937771, 17.610966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001715, 0.341359, -0.939932,
		0.707323, 0.664842, 0.240163,
		0.706888, -0.664424, -0.242591,
		36.902218, 38.738445, 17.538189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960491, 39.602245, 17.361471>,  <36.407394, 39.203541, 17.708002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960491, 39.602245, 17.361471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069607, 39.230087, 17.263531>,  <37.135075, 39.006794, 17.204767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069607, 39.230087, 17.263531>,  <36.960491, 39.602245, 17.361471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069607, 39.230087, 17.263531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220497, 0.308189, -0.925419,
		0.936466, 0.198454, 0.289219,
		0.272787, -0.930395, -0.244850,
		37.151443, 38.950970, 17.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573360, 39.669518, 16.845335>,  <36.960491, 39.602245, 17.361471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573360, 39.669518, 16.845335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428009, 39.298729, 16.808090>,  <37.340797, 39.076256, 16.785744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428009, 39.298729, 16.808090>,  <37.573360, 39.669518, 16.845335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428009, 39.298729, 16.808090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243054, 0.002157, -0.970010,
		0.899377, -0.375115, 0.224521,
		-0.363381, -0.926976, -0.093113,
		37.318996, 39.020638, 16.780157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075603, 39.133049, 16.592644>,  <37.573360, 39.669518, 16.845335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075603, 39.133049, 16.592644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706806, 39.032093, 16.475182>,  <37.485527, 38.971519, 16.404703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706806, 39.032093, 16.475182>,  <38.075603, 39.133049, 16.592644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706806, 39.032093, 16.475182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256969, 0.168495, -0.951618,
		0.289657, -0.952843, -0.090495,
		-0.921990, -0.252388, -0.293657,
		37.430210, 38.956379, 16.387085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125877, 38.570225, 16.036587>,  <38.075603, 39.133049, 16.592644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125877, 38.570225, 16.036587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757160, 38.713287, 15.976748>,  <37.535931, 38.799126, 15.940845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757160, 38.713287, 15.976748>,  <38.125877, 38.570225, 16.036587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757160, 38.713287, 15.976748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168876, 0.023095, -0.985367,
		-0.348969, -0.933567, -0.081688,
		-0.921793, 0.357657, -0.149597,
		37.480621, 38.820583, 15.931869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711895, 38.162403, 15.456011>,  <38.125877, 38.570225, 16.036587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711895, 38.162403, 15.456011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558380, 38.531700, 15.463239>,  <37.466270, 38.753281, 15.467575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558380, 38.531700, 15.463239>,  <37.711895, 38.162403, 15.456011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558380, 38.531700, 15.463239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119366, 0.069004, -0.990450,
		-0.915675, -0.377962, -0.136687,
		-0.383785, 0.923246, 0.018070,
		37.443245, 38.808674, 15.468659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061893, 38.304836, 15.002000>,  <37.711895, 38.162403, 15.456011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061893, 38.304836, 15.002000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252289, 38.652210, 15.057493>,  <37.366528, 38.860634, 15.090790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252289, 38.652210, 15.057493>,  <37.061893, 38.304836, 15.002000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252289, 38.652210, 15.057493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091611, 0.107930, -0.989928,
		-0.874665, 0.483908, -0.028184,
		0.475992, 0.868438, 0.138734,
		37.395088, 38.912743, 15.099113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069592, 38.470844, 14.301196>,  <37.061893, 38.304836, 15.002000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069592, 38.470844, 14.301196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242371, 38.777115, 14.491843>,  <37.346039, 38.960876, 14.606232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242371, 38.777115, 14.491843>,  <37.069592, 38.470844, 14.301196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242371, 38.777115, 14.491843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147599, 0.461324, -0.874868,
		-0.889739, 0.448246, 0.086256,
		0.431948, 0.765673, 0.476619,
		37.371956, 39.006817, 14.634829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860764, 39.056995, 13.944432>,  <37.069592, 38.470844, 14.301196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860764, 39.056995, 13.944432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181210, 39.187283, 14.145281>,  <37.373478, 39.265453, 14.265790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181210, 39.187283, 14.145281>,  <36.860764, 39.056995, 13.944432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181210, 39.187283, 14.145281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209806, 0.632884, -0.745278,
		-0.560536, 0.702400, 0.438673,
		0.801112, 0.325719, 0.502121,
		37.421543, 39.285000, 14.295918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826641, 39.798122, 13.889827>,  <36.860764, 39.056995, 13.944432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826641, 39.798122, 13.889827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206139, 39.685379, 13.947015>,  <37.433838, 39.617733, 13.981327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206139, 39.685379, 13.947015>,  <36.826641, 39.798122, 13.889827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206139, 39.685379, 13.947015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296865, 0.639562, -0.709106,
		0.108433, 0.715202, 0.690455,
		0.948743, -0.281862, 0.142969,
		37.490761, 39.600819, 13.989905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243389, 40.433945, 13.881520>,  <36.826641, 39.798122, 13.889827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243389, 40.433945, 13.881520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500103, 40.136341, 13.807160>,  <37.654133, 39.957779, 13.762545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500103, 40.136341, 13.807160>,  <37.243389, 40.433945, 13.881520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500103, 40.136341, 13.807160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480070, 0.578816, -0.659170,
		0.598029, 0.333803, 0.728654,
		0.641789, -0.744008, -0.185900,
		37.692638, 39.913139, 13.751390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035095, 40.753281, 13.876096>,  <37.243389, 40.433945, 13.881520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035095, 40.753281, 13.876096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055260, 40.410568, 13.670812>,  <38.067360, 40.204941, 13.547641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055260, 40.410568, 13.670812>,  <38.035095, 40.753281, 13.876096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055260, 40.410568, 13.670812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556823, 0.450700, -0.697723,
		0.829100, -0.250591, 0.499797,
		0.050416, -0.856781, -0.513210,
		38.070385, 40.153534, 13.516849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694496, 40.695290, 13.649762>,  <38.035095, 40.753281, 13.876096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694496, 40.695290, 13.649762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501514, 40.442554, 13.407105>,  <38.385727, 40.290913, 13.261512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501514, 40.442554, 13.407105>,  <38.694496, 40.695290, 13.649762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501514, 40.442554, 13.407105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343305, 0.500764, -0.794592,
		0.805841, -0.591617, -0.024682,
		-0.482454, -0.631842, -0.606642,
		38.356777, 40.253002, 13.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135979, 40.435745, 13.130878>,  <38.694496, 40.695290, 13.649762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135979, 40.435745, 13.130878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771614, 40.400017, 12.969749>,  <38.552998, 40.378582, 12.873072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771614, 40.400017, 12.969749>,  <39.135979, 40.435745, 13.130878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771614, 40.400017, 12.969749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284278, 0.571737, -0.769612,
		0.299047, -0.815561, -0.495411,
		-0.910910, -0.089316, -0.402823,
		38.498341, 40.373222, 12.848903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227688, 40.449203, 12.412383>,  <39.135979, 40.435745, 13.130878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227688, 40.449203, 12.412383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831612, 40.502449, 12.429370>,  <38.593967, 40.534397, 12.439562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831612, 40.502449, 12.429370>,  <39.227688, 40.449203, 12.412383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831612, 40.502449, 12.429370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014194, 0.398207, -0.917186,
		-0.138998, -0.907586, -0.396190,
		-0.990191, 0.133111, 0.042468,
		38.534554, 40.542381, 12.442110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167645, 40.478443, 11.779869>,  <39.227688, 40.449203, 12.412383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167645, 40.478443, 11.779869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835793, 40.634453, 11.939667>,  <38.636681, 40.728058, 12.035545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835793, 40.634453, 11.939667>,  <39.167645, 40.478443, 11.779869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835793, 40.634453, 11.939667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051205, 0.659371, -0.750072,
		-0.555960, -0.642739, -0.527063,
		-0.829631, 0.390022, 0.399495,
		38.586903, 40.751461, 12.059515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621159, 40.528744, 11.183569>,  <39.167645, 40.478443, 11.779869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621159, 40.528744, 11.183569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549068, 40.805462, 11.463265>,  <38.505814, 40.971493, 11.631083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549068, 40.805462, 11.463265>,  <38.621159, 40.528744, 11.183569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549068, 40.805462, 11.463265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151957, 0.682766, -0.714661,
		-0.971817, -0.235053, -0.017926,
		-0.180222, 0.691796, 0.699241,
		38.495003, 41.013000, 11.673038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003761, 40.792370, 11.005736>,  <38.621159, 40.528744, 11.183569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003761, 40.792370, 11.005736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.199566, 41.066868, 11.220937>,  <38.317047, 41.231567, 11.350057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.199566, 41.066868, 11.220937>,  <38.003761, 40.792370, 11.005736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199566, 41.066868, 11.220937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331080, 0.717043, -0.613380,
		-0.806699, 0.122136, 0.578204,
		0.489512, 0.686245, 0.538001,
		38.346420, 41.272743, 11.382337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550873, 41.243416, 11.211772>,  <38.003761, 40.792370, 11.005736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550873, 41.243416, 11.211772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907013, 41.424717, 11.194655>,  <38.120697, 41.533497, 11.184385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907013, 41.424717, 11.194655>,  <37.550873, 41.243416, 11.211772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907013, 41.424717, 11.194655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342362, 0.604623, -0.719180,
		-0.300100, 0.654974, 0.693506,
		0.890353, 0.453255, -0.042790,
		38.174118, 41.560692, 11.181818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028805, 40.676853, 10.874140>,  <37.550873, 41.243416, 11.211772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028805, 40.676853, 10.874140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638191, 40.676109, 10.787998>,  <36.403824, 40.675663, 10.736313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638191, 40.676109, 10.787998>,  <37.028805, 40.676853, 10.874140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638191, 40.676109, 10.787998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204504, -0.305500, 0.929972,
		-0.067523, 0.952190, 0.297950,
		-0.976534, -0.001863, -0.215355,
		36.345230, 40.675552, 10.723392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716473, 40.985477, 11.459685>,  <37.028805, 40.676853, 10.874140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716473, 40.985477, 11.459685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409771, 40.811665, 11.270678>,  <36.225750, 40.707378, 11.157273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409771, 40.811665, 11.270678>,  <36.716473, 40.985477, 11.459685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409771, 40.811665, 11.270678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323460, -0.374285, 0.869070,
		-0.554495, 0.819203, 0.146431,
		-0.766752, -0.434531, -0.472519,
		36.179745, 40.681305, 11.128922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132874, 41.197666, 11.698195>,  <36.716473, 40.985477, 11.459685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132874, 41.197666, 11.698195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049618, 40.843727, 11.531478>,  <35.999664, 40.631363, 11.431448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049618, 40.843727, 11.531478>,  <36.132874, 41.197666, 11.698195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049618, 40.843727, 11.531478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214239, -0.374534, 0.902123,
		-0.954347, 0.277063, -0.111613,
		-0.208142, -0.884850, -0.416793,
		35.987175, 40.578274, 11.406440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495235, 41.015705, 11.948016>,  <36.132874, 41.197666, 11.698195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495235, 41.015705, 11.948016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596153, 40.648052, 11.826987>,  <35.656704, 40.427460, 11.754370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596153, 40.648052, 11.826987>,  <35.495235, 41.015705, 11.948016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596153, 40.648052, 11.826987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314780, -0.373639, 0.872529,
		-0.915019, -0.124892, -0.383591,
		0.252297, -0.919128, -0.302573,
		35.671841, 40.372314, 11.736216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978973, 40.604843, 12.170760>,  <35.495235, 41.015705, 11.948016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978973, 40.604843, 12.170760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246681, 40.319458, 12.087771>,  <35.407307, 40.148228, 12.037978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246681, 40.319458, 12.087771>,  <34.978973, 40.604843, 12.170760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246681, 40.319458, 12.087771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321192, -0.529594, 0.785089,
		-0.670010, -0.458799, -0.583601,
		0.669270, -0.713466, -0.207471,
		35.447464, 40.105419, 12.025530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598000, 39.955914, 12.166357>,  <34.978973, 40.604843, 12.170760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598000, 39.955914, 12.166357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983574, 39.878090, 12.238999>,  <35.214916, 39.831394, 12.282585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983574, 39.878090, 12.238999>,  <34.598000, 39.955914, 12.166357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983574, 39.878090, 12.238999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254210, -0.470998, 0.844712,
		-0.078810, -0.860411, -0.503469,
		0.963933, -0.194559, 0.181606,
		35.272755, 39.819721, 12.293481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481358, 39.396366, 12.425932>,  <34.598000, 39.955914, 12.166357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481358, 39.396366, 12.425932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843121, 39.515736, 12.547912>,  <35.060177, 39.587357, 12.621099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843121, 39.515736, 12.547912>,  <34.481358, 39.396366, 12.425932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843121, 39.515736, 12.547912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173334, -0.396109, 0.901694,
		0.389877, -0.868356, -0.306518,
		0.904407, 0.298420, 0.304950,
		35.114441, 39.605263, 12.639397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786175, 38.792484, 12.721410>,  <34.481358, 39.396366, 12.425932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786175, 38.792484, 12.721410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014915, 39.067997, 12.899652>,  <35.152161, 39.233303, 13.006598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014915, 39.067997, 12.899652>,  <34.786175, 38.792484, 12.721410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014915, 39.067997, 12.899652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265990, -0.358164, 0.894968,
		0.776039, -0.630315, -0.021607,
		0.571850, 0.688783, 0.445606,
		35.186470, 39.274632, 13.033335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290249, 38.462021, 13.128172>,  <34.786175, 38.792484, 12.721410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290249, 38.462021, 13.128172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208542, 38.819305, 13.288399>,  <35.159515, 39.033676, 13.384535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208542, 38.819305, 13.288399>,  <35.290249, 38.462021, 13.128172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208542, 38.819305, 13.288399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284498, -0.445701, 0.848771,
		0.936661, 0.059420, 0.345160,
		-0.204272, 0.893207, 0.400566,
		35.147259, 39.087269, 13.408568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740894, 38.486038, 13.725215>,  <35.290249, 38.462021, 13.128172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740894, 38.486038, 13.725215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477818, 38.783169, 13.775251>,  <35.319969, 38.961449, 13.805273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477818, 38.783169, 13.775251>,  <35.740894, 38.486038, 13.725215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477818, 38.783169, 13.775251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007504, -0.172514, 0.984979,
		0.753248, 0.646876, 0.119035,
		-0.657694, 0.742827, 0.125092,
		35.280510, 39.006016, 13.812778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037498, 38.861153, 14.245179>,  <35.740894, 38.486038, 13.725215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037498, 38.861153, 14.245179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648891, 38.955288, 14.256237>,  <35.415726, 39.011768, 14.262872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648891, 38.955288, 14.256237>,  <36.037498, 38.861153, 14.245179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648891, 38.955288, 14.256237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006734, -0.144037, 0.989549,
		0.236865, 0.961180, 0.141519,
		-0.971519, 0.235343, 0.027645,
		35.357437, 39.025890, 14.264530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922550, 39.285934, 14.845034>,  <36.037498, 38.861153, 14.245179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922550, 39.285934, 14.845034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547749, 39.169819, 14.767319>,  <35.322868, 39.100147, 14.720690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547749, 39.169819, 14.767319>,  <35.922550, 39.285934, 14.845034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547749, 39.169819, 14.767319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151774, -0.162620, 0.974946,
		-0.314616, 0.943019, 0.108317,
		-0.937007, -0.290294, -0.194288,
		35.266647, 39.082729, 14.709032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443920, 39.749985, 15.219847>,  <35.922550, 39.285934, 14.845034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443920, 39.749985, 15.219847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238400, 39.412567, 15.157325>,  <35.115086, 39.210117, 15.119811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238400, 39.412567, 15.157325>,  <35.443920, 39.749985, 15.219847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238400, 39.412567, 15.157325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227488, -0.041709, 0.972887,
		-0.827196, 0.535432, -0.170467,
		-0.513805, -0.843548, -0.156306,
		35.084259, 39.159504, 15.110433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999805, 39.668816, 15.868913>,  <35.443920, 39.749985, 15.219847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999805, 39.668816, 15.868913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969933, 39.318607, 15.677962>,  <34.952011, 39.108482, 15.563393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969933, 39.318607, 15.677962>,  <34.999805, 39.668816, 15.868913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969933, 39.318607, 15.677962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317227, -0.432986, 0.843736,
		-0.945405, 0.214445, -0.245404,
		-0.074679, -0.875520, -0.477375,
		34.947529, 39.055950, 15.534750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376019, 39.255608, 16.054277>,  <34.999805, 39.668816, 15.868913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376019, 39.255608, 16.054277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626102, 38.977394, 15.912657>,  <34.776154, 38.810467, 15.827684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626102, 38.977394, 15.912657>,  <34.376019, 39.255608, 16.054277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626102, 38.977394, 15.912657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265074, -0.615917, 0.741878,
		-0.734066, -0.369977, -0.569442,
		0.625207, -0.695531, -0.354053,
		34.813663, 38.768734, 15.806441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000065, 38.624126, 16.147299>,  <34.376019, 39.255608, 16.054277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000065, 38.624126, 16.147299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.374485, 38.493153, 16.095785>,  <34.599136, 38.414566, 16.064877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.374485, 38.493153, 16.095785>,  <34.000065, 38.624126, 16.147299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374485, 38.493153, 16.095785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116138, -0.633033, 0.765363,
		-0.332133, -0.701466, -0.630582,
		0.936055, -0.327437, -0.128785,
		34.655300, 38.394920, 16.057150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985783, 37.925053, 16.195784>,  <34.000065, 38.624126, 16.147299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985783, 37.925053, 16.195784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371788, 37.998165, 16.270987>,  <34.603390, 38.042034, 16.316109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371788, 37.998165, 16.270987>,  <33.985783, 37.925053, 16.195784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371788, 37.998165, 16.270987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082240, -0.469841, 0.878912,
		0.248987, -0.863620, -0.438369,
		0.965009, 0.182786, 0.188008,
		34.661289, 38.053001, 16.327389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259159, 37.378017, 16.521906>,  <33.985783, 37.925053, 16.195784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259159, 37.378017, 16.521906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526348, 37.654736, 16.631620>,  <34.686661, 37.820766, 16.697449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526348, 37.654736, 16.631620>,  <34.259159, 37.378017, 16.521906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526348, 37.654736, 16.631620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070582, -0.425806, 0.902057,
		0.740827, -0.583194, -0.333256,
		0.667977, 0.691791, 0.274285,
		34.726742, 37.862274, 16.713905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826832, 36.969505, 16.845573>,  <34.259159, 37.378017, 16.521906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826832, 36.969505, 16.845573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853985, 37.350571, 16.964119>,  <34.870277, 37.579208, 17.035246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853985, 37.350571, 16.964119>,  <34.826832, 36.969505, 16.845573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853985, 37.350571, 16.964119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038261, -0.299317, 0.953386,
		0.996959, -0.053383, -0.056770,
		0.067887, 0.952659, 0.296365,
		34.874352, 37.636368, 17.053028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467941, 37.081261, 17.201942>,  <34.826832, 36.969505, 16.845573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467941, 37.081261, 17.201942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162514, 37.316055, 17.309584>,  <34.979259, 37.456932, 17.374168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162514, 37.316055, 17.309584>,  <35.467941, 37.081261, 17.201942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162514, 37.316055, 17.309584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200367, -0.180799, 0.962894,
		0.613858, 0.789152, 0.020439,
		-0.763565, 0.586984, 0.269105,
		34.933445, 37.492149, 17.390316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.216797, 38.042080, 22.250896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.819843, 38.009029, 22.214352>,  <37.581673, 37.989201, 22.192425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.819843, 38.009029, 22.214352>,  <38.216797, 38.042080, 22.250896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819843, 38.009029, 22.214352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100201, 0.110086, 0.988858,
		-0.071649, 0.990482, -0.117527,
		-0.992384, -0.082627, -0.091360,
		37.522129, 37.984241, 22.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916004, 38.679920, 22.658100>,  <38.216797, 38.042080, 22.250896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916004, 38.679920, 22.658100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616123, 38.415894, 22.639105>,  <37.436195, 38.257477, 22.627708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616123, 38.415894, 22.639105>,  <37.916004, 38.679920, 22.658100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616123, 38.415894, 22.639105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222672, 0.184038, 0.957365,
		-0.623183, 0.728317, -0.284953,
		-0.749707, -0.660064, -0.047486,
		37.391212, 38.217873, 22.624859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497787, 38.870403, 23.121029>,  <37.916004, 38.679920, 22.658100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497787, 38.870403, 23.121029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362713, 38.498081, 23.065073>,  <37.281666, 38.274689, 23.031500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362713, 38.498081, 23.065073>,  <37.497787, 38.870403, 23.121029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362713, 38.498081, 23.065073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308357, -0.031019, 0.950765,
		-0.889315, 0.364199, -0.276545,
		-0.337690, -0.930804, -0.139889,
		37.261406, 38.218842, 23.023106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807556, 38.886414, 23.466370>,  <37.497787, 38.870403, 23.121029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807556, 38.886414, 23.466370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.928619, 38.505394, 23.453373>,  <37.001259, 38.276783, 23.445574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.928619, 38.505394, 23.453373>,  <36.807556, 38.886414, 23.466370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928619, 38.505394, 23.453373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265863, -0.117116, 0.956870,
		-0.915267, -0.280968, -0.288693,
		0.302661, -0.952545, -0.032494,
		37.019417, 38.219631, 23.443624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226646, 38.427605, 23.709822>,  <36.807556, 38.886414, 23.466370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226646, 38.427605, 23.709822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561836, 38.211311, 23.739220>,  <36.762951, 38.081535, 23.756859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561836, 38.211311, 23.739220>,  <36.226646, 38.427605, 23.709822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561836, 38.211311, 23.739220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263572, -0.283123, 0.922156,
		-0.477833, -0.792117, -0.379773,
		0.837977, -0.540734, 0.073495,
		36.813229, 38.049091, 23.761269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037918, 37.974850, 24.178902>,  <36.226646, 38.427605, 23.709822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037918, 37.974850, 24.178902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432812, 37.911808, 24.188046>,  <36.669750, 37.873981, 24.193531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432812, 37.911808, 24.188046>,  <36.037918, 37.974850, 24.178902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432812, 37.911808, 24.188046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086305, -0.408846, 0.908513,
		-0.133837, -0.898892, -0.417230,
		0.987238, -0.157602, 0.022860,
		36.728985, 37.864529, 24.194902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155281, 37.255524, 24.535818>,  <36.037918, 37.974850, 24.178902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155281, 37.255524, 24.535818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506096, 37.445805, 24.562670>,  <36.716587, 37.559975, 24.578781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506096, 37.445805, 24.562670>,  <36.155281, 37.255524, 24.535818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506096, 37.445805, 24.562670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085971, -0.292881, 0.952276,
		0.472663, -0.829413, -0.297765,
		0.877040, 0.475705, 0.067129,
		36.769207, 37.588516, 24.582808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622627, 36.738930, 24.791725>,  <36.155281, 37.255524, 24.535818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622627, 36.738930, 24.791725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784908, 37.100086, 24.848576>,  <36.882275, 37.316780, 24.882685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784908, 37.100086, 24.848576>,  <36.622627, 36.738930, 24.791725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784908, 37.100086, 24.848576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022598, -0.165357, 0.985975,
		0.913727, -0.396798, -0.087489,
		0.405700, 0.902888, 0.142125,
		36.906620, 37.370953, 24.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161587, 36.700680, 25.382053>,  <36.622627, 36.738930, 24.791725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161587, 36.700680, 25.382053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036274, 37.077766, 25.336205>,  <36.961086, 37.304020, 25.308695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036274, 37.077766, 25.336205>,  <37.161587, 36.700680, 25.382053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036274, 37.077766, 25.336205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033677, 0.109593, 0.993406,
		0.949062, 0.315080, -0.002586,
		-0.313285, 0.942716, -0.114621,
		36.942287, 37.360580, 25.301819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613972, 37.011814, 25.824516>,  <37.161587, 36.700680, 25.382053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613972, 37.011814, 25.824516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280544, 37.226452, 25.772018>,  <37.080486, 37.355232, 25.740520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280544, 37.226452, 25.772018>,  <37.613972, 37.011814, 25.824516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280544, 37.226452, 25.772018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014491, 0.216262, 0.976228,
		0.552219, 0.815659, -0.172494,
		-0.833573, 0.536592, -0.131244,
		37.030472, 37.387428, 25.732645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687035, 37.411400, 26.425787>,  <37.613972, 37.011814, 25.824516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687035, 37.411400, 26.425787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308105, 37.432583, 26.299437>,  <37.080750, 37.445293, 26.223627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308105, 37.432583, 26.299437>,  <37.687035, 37.411400, 26.425787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308105, 37.432583, 26.299437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309887, 0.097691, 0.945741,
		0.080945, 0.993807, -0.076133,
		-0.947322, 0.052960, -0.315875,
		37.023911, 37.448471, 26.204674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438957, 37.926682, 26.830420>,  <37.687035, 37.411400, 26.425787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438957, 37.926682, 26.830420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109219, 37.726868, 26.723898>,  <36.911377, 37.606979, 26.659985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109219, 37.726868, 26.723898>,  <37.438957, 37.926682, 26.830420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109219, 37.726868, 26.723898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284786, -0.040606, 0.957731,
		-0.489232, 0.865342, -0.108786,
		-0.824348, -0.499534, -0.266303,
		36.861916, 37.577007, 26.644007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769836, 38.334930, 26.958622>,  <37.438957, 37.926682, 26.830420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769836, 38.334930, 26.958622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757366, 37.936195, 26.987854>,  <36.749886, 37.696953, 27.005394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757366, 37.936195, 26.987854>,  <36.769836, 38.334930, 26.958622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757366, 37.936195, 26.987854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165997, 0.077266, 0.983095,
		-0.985633, 0.018514, -0.167880,
		-0.031173, -0.996839, 0.073082,
		36.748013, 37.637142, 27.009779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062523, 38.416203, 27.241133>,  <36.769836, 38.334930, 26.958622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062523, 38.416203, 27.241133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900818, 38.618824, 27.545759>,  <35.803795, 38.740395, 27.728535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900818, 38.618824, 27.545759>,  <36.062523, 38.416203, 27.241133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900818, 38.618824, 27.545759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030765, 0.824632, -0.564832,
		-0.914127, -0.251768, -0.317781,
		-0.404259, 0.506552, 0.761564,
		35.779541, 38.770790, 27.774229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338196, 38.648727, 27.208982>,  <36.062523, 38.416203, 27.241133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338196, 38.648727, 27.208982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.557251, 38.901581, 27.428257>,  <35.688683, 39.053291, 27.559822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.557251, 38.901581, 27.428257>,  <35.338196, 38.648727, 27.208982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557251, 38.901581, 27.428257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092851, 0.697027, -0.711007,
		-0.831550, 0.338472, 0.440410,
		0.547634, 0.632131, 0.548186,
		35.721542, 39.091221, 27.592712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981564, 39.254250, 27.291866>,  <35.338196, 38.648727, 27.208982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981564, 39.254250, 27.291866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364643, 39.356846, 27.344055>,  <35.594490, 39.418404, 27.375368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364643, 39.356846, 27.344055>,  <34.981564, 39.254250, 27.291866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364643, 39.356846, 27.344055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042080, 0.573340, -0.818236,
		-0.284675, 0.778135, 0.559881,
		0.957700, 0.256491, 0.130471,
		35.651955, 39.433792, 27.383196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987453, 39.983143, 27.211870>,  <34.981564, 39.254250, 27.291866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987453, 39.983143, 27.211870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.370167, 39.870380, 27.183319>,  <35.599796, 39.802723, 27.166189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.370167, 39.870380, 27.183319>,  <34.987453, 39.983143, 27.211870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370167, 39.870380, 27.183319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085828, 0.508261, -0.856915,
		0.277846, 0.813757, 0.510491,
		0.956784, -0.281905, -0.071376,
		35.657204, 39.785809, 27.161907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342663, 40.575191, 26.986313>,  <34.987453, 39.983143, 27.211870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342663, 40.575191, 26.986313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603432, 40.286171, 26.894293>,  <35.759892, 40.112759, 26.839081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603432, 40.286171, 26.894293>,  <35.342663, 40.575191, 26.986313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603432, 40.286171, 26.894293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213190, 0.465788, -0.858832,
		0.727703, 0.510845, 0.457696,
		0.651920, -0.722550, -0.230048,
		35.799007, 40.069405, 26.825279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897316, 40.948318, 26.689745>,  <35.342663, 40.575191, 26.986313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897316, 40.948318, 26.689745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895306, 40.563450, 26.580780>,  <35.894100, 40.332531, 26.515402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895306, 40.563450, 26.580780>,  <35.897316, 40.948318, 26.689745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895306, 40.563450, 26.580780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121351, 0.269815, -0.955235,
		0.992597, -0.037860, 0.115403,
		-0.005028, -0.962167, -0.272412,
		35.893799, 40.274799, 26.499056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397812, 40.934231, 26.258976>,  <35.897316, 40.948318, 26.689745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397812, 40.934231, 26.258976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180164, 40.611729, 26.166115>,  <36.049576, 40.418228, 26.110397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180164, 40.611729, 26.166115>,  <36.397812, 40.934231, 26.258976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180164, 40.611729, 26.166115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133170, 0.190200, -0.972671,
		0.828374, -0.560162, 0.003878,
		-0.544116, -0.806252, -0.232154,
		36.016930, 40.369854, 26.096468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668873, 40.703995, 25.681755>,  <36.397812, 40.934231, 26.258976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668873, 40.703995, 25.681755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.324005, 40.501724, 25.669418>,  <36.117085, 40.380363, 25.662016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.324005, 40.501724, 25.669418>,  <36.668873, 40.703995, 25.681755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324005, 40.501724, 25.669418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105476, -0.119627, -0.987200,
		0.495513, -0.854390, 0.156476,
		-0.862173, -0.505675, -0.030841,
		36.065353, 40.350021, 25.660166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929657, 40.164581, 25.311636>,  <36.668873, 40.703995, 25.681755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929657, 40.164581, 25.311636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529911, 40.176403, 25.319586>,  <36.290062, 40.183495, 25.324356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529911, 40.176403, 25.319586>,  <36.929657, 40.164581, 25.311636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529911, 40.176403, 25.319586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025904, -0.220264, -0.975096,
		-0.024441, -0.974993, 0.220889,
		-0.999366, 0.029555, 0.019873,
		36.230103, 40.185268, 25.325548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633602, 39.440376, 25.031242>,  <36.929657, 40.164581, 25.311636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633602, 39.440376, 25.031242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366470, 39.735680, 24.993332>,  <36.206192, 39.912861, 24.970585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366470, 39.735680, 24.993332>,  <36.633602, 39.440376, 25.031242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366470, 39.735680, 24.993332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050742, -0.081882, -0.995349,
		-0.742584, -0.669532, 0.017222,
		-0.667828, 0.738256, -0.094778,
		36.166122, 39.957157, 24.964899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116638, 39.090546, 24.556292>,  <36.633602, 39.440376, 25.031242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116638, 39.090546, 24.556292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058853, 39.486347, 24.557192>,  <36.024181, 39.723827, 24.557732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058853, 39.486347, 24.557192>,  <36.116638, 39.090546, 24.556292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058853, 39.486347, 24.557192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223972, -0.030485, -0.974119,
		-0.963829, -0.141228, 0.226026,
		-0.144463, 0.989508, 0.002249,
		36.015514, 39.783199, 24.557867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488655, 39.156300, 24.296091>,  <36.116638, 39.090546, 24.556292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488655, 39.156300, 24.296091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682510, 39.498665, 24.223944>,  <35.798824, 39.704086, 24.180655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682510, 39.498665, 24.223944>,  <35.488655, 39.156300, 24.296091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682510, 39.498665, 24.223944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242512, -0.066643, -0.967857,
		-0.840425, 0.512802, 0.175272,
		0.484638, 0.855916, -0.180369,
		35.827904, 39.755440, 24.169832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043308, 39.507492, 23.748747>,  <35.488655, 39.156300, 24.296091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043308, 39.507492, 23.748747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390057, 39.706310, 23.733351>,  <35.598106, 39.825600, 23.724113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390057, 39.706310, 23.733351>,  <35.043308, 39.507492, 23.748747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390057, 39.706310, 23.733351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154513, 0.194469, -0.968663,
		-0.473983, 0.845653, 0.245379,
		0.866871, 0.497044, -0.038489,
		35.650120, 39.855423, 23.721804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909248, 40.138016, 23.520823>,  <35.043308, 39.507492, 23.748747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909248, 40.138016, 23.520823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297817, 40.096951, 23.435215>,  <35.530956, 40.072311, 23.383850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297817, 40.096951, 23.435215>,  <34.909248, 40.138016, 23.520823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297817, 40.096951, 23.435215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176421, 0.290960, -0.940329,
		0.158807, 0.951211, 0.264532,
		0.971419, -0.102662, -0.214021,
		35.589245, 40.066151, 23.371008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046265, 40.832722, 23.273987>,  <34.909248, 40.138016, 23.520823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046265, 40.832722, 23.273987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327072, 40.568825, 23.166727>,  <35.495556, 40.410488, 23.102371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327072, 40.568825, 23.166727>,  <35.046265, 40.832722, 23.273987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327072, 40.568825, 23.166727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069161, 0.311593, -0.947695,
		0.708789, 0.683848, 0.173117,
		0.702022, -0.659744, -0.268149,
		35.537678, 40.370903, 23.086283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945778, 41.660324, 23.435999>,  <35.046265, 40.832722, 23.273987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945778, 41.660324, 23.435999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.583317, 41.820049, 23.380236>,  <34.365841, 41.915886, 23.346777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.583317, 41.820049, 23.380236>,  <34.945778, 41.660324, 23.435999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583317, 41.820049, 23.380236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319004, -0.428832, 0.845186,
		0.277714, 0.810339, 0.515971,
		-0.906152, 0.399317, -0.139409,
		34.311470, 41.939846, 23.338413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642811, 41.976822, 24.136890>,  <34.945778, 41.660324, 23.435999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642811, 41.976822, 24.136890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320580, 41.926910, 23.905210>,  <34.127239, 41.896961, 23.766203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320580, 41.926910, 23.905210>,  <34.642811, 41.976822, 24.136890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320580, 41.926910, 23.905210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510067, -0.351323, 0.785114,
		-0.301453, 0.927902, 0.219372,
		-0.805579, -0.124781, -0.579200,
		34.078907, 41.889477, 23.731451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179680, 42.247688, 24.522600>,  <34.642811, 41.976822, 24.136890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179680, 42.247688, 24.522600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.999088, 41.997314, 24.268236>,  <33.890732, 41.847092, 24.115618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.999088, 41.997314, 24.268236>,  <34.179680, 42.247688, 24.522600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999088, 41.997314, 24.268236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622048, -0.290149, 0.727235,
		-0.639706, 0.723896, -0.258362,
		-0.451478, -0.625930, -0.635908,
		33.863644, 41.809536, 24.077463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502079, 42.390400, 24.621861>,  <34.179680, 42.247688, 24.522600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502079, 42.390400, 24.621861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501953, 42.024857, 24.459444>,  <33.501877, 41.805531, 24.361994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501953, 42.024857, 24.459444>,  <33.502079, 42.390400, 24.621861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501953, 42.024857, 24.459444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398761, -0.372247, 0.838106,
		-0.917055, 0.162179, -0.364292,
		-0.000317, -0.913854, -0.406042,
		33.501858, 41.750702, 24.337631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846283, 42.127289, 24.710066>,  <33.502079, 42.390400, 24.621861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846283, 42.127289, 24.710066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.064518, 41.799961, 24.637745>,  <33.195461, 41.603565, 24.594353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.064518, 41.799961, 24.637745>,  <32.846283, 42.127289, 24.710066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064518, 41.799961, 24.637745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340681, -0.413680, 0.844278,
		-0.765680, -0.399034, -0.504485,
		0.545591, -0.818315, -0.180803,
		33.228195, 41.554466, 24.583504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426399, 41.652004, 25.024117>,  <32.846283, 42.127289, 24.710066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426399, 41.652004, 25.024117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725403, 41.403515, 24.930038>,  <32.904804, 41.254421, 24.873592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.725403, 41.403515, 24.930038>,  <32.426399, 41.652004, 25.024117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725403, 41.403515, 24.930038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260190, -0.599614, 0.756812,
		-0.611180, -0.504522, -0.609849,
		0.747503, -0.621225, -0.235201,
		32.949654, 41.217148, 24.859480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122883, 40.947113, 25.026518>,  <32.426399, 41.652004, 25.024117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122883, 40.947113, 25.026518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513126, 40.922092, 25.110683>,  <32.747272, 40.907082, 25.161182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513126, 40.922092, 25.110683>,  <32.122883, 40.947113, 25.026518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513126, 40.922092, 25.110683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211563, -0.523593, 0.825283,
		0.058553, -0.849670, -0.524054,
		0.975609, -0.062547, 0.210416,
		32.805809, 40.903328, 25.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239819, 40.235855, 25.248516>,  <32.122883, 40.947113, 25.026518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239819, 40.235855, 25.248516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.546455, 40.450600, 25.389442>,  <32.730438, 40.579445, 25.473999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.546455, 40.450600, 25.389442>,  <32.239819, 40.235855, 25.248516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546455, 40.450600, 25.389442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068852, -0.476778, 0.876323,
		0.638436, -0.696037, -0.328529,
		0.766589, 0.536857, 0.352316,
		32.776432, 40.611656, 25.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710373, 39.800987, 25.674166>,  <32.239819, 40.235855, 25.248516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710373, 39.800987, 25.674166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.834919, 40.157681, 25.805542>,  <32.909645, 40.371696, 25.884367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.834919, 40.157681, 25.805542>,  <32.710373, 39.800987, 25.674166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834919, 40.157681, 25.805542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141271, -0.298343, 0.943946,
		0.939731, -0.340310, 0.033082,
		0.311364, 0.891729, 0.328438,
		32.928329, 40.425198, 25.904074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304688, 39.798927, 26.099838>,  <32.710373, 39.800987, 25.674166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304688, 39.798927, 26.099838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.093449, 40.122089, 26.204454>,  <32.966705, 40.315987, 26.267225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.093449, 40.122089, 26.204454>,  <33.304688, 39.798927, 26.099838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093449, 40.122089, 26.204454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056405, -0.340684, 0.938484,
		0.847311, 0.480855, 0.225483,
		-0.528093, 0.807906, 0.261543,
		32.935020, 40.364460, 26.282917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379799, 39.783314, 26.705811>,  <33.304688, 39.798927, 26.099838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379799, 39.783314, 26.705811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100307, 40.069374, 26.713060>,  <32.932613, 40.241013, 26.717411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100307, 40.069374, 26.713060>,  <33.379799, 39.783314, 26.705811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100307, 40.069374, 26.713060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205649, -0.225063, 0.952395,
		0.685187, 0.661742, 0.304329,
		-0.698732, 0.715154, 0.018124,
		32.890686, 40.283920, 26.718498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390667, 40.113583, 27.296251>,  <33.379799, 39.783314, 26.705811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390667, 40.113583, 27.296251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009388, 40.131790, 27.176691>,  <32.780621, 40.142715, 27.104956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009388, 40.131790, 27.176691>,  <33.390667, 40.113583, 27.296251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009388, 40.131790, 27.176691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280838, -0.499515, 0.819521,
		-0.111999, 0.865108, 0.488921,
		-0.953198, 0.045522, -0.298901,
		32.723427, 40.145447, 27.087021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.171547, 44.150665, 20.552740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801403, 44.018368, 20.478632>,  <35.579319, 43.938988, 20.434166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801403, 44.018368, 20.478632>,  <36.171547, 44.150665, 20.552740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801403, 44.018368, 20.478632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095807, -0.268824, 0.958413,
		-0.366795, 0.904623, 0.217071,
		-0.925355, -0.330744, -0.185272,
		35.523796, 43.919144, 20.423050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723267, 44.421925, 21.029514>,  <36.171547, 44.150665, 20.552740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723267, 44.421925, 21.029514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487541, 44.111614, 20.939281>,  <35.346107, 43.925426, 20.885141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487541, 44.111614, 20.939281>,  <35.723267, 44.421925, 21.029514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487541, 44.111614, 20.939281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129298, -0.185057, 0.974185,
		-0.797494, 0.603263, 0.008749,
		-0.589309, -0.775775, -0.225583,
		35.310749, 43.878883, 20.871607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994343, 44.530430, 21.404667>,  <35.723267, 44.421925, 21.029514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994343, 44.530430, 21.404667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051033, 44.141525, 21.330233>,  <35.085049, 43.908184, 21.285572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051033, 44.141525, 21.330233>,  <34.994343, 44.530430, 21.404667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051033, 44.141525, 21.330233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402162, -0.228321, 0.886643,
		-0.904533, -0.050826, -0.423365,
		0.141727, -0.972258, -0.186084,
		35.093552, 43.849846, 21.274408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398285, 44.206810, 21.687140>,  <34.994343, 44.530430, 21.404667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398285, 44.206810, 21.687140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638054, 43.888969, 21.648552>,  <34.781914, 43.698265, 21.625401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638054, 43.888969, 21.648552>,  <34.398285, 44.206810, 21.687140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638054, 43.888969, 21.648552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472941, -0.448821, 0.758212,
		-0.645772, -0.408864, -0.644832,
		0.599420, -0.794600, -0.096467,
		34.817879, 43.650589, 21.619612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950539, 43.704521, 21.689087>,  <34.398285, 44.206810, 21.687140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950539, 43.704521, 21.689087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305450, 43.540970, 21.774450>,  <34.518398, 43.442837, 21.825668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305450, 43.540970, 21.774450>,  <33.950539, 43.704521, 21.689087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305450, 43.540970, 21.774450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432342, -0.576165, 0.693624,
		-0.160651, -0.707707, -0.687998,
		0.887283, -0.408882, 0.213410,
		34.571636, 43.418304, 21.838472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881435, 42.992367, 21.602713>,  <33.950539, 43.704521, 21.689087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881435, 42.992367, 21.602713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185425, 43.070038, 21.850819>,  <34.367821, 43.116642, 21.999683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185425, 43.070038, 21.850819>,  <33.881435, 42.992367, 21.602713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185425, 43.070038, 21.850819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341144, -0.693132, 0.634972,
		0.553223, -0.694164, -0.460522,
		0.759977, 0.194177, 0.620267,
		34.413418, 43.128292, 22.036900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007099, 42.323292, 21.868504>,  <33.881435, 42.992367, 21.602713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007099, 42.323292, 21.868504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243458, 42.531185, 22.115314>,  <34.385273, 42.655922, 22.263401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243458, 42.531185, 22.115314>,  <34.007099, 42.323292, 21.868504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243458, 42.531185, 22.115314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143407, -0.684984, 0.714304,
		0.793899, -0.510566, -0.330222,
		0.590897, 0.519729, 0.617027,
		34.420727, 42.687103, 22.300423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514420, 41.759087, 22.162718>,  <34.007099, 42.323292, 21.868504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514420, 41.759087, 22.162718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464958, 42.088039, 22.384853>,  <34.435280, 42.285412, 22.518135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464958, 42.088039, 22.384853>,  <34.514420, 41.759087, 22.162718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464958, 42.088039, 22.384853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330253, -0.561840, 0.758465,
		0.935757, -0.089614, 0.341068,
		-0.123657, 0.822378, 0.555341,
		34.427860, 42.334751, 22.551456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872574, 41.663071, 22.711876>,  <34.514420, 41.759087, 22.162718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872574, 41.663071, 22.711876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563396, 41.901463, 22.798925>,  <34.377888, 42.044498, 22.851156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563396, 41.901463, 22.798925>,  <34.872574, 41.663071, 22.711876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563396, 41.901463, 22.798925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245984, -0.597668, 0.763076,
		0.584845, 0.536285, 0.608568,
		-0.772948, 0.595979, 0.217625,
		34.331512, 42.080257, 22.864212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535046, 41.199387, 22.789951>,  <34.872574, 41.663071, 22.711876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535046, 41.199387, 22.789951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580711, 40.809456, 22.713352>,  <35.608112, 40.575497, 22.667393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580711, 40.809456, 22.713352>,  <35.535046, 41.199387, 22.789951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580711, 40.809456, 22.713352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150003, 0.207463, -0.966674,
		0.982072, 0.081637, 0.169913,
		0.114167, -0.974831, -0.191497,
		35.614960, 40.517006, 22.655903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123478, 41.170265, 22.459633>,  <35.535046, 41.199387, 22.789951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123478, 41.170265, 22.459633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956444, 40.818966, 22.366425>,  <35.856224, 40.608185, 22.310499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956444, 40.818966, 22.366425>,  <36.123478, 41.170265, 22.459633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956444, 40.818966, 22.366425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339498, 0.087071, -0.936568,
		0.842831, -0.470207, 0.261805,
		-0.417585, -0.878251, -0.233021,
		35.831169, 40.555492, 22.296518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697048, 40.836254, 22.020706>,  <36.123478, 41.170265, 22.459633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697048, 40.836254, 22.020706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361721, 40.629143, 21.952444>,  <36.160522, 40.504875, 21.911488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361721, 40.629143, 21.952444>,  <36.697048, 40.836254, 22.020706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361721, 40.629143, 21.952444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286205, -0.151561, -0.946105,
		0.464008, -0.841983, 0.275248,
		-0.838321, -0.517777, -0.170654,
		36.110226, 40.473808, 21.901247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949047, 40.314060, 21.515337>,  <36.697048, 40.836254, 22.020706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949047, 40.314060, 21.515337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549782, 40.314880, 21.491100>,  <36.310223, 40.315372, 21.476559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549782, 40.314880, 21.491100>,  <36.949047, 40.314060, 21.515337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549782, 40.314880, 21.491100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060589, -0.002177, -0.998160,
		-0.002177, -0.999995, 0.002049,
		0.998160, -0.002049, 0.060593,
		36.250332, 40.315495, 21.472923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803585, 39.788624, 21.074041>,  <36.949047, 40.314060, 21.515337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803585, 39.788624, 21.074041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489857, 40.036514, 21.062887>,  <36.301620, 40.185249, 21.056194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489857, 40.036514, 21.062887>,  <36.803585, 39.788624, 21.074041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489857, 40.036514, 21.062887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053251, 0.022470, -0.998328,
		-0.618062, -0.784498, -0.050625,
		-0.784324, 0.619724, -0.027888,
		36.254559, 40.222431, 21.054522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371983, 39.599365, 20.565386>,  <36.803585, 39.788624, 21.074041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371983, 39.599365, 20.565386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231834, 39.972511, 20.598854>,  <36.147747, 40.196400, 20.618935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231834, 39.972511, 20.598854>,  <36.371983, 39.599365, 20.565386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231834, 39.972511, 20.598854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085430, 0.120792, -0.988995,
		-0.932707, -0.339367, -0.122017,
		-0.350371, 0.932866, 0.083672,
		36.126724, 40.252373, 20.623955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863346, 39.703075, 20.044338>,  <36.371983, 39.599365, 20.565386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863346, 39.703075, 20.044338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003510, 40.060829, 20.155542>,  <36.087608, 40.275482, 20.222265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003510, 40.060829, 20.155542>,  <35.863346, 39.703075, 20.044338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003510, 40.060829, 20.155542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030678, 0.285713, -0.957824,
		-0.936093, 0.344162, 0.072679,
		0.350412, 0.894383, 0.278012,
		36.108635, 40.329144, 20.238945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512424, 40.244453, 19.520164>,  <35.863346, 39.703075, 20.044338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512424, 40.244453, 19.520164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821320, 40.443218, 19.678522>,  <36.006657, 40.562477, 19.773537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821320, 40.443218, 19.678522>,  <35.512424, 40.244453, 19.520164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821320, 40.443218, 19.678522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222092, 0.372680, -0.900991,
		-0.595252, 0.783703, 0.177438,
		0.772237, 0.496909, 0.395893,
		36.052990, 40.592293, 19.797291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517902, 40.993496, 19.246628>,  <35.512424, 40.244453, 19.520164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517902, 40.993496, 19.246628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891705, 40.891449, 19.345921>,  <36.115986, 40.830219, 19.405497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891705, 40.891449, 19.345921>,  <35.517902, 40.993496, 19.246628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891705, 40.891449, 19.345921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310663, 0.244139, -0.918632,
		0.173756, 0.935581, 0.307404,
		0.934504, -0.255117, 0.248230,
		36.172054, 40.814915, 19.420389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983696, 41.452255, 18.875242>,  <35.517902, 40.993496, 19.246628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983696, 41.452255, 18.875242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273106, 41.206375, 19.000874>,  <36.446751, 41.058846, 19.076252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273106, 41.206375, 19.000874>,  <35.983696, 41.452255, 18.875242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273106, 41.206375, 19.000874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588689, 0.311857, -0.745782,
		0.360488, 0.724489, 0.587507,
		0.723528, -0.614705, 0.314078,
		36.490166, 41.021965, 19.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698021, 41.856838, 18.816914>,  <35.983696, 41.452255, 18.875242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698021, 41.856838, 18.816914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769611, 41.464123, 18.791407>,  <36.812565, 41.228493, 18.776102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769611, 41.464123, 18.791407>,  <36.698021, 41.856838, 18.816914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769611, 41.464123, 18.791407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756999, 0.178817, -0.628471,
		0.628427, 0.064207, 0.775214,
		0.178974, -0.981785, -0.063769,
		36.823303, 41.169586, 18.772276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426315, 41.816013, 18.774479>,  <36.698021, 41.856838, 18.816914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426315, 41.816013, 18.774479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303085, 41.461346, 18.636549>,  <37.229149, 41.248543, 18.553791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303085, 41.461346, 18.636549>,  <37.426315, 41.816013, 18.774479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303085, 41.461346, 18.636549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723227, 0.017208, -0.690395,
		0.618088, -0.462080, 0.635963,
		-0.308074, -0.886671, -0.344825,
		37.210663, 41.195343, 18.533102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009258, 41.417957, 18.637306>,  <37.426315, 41.816013, 18.774479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009258, 41.417957, 18.637306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725773, 41.241951, 18.416721>,  <37.555683, 41.136349, 18.284370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725773, 41.241951, 18.416721>,  <38.009258, 41.417957, 18.637306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725773, 41.241951, 18.416721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634471, -0.055721, -0.770936,
		0.308497, -0.896259, 0.318668,
		-0.708715, -0.440017, -0.551460,
		37.513157, 41.109947, 18.251284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323448, 40.812584, 18.306845>,  <38.009258, 41.417957, 18.637306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323448, 40.812584, 18.306845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008293, 40.893463, 18.074175>,  <37.819199, 40.941990, 17.934574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008293, 40.893463, 18.074175>,  <38.323448, 40.812584, 18.306845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008293, 40.893463, 18.074175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586332, -0.042454, -0.808958,
		-0.188266, -0.978423, -0.085108,
		-0.787890, 0.202201, -0.581673,
		37.771927, 40.954124, 17.899673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.950623, 38.768894, 15.781198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.205261, 39.006184, 15.978307>,  <32.358044, 39.148560, 16.096573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.205261, 39.006184, 15.978307>,  <31.950623, 38.768894, 15.781198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205261, 39.006184, 15.978307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093375, -0.574979, 0.812822,
		0.765523, -0.563453, -0.310638,
		0.636597, 0.593228, 0.492772,
		32.396240, 39.184151, 16.126139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230095, 38.282745, 16.247276>,  <31.950623, 38.768894, 15.781198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230095, 38.282745, 16.247276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.311695, 38.650318, 16.382299>,  <32.360657, 38.870861, 16.463312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.311695, 38.650318, 16.382299>,  <32.230095, 38.282745, 16.247276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311695, 38.650318, 16.382299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186958, -0.301891, 0.934831,
		0.960952, -0.253819, 0.110215,
		0.204005, 0.918933, 0.337556,
		32.372898, 38.925999, 16.483566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734539, 38.230038, 16.806055>,  <32.230095, 38.282745, 16.247276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734539, 38.230038, 16.806055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.574589, 38.593597, 16.853380>,  <32.478619, 38.811733, 16.881775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.574589, 38.593597, 16.853380>,  <32.734539, 38.230038, 16.806055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574589, 38.593597, 16.853380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008970, -0.132956, 0.991081,
		0.916523, 0.395253, 0.061319,
		-0.399880, 0.908899, 0.118312,
		32.454624, 38.866268, 16.888874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106449, 38.567753, 17.461706>,  <32.734539, 38.230038, 16.806055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106449, 38.567753, 17.461706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745960, 38.726116, 17.391222>,  <32.529667, 38.821133, 17.348932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745960, 38.726116, 17.391222>,  <33.106449, 38.567753, 17.461706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745960, 38.726116, 17.391222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281682, -0.226191, 0.932466,
		0.329313, 0.889997, 0.315369,
		-0.901226, 0.395907, -0.176209,
		32.475594, 38.844887, 17.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015934, 38.834496, 17.978172>,  <33.106449, 38.567753, 17.461706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015934, 38.834496, 17.978172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.640736, 38.845200, 17.839931>,  <32.415615, 38.851620, 17.756987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.640736, 38.845200, 17.839931>,  <33.015934, 38.834496, 17.978172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640736, 38.845200, 17.839931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346529, -0.097080, 0.933002,
		-0.008587, 0.994917, 0.100332,
		-0.938000, 0.026756, -0.345601,
		32.359337, 38.853226, 17.736252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673752, 39.277157, 18.528124>,  <33.015934, 38.834496, 17.978172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673752, 39.277157, 18.528124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.415493, 39.048595, 18.325487>,  <32.260536, 38.911457, 18.203905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.415493, 39.048595, 18.325487>,  <32.673752, 39.277157, 18.528124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415493, 39.048595, 18.325487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480395, -0.211754, 0.851106,
		-0.593601, 0.792877, -0.137783,
		-0.645646, -0.571408, -0.506591,
		32.221798, 38.877174, 18.173510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028404, 39.536026, 18.744947>,  <32.673752, 39.277157, 18.528124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028404, 39.536026, 18.744947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980684, 39.163223, 18.608049>,  <31.952053, 38.939541, 18.525911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980684, 39.163223, 18.608049>,  <32.028404, 39.536026, 18.744947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980684, 39.163223, 18.608049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400716, -0.270186, 0.875458,
		-0.908403, 0.241582, -0.341238,
		-0.119298, -0.932008, -0.342243,
		31.944895, 38.883621, 18.505377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316463, 39.392094, 18.763954>,  <32.028404, 39.536026, 18.744947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316463, 39.392094, 18.763954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.483541, 39.028679, 18.760078>,  <31.583788, 38.810631, 18.757753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.483541, 39.028679, 18.760078>,  <31.316463, 39.392094, 18.763954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483541, 39.028679, 18.760078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437797, -0.210595, 0.874062,
		-0.796157, -0.360849, -0.485719,
		0.417694, -0.908536, -0.009688,
		31.608850, 38.756119, 18.757172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074276, 39.051670, 19.346140>,  <31.316463, 39.392094, 18.763954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074276, 39.051670, 19.346140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.356287, 38.784382, 19.251125>,  <31.525494, 38.624008, 19.194117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.356287, 38.784382, 19.251125>,  <31.074276, 39.051670, 19.346140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356287, 38.784382, 19.251125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150811, -0.468550, 0.870469,
		-0.692961, -0.577880, -0.431115,
		0.705026, -0.668218, -0.237536,
		31.567795, 38.583916, 19.179865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742765, 38.350021, 19.481386>,  <31.074276, 39.051670, 19.346140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742765, 38.350021, 19.481386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.139482, 38.310322, 19.513618>,  <31.377514, 38.286503, 19.532959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.139482, 38.310322, 19.513618>,  <30.742765, 38.350021, 19.481386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139482, 38.310322, 19.513618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119202, -0.490087, 0.863485,
		-0.046209, -0.866005, -0.497896,
		0.991794, -0.099251, 0.080583,
		31.437021, 38.280548, 19.537794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973610, 37.612877, 19.584072>,  <30.742765, 38.350021, 19.481386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973610, 37.612877, 19.584072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284229, 37.823990, 19.721718>,  <31.470602, 37.950657, 19.804306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284229, 37.823990, 19.721718>,  <30.973610, 37.612877, 19.584072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284229, 37.823990, 19.721718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075586, -0.464181, 0.882509,
		0.625506, -0.711323, -0.320566,
		0.776549, 0.527784, 0.344114,
		31.517195, 37.982327, 19.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295382, 37.198357, 20.022503>,  <30.973610, 37.612877, 19.584072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295382, 37.198357, 20.022503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.473154, 37.542511, 20.122271>,  <31.579817, 37.749004, 20.182131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.473154, 37.542511, 20.122271>,  <31.295382, 37.198357, 20.022503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473154, 37.542511, 20.122271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020172, -0.268747, 0.963000,
		0.895586, -0.433018, -0.102083,
		0.444431, 0.860390, 0.249421,
		31.606483, 37.800629, 20.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841837, 37.106915, 20.515476>,  <31.295382, 37.198357, 20.022503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841837, 37.106915, 20.515476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.770353, 37.494118, 20.585939>,  <31.727463, 37.726440, 20.628218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.770353, 37.494118, 20.585939>,  <31.841837, 37.106915, 20.515476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770353, 37.494118, 20.585939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033331, -0.172979, 0.984361,
		0.983337, 0.181785, -0.001352,
		-0.178709, 0.968004, 0.176156,
		31.716742, 37.784519, 20.638786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308701, 37.356796, 20.938652>,  <31.841837, 37.106915, 20.515476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308701, 37.356796, 20.938652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012405, 37.619423, 20.995543>,  <31.834627, 37.776997, 21.029676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012405, 37.619423, 20.995543>,  <32.308701, 37.356796, 20.938652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012405, 37.619423, 20.995543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120853, -0.078020, 0.989600,
		0.660832, 0.750225, -0.021555,
		-0.740740, 0.656564, 0.142225,
		31.790184, 37.816391, 21.038210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084557, 37.530678, 20.965879>,  <32.308701, 37.356796, 20.938652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084557, 37.530678, 20.965879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.313332, 37.204716, 21.003437>,  <33.450596, 37.009140, 21.025970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.313332, 37.204716, 21.003437>,  <33.084557, 37.530678, 20.965879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313332, 37.204716, 21.003437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279253, 0.085801, -0.956376,
		0.771298, 0.573211, 0.276637,
		0.571941, -0.814903, 0.093893,
		33.484913, 36.960243, 21.031605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663486, 37.760551, 20.631807>,  <33.084557, 37.530678, 20.965879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663486, 37.760551, 20.631807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693481, 37.362480, 20.657085>,  <33.711479, 37.123638, 20.672253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693481, 37.362480, 20.657085>,  <33.663486, 37.760551, 20.631807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693481, 37.362480, 20.657085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241190, -0.043392, -0.969508,
		0.967576, 0.087945, 0.236773,
		0.074990, -0.995180, 0.063196,
		33.715977, 37.063927, 20.676044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235832, 37.721798, 20.423546>,  <33.663486, 37.760551, 20.631807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235832, 37.721798, 20.423546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076080, 37.358662, 20.372452>,  <33.980228, 37.140778, 20.341795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076080, 37.358662, 20.372452>,  <34.235832, 37.721798, 20.423546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076080, 37.358662, 20.372452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384457, -0.039363, -0.922303,
		0.832279, -0.417457, 0.364748,
		-0.399379, -0.907844, -0.127733,
		33.956268, 37.086308, 20.334131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744648, 37.256813, 20.202785>,  <34.235832, 37.721798, 20.423546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744648, 37.256813, 20.202785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411968, 37.067463, 20.086725>,  <34.212360, 36.953854, 20.017090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411968, 37.067463, 20.086725>,  <34.744648, 37.256813, 20.202785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411968, 37.067463, 20.086725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354344, -0.050227, -0.933765,
		0.427448, -0.879428, 0.209512,
		-0.831702, -0.473376, -0.290151,
		34.162457, 36.925449, 19.999680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948891, 36.621208, 19.800724>,  <34.744648, 37.256813, 20.202785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948891, 36.621208, 19.800724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563255, 36.669617, 19.706154>,  <34.331875, 36.698662, 19.649412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.563255, 36.669617, 19.706154>,  <34.948891, 36.621208, 19.800724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563255, 36.669617, 19.706154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244981, 0.061312, -0.967587,
		-0.102603, -0.990754, -0.088758,
		-0.964084, 0.121021, -0.236425,
		34.274029, 36.705921, 19.635227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781559, 36.138142, 19.293070>,  <34.948891, 36.621208, 19.800724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781559, 36.138142, 19.293070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545219, 36.459217, 19.260590>,  <34.403416, 36.651863, 19.241102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545219, 36.459217, 19.260590>,  <34.781559, 36.138142, 19.293070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545219, 36.459217, 19.260590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315167, 0.136994, -0.939097,
		-0.742675, -0.580457, -0.333922,
		-0.590851, 0.802684, -0.081199,
		34.367966, 36.700024, 19.236231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385021, 36.189751, 18.696407>,  <34.781559, 36.138142, 19.293070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385021, 36.189751, 18.696407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393536, 36.579731, 18.784973>,  <34.398643, 36.813717, 18.838114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393536, 36.579731, 18.784973>,  <34.385021, 36.189751, 18.696407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393536, 36.579731, 18.784973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153801, 0.215637, -0.964285,
		-0.987872, 0.054584, -0.145357,
		0.021290, 0.974947, 0.221417,
		34.399921, 36.872215, 18.851398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999996, 36.522251, 18.072817>,  <34.385021, 36.189751, 18.696407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999996, 36.522251, 18.072817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177341, 36.817883, 18.275673>,  <34.283749, 36.995262, 18.397387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177341, 36.817883, 18.275673>,  <33.999996, 36.522251, 18.072817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177341, 36.817883, 18.275673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188753, 0.476119, -0.858885,
		-0.876242, 0.476524, 0.071591,
		0.443365, 0.739078, 0.507141,
		34.310352, 37.039604, 18.427814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632214, 37.233463, 17.860806>,  <33.999996, 36.522251, 18.072817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632214, 37.233463, 17.860806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994144, 37.304768, 18.015472>,  <34.211304, 37.347549, 18.108273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994144, 37.304768, 18.015472>,  <33.632214, 37.233463, 17.860806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994144, 37.304768, 18.015472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268766, 0.465229, -0.843402,
		-0.330234, 0.867056, 0.373042,
		0.904826, 0.178260, 0.386670,
		34.265591, 37.358246, 18.131474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782646, 38.001179, 17.953636>,  <33.632214, 37.233463, 17.860806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782646, 38.001179, 17.953636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125645, 37.800022, 17.910192>,  <34.331444, 37.679329, 17.884127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125645, 37.800022, 17.910192>,  <33.782646, 38.001179, 17.953636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125645, 37.800022, 17.910192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195211, 0.513338, -0.835689,
		0.476016, 0.695400, 0.538357,
		0.857497, -0.502895, -0.108608,
		34.382893, 37.649155, 17.877609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211380, 38.503269, 17.802021>,  <33.782646, 38.001179, 17.953636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211380, 38.503269, 17.802021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418198, 38.187000, 17.670876>,  <34.542290, 37.997238, 17.592188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418198, 38.187000, 17.670876>,  <34.211380, 38.503269, 17.802021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418198, 38.187000, 17.670876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161097, 0.466085, -0.869950,
		0.840660, 0.396987, 0.368364,
		0.517048, -0.790674, -0.327866,
		34.573311, 37.949799, 17.572515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848988, 38.810738, 17.550938>,  <34.211380, 38.503269, 17.802021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848988, 38.810738, 17.550938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831154, 38.451241, 17.376459>,  <34.820454, 38.235542, 17.271772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831154, 38.451241, 17.376459>,  <34.848988, 38.810738, 17.550938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831154, 38.451241, 17.376459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276853, 0.408415, -0.869799,
		0.959877, -0.159539, 0.230614,
		-0.044581, -0.898746, -0.436197,
		34.817780, 38.181618, 17.245600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556225, 38.775314, 17.077932>,  <34.848988, 38.810738, 17.550938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556225, 38.775314, 17.077932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300087, 38.494934, 16.952314>,  <35.146404, 38.326706, 16.876944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300087, 38.494934, 16.952314>,  <35.556225, 38.775314, 17.077932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300087, 38.494934, 16.952314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210204, 0.233331, -0.949406,
		0.738767, -0.673958, -0.002068,
		-0.640342, -0.700954, -0.314046,
		35.107983, 38.284649, 16.858101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894234, 38.280590, 16.598221>,  <35.556225, 38.775314, 17.077932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894234, 38.280590, 16.598221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510159, 38.219227, 16.504835>,  <35.279713, 38.182407, 16.448803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510159, 38.219227, 16.504835>,  <35.894234, 38.280590, 16.598221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510159, 38.219227, 16.504835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191981, 0.244738, -0.950393,
		0.202931, -0.957377, -0.205544,
		-0.960189, -0.153404, -0.233463,
		35.222103, 38.173203, 16.434795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633476, 38.012379, 16.380392>,  <35.894234, 38.280590, 16.598221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633476, 38.012379, 16.380392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850178, 38.323307, 16.508314>,  <36.980198, 38.509865, 16.585068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850178, 38.323307, 16.508314>,  <36.633476, 38.012379, 16.380392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850178, 38.323307, 16.508314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165730, -0.274221, 0.947278,
		0.824039, -0.566190, -0.019733,
		0.541751, 0.777324, 0.319803,
		37.012703, 38.556503, 16.604256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268127, 37.740997, 16.794268>,  <36.633476, 38.012379, 16.380392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268127, 37.740997, 16.794268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.184288, 38.111122, 16.920681>,  <37.133984, 38.333195, 16.996529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.184288, 38.111122, 16.920681>,  <37.268127, 37.740997, 16.794268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184288, 38.111122, 16.920681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040290, -0.331109, 0.942732,
		0.976958, 0.184859, 0.106680,
		-0.209595, 0.925307, 0.316032,
		37.121410, 38.388714, 17.015491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735203, 37.792850, 17.285301>,  <37.268127, 37.740997, 16.794268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735203, 37.792850, 17.285301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495037, 38.101395, 17.369688>,  <37.350937, 38.286522, 17.420321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495037, 38.101395, 17.369688>,  <37.735203, 37.792850, 17.285301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495037, 38.101395, 17.369688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247563, -0.071564, 0.966225,
		0.760406, 0.632361, -0.147992,
		-0.600412, 0.771361, 0.210967,
		37.314915, 38.332802, 17.432978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156967, 38.185856, 17.740778>,  <37.735203, 37.792850, 17.285301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156967, 38.185856, 17.740778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781898, 38.308849, 17.805563>,  <37.556858, 38.382645, 17.844435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781898, 38.308849, 17.805563>,  <38.156967, 38.185856, 17.740778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781898, 38.308849, 17.805563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175171, 0.015660, 0.984413,
		0.300157, 0.951424, -0.068547,
		-0.937668, 0.307486, 0.161962,
		37.500599, 38.401096, 17.854151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155987, 38.869091, 18.129911>,  <38.156967, 38.185856, 17.740778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155987, 38.869091, 18.129911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817039, 38.663986, 18.185118>,  <37.613670, 38.540924, 18.218243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817039, 38.663986, 18.185118>,  <38.155987, 38.869091, 18.129911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817039, 38.663986, 18.185118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167565, -0.011568, 0.985793,
		-0.503876, 0.858455, 0.095723,
		-0.847367, -0.512758, 0.138018,
		37.562828, 38.510159, 18.226522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010372, 39.119835, 18.792126>,  <38.155987, 38.869091, 18.129911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010372, 39.119835, 18.792126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737907, 38.828655, 18.760881>,  <37.574429, 38.653946, 18.742136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737907, 38.828655, 18.760881>,  <38.010372, 39.119835, 18.792126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737907, 38.828655, 18.760881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096510, -0.195036, 0.976036,
		-0.725741, 0.657304, 0.203107,
		-0.681165, -0.727951, -0.078109,
		37.533558, 38.610271, 18.737450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349140, 39.225929, 19.125257>,  <38.010372, 39.119835, 18.792126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349140, 39.225929, 19.125257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406956, 38.830288, 19.114120>,  <37.441647, 38.592903, 19.107439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406956, 38.830288, 19.114120>,  <37.349140, 39.225929, 19.125257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406956, 38.830288, 19.114120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098341, -0.042357, 0.994251,
		-0.984600, -0.140974, -0.103392,
		0.144543, -0.989107, -0.027841,
		37.450317, 38.533554, 19.105768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781551, 39.005917, 19.535885>,  <37.349140, 39.225929, 19.125257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781551, 39.005917, 19.535885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022297, 38.687881, 19.505945>,  <37.166744, 38.497063, 19.487982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022297, 38.687881, 19.505945>,  <36.781551, 39.005917, 19.535885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022297, 38.687881, 19.505945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198056, -0.239405, 0.950505,
		-0.773652, -0.557247, -0.301560,
		0.601861, -0.795086, -0.074849,
		37.202854, 38.449356, 19.483490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331123, 38.567169, 19.699669>,  <36.781551, 39.005917, 19.535885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331123, 38.567169, 19.699669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701206, 38.428097, 19.760473>,  <36.923256, 38.344654, 19.796955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701206, 38.428097, 19.760473>,  <36.331123, 38.567169, 19.699669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701206, 38.428097, 19.760473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224312, -0.178015, 0.958120,
		-0.306064, -0.920558, -0.242690,
		0.925208, -0.347685, 0.152008,
		36.978767, 38.323792, 19.806076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239029, 38.015411, 20.169476>,  <36.331123, 38.567169, 19.699669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239029, 38.015411, 20.169476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626419, 38.112148, 20.193392>,  <36.858852, 38.170189, 20.207741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626419, 38.112148, 20.193392>,  <36.239029, 38.015411, 20.169476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626419, 38.112148, 20.193392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070656, 0.036507, 0.996832,
		0.238895, -0.969628, 0.052444,
		0.968471, 0.241844, 0.059789,
		36.916962, 38.184700, 20.211329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604645, 37.503345, 20.556776>,  <36.239029, 38.015411, 20.169476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604645, 37.503345, 20.556776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873684, 37.798420, 20.580212>,  <37.035107, 37.975464, 20.594273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873684, 37.798420, 20.580212>,  <36.604645, 37.503345, 20.556776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873684, 37.798420, 20.580212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006695, -0.073104, 0.997302,
		0.739976, -0.671178, -0.044231,
		0.672601, 0.737683, 0.058589,
		37.075462, 38.019726, 20.597788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983395, 37.185341, 20.963490>,  <36.604645, 37.503345, 20.556776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983395, 37.185341, 20.963490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113468, 37.563324, 20.977997>,  <37.191513, 37.790112, 20.986702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113468, 37.563324, 20.977997>,  <36.983395, 37.185341, 20.963490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113468, 37.563324, 20.977997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291051, -0.136503, 0.946919,
		0.899748, -0.297365, -0.319419,
		0.325182, 0.944956, 0.036270,
		37.211021, 37.846809, 20.988878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688133, 37.213093, 21.227924>,  <36.983395, 37.185341, 20.963490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688133, 37.213093, 21.227924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532051, 37.573864, 21.301958>,  <37.438400, 37.790329, 21.346378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532051, 37.573864, 21.301958>,  <37.688133, 37.213093, 21.227924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532051, 37.573864, 21.301958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357169, -0.037000, 0.933307,
		0.848627, 0.430293, -0.307703,
		-0.390210, 0.901931, 0.185086,
		37.414989, 37.844444, 21.357485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120770, 37.517471, 21.716555>,  <37.688133, 37.213093, 21.227924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120770, 37.517471, 21.716555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777496, 37.719650, 21.752447>,  <37.571533, 37.840958, 21.773983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777496, 37.719650, 21.752447>,  <38.120770, 37.517471, 21.716555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777496, 37.719650, 21.752447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075594, -0.048466, 0.995960,
		0.507750, 0.861498, 0.003384,
		-0.858181, 0.505443, 0.089733,
		37.520042, 37.871284, 21.779367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.542801, 40.443726, 17.735994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238773, 40.669579, 17.607317>,  <38.056358, 40.805088, 17.530109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238773, 40.669579, 17.607317>,  <38.542801, 40.443726, 17.735994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238773, 40.669579, 17.607317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518851, 0.229228, -0.823558,
		-0.391263, -0.792874, -0.467187,
		-0.760070, 0.564629, -0.321695,
		38.010754, 40.838966, 17.510809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425335, 40.252007, 16.984055>,  <38.542801, 40.443726, 17.735994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425335, 40.252007, 16.984055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243378, 40.605839, 17.025219>,  <38.134201, 40.818138, 17.049917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.243378, 40.605839, 17.025219>,  <38.425335, 40.252007, 16.984055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243378, 40.605839, 17.025219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287157, 0.255087, -0.923294,
		-0.842976, -0.390453, -0.370051,
		-0.454898, 0.884577, 0.102911,
		38.106907, 40.871212, 17.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976192, 40.378666, 16.393364>,  <38.425335, 40.252007, 16.984055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976192, 40.378666, 16.393364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072540, 40.730919, 16.556562>,  <38.130348, 40.942272, 16.654482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072540, 40.730919, 16.556562>,  <37.976192, 40.378666, 16.393364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072540, 40.730919, 16.556562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353084, 0.312061, -0.882014,
		-0.904053, 0.356511, -0.235771,
		0.240873, 0.880635, 0.407998,
		38.144802, 40.995110, 16.678963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900291, 40.821201, 15.888515>,  <37.976192, 40.378666, 16.393364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900291, 40.821201, 15.888515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126793, 41.043076, 16.132378>,  <38.262691, 41.176201, 16.278696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126793, 41.043076, 16.132378>,  <37.900291, 40.821201, 15.888515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126793, 41.043076, 16.132378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386171, 0.474921, -0.790773,
		-0.728170, 0.683209, 0.054721,
		0.566251, 0.554686, 0.609658,
		38.296669, 41.209480, 16.315275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808693, 41.491219, 15.570610>,  <37.900291, 40.821201, 15.888515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808693, 41.491219, 15.570610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123219, 41.531132, 15.814494>,  <38.311935, 41.555080, 15.960825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123219, 41.531132, 15.814494>,  <37.808693, 41.491219, 15.570610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123219, 41.531132, 15.814494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461804, 0.560647, -0.687322,
		-0.410415, 0.822021, 0.394767,
		0.786318, 0.099782, 0.609710,
		38.359116, 41.561066, 15.997407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903168, 42.143978, 15.768911>,  <37.808693, 41.491219, 15.570610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903168, 42.143978, 15.768911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267044, 41.981915, 15.805376>,  <38.485371, 41.884674, 15.827255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267044, 41.981915, 15.805376>,  <37.903168, 42.143978, 15.768911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267044, 41.981915, 15.805376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348086, 0.624154, -0.699476,
		0.226503, 0.668038, 0.708817,
		0.909688, -0.405163, 0.091162,
		38.539951, 41.860367, 15.832725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358418, 42.766850, 15.748132>,  <37.903168, 42.143978, 15.768911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358418, 42.766850, 15.748132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543549, 42.422237, 15.664660>,  <38.654629, 42.215469, 15.614576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543549, 42.422237, 15.664660>,  <38.358418, 42.766850, 15.748132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543549, 42.422237, 15.664660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420771, 0.420719, -0.803708,
		0.780217, 0.284175, 0.557230,
		0.462831, -0.861534, -0.208680,
		38.682400, 42.163776, 15.602056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021976, 42.985054, 15.588681>,  <38.358418, 42.766850, 15.748132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021976, 42.985054, 15.588681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993694, 42.619450, 15.428886>,  <38.976727, 42.400089, 15.333010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993694, 42.619450, 15.428886>,  <39.021976, 42.985054, 15.588681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993694, 42.619450, 15.428886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329825, 0.356542, -0.874124,
		0.941391, -0.193562, 0.276255,
		-0.070701, -0.914008, -0.399487,
		38.972485, 42.345245, 15.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691017, 42.846321, 15.268103>,  <39.021976, 42.985054, 15.588681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691017, 42.846321, 15.268103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434505, 42.595486, 15.091235>,  <39.280598, 42.444984, 14.985115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434505, 42.595486, 15.091235>,  <39.691017, 42.846321, 15.268103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434505, 42.595486, 15.091235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381664, 0.239225, -0.892807,
		0.665648, -0.741302, 0.085927,
		-0.641284, -0.627090, -0.442168,
		39.242119, 42.407360, 14.958585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003075, 42.684784, 14.767292>,  <39.691017, 42.846321, 15.268103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003075, 42.684784, 14.767292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646435, 42.567337, 14.629399>,  <39.432453, 42.496868, 14.546663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646435, 42.567337, 14.629399>,  <40.003075, 42.684784, 14.767292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646435, 42.567337, 14.629399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241925, 0.334671, -0.910751,
		0.382791, -0.895422, -0.227357,
		-0.891596, -0.293624, -0.344734,
		39.378956, 42.479252, 14.525979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114128, 42.387016, 14.069795>,  <40.003075, 42.684784, 14.767292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114128, 42.387016, 14.069795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719322, 42.448677, 14.087870>,  <39.482437, 42.485672, 14.098715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719322, 42.448677, 14.087870>,  <40.114128, 42.387016, 14.069795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719322, 42.448677, 14.087870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016207, 0.375432, -0.926708,
		-0.159818, -0.913941, -0.373055,
		-0.987014, 0.154151, 0.045189,
		39.423218, 42.494923, 14.101426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838432, 42.228024, 13.467524>,  <40.114128, 42.387016, 14.069795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838432, 42.228024, 13.467524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.544605, 42.464558, 13.600636>,  <39.368309, 42.606476, 13.680503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.544605, 42.464558, 13.600636>,  <39.838432, 42.228024, 13.467524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544605, 42.464558, 13.600636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035972, 0.455808, -0.889351,
		-0.677584, -0.665257, -0.313550,
		-0.734565, 0.591331, 0.332779,
		39.324234, 42.641956, 13.700469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282284, 42.325527, 13.107064>,  <39.838432, 42.228024, 13.467524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282284, 42.325527, 13.107064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239647, 42.674324, 13.298175>,  <39.214066, 42.883602, 13.412842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239647, 42.674324, 13.298175>,  <39.282284, 42.325527, 13.107064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239647, 42.674324, 13.298175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133854, 0.463556, -0.875899,
		-0.985251, -0.157320, 0.067306,
		-0.106597, 0.871990, 0.477777,
		39.207668, 42.935921, 13.441508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574589, 42.490921, 12.935559>,  <39.282284, 42.325527, 13.107064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574589, 42.490921, 12.935559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782104, 42.820190, 13.027857>,  <38.906612, 43.017754, 13.083236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782104, 42.820190, 13.027857>,  <38.574589, 42.490921, 12.935559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782104, 42.820190, 13.027857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170941, 0.364339, -0.915443,
		-0.837638, 0.435478, 0.329729,
		0.518789, 0.823174, 0.230743,
		38.937740, 43.067142, 13.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046436, 41.835449, 12.614346>,  <38.574589, 42.490921, 12.935559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046436, 41.835449, 12.614346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203075, 41.588707, 12.341249>,  <38.297058, 41.440662, 12.177390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203075, 41.588707, 12.341249>,  <38.046436, 41.835449, 12.614346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203075, 41.588707, 12.341249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263698, -0.786117, 0.559002,
		-0.881539, -0.038869, -0.470508,
		0.391602, -0.616854, -0.682743,
		38.320557, 41.403652, 12.136426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507324, 41.356392, 12.240703>,  <38.046436, 41.835449, 12.614346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507324, 41.356392, 12.240703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 41.190914, 12.258271>,  <38.089314, 41.091625, 12.268812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 41.190914, 12.258271>,  <37.507324, 41.356392, 12.240703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871067, 41.190914, 12.258271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377696, -0.776702, 0.504063,
		-0.174415, -0.474961, -0.862549,
		0.909354, -0.413698, 0.043922,
		38.143875, 41.066803, 12.271448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303383, 40.822384, 12.580676>,  <37.507324, 41.356392, 12.240703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303383, 40.822384, 12.580676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683636, 40.712372, 12.523177>,  <37.911785, 40.646362, 12.488678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683636, 40.712372, 12.523177>,  <37.303383, 40.822384, 12.580676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683636, 40.712372, 12.523177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200184, -0.897411, 0.393166,
		-0.237134, -0.344979, -0.908162,
		0.950628, -0.275032, -0.143747,
		37.968822, 40.629864, 12.480053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328751, 40.080883, 12.312652>,  <37.303383, 40.822384, 12.580676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328751, 40.080883, 12.312652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664345, 40.186192, 12.503139>,  <37.865704, 40.249378, 12.617431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664345, 40.186192, 12.503139>,  <37.328751, 40.080883, 12.312652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664345, 40.186192, 12.503139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048795, -0.835236, 0.547723,
		0.541956, -0.482771, -0.687907,
		0.838989, 0.263276, 0.476218,
		37.916042, 40.265175, 12.646004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666424, 39.413929, 12.507476>,  <37.328751, 40.080883, 12.312652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666424, 39.413929, 12.507476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864712, 39.681145, 12.729462>,  <37.983685, 39.841473, 12.862653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864712, 39.681145, 12.729462>,  <37.666424, 39.413929, 12.507476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864712, 39.681145, 12.729462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109687, -0.682047, 0.723035,
		0.861527, -0.297552, -0.411381,
		0.495722, 0.668038, 0.554964,
		38.013428, 39.881557, 12.895951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998009, 39.006828, 12.991995>,  <37.666424, 39.413929, 12.507476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998009, 39.006828, 12.991995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.058285, 39.372475, 13.142557>,  <38.094452, 39.591862, 13.232895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.058285, 39.372475, 13.142557>,  <37.998009, 39.006828, 12.991995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058285, 39.372475, 13.142557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089065, -0.391760, 0.915746,
		0.984561, -0.104471, -0.140451,
		0.150692, 0.914117, 0.376406,
		38.103493, 39.646709, 13.255479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502846, 38.913052, 13.514873>,  <37.998009, 39.006828, 12.991995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502846, 38.913052, 13.514873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261475, 39.223568, 13.587806>,  <38.116653, 39.409878, 13.631566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261475, 39.223568, 13.587806>,  <38.502846, 38.913052, 13.514873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261475, 39.223568, 13.587806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075811, -0.283467, 0.955981,
		0.793806, 0.563042, 0.229903,
		-0.603427, 0.776293, 0.182333,
		38.080448, 39.456455, 13.642506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798611, 39.314739, 14.114348>,  <38.502846, 38.913052, 13.514873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798611, 39.314739, 14.114348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403854, 39.374821, 14.090714>,  <38.167000, 39.410870, 14.076534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403854, 39.374821, 14.090714>,  <38.798611, 39.314739, 14.114348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403854, 39.374821, 14.090714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088954, -0.200684, 0.975609,
		0.134682, 0.968073, 0.211414,
		-0.986888, 0.150203, -0.059085,
		38.107788, 39.419880, 14.072989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512146, 39.686134, 14.765377>,  <38.798611, 39.314739, 14.114348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512146, 39.686134, 14.765377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169029, 39.545559, 14.615341>,  <37.963161, 39.461216, 14.525320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169029, 39.545559, 14.615341>,  <38.512146, 39.686134, 14.765377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169029, 39.545559, 14.615341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275332, -0.302056, 0.912663,
		-0.434041, 0.886146, 0.162338,
		-0.857789, -0.351436, -0.375089,
		37.911694, 39.440128, 14.502814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058823, 39.964336, 15.173699>,  <38.512146, 39.686134, 14.765377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058823, 39.964336, 15.173699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848827, 39.674267, 14.995484>,  <37.722828, 39.500225, 14.888556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848827, 39.674267, 14.995484>,  <38.058823, 39.964336, 15.173699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848827, 39.674267, 14.995484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394955, -0.256128, 0.882275,
		-0.753920, 0.639153, -0.151948,
		-0.524990, -0.725177, -0.445537,
		37.691330, 39.456715, 14.861823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382145, 40.137573, 15.286339>,  <38.058823, 39.964336, 15.173699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382145, 40.137573, 15.286339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453945, 39.747002, 15.238398>,  <37.497025, 39.512657, 15.209633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453945, 39.747002, 15.238398>,  <37.382145, 40.137573, 15.286339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453945, 39.747002, 15.238398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451391, -0.189999, 0.871864,
		-0.874086, -0.102398, -0.474857,
		0.179499, -0.976430, -0.119854,
		37.507793, 39.454071, 15.202441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762146, 39.909103, 15.551130>,  <37.382145, 40.137573, 15.286339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762146, 39.909103, 15.551130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996170, 39.584827, 15.542308>,  <37.136585, 39.390263, 15.537014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996170, 39.584827, 15.542308>,  <36.762146, 39.909103, 15.551130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996170, 39.584827, 15.542308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377225, -0.296108, 0.877509,
		-0.717920, -0.505073, -0.479053,
		0.585058, -0.810692, -0.022056,
		37.171688, 39.341621, 15.535691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323505, 39.389133, 15.790737>,  <36.762146, 39.909103, 15.551130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323505, 39.389133, 15.790737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690704, 39.240654, 15.846592>,  <36.911022, 39.151566, 15.880105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690704, 39.240654, 15.846592>,  <36.323505, 39.389133, 15.790737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690704, 39.240654, 15.846592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269750, -0.326307, 0.905957,
		-0.290717, -0.869334, -0.399678,
		0.917997, -0.371190, 0.139640,
		36.966103, 39.129295, 15.888483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206196, 38.729004, 16.066679>,  <36.323505, 39.389133, 15.790737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206196, 38.729004, 16.066679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591366, 38.788944, 16.156414>,  <36.822468, 38.824909, 16.210255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591366, 38.788944, 16.156414>,  <36.206196, 38.729004, 16.066679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591366, 38.788944, 16.156414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158519, -0.358592, 0.919937,
		0.218300, -0.921388, -0.321541,
		0.962921, 0.149852, 0.224338,
		36.880241, 38.833900, 16.223715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898994, 38.083744, 15.917556>,  <36.206196, 38.729004, 16.066679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898994, 38.083744, 15.917556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507816, 38.158157, 15.955537>,  <35.273109, 38.202805, 15.978326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507816, 38.158157, 15.955537>,  <35.898994, 38.083744, 15.917556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507816, 38.158157, 15.955537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054718, 0.210547, -0.976051,
		-0.201569, -0.959720, -0.195724,
		-0.977945, 0.186032, 0.094954,
		35.214432, 38.213966, 15.984023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666992, 37.863766, 15.301406>,  <35.898994, 38.083744, 15.917556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666992, 37.863766, 15.301406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415966, 38.134167, 15.455900>,  <35.265350, 38.296406, 15.548597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415966, 38.134167, 15.455900>,  <35.666992, 37.863766, 15.301406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415966, 38.134167, 15.455900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114883, 0.410255, -0.904706,
		-0.770039, -0.612136, -0.179802,
		-0.627568, 0.676003, 0.386237,
		35.227695, 38.336967, 15.571772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127823, 37.939888, 14.887869>,  <35.666992, 37.863766, 15.301406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127823, 37.939888, 14.887869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087692, 38.275909, 15.101129>,  <35.063614, 38.477520, 15.229084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087692, 38.275909, 15.101129>,  <35.127823, 37.939888, 14.887869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087692, 38.275909, 15.101129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293988, 0.486897, -0.822498,
		-0.950529, -0.239257, 0.198116,
		-0.100326, 0.840052, 0.533149,
		35.057594, 38.527924, 15.261073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439461, 38.095509, 14.731833>,  <35.127823, 37.939888, 14.887869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439461, 38.095509, 14.731833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653889, 38.412907, 14.847066>,  <34.782547, 38.603344, 14.916205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653889, 38.412907, 14.847066>,  <34.439461, 38.095509, 14.731833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653889, 38.412907, 14.847066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062626, 0.377703, -0.923807,
		-0.841845, 0.477188, 0.252170,
		0.536075, 0.793494, 0.288083,
		34.814713, 38.650955, 14.933491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137096, 38.625641, 14.378978>,  <34.439461, 38.095509, 14.731833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137096, 38.625641, 14.378978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489288, 38.783161, 14.484560>,  <34.700603, 38.877674, 14.547910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489288, 38.783161, 14.484560>,  <34.137096, 38.625641, 14.378978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489288, 38.783161, 14.484560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012610, 0.576034, -0.817329,
		-0.473911, 0.716315, 0.512153,
		0.880483, 0.393799, 0.263956,
		34.753433, 38.901302, 14.563746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083317, 39.289608, 14.207701>,  <34.137096, 38.625641, 14.378978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083317, 39.289608, 14.207701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474861, 39.217270, 14.245910>,  <34.709789, 39.173866, 14.268835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474861, 39.217270, 14.245910>,  <34.083317, 39.289608, 14.207701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474861, 39.217270, 14.245910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159721, 0.384211, -0.909325,
		0.127749, 0.905360, 0.404974,
		0.978861, -0.180848, 0.095522,
		34.768520, 39.163017, 14.274567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378693, 39.926136, 14.170568>,  <34.083317, 39.289608, 14.207701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378693, 39.926136, 14.170568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661285, 39.668922, 14.052325>,  <34.830841, 39.514595, 13.981380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661285, 39.668922, 14.052325>,  <34.378693, 39.926136, 14.170568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661285, 39.668922, 14.052325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068929, 0.478217, -0.875532,
		0.704365, 0.598173, 0.382177,
		0.706484, -0.643037, -0.295608,
		34.873230, 39.476009, 13.963643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530910, 40.629868, 14.245884>,  <34.378693, 39.926136, 14.170568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530910, 40.629868, 14.245884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146091, 40.701229, 14.163281>,  <33.915199, 40.744045, 14.113720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146091, 40.701229, 14.163281>,  <34.530910, 40.629868, 14.245884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146091, 40.701229, 14.163281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272521, -0.667771, 0.692687,
		-0.014320, 0.722672, 0.691043,
		-0.962043, 0.178404, -0.206505,
		33.857479, 40.754749, 14.101330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217152, 40.780426, 14.834783>,  <34.530910, 40.629868, 14.245884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217152, 40.780426, 14.834783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885822, 40.701645, 14.624984>,  <33.687027, 40.654377, 14.499104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885822, 40.701645, 14.624984>,  <34.217152, 40.780426, 14.834783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885822, 40.701645, 14.624984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366254, -0.518076, 0.772953,
		-0.423962, 0.832351, 0.356999,
		-0.828320, -0.196951, -0.524496,
		33.637325, 40.642559, 14.467635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653469, 41.114643, 15.176438>,  <34.217152, 40.780426, 14.834783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653469, 41.114643, 15.176438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488167, 40.818039, 14.965011>,  <33.388985, 40.640076, 14.838154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488167, 40.818039, 14.965011>,  <33.653469, 41.114643, 15.176438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488167, 40.818039, 14.965011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462899, -0.328801, 0.823174,
		-0.784182, 0.584858, -0.207363,
		-0.413259, -0.741506, -0.528570,
		33.364189, 40.595589, 14.806439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039848, 40.956543, 15.505203>,  <33.653469, 41.114643, 15.176438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039848, 40.956543, 15.505203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046474, 40.627426, 15.277962>,  <33.050449, 40.429958, 15.141617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046474, 40.627426, 15.277962>,  <33.039848, 40.956543, 15.505203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046474, 40.627426, 15.277962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466280, -0.508973, 0.723553,
		-0.884482, 0.252909, -0.392082,
		0.016566, -0.822790, -0.568104,
		33.051445, 40.380589, 15.107531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401573, 40.735859, 15.567223>,  <33.039848, 40.956543, 15.505203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401573, 40.735859, 15.567223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.569176, 40.404400, 15.418746>,  <32.669739, 40.205524, 15.329659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.569176, 40.404400, 15.418746>,  <32.401573, 40.735859, 15.567223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569176, 40.404400, 15.418746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414309, -0.538255, 0.733914,
		-0.807949, -0.153726, -0.568847,
		0.419006, -0.828643, -0.371192,
		32.694878, 40.155807, 15.307388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840448, 40.145382, 15.610516>,  <32.401573, 40.735859, 15.567223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840448, 40.145382, 15.610516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.211082, 39.995403, 15.622211>,  <32.433464, 39.905415, 15.629228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.211082, 39.995403, 15.622211>,  <31.840448, 40.145382, 15.610516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211082, 39.995403, 15.622211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290883, -0.665217, 0.687658,
		-0.238387, -0.645679, -0.725445,
		0.926585, -0.374948, 0.029238,
		32.489059, 39.882919, 15.630981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718399, 39.503586, 15.547866>,  <31.840448, 40.145382, 15.610516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718399, 39.503586, 15.547866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078926, 39.548550, 15.715196>,  <32.295242, 39.575527, 15.815594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078926, 39.548550, 15.715196>,  <31.718399, 39.503586, 15.547866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078926, 39.548550, 15.715196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249931, -0.653816, 0.714184,
		0.353786, -0.748258, -0.561200,
		0.901315, 0.112407, 0.418324,
		32.349319, 39.582272, 15.840693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.733105, 45.031071, 13.583115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970627, 44.815197, 13.821825>,  <37.113140, 44.685673, 13.965051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970627, 44.815197, 13.821825>,  <36.733105, 45.031071, 13.583115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970627, 44.815197, 13.821825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779177, -0.200695, 0.593806,
		-0.200695, -0.817598, -0.539680,
		-0.593806, 0.539680, -0.596775,
		37.148769, 44.653294, 14.000857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398663, 44.494545, 13.810376>,  <36.733105, 45.031071, 13.583115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398663, 44.494545, 13.810376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693417, 44.483433, 14.080557>,  <36.870270, 44.476765, 14.242665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693417, 44.483433, 14.080557>,  <36.398663, 44.494545, 13.810376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693417, 44.483433, 14.080557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652821, -0.288760, 0.700316,
		0.175588, -0.956998, -0.230918,
		0.736881, -0.027781, 0.675451,
		36.914482, 44.475098, 14.283193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224953, 43.977978, 14.306890>,  <36.398663, 44.494545, 13.810376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224953, 43.977978, 14.306890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.499851, 44.188320, 14.507356>,  <36.664791, 44.314526, 14.627636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.499851, 44.188320, 14.507356>,  <36.224953, 43.977978, 14.306890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499851, 44.188320, 14.507356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614290, 0.052457, 0.787335,
		0.387732, -0.848957, 0.359077,
		0.687250, 0.525852, 0.501166,
		36.706024, 44.346077, 14.657705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494606, 43.575394, 14.875714>,  <36.224953, 43.977978, 14.306890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494606, 43.575394, 14.875714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594585, 43.948982, 14.977875>,  <36.654572, 44.173134, 15.039171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594585, 43.948982, 14.977875>,  <36.494606, 43.575394, 14.875714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594585, 43.948982, 14.977875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478207, -0.110287, 0.871295,
		0.841930, -0.339910, 0.419065,
		0.249944, 0.933969, 0.255402,
		36.669567, 44.229172, 15.054495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625175, 43.530922, 15.576068>,  <36.494606, 43.575394, 14.875714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625175, 43.530922, 15.576068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565880, 43.920456, 15.507171>,  <36.530304, 44.154179, 15.465833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.565880, 43.920456, 15.507171>,  <36.625175, 43.530922, 15.576068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565880, 43.920456, 15.507171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479691, 0.081502, 0.873644,
		0.864825, 0.212131, 0.455059,
		-0.148239, 0.973837, -0.172242,
		36.521408, 44.212608, 15.455498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900246, 43.814545, 16.134123>,  <36.625175, 43.530922, 15.576068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900246, 43.814545, 16.134123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652676, 44.092197, 15.987091>,  <36.504135, 44.258789, 15.898871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652676, 44.092197, 15.987091>,  <36.900246, 43.814545, 16.134123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652676, 44.092197, 15.987091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379991, 0.144960, 0.913561,
		0.687417, 0.705100, 0.174046,
		-0.618922, 0.694133, -0.367580,
		36.466999, 44.300438, 15.876817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966286, 44.142315, 16.631298>,  <36.900246, 43.814545, 16.134123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966286, 44.142315, 16.631298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.633324, 44.265404, 16.446947>,  <36.433548, 44.339256, 16.336336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.633324, 44.265404, 16.446947>,  <36.966286, 44.142315, 16.631298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633324, 44.265404, 16.446947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397604, 0.247680, 0.883496,
		0.386019, 0.918675, -0.083820,
		-0.832406, 0.307719, -0.460878,
		36.383602, 44.357719, 16.308683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817177, 44.881760, 16.795650>,  <36.966286, 44.142315, 16.631298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817177, 44.881760, 16.795650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478157, 44.684593, 16.716961>,  <36.274746, 44.566296, 16.669746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478157, 44.684593, 16.716961>,  <36.817177, 44.881760, 16.795650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478157, 44.684593, 16.716961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401264, 0.352554, 0.845395,
		-0.347350, 0.795451, -0.496594,
		-0.847546, -0.492914, -0.196726,
		36.223892, 44.536720, 16.657944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343788, 45.147552, 17.228317>,  <36.817177, 44.881760, 16.795650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343788, 45.147552, 17.228317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128555, 44.830769, 17.112894>,  <35.999416, 44.640697, 17.043640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128555, 44.830769, 17.112894>,  <36.343788, 45.147552, 17.228317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128555, 44.830769, 17.112894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398356, -0.062767, 0.915081,
		-0.742823, 0.607334, -0.281709,
		-0.538078, -0.791963, -0.288560,
		35.967133, 44.593178, 17.026325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664810, 45.271168, 17.498066>,  <36.343788, 45.147552, 17.228317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664810, 45.271168, 17.498066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666328, 44.877502, 17.427176>,  <35.667240, 44.641304, 17.384642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666328, 44.877502, 17.427176>,  <35.664810, 45.271168, 17.498066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666328, 44.877502, 17.427176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391891, -0.164516, 0.905183,
		-0.920004, 0.066015, -0.386309,
		0.003798, -0.984163, -0.177226,
		35.667469, 44.582253, 17.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007858, 45.003471, 17.640141>,  <35.664810, 45.271168, 17.498066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007858, 45.003471, 17.640141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.257504, 44.692223, 17.668480>,  <35.407291, 44.505474, 17.685484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.257504, 44.692223, 17.668480>,  <35.007858, 45.003471, 17.640141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257504, 44.692223, 17.668480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364923, -0.210110, 0.907020,
		-0.690882, -0.591935, -0.415085,
		0.624110, -0.778118, 0.070850,
		35.444736, 44.458786, 17.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534428, 44.429874, 18.021646>,  <35.007858, 45.003471, 17.640141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534428, 44.429874, 18.021646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926907, 44.357082, 18.047369>,  <35.162395, 44.313408, 18.062801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926907, 44.357082, 18.047369>,  <34.534428, 44.429874, 18.021646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926907, 44.357082, 18.047369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145194, -0.476444, 0.867133,
		-0.127164, -0.860165, -0.493908,
		0.981197, -0.181981, 0.064304,
		35.221264, 44.302486, 18.066660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064682, 43.865795, 17.704208>,  <34.534428, 44.429874, 18.021646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064682, 43.865795, 17.704208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692993, 43.747646, 17.615393>,  <33.469978, 43.676758, 17.562103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692993, 43.747646, 17.615393>,  <34.064682, 43.865795, 17.704208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692993, 43.747646, 17.615393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192318, 0.126520, -0.973143,
		0.315536, -0.946967, -0.060759,
		-0.929221, -0.295376, -0.222041,
		33.414227, 43.659035, 17.548780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173405, 43.334721, 17.332663>,  <34.064682, 43.865795, 17.704208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173405, 43.334721, 17.332663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.815430, 43.491249, 17.246916>,  <33.600643, 43.585167, 17.195467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.815430, 43.491249, 17.246916>,  <34.173405, 43.334721, 17.332663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815430, 43.491249, 17.246916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273232, 0.100815, -0.956651,
		-0.352743, -0.914716, -0.197144,
		-0.894939, 0.391318, -0.214368,
		33.546947, 43.608646, 17.182606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950218, 43.008369, 16.684273>,  <34.173405, 43.334721, 17.332663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950218, 43.008369, 16.684273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686756, 43.307999, 16.712753>,  <33.528679, 43.487774, 16.729841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686756, 43.307999, 16.712753>,  <33.950218, 43.008369, 16.684273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686756, 43.307999, 16.712753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039969, 0.129320, -0.990797,
		-0.751382, -0.649748, -0.115117,
		-0.658656, 0.749068, 0.071199,
		33.489159, 43.532719, 16.734114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304653, 42.916397, 16.267643>,  <33.950218, 43.008369, 16.684273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304653, 42.916397, 16.267643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.324467, 43.312145, 16.322325>,  <33.336353, 43.549595, 16.355135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.324467, 43.312145, 16.322325>,  <33.304653, 42.916397, 16.267643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324467, 43.312145, 16.322325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278932, 0.145131, -0.949281,
		-0.959033, 0.008888, 0.283156,
		0.049532, 0.989372, 0.136707,
		33.339325, 43.608955, 16.363337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761902, 43.175507, 15.839132>,  <33.304653, 42.916397, 16.267643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761902, 43.175507, 15.839132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018673, 43.470665, 15.922503>,  <33.172733, 43.647762, 15.972525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018673, 43.470665, 15.922503>,  <32.761902, 43.175507, 15.839132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018673, 43.470665, 15.922503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087535, 0.340570, -0.936136,
		-0.761756, 0.582683, 0.283212,
		0.641923, 0.737898, 0.208426,
		33.211250, 43.692036, 15.985030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537655, 43.630192, 15.368576>,  <32.761902, 43.175507, 15.839132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537655, 43.630192, 15.368576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891491, 43.767807, 15.494524>,  <33.103790, 43.850376, 15.570093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891491, 43.767807, 15.494524>,  <32.537655, 43.630192, 15.368576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891491, 43.767807, 15.494524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200985, 0.328017, -0.923044,
		-0.420847, 0.879796, 0.221013,
		0.884586, 0.344040, 0.314871,
		33.156868, 43.871017, 15.588985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517765, 44.390678, 15.154366>,  <32.537655, 43.630192, 15.368576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517765, 44.390678, 15.154366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893627, 44.258617, 15.190257>,  <33.119144, 44.179382, 15.211792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893627, 44.258617, 15.190257>,  <32.517765, 44.390678, 15.154366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893627, 44.258617, 15.190257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177346, 0.245755, -0.952971,
		0.292571, 0.911376, 0.289475,
		0.939654, -0.330149, 0.089728,
		33.175522, 44.159573, 15.217175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974800, 44.896309, 14.904202>,  <32.517765, 44.390678, 15.154366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974800, 44.896309, 14.904202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204330, 44.568832, 14.912896>,  <33.342049, 44.372345, 14.918113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204330, 44.568832, 14.912896>,  <32.974800, 44.896309, 14.904202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204330, 44.568832, 14.912896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297216, 0.183441, -0.937023,
		0.763146, 0.544144, 0.348591,
		0.573822, -0.818692, 0.021737,
		33.376476, 44.323223, 14.919417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623508, 45.126324, 14.566272>,  <32.974800, 44.896309, 14.904202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623508, 45.126324, 14.566272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.660645, 44.728214, 14.577682>,  <33.682926, 44.489349, 14.584529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.660645, 44.728214, 14.577682>,  <33.623508, 45.126324, 14.566272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660645, 44.728214, 14.577682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339289, 0.004686, -0.940670,
		0.936090, 0.097010, 0.338120,
		0.092839, -0.995272, 0.028527,
		33.688496, 44.429634, 14.586241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351654, 44.998829, 14.431888>,  <33.623508, 45.126324, 14.566272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351654, 44.998829, 14.431888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.151825, 44.662071, 14.350266>,  <34.031929, 44.460014, 14.301292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.151825, 44.662071, 14.350266>,  <34.351654, 44.998829, 14.431888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151825, 44.662071, 14.350266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553997, -0.129403, -0.822400,
		0.665972, -0.523891, 0.531055,
		-0.499569, -0.841898, -0.204055,
		34.001953, 44.409500, 14.289049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786110, 44.303837, 14.535472>,  <34.351654, 44.998829, 14.431888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786110, 44.303837, 14.535472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.502159, 44.163864, 14.290974>,  <34.331787, 44.079880, 14.144275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.502159, 44.163864, 14.290974>,  <34.786110, 44.303837, 14.535472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502159, 44.163864, 14.290974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688836, -0.163946, -0.706135,
		0.146885, -0.922319, 0.357424,
		-0.709880, -0.349927, -0.611246,
		34.289196, 44.058887, 14.107600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948212, 43.577900, 14.215887>,  <34.786110, 44.303837, 14.535472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948212, 43.577900, 14.215887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695042, 43.779602, 13.980896>,  <34.543140, 43.900623, 13.839901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.695042, 43.779602, 13.980896>,  <34.948212, 43.577900, 14.215887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695042, 43.779602, 13.980896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604484, -0.152250, -0.781932,
		-0.483736, -0.850028, -0.208450,
		-0.632928, 0.504254, -0.587478,
		34.505165, 43.930878, 13.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078873, 43.416012, 13.555605>,  <34.948212, 43.577900, 14.215887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078873, 43.416012, 13.555605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870651, 43.743710, 13.459384>,  <34.745720, 43.940327, 13.401651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870651, 43.743710, 13.459384>,  <35.078873, 43.416012, 13.555605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870651, 43.743710, 13.459384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568350, 0.122221, -0.813659,
		-0.637182, -0.560272, -0.529239,
		-0.520554, 0.819242, -0.240553,
		34.714485, 43.989483, 13.387218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889919, 43.781418, 12.885979>,  <35.078873, 43.416012, 13.555605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889919, 43.781418, 12.885979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.762707, 43.547977, 12.587111>,  <34.686378, 43.407913, 12.407791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.762707, 43.547977, 12.587111>,  <34.889919, 43.781418, 12.885979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762707, 43.547977, 12.587111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449342, -0.601164, 0.660827,
		-0.834832, 0.545901, -0.071046,
		-0.318036, -0.583604, -0.747168,
		34.667297, 43.372894, 12.362961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114319, 43.728828, 12.787572>,  <34.889919, 43.781418, 12.885979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114319, 43.728828, 12.787572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245605, 43.394753, 12.611056>,  <34.324379, 43.194309, 12.505147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245605, 43.394753, 12.611056>,  <34.114319, 43.728828, 12.787572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245605, 43.394753, 12.611056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684407, -0.532249, 0.498296,
		-0.651047, 0.138473, -0.746300,
		0.328216, -0.835187, -0.441291,
		34.344070, 43.144196, 12.478669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574116, 43.297047, 12.609563>,  <34.114319, 43.728828, 12.787572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574116, 43.297047, 12.609563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.878124, 43.037758, 12.590864>,  <34.060528, 42.882187, 12.579645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.878124, 43.037758, 12.590864>,  <33.574116, 43.297047, 12.609563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878124, 43.037758, 12.590864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550701, -0.680538, 0.483319,
		-0.345108, -0.341589, -0.874195,
		0.760019, -0.648217, -0.046746,
		34.106129, 42.843292, 12.576840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271458, 42.693512, 12.506804>,  <33.574116, 43.297047, 12.609563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271458, 42.693512, 12.506804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634769, 42.597569, 12.643915>,  <33.852757, 42.540005, 12.726181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634769, 42.597569, 12.643915>,  <33.271458, 42.693512, 12.506804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634769, 42.597569, 12.643915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381272, -0.811844, 0.442200,
		0.172217, -0.532332, -0.828833,
		0.908281, -0.239856, 0.342776,
		33.907253, 42.525612, 12.746748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338627, 41.980797, 12.464952>,  <33.271458, 42.693512, 12.506804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338627, 41.980797, 12.464952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.632149, 42.067135, 12.722614>,  <33.808262, 42.118938, 12.877213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.632149, 42.067135, 12.722614>,  <33.338627, 41.980797, 12.464952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632149, 42.067135, 12.722614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212411, -0.827748, 0.519340,
		0.645300, -0.517921, -0.561557,
		0.733805, 0.215849, 0.644158,
		33.852291, 42.131889, 12.915862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751743, 41.476254, 12.509701>,  <33.338627, 41.980797, 12.464952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751743, 41.476254, 12.509701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801613, 41.652245, 12.865425>,  <33.831535, 41.757839, 13.078859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801613, 41.652245, 12.865425>,  <33.751743, 41.476254, 12.509701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801613, 41.652245, 12.865425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225299, -0.860337, 0.457231,
		0.966280, -0.257365, -0.008134,
		0.124673, 0.439980, 0.889311,
		33.839016, 41.784237, 13.132218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185692, 40.878120, 12.873963>,  <33.751743, 41.476254, 12.509701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185692, 40.878120, 12.873963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056786, 41.130104, 13.156606>,  <33.979443, 41.281296, 13.326191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056786, 41.130104, 13.156606>,  <34.185692, 40.878120, 12.873963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056786, 41.130104, 13.156606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421862, -0.763785, 0.488534,
		0.847452, -0.140651, 0.511900,
		-0.322269, 0.629960, 0.706607,
		33.960106, 41.319092, 13.368587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430241, 40.658524, 13.494577>,  <34.185692, 40.878120, 12.873963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430241, 40.658524, 13.494577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.121155, 40.884510, 13.610319>,  <33.935703, 41.020103, 13.679764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.121155, 40.884510, 13.610319>,  <34.430241, 40.658524, 13.494577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121155, 40.884510, 13.610319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319324, -0.739959, 0.592024,
		0.548583, 0.365068, 0.752185,
		-0.772715, 0.564965, 0.289354,
		33.889339, 41.054001, 13.697125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092762, 40.361370, 13.783259>,  <34.430241, 40.658524, 13.494577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092762, 40.361370, 13.783259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140381, 39.977844, 13.680112>,  <35.168953, 39.747726, 13.618223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140381, 39.977844, 13.680112>,  <35.092762, 40.361370, 13.783259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140381, 39.977844, 13.680112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437324, 0.283803, -0.853349,
		0.891390, -0.011183, 0.453100,
		0.119048, -0.958817, -0.257870,
		35.176094, 39.690201, 13.602751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807533, 40.219490, 13.644772>,  <35.092762, 40.361370, 13.783259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807533, 40.219490, 13.644772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620846, 39.936985, 13.431842>,  <35.508831, 39.767483, 13.304084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620846, 39.936985, 13.431842>,  <35.807533, 40.219490, 13.644772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620846, 39.936985, 13.431842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481178, 0.302238, -0.822873,
		0.742049, -0.640197, 0.198775,
		-0.466723, -0.706258, -0.532324,
		35.480827, 39.725109, 13.272144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238724, 40.113346, 13.114688>,  <35.807533, 40.219490, 13.644772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238724, 40.113346, 13.114688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.917252, 39.927830, 12.965557>,  <35.724369, 39.816521, 12.876079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.917252, 39.927830, 12.965557>,  <36.238724, 40.113346, 13.114688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917252, 39.927830, 12.965557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317012, 0.196526, -0.927837,
		0.503596, -0.863870, -0.010914,
		-0.803676, -0.463795, -0.372827,
		35.676147, 39.788692, 12.853709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529202, 39.591232, 12.637007>,  <36.238724, 40.113346, 13.114688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529202, 39.591232, 12.637007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150887, 39.668205, 12.532352>,  <35.923897, 39.714390, 12.469560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150887, 39.668205, 12.532352>,  <36.529202, 39.591232, 12.637007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150887, 39.668205, 12.532352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278966, 0.068807, -0.957833,
		-0.166314, -0.978895, -0.118758,
		-0.945789, 0.192430, -0.261635,
		35.867149, 39.725933, 12.453862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360214, 39.214760, 11.991342>,  <36.529202, 39.591232, 12.637007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360214, 39.214760, 11.991342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081234, 39.501408, 11.990261>,  <35.913845, 39.673397, 11.989613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081234, 39.501408, 11.990261>,  <36.360214, 39.214760, 11.991342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081234, 39.501408, 11.990261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042410, 0.037511, -0.998396,
		-0.715373, -0.696450, -0.056554,
		-0.697455, 0.716624, -0.002702,
		35.871998, 39.716396, 11.989450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247078, 39.354832, 11.245974>,  <36.360214, 39.214760, 11.991342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247078, 39.354832, 11.245974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025578, 39.651356, 11.397672>,  <35.892677, 39.829269, 11.488690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025578, 39.651356, 11.397672>,  <36.247078, 39.354832, 11.245974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025578, 39.651356, 11.397672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053624, 0.422755, -0.904656,
		-0.830956, -0.521288, -0.194348,
		-0.553748, 0.741307, 0.379244,
		35.859451, 39.873749, 11.511445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735374, 39.467274, 10.811895>,  <36.247078, 39.354832, 11.245974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735374, 39.467274, 10.811895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794861, 39.806892, 11.014679>,  <35.830551, 40.010662, 11.136349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794861, 39.806892, 11.014679>,  <35.735374, 39.467274, 10.811895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794861, 39.806892, 11.014679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157906, 0.485692, -0.859749,
		-0.976192, 0.207909, -0.061840,
		0.148714, 0.849045, 0.506959,
		35.839474, 40.061607, 11.166766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240742, 40.005341, 10.569631>,  <35.735374, 39.467274, 10.811895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240742, 40.005341, 10.569631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.558769, 40.201412, 10.712513>,  <35.749584, 40.319054, 10.798243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.558769, 40.201412, 10.712513>,  <35.240742, 40.005341, 10.569631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558769, 40.201412, 10.712513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163351, 0.394122, -0.904425,
		-0.584113, 0.777426, 0.233281,
		0.795065, 0.490180, 0.357206,
		35.797287, 40.348465, 10.819674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179134, 40.630707, 10.317380>,  <35.240742, 40.005341, 10.569631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179134, 40.630707, 10.317380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.552895, 40.661690, 10.456458>,  <35.777153, 40.680279, 10.539905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.552895, 40.661690, 10.456458>,  <35.179134, 40.630707, 10.317380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552895, 40.661690, 10.456458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240114, 0.584049, -0.775392,
		-0.263129, 0.808015, 0.527139,
		0.934403, 0.077455, 0.347696,
		35.833214, 40.684925, 10.560767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.265182, 37.526951, 26.060236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650623, 37.429459, 26.016300>,  <33.881889, 37.370964, 25.989939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650623, 37.429459, 26.016300>,  <33.265182, 37.526951, 26.060236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650623, 37.429459, 26.016300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109564, 0.014721, -0.993871,
		0.243850, 0.969732, -0.012519,
		0.963604, -0.243727, -0.109837,
		33.939705, 37.356342, 25.983349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430367, 37.829639, 25.491558>,  <33.265182, 37.526951, 26.060236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430367, 37.829639, 25.491558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716461, 37.551262, 25.517185>,  <33.888119, 37.384235, 25.532562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716461, 37.551262, 25.517185>,  <33.430367, 37.829639, 25.491558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716461, 37.551262, 25.517185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004692, -0.096451, -0.995327,
		0.698867, 0.711593, -0.072250,
		0.715236, -0.695940, 0.064068,
		33.931030, 37.342480, 25.536406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809853, 37.986961, 24.891373>,  <33.430367, 37.829639, 25.491558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809853, 37.986961, 24.891373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894089, 37.610207, 24.996061>,  <33.944630, 37.384155, 25.058874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894089, 37.610207, 24.996061>,  <33.809853, 37.986961, 24.891373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894089, 37.610207, 24.996061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203598, -0.219598, -0.954109,
		0.956137, 0.254215, 0.145520,
		0.210593, -0.941887, 0.261723,
		33.957268, 37.327641, 25.074579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395390, 37.891708, 24.525080>,  <33.809853, 37.986961, 24.891373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395390, 37.891708, 24.525080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257576, 37.529873, 24.625500>,  <34.174889, 37.312771, 24.685751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257576, 37.529873, 24.625500>,  <34.395390, 37.891708, 24.525080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257576, 37.529873, 24.625500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075927, -0.239695, -0.967875,
		0.935700, -0.352523, 0.013900,
		-0.344530, -0.904585, 0.251049,
		34.154217, 37.258499, 24.700815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810284, 37.474751, 24.127092>,  <34.395390, 37.891708, 24.525080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810284, 37.474751, 24.127092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487820, 37.263943, 24.234686>,  <34.294342, 37.137459, 24.299242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487820, 37.263943, 24.234686>,  <34.810284, 37.474751, 24.127092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487820, 37.263943, 24.234686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058801, -0.380995, -0.922706,
		0.588766, -0.759667, 0.276155,
		-0.806162, -0.527019, 0.268985,
		34.245972, 37.105839, 24.315382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960777, 36.836697, 23.980564>,  <34.810284, 37.474751, 24.127092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960777, 36.836697, 23.980564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561142, 36.853149, 23.985249>,  <34.321362, 36.863022, 23.988060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561142, 36.853149, 23.985249>,  <34.960777, 36.836697, 23.980564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561142, 36.853149, 23.985249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022067, -0.261228, -0.965025,
		-0.036628, -0.964401, 0.261897,
		-0.999085, 0.041127, 0.011713,
		34.261417, 36.865486, 23.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740768, 36.307331, 23.688814>,  <34.960777, 36.836697, 23.980564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740768, 36.307331, 23.688814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426895, 36.552711, 23.653156>,  <34.238571, 36.699940, 23.631762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426895, 36.552711, 23.653156>,  <34.740768, 36.307331, 23.688814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426895, 36.552711, 23.653156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130695, -0.304294, -0.943570,
		-0.605962, -0.728753, 0.318950,
		-0.784684, 0.613452, -0.089146,
		34.191490, 36.736748, 23.626413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222881, 35.985207, 23.244040>,  <34.740768, 36.307331, 23.688814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222881, 35.985207, 23.244040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093685, 36.363270, 23.224634>,  <34.016167, 36.590107, 23.212992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093685, 36.363270, 23.224634>,  <34.222881, 35.985207, 23.244040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093685, 36.363270, 23.224634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254872, -0.136234, -0.957330,
		-0.911437, -0.296845, 0.284897,
		-0.322991, 0.945158, -0.048512,
		33.996788, 36.646816, 23.210081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710499, 35.902119, 22.753965>,  <34.222881, 35.985207, 23.244040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710499, 35.902119, 22.753965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752480, 36.299480, 22.735527>,  <33.777668, 36.537899, 22.724464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752480, 36.299480, 22.735527>,  <33.710499, 35.902119, 22.753965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752480, 36.299480, 22.735527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244334, -0.019175, -0.969501,
		-0.963995, 0.113014, 0.240711,
		0.104952, 0.993408, -0.046097,
		33.783966, 36.597504, 22.721699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108288, 36.067234, 22.424246>,  <33.710499, 35.902119, 22.753965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108288, 36.067234, 22.424246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395760, 36.337696, 22.359362>,  <33.568241, 36.499973, 22.320431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395760, 36.337696, 22.359362>,  <33.108288, 36.067234, 22.424246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395760, 36.337696, 22.359362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227098, 0.007753, -0.973841,
		-0.657212, 0.736717, 0.159126,
		0.718679, 0.676157, -0.162211,
		33.611362, 36.540543, 22.310698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719711, 36.433723, 21.883228>,  <33.108288, 36.067234, 22.424246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719711, 36.433723, 21.883228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095150, 36.569298, 21.857452>,  <33.320415, 36.650642, 21.841986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095150, 36.569298, 21.857452>,  <32.719711, 36.433723, 21.883228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095150, 36.569298, 21.857452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071110, 0.007279, -0.997442,
		-0.337602, 0.940780, 0.030933,
		0.938599, 0.338939, -0.064442,
		33.376728, 36.670979, 21.838120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736317, 37.018620, 21.496330>,  <32.719711, 36.433723, 21.883228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736317, 37.018620, 21.496330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122166, 36.914326, 21.480759>,  <33.353676, 36.851749, 21.471416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122166, 36.914326, 21.480759>,  <32.736317, 37.018620, 21.496330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122166, 36.914326, 21.480759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013492, 0.098646, -0.995031,
		0.263283, 0.960356, 0.091638,
		0.964624, -0.260738, -0.038929,
		33.411552, 36.836105, 21.469080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529343, 37.840240, 21.463902>,  <32.736317, 37.018620, 21.496330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529343, 37.840240, 21.463902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130051, 37.816505, 21.462477>,  <31.890474, 37.802265, 21.461622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130051, 37.816505, 21.462477>,  <32.529343, 37.840240, 21.463902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130051, 37.816505, 21.462477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014732, -0.304990, 0.952242,
		-0.057588, 0.950506, 0.305324,
		-0.998232, -0.059335, -0.003561,
		31.830582, 37.798706, 21.461409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277084, 38.348740, 21.942989>,  <32.529343, 37.840240, 21.463902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277084, 38.348740, 21.942989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.945442, 38.128040, 21.906868>,  <31.746456, 37.995621, 21.885195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.945442, 38.128040, 21.906868>,  <32.277084, 38.348740, 21.942989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945442, 38.128040, 21.906868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084191, -0.036467, 0.995782,
		-0.552712, 0.833215, -0.016217,
		-0.829109, -0.551746, -0.090305,
		31.696709, 37.962517, 21.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749247, 38.727245, 22.253241>,  <32.277084, 38.348740, 21.942989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749247, 38.727245, 22.253241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658314, 38.337902, 22.241232>,  <31.603754, 38.104298, 22.234026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658314, 38.337902, 22.241232>,  <31.749247, 38.727245, 22.253241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658314, 38.337902, 22.241232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153199, 0.005301, 0.988181,
		-0.961691, 0.229247, -0.150322,
		-0.227334, -0.973354, -0.030023,
		31.590113, 38.045895, 22.232225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119717, 38.673889, 22.579401>,  <31.749247, 38.727245, 22.253241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119717, 38.673889, 22.579401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253439, 38.296940, 22.574123>,  <31.333672, 38.070770, 22.570957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253439, 38.296940, 22.574123>,  <31.119717, 38.673889, 22.579401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253439, 38.296940, 22.574123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301105, -0.120060, 0.946003,
		-0.893071, -0.312282, -0.323890,
		0.334306, -0.942372, -0.013192,
		31.353731, 38.014229, 22.570166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613781, 38.273922, 22.930767>,  <31.119717, 38.673889, 22.579401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613781, 38.273922, 22.930767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932802, 38.033089, 22.945745>,  <31.124214, 37.888588, 22.954733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932802, 38.033089, 22.945745>,  <30.613781, 38.273922, 22.930767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932802, 38.033089, 22.945745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239206, -0.258656, 0.935883,
		-0.553795, -0.755375, -0.350315,
		0.797554, -0.602085, 0.037448,
		31.172068, 37.852463, 22.956980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340784, 37.597569, 23.141317>,  <30.613781, 38.273922, 22.930767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340784, 37.597569, 23.141317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731005, 37.582661, 23.227951>,  <30.965137, 37.573715, 23.279932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731005, 37.582661, 23.227951>,  <30.340784, 37.597569, 23.141317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731005, 37.582661, 23.227951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219645, -0.198403, 0.955192,
		0.007378, -0.979412, -0.201737,
		0.975552, -0.037263, 0.216587,
		31.023670, 37.571480, 23.292927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394955, 36.971535, 23.466326>,  <30.340784, 37.597569, 23.141317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394955, 36.971535, 23.466326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717602, 37.187660, 23.562180>,  <30.911190, 37.317337, 23.619692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.717602, 37.187660, 23.562180>,  <30.394955, 36.971535, 23.466326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717602, 37.187660, 23.562180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104058, -0.269282, 0.957423,
		0.581842, -0.797211, -0.160984,
		0.806618, 0.540317, 0.239636,
		30.959587, 37.349754, 23.634069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789038, 36.598797, 23.776701>,  <30.394955, 36.971535, 23.466326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789038, 36.598797, 23.776701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898058, 36.966446, 23.890491>,  <30.963470, 37.187035, 23.958765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898058, 36.966446, 23.890491>,  <30.789038, 36.598797, 23.776701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898058, 36.966446, 23.890491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039527, -0.284725, 0.957794,
		0.961329, -0.272294, -0.041272,
		0.272552, 0.919124, 0.284477,
		30.979824, 37.242184, 23.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105915, 36.518890, 24.427841>,  <30.789038, 36.598797, 23.776701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105915, 36.518890, 24.427841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080927, 36.918095, 24.431238>,  <31.065935, 37.157616, 24.433277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080927, 36.918095, 24.431238>,  <31.105915, 36.518890, 24.427841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080927, 36.918095, 24.431238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200738, 0.004227, 0.979636,
		0.977651, 0.062902, -0.200602,
		-0.062469, 0.998011, 0.008494,
		31.062185, 37.217499, 24.433786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703575, 36.728821, 24.735075>,  <31.105915, 36.518890, 24.427841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703575, 36.728821, 24.735075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405371, 36.988262, 24.796436>,  <31.226448, 37.143925, 24.833254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405371, 36.988262, 24.796436>,  <31.703575, 36.728821, 24.735075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405371, 36.988262, 24.796436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253637, 0.063244, 0.965230,
		0.616348, 0.758496, -0.211658,
		-0.745509, 0.648601, 0.153402,
		31.181719, 37.182842, 24.842457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939711, 37.112907, 25.207783>,  <31.703575, 36.728821, 24.735075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939711, 37.112907, 25.207783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560366, 37.233170, 25.248217>,  <31.332760, 37.305328, 25.272478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560366, 37.233170, 25.248217>,  <31.939711, 37.112907, 25.207783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560366, 37.233170, 25.248217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105265, -0.002310, 0.994441,
		0.299216, 0.953730, -0.029458,
		-0.948361, 0.300654, 0.101086,
		31.275858, 37.323364, 25.278542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917780, 37.755016, 25.624926>,  <31.939711, 37.112907, 25.207783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917780, 37.755016, 25.624926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543161, 37.618160, 25.655455>,  <31.318390, 37.536045, 25.673771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543161, 37.618160, 25.655455>,  <31.917780, 37.755016, 25.624926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543161, 37.618160, 25.655455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022009, 0.159900, 0.986888,
		-0.349856, 0.925944, -0.142223,
		-0.936545, -0.342139, 0.076321,
		31.262197, 37.515518, 25.678350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573439, 38.258797, 25.950968>,  <31.917780, 37.755016, 25.624926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573439, 38.258797, 25.950968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359264, 37.926456, 26.011621>,  <31.230761, 37.727051, 26.048014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359264, 37.926456, 26.011621>,  <31.573439, 38.258797, 25.950968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359264, 37.926456, 26.011621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006614, 0.183655, 0.982968,
		-0.844551, 0.525312, -0.103831,
		-0.535434, -0.830854, 0.151632,
		31.198633, 37.677200, 26.057112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123217, 38.508766, 26.458399>,  <31.573439, 38.258797, 25.950968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123217, 38.508766, 26.458399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090824, 38.110115, 26.453074>,  <31.071388, 37.870926, 26.449879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090824, 38.110115, 26.453074>,  <31.123217, 38.508766, 26.458399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090824, 38.110115, 26.453074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063803, -0.018513, 0.997791,
		-0.994671, 0.079955, 0.065087,
		-0.080983, -0.996627, -0.013313,
		31.066528, 37.811127, 26.449080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922428, 39.094975, 26.872927>,  <31.123217, 38.508766, 26.458399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922428, 39.094975, 26.872927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652664, 39.382339, 26.941105>,  <30.490805, 39.554760, 26.982012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652664, 39.382339, 26.941105>,  <30.922428, 39.094975, 26.872927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652664, 39.382339, 26.941105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090734, 0.309731, -0.946485,
		-0.732759, -0.622856, -0.274071,
		-0.674412, 0.718413, 0.170444,
		30.450340, 39.597862, 26.992237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252659, 39.063946, 26.384161>,  <30.922428, 39.094975, 26.872927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252659, 39.063946, 26.384161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348236, 39.430275, 26.513264>,  <30.405582, 39.650074, 26.590725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348236, 39.430275, 26.513264>,  <30.252659, 39.063946, 26.384161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348236, 39.430275, 26.513264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051750, 0.319900, -0.946037,
		-0.969654, 0.242752, 0.029044,
		0.238943, 0.915825, 0.322754,
		30.419918, 39.705021, 26.610090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779825, 39.605007, 26.181194>,  <30.252659, 39.063946, 26.384161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779825, 39.605007, 26.181194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144361, 39.766441, 26.213648>,  <30.363083, 39.863300, 26.233120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144361, 39.766441, 26.213648>,  <29.779825, 39.605007, 26.181194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144361, 39.766441, 26.213648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001310, 0.199932, -0.979809,
		-0.411654, 0.892832, 0.182734,
		0.911339, 0.403582, 0.081133,
		30.417763, 39.887516, 26.237988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682278, 40.191948, 25.804382>,  <29.779825, 39.605007, 26.181194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682278, 40.191948, 25.804382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078678, 40.151356, 25.839293>,  <30.316519, 40.126999, 25.860239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078678, 40.151356, 25.839293>,  <29.682278, 40.191948, 25.804382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078678, 40.151356, 25.839293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117662, 0.349637, -0.929467,
		0.063810, 0.931373, 0.358432,
		0.991001, -0.101483, 0.087277,
		30.375978, 40.120911, 25.865475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816235, 40.777317, 25.618217>,  <29.682278, 40.191948, 25.804382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816235, 40.777317, 25.618217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.139269, 40.548840, 25.559502>,  <30.333090, 40.411755, 25.524273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.139269, 40.548840, 25.559502>,  <29.816235, 40.777317, 25.618217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139269, 40.548840, 25.559502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100459, 0.378499, -0.920134,
		0.581132, 0.728340, 0.363052,
		0.807585, -0.571190, -0.146790,
		30.381544, 40.377483, 25.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228430, 41.212959, 25.209375>,  <29.816235, 40.777317, 25.618217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228430, 41.212959, 25.209375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375269, 40.841438, 25.189121>,  <30.463371, 40.618526, 25.176970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375269, 40.841438, 25.189121>,  <30.228430, 41.212959, 25.209375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375269, 40.841438, 25.189121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136667, 0.107699, -0.984745,
		0.920088, 0.354576, 0.166473,
		0.367096, -0.928804, -0.050633,
		30.485397, 40.562798, 25.173931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951820, 41.125690, 24.836174>,  <30.228430, 41.212959, 25.209375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951820, 41.125690, 24.836174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785397, 40.762749, 24.812141>,  <30.685543, 40.544983, 24.797722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785397, 40.762749, 24.812141>,  <30.951820, 41.125690, 24.836174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785397, 40.762749, 24.812141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115805, 0.012666, -0.993191,
		0.901934, -0.420183, 0.099806,
		-0.416058, -0.907351, -0.060083,
		30.660580, 40.490543, 24.794117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387503, 40.802410, 24.468613>,  <30.951820, 41.125690, 24.836174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387503, 40.802410, 24.468613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042316, 40.603607, 24.432217>,  <30.835205, 40.484325, 24.410379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042316, 40.603607, 24.432217>,  <31.387503, 40.802410, 24.468613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042316, 40.603607, 24.432217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153673, -0.086618, -0.984318,
		0.481328, -0.863414, 0.151124,
		-0.862964, -0.497003, -0.090991,
		30.783426, 40.454506, 24.404919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517954, 40.362186, 23.959053>,  <31.387503, 40.802410, 24.468613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517954, 40.362186, 23.959053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121597, 40.308342, 23.960457>,  <30.883783, 40.276035, 23.961298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121597, 40.308342, 23.960457>,  <31.517954, 40.362186, 23.959053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121597, 40.308342, 23.960457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004720, -0.060755, -0.998142,
		0.134575, -0.989034, 0.060837,
		-0.990892, -0.134612, 0.003508,
		30.824329, 40.267960, 23.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373775, 39.932438, 23.444216>,  <31.517954, 40.362186, 23.959053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373775, 39.932438, 23.444216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020288, 40.099998, 23.527710>,  <30.808197, 40.200535, 23.577806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020288, 40.099998, 23.527710>,  <31.373775, 39.932438, 23.444216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020288, 40.099998, 23.527710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175341, 0.117189, -0.977508,
		-0.433938, -0.900440, -0.030112,
		-0.883716, 0.418898, 0.208736,
		30.755173, 40.225666, 23.590330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817778, 39.542217, 23.014196>,  <31.373775, 39.932438, 23.444216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817778, 39.542217, 23.014196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687376, 39.906059, 23.117226>,  <30.609135, 40.124363, 23.179043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687376, 39.906059, 23.117226>,  <30.817778, 39.542217, 23.014196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687376, 39.906059, 23.117226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105544, 0.235733, -0.966070,
		-0.939458, -0.342129, 0.019153,
		-0.326005, 0.909603, 0.257571,
		30.589575, 40.178940, 23.194496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252102, 39.727657, 22.503962>,  <30.817778, 39.542217, 23.014196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252102, 39.727657, 22.503962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321047, 40.092720, 22.652205>,  <30.362413, 40.311756, 22.741150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321047, 40.092720, 22.652205>,  <30.252102, 39.727657, 22.503962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321047, 40.092720, 22.652205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245459, 0.324575, -0.913455,
		-0.953961, 0.248412, -0.168075,
		0.172360, 0.912657, 0.370607,
		30.372755, 40.366516, 22.763386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058340, 40.167614, 21.893772>,  <30.252102, 39.727657, 22.503962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058340, 40.167614, 21.893772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315434, 40.376709, 22.117786>,  <30.469690, 40.502167, 22.252195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315434, 40.376709, 22.117786>,  <30.058340, 40.167614, 21.893772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315434, 40.376709, 22.117786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332236, 0.468511, -0.818606,
		-0.690298, 0.712211, 0.127456,
		0.642735, 0.522737, 0.560034,
		30.508253, 40.533531, 22.285797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928938, 40.839470, 21.703337>,  <30.058340, 40.167614, 21.893772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928938, 40.839470, 21.703337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291536, 40.821026, 21.871212>,  <30.509096, 40.809959, 21.971937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291536, 40.821026, 21.871212>,  <29.928938, 40.839470, 21.703337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291536, 40.821026, 21.871212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363541, 0.590747, -0.720316,
		-0.214719, 0.805538, 0.552272,
		0.906495, -0.046108, 0.419690,
		30.563484, 40.807194, 21.997120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227304, 41.493202, 21.787214>,  <29.928938, 40.839470, 21.703337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227304, 41.493202, 21.787214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569052, 41.289501, 21.828619>,  <30.774099, 41.167278, 21.853462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569052, 41.289501, 21.828619>,  <30.227304, 41.493202, 21.787214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569052, 41.289501, 21.828619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471493, 0.675872, -0.566473,
		0.218520, 0.532780, 0.817554,
		0.854367, -0.509257, 0.103510,
		30.825361, 41.136723, 21.859673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683613, 41.988712, 21.973160>,  <30.227304, 41.493202, 21.787214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683613, 41.988712, 21.973160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883194, 41.688839, 21.799250>,  <31.002943, 41.508915, 21.694904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883194, 41.688839, 21.799250>,  <30.683613, 41.988712, 21.973160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883194, 41.688839, 21.799250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436150, 0.650740, -0.621539,
		0.748880, 0.120491, 0.651660,
		0.498951, -0.749680, -0.434774,
		31.032879, 41.463936, 21.668818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276861, 42.277111, 21.731380>,  <30.683613, 41.988712, 21.973160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276861, 42.277111, 21.731380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.273291, 41.945126, 21.508284>,  <31.271149, 41.745934, 21.374426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.273291, 41.945126, 21.508284>,  <31.276861, 42.277111, 21.731380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273291, 41.945126, 21.508284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413409, 0.504801, -0.757805,
		0.910502, -0.237339, 0.338611,
		-0.008925, -0.829968, -0.557740,
		31.270613, 41.696136, 21.340961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010021, 42.110836, 21.548704>,  <31.276861, 42.277111, 21.731380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010021, 42.110836, 21.548704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760040, 41.940273, 21.287136>,  <31.610052, 41.837936, 21.130196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760040, 41.940273, 21.287136>,  <32.010021, 42.110836, 21.548704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760040, 41.940273, 21.287136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489324, 0.438713, -0.753720,
		0.608277, -0.791016, -0.065522,
		-0.624949, -0.426409, -0.653922,
		31.572556, 41.812351, 21.090960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445190, 41.784355, 21.086878>,  <32.010021, 42.110836, 21.548704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445190, 41.784355, 21.086878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093262, 41.839096, 20.904810>,  <31.882105, 41.871941, 20.795568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093262, 41.839096, 20.904810>,  <32.445190, 41.784355, 21.086878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093262, 41.839096, 20.904810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463242, 0.461243, -0.756744,
		0.106380, -0.876656, -0.469210,
		-0.879824, 0.136856, -0.455171,
		31.829315, 41.880154, 20.768259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683586, 41.683445, 20.448383>,  <32.445190, 41.784355, 21.086878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683586, 41.683445, 20.448383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321938, 41.846394, 20.396837>,  <32.104946, 41.944164, 20.365910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321938, 41.846394, 20.396837>,  <32.683586, 41.683445, 20.448383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321938, 41.846394, 20.396837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280990, 0.339695, -0.897581,
		-0.321878, -0.847734, -0.421594,
		-0.904123, 0.407375, -0.128865,
		32.050701, 41.968605, 20.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449543, 41.457817, 19.795637>,  <32.683586, 41.683445, 20.448383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449543, 41.457817, 19.795637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268433, 41.806171, 19.872116>,  <32.159767, 42.015182, 19.918003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268433, 41.806171, 19.872116>,  <32.449543, 41.457817, 19.795637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268433, 41.806171, 19.872116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141393, 0.281853, -0.948982,
		-0.880343, -0.402640, -0.250753,
		-0.452774, 0.870885, 0.191196,
		32.132599, 42.067436, 19.929476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038960, 41.528934, 19.314257>,  <32.449543, 41.457817, 19.795637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038960, 41.528934, 19.314257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058224, 41.904968, 19.449265>,  <32.069782, 42.130589, 19.530270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058224, 41.904968, 19.449265>,  <32.038960, 41.528934, 19.314257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058224, 41.904968, 19.449265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206013, 0.321298, -0.924298,
		-0.977363, 0.114049, -0.178196,
		0.048161, 0.940085, 0.337521,
		32.072674, 42.186993, 19.550520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695023, 41.931877, 18.787630>,  <32.038960, 41.528934, 19.314257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695023, 41.931877, 18.787630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901514, 42.195801, 19.006048>,  <32.025410, 42.354153, 19.137098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901514, 42.195801, 19.006048>,  <31.695023, 41.931877, 18.787630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901514, 42.195801, 19.006048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156586, 0.554108, -0.817585,
		-0.842014, 0.507564, 0.182730,
		0.516229, 0.659805, 0.546044,
		32.056381, 42.393742, 19.169861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595718, 42.657207, 18.530128>,  <31.695023, 41.931877, 18.787630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595718, 42.657207, 18.530128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932888, 42.685135, 18.743523>,  <32.135189, 42.701893, 18.871559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932888, 42.685135, 18.743523>,  <31.595718, 42.657207, 18.530128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932888, 42.685135, 18.743523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402058, 0.577163, -0.710797,
		-0.357534, 0.813639, 0.458433,
		0.842923, 0.069818, 0.533485,
		32.185764, 42.706081, 18.903568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873825, 43.315529, 18.601618>,  <31.595718, 42.657207, 18.530128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873825, 43.315529, 18.601618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212593, 43.110294, 18.657433>,  <32.415855, 42.987152, 18.690922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212593, 43.110294, 18.657433>,  <31.873825, 43.315529, 18.601618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212593, 43.110294, 18.657433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426461, 0.498714, -0.754596,
		0.317583, 0.698590, 0.641181,
		0.846919, -0.513086, 0.139538,
		32.466667, 42.956367, 18.699293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378311, 43.816856, 18.706682>,  <31.873825, 43.315529, 18.601618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378311, 43.816856, 18.706682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576103, 43.484760, 18.603773>,  <32.694778, 43.285503, 18.542028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576103, 43.484760, 18.603773>,  <32.378311, 43.816856, 18.706682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576103, 43.484760, 18.603773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598409, 0.539852, -0.592001,
		0.630393, 0.138779, 0.763770,
		0.494481, -0.830241, -0.257272,
		32.724449, 43.235687, 18.526592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035873, 44.081219, 18.631716>,  <32.378311, 43.816856, 18.706682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035873, 44.081219, 18.631716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006237, 43.732498, 18.438028>,  <32.988457, 43.523266, 18.321815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006237, 43.732498, 18.438028>,  <33.035873, 44.081219, 18.631716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006237, 43.732498, 18.438028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562931, 0.364237, -0.741917,
		0.823177, -0.327547, 0.463781,
		-0.074087, -0.871805, -0.484218,
		32.984013, 43.470955, 18.292763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735001, 43.986977, 18.354883>,  <33.035873, 44.081219, 18.631716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735001, 43.986977, 18.354883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490681, 43.753490, 18.140894>,  <33.344090, 43.613400, 18.012501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490681, 43.753490, 18.140894>,  <33.735001, 43.986977, 18.354883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490681, 43.753490, 18.140894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348173, 0.408814, -0.843592,
		0.711122, -0.701532, -0.046471,
		-0.610804, -0.583716, -0.534971,
		33.307438, 43.578377, 17.980402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567738, 43.898972, 18.494431>,  <33.735001, 43.986977, 18.354883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567738, 43.898972, 18.494431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945477, 44.030510, 18.490931>,  <35.172119, 44.109432, 18.488831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945477, 44.030510, 18.490931>,  <34.567738, 43.898972, 18.494431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945477, 44.030510, 18.490931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114684, -0.304175, 0.945688,
		0.308322, -0.894058, -0.324959,
		0.944344, 0.328844, -0.008750,
		35.228779, 44.129162, 18.488306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990818, 43.323013, 18.649611>,  <34.567738, 43.898972, 18.494431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990818, 43.323013, 18.649611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187424, 43.656666, 18.749718>,  <35.305389, 43.856857, 18.809782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187424, 43.656666, 18.749718>,  <34.990818, 43.323013, 18.649611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187424, 43.656666, 18.749718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186652, -0.381600, 0.905286,
		0.850630, -0.398251, -0.343256,
		0.491517, 0.834133, 0.250266,
		35.334877, 43.906906, 18.824799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586308, 43.038452, 18.917143>,  <34.990818, 43.323013, 18.649611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586308, 43.038452, 18.917143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523720, 43.415497, 19.035120>,  <35.486168, 43.641724, 19.105906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523720, 43.415497, 19.035120>,  <35.586308, 43.038452, 18.917143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523720, 43.415497, 19.035120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075120, -0.286398, 0.955162,
		0.984822, 0.171612, -0.025996,
		-0.156472, 0.942617, 0.294942,
		35.476780, 43.698280, 19.123602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980377, 43.132347, 19.493490>,  <35.586308, 43.038452, 18.917143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980377, 43.132347, 19.493490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745373, 43.455051, 19.518663>,  <35.604370, 43.648674, 19.533768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745373, 43.455051, 19.518663>,  <35.980377, 43.132347, 19.493490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745373, 43.455051, 19.518663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065435, -0.030152, 0.997401,
		0.806563, 0.590107, -0.035076,
		-0.587516, 0.806762, 0.062934,
		35.569118, 43.697079, 19.537544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231945, 43.609413, 19.926878>,  <35.980377, 43.132347, 19.493490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231945, 43.609413, 19.926878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848064, 43.720467, 19.944271>,  <35.617737, 43.787098, 19.954706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848064, 43.720467, 19.944271>,  <36.231945, 43.609413, 19.926878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848064, 43.720467, 19.944271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041658, -0.012473, 0.999054,
		0.277911, 0.960607, 0.000405,
		-0.959703, 0.277631, 0.043483,
		35.560154, 43.803757, 19.957315>
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
