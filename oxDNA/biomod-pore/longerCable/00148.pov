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
	<23.954910, 35.143650, 34.815304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223684, 35.094471, 35.107437>,  <24.384949, 35.064964, 35.282719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223684, 35.094471, 35.107437>,  <23.954910, 35.143650, 34.815304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223684, 35.094471, 35.107437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553499, -0.571842, -0.605505,
		0.492080, 0.811099, -0.316191,
		0.671935, -0.122945, 0.730334,
		24.425264, 35.057587, 35.326538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630945, 35.204315, 34.455086>,  <23.954910, 35.143650, 34.815304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630945, 35.204315, 34.455086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651554, 35.009541, 34.803852>,  <24.663919, 34.892677, 35.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651554, 35.009541, 34.803852>,  <24.630945, 35.204315, 34.455086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651554, 35.009541, 34.803852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570965, -0.701951, -0.425751,
		0.819357, 0.519770, 0.241856,
		0.051521, -0.486933, 0.871918,
		24.667011, 34.863461, 35.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333776, 34.994495, 34.697948>,  <24.630945, 35.204315, 34.455086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333776, 34.994495, 34.697948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055408, 34.749214, 34.847443>,  <24.888388, 34.602047, 34.937138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055408, 34.749214, 34.847443>,  <25.333776, 34.994495, 34.697948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055408, 34.749214, 34.847443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501276, -0.787470, -0.358627,
		0.514217, -0.062230, 0.855400,
		-0.695919, -0.613203, 0.373736,
		24.846632, 34.565254, 34.959564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789169, 34.438980, 34.937386>,  <25.333776, 34.994495, 34.697948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789169, 34.438980, 34.937386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407145, 34.320442, 34.939823>,  <25.177929, 34.249321, 34.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407145, 34.320442, 34.939823>,  <25.789169, 34.438980, 34.937386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407145, 34.320442, 34.939823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292643, -0.946001, -0.139435,
		0.047084, -0.131386, 0.990213,
		-0.955062, -0.296344, 0.006092,
		25.120626, 34.231541, 34.941650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694599, 34.180569, 35.610420>,  <25.789169, 34.438980, 34.937386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694599, 34.180569, 35.610420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449497, 34.049419, 35.322800>,  <25.302437, 33.970730, 35.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449497, 34.049419, 35.322800>,  <25.694599, 34.180569, 35.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449497, 34.049419, 35.322800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317607, -0.935330, 0.155832,
		-0.723642, -0.132889, 0.677261,
		-0.612754, -0.327869, -0.719051,
		25.265671, 33.951057, 35.107086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267633, 34.611153, 35.832230>,  <25.694599, 34.180569, 35.610420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267633, 34.611153, 35.832230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572519, 34.456165, 36.039650>,  <26.755451, 34.363174, 36.164101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572519, 34.456165, 36.039650>,  <26.267633, 34.611153, 35.832230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572519, 34.456165, 36.039650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305810, 0.921580, 0.239105,
		-0.570531, -0.023672, 0.820935,
		0.762217, -0.387467, 0.518551,
		26.801184, 34.339924, 36.195213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364412, 34.731762, 36.573128>,  <26.267633, 34.611153, 35.832230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364412, 34.731762, 36.573128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712635, 34.724686, 36.376427>,  <26.921568, 34.720440, 36.258408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712635, 34.724686, 36.376427>,  <26.364412, 34.731762, 36.573128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712635, 34.724686, 36.376427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117887, 0.977748, 0.173525,
		0.477739, -0.209034, 0.853270,
		0.870556, -0.017689, -0.491751,
		26.973803, 34.719379, 36.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857147, 34.893444, 37.066120>,  <26.364412, 34.731762, 36.573128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857147, 34.893444, 37.066120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942970, 35.023819, 36.697830>,  <26.994463, 35.102043, 36.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942970, 35.023819, 36.697830>,  <26.857147, 34.893444, 37.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942970, 35.023819, 36.697830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039003, 0.939065, 0.341520,
		0.975933, -0.109186, 0.188768,
		0.214555, 0.325938, -0.920723,
		27.007338, 35.121601, 36.421612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362997, 35.469215, 37.193325>,  <26.857147, 34.893444, 37.066120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362997, 35.469215, 37.193325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241016, 35.525509, 36.816559>,  <27.167828, 35.559284, 36.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241016, 35.525509, 36.816559>,  <27.362997, 35.469215, 37.193325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241016, 35.525509, 36.816559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162750, 0.966771, 0.197143,
		0.938358, 0.213416, -0.271916,
		-0.304954, 0.140736, -0.941911,
		27.149530, 35.567730, 36.533985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685057, 36.039860, 37.007790>,  <27.362997, 35.469215, 37.193325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685057, 36.039860, 37.007790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363251, 35.988255, 36.775890>,  <27.170168, 35.957291, 36.636749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363251, 35.988255, 36.775890>,  <27.685057, 36.039860, 37.007790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363251, 35.988255, 36.775890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274992, 0.946107, 0.171060,
		0.526438, 0.297047, -0.796634,
		-0.804514, -0.129016, -0.579752,
		27.121897, 35.949551, 36.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703398, 36.654758, 36.536976>,  <27.685057, 36.039860, 37.007790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703398, 36.654758, 36.536976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339985, 36.497452, 36.593418>,  <27.121937, 36.403069, 36.627281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339985, 36.497452, 36.593418>,  <27.703398, 36.654758, 36.536976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339985, 36.497452, 36.593418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336848, 0.889241, 0.309489,
		-0.247185, 0.233651, -0.940376,
		-0.908533, -0.393265, 0.141102,
		27.067425, 36.379471, 36.635750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124474, 37.078590, 36.077793>,  <27.703398, 36.654758, 36.536976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124474, 37.078590, 36.077793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087189, 36.919193, 36.442760>,  <27.064817, 36.823555, 36.661743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087189, 36.919193, 36.442760>,  <27.124474, 37.078590, 36.077793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087189, 36.919193, 36.442760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507589, 0.807397, 0.300772,
		-0.856543, -0.435099, -0.277531,
		-0.093212, -0.398495, 0.912422,
		27.059225, 36.799644, 36.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445786, 37.256229, 36.202831>,  <27.124474, 37.078590, 36.077793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445786, 37.256229, 36.202831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672131, 37.232235, 36.531757>,  <26.807938, 37.217838, 36.729111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672131, 37.232235, 36.531757>,  <26.445786, 37.256229, 36.202831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672131, 37.232235, 36.531757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372285, 0.871303, 0.319743,
		-0.735663, -0.487066, 0.470708,
		0.565865, -0.059985, 0.822313,
		26.841890, 37.214241, 36.778450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985128, 37.647350, 36.758083>,  <26.445786, 37.256229, 36.202831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985128, 37.647350, 36.758083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367378, 37.612381, 36.870609>,  <26.596729, 37.591400, 36.938126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367378, 37.612381, 36.870609>,  <25.985128, 37.647350, 36.758083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367378, 37.612381, 36.870609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055087, 0.885069, 0.462189,
		-0.289388, -0.457177, 0.840978,
		0.955625, -0.087425, 0.281313,
		26.654066, 37.586155, 36.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766960, 37.000908, 36.253002>,  <25.985128, 37.647350, 36.758083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766960, 37.000908, 36.253002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083616, 36.837547, 36.071228>,  <26.273611, 36.739532, 35.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083616, 36.837547, 36.071228>,  <25.766960, 37.000908, 36.253002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083616, 36.837547, 36.071228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609835, 0.482539, 0.628695,
		-0.037475, -0.774833, 0.631054,
		0.791642, -0.408399, -0.454437,
		26.321110, 36.715027, 35.934898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149761, 36.473572, 36.776001>,  <25.766960, 37.000908, 36.253002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149761, 36.473572, 36.776001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376518, 36.595398, 36.469833>,  <26.512573, 36.668495, 36.286133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376518, 36.595398, 36.469833>,  <26.149761, 36.473572, 36.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376518, 36.595398, 36.469833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694890, 0.322239, 0.642876,
		0.442449, -0.896326, -0.028967,
		0.566892, 0.304568, -0.765422,
		26.546585, 36.686768, 36.240208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878187, 35.840004, 36.632328>,  <26.149761, 36.473572, 36.776001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878187, 35.840004, 36.632328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237682, 36.013954, 36.609890>,  <26.453381, 36.118324, 36.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237682, 36.013954, 36.609890>,  <25.878187, 35.840004, 36.632328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237682, 36.013954, 36.609890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365089, -0.813017, -0.453555,
		-0.242852, 0.387147, -0.889461,
		0.898740, 0.434879, -0.056100,
		26.507305, 36.144417, 36.593060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007317, 35.698227, 35.956654>,  <25.878187, 35.840004, 36.632328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007317, 35.698227, 35.956654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353617, 35.800339, 36.128841>,  <26.561398, 35.861607, 36.232155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353617, 35.800339, 36.128841>,  <26.007317, 35.698227, 35.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353617, 35.800339, 36.128841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467592, -0.719221, -0.513887,
		0.178417, 0.646183, -0.742035,
		0.865751, 0.255283, 0.430471,
		26.613342, 35.876923, 36.257984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509428, 35.798885, 35.447430>,  <26.007317, 35.698227, 35.956654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509428, 35.798885, 35.447430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695475, 35.700226, 35.787506>,  <26.807102, 35.641029, 35.991554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695475, 35.700226, 35.787506>,  <26.509428, 35.798885, 35.447430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695475, 35.700226, 35.787506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477447, -0.738853, -0.475543,
		0.745462, 0.627105, -0.225890,
		0.465114, -0.246649, 0.850196,
		26.835009, 35.626232, 36.042564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242819, 35.691338, 35.256100>,  <26.509428, 35.798885, 35.447430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242819, 35.691338, 35.256100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146523, 35.476643, 35.579571>,  <27.088745, 35.347824, 35.773651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146523, 35.476643, 35.579571>,  <27.242819, 35.691338, 35.256100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146523, 35.476643, 35.579571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565742, -0.754603, -0.332431,
		0.788657, 0.377470, 0.485322,
		-0.240743, -0.536741, 0.808673,
		27.074299, 35.315620, 35.822174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496050, 35.021011, 34.846344>,  <27.242819, 35.691338, 35.256100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496050, 35.021011, 34.846344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562307, 35.415077, 34.828411>,  <27.602062, 35.651516, 34.817650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562307, 35.415077, 34.828411>,  <27.496050, 35.021011, 34.846344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562307, 35.415077, 34.828411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875405, -0.125948, 0.466694,
		0.454125, -0.116552, -0.883282,
		0.165641, 0.985166, -0.044834,
		27.612000, 35.710629, 34.814960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205807, 34.971203, 34.686413>,  <27.496050, 35.021011, 34.846344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205807, 34.971203, 34.686413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117414, 35.315166, 34.870464>,  <28.064379, 35.521545, 34.980896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117414, 35.315166, 34.870464>,  <28.205807, 34.971203, 34.686413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117414, 35.315166, 34.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899029, -0.003269, 0.437876,
		0.378038, 0.510435, -0.772362,
		-0.220983, 0.859910, 0.460132,
		28.051119, 35.573139, 35.008503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710667, 34.823963, 35.183262>,  <28.205807, 34.971203, 34.686413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710667, 34.823963, 35.183262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024105, 34.596836, 35.082420>,  <29.212168, 34.460560, 35.021915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024105, 34.596836, 35.082420>,  <28.710667, 34.823963, 35.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024105, 34.596836, 35.082420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549809, 0.822754, -0.144173,
		0.289286, -0.025637, 0.956900,
		0.783597, -0.567820, -0.252106,
		29.259184, 34.426491, 35.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300264, 35.160965, 35.401863>,  <28.710667, 34.823963, 35.183262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300264, 35.160965, 35.401863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462679, 34.914867, 35.131569>,  <29.560127, 34.767208, 34.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462679, 34.914867, 35.131569>,  <29.300264, 35.160965, 35.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462679, 34.914867, 35.131569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682554, 0.695848, -0.223418,
		0.607662, -0.370507, 0.702475,
		0.406038, -0.615240, -0.675732,
		29.584490, 34.730297, 34.928848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042603, 34.894989, 35.501698>,  <29.300264, 35.160965, 35.401863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042603, 34.894989, 35.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931015, 34.937397, 35.119926>,  <29.864061, 34.962841, 34.890862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931015, 34.937397, 35.119926>,  <30.042603, 34.894989, 35.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931015, 34.937397, 35.119926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703479, 0.699101, -0.127962,
		0.653676, -0.707119, -0.269612,
		-0.278970, 0.106021, -0.954429,
		29.847324, 34.969204, 34.833599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596432, 35.072647, 35.277794>,  <30.042603, 34.894989, 35.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596432, 35.072647, 35.277794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326458, 35.179924, 35.002831>,  <30.164474, 35.244289, 34.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326458, 35.179924, 35.002831>,  <30.596432, 35.072647, 35.277794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326458, 35.179924, 35.002831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579766, 0.769024, -0.269210,
		0.456437, -0.580238, -0.674529,
		-0.674935, 0.268191, -0.687413,
		30.123978, 35.260380, 34.796608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748919, 35.139294, 34.434212>,  <30.596432, 35.072647, 35.277794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748919, 35.139294, 34.434212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533432, 35.457409, 34.545425>,  <30.404140, 35.648277, 34.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533432, 35.457409, 34.545425>,  <30.748919, 35.139294, 34.434212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533432, 35.457409, 34.545425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701906, 0.606199, -0.373966,
		-0.465954, -0.006308, -0.884786,
		-0.538715, 0.795288, 0.278033,
		30.371817, 35.695995, 34.628834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589701, 35.608295, 33.777420>,  <30.748919, 35.139294, 34.434212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589701, 35.608295, 33.777420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646576, 35.786060, 34.131207>,  <30.680700, 35.892719, 34.343479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646576, 35.786060, 34.131207>,  <30.589701, 35.608295, 33.777420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646576, 35.786060, 34.131207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725387, 0.561191, -0.398594,
		-0.673495, 0.698254, -0.242580,
		0.142186, 0.444416, 0.884464,
		30.689232, 35.919384, 34.396545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664095, 36.392899, 33.694832>,  <30.589701, 35.608295, 33.777420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664095, 36.392899, 33.694832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867237, 36.288986, 34.023369>,  <30.989122, 36.226639, 34.220490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867237, 36.288986, 34.023369>,  <30.664095, 36.392899, 33.694832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867237, 36.288986, 34.023369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816041, 0.450525, -0.362083,
		-0.275970, 0.854131, 0.440794,
		0.507856, -0.259782, 0.821338,
		31.019594, 36.211052, 34.269772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026396, 36.930992, 34.018726>,  <30.664095, 36.392899, 33.694832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026396, 36.930992, 34.018726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250210, 36.611988, 34.108971>,  <31.384499, 36.420586, 34.163116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250210, 36.611988, 34.108971>,  <31.026396, 36.930992, 34.018726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250210, 36.611988, 34.108971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801076, 0.450563, -0.394045,
		0.212603, 0.401212, 0.890971,
		0.559534, -0.797510, 0.225610,
		31.418070, 36.372734, 34.176655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685843, 37.076954, 34.412327>,  <31.026396, 36.930992, 34.018726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685843, 37.076954, 34.412327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712734, 36.794872, 34.130005>,  <31.728868, 36.625622, 33.960609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712734, 36.794872, 34.130005>,  <31.685843, 37.076954, 34.412327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712734, 36.794872, 34.130005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646058, 0.569845, -0.507824,
		0.760322, -0.421851, 0.493915,
		0.067229, -0.705207, -0.705806,
		31.732903, 36.583309, 33.918262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408070, 36.743752, 34.319866>,  <31.685843, 37.076954, 34.412327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408070, 36.743752, 34.319866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211067, 36.788677, 33.974655>,  <32.092865, 36.815632, 33.767529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211067, 36.788677, 33.974655>,  <32.408070, 36.743752, 34.319866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211067, 36.788677, 33.974655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754443, 0.549464, -0.359034,
		0.433881, -0.827935, -0.355345,
		-0.492506, 0.112310, -0.863032,
		32.063316, 36.822369, 33.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763977, 37.378731, 34.161514>,  <32.408070, 36.743752, 34.319866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763977, 37.378731, 34.161514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556591, 37.682602, 34.004501>,  <32.432159, 37.864925, 33.910294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556591, 37.682602, 34.004501>,  <32.763977, 37.378731, 34.161514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556591, 37.682602, 34.004501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796342, 0.261738, -0.545282,
		-0.311501, -0.595297, -0.740668,
		-0.518466, 0.759681, -0.392528,
		32.401051, 37.910507, 33.886742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870922, 37.387615, 33.458889>,  <32.763977, 37.378731, 34.161514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870922, 37.387615, 33.458889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760468, 37.750999, 33.584400>,  <32.694195, 37.969028, 33.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760468, 37.750999, 33.584400>,  <32.870922, 37.387615, 33.458889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760468, 37.750999, 33.584400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771452, 0.404215, -0.491398,
		-0.573247, 0.106369, -0.812449,
		-0.276135, 0.908458, 0.313773,
		32.677628, 38.023537, 33.678532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926205, 37.793621, 32.787563>,  <32.870922, 37.387615, 33.458889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926205, 37.793621, 32.787563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952682, 37.973915, 33.143642>,  <32.968571, 38.082092, 33.357292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952682, 37.973915, 33.143642>,  <32.926205, 37.793621, 32.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952682, 37.973915, 33.143642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884157, 0.387013, -0.261701,
		-0.462476, 0.804401, -0.372901,
		0.066195, 0.450734, 0.890201,
		32.972542, 38.109135, 33.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839996, 38.585762, 32.858246>,  <32.926205, 37.793621, 32.787563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839996, 38.585762, 32.858246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110245, 38.395191, 33.083298>,  <33.272392, 38.280849, 33.218330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110245, 38.395191, 33.083298>,  <32.839996, 38.585762, 32.858246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110245, 38.395191, 33.083298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737237, 0.432289, -0.519238,
		0.004159, 0.765601, 0.643302,
		0.675621, -0.476426, 0.562632,
		33.312931, 38.252262, 33.252087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385784, 39.025848, 33.025249>,  <32.839996, 38.585762, 32.858246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385784, 39.025848, 33.025249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608227, 38.695541, 33.062881>,  <33.741692, 38.497356, 33.085461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608227, 38.695541, 33.062881>,  <33.385784, 39.025848, 33.025249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608227, 38.695541, 33.062881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717337, 0.419729, -0.556107,
		0.419729, 0.376740, 0.825769,
		0.556107, -0.825769, 0.094076,
		33.775059, 38.447811, 33.091103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021923, 39.201904, 33.332642>,  <33.385784, 39.025848, 33.025249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021923, 39.201904, 33.332642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063736, 38.868988, 33.114883>,  <34.088825, 38.669239, 32.984230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063736, 38.868988, 33.114883>,  <34.021923, 39.201904, 33.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063736, 38.868988, 33.114883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701025, 0.449943, -0.553277,
		0.705433, -0.323798, 0.630491,
		0.104535, -0.832290, -0.544395,
		34.095097, 38.619301, 32.951565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732311, 38.998028, 33.363495>,  <34.021923, 39.201904, 33.332642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732311, 38.998028, 33.363495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625698, 38.771957, 33.051205>,  <34.561729, 38.636314, 32.863831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625698, 38.771957, 33.051205>,  <34.732311, 38.998028, 33.363495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625698, 38.771957, 33.051205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702721, 0.440443, -0.558743,
		0.659653, -0.697559, 0.279766,
		-0.266535, -0.565174, -0.780729,
		34.545738, 38.602406, 32.816986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320751, 38.572609, 33.135403>,  <34.732311, 38.998028, 33.363495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320751, 38.572609, 33.135403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074345, 38.640156, 32.827637>,  <34.926498, 38.680683, 32.642975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074345, 38.640156, 32.827637>,  <35.320751, 38.572609, 33.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074345, 38.640156, 32.827637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785002, 0.212823, -0.581789,
		0.065506, -0.962388, -0.263661,
		-0.616020, 0.168864, -0.769418,
		34.889538, 38.690815, 32.596809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748627, 38.471069, 32.483532>,  <35.320751, 38.572609, 33.135403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748627, 38.471069, 32.483532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412884, 38.649376, 32.359100>,  <35.211437, 38.756359, 32.284443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412884, 38.649376, 32.359100>,  <35.748627, 38.471069, 32.483532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412884, 38.649376, 32.359100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, 0.350836, -0.801942,
		-0.248337, -0.823535, -0.510018,
		-0.839360, 0.445762, -0.311080,
		35.161076, 38.783104, 32.265778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449802, 38.365028, 31.730970>,  <35.748627, 38.471069, 32.483532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449802, 38.365028, 31.730970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321575, 38.729931, 31.832966>,  <35.244640, 38.948872, 31.894163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321575, 38.729931, 31.832966>,  <35.449802, 38.365028, 31.730970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321575, 38.729931, 31.832966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455558, 0.384502, -0.802886,
		-0.830484, -0.141216, -0.538845,
		-0.320567, 0.912259, 0.254991,
		35.225407, 39.003609, 31.909464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971512, 38.812016, 31.217402>,  <35.449802, 38.365028, 31.730970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971512, 38.812016, 31.217402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205082, 39.050568, 31.437714>,  <35.345226, 39.193699, 31.569901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205082, 39.050568, 31.437714>,  <34.971512, 38.812016, 31.217402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205082, 39.050568, 31.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231549, 0.527924, -0.817118,
		-0.778082, 0.604672, 0.170180,
		0.583930, 0.596379, 0.550779,
		35.380260, 39.229481, 31.602947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234341, 38.568146, 31.536064>,  <34.971512, 38.812016, 31.217402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234341, 38.568146, 31.536064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464233, 38.504368, 31.857126>,  <34.602169, 38.466103, 32.049763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464233, 38.504368, 31.857126>,  <34.234341, 38.568146, 31.536064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464233, 38.504368, 31.857126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722865, -0.558682, 0.406620,
		0.383596, -0.813911, -0.436352,
		0.574735, -0.159446, 0.802656,
		34.636654, 38.456535, 32.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258831, 37.894005, 31.780199>,  <34.234341, 38.568146, 31.536064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258831, 37.894005, 31.780199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317486, 38.119061, 32.105637>,  <34.352676, 38.254093, 32.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317486, 38.119061, 32.105637>,  <34.258831, 37.894005, 31.780199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317486, 38.119061, 32.105637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676632, -0.542918, 0.497403,
		0.721573, -0.623440, 0.301089,
		0.146635, 0.562639, 0.813594,
		34.361477, 38.287853, 32.349716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187374, 37.414505, 32.271713>,  <34.258831, 37.894005, 31.780199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187374, 37.414505, 32.271713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125839, 37.760368, 32.463005>,  <34.088921, 37.967888, 32.577782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125839, 37.760368, 32.463005>,  <34.187374, 37.414505, 32.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125839, 37.760368, 32.463005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680357, -0.443673, 0.583325,
		0.716554, -0.235632, 0.656527,
		-0.153834, 0.864657, 0.478230,
		34.079689, 38.019764, 32.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313313, 37.430267, 33.077682>,  <34.187374, 37.414505, 32.271713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313313, 37.430267, 33.077682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037006, 37.683350, 32.937668>,  <33.871223, 37.835201, 32.853661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037006, 37.683350, 32.937668>,  <34.313313, 37.430267, 33.077682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037006, 37.683350, 32.937668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713059, -0.515735, 0.474937,
		0.119971, 0.577665, 0.807409,
		-0.690763, 0.632709, -0.350036,
		33.829777, 37.873161, 32.832657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989620, 37.596516, 33.669098>,  <34.313313, 37.430267, 33.077682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989620, 37.596516, 33.669098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764206, 37.645252, 33.342278>,  <33.628956, 37.674496, 33.146183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764206, 37.645252, 33.342278>,  <33.989620, 37.596516, 33.669098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764206, 37.645252, 33.342278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570100, -0.773143, 0.277913,
		-0.597836, 0.622417, 0.505162,
		-0.563540, 0.121846, -0.817053,
		33.595142, 37.681805, 33.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086929, 37.067276, 34.253689>,  <33.989620, 37.596516, 33.669098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086929, 37.067276, 34.253689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382446, 36.898655, 34.464016>,  <34.559757, 36.797482, 34.590214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382446, 36.898655, 34.464016>,  <34.086929, 37.067276, 34.253689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382446, 36.898655, 34.464016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487644, 0.204164, 0.848835,
		-0.465179, -0.883523, -0.054732,
		0.738791, -0.421550, 0.525818,
		34.604084, 36.772190, 34.621761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795055, 36.653309, 34.726357>,  <34.086929, 37.067276, 34.253689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795055, 36.653309, 34.726357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157402, 36.679619, 34.893726>,  <34.374809, 36.695404, 34.994148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157402, 36.679619, 34.893726>,  <33.795055, 36.653309, 34.726357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157402, 36.679619, 34.893726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419685, 0.006078, 0.907650,
		0.057166, -0.997815, 0.033115,
		0.905868, 0.065785, 0.418420,
		34.429161, 36.699348, 35.019253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885765, 36.070335, 35.234039>,  <33.795055, 36.653309, 34.726357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885765, 36.070335, 35.234039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127396, 36.371891, 35.337372>,  <34.272373, 36.552826, 35.399372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127396, 36.371891, 35.337372>,  <33.885765, 36.070335, 35.234039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127396, 36.371891, 35.337372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524031, 0.131546, 0.841479,
		0.600403, -0.643692, 0.474527,
		0.604076, 0.753894, 0.258334,
		34.308617, 36.598061, 35.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829758, 35.982315, 35.911896>,  <33.885765, 36.070335, 35.234039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829758, 35.982315, 35.911896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035027, 36.325485, 35.901875>,  <34.158188, 36.531387, 35.895863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035027, 36.325485, 35.901875>,  <33.829758, 35.982315, 35.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035027, 36.325485, 35.901875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380605, 0.253624, 0.889278,
		0.769284, -0.446815, 0.456681,
		0.513168, 0.857922, -0.025048,
		34.188976, 36.582863, 35.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143494, 36.145016, 36.677700>,  <33.829758, 35.982315, 35.911896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143494, 36.145016, 36.677700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101719, 36.482780, 36.467529>,  <34.076653, 36.685440, 36.341427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101719, 36.482780, 36.467529>,  <34.143494, 36.145016, 36.677700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101719, 36.482780, 36.467529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272739, 0.483740, 0.831630,
		0.956403, 0.230155, 0.179783,
		-0.104436, 0.844408, -0.525423,
		34.070389, 36.736103, 36.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562923, 36.679237, 37.109173>,  <34.143494, 36.145016, 36.677700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562923, 36.679237, 37.109173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270466, 36.822350, 36.876820>,  <34.094990, 36.908215, 36.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270466, 36.822350, 36.876820>,  <34.562923, 36.679237, 37.109173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270466, 36.822350, 36.876820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376749, 0.498096, 0.781000,
		0.568757, 0.789871, -0.229389,
		-0.731147, 0.357777, -0.580879,
		34.051121, 36.929684, 36.702557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536976, 37.500744, 36.979664>,  <34.562923, 36.679237, 37.109173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536976, 37.500744, 36.979664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175999, 37.328903, 36.992577>,  <33.959412, 37.225800, 37.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175999, 37.328903, 36.992577>,  <34.536976, 37.500744, 36.979664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175999, 37.328903, 36.992577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258367, 0.599643, 0.757413,
		-0.344741, 0.675181, -0.652138,
		-0.902441, -0.429602, 0.032277,
		33.905266, 37.200024, 37.002258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838882, 37.916115, 37.142281>,  <34.536976, 37.500744, 36.979664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838882, 37.916115, 37.142281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476978, 37.941113, 36.973759>,  <33.259834, 37.956112, 36.872646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476978, 37.941113, 36.973759>,  <33.838882, 37.916115, 37.142281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476978, 37.941113, 36.973759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038314, -0.973226, -0.226634,
		-0.424189, -0.221192, 0.878145,
		-0.904763, 0.062490, -0.421307,
		33.205551, 37.959858, 36.847366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435246, 37.364029, 37.402260>,  <33.838882, 37.916115, 37.142281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435246, 37.364029, 37.402260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236732, 37.461124, 37.068848>,  <33.117622, 37.519382, 36.868801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236732, 37.461124, 37.068848>,  <33.435246, 37.364029, 37.402260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236732, 37.461124, 37.068848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211689, -0.964971, -0.154980,
		-0.841955, 0.099535, 0.530287,
		-0.496286, 0.242742, -0.833533,
		33.087849, 37.533947, 36.818787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732132, 37.068359, 37.341106>,  <33.435246, 37.364029, 37.402260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732132, 37.068359, 37.341106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915371, 37.078640, 36.985695>,  <33.025314, 37.084808, 36.772446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915371, 37.078640, 36.985695>,  <32.732132, 37.068359, 37.341106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915371, 37.078640, 36.985695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018406, -0.999093, -0.038392,
		-0.888713, 0.033942, -0.457206,
		0.458095, 0.025704, -0.888532,
		33.052799, 37.086349, 36.719135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697685, 36.679291, 36.769695>,  <32.732132, 37.068359, 37.341106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697685, 36.679291, 36.769695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970753, 36.960045, 36.851006>,  <33.134594, 37.128498, 36.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970753, 36.960045, 36.851006>,  <32.697685, 36.679291, 36.769695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970753, 36.960045, 36.851006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420071, -0.149333, -0.895120,
		-0.597914, 0.696462, -0.396786,
		0.682670, 0.701884, 0.203275,
		33.175552, 37.170609, 36.911987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820770, 37.196613, 36.114613>,  <32.697685, 36.679291, 36.769695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820770, 37.196613, 36.114613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146877, 37.217255, 36.345322>,  <33.342541, 37.229641, 36.483749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146877, 37.217255, 36.345322>,  <32.820770, 37.196613, 36.114613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146877, 37.217255, 36.345322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578951, -0.093583, -0.809974,
		0.012177, 0.994273, -0.106173,
		0.815271, 0.051606, 0.576775,
		33.391460, 37.232735, 36.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370365, 37.456482, 35.729965>,  <32.820770, 37.196613, 36.114613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370365, 37.456482, 35.729965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581261, 37.302528, 36.032986>,  <33.707798, 37.210155, 36.214798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581261, 37.302528, 36.032986>,  <33.370365, 37.456482, 35.729965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581261, 37.302528, 36.032986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801738, -0.070010, -0.593561,
		0.281488, 0.920306, 0.271663,
		0.527239, -0.384883, 0.757552,
		33.739433, 37.187065, 36.260250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929810, 37.821827, 35.581947>,  <33.370365, 37.456482, 35.729965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929810, 37.821827, 35.581947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983055, 37.509613, 35.826260>,  <34.015003, 37.322285, 35.972847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983055, 37.509613, 35.826260>,  <33.929810, 37.821827, 35.581947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983055, 37.509613, 35.826260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776906, -0.300466, -0.553297,
		0.615384, 0.548169, 0.566404,
		0.133115, -0.780533, 0.610778,
		34.022991, 37.275452, 36.009495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621346, 37.856659, 35.774170>,  <33.929810, 37.821827, 35.581947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621346, 37.856659, 35.774170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492664, 37.478504, 35.795147>,  <34.415455, 37.251610, 35.807735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492664, 37.478504, 35.795147>,  <34.621346, 37.856659, 35.774170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492664, 37.478504, 35.795147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731174, -0.283236, -0.620614,
		0.601575, -0.161305, 0.782360,
		-0.321701, -0.945387, 0.052445,
		34.396152, 37.194889, 35.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216465, 37.492073, 35.776047>,  <34.621346, 37.856659, 35.774170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216465, 37.492073, 35.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930939, 37.231857, 35.672302>,  <34.759624, 37.075726, 35.610058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930939, 37.231857, 35.672302>,  <35.216465, 37.492073, 35.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930939, 37.231857, 35.672302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629937, -0.434582, -0.643675,
		0.306026, -0.622843, 0.720011,
		-0.713812, -0.650543, -0.259359,
		34.716797, 37.036694, 35.594494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627975, 36.945850, 35.489216>,  <35.216465, 37.492073, 35.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627975, 36.945850, 35.489216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257973, 36.866898, 35.359356>,  <35.035969, 36.819527, 35.281441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257973, 36.866898, 35.359356>,  <35.627975, 36.945850, 35.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257973, 36.866898, 35.359356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379076, -0.421848, -0.823617,
		0.025619, -0.884920, 0.465038,
		-0.925011, -0.197386, -0.324645,
		34.980469, 36.807682, 35.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652107, 36.226612, 35.173382>,  <35.627975, 36.945850, 35.489216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652107, 36.226612, 35.173382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302422, 36.373844, 35.046726>,  <35.092609, 36.462185, 34.970734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302422, 36.373844, 35.046726>,  <35.652107, 36.226612, 35.173382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302422, 36.373844, 35.046726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183714, -0.352893, -0.917451,
		-0.449438, -0.860222, 0.240883,
		-0.874217, 0.368083, -0.316638,
		35.040157, 36.484268, 34.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353107, 35.786888, 34.682400>,  <35.652107, 36.226612, 35.173382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353107, 35.786888, 34.682400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177063, 36.140987, 34.622211>,  <35.071438, 36.353447, 34.586098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177063, 36.140987, 34.622211>,  <35.353107, 35.786888, 34.682400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177063, 36.140987, 34.622211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144483, -0.095579, -0.984881,
		-0.886244, -0.455196, -0.085837,
		-0.440110, 0.885247, -0.150475,
		35.045029, 36.406563, 34.577068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723999, 35.791828, 34.265121>,  <35.353107, 35.786888, 34.682400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723999, 35.791828, 34.265121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923916, 36.136360, 34.228642>,  <35.043865, 36.343079, 34.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923916, 36.136360, 34.228642>,  <34.723999, 35.791828, 34.265121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923916, 36.136360, 34.228642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168656, -0.200063, -0.965158,
		-0.849566, 0.466997, -0.245258,
		0.499793, 0.861330, -0.091205,
		35.073853, 36.394760, 34.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530334, 36.294575, 33.808594>,  <34.723999, 35.791828, 34.265121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530334, 36.294575, 33.808594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930012, 36.309402, 33.802391>,  <35.169819, 36.318298, 33.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930012, 36.309402, 33.802391>,  <34.530334, 36.294575, 33.808594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930012, 36.309402, 33.802391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009742, -0.150879, -0.988504,
		-0.038985, 0.987857, -0.150396,
		0.999192, 0.037072, -0.015506,
		35.229771, 36.320522, 33.797741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632729, 36.756622, 33.347565>,  <34.530334, 36.294575, 33.808594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632729, 36.756622, 33.347565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958000, 36.526325, 33.381638>,  <35.153164, 36.388145, 33.402081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958000, 36.526325, 33.381638>,  <34.632729, 36.756622, 33.347565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958000, 36.526325, 33.381638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020757, -0.117577, -0.992847,
		0.581644, 0.809130, -0.083660,
		0.813178, -0.575747, 0.085183,
		35.201954, 36.353600, 33.407192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178352, 37.050915, 32.847240>,  <34.632729, 36.756622, 33.347565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178352, 37.050915, 32.847240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266811, 36.667965, 32.921574>,  <35.319885, 36.438194, 32.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266811, 36.667965, 32.921574>,  <35.178352, 37.050915, 32.847240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266811, 36.667965, 32.921574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066857, -0.175219, -0.982257,
		0.972946, 0.229647, 0.025258,
		0.221146, -0.957372, 0.185832,
		35.333157, 36.380753, 32.977322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794895, 36.947613, 32.488739>,  <35.178352, 37.050915, 32.847240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794895, 36.947613, 32.488739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645512, 36.581596, 32.549702>,  <35.555882, 36.361988, 32.586281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645512, 36.581596, 32.549702>,  <35.794895, 36.947613, 32.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645512, 36.581596, 32.549702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147702, -0.220854, -0.964058,
		0.915813, -0.337524, 0.217633,
		-0.373458, -0.915041, 0.152408,
		35.533474, 36.307083, 32.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228298, 36.653587, 32.148312>,  <35.794895, 36.947613, 32.488739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228298, 36.653587, 32.148312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958000, 36.364128, 32.204468>,  <35.795822, 36.190453, 32.238163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958000, 36.364128, 32.204468>,  <36.228298, 36.653587, 32.148312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958000, 36.364128, 32.204468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142386, -0.315010, -0.938347,
		0.723255, -0.614091, 0.315902,
		-0.675743, -0.723644, 0.140395,
		35.755276, 36.147034, 32.246586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534801, 35.961296, 32.055782>,  <36.228298, 36.653587, 32.148312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534801, 35.961296, 32.055782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143681, 35.914494, 31.986261>,  <35.909008, 35.886414, 31.944550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143681, 35.914494, 31.986261>,  <36.534801, 35.961296, 32.055782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143681, 35.914494, 31.986261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204296, -0.348464, -0.914788,
		0.046472, -0.929991, 0.364633,
		-0.977805, -0.117005, -0.173799,
		35.850338, 35.879391, 31.934122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521736, 35.334793, 31.580231>,  <36.534801, 35.961296, 32.055782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521736, 35.334793, 31.580231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175003, 35.531540, 31.547546>,  <35.966965, 35.649590, 31.527935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175003, 35.531540, 31.547546>,  <36.521736, 35.334793, 31.580231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175003, 35.531540, 31.547546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001797, -0.166963, -0.985962,
		-0.498604, -0.854512, 0.145613,
		-0.866828, 0.491866, -0.081713,
		35.914955, 35.679100, 31.523033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206593, 34.881428, 31.212551>,  <36.521736, 35.334793, 31.580231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206593, 34.881428, 31.212551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992661, 35.218327, 31.185482>,  <35.864304, 35.420467, 31.169241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992661, 35.218327, 31.185482>,  <36.206593, 34.881428, 31.212551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992661, 35.218327, 31.185482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101406, -0.143490, -0.984443,
		-0.838855, -0.519643, 0.162152,
		-0.534826, 0.842248, -0.067673,
		35.832214, 35.471001, 31.165180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540390, 34.799583, 30.914179>,  <36.206593, 34.881428, 31.212551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540390, 34.799583, 30.914179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606098, 35.183716, 30.824049>,  <35.645523, 35.414196, 30.769970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606098, 35.183716, 30.824049>,  <35.540390, 34.799583, 30.914179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606098, 35.183716, 30.824049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371662, -0.151336, -0.915951,
		-0.913719, 0.234213, 0.332059,
		0.164275, 0.960334, -0.225327,
		35.655380, 35.471817, 30.756451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009068, 35.007542, 30.483364>,  <35.540390, 34.799583, 30.914179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009068, 35.007542, 30.483364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316502, 35.249470, 30.399971>,  <35.500961, 35.394627, 30.349936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316502, 35.249470, 30.399971>,  <35.009068, 35.007542, 30.483364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316502, 35.249470, 30.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146914, -0.150311, -0.977662,
		-0.622645, 0.782050, -0.026671,
		0.768589, 0.604818, -0.208485,
		35.547077, 35.430916, 30.337425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770741, 35.384926, 29.918394>,  <35.009068, 35.007542, 30.483364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770741, 35.384926, 29.918394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159595, 35.476181, 29.896875>,  <35.392910, 35.530933, 29.883965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159595, 35.476181, 29.896875>,  <34.770741, 35.384926, 29.918394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159595, 35.476181, 29.896875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038996, -0.068902, -0.996861,
		-0.231132, 0.971187, -0.058085,
		0.972141, 0.228142, -0.053797,
		35.451237, 35.544624, 29.880735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860867, 35.870094, 29.401701>,  <34.770741, 35.384926, 29.918394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860867, 35.870094, 29.401701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235188, 35.729961, 29.417414>,  <35.459782, 35.645882, 29.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235188, 35.729961, 29.417414>,  <34.860867, 35.870094, 29.401701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235188, 35.729961, 29.417414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032573, -0.025030, -0.999156,
		0.351021, 0.936291, -0.012012,
		0.935801, -0.350333, 0.039283,
		35.515926, 35.624863, 29.429199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283329, 36.352112, 29.061039>,  <34.860867, 35.870094, 29.401701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283329, 36.352112, 29.061039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501953, 36.017181, 29.066025>,  <35.633125, 35.816223, 29.069017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501953, 36.017181, 29.066025>,  <35.283329, 36.352112, 29.061039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501953, 36.017181, 29.066025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120771, 0.064084, -0.990610,
		0.828667, 0.542931, 0.136151,
		0.546558, -0.837329, 0.012466,
		35.665920, 35.765984, 29.069765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887909, 36.375393, 28.657391>,  <35.283329, 36.352112, 29.061039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887909, 36.375393, 28.657391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769062, 35.993881, 28.675426>,  <35.697754, 35.764977, 28.686247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769062, 35.993881, 28.675426>,  <35.887909, 36.375393, 28.657391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769062, 35.993881, 28.675426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017547, -0.041759, -0.998974,
		0.954680, -0.297603, -0.004329,
		-0.297117, -0.953776, 0.045089,
		35.679928, 35.707748, 28.688953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454403, 35.959122, 28.325869>,  <35.887909, 36.375393, 28.657391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454403, 35.959122, 28.325869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095570, 35.784168, 28.300795>,  <35.880268, 35.679195, 28.285751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095570, 35.784168, 28.300795>,  <36.454403, 35.959122, 28.325869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095570, 35.784168, 28.300795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084504, -0.030586, -0.995954,
		0.433700, -0.898753, 0.064399,
		-0.897086, -0.437387, -0.062683,
		35.826443, 35.652954, 28.281990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486015, 35.516716, 27.680229>,  <36.454403, 35.959122, 28.325869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486015, 35.516716, 27.680229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090775, 35.524895, 27.741207>,  <35.853630, 35.529800, 27.777794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090775, 35.524895, 27.741207>,  <36.486015, 35.516716, 27.680229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090775, 35.524895, 27.741207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153812, -0.131707, -0.979283,
		0.000063, -0.991078, 0.133284,
		-0.988100, 0.020439, 0.152448,
		35.794346, 35.531029, 27.786942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130119, 34.938637, 27.297794>,  <36.486015, 35.516716, 27.680229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130119, 34.938637, 27.297794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854084, 35.221695, 27.358469>,  <35.688461, 35.391529, 27.394873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854084, 35.221695, 27.358469>,  <36.130119, 34.938637, 27.297794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854084, 35.221695, 27.358469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277755, -0.065426, -0.958421,
		-0.668300, -0.703530, 0.241702,
		-0.690092, 0.707647, 0.151684,
		35.647057, 35.433990, 27.403975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617531, 34.740238, 26.780254>,  <36.130119, 34.938637, 27.297794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617531, 34.740238, 26.780254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501091, 35.102314, 26.904125>,  <35.431229, 35.319557, 26.978447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501091, 35.102314, 26.904125>,  <35.617531, 34.740238, 26.780254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501091, 35.102314, 26.904125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270838, 0.232479, -0.934131,
		-0.917556, -0.355795, 0.177485,
		-0.291097, 0.905187, 0.309675,
		35.413761, 35.373871, 26.997028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975948, 34.863617, 26.438694>,  <35.617531, 34.740238, 26.780254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975948, 34.863617, 26.438694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114666, 35.228806, 26.524685>,  <35.197895, 35.447918, 26.576279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114666, 35.228806, 26.524685>,  <34.975948, 34.863617, 26.438694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114666, 35.228806, 26.524685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261541, 0.314237, -0.912607,
		-0.900740, 0.260258, 0.347755,
		0.346791, 0.912974, 0.214978,
		35.218704, 35.502697, 26.589178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437252, 35.351391, 26.220078>,  <34.975948, 34.863617, 26.438694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437252, 35.351391, 26.220078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782505, 35.552498, 26.239000>,  <34.989655, 35.673161, 26.250353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782505, 35.552498, 26.239000>,  <34.437252, 35.351391, 26.220078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782505, 35.552498, 26.239000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139253, 0.327011, -0.934704,
		-0.485406, 0.800182, 0.352264,
		0.863128, 0.502764, 0.047305,
		35.041443, 35.703327, 26.253191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219917, 36.007992, 26.046450>,  <34.437252, 35.351391, 26.220078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219917, 36.007992, 26.046450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615791, 36.014774, 25.989553>,  <34.853317, 36.018845, 25.955416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615791, 36.014774, 25.989553>,  <34.219917, 36.007992, 26.046450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615791, 36.014774, 25.989553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127828, 0.552712, -0.823511,
		0.064655, 0.833200, 0.549179,
		0.989687, 0.016956, -0.142242,
		34.912697, 36.019863, 25.946880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396114, 36.712627, 25.959969>,  <34.219917, 36.007992, 26.046450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396114, 36.712627, 25.959969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704590, 36.506237, 25.810818>,  <34.889675, 36.382404, 25.721327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704590, 36.506237, 25.810818>,  <34.396114, 36.712627, 25.959969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704590, 36.506237, 25.810818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121183, 0.456035, -0.881673,
		0.624967, 0.725122, 0.289161,
		0.771188, -0.515975, -0.372879,
		34.935947, 36.351444, 25.698954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747501, 37.177158, 25.502625>,  <34.396114, 36.712627, 25.959969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747501, 37.177158, 25.502625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886433, 36.816082, 25.401030>,  <34.969791, 36.599434, 25.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886433, 36.816082, 25.401030>,  <34.747501, 37.177158, 25.502625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886433, 36.816082, 25.401030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033401, 0.282587, -0.958660,
		0.937149, 0.324486, 0.128301,
		0.347328, -0.902692, -0.253988,
		34.990631, 36.545273, 25.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302593, 37.360687, 25.013172>,  <34.747501, 37.177158, 25.502625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302593, 37.360687, 25.013172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224094, 36.977428, 24.929794>,  <35.176994, 36.747475, 24.879766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224094, 36.977428, 24.929794>,  <35.302593, 37.360687, 25.013172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224094, 36.977428, 24.929794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078708, 0.196502, -0.977339,
		0.977391, -0.208204, 0.036851,
		-0.196244, -0.958143, -0.208446,
		35.165222, 36.689987, 24.867260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856022, 37.132004, 24.478682>,  <35.302593, 37.360687, 25.013172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856022, 37.132004, 24.478682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546387, 36.880299, 24.450893>,  <35.360607, 36.729275, 24.434219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546387, 36.880299, 24.450893>,  <35.856022, 37.132004, 24.478682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546387, 36.880299, 24.450893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255161, -0.209678, -0.943890,
		0.579385, -0.748376, 0.322871,
		-0.774084, -0.629260, -0.069472,
		35.314163, 36.691521, 24.430052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178894, 36.504898, 24.123989>,  <35.856022, 37.132004, 24.478682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178894, 36.504898, 24.123989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783607, 36.476910, 24.069536>,  <35.546436, 36.460117, 24.036863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783607, 36.476910, 24.069536>,  <36.178894, 36.504898, 24.123989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783607, 36.476910, 24.069536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146067, -0.165303, -0.975366,
		0.045741, -0.983758, 0.173575,
		-0.988217, -0.069968, -0.136134,
		35.487141, 36.455917, 24.028696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199203, 36.093571, 23.629297>,  <36.178894, 36.504898, 24.123989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199203, 36.093571, 23.629297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817165, 36.210640, 23.610825>,  <35.587944, 36.280880, 23.599741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817165, 36.210640, 23.610825>,  <36.199203, 36.093571, 23.629297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817165, 36.210640, 23.610825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016206, -0.207225, -0.978159,
		-0.295854, -0.933487, 0.202663,
		-0.955096, 0.292677, -0.046180,
		35.530636, 36.298443, 23.596972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749931, 35.562271, 23.327257>,  <36.199203, 36.093571, 23.629297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749931, 35.562271, 23.327257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576313, 35.915424, 23.255564>,  <35.472141, 36.127316, 23.212547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576313, 35.915424, 23.255564>,  <35.749931, 35.562271, 23.327257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576313, 35.915424, 23.255564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, -0.190344, -0.981550,
		-0.900709, -0.429287, 0.066597,
		-0.434043, 0.882883, -0.179234,
		35.446098, 36.180290, 23.201794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273579, 35.530712, 22.772070>,  <35.749931, 35.562271, 23.327257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273579, 35.530712, 22.772070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326019, 35.927254, 22.769886>,  <35.357483, 36.165180, 22.768576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326019, 35.927254, 22.769886>,  <35.273579, 35.530712, 22.772070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326019, 35.927254, 22.769886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189244, -0.030433, -0.981459,
		-0.973138, 0.127642, -0.191597,
		0.131106, 0.991353, -0.005460,
		35.365353, 36.224659, 22.768248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053463, 35.774303, 22.077129>,  <35.273579, 35.530712, 22.772070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053463, 35.774303, 22.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259739, 36.086655, 22.218155>,  <35.383503, 36.274063, 22.302771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259739, 36.086655, 22.218155>,  <35.053463, 35.774303, 22.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259739, 36.086655, 22.218155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250882, 0.255837, -0.933598,
		-0.819223, 0.569896, -0.063975,
		0.515687, 0.780875, 0.352564,
		35.414444, 36.320919, 22.323925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682365, 36.468487, 21.752522>,  <35.053463, 35.774303, 22.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682365, 36.468487, 21.752522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060059, 36.516823, 21.875042>,  <35.286674, 36.545822, 21.948555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060059, 36.516823, 21.875042>,  <34.682365, 36.468487, 21.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060059, 36.516823, 21.875042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278126, 0.205274, -0.938354,
		-0.176264, 0.971216, 0.160218,
		0.944233, 0.120837, 0.306303,
		35.343330, 36.553074, 21.966932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886349, 37.010429, 21.364584>,  <34.682365, 36.468487, 21.752522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886349, 37.010429, 21.364584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246853, 36.891277, 21.490438>,  <35.463158, 36.819786, 21.565950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246853, 36.891277, 21.490438>,  <34.886349, 37.010429, 21.364584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246853, 36.891277, 21.490438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409320, 0.347262, -0.843722,
		0.142064, 0.889201, 0.434901,
		0.901263, -0.297877, 0.314635,
		35.517231, 36.801914, 21.584829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335030, 37.481651, 21.063549>,  <34.886349, 37.010429, 21.364584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335030, 37.481651, 21.063549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561283, 37.164825, 21.155369>,  <35.697037, 36.974731, 21.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561283, 37.164825, 21.155369>,  <35.335030, 37.481651, 21.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561283, 37.164825, 21.155369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636239, 0.242060, -0.732535,
		0.524650, 0.560394, 0.640859,
		0.565634, -0.792064, 0.229547,
		35.730972, 36.927208, 21.224234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022125, 37.708454, 21.068441>,  <35.335030, 37.481651, 21.063549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022125, 37.708454, 21.068441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059296, 37.316387, 20.998425>,  <36.081600, 37.081146, 20.956415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059296, 37.316387, 20.998425>,  <36.022125, 37.708454, 21.068441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059296, 37.316387, 20.998425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639745, 0.193492, -0.743833,
		0.762949, -0.042858, 0.645036,
		0.092930, -0.980165, -0.175043,
		36.087173, 37.022339, 20.945911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674030, 37.677490, 20.886869>,  <36.022125, 37.708454, 21.068441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674030, 37.677490, 20.886869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515934, 37.339249, 20.743351>,  <36.421078, 37.136303, 20.657240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515934, 37.339249, 20.743351>,  <36.674030, 37.677490, 20.886869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515934, 37.339249, 20.743351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530486, 0.108759, -0.840688,
		0.749914, -0.522608, 0.405598,
		-0.395238, -0.845608, -0.358796,
		36.397362, 37.085567, 20.635712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272442, 37.263958, 20.756514>,  <36.674030, 37.677490, 20.886869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272442, 37.263958, 20.756514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962482, 37.133446, 20.539968>,  <36.776508, 37.055138, 20.410042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962482, 37.133446, 20.539968>,  <37.272442, 37.263958, 20.756514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962482, 37.133446, 20.539968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520043, 0.157731, -0.839450,
		0.359288, -0.932019, 0.047456,
		-0.774898, -0.326284, -0.541361,
		36.730011, 37.035561, 20.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652481, 36.905491, 20.207708>,  <37.272442, 37.263958, 20.756514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652481, 36.905491, 20.207708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280602, 36.950699, 20.067486>,  <37.057476, 36.977825, 19.983353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280602, 36.950699, 20.067486>,  <37.652481, 36.905491, 20.207708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280602, 36.950699, 20.067486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355682, 0.028250, -0.934180,
		-0.095679, -0.993191, -0.066463,
		-0.929697, 0.113021, -0.350558,
		37.001694, 36.984604, 19.962318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667458, 36.554287, 19.636028>,  <37.652481, 36.905491, 20.207708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667458, 36.554287, 19.636028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339832, 36.772404, 19.564699>,  <37.143257, 36.903275, 19.521902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339832, 36.772404, 19.564699>,  <37.667458, 36.554287, 19.636028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339832, 36.772404, 19.564699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233467, 0.032879, -0.971809,
		-0.524055, -0.837602, -0.154237,
		-0.819060, 0.545291, -0.178322,
		37.094112, 36.935989, 19.511202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240402, 36.285919, 19.058634>,  <37.667458, 36.554287, 19.636028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240402, 36.285919, 19.058634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141605, 36.672642, 19.084826>,  <37.082329, 36.904675, 19.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141605, 36.672642, 19.084826>,  <37.240402, 36.285919, 19.058634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141605, 36.672642, 19.084826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224668, 0.122864, -0.966659,
		-0.942614, -0.224044, -0.247556,
		-0.246990, 0.966803, 0.065478,
		37.067509, 36.962685, 19.104469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156002, 36.430225, 18.355480>,  <37.240402, 36.285919, 19.058634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156002, 36.430225, 18.355480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137844, 36.804508, 18.495419>,  <37.126949, 37.029079, 18.579382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137844, 36.804508, 18.495419>,  <37.156002, 36.430225, 18.355480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137844, 36.804508, 18.495419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307817, 0.346269, -0.886198,
		-0.950362, 0.067458, -0.303746,
		-0.045397, 0.935707, 0.349846,
		37.124226, 37.085220, 18.600372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794678, 36.842308, 17.926785>,  <37.156002, 36.430225, 18.355480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794678, 36.842308, 17.926785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041172, 37.094742, 18.115244>,  <37.189068, 37.246204, 18.228319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041172, 37.094742, 18.115244>,  <36.794678, 36.842308, 17.926785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041172, 37.094742, 18.115244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417604, 0.245371, -0.874872,
		-0.667726, 0.735882, -0.112337,
		0.616238, 0.631086, 0.471148,
		37.226044, 37.284069, 18.256588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740631, 37.544384, 17.544405>,  <36.794678, 36.842308, 17.926785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740631, 37.544384, 17.544405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082764, 37.552185, 17.751488>,  <37.288044, 37.556866, 17.875738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082764, 37.552185, 17.751488>,  <36.740631, 37.544384, 17.544405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082764, 37.552185, 17.751488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474365, 0.372261, -0.797746,
		-0.208280, 0.927923, 0.309157,
		0.855334, 0.019501, 0.517709,
		37.339363, 37.558037, 17.906801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136585, 38.159317, 17.708158>,  <36.740631, 37.544384, 17.544405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136585, 38.159317, 17.708158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392292, 37.859280, 17.640388>,  <37.545715, 37.679256, 17.599726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392292, 37.859280, 17.640388>,  <37.136585, 38.159317, 17.708158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392292, 37.859280, 17.640388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374027, 0.495799, -0.783765,
		0.671895, 0.437664, 0.597501,
		0.639266, -0.750089, -0.169427,
		37.584072, 37.634254, 17.589560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532871, 38.695942, 17.382149>,  <37.136585, 38.159317, 17.708158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532871, 38.695942, 17.382149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692017, 38.329250, 17.367653>,  <37.787502, 38.109234, 17.358955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692017, 38.329250, 17.367653>,  <37.532871, 38.695942, 17.382149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692017, 38.329250, 17.367653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636195, 0.304138, -0.709053,
		0.661033, 0.259047, 0.704223,
		0.397859, -0.916731, -0.036240,
		37.811375, 38.054230, 17.356781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301807, 38.416012, 17.408485>,  <37.532871, 38.695942, 17.382149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301807, 38.416012, 17.408485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152325, 38.184017, 17.118948>,  <38.062634, 38.044819, 16.945225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152325, 38.184017, 17.118948>,  <38.301807, 38.416012, 17.408485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152325, 38.184017, 17.118948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863154, 0.068238, -0.500309,
		0.339568, -0.811760, 0.475120,
		-0.373709, -0.579991, -0.723845,
		38.040211, 38.010021, 16.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454868, 37.717022, 17.442884>,  <38.301807, 38.416012, 17.408485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454868, 37.717022, 17.442884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424763, 37.860111, 17.070568>,  <38.406700, 37.945965, 16.847178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424763, 37.860111, 17.070568>,  <38.454868, 37.717022, 17.442884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424763, 37.860111, 17.070568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990591, -0.080175, -0.110907,
		-0.114300, -0.930380, -0.348321,
		-0.075259, 0.357721, -0.930791,
		38.402184, 37.967426, 16.791330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970612, 37.448849, 17.112740>,  <38.454868, 37.717022, 17.442884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970612, 37.448849, 17.112740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874176, 37.767208, 16.890596>,  <38.816315, 37.958225, 16.757311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874176, 37.767208, 16.890596>,  <38.970612, 37.448849, 17.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874176, 37.767208, 16.890596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969488, 0.171336, -0.175320,
		-0.044384, -0.580680, -0.812921,
		-0.241087, 0.795899, -0.555357,
		38.801849, 38.005978, 16.723989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577770, 37.609676, 16.658781>,  <38.970612, 37.448849, 17.112740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577770, 37.609676, 16.658781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409088, 37.778904, 16.337988>,  <39.307880, 37.880440, 16.145512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409088, 37.778904, 16.337988>,  <39.577770, 37.609676, 16.658781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409088, 37.778904, 16.337988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668244, 0.452819, 0.590258,
		0.612873, 0.784836, 0.091756,
		-0.421707, 0.423069, -0.801983,
		39.282578, 37.905823, 16.097393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914692, 38.247723, 16.861643>,  <39.577770, 37.609676, 16.658781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914692, 38.247723, 16.861643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194023, 38.480415, 17.028461>,  <40.361622, 38.620033, 17.128553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194023, 38.480415, 17.028461>,  <39.914692, 38.247723, 16.861643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194023, 38.480415, 17.028461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568125, 0.096050, 0.817317,
		0.435405, -0.807687, 0.397573,
		0.698323, 0.581736, 0.417046,
		40.403519, 38.654938, 17.153576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086258, 38.005783, 17.621792>,  <39.914692, 38.247723, 16.861643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086258, 38.005783, 17.621792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141342, 38.399387, 17.576593>,  <40.174393, 38.635548, 17.549475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141342, 38.399387, 17.576593>,  <40.086258, 38.005783, 17.621792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141342, 38.399387, 17.576593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498309, 0.167423, 0.850681,
		0.855993, -0.060840, 0.513395,
		0.137710, 0.984006, -0.112995,
		40.182655, 38.694588, 17.542694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578335, 38.300240, 18.143387>,  <40.086258, 38.005783, 17.621792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578335, 38.300240, 18.143387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283649, 38.537251, 18.013050>,  <40.106838, 38.679455, 17.934849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283649, 38.537251, 18.013050>,  <40.578335, 38.300240, 18.143387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283649, 38.537251, 18.013050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368634, 0.052053, 0.928116,
		0.566893, 0.803869, 0.180077,
		-0.736710, 0.592525, -0.325842,
		40.062637, 38.715008, 17.915297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527447, 38.945339, 18.418516>,  <40.578335, 38.300240, 18.143387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527447, 38.945339, 18.418516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155785, 38.860172, 18.297634>,  <39.932785, 38.809071, 18.225105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155785, 38.860172, 18.297634>,  <40.527447, 38.945339, 18.418516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155785, 38.860172, 18.297634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352201, 0.261465, 0.898660,
		-0.112325, 0.941436, -0.317933,
		-0.929159, -0.212918, -0.302206,
		39.877037, 38.796295, 18.206972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128075, 39.499233, 18.583906>,  <40.527447, 38.945339, 18.418516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128075, 39.499233, 18.583906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926796, 39.154827, 18.554377>,  <39.806030, 38.948185, 18.536659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926796, 39.154827, 18.554377>,  <40.128075, 39.499233, 18.583906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926796, 39.154827, 18.554377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479138, 0.206882, 0.853010,
		-0.719181, 0.464601, -0.516647,
		-0.503195, -0.861014, -0.073822,
		39.775837, 38.896523, 18.532230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418274, 39.675301, 18.671986>,  <40.128075, 39.499233, 18.583906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418274, 39.675301, 18.671986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482391, 39.290390, 18.759922>,  <39.520863, 39.059444, 18.812685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482391, 39.290390, 18.759922>,  <39.418274, 39.675301, 18.671986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482391, 39.290390, 18.759922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281358, 0.168938, 0.944615,
		-0.946120, -0.213274, -0.243664,
		0.160298, -0.962276, 0.219843,
		39.530479, 39.001709, 18.825874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865868, 39.567356, 19.149057>,  <39.418274, 39.675301, 18.671986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865868, 39.567356, 19.149057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132637, 39.272499, 19.192570>,  <39.292698, 39.095585, 19.218678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132637, 39.272499, 19.192570>,  <38.865868, 39.567356, 19.149057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132637, 39.272499, 19.192570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178093, -0.015933, 0.983885,
		-0.723531, -0.675549, -0.141906,
		0.666923, -0.737143, 0.108782,
		39.332714, 39.051357, 19.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549339, 38.948570, 19.407848>,  <38.865868, 39.567356, 19.149057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549339, 38.948570, 19.407848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934849, 38.915440, 19.509270>,  <39.166153, 38.895561, 19.570122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934849, 38.915440, 19.509270>,  <38.549339, 38.948570, 19.407848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934849, 38.915440, 19.509270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264611, -0.177084, 0.947957,
		-0.033614, -0.980705, -0.192584,
		0.963769, -0.082825, 0.253553,
		39.223980, 38.890591, 19.585335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607143, 38.387733, 19.897039>,  <38.549339, 38.948570, 19.407848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607143, 38.387733, 19.897039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969837, 38.545002, 19.958023>,  <39.187454, 38.639362, 19.994614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969837, 38.545002, 19.958023>,  <38.607143, 38.387733, 19.897039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969837, 38.545002, 19.958023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084085, -0.185703, 0.979002,
		0.413231, -0.900515, -0.135323,
		0.906736, 0.393176, 0.152458,
		39.241859, 38.662956, 20.003761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917595, 38.070858, 20.525078>,  <38.607143, 38.387733, 19.897039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917595, 38.070858, 20.525078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128174, 38.408627, 20.485453>,  <39.254520, 38.611286, 20.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128174, 38.408627, 20.485453>,  <38.917595, 38.070858, 20.525078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128174, 38.408627, 20.485453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000591, 0.116881, 0.993146,
		0.850209, -0.522778, 0.062031,
		0.526445, 0.844418, -0.099064,
		39.286106, 38.661953, 20.455734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491886, 37.963638, 21.005119>,  <38.917595, 38.070858, 20.525078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491886, 37.963638, 21.005119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473625, 38.357849, 20.939825>,  <39.462669, 38.594376, 20.900648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473625, 38.357849, 20.939825>,  <39.491886, 37.963638, 21.005119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473625, 38.357849, 20.939825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, 0.165678, 0.984580,
		0.997378, 0.035778, -0.062899,
		-0.045648, 0.985531, -0.163235,
		39.459930, 38.653507, 20.890854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098034, 38.288109, 21.308859>,  <39.491886, 37.963638, 21.005119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098034, 38.288109, 21.308859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803413, 38.555347, 21.266630>,  <39.626640, 38.715691, 21.241293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803413, 38.555347, 21.266630>,  <40.098034, 38.288109, 21.308859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803413, 38.555347, 21.266630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076067, 0.236913, 0.968548,
		0.672093, 0.705353, -0.225318,
		-0.736549, 0.668094, -0.105573,
		39.582447, 38.755775, 21.234959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319363, 38.779034, 21.712418>,  <40.098034, 38.288109, 21.308859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319363, 38.779034, 21.712418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924076, 38.807781, 21.658369>,  <39.686905, 38.825031, 21.625940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924076, 38.807781, 21.658369>,  <40.319363, 38.779034, 21.712418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924076, 38.807781, 21.658369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117376, 0.210671, 0.970485,
		0.098216, 0.974911, -0.199753,
		-0.988219, 0.071871, -0.135123,
		39.627609, 38.829342, 21.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052071, 39.405819, 21.995560>,  <40.319363, 38.779034, 21.712418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052071, 39.405819, 21.995560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739403, 39.156666, 22.008251>,  <39.551804, 39.007172, 22.015865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739403, 39.156666, 22.008251>,  <40.052071, 39.405819, 21.995560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739403, 39.156666, 22.008251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141749, 0.226963, 0.963533,
		-0.607370, 0.748668, -0.265703,
		-0.781670, -0.622885, 0.031727,
		39.504902, 38.969799, 22.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708519, 39.608059, 22.540876>,  <40.052071, 39.405819, 21.995560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708519, 39.608059, 22.540876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519135, 39.259720, 22.488014>,  <39.405502, 39.050716, 22.456297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519135, 39.259720, 22.488014>,  <39.708519, 39.608059, 22.540876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519135, 39.259720, 22.488014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256305, -0.007332, 0.966568,
		-0.842699, 0.491506, -0.219730,
		-0.473463, -0.870844, -0.132154,
		39.377094, 38.998466, 22.448368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201912, 39.740902, 22.907398>,  <39.708519, 39.608059, 22.540876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201912, 39.740902, 22.907398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197800, 39.343182, 22.864946>,  <39.195332, 39.104549, 22.839476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197800, 39.343182, 22.864946>,  <39.201912, 39.740902, 22.907398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197800, 39.343182, 22.864946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100095, -0.104577, 0.989467,
		-0.994925, 0.020796, -0.098449,
		-0.010282, -0.994299, -0.106127,
		39.194714, 39.044891, 22.833109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552441, 39.504005, 23.160114>,  <39.201912, 39.740902, 22.907398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552441, 39.504005, 23.160114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816662, 39.203720, 23.163900>,  <38.975197, 39.023548, 23.166172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816662, 39.203720, 23.163900>,  <38.552441, 39.504005, 23.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816662, 39.203720, 23.163900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176669, -0.143176, 0.973801,
		-0.729693, -0.644924, -0.227204,
		0.660558, -0.750716, 0.009463,
		39.014828, 38.978504, 23.166739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245575, 38.968681, 23.469488>,  <38.552441, 39.504005, 23.160114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245575, 38.968681, 23.469488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638222, 38.913246, 23.521971>,  <38.873810, 38.879986, 23.553461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638222, 38.913246, 23.521971>,  <38.245575, 38.968681, 23.469488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638222, 38.913246, 23.521971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146868, -0.109544, 0.983072,
		-0.121891, -0.984270, -0.127888,
		0.981617, -0.138610, 0.131205,
		38.932709, 38.871670, 23.561333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219627, 38.480503, 23.938751>,  <38.245575, 38.968681, 23.469488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219627, 38.480503, 23.938751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594578, 38.619431, 23.949368>,  <38.819546, 38.702785, 23.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594578, 38.619431, 23.949368>,  <38.219627, 38.480503, 23.938751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594578, 38.619431, 23.949368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001642, -0.080603, 0.996745,
		0.348326, -0.934277, -0.076125,
		0.937372, 0.347317, 0.026542,
		38.875790, 38.723625, 23.957331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504242, 38.157619, 24.514654>,  <38.219627, 38.480503, 23.938751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504242, 38.157619, 24.514654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774315, 38.443932, 24.443348>,  <38.936359, 38.615719, 24.400564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774315, 38.443932, 24.443348>,  <38.504242, 38.157619, 24.514654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774315, 38.443932, 24.443348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042578, 0.279085, 0.959322,
		0.736418, -0.640130, 0.218911,
		0.675186, 0.715783, -0.178267,
		38.976871, 38.658665, 24.389868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122089, 38.046555, 24.962685>,  <38.504242, 38.157619, 24.514654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122089, 38.046555, 24.962685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104301, 38.437653, 24.880665>,  <39.093628, 38.672310, 24.831453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104301, 38.437653, 24.880665>,  <39.122089, 38.046555, 24.962685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104301, 38.437653, 24.880665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105944, 0.199478, 0.974158,
		0.993377, 0.065046, 0.094715,
		-0.044471, 0.977741, -0.205048,
		39.090961, 38.730976, 24.819151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674225, 38.396088, 25.385817>,  <39.122089, 38.046555, 24.962685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674225, 38.396088, 25.385817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436653, 38.697849, 25.274010>,  <39.294109, 38.878906, 25.206924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436653, 38.697849, 25.274010>,  <39.674225, 38.396088, 25.385817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436653, 38.697849, 25.274010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009491, 0.340841, 0.940073,
		0.804463, 0.560988, -0.195275,
		-0.593927, 0.754400, -0.279519,
		39.258476, 38.924168, 25.190155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916695, 39.087902, 25.760305>,  <39.674225, 38.396088, 25.385817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916695, 39.087902, 25.760305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535866, 39.138069, 25.648714>,  <39.307369, 39.168167, 25.581760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535866, 39.138069, 25.648714>,  <39.916695, 39.087902, 25.760305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535866, 39.138069, 25.648714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255307, 0.176456, 0.950622,
		0.168448, 0.976286, -0.135981,
		-0.952073, 0.125413, -0.278977,
		39.250244, 39.175694, 25.565022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701656, 39.595341, 26.172791>,  <39.916695, 39.087902, 25.760305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701656, 39.595341, 26.172791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360844, 39.448761, 26.023258>,  <39.156357, 39.360813, 25.933538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360844, 39.448761, 26.023258>,  <39.701656, 39.595341, 26.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360844, 39.448761, 26.023258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439570, 0.113028, 0.891069,
		-0.284276, 0.923548, -0.257383,
		-0.852036, -0.366447, -0.373833,
		39.105232, 39.338825, 25.911108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112450, 40.038826, 26.352411>,  <39.701656, 39.595341, 26.172791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112450, 40.038826, 26.352411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952904, 39.679214, 26.280128>,  <38.857178, 39.463448, 26.236759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952904, 39.679214, 26.280128>,  <39.112450, 40.038826, 26.352411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952904, 39.679214, 26.280128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550669, 0.077249, 0.831142,
		-0.733260, 0.431023, -0.525879,
		-0.398865, -0.899028, -0.180707,
		38.833244, 39.409508, 26.225916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351330, 40.174843, 26.360489>,  <39.112450, 40.038826, 26.352411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351330, 40.174843, 26.360489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419479, 39.786541, 26.428152>,  <38.460369, 39.553562, 26.468750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419479, 39.786541, 26.428152>,  <38.351330, 40.174843, 26.360489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419479, 39.786541, 26.428152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339438, 0.103346, 0.934934,
		-0.925071, -0.216705, -0.311903,
		0.170371, -0.970752, 0.169160,
		38.470589, 39.495316, 26.478901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744221, 39.928234, 26.653309>,  <38.351330, 40.174843, 26.360489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744221, 39.928234, 26.653309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015629, 39.647346, 26.739559>,  <38.178474, 39.478813, 26.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015629, 39.647346, 26.739559>,  <37.744221, 39.928234, 26.653309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015629, 39.647346, 26.739559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414771, -0.123974, 0.901441,
		-0.606278, -0.701083, -0.375380,
		0.678522, -0.702221, 0.215626,
		38.219185, 39.436680, 26.804247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344028, 39.261189, 26.915936>,  <37.744221, 39.928234, 26.653309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344028, 39.261189, 26.915936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720169, 39.273273, 27.051477>,  <37.945854, 39.280525, 27.132803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720169, 39.273273, 27.051477>,  <37.344028, 39.261189, 26.915936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720169, 39.273273, 27.051477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326898, -0.195555, 0.924606,
		0.094197, -0.980227, -0.174015,
		0.940353, 0.030210, 0.338855,
		38.002274, 39.282337, 27.153133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346657, 38.761509, 27.456680>,  <37.344028, 39.261189, 26.915936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346657, 38.761509, 27.456680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649811, 39.014862, 27.519217>,  <37.831703, 39.166874, 27.556738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649811, 39.014862, 27.519217>,  <37.346657, 38.761509, 27.456680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649811, 39.014862, 27.519217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312716, 0.142377, 0.939115,
		0.572560, -0.760628, 0.305974,
		0.757881, 0.633383, 0.156342,
		37.877174, 39.204876, 27.566118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686779, 38.559200, 28.147928>,  <37.346657, 38.761509, 27.456680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686779, 38.559200, 28.147928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845352, 38.924393, 28.109356>,  <37.940495, 39.143509, 28.086212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845352, 38.924393, 28.109356>,  <37.686779, 38.559200, 28.147928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845352, 38.924393, 28.109356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200225, 0.188492, 0.961447,
		0.895963, -0.361842, 0.257527,
		0.396434, 0.912985, -0.096432,
		37.964283, 39.198288, 28.080427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404850, 38.603340, 28.423170>,  <37.686779, 38.559200, 28.147928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404850, 38.603340, 28.423170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251003, 38.972549, 28.427126>,  <38.158695, 39.194077, 28.429499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251003, 38.972549, 28.427126>,  <38.404850, 38.603340, 28.423170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251003, 38.972549, 28.427126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075501, 0.020781, 0.996929,
		0.919984, 0.384182, -0.077682,
		-0.384616, 0.923024, 0.009888,
		38.135620, 39.249458, 28.430092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696709, 38.901783, 28.944765>,  <38.404850, 38.603340, 28.423170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696709, 38.901783, 28.944765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391911, 39.155174, 28.891008>,  <38.209030, 39.307209, 28.858755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391911, 39.155174, 28.891008>,  <38.696709, 38.901783, 28.944765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391911, 39.155174, 28.891008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055136, 0.143310, 0.988141,
		0.645226, 0.760372, -0.074275,
		-0.761999, 0.633479, -0.134391,
		38.163311, 39.345219, 28.850691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790714, 39.389133, 29.427586>,  <38.696709, 38.901783, 28.944765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790714, 39.389133, 29.427586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409199, 39.443306, 29.320293>,  <38.180290, 39.475807, 29.255919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409199, 39.443306, 29.320293>,  <38.790714, 39.389133, 29.427586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409199, 39.443306, 29.320293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226122, 0.264376, 0.937536,
		0.197884, 0.954864, -0.221535,
		-0.953788, 0.135429, -0.268231,
		38.123062, 39.483936, 29.239824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648804, 39.806656, 29.950233>,  <38.790714, 39.389133, 29.427586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648804, 39.806656, 29.950233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307556, 39.670475, 29.792101>,  <38.102806, 39.588768, 29.697222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307556, 39.670475, 29.792101>,  <38.648804, 39.806656, 29.950233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307556, 39.670475, 29.792101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427005, 0.020263, 0.904022,
		-0.299762, 0.940045, -0.162659,
		-0.853117, -0.340448, -0.395330,
		38.051620, 39.568340, 29.673502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169361, 40.122017, 30.387123>,  <38.648804, 39.806656, 29.950233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169361, 40.122017, 30.387123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995075, 39.804619, 30.217176>,  <37.890503, 39.614178, 30.115208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995075, 39.804619, 30.217176>,  <38.169361, 40.122017, 30.387123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995075, 39.804619, 30.217176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362848, -0.277127, 0.889687,
		-0.823708, 0.541811, -0.167171,
		-0.435715, -0.793500, -0.424866,
		37.864361, 39.566570, 30.089716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517056, 40.213833, 30.716202>,  <38.169361, 40.122017, 30.387123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517056, 40.213833, 30.716202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559570, 39.834938, 30.595238>,  <37.585079, 39.607601, 30.522659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559570, 39.834938, 30.595238>,  <37.517056, 40.213833, 30.716202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559570, 39.834938, 30.595238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287317, -0.320416, 0.902653,
		-0.951921, -0.009051, -0.306211,
		0.106284, -0.947234, -0.302410,
		37.591457, 39.550770, 30.504515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906185, 39.938660, 30.951836>,  <37.517056, 40.213833, 30.716202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906185, 39.938660, 30.951836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171810, 39.650970, 30.870119>,  <37.331184, 39.478355, 30.821089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171810, 39.650970, 30.870119>,  <36.906185, 39.938660, 30.951836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171810, 39.650970, 30.870119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125022, -0.376206, 0.918063,
		-0.737148, -0.584112, -0.339744,
		0.664065, -0.719223, -0.204292,
		37.371029, 39.435204, 30.808832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558182, 39.377384, 31.106552>,  <36.906185, 39.938660, 30.951836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558182, 39.377384, 31.106552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949551, 39.298332, 31.130646>,  <37.184372, 39.250900, 31.145102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949551, 39.298332, 31.130646>,  <36.558182, 39.377384, 31.106552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949551, 39.298332, 31.130646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138956, -0.413724, 0.899735,
		-0.152891, -0.888694, -0.432259,
		0.978425, -0.197627, 0.060235,
		37.243076, 39.239044, 31.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683880, 38.631279, 31.242590>,  <36.558182, 39.377384, 31.106552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683880, 38.631279, 31.242590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015991, 38.802990, 31.384779>,  <37.215260, 38.906017, 31.470093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015991, 38.802990, 31.384779>,  <36.683880, 38.631279, 31.242590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015991, 38.802990, 31.384779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004297, -0.632837, 0.774273,
		0.557335, -0.644388, -0.523585,
		0.830277, 0.429279, 0.355471,
		37.265076, 38.931774, 31.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876076, 38.141254, 31.671207>,  <36.683880, 38.631279, 31.242590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876076, 38.141254, 31.671207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126865, 38.439922, 31.760107>,  <37.277340, 38.619122, 31.813448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126865, 38.439922, 31.760107>,  <36.876076, 38.141254, 31.671207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126865, 38.439922, 31.760107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083007, -0.347691, 0.933928,
		0.774606, -0.567100, -0.279972,
		0.626974, 0.746665, 0.222250,
		37.314957, 38.663921, 31.826782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414047, 37.755062, 31.908358>,  <36.876076, 38.141254, 31.671207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414047, 37.755062, 31.908358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429241, 38.135151, 32.032051>,  <37.438358, 38.363205, 32.106266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429241, 38.135151, 32.032051>,  <37.414047, 37.755062, 31.908358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429241, 38.135151, 32.032051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026580, -0.308389, 0.950889,
		0.998925, -0.044341, 0.013542,
		0.037987, 0.950226, 0.309236,
		37.440636, 38.420219, 32.124821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825153, 37.676315, 32.547211>,  <37.414047, 37.755062, 31.908358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825153, 37.676315, 32.547211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654377, 38.035122, 32.592976>,  <37.551910, 38.250404, 32.620434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654377, 38.035122, 32.592976>,  <37.825153, 37.676315, 32.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654377, 38.035122, 32.592976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056279, -0.152635, 0.986679,
		0.902526, 0.414816, 0.115649,
		-0.426942, 0.897012, 0.114412,
		37.526295, 38.304226, 32.627300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254200, 38.118736, 33.004429>,  <37.825153, 37.676315, 32.547211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254200, 38.118736, 33.004429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874886, 38.242241, 33.033897>,  <37.647297, 38.316345, 33.051579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874886, 38.242241, 33.033897>,  <38.254200, 38.118736, 33.004429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874886, 38.242241, 33.033897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001260, -0.228414, 0.973563,
		0.317424, 0.923306, 0.216212,
		-0.948283, 0.308760, 0.073668,
		37.590401, 38.334869, 33.055996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069412, 38.238174, 33.141197>,  <38.254200, 38.118736, 33.004429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069412, 38.238174, 33.141197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442455, 38.149632, 33.255211>,  <39.666283, 38.096504, 33.323620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442455, 38.149632, 33.255211>,  <39.069412, 38.238174, 33.141197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442455, 38.149632, 33.255211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325502, 0.174865, -0.929231,
		0.155849, 0.959387, 0.235132,
		0.932609, -0.221356, 0.285030,
		39.722237, 38.083225, 33.340721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510258, 38.727219, 32.736343>,  <39.069412, 38.238174, 33.141197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510258, 38.727219, 32.736343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752987, 38.440262, 32.873234>,  <39.898624, 38.268089, 32.955368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752987, 38.440262, 32.873234>,  <39.510258, 38.727219, 32.736343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752987, 38.440262, 32.873234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526537, 0.040281, -0.849197,
		0.595422, 0.695505, 0.402177,
		0.606821, -0.717392, 0.342224,
		39.935032, 38.225044, 32.975903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146439, 39.049641, 32.744781>,  <39.510258, 38.727219, 32.736343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146439, 39.049641, 32.744781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197933, 38.654385, 32.711292>,  <40.228828, 38.417233, 32.691196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197933, 38.654385, 32.711292>,  <40.146439, 39.049641, 32.744781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197933, 38.654385, 32.711292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637565, 0.147136, -0.756215,
		0.759565, 0.043968, 0.648944,
		0.128732, -0.988138, -0.083727,
		40.236553, 38.357944, 32.686172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928940, 38.961811, 32.665661>,  <40.146439, 39.049641, 32.744781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928940, 38.961811, 32.665661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739517, 38.640732, 32.520653>,  <40.625866, 38.448086, 32.433647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739517, 38.640732, 32.520653>,  <40.928940, 38.961811, 32.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739517, 38.640732, 32.520653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542864, 0.058117, -0.837807,
		0.693574, -0.593549, 0.408233,
		-0.473554, -0.802697, -0.362525,
		40.597450, 38.399921, 32.411896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467251, 38.466667, 32.387707>,  <40.928940, 38.961811, 32.665661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467251, 38.466667, 32.387707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135372, 38.341824, 32.202579>,  <40.936245, 38.266918, 32.091503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135372, 38.341824, 32.202579>,  <41.467251, 38.466667, 32.387707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135372, 38.341824, 32.202579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496190, -0.032504, -0.867605,
		0.255744, -0.949490, 0.181833,
		-0.829693, -0.312108, -0.462815,
		40.886463, 38.248192, 32.063736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751698, 37.901703, 31.864517>,  <41.467251, 38.466667, 32.387707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751698, 37.901703, 31.864517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383335, 37.961273, 31.720434>,  <41.162315, 37.997013, 31.633984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383335, 37.961273, 31.720434>,  <41.751698, 37.901703, 31.864517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383335, 37.961273, 31.720434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285701, -0.370747, -0.883698,
		-0.265148, -0.916716, 0.298877,
		-0.920908, 0.148922, -0.360209,
		41.107063, 38.005951, 31.612371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533272, 37.195267, 31.453295>,  <41.751698, 37.901703, 31.864517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533272, 37.195267, 31.453295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334900, 37.525272, 31.344919>,  <41.215878, 37.723274, 31.279894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334900, 37.525272, 31.344919>,  <41.533272, 37.195267, 31.453295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334900, 37.525272, 31.344919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310361, -0.123002, -0.942627,
		-0.811008, -0.551562, -0.195052,
		-0.495925, 0.825015, -0.270939,
		41.186123, 37.772778, 31.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063553, 36.945332, 30.845032>,  <41.533272, 37.195267, 31.453295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063553, 36.945332, 30.845032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091984, 37.344311, 30.842598>,  <41.109043, 37.583698, 30.841139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091984, 37.344311, 30.842598>,  <41.063553, 36.945332, 30.845032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091984, 37.344311, 30.842598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111677, -0.014018, -0.993645,
		-0.991199, 0.069947, -0.112389,
		0.071078, 0.997452, -0.006083,
		41.113308, 37.643547, 30.840773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894005, 37.078770, 30.145641>,  <41.063553, 36.945332, 30.845032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894005, 37.078770, 30.145641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030800, 37.439514, 30.251236>,  <41.112877, 37.655960, 30.314592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030800, 37.439514, 30.251236>,  <40.894005, 37.078770, 30.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030800, 37.439514, 30.251236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332799, 0.146481, -0.931551,
		-0.878799, 0.406435, -0.250044,
		0.341988, 0.901861, 0.263989,
		41.133396, 37.710072, 30.330433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670517, 37.603512, 29.635693>,  <40.894005, 37.078770, 30.145641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670517, 37.603512, 29.635693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010796, 37.740158, 29.795502>,  <41.214962, 37.822147, 29.891388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010796, 37.740158, 29.795502>,  <40.670517, 37.603512, 29.635693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010796, 37.740158, 29.795502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275432, 0.357672, -0.892305,
		-0.447727, 0.869118, 0.210176,
		0.850693, 0.341620, 0.399522,
		41.266003, 37.842644, 29.915358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790943, 38.336151, 29.377338>,  <40.670517, 37.603512, 29.635693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790943, 38.336151, 29.377338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150303, 38.182766, 29.462967>,  <41.365921, 38.090736, 29.514345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150303, 38.182766, 29.462967>,  <40.790943, 38.336151, 29.377338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150303, 38.182766, 29.462967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366098, 0.384681, -0.847344,
		0.242576, 0.839629, 0.485984,
		0.898404, -0.383464, 0.214072,
		41.419823, 38.067726, 29.527189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233070, 38.816971, 29.112625>,  <40.790943, 38.336151, 29.377338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233070, 38.816971, 29.112625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 38.528839, 29.158823>,  <41.670795, 38.355961, 29.186543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 38.528839, 29.158823>,  <41.233070, 38.816971, 29.112625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506649, 38.528839, 29.158823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453028, 0.295276, -0.841176,
		0.571823, 0.627642, 0.528284,
		0.683947, -0.720331, 0.115494,
		41.711834, 38.312740, 29.193472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922688, 39.115944, 28.946491>,  <41.233070, 38.816971, 29.112625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922688, 39.115944, 28.946491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910995, 38.720242, 28.889181>,  <41.903980, 38.482822, 28.854795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910995, 38.720242, 28.889181>,  <41.922688, 39.115944, 28.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910995, 38.720242, 28.889181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015367, 0.142875, -0.989622,
		0.999455, -0.031124, 0.011026,
		-0.029226, -0.989251, -0.143275,
		41.902229, 38.423466, 28.846199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465725, 38.964622, 28.542822>,  <41.922688, 39.115944, 28.946491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465725, 38.964622, 28.542822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212799, 38.660164, 28.485079>,  <42.061043, 38.477489, 28.450434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212799, 38.660164, 28.485079>,  <42.465725, 38.964622, 28.542822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212799, 38.660164, 28.485079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197980, 0.021387, -0.979973,
		0.748988, -0.648230, 0.137168,
		-0.632314, -0.761144, -0.144356,
		42.023106, 38.431820, 28.441772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811806, 38.376541, 28.243074>,  <42.465725, 38.964622, 28.542822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811806, 38.376541, 28.243074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421894, 38.348465, 28.158342>,  <42.187946, 38.331619, 28.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421894, 38.348465, 28.158342>,  <42.811806, 38.376541, 28.243074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421894, 38.348465, 28.158342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223107, -0.285937, -0.931914,
		0.004846, -0.955674, 0.294388,
		-0.974782, -0.070196, -0.211832,
		42.129459, 38.327408, 28.094793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827438, 38.058270, 27.550291>,  <42.811806, 38.376541, 28.243074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827438, 38.058270, 27.550291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440147, 38.143539, 27.602579>,  <42.207771, 38.194702, 27.633951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440147, 38.143539, 27.602579>,  <42.827438, 38.058270, 27.550291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440147, 38.143539, 27.602579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189683, -0.285459, -0.939433,
		-0.162951, -0.934381, 0.316826,
		-0.968229, 0.213178, 0.130720,
		42.149677, 38.207493, 27.641794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461277, 37.588352, 27.118956>,  <42.827438, 38.058270, 27.550291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461277, 37.588352, 27.118956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180779, 37.866661, 27.181131>,  <42.012478, 38.033646, 27.218437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180779, 37.866661, 27.181131>,  <42.461277, 37.588352, 27.118956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180779, 37.866661, 27.181131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319086, -0.111332, -0.941164,
		-0.637526, -0.709586, 0.300081,
		-0.701245, 0.695768, 0.155441,
		41.970406, 38.075390, 27.227764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866924, 37.274529, 26.895840>,  <42.461277, 37.588352, 27.118956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866924, 37.274529, 26.895840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815441, 37.670868, 26.879564>,  <41.784554, 37.908672, 26.869799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815441, 37.670868, 26.879564>,  <41.866924, 37.274529, 26.895840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815441, 37.670868, 26.879564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275378, -0.075124, -0.958396,
		-0.952681, -0.112146, 0.282527,
		-0.128705, 0.990848, -0.040687,
		41.776829, 37.968121, 26.867359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223640, 37.416531, 26.493496>,  <41.866924, 37.274529, 26.895840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223640, 37.416531, 26.493496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436562, 37.754402, 26.470959>,  <41.564316, 37.957123, 26.457436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436562, 37.754402, 26.470959>,  <41.223640, 37.416531, 26.493496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436562, 37.754402, 26.470959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157359, 0.033330, -0.986979,
		-0.831799, 0.534240, 0.150659,
		0.532305, 0.844675, -0.056344,
		41.596252, 38.007805, 26.454056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838169, 37.735985, 26.006186>,  <41.223640, 37.416531, 26.493496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838169, 37.735985, 26.006186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194389, 37.917488, 26.019041>,  <41.408119, 38.026390, 26.026754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194389, 37.917488, 26.019041>,  <40.838169, 37.735985, 26.006186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194389, 37.917488, 26.019041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041065, 0.150552, -0.987749,
		-0.453036, 0.878316, 0.152707,
		0.890546, 0.453757, 0.032137,
		41.461552, 38.053616, 26.028683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747334, 38.306564, 25.521006>,  <40.838169, 37.735985, 26.006186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747334, 38.306564, 25.521006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141903, 38.248047, 25.550863>,  <41.378643, 38.212936, 25.568777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141903, 38.248047, 25.550863>,  <40.747334, 38.306564, 25.521006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141903, 38.248047, 25.550863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098461, 0.163013, -0.981699,
		0.131445, 0.975718, 0.175203,
		0.986422, -0.146290, 0.074643,
		41.437828, 38.204159, 25.573256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084381, 38.821491, 25.006809>,  <40.747334, 38.306564, 25.521006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084381, 38.821491, 25.006809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364559, 38.548470, 25.090223>,  <41.532665, 38.384655, 25.140272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364559, 38.548470, 25.090223>,  <41.084381, 38.821491, 25.006809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364559, 38.548470, 25.090223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328563, 0.049004, -0.943210,
		0.633577, 0.729186, 0.258588,
		0.700448, -0.682558, 0.208536,
		41.574692, 38.343700, 25.152784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693531, 39.070404, 24.713238>,  <41.084381, 38.821491, 25.006809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693531, 39.070404, 24.713238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705582, 38.671967, 24.746426>,  <41.712811, 38.432903, 24.766338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705582, 38.671967, 24.746426>,  <41.693531, 39.070404, 24.713238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705582, 38.671967, 24.746426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158090, -0.077213, -0.984401,
		0.986965, 0.042773, 0.155147,
		0.030127, -0.996097, 0.082968,
		41.714619, 38.373138, 24.771317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250130, 38.863441, 24.233900>,  <41.693531, 39.070404, 24.713238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250130, 38.863441, 24.233900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020668, 38.541367, 24.294027>,  <41.882992, 38.348122, 24.330105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020668, 38.541367, 24.294027>,  <42.250130, 38.863441, 24.233900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020668, 38.541367, 24.294027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038473, -0.156829, -0.986876,
		0.818196, -0.571905, 0.058987,
		-0.573651, -0.805189, 0.150319,
		41.848572, 38.299809, 24.339123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463707, 38.346642, 23.686113>,  <42.250130, 38.863441, 24.233900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463707, 38.346642, 23.686113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134304, 38.161167, 23.816858>,  <41.936665, 38.049885, 23.895306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134304, 38.161167, 23.816858>,  <42.463707, 38.346642, 23.686113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134304, 38.161167, 23.816858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183950, -0.326788, -0.927023,
		0.536659, -0.823534, 0.183817,
		-0.823504, -0.463682, 0.326863,
		41.887253, 38.022064, 23.914917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481274, 37.605583, 23.409277>,  <42.463707, 38.346642, 23.686113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481274, 37.605583, 23.409277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094917, 37.645649, 23.504787>,  <41.863102, 37.669689, 23.562094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094917, 37.645649, 23.504787>,  <42.481274, 37.605583, 23.409277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094917, 37.645649, 23.504787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258505, -0.426177, -0.866919,
		0.014923, -0.899077, 0.437536,
		-0.965895, 0.100169, 0.238776,
		41.805149, 37.675701, 23.576420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191803, 36.892132, 23.259119>,  <42.481274, 37.605583, 23.409277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191803, 36.892132, 23.259119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878433, 37.140221, 23.243229>,  <41.690411, 37.289074, 23.233694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878433, 37.140221, 23.243229>,  <42.191803, 36.892132, 23.259119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878433, 37.140221, 23.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323743, -0.461824, -0.825778,
		-0.530510, -0.634071, 0.562594,
		-0.783421, 0.620220, -0.039726,
		41.643406, 37.326286, 23.231312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669022, 36.462536, 23.007006>,  <42.191803, 36.892132, 23.259119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669022, 36.462536, 23.007006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497833, 36.820644, 22.957481>,  <41.395123, 37.035511, 22.927767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497833, 36.820644, 22.957481>,  <41.669022, 36.462536, 23.007006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497833, 36.820644, 22.957481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445754, -0.328253, -0.832799,
		-0.786224, -0.301223, 0.539553,
		-0.427968, 0.895274, -0.123809,
		41.369442, 37.089226, 22.920340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922745, 36.333012, 22.764158>,  <41.669022, 36.462536, 23.007006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922745, 36.333012, 22.764158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048584, 36.699001, 22.663082>,  <41.124088, 36.918594, 22.602436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048584, 36.699001, 22.663082>,  <40.922745, 36.333012, 22.764158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048584, 36.699001, 22.663082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501305, -0.065905, -0.862757,
		-0.806052, 0.398100, 0.437946,
		0.314601, 0.914971, -0.252692,
		41.142963, 36.973492, 22.587275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478428, 36.432785, 22.263809>,  <40.922745, 36.333012, 22.764158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478428, 36.432785, 22.263809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741966, 36.724957, 22.191813>,  <40.900089, 36.900261, 22.148615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741966, 36.724957, 22.191813>,  <40.478428, 36.432785, 22.263809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741966, 36.724957, 22.191813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390333, 0.127391, -0.911818,
		-0.643091, 0.671000, 0.369042,
		0.658843, 0.730431, -0.179989,
		40.939621, 36.944084, 22.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141323, 36.885300, 21.810169>,  <40.478428, 36.432785, 22.263809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141323, 36.885300, 21.810169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531616, 36.949131, 21.750204>,  <40.765793, 36.987431, 21.714226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531616, 36.949131, 21.750204>,  <40.141323, 36.885300, 21.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531616, 36.949131, 21.750204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168113, 0.107384, -0.979901,
		-0.140268, 0.981328, 0.131605,
		0.975737, 0.159574, -0.149912,
		40.824337, 36.997002, 21.705231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075253, 37.434429, 21.221882>,  <40.141323, 36.885300, 21.810169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075253, 37.434429, 21.221882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445885, 37.284378, 21.232628>,  <40.668266, 37.194347, 21.239075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445885, 37.284378, 21.232628>,  <40.075253, 37.434429, 21.221882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445885, 37.284378, 21.232628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083612, 0.135833, -0.987197,
		0.366678, 0.916966, 0.157226,
		0.926583, -0.375129, 0.026863,
		40.723858, 37.171841, 21.240686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562721, 37.849930, 20.734007>,  <40.075253, 37.434429, 21.221882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562721, 37.849930, 20.734007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724079, 37.488415, 20.791191>,  <40.820892, 37.271507, 20.825502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724079, 37.488415, 20.791191>,  <40.562721, 37.849930, 20.734007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724079, 37.488415, 20.791191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074973, -0.123067, -0.989562,
		0.911949, 0.409903, 0.018116,
		0.403396, -0.903788, 0.142963,
		40.845097, 37.217278, 20.834080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959980, 37.727463, 20.109699>,  <40.562721, 37.849930, 20.734007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959980, 37.727463, 20.109699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952538, 37.360165, 20.267925>,  <40.948071, 37.139786, 20.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952538, 37.360165, 20.267925>,  <40.959980, 37.727463, 20.109699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952538, 37.360165, 20.267925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156015, -0.393455, -0.906009,
		0.987579, 0.044853, 0.150583,
		-0.018610, -0.918249, 0.395566,
		40.946953, 37.084690, 20.386595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617859, 37.271687, 19.840828>,  <40.959980, 37.727463, 20.109699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617859, 37.271687, 19.840828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325272, 37.025650, 19.958549>,  <41.149719, 36.878029, 20.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325272, 37.025650, 19.958549>,  <41.617859, 37.271687, 19.840828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325272, 37.025650, 19.958549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097480, -0.521505, -0.847662,
		0.674872, -0.591349, 0.441423,
		-0.731468, -0.615092, 0.294304,
		41.105831, 36.841122, 20.046841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883873, 36.617813, 19.771166>,  <41.617859, 37.271687, 19.840828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883873, 36.617813, 19.771166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485394, 36.584217, 19.761866>,  <41.246307, 36.564060, 19.756287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485394, 36.584217, 19.761866>,  <41.883873, 36.617813, 19.771166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485394, 36.584217, 19.761866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054345, -0.390131, -0.919154,
		0.068134, -0.916920, 0.393211,
		-0.996195, -0.083994, -0.023249,
		41.186535, 36.559017, 19.754890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697502, 36.032539, 19.389814>,  <41.883873, 36.617813, 19.771166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697502, 36.032539, 19.389814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350330, 36.230984, 19.380222>,  <41.142029, 36.350052, 19.374468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350330, 36.230984, 19.380222>,  <41.697502, 36.032539, 19.389814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350330, 36.230984, 19.380222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109049, -0.237432, -0.965264,
		-0.484571, -0.835165, 0.260175,
		-0.867928, 0.496111, -0.023979,
		41.089951, 36.379818, 19.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563789, 35.257336, 19.480581>,  <41.697502, 36.032539, 19.389814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563789, 35.257336, 19.480581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456947, 34.879784, 19.402868>,  <41.392841, 34.653252, 19.356241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456947, 34.879784, 19.402868>,  <41.563789, 35.257336, 19.480581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456947, 34.879784, 19.402868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017619, -0.196790, 0.980287,
		-0.963505, 0.265266, 0.035934,
		-0.267109, -0.943879, -0.194282,
		41.376816, 34.596619, 19.344584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973839, 35.120266, 19.797979>,  <41.563789, 35.257336, 19.480581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973839, 35.120266, 19.797979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133289, 34.757019, 19.746727>,  <41.228958, 34.539070, 19.715975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133289, 34.757019, 19.746727>,  <40.973839, 35.120266, 19.797979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133289, 34.757019, 19.746727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073344, -0.170829, 0.982567,
		-0.914178, -0.382275, -0.134702,
		0.398622, -0.908121, -0.128131,
		41.252876, 34.484581, 19.708288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694225, 34.680939, 20.312174>,  <40.973839, 35.120266, 19.797979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694225, 34.680939, 20.312174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014801, 34.464405, 20.210468>,  <41.207146, 34.334484, 20.149445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014801, 34.464405, 20.210468>,  <40.694225, 34.680939, 20.312174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014801, 34.464405, 20.210468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096426, -0.302618, 0.948222,
		-0.590249, -0.784461, -0.190332,
		0.801441, -0.541334, -0.254262,
		41.255234, 34.302006, 20.134190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646011, 34.001053, 20.754248>,  <40.694225, 34.680939, 20.312174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646011, 34.001053, 20.754248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017113, 34.072330, 20.623091>,  <41.239773, 34.115097, 20.544395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017113, 34.072330, 20.623091>,  <40.646011, 34.001053, 20.754248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017113, 34.072330, 20.623091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360572, -0.201525, 0.910701,
		0.096204, -0.963138, -0.251219,
		0.927756, 0.178195, -0.327893,
		41.295441, 34.125790, 20.524723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024918, 33.429436, 21.020531>,  <40.646011, 34.001053, 20.754248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024918, 33.429436, 21.020531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301548, 33.709507, 20.949556>,  <41.467525, 33.877548, 20.906971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301548, 33.709507, 20.949556>,  <41.024918, 33.429436, 21.020531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301548, 33.709507, 20.949556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490501, -0.274916, 0.826940,
		0.530222, -0.658922, -0.533561,
		0.691573, 0.700174, -0.177435,
		41.509022, 33.919559, 20.896326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688957, 33.226204, 21.106258>,  <41.024918, 33.429436, 21.020531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688957, 33.226204, 21.106258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755726, 33.618660, 21.145235>,  <41.795788, 33.854134, 21.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755726, 33.618660, 21.145235>,  <41.688957, 33.226204, 21.106258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755726, 33.618660, 21.145235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603015, -0.179781, 0.777208,
		0.780070, -0.070977, -0.621654,
		0.166926, 0.981143, 0.097442,
		41.805805, 33.913002, 21.174467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237644, 33.212364, 21.624632>,  <41.688957, 33.226204, 21.106258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237644, 33.212364, 21.624632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121605, 33.594845, 21.609064>,  <42.051979, 33.824333, 21.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121605, 33.594845, 21.609064>,  <42.237644, 33.212364, 21.624632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121605, 33.594845, 21.609064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263377, 0.118870, 0.957342,
		0.920040, 0.267477, -0.286327,
		-0.290103, 0.956204, -0.038917,
		42.034573, 33.881706, 21.597389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806183, 33.585201, 21.798780>,  <42.237644, 33.212364, 21.624632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806183, 33.585201, 21.798780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475025, 33.797153, 21.872353>,  <42.276333, 33.924324, 21.916496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475025, 33.797153, 21.872353>,  <42.806183, 33.585201, 21.798780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475025, 33.797153, 21.872353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275893, 0.099198, 0.956056,
		0.488346, 0.842253, -0.228314,
		-0.827890, 0.529876, 0.183929,
		42.226658, 33.956116, 21.927532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992336, 34.216618, 22.114351>,  <42.806183, 33.585201, 21.798780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992336, 34.216618, 22.114351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612122, 34.163654, 22.226740>,  <42.383991, 34.131878, 22.294172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612122, 34.163654, 22.226740>,  <42.992336, 34.216618, 22.114351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612122, 34.163654, 22.226740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265600, 0.122510, 0.956268,
		-0.161039, 0.983595, -0.081284,
		-0.950538, -0.132407, 0.280972,
		42.326962, 34.123932, 22.311031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788422, 34.845268, 22.486139>,  <42.992336, 34.216618, 22.114351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788422, 34.845268, 22.486139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505447, 34.577785, 22.577667>,  <42.335663, 34.417294, 22.632584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505447, 34.577785, 22.577667>,  <42.788422, 34.845268, 22.486139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505447, 34.577785, 22.577667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021438, 0.303298, 0.952655,
		-0.706451, 0.678849, -0.200228,
		-0.707437, -0.668712, 0.228818,
		42.293217, 34.377171, 22.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215313, 35.228226, 22.884890>,  <42.788422, 34.845268, 22.486139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215313, 35.228226, 22.884890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224197, 34.840786, 22.983944>,  <42.229527, 34.608322, 23.043377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224197, 34.840786, 22.983944>,  <42.215313, 35.228226, 22.884890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224197, 34.840786, 22.983944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044989, 0.248414, 0.967609,
		-0.998740, -0.010347, 0.049093,
		0.022207, -0.968598, 0.247636,
		42.230858, 34.550205, 23.058235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804611, 35.178047, 23.497593>,  <42.215313, 35.228226, 22.884890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804611, 35.178047, 23.497593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034508, 34.850731, 23.494270>,  <42.172447, 34.654343, 23.492277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034508, 34.850731, 23.494270>,  <41.804611, 35.178047, 23.497593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034508, 34.850731, 23.494270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182924, 0.118576, 0.975950,
		-0.797626, -0.562442, 0.217836,
		0.574745, -0.818290, -0.008305,
		42.206932, 34.605244, 23.491779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446331, 34.687408, 23.935289>,  <41.804611, 35.178047, 23.497593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446331, 34.687408, 23.935289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829475, 34.575397, 23.909733>,  <42.059364, 34.508190, 23.894398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829475, 34.575397, 23.909733>,  <41.446331, 34.687408, 23.935289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829475, 34.575397, 23.909733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007155, -0.199118, 0.979949,
		-0.287137, -0.939114, -0.188724,
		0.957863, -0.280030, -0.063894,
		42.116833, 34.491390, 23.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471352, 34.196297, 24.527901>,  <41.446331, 34.687408, 23.935289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471352, 34.196297, 24.527901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856819, 34.245831, 24.433231>,  <42.088100, 34.275551, 24.376431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856819, 34.245831, 24.433231>,  <41.471352, 34.196297, 24.527901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856819, 34.245831, 24.433231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242048, -0.030121, 0.969797,
		0.112971, -0.991845, -0.059001,
		0.963665, 0.123840, -0.236671,
		42.145920, 34.282982, 24.362230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758259, 33.860149, 25.078135>,  <41.471352, 34.196297, 24.527901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758259, 33.860149, 25.078135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033707, 34.092987, 24.905172>,  <42.198975, 34.232689, 24.801395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033707, 34.092987, 24.905172>,  <41.758259, 33.860149, 25.078135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033707, 34.092987, 24.905172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441341, 0.136700, 0.886866,
		0.575347, -0.801550, -0.162767,
		0.688617, 0.582092, -0.432407,
		42.240292, 34.267616, 24.775450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491718, 33.568439, 25.239378>,  <41.758259, 33.860149, 25.078135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491718, 33.568439, 25.239378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520184, 33.961521, 25.171003>,  <42.537262, 34.197372, 25.129978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520184, 33.961521, 25.171003>,  <42.491718, 33.568439, 25.239378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520184, 33.961521, 25.171003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563208, 0.101854, 0.820014,
		0.823246, -0.154627, -0.546221,
		0.071161, 0.982709, -0.170938,
		42.541531, 34.256332, 25.119722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044941, 33.647614, 25.611570>,  <42.491718, 33.568439, 25.239378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044941, 33.647614, 25.611570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916035, 34.021648, 25.552561>,  <42.838692, 34.246067, 25.517155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916035, 34.021648, 25.552561>,  <43.044941, 33.647614, 25.611570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916035, 34.021648, 25.552561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388689, 0.272799, 0.880058,
		0.863172, 0.226271, -0.451370,
		-0.322265, 0.935084, -0.147523,
		42.819355, 34.302174, 25.508305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502373, 33.918430, 25.991711>,  <43.044941, 33.647614, 25.611570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502373, 33.918430, 25.991711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243279, 34.218796, 25.940210>,  <43.087822, 34.399014, 25.909309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243279, 34.218796, 25.940210>,  <43.502373, 33.918430, 25.991711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243279, 34.218796, 25.940210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305650, 0.410922, 0.858907,
		0.697870, 0.516988, -0.495683,
		-0.647732, 0.750911, -0.128752,
		43.048958, 34.444069, 25.901585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926163, 34.573231, 25.889561>,  <43.502373, 33.918430, 25.991711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926163, 34.573231, 25.889561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554317, 34.638638, 26.021666>,  <43.331211, 34.677879, 26.100929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554317, 34.638638, 26.021666>,  <43.926163, 34.573231, 25.889561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554317, 34.638638, 26.021666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364882, 0.534118, 0.762614,
		-0.051701, 0.829446, -0.556189,
		-0.929617, 0.163515, 0.330264,
		43.275433, 34.687691, 26.120745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877064, 35.299088, 26.086184>,  <43.926163, 34.573231, 25.889561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877064, 35.299088, 26.086184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552166, 35.138554, 26.255505>,  <43.357227, 35.042233, 26.357098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552166, 35.138554, 26.255505>,  <43.877064, 35.299088, 26.086184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552166, 35.138554, 26.255505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099124, 0.620168, 0.778181,
		-0.574828, 0.674036, -0.463949,
		-0.812249, -0.401332, 0.423303,
		43.308491, 35.018154, 26.382496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525269, 35.915558, 26.389748>,  <43.877064, 35.299088, 26.086184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525269, 35.915558, 26.389748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370663, 35.592812, 26.568439>,  <43.277897, 35.399162, 26.675655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370663, 35.592812, 26.568439>,  <43.525269, 35.915558, 26.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370663, 35.592812, 26.568439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086822, 0.450391, 0.888600,
		-0.918187, 0.382245, -0.104030,
		-0.386516, -0.806868, 0.446731,
		43.254707, 35.350750, 26.702459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833221, 36.027760, 26.749559>,  <43.525269, 35.915558, 26.389748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833221, 36.027760, 26.749559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997181, 35.713680, 26.935225>,  <43.095558, 35.525234, 27.046623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997181, 35.713680, 26.935225>,  <42.833221, 36.027760, 26.749559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997181, 35.713680, 26.935225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162757, 0.437748, 0.884243,
		-0.897493, -0.437996, 0.051636,
		0.409899, -0.785198, 0.464163,
		43.120152, 35.478123, 27.074474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326263, 35.719315, 27.198460>,  <42.833221, 36.027760, 26.749559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326263, 35.719315, 27.198460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688366, 35.600033, 27.319511>,  <42.905628, 35.528465, 27.392141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688366, 35.600033, 27.319511>,  <42.326263, 35.719315, 27.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688366, 35.600033, 27.319511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207250, 0.311859, 0.927249,
		-0.370884, -0.902120, 0.220511,
		0.905258, -0.298201, 0.302628,
		42.959942, 35.510574, 27.410299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206646, 35.514969, 27.893728>,  <42.326263, 35.719315, 27.198460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206646, 35.514969, 27.893728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606247, 35.531811, 27.899757>,  <42.846008, 35.541916, 27.903374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606247, 35.531811, 27.899757>,  <42.206646, 35.514969, 27.893728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606247, 35.531811, 27.899757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026780, 0.293299, 0.955646,
		0.035819, -0.955093, 0.294133,
		0.998999, 0.042107, 0.015071,
		42.905949, 35.544441, 27.904280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361511, 35.051094, 28.390987>,  <42.206646, 35.514969, 27.893728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361511, 35.051094, 28.390987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643600, 35.330654, 28.343338>,  <42.812855, 35.498390, 28.314749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643600, 35.330654, 28.343338>,  <42.361511, 35.051094, 28.390987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643600, 35.330654, 28.343338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107085, 0.061091, 0.992371,
		0.700851, -0.712601, -0.031759,
		0.705224, 0.698905, -0.119125,
		42.855167, 35.540325, 28.307600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508804, 35.075645, 28.992661>,  <42.361511, 35.051094, 28.390987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508804, 35.075645, 28.992661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738380, 35.364780, 28.838730>,  <42.876125, 35.538261, 28.746372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738380, 35.364780, 28.838730>,  <42.508804, 35.075645, 28.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738380, 35.364780, 28.838730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259096, 0.285500, 0.922692,
		0.776827, -0.629279, -0.023425,
		0.573942, 0.722840, -0.384827,
		42.910564, 35.581631, 28.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162155, 34.982910, 29.322899>,  <42.508804, 35.075645, 28.992661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162155, 34.982910, 29.322899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102013, 35.361073, 29.207249>,  <43.065926, 35.587971, 29.137857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102013, 35.361073, 29.207249>,  <43.162155, 34.982910, 29.322899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102013, 35.361073, 29.207249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105941, 0.306176, 0.946062,
		0.982939, 0.111620, -0.146194,
		-0.150360, 0.945409, -0.289127,
		43.056904, 35.644695, 29.120510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736015, 35.382935, 29.594242>,  <43.162155, 34.982910, 29.322899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736015, 35.382935, 29.594242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417492, 35.617352, 29.534311>,  <43.226379, 35.758003, 29.498352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417492, 35.617352, 29.534311>,  <43.736015, 35.382935, 29.594242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417492, 35.617352, 29.534311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099765, 0.371542, 0.923040,
		0.596611, 0.720074, -0.354328,
		-0.796305, 0.586046, -0.149828,
		43.178600, 35.793167, 29.489363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934357, 36.122734, 29.923777>,  <43.736015, 35.382935, 29.594242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934357, 36.122734, 29.923777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540501, 36.073803, 29.873949>,  <43.304188, 36.044445, 29.844053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540501, 36.073803, 29.873949>,  <43.934357, 36.122734, 29.923777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540501, 36.073803, 29.873949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155982, 0.295858, 0.942410,
		-0.078431, 0.947366, -0.310396,
		-0.984641, -0.122330, -0.124567,
		43.245110, 36.037106, 29.836578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746181, 36.686539, 30.257647>,  <43.934357, 36.122734, 29.923777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746181, 36.686539, 30.257647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430569, 36.442581, 30.228085>,  <43.241203, 36.296207, 30.210348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430569, 36.442581, 30.228085>,  <43.746181, 36.686539, 30.257647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430569, 36.442581, 30.228085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271824, 0.238696, 0.932275,
		-0.550950, 0.755679, -0.354122,
		-0.789028, -0.609896, -0.073903,
		43.193859, 36.259613, 30.205914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263683, 37.025269, 30.643579>,  <43.746181, 36.686539, 30.257647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263683, 37.025269, 30.643579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118549, 36.655098, 30.599867>,  <43.031471, 36.432995, 30.573639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118549, 36.655098, 30.599867>,  <43.263683, 37.025269, 30.643579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118549, 36.655098, 30.599867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317076, 0.012329, 0.948320,
		-0.876251, 0.378731, -0.297903,
		-0.362831, -0.925425, -0.109283,
		43.009701, 36.377472, 30.567081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626602, 37.022026, 30.919706>,  <43.263683, 37.025269, 30.643579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626602, 37.022026, 30.919706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721157, 36.633587, 30.932875>,  <42.777889, 36.400524, 30.940775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721157, 36.633587, 30.932875>,  <42.626602, 37.022026, 30.919706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721157, 36.633587, 30.932875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627770, -0.126777, 0.768006,
		-0.741638, -0.202212, -0.639596,
		0.236386, -0.971101, 0.032920,
		42.792072, 36.342255, 30.942751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969082, 36.588989, 31.101501>,  <42.626602, 37.022026, 30.919706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969082, 36.588989, 31.101501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286350, 36.354778, 31.168470>,  <42.476711, 36.214252, 31.208652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286350, 36.354778, 31.168470>,  <41.969082, 36.588989, 31.101501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286350, 36.354778, 31.168470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510257, -0.488901, 0.707541,
		-0.332432, -0.646633, -0.686553,
		0.793175, -0.585527, 0.167422,
		42.524303, 36.179119, 31.218697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691696, 35.949368, 31.267340>,  <41.969082, 36.588989, 31.101501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691696, 35.949368, 31.267340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067867, 35.926651, 31.401432>,  <42.293568, 35.913021, 31.481888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067867, 35.926651, 31.401432>,  <41.691696, 35.949368, 31.267340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067867, 35.926651, 31.401432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302364, -0.590610, 0.748169,
		0.155502, -0.804957, -0.572594,
		0.940423, -0.056790, 0.335231,
		42.349995, 35.909615, 31.502001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772697, 35.304581, 31.440552>,  <41.691696, 35.949368, 31.267340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772697, 35.304581, 31.440552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053139, 35.506157, 31.642345>,  <42.221401, 35.627102, 31.763422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053139, 35.506157, 31.642345>,  <41.772697, 35.304581, 31.440552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053139, 35.506157, 31.642345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237156, -0.502416, 0.831465,
		0.672471, -0.702581, -0.232730,
		0.701099, 0.503943, 0.504482,
		42.263470, 35.657341, 31.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408134, 34.946213, 31.667059>,  <41.772697, 35.304581, 31.440552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408134, 34.946213, 31.667059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363670, 35.248451, 31.925274>,  <42.336990, 35.429794, 32.080204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363670, 35.248451, 31.925274>,  <42.408134, 34.946213, 31.667059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363670, 35.248451, 31.925274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040774, -0.645551, 0.762628,
		0.992965, 0.111099, 0.040954,
		-0.111164, 0.755593, 0.645539,
		42.330322, 35.475128, 32.118935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580849, 34.634930, 32.290440>,  <42.408134, 34.946213, 31.667059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580849, 34.634930, 32.290440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472691, 34.993050, 32.432045>,  <42.407795, 35.207920, 32.517010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472691, 34.993050, 32.432045>,  <42.580849, 34.634930, 32.290440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472691, 34.993050, 32.432045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118719, -0.333898, 0.935103,
		0.955401, 0.294877, -0.016004,
		-0.270397, 0.895298, 0.354014,
		42.391571, 35.261639, 32.538250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122002, 35.098701, 32.703072>,  <42.580849, 34.634930, 32.290440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122002, 35.098701, 32.703072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744576, 35.141186, 32.828545>,  <42.518120, 35.166676, 32.903828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744576, 35.141186, 32.828545>,  <43.122002, 35.098701, 32.703072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744576, 35.141186, 32.828545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260689, -0.345952, 0.901309,
		0.204250, 0.932221, 0.298741,
		-0.943569, 0.106213, 0.313681,
		42.461506, 35.173050, 32.922649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194462, 34.946064, 33.417500>,  <43.122002, 35.098701, 32.703072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194462, 34.946064, 33.417500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796505, 34.976395, 33.390816>,  <42.557732, 34.994591, 33.374805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796505, 34.976395, 33.390816>,  <43.194462, 34.946064, 33.417500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796505, 34.976395, 33.390816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093370, -0.438901, 0.893671,
		0.038483, 0.895331, 0.443737,
		-0.994888, 0.075822, -0.066707,
		42.498039, 34.999142, 33.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989838, 35.176945, 34.026531>,  <43.194462, 34.946064, 33.417500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989838, 35.176945, 34.026531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636871, 35.047276, 33.890141>,  <42.425091, 34.969475, 33.808308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636871, 35.047276, 33.890141>,  <42.989838, 35.176945, 34.026531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636871, 35.047276, 33.890141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196873, -0.403814, 0.893406,
		-0.427306, 0.855481, 0.292510,
		-0.882412, -0.324170, -0.340973,
		42.372147, 34.950024, 33.787849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569862, 35.340858, 34.549034>,  <42.989838, 35.176945, 34.026531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569862, 35.340858, 34.549034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334564, 35.083862, 34.352600>,  <42.193386, 34.929665, 34.234741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334564, 35.083862, 34.352600>,  <42.569862, 35.340858, 34.549034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334564, 35.083862, 34.352600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223701, -0.454287, 0.862312,
		-0.777124, 0.617110, 0.123507,
		-0.588248, -0.642495, -0.491085,
		42.158089, 34.891113, 34.205276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916943, 35.356918, 34.823360>,  <42.569862, 35.340858, 34.549034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916943, 35.356918, 34.823360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015789, 35.003262, 34.664757>,  <42.075096, 34.791065, 34.569595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015789, 35.003262, 34.664757>,  <41.916943, 35.356918, 34.823360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015789, 35.003262, 34.664757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246430, -0.453090, 0.856727,
		-0.937127, -0.113996, -0.329845,
		0.247113, -0.884146, -0.396511,
		42.089924, 34.738018, 34.545803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397739, 34.925247, 34.892662>,  <41.916943, 35.356918, 34.823360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397739, 34.925247, 34.892662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698986, 34.666649, 34.843895>,  <41.879734, 34.511490, 34.814636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698986, 34.666649, 34.843895>,  <41.397739, 34.925247, 34.892662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698986, 34.666649, 34.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344910, -0.545799, 0.763636,
		-0.560243, -0.533042, -0.634029,
		0.753103, -0.646506, -0.121928,
		41.924919, 34.472698, 34.807320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078445, 34.306583, 34.965065>,  <41.397739, 34.925247, 34.892662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078445, 34.306583, 34.965065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452366, 34.174618, 35.017689>,  <41.676720, 34.095440, 35.049263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452366, 34.174618, 35.017689>,  <41.078445, 34.306583, 34.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452366, 34.174618, 35.017689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337893, -0.711928, 0.615619,
		-0.109442, -0.619933, -0.776985,
		0.934800, -0.329912, 0.131556,
		41.732807, 34.075645, 35.057156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109573, 33.540966, 34.865509>,  <41.078445, 34.306583, 34.965065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109573, 33.540966, 34.865509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428745, 33.625580, 35.091270>,  <41.620251, 33.676346, 35.226727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428745, 33.625580, 35.091270>,  <41.109573, 33.540966, 34.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428745, 33.625580, 35.091270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393659, -0.526206, 0.753751,
		0.456437, -0.823627, -0.336606,
		0.797933, 0.211532, 0.564408,
		41.668125, 33.689041, 35.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407383, 32.955307, 35.095348>,  <41.109573, 33.540966, 34.865509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407383, 32.955307, 35.095348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563072, 33.224216, 35.347240>,  <41.656487, 33.385563, 35.498375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563072, 33.224216, 35.347240>,  <41.407383, 32.955307, 35.095348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563072, 33.224216, 35.347240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367067, -0.513820, 0.775403,
		0.844849, -0.532956, 0.046779,
		0.389220, 0.672270, 0.629731,
		41.679840, 33.425896, 35.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647430, 32.534706, 35.682819>,  <41.407383, 32.955307, 35.095348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647430, 32.534706, 35.682819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674374, 32.906784, 35.827152>,  <41.690540, 33.130032, 35.913754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674374, 32.906784, 35.827152>,  <41.647430, 32.534706, 35.682819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674374, 32.906784, 35.827152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366745, -0.313254, 0.875997,
		0.927880, -0.191339, 0.320044,
		0.067357, 0.930194, 0.360834,
		41.694580, 33.185841, 35.935402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098415, 32.447094, 36.289703>,  <41.647430, 32.534706, 35.682819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098415, 32.447094, 36.289703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863674, 32.770584, 36.305527>,  <41.722828, 32.964680, 36.315022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863674, 32.770584, 36.305527>,  <42.098415, 32.447094, 36.289703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863674, 32.770584, 36.305527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390304, -0.325348, 0.861285,
		0.709413, 0.490010, 0.506581,
		-0.586853, 0.808727, 0.039554,
		41.687618, 33.013203, 36.317394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033909, 32.512249, 37.037056>,  <42.098415, 32.447094, 36.289703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033909, 32.512249, 37.037056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726704, 32.715607, 36.881271>,  <41.542381, 32.837624, 36.787800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726704, 32.715607, 36.881271>,  <42.033909, 32.512249, 37.037056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726704, 32.715607, 36.881271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565310, -0.252391, 0.785317,
		0.300957, 0.823304, 0.481243,
		-0.768017, 0.508398, -0.389463,
		41.496300, 32.868126, 36.764431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838139, 33.116943, 37.465218>,  <42.033909, 32.512249, 37.037056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838139, 33.116943, 37.465218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529167, 32.982327, 37.249779>,  <41.343784, 32.901554, 37.120514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529167, 32.982327, 37.249779>,  <41.838139, 33.116943, 37.465218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529167, 32.982327, 37.249779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577623, 0.019735, 0.816065,
		-0.264015, 0.941460, -0.209641,
		-0.772430, -0.336546, -0.538599,
		41.297440, 32.881363, 37.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197334, 33.477879, 37.656525>,  <41.838139, 33.116943, 37.465218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197334, 33.477879, 37.656525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073456, 33.122261, 37.521652>,  <40.999130, 32.908890, 37.440731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073456, 33.122261, 37.521652>,  <41.197334, 33.477879, 37.656525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073456, 33.122261, 37.521652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358107, -0.219444, 0.907526,
		-0.880823, 0.401800, -0.250414,
		-0.309692, -0.889045, -0.337179,
		40.980549, 32.855549, 37.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517796, 33.388062, 37.745548>,  <41.197334, 33.477879, 37.656525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517796, 33.388062, 37.745548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669289, 33.018284, 37.727852>,  <40.760185, 32.796417, 37.717236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669289, 33.018284, 37.727852>,  <40.517796, 33.388062, 37.745548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669289, 33.018284, 37.727852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452749, -0.226754, 0.862323,
		-0.807203, -0.306564, -0.504422,
		0.378737, -0.924446, -0.044239,
		40.782909, 32.740952, 37.714581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970390, 32.932480, 37.993633>,  <40.517796, 33.388062, 37.745548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970390, 32.932480, 37.993633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310711, 32.725559, 38.030567>,  <40.514904, 32.601406, 38.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310711, 32.725559, 38.030567>,  <39.970390, 32.932480, 37.993633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310711, 32.725559, 38.030567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275802, -0.290040, 0.916411,
		-0.447284, -0.805153, -0.389442,
		0.850805, -0.517305, 0.092332,
		40.565952, 32.570370, 38.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814159, 32.357723, 38.240768>,  <39.970390, 32.932480, 37.993633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814159, 32.357723, 38.240768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190018, 32.404705, 38.369316>,  <40.415531, 32.432892, 38.446445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190018, 32.404705, 38.369316>,  <39.814159, 32.357723, 38.240768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190018, 32.404705, 38.369316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243280, -0.431118, 0.868880,
		0.240598, -0.894619, -0.376524,
		0.939642, 0.117450, 0.321368,
		40.471909, 32.439941, 38.465725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930111, 31.686636, 38.290859>,  <39.814159, 32.357723, 38.240768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930111, 31.686636, 38.290859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282425, 31.861904, 38.362671>,  <40.493813, 31.967066, 38.405758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282425, 31.861904, 38.362671>,  <39.930111, 31.686636, 38.290859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282425, 31.861904, 38.362671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012423, -0.357630, 0.933781,
		0.473362, -0.824686, -0.309551,
		0.880781, 0.438170, 0.179533,
		40.546658, 31.993355, 38.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260902, 31.206835, 38.670750>,  <39.930111, 31.686636, 38.290859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260902, 31.206835, 38.670750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481800, 31.527765, 38.761349>,  <40.614338, 31.720324, 38.815708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481800, 31.527765, 38.761349>,  <40.260902, 31.206835, 38.670750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481800, 31.527765, 38.761349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093942, -0.329843, 0.939350,
		0.828374, -0.497470, -0.257525,
		0.552241, 0.802326, 0.226500,
		40.647472, 31.768463, 38.829300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767235, 30.859831, 38.919258>,  <40.260902, 31.206835, 38.670750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767235, 30.859831, 38.919258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776077, 31.235483, 39.056396>,  <40.781384, 31.460875, 39.138680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776077, 31.235483, 39.056396>,  <40.767235, 30.859831, 38.919258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776077, 31.235483, 39.056396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172049, -0.341383, 0.924044,
		0.984840, 0.038558, -0.169123,
		0.022106, 0.939133, 0.342842,
		40.782711, 31.517223, 39.159248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267773, 30.921669, 39.411190>,  <40.767235, 30.859831, 38.919258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267773, 30.921669, 39.411190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010147, 31.213715, 39.502502>,  <40.855572, 31.388943, 39.557289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010147, 31.213715, 39.502502>,  <41.267773, 30.921669, 39.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010147, 31.213715, 39.502502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025417, -0.277831, 0.960294,
		0.764550, 0.624292, 0.160384,
		-0.644063, 0.730116, 0.228283,
		40.816929, 31.432749, 39.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538971, 31.167400, 39.987640>,  <41.267773, 30.921669, 39.411190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538971, 31.167400, 39.987640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159019, 31.290133, 40.011604>,  <40.931049, 31.363771, 40.025982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159019, 31.290133, 40.011604>,  <41.538971, 31.167400, 39.987640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159019, 31.290133, 40.011604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021259, -0.254588, 0.966816,
		0.311901, 0.917082, 0.248350,
		-0.949877, 0.306831, 0.059910,
		40.874058, 31.382181, 40.029579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530643, 31.593430, 40.482582>,  <41.538971, 31.167400, 39.987640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530643, 31.593430, 40.482582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143257, 31.497736, 40.454750>,  <40.910824, 31.440319, 40.438053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143257, 31.497736, 40.454750>,  <41.530643, 31.593430, 40.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143257, 31.497736, 40.454750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060057, -0.046869, 0.997094,
		-0.241802, 0.969829, 0.031023,
		-0.968465, -0.239236, -0.069578,
		40.852718, 31.425964, 40.433876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247128, 31.831358, 41.023106>,  <41.530643, 31.593430, 40.482582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247128, 31.831358, 41.023106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988823, 31.554108, 40.895000>,  <40.833839, 31.387758, 40.818138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988823, 31.554108, 40.895000>,  <41.247128, 31.831358, 41.023106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988823, 31.554108, 40.895000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103336, -0.336253, 0.936085,
		-0.756514, 0.637583, 0.145515,
		-0.645762, -0.693125, -0.320265,
		40.795094, 31.346170, 40.798920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793804, 31.683195, 41.521126>,  <41.247128, 31.831358, 41.023106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793804, 31.683195, 41.521126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786922, 31.330006, 41.333485>,  <40.782791, 31.118092, 41.220898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786922, 31.330006, 41.333485>,  <40.793804, 31.683195, 41.521126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786922, 31.330006, 41.333485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232717, -0.459828, 0.856972,
		-0.972392, -0.094422, 0.213397,
		-0.017209, -0.882974, -0.469107,
		40.781761, 31.065113, 41.192753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342682, 31.297146, 41.924595>,  <40.793804, 31.683195, 41.521126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342682, 31.297146, 41.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 31.040527, 41.720119>,  <40.708717, 30.886557, 41.597435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 31.040527, 41.720119>,  <40.342682, 31.297146, 41.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571453, 31.040527, 41.720119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190080, -0.502564, 0.843386,
		-0.797978, -0.579523, -0.165484,
		0.571928, -0.641547, -0.511191,
		40.743031, 30.848063, 41.566761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084385, 30.496861, 41.940342>,  <40.342682, 31.297146, 41.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084385, 30.496861, 41.940342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478668, 30.563143, 41.928215>,  <40.715237, 30.602913, 41.920940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478668, 30.563143, 41.928215>,  <40.084385, 30.496861, 41.940342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478668, 30.563143, 41.928215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112624, -0.514416, 0.850113,
		0.125272, -0.841378, -0.525727,
		0.985709, 0.165705, -0.030317,
		40.774380, 30.612854, 41.919121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670975, 30.073324, 41.952446>,  <40.084385, 30.496861, 41.940342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670975, 30.073324, 41.952446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950371, 30.319082, 42.099213>,  <41.118008, 30.466537, 42.187275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950371, 30.319082, 42.099213>,  <40.670975, 30.073324, 41.952446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950371, 30.319082, 42.099213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359768, -0.141742, 0.922213,
		0.618613, -0.776161, 0.122035,
		0.698488, 0.614397, 0.366921,
		41.159916, 30.503401, 42.209290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418900, 30.238237, 41.141510>,  <40.670975, 30.073324, 41.952446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418900, 30.238237, 41.141510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407104, 30.637995, 41.148903>,  <40.400028, 30.877850, 41.153339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407104, 30.637995, 41.148903>,  <40.418900, 30.238237, 41.141510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407104, 30.637995, 41.148903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177517, 0.012958, -0.984033,
		-0.983676, -0.032296, 0.177027,
		-0.029486, 0.999394, 0.018480,
		40.398258, 30.937813, 41.154446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871658, 30.470463, 40.623444>,  <40.418900, 30.238237, 41.141510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871658, 30.470463, 40.623444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087967, 30.794008, 40.715797>,  <40.217754, 30.988134, 40.771210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087967, 30.794008, 40.715797>,  <39.871658, 30.470463, 40.623444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087967, 30.794008, 40.715797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144455, 0.359700, -0.921818,
		-0.828671, 0.465144, 0.311360,
		0.540774, 0.808862, 0.230881,
		40.250198, 31.036667, 40.785061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609833, 31.145256, 40.330128>,  <39.871658, 30.470463, 40.623444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609833, 31.145256, 40.330128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999493, 31.225475, 40.371716>,  <40.233288, 31.273607, 40.396667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999493, 31.225475, 40.371716>,  <39.609833, 31.145256, 40.330128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999493, 31.225475, 40.371716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046763, 0.629309, -0.775747,
		-0.221001, 0.750834, 0.622420,
		0.974152, 0.200547, 0.103967,
		40.291737, 31.285639, 40.402905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732979, 31.867336, 40.194355>,  <39.609833, 31.145256, 40.330128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732979, 31.867336, 40.194355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101128, 31.717337, 40.149994>,  <40.322018, 31.627337, 40.123379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101128, 31.717337, 40.149994>,  <39.732979, 31.867336, 40.194355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101128, 31.717337, 40.149994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120118, 0.540984, -0.832411,
		0.372148, 0.752804, 0.542949,
		0.920368, -0.374997, -0.110901,
		40.377239, 31.604837, 40.116722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256439, 32.447273, 40.119293>,  <39.732979, 31.867336, 40.194355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256439, 32.447273, 40.119293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414127, 32.127850, 39.937347>,  <40.508739, 31.936197, 39.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414127, 32.127850, 39.937347>,  <40.256439, 32.447273, 40.119293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414127, 32.127850, 39.937347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315233, 0.582417, -0.749279,
		0.863261, 0.151993, 0.481331,
		0.394220, -0.798555, -0.454864,
		40.532394, 31.888283, 39.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958824, 32.660038, 39.939255>,  <40.256439, 32.447273, 40.119293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958824, 32.660038, 39.939255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897034, 32.361931, 39.679806>,  <40.859959, 32.183067, 39.524136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897034, 32.361931, 39.679806>,  <40.958824, 32.660038, 39.939255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897034, 32.361931, 39.679806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174091, 0.625700, -0.760390,
		0.972538, -0.230382, 0.033088,
		-0.154477, -0.745268, -0.648624,
		40.850689, 32.138351, 39.485218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258568, 32.857754, 39.233047>,  <40.958824, 32.660038, 39.939255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258568, 32.857754, 39.233047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078751, 32.528343, 39.094650>,  <40.970860, 32.330696, 39.011612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078751, 32.528343, 39.094650>,  <41.258568, 32.857754, 39.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078751, 32.528343, 39.094650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277656, 0.239320, -0.930394,
		0.849009, -0.514320, 0.121073,
		-0.449545, -0.823529, -0.345989,
		40.943886, 32.281284, 38.990852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725952, 32.501492, 38.730099>,  <41.258568, 32.857754, 39.233047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725952, 32.501492, 38.730099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369713, 32.351601, 38.627014>,  <41.155972, 32.261665, 38.565163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369713, 32.351601, 38.627014>,  <41.725952, 32.501492, 38.730099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369713, 32.351601, 38.627014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214589, 0.153376, -0.964587,
		0.400986, -0.914359, -0.056183,
		-0.890596, -0.374730, -0.257713,
		41.102535, 32.239182, 38.549702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729713, 31.958864, 38.236065>,  <41.725952, 32.501492, 38.730099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729713, 31.958864, 38.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362171, 32.101257, 38.167976>,  <41.141644, 32.186695, 38.127125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362171, 32.101257, 38.167976>,  <41.729713, 31.958864, 38.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362171, 32.101257, 38.167976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257832, 0.215109, -0.941940,
		-0.298700, -0.909397, -0.289439,
		-0.918858, 0.355984, -0.170219,
		41.086514, 32.208054, 38.116909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501083, 31.705505, 37.577366>,  <41.729713, 31.958864, 38.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501083, 31.705505, 37.577366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306911, 32.045193, 37.660496>,  <41.190411, 32.249004, 37.710373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306911, 32.045193, 37.660496>,  <41.501083, 31.705505, 37.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306911, 32.045193, 37.660496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272537, 0.372853, -0.886963,
		-0.830713, -0.373915, -0.412436,
		-0.485426, 0.849216, 0.207828,
		41.161285, 32.299957, 37.722843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810680, 31.631218, 37.553288>,  <41.501083, 31.705505, 37.577366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810680, 31.631218, 37.553288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703529, 32.016590, 37.550667>,  <40.639240, 32.247814, 37.549095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703529, 32.016590, 37.550667>,  <40.810680, 31.631218, 37.553288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703529, 32.016590, 37.550667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358059, 0.093235, -0.929032,
		-0.894447, -0.251215, -0.369941,
		-0.267878, 0.963430, -0.006556,
		40.623165, 32.305618, 37.548698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386848, 31.847963, 36.862595>,  <40.810680, 31.631218, 37.553288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386848, 31.847963, 36.862595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567997, 32.159515, 37.036144>,  <40.676685, 32.346447, 37.140274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567997, 32.159515, 37.036144>,  <40.386848, 31.847963, 36.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567997, 32.159515, 37.036144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480042, 0.197064, -0.854825,
		-0.751309, 0.595406, -0.284651,
		0.452874, 0.778882, 0.433876,
		40.703857, 32.393181, 37.166306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189392, 32.471054, 36.400154>,  <40.386848, 31.847963, 36.862595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189392, 32.471054, 36.400154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520245, 32.547298, 36.611633>,  <40.718754, 32.593044, 36.738522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520245, 32.547298, 36.611633>,  <40.189392, 32.471054, 36.400154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520245, 32.547298, 36.611633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511405, 0.134871, -0.848690,
		-0.233078, 0.972356, 0.014075,
		0.827128, 0.190614, 0.528703,
		40.768383, 32.604481, 36.770245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510822, 32.991943, 35.996254>,  <40.189392, 32.471054, 36.400154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510822, 32.991943, 35.996254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804127, 32.891483, 36.249001>,  <40.980110, 32.831207, 36.400646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804127, 32.891483, 36.249001>,  <40.510822, 32.991943, 35.996254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804127, 32.891483, 36.249001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679884, 0.283487, -0.676309,
		-0.009272, 0.925505, 0.378621,
		0.733261, -0.251147, 0.631864,
		41.024105, 32.816139, 36.438560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440231, 33.579113, 36.458324>,  <40.510822, 32.991943, 35.996254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440231, 33.579113, 36.458324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780689, 33.385410, 36.539364>,  <40.984962, 33.269188, 36.587986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780689, 33.385410, 36.539364>,  <40.440231, 33.579113, 36.458324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780689, 33.385410, 36.539364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436234, 0.437847, -0.786123,
		0.291982, 0.757484, 0.583922,
		0.851144, -0.484260, 0.202596,
		41.036034, 33.240131, 36.600143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947453, 34.035145, 36.452053>,  <40.440231, 33.579113, 36.458324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947453, 34.035145, 36.452053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178730, 33.709793, 36.426449>,  <41.317497, 33.514580, 36.411087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178730, 33.709793, 36.426449>,  <40.947453, 34.035145, 36.452053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178730, 33.709793, 36.426449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570026, 0.458843, -0.681567,
		0.583746, 0.357592, 0.728950,
		0.578197, -0.813383, -0.064011,
		41.352188, 33.465778, 36.407246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612312, 34.185516, 36.682320>,  <40.947453, 34.035145, 36.452053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612312, 34.185516, 36.682320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620770, 33.887833, 36.415272>,  <41.625843, 33.709225, 36.255043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620770, 33.887833, 36.415272>,  <41.612312, 34.185516, 36.682320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620770, 33.887833, 36.415272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637926, 0.524210, -0.564140,
		0.769807, -0.413960, 0.485833,
		0.021147, -0.744205, -0.667617,
		41.627113, 33.664570, 36.214985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238846, 34.216362, 36.363483>,  <41.612312, 34.185516, 36.682320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238846, 34.216362, 36.363483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042477, 33.983303, 36.104404>,  <41.924656, 33.843468, 35.948956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042477, 33.983303, 36.104404>,  <42.238846, 34.216362, 36.363483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042477, 33.983303, 36.104404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504592, 0.415900, -0.756581,
		0.710198, -0.698249, 0.089823,
		-0.490924, -0.582645, -0.647702,
		41.895199, 33.808510, 35.910095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727230, 34.073803, 35.828339>,  <42.238846, 34.216362, 36.363483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727230, 34.073803, 35.828339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398659, 33.949608, 35.636982>,  <42.201515, 33.875092, 35.522167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398659, 33.949608, 35.636982>,  <42.727230, 34.073803, 35.828339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398659, 33.949608, 35.636982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358915, 0.370442, -0.856711,
		0.443214, -0.875426, -0.192851,
		-0.821427, -0.310489, -0.478388,
		42.152229, 33.856461, 35.493465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953571, 33.720047, 35.285999>,  <42.727230, 34.073803, 35.828339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953571, 33.720047, 35.285999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577812, 33.833847, 35.209476>,  <42.352356, 33.902126, 35.163563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577812, 33.833847, 35.209476>,  <42.953571, 33.720047, 35.285999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577812, 33.833847, 35.209476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282413, 0.325803, -0.902272,
		-0.194365, -0.901618, -0.386404,
		-0.939396, 0.284496, -0.191304,
		42.295994, 33.919197, 35.152084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763111, 33.494698, 34.532238>,  <42.953571, 33.720047, 35.285999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763111, 33.494698, 34.532238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513870, 33.794338, 34.622211>,  <42.364326, 33.974121, 34.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513870, 33.794338, 34.622211>,  <42.763111, 33.494698, 34.532238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513870, 33.794338, 34.622211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172674, 0.412239, -0.894563,
		-0.762842, -0.518564, -0.386217,
		-0.623102, 0.749099, 0.224931,
		42.326939, 34.019070, 34.689690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292534, 33.541843, 33.951172>,  <42.763111, 33.494698, 34.532238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292534, 33.541843, 33.951172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232891, 33.896255, 34.126770>,  <42.197105, 34.108902, 34.232128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232891, 33.896255, 34.126770>,  <42.292534, 33.541843, 33.951172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232891, 33.896255, 34.126770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215358, 0.404203, -0.888955,
		-0.965085, -0.227090, 0.130545,
		-0.149106, 0.886031, 0.438995,
		42.188160, 34.162064, 34.258469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823185, 33.370365, 33.470371>,  <42.292534, 33.541843, 33.951172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823185, 33.370365, 33.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877430, 33.727207, 33.642765>,  <42.909977, 33.941315, 33.746201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877430, 33.727207, 33.642765>,  <42.823185, 33.370365, 33.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877430, 33.727207, 33.642765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785531, 0.168280, -0.595503,
		-0.603780, 0.419313, -0.677958,
		0.135615, 0.892109, 0.430987,
		42.918114, 33.994839, 33.772060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165722, 32.727371, 33.171741>,  <42.823185, 33.370365, 33.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165722, 32.727371, 33.171741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355957, 33.037701, 33.005890>,  <43.470100, 33.223896, 32.906380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355957, 33.037701, 33.005890>,  <43.165722, 32.727371, 33.171741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355957, 33.037701, 33.005890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006071, 0.474234, 0.880378,
		0.879647, -0.416181, 0.230251,
		0.475589, 0.775819, -0.414632,
		43.498634, 33.270447, 32.881500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966167, 32.273159, 33.755344>,  <43.165722, 32.727371, 33.171741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966167, 32.273159, 33.755344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642368, 32.346409, 33.978477>,  <42.448090, 32.390358, 34.112358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642368, 32.346409, 33.978477>,  <42.966167, 32.273159, 33.755344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642368, 32.346409, 33.978477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460265, -0.787801, -0.409300,
		0.364509, -0.588079, 0.722009,
		-0.809499, 0.183122, 0.557832,
		42.399517, 32.401344, 34.145828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647457, 32.424206, 33.719997>,  <42.966167, 32.273159, 33.755344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647457, 32.424206, 33.719997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751396, 32.691319, 33.440987>,  <43.813759, 32.851585, 33.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751396, 32.691319, 33.440987>,  <43.647457, 32.424206, 33.719997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751396, 32.691319, 33.440987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000653, 0.722461, 0.691411,
		0.965649, -0.179206, 0.188166,
		0.259847, 0.667784, -0.697527,
		43.829350, 32.891655, 33.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255272, 32.832630, 34.062641>,  <43.647457, 32.424206, 33.719997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255272, 32.832630, 34.062641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061394, 33.036076, 33.778000>,  <43.945068, 33.158142, 33.607216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061394, 33.036076, 33.778000>,  <44.255272, 32.832630, 34.062641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061394, 33.036076, 33.778000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152842, 0.850289, 0.503634,
		0.861226, 0.135346, -0.489869,
		-0.484695, 0.508615, -0.711605,
		43.915985, 33.188660, 33.564518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709602, 33.312019, 33.800224>,  <44.255272, 32.832630, 34.062641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709602, 33.312019, 33.800224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319138, 33.377148, 33.857639>,  <44.084858, 33.416225, 33.892090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319138, 33.377148, 33.857639>,  <44.709602, 33.312019, 33.800224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319138, 33.377148, 33.857639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216981, 0.749517, 0.625415,
		-0.005755, 0.641650, -0.766976,
		-0.976159, 0.162820, 0.143540,
		44.026291, 33.425995, 33.900700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232525, 32.928616, 33.351601>,  <44.709602, 33.312019, 33.800224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232525, 32.928616, 33.351601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430470, 33.276199, 33.349812>,  <45.549236, 33.484749, 33.348740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430470, 33.276199, 33.349812>,  <45.232525, 32.928616, 33.351601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430470, 33.276199, 33.349812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812348, 0.464436, 0.352690,
		0.308551, -0.170898, 0.935730,
		0.494861, 0.868961, -0.004474,
		45.578926, 33.536888, 33.348469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510319, 32.620480, 33.951912>,  <45.232525, 32.928616, 33.351601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510319, 32.620480, 33.951912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682224, 32.952888, 33.810658>,  <45.785366, 33.152336, 33.725906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682224, 32.952888, 33.810658>,  <45.510319, 32.620480, 33.951912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682224, 32.952888, 33.810658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714477, 0.552111, 0.429761,
		0.552111, 0.067612, 0.831024,
		-0.429761, -0.831024, 0.353134,
		45.811153, 33.202194, 33.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383759, 33.116154, 34.484184>,  <45.510319, 32.620480, 33.951912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383759, 33.116154, 34.484184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449860, 33.304901, 34.137768>,  <45.489521, 33.418152, 33.929916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449860, 33.304901, 34.137768>,  <45.383759, 33.116154, 34.484184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449860, 33.304901, 34.137768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718517, 0.659117, 0.222028,
		0.675593, 0.585578, 0.447965,
		0.165247, 0.471872, -0.866043,
		45.499435, 33.446465, 33.877956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458122, 33.901180, 34.538445>,  <45.383759, 33.116154, 34.484184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458122, 33.901180, 34.538445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344822, 33.863953, 34.156635>,  <45.276844, 33.841618, 33.927551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344822, 33.863953, 34.156635>,  <45.458122, 33.901180, 34.538445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344822, 33.863953, 34.156635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693491, 0.707355, 0.136819,
		0.662451, 0.700704, -0.264901,
		-0.283249, -0.093071, -0.954520,
		45.259846, 33.836033, 33.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452499, 34.482887, 34.088318>,  <45.458122, 33.901180, 34.538445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452499, 34.482887, 34.088318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164104, 34.261387, 33.921688>,  <44.991070, 34.128487, 33.821709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164104, 34.261387, 33.921688>,  <45.452499, 34.482887, 34.088318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164104, 34.261387, 33.921688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597401, 0.801333, -0.031268,
		0.351131, 0.226319, -0.908563,
		-0.720985, -0.553756, -0.416576,
		44.947807, 34.095261, 33.796715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792271, 35.175747, 34.096100>,  <45.452499, 34.482887, 34.088318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792271, 35.175747, 34.096100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091148, 35.413269, 33.976707>,  <46.270477, 35.555782, 33.905071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091148, 35.413269, 33.976707>,  <45.792271, 35.175747, 34.096100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091148, 35.413269, 33.976707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380228, 0.750296, 0.540816,
		0.545088, -0.290607, 0.786401,
		0.747199, 0.593804, -0.298481,
		46.315308, 35.591412, 33.887161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698799, 35.813404, 34.369949>,  <45.792271, 35.175747, 34.096100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698799, 35.813404, 34.369949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033298, 35.941689, 34.192039>,  <46.233997, 36.018658, 34.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033298, 35.941689, 34.192039>,  <45.698799, 35.813404, 34.369949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033298, 35.941689, 34.192039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296242, 0.946803, 0.125719,
		0.461436, 0.026629, 0.886774,
		0.836252, 0.320710, -0.444777,
		46.284176, 36.037903, 34.058605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128815, 36.314510, 34.894863>,  <45.698799, 35.813404, 34.369949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128815, 36.314510, 34.894863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158245, 36.377014, 34.500874>,  <46.175903, 36.414516, 34.264481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158245, 36.377014, 34.500874>,  <46.128815, 36.314510, 34.894863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158245, 36.377014, 34.500874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140047, 0.979482, 0.144923,
		0.987408, 0.127280, 0.093949,
		0.073575, 0.156255, -0.984973,
		46.180317, 36.423889, 34.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437508, 36.042976, 34.990040>,  <46.128815, 36.314510, 34.894863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437508, 36.042976, 34.990040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427513, 35.649574, 35.061699>,  <45.421516, 35.413532, 35.104694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427513, 35.649574, 35.061699>,  <45.437508, 36.042976, 34.990040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427513, 35.649574, 35.061699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875321, 0.065044, 0.479148,
		-0.482897, 0.168784, 0.859257,
		-0.024983, -0.983505, 0.179150,
		45.420017, 35.354523, 35.115444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788826, 35.820621, 35.734989>,  <45.437508, 36.042976, 34.990040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788826, 35.820621, 35.734989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795399, 35.513355, 35.478973>,  <45.799343, 35.328995, 35.325363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795399, 35.513355, 35.478973>,  <45.788826, 35.820621, 35.734989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795399, 35.513355, 35.478973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998878, -0.015821, 0.044639,
		-0.044416, -0.640060, 0.767040,
		0.016436, -0.768162, -0.640044,
		45.800331, 35.282906, 35.286961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028019, 35.208176, 35.919651>,  <45.788826, 35.820621, 35.734989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028019, 35.208176, 35.919651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089317, 35.181313, 35.525291>,  <46.126095, 35.165195, 35.288673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089317, 35.181313, 35.525291>,  <46.028019, 35.208176, 35.919651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089317, 35.181313, 35.525291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984589, -0.074696, 0.158128,
		-0.084263, -0.994942, 0.054678,
		0.153244, -0.067159, -0.985904,
		46.135292, 35.161163, 35.229519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443512, 34.595592, 35.651131>,  <46.028019, 35.208176, 35.919651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443512, 34.595592, 35.651131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538300, 34.931194, 35.455208>,  <46.595173, 35.132557, 35.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538300, 34.931194, 35.455208>,  <46.443512, 34.595592, 35.651131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538300, 34.931194, 35.455208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968270, -0.245149, 0.048531,
		-0.079359, -0.485767, -0.870479,
		0.236972, 0.839007, -0.489808,
		46.609390, 35.182896, 35.308266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804646, 34.464191, 34.933685>,  <46.443512, 34.595592, 35.651131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804646, 34.464191, 34.933685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910419, 34.812626, 35.099228>,  <46.973885, 35.021687, 35.198555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910419, 34.812626, 35.099228>,  <46.804646, 34.464191, 34.933685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910419, 34.812626, 35.099228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944577, -0.320505, 0.071067,
		0.194549, 0.372126, -0.907564,
		0.264433, 0.871090, 0.413856,
		46.989750, 35.073952, 35.223385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144588, 34.856022, 34.519783>,  <46.804646, 34.464191, 34.933685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144588, 34.856022, 34.519783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262577, 34.911667, 34.897911>,  <47.333370, 34.945053, 35.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262577, 34.911667, 34.897911>,  <47.144588, 34.856022, 34.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262577, 34.911667, 34.897911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929812, -0.269677, -0.250448,
		0.220091, 0.952849, -0.208898,
		0.294974, 0.139114, 0.945324,
		47.351070, 34.953400, 35.181507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.693020, 35.382271, 34.576523>,  <47.144588, 34.856022, 34.519783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.693020, 35.382271, 34.576523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709885, 35.136169, 34.891403>,  <47.720001, 34.988506, 35.080330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709885, 35.136169, 34.891403>,  <47.693020, 35.382271, 34.576523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709885, 35.136169, 34.891403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969469, -0.165307, -0.181119,
		0.241564, 0.770800, 0.589503,
		0.042157, -0.615256, 0.787199,
		47.722530, 34.951591, 35.127563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.578487, 33.114319, 24.822878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188625, 33.195938, 24.786190>,  <36.954708, 33.244911, 24.764177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188625, 33.195938, 24.786190>,  <37.578487, 33.114319, 24.822878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188625, 33.195938, 24.786190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062485, 0.145371, 0.987402,
		0.214814, 0.968107, -0.128937,
		-0.974654, 0.204051, -0.091720,
		36.896229, 33.257153, 24.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390289, 33.741035, 25.158180>,  <37.578487, 33.114319, 24.822878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390289, 33.741035, 25.158180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052959, 33.526234, 25.149921>,  <36.850559, 33.397354, 25.144966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052959, 33.526234, 25.149921>,  <37.390289, 33.741035, 25.158180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052959, 33.526234, 25.149921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111742, 0.137649, 0.984158,
		-0.525651, 0.832276, -0.176089,
		-0.843329, -0.537001, -0.020645,
		36.799961, 33.365135, 25.143728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006516, 34.125454, 25.572874>,  <37.390289, 33.741035, 25.158180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006516, 34.125454, 25.572874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777599, 33.799236, 25.538515>,  <36.640251, 33.603508, 25.517900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777599, 33.799236, 25.538515>,  <37.006516, 34.125454, 25.572874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777599, 33.799236, 25.538515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296073, 0.107804, 0.949062,
		-0.764739, 0.568570, -0.303154,
		-0.572289, -0.815541, -0.085896,
		36.605911, 33.554573, 25.512747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301216, 34.313217, 25.710447>,  <37.006516, 34.125454, 25.572874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301216, 34.313217, 25.710447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333057, 33.922405, 25.789513>,  <36.352161, 33.687916, 25.836952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333057, 33.922405, 25.789513>,  <36.301216, 34.313217, 25.710447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333057, 33.922405, 25.789513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361451, 0.156507, 0.919162,
		-0.928987, -0.144614, -0.340691,
		0.079603, -0.977032, 0.197664,
		36.356937, 33.629295, 25.848812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678844, 34.174366, 26.105387>,  <36.301216, 34.313217, 25.710447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678844, 34.174366, 26.105387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928158, 33.866653, 26.161570>,  <36.077744, 33.682026, 26.195278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928158, 33.866653, 26.161570>,  <35.678844, 34.174366, 26.105387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928158, 33.866653, 26.161570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185874, 0.028725, 0.982154,
		-0.759588, -0.638263, -0.125086,
		0.623280, -0.769282, 0.140456,
		36.115143, 33.635868, 26.203707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449406, 33.929279, 26.680441>,  <35.678844, 34.174366, 26.105387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449406, 33.929279, 26.680441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785404, 33.712246, 26.681532>,  <35.987003, 33.582024, 26.682186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785404, 33.712246, 26.681532>,  <35.449406, 33.929279, 26.680441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785404, 33.712246, 26.681532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004672, -0.002204, 0.999987,
		-0.542575, -0.839996, -0.004386,
		0.839995, -0.542588, 0.002729,
		36.037403, 33.549469, 26.682350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291710, 33.224537, 26.963366>,  <35.449406, 33.929279, 26.680441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291710, 33.224537, 26.963366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677845, 33.321098, 27.003054>,  <35.909527, 33.379036, 27.026867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677845, 33.321098, 27.003054>,  <35.291710, 33.224537, 26.963366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677845, 33.321098, 27.003054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055806, -0.180450, 0.982000,
		0.254964, -0.953499, -0.160724,
		0.965339, 0.241405, 0.099220,
		35.967445, 33.393520, 27.032820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542301, 32.690311, 27.514147>,  <35.291710, 33.224537, 26.963366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542301, 32.690311, 27.514147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 32.963955, 27.496721>,  <36.008266, 33.128143, 27.486265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 32.963955, 27.496721>,  <35.542301, 32.690311, 27.514147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833530, 32.963955, 27.496721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149292, -0.096217, 0.984101,
		0.669045, -0.723002, -0.172186,
		0.728073, 0.684113, -0.043564,
		36.051952, 33.169189, 27.483652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994129, 32.432152, 27.950745>,  <35.542301, 32.690311, 27.514147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994129, 32.432152, 27.950745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079929, 32.822006, 27.925241>,  <36.131409, 33.055920, 27.909939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079929, 32.822006, 27.925241>,  <35.994129, 32.432152, 27.950745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079929, 32.822006, 27.925241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081174, 0.047265, 0.995579,
		0.973344, -0.218732, -0.068977,
		0.214504, 0.974640, -0.063760,
		36.144279, 33.114399, 27.906113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729897, 32.565716, 28.250683>,  <35.994129, 32.432152, 27.950745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729897, 32.565716, 28.250683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524834, 32.908607, 28.270008>,  <36.401794, 33.114342, 28.281603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524834, 32.908607, 28.270008>,  <36.729897, 32.565716, 28.250683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524834, 32.908607, 28.270008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319354, 0.138151, 0.937511,
		0.796989, 0.496055, -0.344585,
		-0.512661, 0.857230, 0.048313,
		36.371037, 33.165775, 28.284502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289764, 32.967949, 28.519421>,  <36.729897, 32.565716, 28.250683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289764, 32.967949, 28.519421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955116, 33.182816, 28.562353>,  <36.754326, 33.311733, 28.588112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955116, 33.182816, 28.562353>,  <37.289764, 32.967949, 28.519421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955116, 33.182816, 28.562353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400048, 0.465299, 0.789594,
		0.374199, 0.703530, -0.604170,
		-0.836622, 0.537162, 0.107331,
		36.704128, 33.343964, 28.594553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470570, 33.677872, 28.587034>,  <37.289764, 32.967949, 28.519421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470570, 33.677872, 28.587034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130394, 33.648918, 28.795464>,  <36.926289, 33.631546, 28.920521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130394, 33.648918, 28.795464>,  <37.470570, 33.677872, 28.587034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130394, 33.648918, 28.795464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452209, 0.405545, 0.794381,
		-0.268818, 0.911205, -0.312158,
		-0.850438, -0.072383, 0.521073,
		36.875263, 33.627205, 28.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498047, 34.207230, 29.136890>,  <37.470570, 33.677872, 28.587034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498047, 34.207230, 29.136890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247726, 33.922760, 29.265024>,  <37.097534, 33.752079, 29.341904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247726, 33.922760, 29.265024>,  <37.498047, 34.207230, 29.136890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247726, 33.922760, 29.265024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190536, 0.258864, 0.946935,
		-0.756356, 0.653624, -0.026493,
		-0.625797, -0.711172, 0.320332,
		37.059986, 33.709408, 29.361124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267441, 34.460171, 29.799208>,  <37.498047, 34.207230, 29.136890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267441, 34.460171, 29.799208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145741, 34.081173, 29.838570>,  <37.072720, 33.853775, 29.862186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145741, 34.081173, 29.838570>,  <37.267441, 34.460171, 29.799208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145741, 34.081173, 29.838570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112809, 0.066736, 0.991373,
		-0.945890, 0.312723, 0.086581,
		-0.304247, -0.947497, 0.098403,
		37.054466, 33.796925, 29.868090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792999, 34.435360, 30.346838>,  <37.267441, 34.460171, 29.799208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792999, 34.435360, 30.346838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916565, 34.057381, 30.303658>,  <36.990704, 33.830593, 30.277750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916565, 34.057381, 30.303658>,  <36.792999, 34.435360, 30.346838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916565, 34.057381, 30.303658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033379, -0.102660, 0.994156,
		-0.950505, -0.310708, -0.000171,
		0.308910, -0.944945, -0.107950,
		37.009239, 33.773895, 30.271273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566357, 34.071987, 30.991758>,  <36.792999, 34.435360, 30.346838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566357, 34.071987, 30.991758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834076, 33.821289, 30.832146>,  <36.994709, 33.670868, 30.736378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834076, 33.821289, 30.832146>,  <36.566357, 34.071987, 30.991758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834076, 33.821289, 30.832146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424778, -0.117852, 0.897594,
		-0.609591, -0.770259, 0.187350,
		0.669300, -0.626747, -0.399030,
		37.034866, 33.633266, 30.712437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622955, 33.601402, 31.452263>,  <36.566357, 34.071987, 30.991758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622955, 33.601402, 31.452263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962994, 33.568523, 31.244192>,  <37.167015, 33.548798, 31.119350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962994, 33.568523, 31.244192>,  <36.622955, 33.601402, 31.452263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962994, 33.568523, 31.244192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509928, -0.118312, 0.852042,
		-0.131572, -0.989569, -0.058666,
		0.850096, -0.082189, -0.520175,
		37.218021, 33.543865, 31.088139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944344, 33.084843, 31.841633>,  <36.622955, 33.601402, 31.452263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944344, 33.084843, 31.841633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220413, 33.269478, 31.618708>,  <37.386055, 33.380260, 31.484953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220413, 33.269478, 31.618708>,  <36.944344, 33.084843, 31.841633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220413, 33.269478, 31.618708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616116, 0.029125, 0.787117,
		0.379557, -0.886615, -0.264292,
		0.690172, 0.461591, -0.557312,
		37.427464, 33.407955, 31.451513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555344, 32.793861, 32.091660>,  <36.944344, 33.084843, 31.841633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555344, 32.793861, 32.091660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695972, 33.128300, 31.923212>,  <37.780350, 33.328960, 31.822144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695972, 33.128300, 31.923212>,  <37.555344, 32.793861, 32.091660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695972, 33.128300, 31.923212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617203, 0.131211, 0.775786,
		0.703885, -0.532664, -0.469909,
		0.351577, 0.836094, -0.421119,
		37.801445, 33.379128, 31.796877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123978, 32.791214, 32.374031>,  <37.555344, 32.793861, 32.091660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123978, 32.791214, 32.374031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096836, 33.170006, 32.248417>,  <38.080551, 33.397282, 32.173046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096836, 33.170006, 32.248417>,  <38.123978, 32.791214, 32.374031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096836, 33.170006, 32.248417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582707, 0.293113, 0.757982,
		0.809845, -0.131561, -0.571702,
		-0.067853, 0.946983, -0.314037,
		38.076481, 33.454102, 32.154205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814762, 33.026028, 32.272137>,  <38.123978, 32.791214, 32.374031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814762, 33.026028, 32.272137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575661, 33.341629, 32.328938>,  <38.432201, 33.530991, 32.363018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575661, 33.341629, 32.328938>,  <38.814762, 33.026028, 32.272137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575661, 33.341629, 32.328938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570661, 0.294360, 0.766615,
		0.563062, 0.539282, -0.626208,
		-0.597752, 0.789004, 0.142003,
		38.396336, 33.578331, 32.371540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241241, 33.502972, 32.695747>,  <38.814762, 33.026028, 32.272137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241241, 33.502972, 32.695747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862862, 33.630264, 32.720741>,  <38.635834, 33.706642, 32.735737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862862, 33.630264, 32.720741>,  <39.241241, 33.502972, 32.695747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862862, 33.630264, 32.720741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196640, 0.409606, 0.890817,
		0.257894, 0.854957, -0.450045,
		-0.945951, 0.318233, 0.062484,
		38.579075, 33.725735, 32.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740654, 33.017918, 32.496140>,  <39.241241, 33.502972, 32.695747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740654, 33.017918, 32.496140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067192, 32.788551, 32.523811>,  <40.263115, 32.650932, 32.540413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067192, 32.788551, 32.523811>,  <39.740654, 33.017918, 32.496140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067192, 32.788551, 32.523811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041422, -0.061342, -0.997257,
		0.576082, 0.816968, -0.026324,
		0.816342, -0.573411, 0.069178,
		40.312096, 32.616528, 32.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243336, 33.259789, 32.143841>,  <39.740654, 33.017918, 32.496140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243336, 33.259789, 32.143841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.371746, 32.881256, 32.158829>,  <40.448792, 32.654137, 32.167820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.371746, 32.881256, 32.158829>,  <40.243336, 33.259789, 32.143841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371746, 32.881256, 32.158829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140473, 0.008457, -0.990048,
		0.936593, 0.323098, 0.135649,
		0.321030, -0.946328, 0.037466,
		40.468056, 32.597359, 32.170067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885540, 33.295372, 31.766830>,  <40.243336, 33.259789, 32.143841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885540, 33.295372, 31.766830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797150, 32.905441, 31.754978>,  <40.744114, 32.671482, 31.747868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797150, 32.905441, 31.754978>,  <40.885540, 33.295372, 31.766830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797150, 32.905441, 31.754978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042662, 0.020691, -0.998875,
		0.974346, -0.221992, 0.037016,
		-0.220977, -0.974829, -0.029631,
		40.730858, 32.612991, 31.746088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528576, 32.897667, 31.420218>,  <40.885540, 33.295372, 31.766830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528576, 32.897667, 31.420218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189125, 32.690056, 31.379353>,  <40.985455, 32.565491, 31.354834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189125, 32.690056, 31.379353>,  <41.528576, 32.897667, 31.420218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189125, 32.690056, 31.379353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237469, -0.201211, -0.950328,
		0.472692, -0.830736, 0.294007,
		-0.848629, -0.519029, -0.102163,
		40.934536, 32.534348, 31.348703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692841, 32.338791, 31.075645>,  <41.528576, 32.897667, 31.420218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692841, 32.338791, 31.075645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296654, 32.316708, 31.025160>,  <41.058941, 32.303455, 30.994869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296654, 32.316708, 31.025160>,  <41.692841, 32.338791, 31.075645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296654, 32.316708, 31.025160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134468, -0.188369, -0.972849,
		0.029938, -0.980545, 0.193997,
		-0.990465, -0.055211, -0.126213,
		40.999516, 32.300144, 30.987295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571033, 31.759789, 30.664835>,  <41.692841, 32.338791, 31.075645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571033, 31.759789, 30.664835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.251034, 31.996141, 30.623144>,  <41.059036, 32.137955, 30.598129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.251034, 31.996141, 30.623144>,  <41.571033, 31.759789, 30.664835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251034, 31.996141, 30.623144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019804, -0.199619, -0.979674,
		-0.599677, -0.781672, 0.171396,
		-0.799997, 0.590882, -0.104227,
		41.011036, 32.173405, 30.591877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180717, 31.433187, 30.253515>,  <41.571033, 31.759789, 30.664835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180717, 31.433187, 30.253515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.080101, 31.814714, 30.187834>,  <41.019733, 32.043629, 30.148426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.080101, 31.814714, 30.187834>,  <41.180717, 31.433187, 30.253515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080101, 31.814714, 30.187834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116299, -0.138640, -0.983490,
		-0.960834, -0.266483, -0.076054,
		-0.251539, 0.953816, -0.164202,
		41.004639, 32.100861, 30.138573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811264, 31.413332, 29.697233>,  <41.180717, 31.433187, 30.253515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811264, 31.413332, 29.697233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872265, 31.808413, 29.711046>,  <40.908863, 32.045460, 29.719334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872265, 31.808413, 29.711046>,  <40.811264, 31.413332, 29.697233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872265, 31.808413, 29.711046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120832, 0.053314, -0.991240,
		-0.980889, 0.146992, 0.127476,
		0.152500, 0.987700, 0.034533,
		40.918015, 32.104721, 29.721407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392330, 31.626583, 29.225348>,  <40.811264, 31.413332, 29.697233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392330, 31.626583, 29.225348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.604855, 31.960220, 29.284676>,  <40.732368, 32.160404, 29.320272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.604855, 31.960220, 29.284676>,  <40.392330, 31.626583, 29.225348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604855, 31.960220, 29.284676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126282, 0.251093, -0.959690,
		-0.837713, 0.491162, 0.238739,
		0.531309, 0.834094, 0.148319,
		40.764248, 32.210449, 29.329172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996933, 32.157318, 28.965151>,  <40.392330, 31.626583, 29.225348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996933, 32.157318, 28.965151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369102, 32.303631, 28.956110>,  <40.592403, 32.391418, 28.950686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369102, 32.303631, 28.956110>,  <39.996933, 32.157318, 28.965151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369102, 32.303631, 28.956110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116169, 0.235878, -0.964814,
		-0.347581, 0.900314, 0.261960,
		0.930426, 0.365783, -0.022602,
		40.648232, 32.413364, 28.949329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941654, 32.825565, 28.763395>,  <39.996933, 32.157318, 28.965151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941654, 32.825565, 28.763395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310181, 32.714970, 28.654051>,  <40.531296, 32.648613, 28.588444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310181, 32.714970, 28.654051>,  <39.941654, 32.825565, 28.763395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310181, 32.714970, 28.654051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192494, 0.286491, -0.938546,
		0.337814, 0.917320, 0.210727,
		0.921318, -0.276490, -0.273360,
		40.586575, 32.632023, 28.572042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303738, 33.509388, 28.477070>,  <39.941654, 32.825565, 28.763395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303738, 33.509388, 28.477070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498352, 33.178761, 28.363888>,  <40.615120, 32.980385, 28.295979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498352, 33.178761, 28.363888>,  <40.303738, 33.509388, 28.477070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498352, 33.178761, 28.363888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075618, 0.362499, -0.928912,
		0.870384, 0.430548, 0.238871,
		0.486532, -0.826573, -0.282956,
		40.644310, 32.930790, 28.279001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778152, 33.725346, 27.977594>,  <40.303738, 33.509388, 28.477070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778152, 33.725346, 27.977594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.748100, 33.329918, 27.925299>,  <40.730068, 33.092663, 27.893921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.748100, 33.329918, 27.925299>,  <40.778152, 33.725346, 27.977594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748100, 33.329918, 27.925299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014599, 0.130008, -0.991405,
		0.997067, -0.076391, 0.004665,
		-0.075128, -0.988566, -0.130742,
		40.725563, 33.033348, 27.886076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252296, 33.612423, 27.562561>,  <40.778152, 33.725346, 27.977594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252296, 33.612423, 27.562561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991989, 33.309952, 27.535149>,  <40.835804, 33.128468, 27.518702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991989, 33.309952, 27.535149>,  <41.252296, 33.612423, 27.562561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991989, 33.309952, 27.535149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025618, 0.112076, -0.993369,
		0.758848, -0.644693, -0.092307,
		-0.650763, -0.756181, -0.068533,
		40.796761, 33.083096, 27.514589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452595, 33.305763, 26.953478>,  <41.252296, 33.612423, 27.562561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452595, 33.305763, 26.953478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.086094, 33.160007, 27.020052>,  <40.866192, 33.072556, 27.059998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.086094, 33.160007, 27.020052>,  <41.452595, 33.305763, 26.953478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086094, 33.160007, 27.020052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214931, 0.096545, -0.971846,
		0.338063, -0.926228, -0.166779,
		-0.916252, -0.364391, 0.166437,
		40.811218, 33.050690, 27.069983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293400, 32.715229, 26.408157>,  <41.452595, 33.305763, 26.953478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293400, 32.715229, 26.408157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.930798, 32.828690, 26.533243>,  <40.713238, 32.896767, 26.608295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.930798, 32.828690, 26.533243>,  <41.293400, 32.715229, 26.408157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930798, 32.828690, 26.533243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368537, -0.170242, -0.913892,
		-0.206003, -0.943690, 0.258866,
		-0.906501, 0.283666, 0.312714,
		40.658848, 32.913788, 26.627058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815479, 32.234688, 26.112669>,  <41.293400, 32.715229, 26.408157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815479, 32.234688, 26.112669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.595242, 32.546429, 26.232306>,  <40.463100, 32.733475, 26.304089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.595242, 32.546429, 26.232306>,  <40.815479, 32.234688, 26.112669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595242, 32.546429, 26.232306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550233, -0.069379, -0.832124,
		-0.627768, -0.622732, 0.467025,
		-0.550592, 0.779353, 0.299093,
		40.430065, 32.780235, 26.322033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103485, 32.034428, 26.072681>,  <40.815479, 32.234688, 26.112669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103485, 32.034428, 26.072681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127537, 32.433483, 26.059355>,  <40.141968, 32.672916, 26.051359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127537, 32.433483, 26.059355>,  <40.103485, 32.034428, 26.072681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127537, 32.433483, 26.059355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688284, 0.017261, -0.725236,
		-0.722945, 0.066538, 0.687694,
		0.060126, 0.997634, -0.033318,
		40.145576, 32.732773, 26.049360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.337543, 32.357346, 26.083345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609497, 32.611618, 25.937103>,  <39.772671, 32.764183, 25.849358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609497, 32.611618, 25.937103>,  <39.337543, 32.357346, 26.083345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609497, 32.611618, 25.937103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510168, 0.051883, -0.858509,
		-0.526768, 0.770207, 0.359578,
		0.679885, 0.635680, -0.365604,
		39.813461, 32.802322, 25.827421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875866, 32.829346, 25.756348>,  <39.337543, 32.357346, 26.083345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875866, 32.829346, 25.756348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235241, 32.926620, 25.610104>,  <39.450867, 32.984985, 25.522358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235241, 32.926620, 25.610104>,  <38.875866, 32.829346, 25.756348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235241, 32.926620, 25.610104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378071, 0.004960, -0.925763,
		-0.223323, 0.969966, 0.096399,
		0.898437, 0.243190, -0.365608,
		39.504772, 32.999577, 25.500422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778568, 33.360443, 25.325457>,  <38.875866, 32.829346, 25.756348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778568, 33.360443, 25.325457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119587, 33.201717, 25.189394>,  <39.324196, 33.106480, 25.107758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119587, 33.201717, 25.189394>,  <38.778568, 33.360443, 25.325457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119587, 33.201717, 25.189394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371529, -0.002365, -0.928418,
		0.367609, 0.917894, -0.149446,
		0.852543, -0.396819, -0.340155,
		39.375351, 33.082672, 25.087347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979527, 33.862083, 24.909052>,  <38.778568, 33.360443, 25.325457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979527, 33.862083, 24.909052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168594, 33.529705, 24.791676>,  <39.282036, 33.330276, 24.721251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168594, 33.529705, 24.791676>,  <38.979527, 33.862083, 24.909052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168594, 33.529705, 24.791676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265603, 0.183171, -0.946522,
		0.840260, 0.525333, -0.134122,
		0.472672, -0.830948, -0.293441,
		39.310394, 33.280422, 24.703644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227085, 34.104153, 24.321203>,  <38.979527, 33.862083, 24.909052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227085, 34.104153, 24.321203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267109, 33.707733, 24.285851>,  <39.291122, 33.469883, 24.264639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267109, 33.707733, 24.285851>,  <39.227085, 34.104153, 24.321203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267109, 33.707733, 24.285851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336321, 0.049913, -0.940424,
		0.936417, 0.123825, -0.328316,
		0.100061, -0.991048, -0.088384,
		39.297127, 33.410419, 24.259335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697639, 33.948063, 23.703499>,  <39.227085, 34.104153, 24.321203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697639, 33.948063, 23.703499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503426, 33.606903, 23.780249>,  <39.386898, 33.402206, 23.826300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503426, 33.606903, 23.780249>,  <39.697639, 33.948063, 23.703499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503426, 33.606903, 23.780249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262094, -0.067371, -0.962688,
		0.834003, -0.517709, -0.190829,
		-0.485536, -0.852900, 0.191876,
		39.357765, 33.351032, 23.837811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954590, 33.604889, 23.110928>,  <39.697639, 33.948063, 23.703499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954590, 33.604889, 23.110928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.639774, 33.408882, 23.260834>,  <39.450886, 33.291279, 23.350777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.639774, 33.408882, 23.260834>,  <39.954590, 33.604889, 23.110928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639774, 33.408882, 23.260834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245064, -0.309158, -0.918893,
		0.566139, -0.815046, 0.123233,
		-0.787039, -0.490021, 0.374765,
		39.403664, 33.261875, 23.373262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955231, 32.892334, 22.989914>,  <39.954590, 33.604889, 23.110928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955231, 32.892334, 22.989914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574783, 33.003498, 23.043793>,  <39.346516, 33.070194, 23.076120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574783, 33.003498, 23.043793>,  <39.955231, 32.892334, 22.989914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574783, 33.003498, 23.043793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231350, -0.352224, -0.906871,
		-0.204583, -0.893703, 0.399300,
		-0.951116, 0.277909, 0.134699,
		39.289448, 33.086872, 23.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506615, 32.245678, 23.009672>,  <39.955231, 32.892334, 22.989914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506615, 32.245678, 23.009672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328083, 32.583084, 22.890158>,  <39.220963, 32.785526, 22.818449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328083, 32.583084, 22.890158>,  <39.506615, 32.245678, 23.009672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328083, 32.583084, 22.890158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293183, -0.453299, -0.841762,
		-0.845476, -0.288107, 0.449626,
		-0.446333, 0.843513, -0.298786,
		39.194183, 32.836140, 22.800522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073402, 31.932779, 22.529562>,  <39.506615, 32.245678, 23.009672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073402, 31.932779, 22.529562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061546, 32.324959, 22.451750>,  <39.054432, 32.560268, 22.405062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061546, 32.324959, 22.451750>,  <39.073402, 31.932779, 22.529562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061546, 32.324959, 22.451750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137108, -0.196764, -0.970817,
		-0.990113, -0.002102, 0.140260,
		-0.029639, 0.980449, -0.194530,
		39.052654, 32.619095, 22.393391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428059, 32.007870, 22.081867>,  <39.073402, 31.932779, 22.529562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428059, 32.007870, 22.081867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664249, 32.325325, 22.023233>,  <38.805962, 32.515797, 21.988054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664249, 32.325325, 22.023233>,  <38.428059, 32.007870, 22.081867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664249, 32.325325, 22.023233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139421, -0.078586, -0.987110,
		-0.794923, 0.603299, 0.064246,
		0.590474, 0.793634, -0.146582,
		38.841393, 32.563416, 21.979259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100510, 32.466225, 21.656218>,  <38.428059, 32.007870, 22.081867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100510, 32.466225, 21.656218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488018, 32.555244, 21.612494>,  <38.720524, 32.608658, 21.586258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488018, 32.555244, 21.612494>,  <38.100510, 32.466225, 21.656218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488018, 32.555244, 21.612494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100811, -0.049237, -0.993686,
		-0.226525, 0.973678, -0.025265,
		0.968774, 0.222548, -0.109311,
		38.778652, 32.622009, 21.579700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063770, 32.967014, 21.167599>,  <38.100510, 32.466225, 21.656218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063770, 32.967014, 21.167599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458519, 32.902596, 21.162781>,  <38.695370, 32.863945, 21.159891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458519, 32.902596, 21.162781>,  <38.063770, 32.967014, 21.167599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458519, 32.902596, 21.162781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009900, 0.134764, -0.990828,
		0.161193, 0.977703, 0.134589,
		0.986873, -0.161047, -0.012043,
		38.754581, 32.854282, 21.159168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323357, 33.510960, 20.676849>,  <38.063770, 32.967014, 21.167599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323357, 33.510960, 20.676849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634026, 33.267502, 20.741756>,  <38.820427, 33.121429, 20.780701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634026, 33.267502, 20.741756>,  <38.323357, 33.510960, 20.676849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634026, 33.267502, 20.741756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256812, 0.070744, -0.963869,
		0.575170, 0.790286, 0.211252,
		0.776677, -0.608640, 0.162265,
		38.867027, 33.084911, 20.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009560, 33.888218, 20.491737>,  <38.323357, 33.510960, 20.676849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009560, 33.888218, 20.491737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083138, 33.498177, 20.442205>,  <39.127285, 33.264153, 20.412485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083138, 33.498177, 20.442205>,  <39.009560, 33.888218, 20.491737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083138, 33.498177, 20.442205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274471, 0.171924, -0.946101,
		0.943838, 0.140042, 0.299263,
		0.183944, -0.975105, -0.123831,
		39.138321, 33.205647, 20.405056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625313, 33.842697, 20.096485>,  <39.009560, 33.888218, 20.491737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625313, 33.842697, 20.096485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450874, 33.488022, 20.035023>,  <39.346210, 33.275215, 19.998146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450874, 33.488022, 20.035023>,  <39.625313, 33.842697, 20.096485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450874, 33.488022, 20.035023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274523, 0.031527, -0.961064,
		0.857007, -0.461293, 0.229668,
		-0.436091, -0.886688, -0.153654,
		39.320045, 33.222015, 19.988926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151558, 33.304493, 19.902414>,  <39.625313, 33.842697, 20.096485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151558, 33.304493, 19.902414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810429, 33.152325, 19.759319>,  <39.605751, 33.061024, 19.673462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810429, 33.152325, 19.759319>,  <40.151558, 33.304493, 19.902414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810429, 33.152325, 19.759319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420167, -0.093084, -0.902660,
		0.310095, -0.920115, 0.239226,
		-0.852819, -0.380425, -0.357737,
		39.554585, 33.038197, 19.651999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443707, 32.723083, 19.379658>,  <40.151558, 33.304493, 19.902414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443707, 32.723083, 19.379658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060703, 32.793823, 19.288523>,  <39.830902, 32.836266, 19.233841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060703, 32.793823, 19.288523>,  <40.443707, 32.723083, 19.379658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060703, 32.793823, 19.288523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204692, -0.139855, -0.968783,
		-0.203195, -0.974251, 0.097712,
		-0.957503, 0.176850, -0.227839,
		39.773453, 32.846878, 19.220171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323402, 32.316818, 18.787842>,  <40.443707, 32.723083, 19.379658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323402, 32.316818, 18.787842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.010490, 32.565289, 18.769188>,  <39.822742, 32.714371, 18.757996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.010490, 32.565289, 18.769188>,  <40.323402, 32.316818, 18.787842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010490, 32.565289, 18.769188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137673, 0.099391, -0.985478,
		-0.607523, -0.777341, -0.163271,
		-0.782280, 0.621178, -0.046636,
		39.775806, 32.751640, 18.755198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035110, 32.098560, 18.165117>,  <40.323402, 32.316818, 18.787842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035110, 32.098560, 18.165117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886879, 32.462048, 18.241957>,  <39.797939, 32.680141, 18.288059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886879, 32.462048, 18.241957>,  <40.035110, 32.098560, 18.165117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886879, 32.462048, 18.241957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161095, 0.140804, -0.976843,
		-0.914724, -0.392942, 0.094212,
		-0.370578, 0.908719, 0.192098,
		39.775707, 32.734665, 18.299585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451786, 32.362511, 17.551147>,  <40.035110, 32.098560, 18.165117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451786, 32.362511, 17.551147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572449, 32.697624, 17.733191>,  <39.644848, 32.898693, 17.842417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572449, 32.697624, 17.733191>,  <39.451786, 32.362511, 17.551147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572449, 32.697624, 17.733191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101265, 0.446490, -0.889040,
		-0.948022, 0.314274, 0.049850,
		0.301660, 0.837782, 0.455107,
		39.662949, 32.948959, 17.869722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034405, 32.945236, 17.373295>,  <39.451786, 32.362511, 17.551147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034405, 32.945236, 17.373295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395496, 33.069046, 17.492815>,  <39.612152, 33.143333, 17.564528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395496, 33.069046, 17.492815>,  <39.034405, 32.945236, 17.373295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395496, 33.069046, 17.492815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118068, 0.489621, -0.863905,
		-0.413701, 0.815147, 0.405447,
		0.902724, 0.309528, 0.298799,
		39.666313, 33.161903, 17.582455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223763, 33.660160, 17.217169>,  <39.034405, 32.945236, 17.373295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223763, 33.660160, 17.217169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271805, 34.057011, 17.231371>,  <39.300632, 34.295120, 17.239893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271805, 34.057011, 17.231371>,  <39.223763, 33.660160, 17.217169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271805, 34.057011, 17.231371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618654, 0.102771, -0.778913,
		-0.776429, 0.071589, 0.626126,
		0.120109, 0.992126, 0.035506,
		39.307838, 34.354649, 17.242023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553574, 34.034832, 17.183268>,  <39.223763, 33.660160, 17.217169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553574, 34.034832, 17.183268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851109, 34.240826, 17.012857>,  <39.029629, 34.364422, 16.910610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851109, 34.240826, 17.012857>,  <38.553574, 34.034832, 17.183268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851109, 34.240826, 17.012857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518108, 0.041614, -0.854302,
		-0.422227, 0.856186, 0.297774,
		0.743833, 0.514988, -0.426027,
		39.074257, 34.395321, 16.885050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028198, 34.435230, 16.874941>,  <38.553574, 34.034832, 17.183268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028198, 34.435230, 16.874941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643032, 34.334290, 16.836748>,  <37.411934, 34.273724, 16.813833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643032, 34.334290, 16.836748>,  <38.028198, 34.435230, 16.874941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643032, 34.334290, 16.836748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221479, 0.537165, 0.813880,
		-0.154095, 0.804843, -0.573134,
		-0.962913, -0.252352, -0.095482,
		37.354156, 34.258583, 16.808104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654556, 35.035072, 17.170740>,  <38.028198, 34.435230, 16.874941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654556, 35.035072, 17.170740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370316, 34.753639, 17.172235>,  <37.199772, 34.584778, 17.173132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370316, 34.753639, 17.172235>,  <37.654556, 35.035072, 17.170740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370316, 34.753639, 17.172235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276174, 0.283806, 0.918249,
		-0.647127, 0.651477, -0.395985,
		-0.710601, -0.703585, 0.003737,
		37.157135, 34.542564, 17.173357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943066, 35.335644, 17.388699>,  <37.654556, 35.035072, 17.170740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943066, 35.335644, 17.388699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.915253, 34.941849, 17.453144>,  <36.898563, 34.705574, 17.491812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.915253, 34.941849, 17.453144>,  <36.943066, 35.335644, 17.388699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915253, 34.941849, 17.453144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245329, 0.173421, 0.953802,
		-0.966943, 0.026794, -0.253581,
		-0.069532, -0.984483, 0.161115,
		36.894394, 34.646503, 17.501478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424728, 35.321148, 17.763010>,  <36.943066, 35.335644, 17.388699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424728, 35.321148, 17.763010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527935, 34.940506, 17.829788>,  <36.589859, 34.712120, 17.869856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527935, 34.940506, 17.829788>,  <36.424728, 35.321148, 17.763010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527935, 34.940506, 17.829788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323314, 0.077788, 0.943089,
		-0.910436, -0.297313, -0.287596,
		0.258021, -0.951606, 0.166946,
		36.605343, 34.655025, 17.879871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849876, 35.046669, 18.089937>,  <36.424728, 35.321148, 17.763010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849876, 35.046669, 18.089937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171501, 34.827343, 18.181877>,  <36.364475, 34.695747, 18.237041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171501, 34.827343, 18.181877>,  <35.849876, 35.046669, 18.089937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171501, 34.827343, 18.181877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300093, -0.040557, 0.953047,
		-0.513248, -0.835288, -0.197156,
		0.804065, -0.548315, 0.229849,
		36.412720, 34.662849, 18.250832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608746, 34.532337, 18.566891>,  <35.849876, 35.046669, 18.089937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608746, 34.532337, 18.566891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001762, 34.482582, 18.622213>,  <36.237572, 34.452728, 18.655407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001762, 34.482582, 18.622213>,  <35.608746, 34.532337, 18.566891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001762, 34.482582, 18.622213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155459, -0.140792, 0.977758,
		-0.102142, -0.982195, -0.157671,
		0.982547, -0.124381, 0.138310,
		36.296528, 34.445263, 18.663706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632027, 34.132267, 19.173494>,  <35.608746, 34.532337, 18.566891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632027, 34.132267, 19.173494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004417, 34.278130, 19.166540>,  <36.227852, 34.365646, 19.162367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004417, 34.278130, 19.166540>,  <35.632027, 34.132267, 19.173494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004417, 34.278130, 19.166540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090174, -0.183545, 0.978867,
		0.353761, -0.912872, -0.203759,
		0.930979, 0.364659, -0.017386,
		36.283710, 34.387527, 19.161324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072510, 33.577232, 19.534561>,  <35.632027, 34.132267, 19.173494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072510, 33.577232, 19.534561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250359, 33.935501, 19.538343>,  <36.357067, 34.150463, 19.540613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250359, 33.935501, 19.538343>,  <36.072510, 33.577232, 19.534561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250359, 33.935501, 19.538343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205424, -0.112237, 0.972216,
		0.871845, -0.430324, -0.233895,
		0.444619, 0.895670, 0.009454,
		36.383743, 34.204201, 19.541180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627083, 33.386219, 19.974615>,  <36.072510, 33.577232, 19.534561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627083, 33.386219, 19.974615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607986, 33.785713, 19.981028>,  <36.596531, 34.025410, 19.984875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607986, 33.785713, 19.981028>,  <36.627083, 33.386219, 19.974615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607986, 33.785713, 19.981028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309459, -0.000472, 0.950913,
		0.949714, 0.050354, -0.309044,
		-0.047736, 0.998731, 0.016031,
		36.593666, 34.085331, 19.985836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215832, 33.724926, 20.228745>,  <36.627083, 33.386219, 19.974615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215832, 33.724926, 20.228745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953110, 34.022324, 20.279049>,  <36.795475, 34.200764, 20.309233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953110, 34.022324, 20.279049>,  <37.215832, 33.724926, 20.228745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953110, 34.022324, 20.279049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143112, -0.040840, 0.988863,
		0.740351, 0.667493, -0.079579,
		-0.656810, 0.743495, 0.125762,
		36.756065, 34.245373, 20.316778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587524, 34.099541, 20.605642>,  <37.215832, 33.724926, 20.228745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587524, 34.099541, 20.605642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.204407, 34.202602, 20.656622>,  <36.974537, 34.264439, 20.687210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.204407, 34.202602, 20.656622>,  <37.587524, 34.099541, 20.605642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204407, 34.202602, 20.656622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086650, -0.163961, 0.982654,
		0.274084, 0.952223, 0.134715,
		-0.957794, 0.257657, 0.127449,
		36.917068, 34.279900, 20.694857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525192, 34.577232, 21.142231>,  <37.587524, 34.099541, 20.605642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525192, 34.577232, 21.142231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176418, 34.381996, 21.126787>,  <36.967152, 34.264854, 21.117521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176418, 34.381996, 21.126787>,  <37.525192, 34.577232, 21.142231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176418, 34.381996, 21.126787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085154, -0.228832, 0.969734,
		-0.482154, 0.842261, 0.241090,
		-0.871938, -0.488091, -0.038611,
		36.914837, 34.235569, 21.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979477, 34.921822, 21.593355>,  <37.525192, 34.577232, 21.142231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979477, 34.921822, 21.593355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850578, 34.544807, 21.558056>,  <36.773239, 34.318600, 21.536877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850578, 34.544807, 21.558056>,  <36.979477, 34.921822, 21.593355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850578, 34.544807, 21.558056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033344, -0.104466, 0.993969,
		-0.946067, 0.317363, 0.065092,
		-0.322249, -0.942532, -0.088250,
		36.753902, 34.262047, 21.531582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756424, 34.724369, 22.225458>,  <36.979477, 34.921822, 21.593355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756424, 34.724369, 22.225458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720898, 34.359196, 22.066128>,  <36.699581, 34.140091, 21.970530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720898, 34.359196, 22.066128>,  <36.756424, 34.724369, 22.225458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720898, 34.359196, 22.066128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017786, -0.401295, 0.915776,
		-0.995889, 0.074254, 0.051880,
		-0.088819, -0.912934, -0.398324,
		36.694252, 34.085316, 21.946630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105824, 34.363831, 22.481983>,  <36.756424, 34.724369, 22.225458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105824, 34.363831, 22.481983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362671, 34.081036, 22.363424>,  <36.516777, 33.911358, 22.292290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362671, 34.081036, 22.363424>,  <36.105824, 34.363831, 22.481983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362671, 34.081036, 22.363424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153948, -0.497678, 0.853590,
		-0.750992, -0.502473, -0.428406,
		0.642115, -0.706992, -0.296398,
		36.555305, 33.868938, 22.274506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845314, 33.786808, 22.686441>,  <36.105824, 34.363831, 22.481983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845314, 33.786808, 22.686441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236305, 33.704556, 22.667433>,  <36.470898, 33.655205, 22.656027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236305, 33.704556, 22.667433>,  <35.845314, 33.786808, 22.686441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236305, 33.704556, 22.667433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026890, -0.344685, 0.938333,
		-0.209326, -0.915920, -0.342451,
		0.977476, -0.205627, -0.047522,
		36.529549, 33.642868, 22.653175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857712, 33.102875, 22.983341>,  <35.845314, 33.786808, 22.686441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857712, 33.102875, 22.983341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228241, 33.252495, 23.001266>,  <36.450558, 33.342266, 23.012022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228241, 33.252495, 23.001266>,  <35.857712, 33.102875, 22.983341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228241, 33.252495, 23.001266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033234, -0.199629, 0.979308,
		0.375254, -0.905669, -0.197353,
		0.926326, 0.374048, 0.044813,
		36.506138, 33.364708, 23.014709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233566, 32.596085, 23.315557>,  <35.857712, 33.102875, 22.983341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233566, 32.596085, 23.315557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453369, 32.927814, 23.356083>,  <36.585251, 33.126850, 23.380398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453369, 32.927814, 23.356083>,  <36.233566, 32.596085, 23.315557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453369, 32.927814, 23.356083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177376, -0.234298, 0.955846,
		0.816442, -0.507275, -0.275851,
		0.549509, 0.829322, 0.101312,
		36.618221, 33.176613, 23.386477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918968, 32.448265, 23.658285>,  <36.233566, 32.596085, 23.315557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918968, 32.448265, 23.658285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831493, 32.830158, 23.738939>,  <36.779007, 33.059296, 23.787331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831493, 32.830158, 23.738939>,  <36.918968, 32.448265, 23.658285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831493, 32.830158, 23.738939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107959, -0.181694, 0.977411,
		0.969804, 0.235517, -0.063338,
		-0.218689, 0.954735, 0.201634,
		36.765888, 33.116577, 23.799429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343605, 32.590698, 24.278145>,  <36.918968, 32.448265, 23.658285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343605, 32.590698, 24.278145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074070, 32.886009, 24.266260>,  <36.912350, 33.063194, 24.259130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074070, 32.886009, 24.266260>,  <37.343605, 32.590698, 24.278145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074070, 32.886009, 24.266260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067760, -0.021706, 0.997465,
		0.735763, 0.674146, 0.064653,
		-0.673841, 0.738279, -0.029710,
		36.871918, 33.107494, 24.257347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.309132, 31.855886, 27.923607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115376, 32.187428, 28.035585>,  <40.999123, 32.386353, 28.102772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115376, 32.187428, 28.035585>,  <41.309132, 31.855886, 27.923607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115376, 32.187428, 28.035585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345971, -0.112419, 0.931486,
		0.803534, 0.548059, -0.232304,
		-0.484393, 0.828851, 0.279945,
		40.970058, 32.436081, 28.119568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804226, 32.341312, 28.278875>,  <41.309132, 31.855886, 27.923607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804226, 32.341312, 28.278875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.424129, 32.419781, 28.375668>,  <41.196072, 32.466862, 28.433743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.424129, 32.419781, 28.375668>,  <41.804226, 32.341312, 28.278875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424129, 32.419781, 28.375668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221939, -0.118744, 0.967803,
		0.218593, 0.973352, 0.069296,
		-0.950242, 0.196175, 0.241981,
		41.139057, 32.478634, 28.448261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873993, 32.766762, 28.829506>,  <41.804226, 32.341312, 28.278875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873993, 32.766762, 28.829506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492188, 32.650185, 28.854670>,  <41.263103, 32.580238, 28.869768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492188, 32.650185, 28.854670>,  <41.873993, 32.766762, 28.829506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492188, 32.650185, 28.854670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042890, 0.074585, 0.996292,
		-0.295053, 0.953677, -0.058693,
		-0.954518, -0.291441, 0.062910,
		41.205833, 32.562752, 28.873543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674706, 33.130848, 29.406225>,  <41.873993, 32.766762, 28.829506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674706, 33.130848, 29.406225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391773, 32.850296, 29.371021>,  <41.222012, 32.681965, 29.349899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391773, 32.850296, 29.371021>,  <41.674706, 33.130848, 29.406225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391773, 32.850296, 29.371021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187555, 0.066176, 0.980022,
		-0.681543, 0.709710, -0.178356,
		-0.707334, -0.701379, -0.088008,
		41.179573, 32.639881, 29.344618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147377, 33.373333, 29.818871>,  <41.674706, 33.130848, 29.406225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147377, 33.373333, 29.818871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071892, 32.982719, 29.777359>,  <41.026600, 32.748352, 29.752451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071892, 32.982719, 29.777359>,  <41.147377, 33.373333, 29.818871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071892, 32.982719, 29.777359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229913, -0.058809, 0.971433,
		-0.954740, 0.207181, -0.213420,
		-0.188711, -0.976534, -0.103781,
		41.015278, 32.689758, 29.746225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637978, 33.383324, 30.175547>,  <41.147377, 33.373333, 29.818871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637978, 33.383324, 30.175547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.703564, 32.989479, 30.151352>,  <40.742916, 32.753174, 30.136835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.703564, 32.989479, 30.151352>,  <40.637978, 33.383324, 30.175547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703564, 32.989479, 30.151352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359355, -0.116721, 0.925873,
		-0.918684, -0.130076, -0.372962,
		0.163966, -0.984610, -0.060486,
		40.752754, 32.694096, 30.133205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069759, 33.028564, 30.446821>,  <40.637978, 33.383324, 30.175547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069759, 33.028564, 30.446821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355034, 32.749207, 30.470825>,  <40.526199, 32.581593, 30.485228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355034, 32.749207, 30.470825>,  <40.069759, 33.028564, 30.446821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355034, 32.749207, 30.470825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190157, -0.110363, 0.975531,
		-0.674685, -0.707150, -0.211515,
		0.713190, -0.698397, 0.060009,
		40.568993, 32.539688, 30.488829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751110, 32.435745, 30.743729>,  <40.069759, 33.028564, 30.446821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751110, 32.435745, 30.743729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141117, 32.392422, 30.821310>,  <40.375122, 32.366428, 30.867859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141117, 32.392422, 30.821310>,  <39.751110, 32.435745, 30.743729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141117, 32.392422, 30.821310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215015, -0.240703, 0.946483,
		-0.055826, -0.964537, -0.257977,
		0.975014, -0.108307, 0.193952,
		40.433620, 32.359928, 30.879496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823063, 31.860615, 31.231459>,  <39.751110, 32.435745, 30.743729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823063, 31.860615, 31.231459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151321, 32.088036, 31.254391>,  <40.348278, 32.224487, 31.268150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151321, 32.088036, 31.254391>,  <39.823063, 31.860615, 31.231459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151321, 32.088036, 31.254391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030412, -0.143641, 0.989162,
		0.570625, -0.810010, -0.135169,
		0.820648, 0.568551, 0.057331,
		40.397514, 32.258602, 31.271589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315567, 31.401245, 31.691082>,  <39.823063, 31.860615, 31.231459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315567, 31.401245, 31.691082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.436737, 31.781834, 31.712757>,  <40.509438, 32.010185, 31.725763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.436737, 31.781834, 31.712757>,  <40.315567, 31.401245, 31.691082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436737, 31.781834, 31.712757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019736, -0.063111, 0.997811,
		0.952810, -0.301194, -0.037897,
		0.302926, 0.951472, 0.054189,
		40.527615, 32.067276, 31.729013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937222, 31.393192, 32.161537>,  <40.315567, 31.401245, 31.691082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937222, 31.393192, 32.161537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811169, 31.772810, 32.160641>,  <40.735538, 32.000580, 32.160103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811169, 31.772810, 32.160641>,  <40.937222, 31.393192, 32.161537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811169, 31.772810, 32.160641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252557, 0.086135, 0.963740,
		0.914826, 0.303140, -0.266832,
		-0.315132, 0.949045, -0.002238,
		40.716629, 32.057522, 32.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277061, 31.790154, 32.691578>,  <40.937222, 31.393192, 32.161537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277061, 31.790154, 32.691578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996105, 32.067951, 32.629200>,  <40.827530, 32.234631, 32.591774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996105, 32.067951, 32.629200>,  <41.277061, 31.790154, 32.691578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996105, 32.067951, 32.629200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026118, 0.193795, 0.980695,
		0.711310, 0.692906, -0.117981,
		-0.702393, 0.694496, -0.155946,
		40.785389, 32.276299, 32.582417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424152, 32.503571, 33.070297>,  <41.277061, 31.790154, 32.691578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424152, 32.503571, 33.070297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040905, 32.407677, 33.007637>,  <40.810955, 32.350140, 32.970043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040905, 32.407677, 33.007637>,  <41.424152, 32.503571, 33.070297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040905, 32.407677, 33.007637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134721, -0.105375, 0.985265,
		-0.252707, 0.965104, 0.068664,
		-0.958118, -0.239733, -0.156648,
		40.753471, 32.335758, 32.960644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702648, 33.048233, 33.490318>,  <41.424152, 32.503571, 33.070297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702648, 33.048233, 33.490318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855446, 33.020214, 33.858921>,  <41.947124, 33.003403, 34.080082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855446, 33.020214, 33.858921>,  <41.702648, 33.048233, 33.490318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855446, 33.020214, 33.858921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548077, -0.820020, 0.164860,
		0.744104, -0.568031, -0.351638,
		0.381996, -0.070052, 0.921505,
		41.970043, 32.999199, 34.135372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623322, 33.885986, 33.563251>,  <41.702648, 33.048233, 33.490318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623322, 33.885986, 33.563251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793964, 34.184994, 33.766907>,  <41.896351, 34.364399, 33.889099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793964, 34.184994, 33.766907>,  <41.623322, 33.885986, 33.563251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793964, 34.184994, 33.766907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097372, 0.521705, -0.847551,
		-0.899182, 0.411145, 0.149774,
		0.426604, 0.747519, 0.509141,
		41.921947, 34.409248, 33.919647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370052, 34.359901, 33.212250>,  <41.623322, 33.885986, 33.563251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370052, 34.359901, 33.212250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.645409, 34.552753, 33.429016>,  <41.810623, 34.668465, 33.559078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.645409, 34.552753, 33.429016>,  <41.370052, 34.359901, 33.212250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645409, 34.552753, 33.429016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147809, 0.638200, -0.755548,
		-0.710124, 0.600210, 0.368066,
		0.688387, 0.482129, 0.541918,
		41.851925, 34.697392, 33.591591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143261, 35.092613, 33.405521>,  <41.370052, 34.359901, 33.212250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143261, 35.092613, 33.405521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542007, 35.066925, 33.387043>,  <41.781254, 35.051514, 33.375957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542007, 35.066925, 33.387043>,  <41.143261, 35.092613, 33.405521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542007, 35.066925, 33.387043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035091, 0.882306, -0.469366,
		0.070897, 0.466274, 0.881795,
		0.996866, -0.064220, -0.046191,
		41.841068, 35.047661, 33.373184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354874, 35.783741, 33.253468>,  <41.143261, 35.092613, 33.405521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354874, 35.783741, 33.253468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695297, 35.583569, 33.189873>,  <41.899551, 35.463467, 33.151718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695297, 35.583569, 33.189873>,  <41.354874, 35.783741, 33.253468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695297, 35.583569, 33.189873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233781, 0.632247, -0.738655,
		0.470160, 0.591469, 0.655068,
		0.851056, -0.500428, -0.158983,
		41.950615, 35.433441, 33.142178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739468, 36.277390, 33.026886>,  <41.354874, 35.783741, 33.253468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739468, 36.277390, 33.026886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981541, 35.984287, 32.902424>,  <42.126785, 35.808426, 32.827747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981541, 35.984287, 32.902424>,  <41.739468, 36.277390, 33.026886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981541, 35.984287, 32.902424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381509, 0.610000, -0.694515,
		0.698714, 0.301604, 0.648717,
		0.605186, -0.732759, -0.311151,
		42.163097, 35.764462, 32.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467201, 36.487076, 32.912228>,  <41.739468, 36.277390, 33.026886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467201, 36.487076, 32.912228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.424057, 36.175793, 32.664757>,  <42.398170, 35.989021, 32.516273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.424057, 36.175793, 32.664757>,  <42.467201, 36.487076, 32.912228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424057, 36.175793, 32.664757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478383, 0.504894, -0.718493,
		0.871502, -0.373459, 0.317824,
		-0.107860, -0.778210, -0.618672,
		42.391701, 35.942329, 32.479156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094124, 36.399647, 32.499115>,  <42.467201, 36.487076, 32.912228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094124, 36.399647, 32.499115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850471, 36.165176, 32.285442>,  <42.704281, 36.024494, 32.157238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850471, 36.165176, 32.285442>,  <43.094124, 36.399647, 32.499115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850471, 36.165176, 32.285442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558938, 0.160533, -0.813522,
		0.562622, -0.794119, 0.229851,
		-0.609134, -0.586177, -0.534183,
		42.667732, 35.989323, 32.125187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515606, 35.845158, 32.050041>,  <43.094124, 36.399647, 32.499115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515606, 35.845158, 32.050041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155773, 35.865181, 31.876490>,  <42.939873, 35.877197, 31.772358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155773, 35.865181, 31.876490>,  <43.515606, 35.845158, 32.050041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155773, 35.865181, 31.876490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436752, 0.108188, -0.893053,
		0.002230, -0.992869, -0.119189,
		-0.899579, 0.050064, -0.433879,
		42.885899, 35.880199, 31.746326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460339, 35.323891, 31.521673>,  <43.515606, 35.845158, 32.050041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460339, 35.323891, 31.521673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178947, 35.589291, 31.419785>,  <43.010113, 35.748531, 31.358652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178947, 35.589291, 31.419785>,  <43.460339, 35.323891, 31.521673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178947, 35.589291, 31.419785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257024, -0.096638, -0.961561,
		-0.662616, -0.741905, -0.102554,
		-0.703476, 0.663505, -0.254721,
		42.967903, 35.788342, 31.343369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152142, 35.074692, 30.885841>,  <43.460339, 35.323891, 31.521673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152142, 35.074692, 30.885841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042694, 35.458683, 30.909763>,  <42.977024, 35.689075, 30.924116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042694, 35.458683, 30.909763>,  <43.152142, 35.074692, 30.885841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042694, 35.458683, 30.909763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043830, 0.074558, -0.996253,
		-0.960838, -0.269976, -0.062476,
		-0.273622, 0.959976, 0.059805,
		42.960606, 35.746677, 30.927706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647102, 35.157093, 30.369543>,  <43.152142, 35.074692, 30.885841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647102, 35.157093, 30.369543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763466, 35.529610, 30.457251>,  <42.833282, 35.753120, 30.509874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763466, 35.529610, 30.457251>,  <42.647102, 35.157093, 30.369543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763466, 35.529610, 30.457251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135970, 0.186611, -0.972979,
		-0.947041, 0.312858, -0.072341,
		0.290905, 0.931287, 0.219268,
		42.850739, 35.808994, 30.523031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052696, 35.594757, 30.142277>,  <42.647102, 35.157093, 30.369543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052696, 35.594757, 30.142277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404716, 35.783955, 30.159180>,  <42.615929, 35.897472, 30.169321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404716, 35.783955, 30.159180>,  <42.052696, 35.594757, 30.142277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404716, 35.783955, 30.159180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054175, 0.188403, -0.980597,
		-0.471779, 0.860686, 0.191429,
		0.880051, 0.472995, 0.042257,
		42.668732, 35.925854, 30.171856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932392, 36.026909, 29.690264>,  <42.052696, 35.594757, 30.142277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932392, 36.026909, 29.690264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329361, 36.043503, 29.736530>,  <42.567543, 36.053459, 29.764290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329361, 36.043503, 29.736530>,  <41.932392, 36.026909, 29.690264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329361, 36.043503, 29.736530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106541, 0.178483, -0.978158,
		-0.061227, 0.983068, 0.172710,
		0.992421, 0.041489, 0.115665,
		42.627087, 36.055950, 29.771231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168949, 36.624638, 29.253683>,  <41.932392, 36.026909, 29.690264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168949, 36.624638, 29.253683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.468658, 36.368141, 29.319889>,  <42.648483, 36.214241, 29.359613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.468658, 36.368141, 29.319889>,  <42.168949, 36.624638, 29.253683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468658, 36.368141, 29.319889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170099, -0.055199, -0.983880,
		0.640043, 0.765349, 0.067715,
		0.749274, -0.641244, 0.165515,
		42.693439, 36.175770, 29.369543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491383, 37.312229, 29.220592>,  <42.168949, 36.624638, 29.253683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491383, 37.312229, 29.220592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257698, 37.636497, 29.205034>,  <42.117489, 37.831059, 29.195700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257698, 37.636497, 29.205034>,  <42.491383, 37.312229, 29.220592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257698, 37.636497, 29.205034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074806, -0.006065, 0.997180,
		0.808150, 0.585469, 0.064186,
		-0.584207, 0.810672, -0.038895,
		42.082436, 37.879700, 29.193365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707588, 37.771946, 29.819883>,  <42.491383, 37.312229, 29.220592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707588, 37.771946, 29.819883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325684, 37.858925, 29.738750>,  <42.096539, 37.911114, 29.690071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325684, 37.858925, 29.738750>,  <42.707588, 37.771946, 29.819883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325684, 37.858925, 29.738750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240385, -0.162888, 0.956913,
		0.175041, 0.962384, 0.207791,
		-0.954765, 0.217449, -0.202830,
		42.039253, 37.924160, 29.677902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356911, 37.996666, 30.545744>,  <42.707588, 37.771946, 29.819883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356911, 37.996666, 30.545744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010628, 37.972687, 30.346966>,  <41.802856, 37.958302, 30.227699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010628, 37.972687, 30.346966>,  <42.356911, 37.996666, 30.545744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010628, 37.972687, 30.346966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500180, 0.065415, 0.863447,
		-0.019251, 0.996056, -0.086614,
		-0.865708, -0.059945, -0.496947,
		41.750916, 37.954704, 30.197882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859783, 38.561844, 30.904060>,  <42.356911, 37.996666, 30.545744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859783, 38.561844, 30.904060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634930, 38.301796, 30.699570>,  <41.500019, 38.145767, 30.576876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634930, 38.301796, 30.699570>,  <41.859783, 38.561844, 30.904060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634930, 38.301796, 30.699570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737383, 0.114042, 0.665779,
		-0.374533, 0.751226, -0.543492,
		-0.562131, -0.650118, -0.511229,
		41.466290, 38.106762, 30.546202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197128, 38.909534, 30.797207>,  <41.859783, 38.561844, 30.904060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197128, 38.909534, 30.797207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170269, 38.510784, 30.813841>,  <41.154156, 38.271534, 30.823822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170269, 38.510784, 30.813841>,  <41.197128, 38.909534, 30.797207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170269, 38.510784, 30.813841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748086, 0.077879, 0.659016,
		-0.660196, 0.013142, -0.750979,
		-0.067146, -0.996876, 0.041584,
		41.150124, 38.211720, 30.826317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400051, 38.793087, 30.855442>,  <41.197128, 38.909534, 30.797207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400051, 38.793087, 30.855442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649956, 38.502968, 30.971106>,  <40.799900, 38.328896, 31.040504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649956, 38.502968, 30.971106>,  <40.400051, 38.793087, 30.855442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649956, 38.502968, 30.971106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554871, -0.151859, 0.817959,
		-0.549354, -0.671476, -0.497323,
		0.624763, -0.725299, 0.289158,
		40.837383, 38.285378, 31.057854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995857, 38.273285, 31.064447>,  <40.400051, 38.793087, 30.855442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995857, 38.273285, 31.064447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318546, 38.167580, 31.275864>,  <40.512161, 38.104156, 31.402714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318546, 38.167580, 31.275864>,  <39.995857, 38.273285, 31.064447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318546, 38.167580, 31.275864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566028, -0.088680, 0.819602,
		-0.169726, -0.960363, -0.221125,
		0.806725, -0.264271, 0.528541,
		40.560566, 38.088299, 31.434427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854584, 37.656387, 31.458998>,  <39.995857, 38.273285, 31.064447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854584, 37.656387, 31.458998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151684, 37.849693, 31.644373>,  <40.329945, 37.965679, 31.755598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151684, 37.849693, 31.644373>,  <39.854584, 37.656387, 31.458998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151684, 37.849693, 31.644373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400030, -0.234756, 0.885926,
		0.536934, -0.843411, 0.018956,
		0.742750, 0.483267, 0.463438,
		40.374508, 37.994675, 31.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063358, 37.288254, 31.943014>,  <39.854584, 37.656387, 31.458998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063358, 37.288254, 31.943014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227493, 37.623188, 32.087505>,  <40.325974, 37.824150, 32.174198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227493, 37.623188, 32.087505>,  <40.063358, 37.288254, 31.943014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227493, 37.623188, 32.087505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461689, -0.150844, 0.874122,
		0.786424, -0.525463, 0.324693,
		0.410341, 0.837338, 0.361228,
		40.350597, 37.874390, 32.195873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461758, 37.079807, 32.505726>,  <40.063358, 37.288254, 31.943014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461758, 37.079807, 32.505726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396278, 37.469406, 32.568378>,  <40.356991, 37.703167, 32.605968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396278, 37.469406, 32.568378>,  <40.461758, 37.079807, 32.505726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396278, 37.469406, 32.568378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449555, -0.214982, 0.866996,
		0.878124, 0.071511, 0.473057,
		-0.163699, 0.973996, 0.156633,
		40.347168, 37.761604, 32.615368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708195, 37.190372, 33.121426>,  <40.461758, 37.079807, 32.505726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708195, 37.190372, 33.121426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460499, 37.500011, 33.068783>,  <40.311882, 37.685795, 33.037197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460499, 37.500011, 33.068783>,  <40.708195, 37.190372, 33.121426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460499, 37.500011, 33.068783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251054, -0.036373, 0.967289,
		0.743988, 0.632022, 0.216864,
		-0.619236, 0.774096, -0.131610,
		40.274727, 37.732239, 33.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849358, 37.612137, 33.737419>,  <40.708195, 37.190372, 33.121426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849358, 37.612137, 33.737419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493122, 37.739254, 33.607273>,  <40.279381, 37.815525, 33.529186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493122, 37.739254, 33.607273>,  <40.849358, 37.612137, 33.737419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493122, 37.739254, 33.607273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299878, 0.127561, 0.945411,
		0.341945, 0.939542, -0.018306,
		-0.890588, 0.317789, -0.325366,
		40.225945, 37.834591, 33.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.705204, 38.005451, 25.704905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320049, 38.109848, 25.677359>,  <42.088959, 38.172485, 25.660831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320049, 38.109848, 25.677359>,  <42.705204, 38.005451, 25.704905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320049, 38.109848, 25.677359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020517, 0.325157, 0.945437,
		0.269141, 0.908932, -0.318443,
		-0.962882, 0.260989, -0.068864,
		42.031185, 38.188145, 25.656700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664417, 38.623005, 26.100885>,  <42.705204, 38.005451, 25.704905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664417, 38.623005, 26.100885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296680, 38.468353, 26.071703>,  <42.076038, 38.375561, 26.054193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296680, 38.468353, 26.071703>,  <42.664417, 38.623005, 26.100885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296680, 38.468353, 26.071703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153535, 0.181807, 0.971274,
		-0.362260, 0.904137, -0.226505,
		-0.919345, -0.386631, -0.072956,
		42.020878, 38.352364, 26.049816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110481, 39.180088, 26.312920>,  <42.664417, 38.623005, 26.100885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110481, 39.180088, 26.312920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976719, 38.807442, 26.369860>,  <41.896461, 38.583855, 26.404024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976719, 38.807442, 26.369860>,  <42.110481, 39.180088, 26.312920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976719, 38.807442, 26.369860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100133, 0.185313, 0.977564,
		-0.937094, 0.312652, -0.155255,
		-0.334408, -0.931616, 0.142349,
		41.876396, 38.527958, 26.412565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620499, 39.322689, 26.830116>,  <42.110481, 39.180088, 26.312920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620499, 39.322689, 26.830116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664925, 38.925205, 26.835934>,  <41.691582, 38.686714, 26.839424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664925, 38.925205, 26.835934>,  <41.620499, 39.322689, 26.830116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664925, 38.925205, 26.835934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155190, 0.031798, 0.987373,
		-0.981621, -0.107406, 0.157745,
		0.111065, -0.993707, 0.014545,
		41.698246, 38.627094, 26.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162750, 39.107716, 27.343836>,  <41.620499, 39.322689, 26.830116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162750, 39.107716, 27.343836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396313, 38.783836, 27.320360>,  <41.536449, 38.589508, 27.306274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396313, 38.783836, 27.320360>,  <41.162750, 39.107716, 27.343836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396313, 38.783836, 27.320360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027840, -0.052277, 0.998244,
		-0.811342, -0.584518, -0.007983,
		0.583909, -0.809695, -0.058688,
		41.571487, 38.540928, 27.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012165, 38.632202, 27.799427>,  <41.162750, 39.107716, 27.343836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012165, 38.632202, 27.799427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354416, 38.436501, 27.731865>,  <41.559769, 38.319080, 27.691328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354416, 38.436501, 27.731865>,  <41.012165, 38.632202, 27.799427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354416, 38.436501, 27.731865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102467, -0.159759, 0.981824,
		-0.507343, -0.857385, -0.086562,
		0.855630, -0.489252, -0.168906,
		41.611107, 38.289726, 27.681192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959606, 37.938133, 28.065750>,  <41.012165, 38.632202, 27.799427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959606, 37.938133, 28.065750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348198, 38.031002, 28.046461>,  <41.581352, 38.086723, 28.034887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348198, 38.031002, 28.046461>,  <40.959606, 37.938133, 28.065750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348198, 38.031002, 28.046461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131208, -0.356916, 0.924876,
		0.197520, -0.904824, -0.377199,
		0.971479, 0.232173, -0.048222,
		41.639641, 38.100655, 28.031994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374001, 37.310638, 28.354650>,  <40.959606, 37.938133, 28.065750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374001, 37.310638, 28.354650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587162, 37.648884, 28.367004>,  <41.715057, 37.851830, 28.374416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587162, 37.648884, 28.367004>,  <41.374001, 37.310638, 28.354650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587162, 37.648884, 28.367004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375506, -0.269036, 0.886913,
		0.758295, -0.461040, -0.460902,
		0.532902, 0.845613, 0.030885,
		41.747032, 37.902569, 28.376270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073483, 37.178082, 28.537910>,  <41.374001, 37.310638, 28.354650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073483, 37.178082, 28.537910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013474, 37.555363, 28.656473>,  <41.977467, 37.781731, 28.727612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013474, 37.555363, 28.656473>,  <42.073483, 37.178082, 28.537910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013474, 37.555363, 28.656473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325327, -0.236011, 0.915675,
		0.933625, 0.233801, -0.271444,
		-0.150022, 0.943205, 0.296408,
		41.968468, 37.838326, 28.745396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844349, 36.856445, 28.749506>,  <42.073483, 37.178082, 28.537910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844349, 36.856445, 28.749506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934990, 36.481441, 28.855133>,  <42.989376, 36.256439, 28.918509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934990, 36.481441, 28.855133>,  <42.844349, 36.856445, 28.749506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934990, 36.481441, 28.855133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060278, -0.257101, -0.964503,
		0.972120, 0.234479, -0.001750,
		0.226605, -0.937507, 0.264067,
		43.002972, 36.200188, 28.934353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523113, 36.714870, 28.558170>,  <42.844349, 36.856445, 28.749506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523113, 36.714870, 28.558170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335361, 36.363483, 28.593903>,  <43.222710, 36.152653, 28.615341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335361, 36.363483, 28.593903>,  <43.523113, 36.714870, 28.558170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335361, 36.363483, 28.593903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280476, -0.244254, -0.928263,
		0.837269, -0.410649, 0.361036,
		-0.469375, -0.878469, 0.089329,
		43.194550, 36.099941, 28.620701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965443, 36.272015, 28.248665>,  <43.523113, 36.714870, 28.558170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965443, 36.272015, 28.248665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635124, 36.047245, 28.267845>,  <43.436932, 35.912384, 28.279354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635124, 36.047245, 28.267845>,  <43.965443, 36.272015, 28.248665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635124, 36.047245, 28.267845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131285, -0.274231, -0.952660,
		0.548469, -0.780412, 0.300232,
		-0.825800, -0.561921, 0.047951,
		43.387383, 35.878670, 28.282230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173569, 35.627293, 27.879807>,  <43.965443, 36.272015, 28.248665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173569, 35.627293, 27.879807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773834, 35.613205, 27.883659>,  <43.533993, 35.604752, 27.885971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773834, 35.613205, 27.883659>,  <44.173569, 35.627293, 27.879807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773834, 35.613205, 27.883659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005356, -0.402367, -0.915463,
		0.036121, -0.914801, 0.402287,
		-0.999333, -0.035222, 0.009635,
		43.474033, 35.602638, 27.886549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026939, 34.901329, 27.781487>,  <44.173569, 35.627293, 27.879807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026939, 34.901329, 27.781487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708809, 35.121647, 27.680223>,  <43.517933, 35.253838, 27.619467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708809, 35.121647, 27.680223>,  <44.026939, 34.901329, 27.781487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708809, 35.121647, 27.680223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147202, -0.580602, -0.800770,
		-0.588058, -0.599595, 0.542839,
		-0.795311, 0.550806, -0.253167,
		43.470211, 35.286884, 27.604277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588509, 34.398041, 27.619041>,  <44.026939, 34.901329, 27.781487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588509, 34.398041, 27.619041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438927, 34.731808, 27.457096>,  <43.349178, 34.932068, 27.359928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438927, 34.731808, 27.457096>,  <43.588509, 34.398041, 27.619041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438927, 34.731808, 27.457096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327538, -0.527223, -0.784063,
		-0.867687, -0.160592, 0.470457,
		-0.373950, 0.834414, -0.404864,
		43.326740, 34.982132, 27.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879154, 34.248882, 27.323145>,  <43.588509, 34.398041, 27.619041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879154, 34.248882, 27.323145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998943, 34.581177, 27.135443>,  <43.070816, 34.780552, 27.022821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998943, 34.581177, 27.135443>,  <42.879154, 34.248882, 27.323145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998943, 34.581177, 27.135443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446947, -0.312378, -0.838247,
		-0.842943, 0.460766, 0.277744,
		0.299474, 0.830731, -0.469255,
		43.088787, 34.830395, 26.994667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245319, 34.508705, 26.968565>,  <42.879154, 34.248882, 27.323145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245319, 34.508705, 26.968565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587414, 34.627857, 26.798937>,  <42.792671, 34.699348, 26.697161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587414, 34.627857, 26.798937>,  <42.245319, 34.508705, 26.968565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587414, 34.627857, 26.798937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383859, -0.185633, -0.904540,
		-0.348163, 0.936381, -0.044417,
		0.855240, 0.297878, -0.424068,
		42.843987, 34.717220, 26.671717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013847, 35.012978, 26.533823>,  <42.245319, 34.508705, 26.968565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013847, 35.012978, 26.533823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379059, 34.902222, 26.414021>,  <42.598186, 34.835770, 26.342138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379059, 34.902222, 26.414021>,  <42.013847, 35.012978, 26.533823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379059, 34.902222, 26.414021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344718, -0.131286, -0.929480,
		0.218043, 0.951891, -0.215317,
		0.913032, -0.276890, -0.299508,
		42.652969, 34.819153, 26.324169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237919, 35.537056, 25.914370>,  <42.013847, 35.012978, 26.533823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237919, 35.537056, 25.914370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456142, 35.203068, 25.885542>,  <42.587078, 35.002674, 25.868246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456142, 35.203068, 25.885542>,  <42.237919, 35.537056, 25.914370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456142, 35.203068, 25.885542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346494, -0.146423, -0.926554,
		0.763090, 0.530462, -0.369194,
		0.545560, -0.834967, -0.072069,
		42.619812, 34.952579, 25.863922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347286, 35.544086, 25.314039>,  <42.237919, 35.537056, 25.914370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347286, 35.544086, 25.314039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499676, 35.180321, 25.380766>,  <42.591110, 34.962063, 25.420801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499676, 35.180321, 25.380766>,  <42.347286, 35.544086, 25.314039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499676, 35.180321, 25.380766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186945, -0.252463, -0.949376,
		0.905489, 0.330502, -0.266191,
		0.380974, -0.909413, 0.166817,
		42.613968, 34.907497, 25.430811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607601, 35.495129, 24.622704>,  <42.347286, 35.544086, 25.314039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607601, 35.495129, 24.622704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597843, 35.134724, 24.795944>,  <42.591988, 34.918480, 24.899889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597843, 35.134724, 24.795944>,  <42.607601, 35.495129, 24.622704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597843, 35.134724, 24.795944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163028, -0.423844, -0.890942,
		0.986320, -0.092343, -0.136550,
		-0.024396, -0.901015, 0.433100,
		42.590523, 34.864418, 24.925875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077007, 35.127972, 24.305099>,  <42.607601, 35.495129, 24.622704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077007, 35.127972, 24.305099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822906, 34.864559, 24.466492>,  <42.670448, 34.706512, 24.563328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822906, 34.864559, 24.466492>,  <43.077007, 35.127972, 24.305099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822906, 34.864559, 24.466492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269215, -0.300851, -0.914883,
		0.723866, -0.689802, 0.013829,
		-0.635249, -0.658530, 0.403481,
		42.632332, 34.667000, 24.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375538, 34.543186, 24.056383>,  <43.077007, 35.127972, 24.305099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375538, 34.543186, 24.056383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993530, 34.477768, 24.155336>,  <42.764328, 34.438519, 24.214708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993530, 34.477768, 24.155336>,  <43.375538, 34.543186, 24.056383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993530, 34.477768, 24.155336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167303, -0.391646, -0.904778,
		0.244858, -0.905465, 0.346667,
		-0.955015, -0.163544, 0.247384,
		42.707027, 34.428703, 24.229551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.332016, 36.862350, 23.388062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686996, 36.693844, 23.462862>,  <34.899986, 36.592739, 23.507742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686996, 36.693844, 23.462862>,  <34.332016, 36.862350, 23.388062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686996, 36.693844, 23.462862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244650, -0.086698, 0.965728,
		-0.390612, -0.902785, -0.180002,
		0.887451, -0.421262, 0.187001,
		34.953232, 36.567467, 23.518963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203419, 36.477119, 23.920906>,  <34.332016, 36.862350, 23.388062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203419, 36.477119, 23.920906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603237, 36.470425, 23.930902>,  <34.843128, 36.466408, 23.936899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603237, 36.470425, 23.930902>,  <34.203419, 36.477119, 23.920906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603237, 36.470425, 23.930902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028455, -0.257066, 0.965975,
		-0.009744, -0.966249, -0.257426,
		0.999548, -0.016737, 0.024990,
		34.903103, 36.465405, 23.938400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276951, 35.906063, 24.353031>,  <34.203419, 36.477119, 23.920906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276951, 35.906063, 24.353031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603836, 36.135826, 24.371902>,  <34.799965, 36.273685, 24.383226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603836, 36.135826, 24.371902>,  <34.276951, 35.906063, 24.353031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603836, 36.135826, 24.371902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014993, -0.103020, 0.994566,
		0.576146, -0.812062, -0.092801,
		0.817209, 0.574407, 0.047180,
		34.848999, 36.308147, 24.386057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780033, 35.432659, 24.623892>,  <34.276951, 35.906063, 24.353031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780033, 35.432659, 24.623892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910973, 35.806885, 24.676903>,  <34.989536, 36.031422, 24.708710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910973, 35.806885, 24.676903>,  <34.780033, 35.432659, 24.623892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910973, 35.806885, 24.676903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316047, -0.240586, 0.917732,
		0.890482, -0.258533, -0.374437,
		0.327348, 0.935563, 0.132529,
		35.009178, 36.087555, 24.716661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509464, 35.476292, 24.779306>,  <34.780033, 35.432659, 24.623892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509464, 35.476292, 24.779306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355099, 35.801735, 24.953257>,  <35.262478, 35.997002, 25.057627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355099, 35.801735, 24.953257>,  <35.509464, 35.476292, 24.779306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355099, 35.801735, 24.953257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392146, -0.282009, 0.875610,
		0.835038, 0.508447, -0.210219,
		-0.385918, 0.813604, 0.434874,
		35.239323, 36.045815, 25.083719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008129, 35.704731, 25.244555>,  <35.509464, 35.476292, 24.779306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008129, 35.704731, 25.244555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678406, 35.902931, 25.354099>,  <35.480572, 36.021851, 25.419827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678406, 35.902931, 25.354099>,  <36.008129, 35.704731, 25.244555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678406, 35.902931, 25.354099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332780, 0.032725, 0.942436,
		0.458014, 0.867992, -0.191867,
		-0.824306, 0.495499, 0.273862,
		35.431114, 36.051582, 25.436258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254551, 36.042637, 25.709387>,  <36.008129, 35.704731, 25.244555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254551, 36.042637, 25.709387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859051, 36.031357, 25.768145>,  <35.621750, 36.024590, 25.803400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859051, 36.031357, 25.768145>,  <36.254551, 36.042637, 25.709387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859051, 36.031357, 25.768145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149375, -0.134850, 0.979542,
		-0.007817, 0.990465, 0.137546,
		-0.988750, -0.028203, 0.146896,
		35.562428, 36.022896, 25.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214897, 36.320908, 26.314962>,  <36.254551, 36.042637, 25.709387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214897, 36.320908, 26.314962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839684, 36.183411, 26.297407>,  <35.614555, 36.100914, 26.286875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839684, 36.183411, 26.297407>,  <36.214897, 36.320908, 26.314962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839684, 36.183411, 26.297407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009925, -0.099948, 0.994943,
		-0.346391, 0.933730, 0.090343,
		-0.938038, -0.343742, -0.043888,
		35.558273, 36.080288, 26.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801804, 36.662205, 26.841610>,  <36.214897, 36.320908, 26.314962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801804, 36.662205, 26.841610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616806, 36.314640, 26.771074>,  <35.505810, 36.106102, 26.728752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616806, 36.314640, 26.771074>,  <35.801804, 36.662205, 26.841610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616806, 36.314640, 26.771074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046535, -0.174827, 0.983499,
		-0.885402, 0.463066, 0.040422,
		-0.462492, -0.868910, -0.176341,
		35.478058, 36.053967, 26.718172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269295, 36.620770, 27.286179>,  <35.801804, 36.662205, 26.841610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269295, 36.620770, 27.286179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327930, 36.239155, 27.181629>,  <35.363113, 36.010185, 27.118898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327930, 36.239155, 27.181629>,  <35.269295, 36.620770, 27.286179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327930, 36.239155, 27.181629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180159, -0.285560, 0.941275,
		-0.972653, -0.090895, -0.213740,
		0.146593, -0.954041, -0.261375,
		35.371910, 35.952942, 27.103216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669807, 36.243141, 27.575773>,  <35.269295, 36.620770, 27.286179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669807, 36.243141, 27.575773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994705, 36.018559, 27.512503>,  <35.189644, 35.883808, 27.474541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994705, 36.018559, 27.512503>,  <34.669807, 36.243141, 27.575773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994705, 36.018559, 27.512503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067825, -0.360234, 0.930393,
		-0.579359, -0.744979, -0.330680,
		0.812246, -0.561460, -0.158177,
		35.238380, 35.850121, 27.465050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584751, 35.817501, 28.101833>,  <34.669807, 36.243141, 27.575773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584751, 35.817501, 28.101833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.945522, 35.689571, 27.985743>,  <35.161987, 35.612816, 27.916088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.945522, 35.689571, 27.985743>,  <34.584751, 35.817501, 28.101833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945522, 35.689571, 27.985743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171820, -0.350812, 0.920548,
		-0.396228, -0.880139, -0.261456,
		0.901932, -0.319824, -0.290227,
		35.216103, 35.593624, 27.898674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602638, 35.063377, 28.255991>,  <34.584751, 35.817501, 28.101833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602638, 35.063377, 28.255991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974804, 35.209972, 28.254681>,  <35.198105, 35.297932, 28.253895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974804, 35.209972, 28.254681>,  <34.602638, 35.063377, 28.255991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974804, 35.209972, 28.254681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169649, -0.422733, 0.890234,
		0.324877, -0.828844, -0.455492,
		0.930416, 0.366490, -0.003277,
		35.253929, 35.319920, 28.253698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075874, 34.515930, 28.372314>,  <34.602638, 35.063377, 28.255991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075874, 34.515930, 28.372314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246033, 34.860050, 28.484690>,  <35.348129, 35.066521, 28.552114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246033, 34.860050, 28.484690>,  <35.075874, 34.515930, 28.372314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246033, 34.860050, 28.484690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265759, -0.415490, 0.869908,
		0.865106, -0.295395, -0.405380,
		0.425398, 0.860297, 0.280939,
		35.373653, 35.118137, 28.568972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801186, 34.301109, 28.285789>,  <35.075874, 34.515930, 28.372314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801186, 34.301109, 28.285789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010590, 33.960640, 28.300951>,  <36.136234, 33.756359, 28.310047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010590, 33.960640, 28.300951>,  <35.801186, 34.301109, 28.285789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010590, 33.960640, 28.300951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041323, -0.019069, -0.998964,
		0.851015, 0.524537, 0.025190,
		0.523514, -0.851174, 0.037903,
		36.167645, 33.705288, 28.312323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340248, 34.381439, 27.881695>,  <35.801186, 34.301109, 28.285789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340248, 34.381439, 27.881695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316364, 33.982155, 27.880260>,  <36.302036, 33.742584, 27.879400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316364, 33.982155, 27.880260>,  <36.340248, 34.381439, 27.881695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316364, 33.982155, 27.880260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072632, -0.000760, -0.997358,
		0.995570, -0.059808, 0.072547,
		-0.059705, -0.998210, -0.003588,
		36.298454, 33.682693, 27.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883499, 34.121609, 27.510778>,  <36.340248, 34.381439, 27.881695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883499, 34.121609, 27.510778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623974, 33.817379, 27.501232>,  <36.468258, 33.634842, 27.495504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623974, 33.817379, 27.501232>,  <36.883499, 34.121609, 27.510778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623974, 33.817379, 27.501232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165706, -0.110610, -0.979953,
		0.742683, -0.639765, 0.197796,
		-0.648817, -0.760570, -0.023865,
		36.429329, 33.589207, 27.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232670, 33.557953, 27.172779>,  <36.883499, 34.121609, 27.510778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232670, 33.557953, 27.172779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843639, 33.472797, 27.135319>,  <36.610222, 33.421703, 27.112843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843639, 33.472797, 27.135319>,  <37.232670, 33.557953, 27.172779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843639, 33.472797, 27.135319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, -0.231919, -0.962106,
		0.183099, -0.949154, 0.256088,
		-0.972579, -0.212884, -0.093649,
		36.551865, 33.408932, 27.107224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217472, 33.058571, 26.767456>,  <37.232670, 33.557953, 27.172779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217472, 33.058571, 26.767456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847206, 33.201778, 26.718515>,  <36.625046, 33.287704, 26.689150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847206, 33.201778, 26.718515>,  <37.217472, 33.058571, 26.767456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847206, 33.201778, 26.718515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027561, -0.258720, -0.965559,
		-0.377348, -0.897153, 0.229620,
		-0.925661, 0.358023, -0.122354,
		36.569508, 33.309185, 26.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749760, 32.544559, 26.440687>,  <37.217472, 33.058571, 26.767456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749760, 32.544559, 26.440687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572178, 32.896862, 26.374744>,  <36.465630, 33.108242, 26.335178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572178, 32.896862, 26.374744>,  <36.749760, 32.544559, 26.440687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572178, 32.896862, 26.374744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112694, -0.237404, -0.964852,
		-0.888935, -0.409771, 0.204652,
		-0.443954, 0.880754, -0.164858,
		36.438992, 33.161087, 26.325287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294823, 32.373535, 25.996895>,  <36.749760, 32.544559, 26.440687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294823, 32.373535, 25.996895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308754, 32.769894, 25.944878>,  <36.317112, 33.007710, 25.913668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308754, 32.769894, 25.944878>,  <36.294823, 32.373535, 25.996895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308754, 32.769894, 25.944878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042217, -0.131463, -0.990422,
		-0.998501, 0.029008, -0.046412,
		0.034832, 0.990897, -0.130041,
		36.319202, 33.067162, 25.905865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917583, 32.453804, 25.417721>,  <36.294823, 32.373535, 25.996895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917583, 32.453804, 25.417721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.128765, 32.792408, 25.445112>,  <36.255474, 32.995571, 25.461546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.128765, 32.792408, 25.445112>,  <35.917583, 32.453804, 25.417721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128765, 32.792408, 25.445112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098635, 0.018967, -0.994943,
		-0.843528, 0.532035, -0.073482,
		0.527951, 0.846510, 0.068477,
		36.287151, 33.046360, 25.465654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548344, 32.985798, 25.052355>,  <35.917583, 32.453804, 25.417721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548344, 32.985798, 25.052355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939266, 33.070507, 25.054373>,  <36.173820, 33.121330, 25.055584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939266, 33.070507, 25.054373>,  <35.548344, 32.985798, 25.052355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939266, 33.070507, 25.054373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027766, 0.151684, -0.988039,
		-0.210004, 0.965477, 0.154122,
		0.977306, 0.211771, 0.005047,
		36.232456, 33.134037, 25.055887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616920, 33.504051, 24.501106>,  <35.548344, 32.985798, 25.052355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616920, 33.504051, 24.501106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003166, 33.460468, 24.595518>,  <36.234913, 33.434319, 24.652164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003166, 33.460468, 24.595518>,  <35.616920, 33.504051, 24.501106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003166, 33.460468, 24.595518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251411, 0.160429, -0.954492,
		0.066128, 0.981016, 0.182305,
		0.965619, -0.108952, 0.236030,
		36.292850, 33.427784, 24.666327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003784, 34.095715, 24.249672>,  <35.616920, 33.504051, 24.501106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003784, 34.095715, 24.249672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267456, 33.795208, 24.262804>,  <36.425659, 33.614902, 24.270683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267456, 33.795208, 24.262804>,  <36.003784, 34.095715, 24.249672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267456, 33.795208, 24.262804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196265, 0.129733, -0.971931,
		0.725920, 0.647122, 0.232965,
		0.659181, -0.751267, 0.032831,
		36.465210, 33.569828, 24.272654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462547, 34.385818, 23.894344>,  <36.003784, 34.095715, 24.249672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462547, 34.385818, 23.894344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551460, 33.996685, 23.868462>,  <36.604809, 33.763206, 23.852932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551460, 33.996685, 23.868462>,  <36.462547, 34.385818, 23.894344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551460, 33.996685, 23.868462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212143, 0.113033, -0.970679,
		0.951624, 0.202034, 0.231505,
		0.222278, -0.972834, -0.064705,
		36.618145, 33.704834, 23.849051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028896, 34.404865, 23.623301>,  <36.462547, 34.385818, 23.894344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028896, 34.404865, 23.623301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922146, 34.025772, 23.553350>,  <36.858097, 33.798317, 23.511381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922146, 34.025772, 23.553350>,  <37.028896, 34.404865, 23.623301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922146, 34.025772, 23.553350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285528, 0.095554, -0.953595,
		0.920463, -0.304421, 0.245104,
		-0.266874, -0.947733, -0.174875,
		36.842083, 33.741451, 23.500889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604351, 34.036793, 23.224339>,  <37.028896, 34.404865, 23.623301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604351, 34.036793, 23.224339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257542, 33.848732, 23.158323>,  <37.049458, 33.735897, 23.118715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257542, 33.848732, 23.158323>,  <37.604351, 34.036793, 23.224339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257542, 33.848732, 23.158323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196877, -0.018973, -0.980245,
		0.457730, -0.882383, 0.109011,
		-0.867020, -0.470149, -0.165037,
		36.997437, 33.707687, 23.108812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094669, 33.377441, 23.245485>,  <37.604351, 34.036793, 23.224339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094669, 33.377441, 23.245485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475231, 33.274330, 23.178101>,  <38.703568, 33.212463, 23.137669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475231, 33.274330, 23.178101>,  <38.094669, 33.377441, 23.245485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475231, 33.274330, 23.178101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194946, 0.080695, 0.977489,
		-0.238383, -0.962828, 0.127027,
		0.951404, -0.257780, -0.168463,
		38.760651, 33.196995, 23.127562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240429, 32.766613, 23.733978>,  <38.094669, 33.377441, 23.245485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240429, 32.766613, 23.733978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588943, 32.941280, 23.644381>,  <38.798054, 33.046082, 23.590622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588943, 32.941280, 23.644381>,  <38.240429, 32.766613, 23.733978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588943, 32.941280, 23.644381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281951, -0.071803, 0.956738,
		0.401698, -0.896750, -0.185681,
		0.871288, 0.436673, -0.223996,
		38.850330, 33.072281, 23.577181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602905, 32.279472, 24.130695>,  <38.240429, 32.766613, 23.733978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602905, 32.279472, 24.130695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830387, 32.594303, 24.035122>,  <38.966877, 32.783199, 23.977777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830387, 32.594303, 24.035122>,  <38.602905, 32.279472, 24.130695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830387, 32.594303, 24.035122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493082, -0.093716, 0.864920,
		0.658365, -0.609697, -0.441389,
		0.568705, 0.787075, -0.238932,
		39.000999, 32.830425, 23.963442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388058, 32.124889, 24.264032>,  <38.602905, 32.279472, 24.130695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388058, 32.124889, 24.264032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378189, 32.524647, 24.254137>,  <39.372269, 32.764500, 24.248199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378189, 32.524647, 24.254137>,  <39.388058, 32.124889, 24.264032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378189, 32.524647, 24.254137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601678, 0.034606, 0.797989,
		0.798358, 0.004805, -0.602164,
		-0.024673, 0.999390, -0.024736,
		39.370789, 32.824463, 24.246716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065628, 32.293480, 24.476019>,  <39.388058, 32.124889, 24.264032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065628, 32.293480, 24.476019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843082, 32.622917, 24.520119>,  <39.709553, 32.820580, 24.546577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843082, 32.622917, 24.520119>,  <40.065628, 32.293480, 24.476019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843082, 32.622917, 24.520119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425891, 0.168715, 0.888905,
		0.713492, 0.541513, -0.444627,
		-0.556369, 0.823589, 0.110249,
		39.676170, 32.869995, 24.553194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562634, 32.754776, 24.744007>,  <40.065628, 32.293480, 24.476019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562634, 32.754776, 24.744007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194355, 32.895092, 24.812441>,  <39.973389, 32.979282, 24.853500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194355, 32.895092, 24.812441>,  <40.562634, 32.754776, 24.744007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194355, 32.895092, 24.812441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310637, 0.393263, 0.865360,
		0.236279, 0.849877, -0.471043,
		-0.920694, 0.350790, 0.171084,
		39.918148, 33.000328, 24.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672134, 33.433182, 25.011106>,  <40.562634, 32.754776, 24.744007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672134, 33.433182, 25.011106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321342, 33.305988, 25.155210>,  <40.110867, 33.229671, 25.241673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321342, 33.305988, 25.155210>,  <40.672134, 33.433182, 25.011106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321342, 33.305988, 25.155210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284854, 0.259764, 0.922703,
		-0.386991, 0.911815, -0.137228,
		-0.876981, -0.317988, 0.360260,
		40.058247, 33.210590, 25.263288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550400, 33.946049, 25.508821>,  <40.672134, 33.433182, 25.011106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550400, 33.946049, 25.508821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333374, 33.616409, 25.573904>,  <40.203159, 33.418625, 25.612953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333374, 33.616409, 25.573904>,  <40.550400, 33.946049, 25.508821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333374, 33.616409, 25.573904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184122, 0.072312, 0.980240,
		-0.819584, 0.561805, 0.112502,
		-0.542568, -0.824103, 0.162706,
		40.170605, 33.369179, 25.622715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169750, 34.047508, 26.149937>,  <40.550400, 33.946049, 25.508821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169750, 34.047508, 26.149937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142319, 33.648457, 26.147675>,  <40.125862, 33.409027, 26.146317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142319, 33.648457, 26.147675>,  <40.169750, 34.047508, 26.149937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142319, 33.648457, 26.147675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259087, -0.023282, 0.965573,
		-0.963417, 0.064749, 0.260069,
		-0.068574, -0.997630, -0.005655,
		40.121746, 33.349167, 26.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803150, 33.829144, 26.726892>,  <40.169750, 34.047508, 26.149937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803150, 33.829144, 26.726892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.984043, 33.492310, 26.609337>,  <40.092579, 33.290207, 26.538803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.984043, 33.492310, 26.609337>,  <39.803150, 33.829144, 26.726892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984043, 33.492310, 26.609337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480556, -0.047535, 0.875675,
		-0.751365, -0.537242, 0.383173,
		0.452235, -0.842088, -0.293890,
		40.119713, 33.239685, 26.521170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555492, 33.318512, 27.199383>,  <39.803150, 33.829144, 26.726892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555492, 33.318512, 27.199383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883205, 33.173264, 27.021883>,  <40.079834, 33.086113, 26.915382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883205, 33.173264, 27.021883>,  <39.555492, 33.318512, 27.199383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883205, 33.173264, 27.021883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335683, -0.323669, 0.884622,
		-0.464856, -0.873716, -0.143282,
		0.819284, -0.363124, -0.443750,
		40.128990, 33.064327, 26.888758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623848, 32.553707, 27.255690>,  <39.555492, 33.318512, 27.199383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623848, 32.553707, 27.255690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983288, 32.717384, 27.192335>,  <40.198952, 32.815590, 27.154322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983288, 32.717384, 27.192335>,  <39.623848, 32.553707, 27.255690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983288, 32.717384, 27.192335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315797, -0.352522, 0.880909,
		0.304625, -0.841600, -0.445997,
		0.898597, 0.409191, -0.158388,
		40.252869, 32.840141, 27.144819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116344, 32.012630, 27.273310>,  <39.623848, 32.553707, 27.255690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116344, 32.012630, 27.273310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320370, 32.344982, 27.362274>,  <40.442787, 32.544395, 27.415653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320370, 32.344982, 27.362274>,  <40.116344, 32.012630, 27.273310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320370, 32.344982, 27.362274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310795, -0.419145, 0.853067,
		0.802021, -0.365997, -0.472026,
		0.510067, 0.830881, 0.222413,
		40.473389, 32.594246, 27.428999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597565, 31.763754, 27.704308>,  <40.116344, 32.012630, 27.273310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597565, 31.763754, 27.704308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643517, 32.156651, 27.763636>,  <40.671089, 32.392387, 27.799232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643517, 32.156651, 27.763636>,  <40.597565, 31.763754, 27.704308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643517, 32.156651, 27.763636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325097, -0.178263, 0.928727,
		0.938677, -0.058476, -0.339804,
		0.114883, 0.982244, 0.148321,
		40.677982, 32.451324, 27.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.288185, 33.906143, 23.679296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.925972, 34.051357, 23.767126>,  <42.708645, 34.138485, 23.819824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.925972, 34.051357, 23.767126>,  <43.288185, 33.906143, 23.679296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925972, 34.051357, 23.767126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331212, -0.281443, -0.900604,
		-0.265138, -0.888260, 0.375094,
		-0.905538, 0.363020, 0.219581,
		42.654312, 34.160271, 23.832998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747433, 33.473320, 23.317785>,  <43.288185, 33.906143, 23.679296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747433, 33.473320, 23.317785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.571545, 33.827213, 23.379614>,  <42.466011, 34.039551, 23.416710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.571545, 33.827213, 23.379614>,  <42.747433, 33.473320, 23.317785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571545, 33.827213, 23.379614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493792, -0.094391, -0.864442,
		-0.750213, -0.456434, 0.478381,
		-0.439715, 0.884737, 0.154570,
		42.439629, 34.092632, 23.425985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061272, 33.316574, 23.278446>,  <42.747433, 33.473320, 23.317785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061272, 33.316574, 23.278446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099430, 33.710148, 23.218081>,  <42.122326, 33.946293, 23.181862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099430, 33.710148, 23.218081>,  <42.061272, 33.316574, 23.278446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099430, 33.710148, 23.218081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413261, -0.098775, -0.905240,
		-0.905602, 0.148725, 0.397199,
		0.095398, 0.983933, -0.150913,
		42.128048, 34.005329, 23.172806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434780, 33.476429, 23.029583>,  <42.061272, 33.316574, 23.278446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434780, 33.476429, 23.029583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690697, 33.757565, 22.905205>,  <41.844246, 33.926247, 22.830578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690697, 33.757565, 22.905205>,  <41.434780, 33.476429, 23.029583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690697, 33.757565, 22.905205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229784, -0.211148, -0.950061,
		-0.733394, 0.679291, 0.026410,
		0.639791, 0.702838, -0.310945,
		41.882633, 33.968414, 22.811922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069817, 33.991096, 22.626667>,  <41.434780, 33.476429, 23.029583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069817, 33.991096, 22.626667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452648, 34.022980, 22.515211>,  <41.682346, 34.042110, 22.448338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452648, 34.022980, 22.515211>,  <41.069817, 33.991096, 22.626667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452648, 34.022980, 22.515211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274209, -0.062212, -0.959656,
		-0.093827, 0.994875, -0.037686,
		0.957082, 0.079708, -0.278640,
		41.739773, 34.046890, 22.431620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071831, 34.512978, 22.119509>,  <41.069817, 33.991096, 22.626667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071831, 34.512978, 22.119509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440113, 34.366787, 22.064775>,  <41.661083, 34.279072, 22.031937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440113, 34.366787, 22.064775>,  <41.071831, 34.512978, 22.119509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440113, 34.366787, 22.064775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091886, 0.137744, -0.986197,
		0.379284, 0.920571, 0.093239,
		0.920707, -0.365481, -0.136831,
		41.716324, 34.257141, 22.023726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355801, 35.001019, 21.659836>,  <41.071831, 34.512978, 22.119509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355801, 35.001019, 21.659836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588570, 34.678448, 21.617804>,  <41.728233, 34.484905, 21.592585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588570, 34.678448, 21.617804>,  <41.355801, 35.001019, 21.659836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588570, 34.678448, 21.617804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035284, 0.104055, -0.993946,
		0.812477, 0.582110, 0.032098,
		0.581925, -0.806425, -0.105081,
		41.763145, 34.436520, 21.586279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024975, 35.152515, 21.218307>,  <41.355801, 35.001019, 21.659836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024975, 35.152515, 21.218307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936028, 34.762634, 21.227259>,  <41.882660, 34.528706, 21.232630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936028, 34.762634, 21.227259>,  <42.024975, 35.152515, 21.218307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936028, 34.762634, 21.227259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075685, -0.005625, -0.997116,
		0.972020, -0.223423, -0.072519,
		-0.222371, -0.974705, 0.022378,
		41.869316, 34.470222, 21.233973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433464, 34.772770, 20.768288>,  <42.024975, 35.152515, 21.218307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433464, 34.772770, 20.768288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139694, 34.501591, 20.781029>,  <41.963432, 34.338882, 20.788673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139694, 34.501591, 20.781029>,  <42.433464, 34.772770, 20.768288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139694, 34.501591, 20.781029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036375, -0.007547, -0.999310,
		0.677716, -0.735075, -0.019117,
		-0.734423, -0.677944, 0.031853,
		41.919369, 34.298206, 20.790585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545086, 34.291870, 20.223251>,  <42.433464, 34.772770, 20.768288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545086, 34.291870, 20.223251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.157921, 34.233177, 20.304857>,  <41.925621, 34.197964, 20.353821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.157921, 34.233177, 20.304857>,  <42.545086, 34.291870, 20.223251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157921, 34.233177, 20.304857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196337, -0.065197, -0.978367,
		0.156858, -0.987025, 0.034296,
		-0.967909, -0.146731, 0.204016,
		41.867550, 34.189159, 20.366062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317131, 33.731651, 19.817719>,  <42.545086, 34.291870, 20.223251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317131, 33.731651, 19.817719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964817, 33.894028, 19.915230>,  <41.753429, 33.991455, 19.973738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964817, 33.894028, 19.915230>,  <42.317131, 33.731651, 19.817719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964817, 33.894028, 19.915230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284073, -0.041101, -0.957922,
		-0.378844, -0.912973, 0.151519,
		-0.880784, 0.405946, 0.243780,
		41.700581, 34.015812, 19.988363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749756, 33.328136, 19.445246>,  <42.317131, 33.731651, 19.817719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749756, 33.328136, 19.445246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.592316, 33.687466, 19.523312>,  <41.497852, 33.903065, 19.570150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.592316, 33.687466, 19.523312>,  <41.749756, 33.328136, 19.445246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592316, 33.687466, 19.523312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383852, 0.032302, -0.922829,
		-0.835305, -0.438141, 0.332111,
		-0.393601, 0.898326, 0.195163,
		41.474236, 33.956963, 19.581861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144611, 33.349094, 19.230944>,  <41.749756, 33.328136, 19.445246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144611, 33.349094, 19.230944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213139, 33.742290, 19.257423>,  <41.254253, 33.978207, 19.273312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213139, 33.742290, 19.257423>,  <41.144611, 33.349094, 19.230944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213139, 33.742290, 19.257423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321006, 0.119218, -0.939544,
		-0.931454, 0.139709, 0.335969,
		0.171317, 0.982989, 0.066199,
		41.264534, 34.037186, 19.277283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657539, 33.607933, 18.756224>,  <41.144611, 33.349094, 19.230944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657539, 33.607933, 18.756224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886604, 33.925980, 18.836075>,  <41.024044, 34.116806, 18.883986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886604, 33.925980, 18.836075>,  <40.657539, 33.607933, 18.756224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886604, 33.925980, 18.836075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193210, 0.367552, -0.909712,
		-0.796700, 0.482385, 0.364107,
		0.572660, 0.795117, 0.199627,
		41.058403, 34.164516, 18.895964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 33.967770, 18.047478>,  <40.657539, 33.607933, 18.756224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570606, 33.967770, 18.047478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306183, 33.689125, 17.935955>,  <40.147530, 33.521938, 17.869041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306183, 33.689125, 17.935955>,  <40.570606, 33.967770, 18.047478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306183, 33.689125, 17.935955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154753, -0.237011, 0.959103,
		-0.734207, 0.677165, 0.048873,
		-0.661054, -0.696616, -0.278808,
		40.107868, 33.480141, 17.852312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002991, 34.084141, 18.449316>,  <40.570606, 33.967770, 18.047478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002991, 34.084141, 18.449316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926758, 33.729500, 18.280735>,  <39.881020, 33.516716, 18.179586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926758, 33.729500, 18.280735>,  <40.002991, 34.084141, 18.449316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926758, 33.729500, 18.280735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351829, -0.339113, 0.872478,
		-0.916459, 0.314555, -0.247304,
		-0.190578, -0.886599, -0.421453,
		39.869583, 33.463520, 18.154299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318233, 33.942863, 18.576397>,  <40.002991, 34.084141, 18.449316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318233, 33.942863, 18.576397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455444, 33.572067, 18.515713>,  <39.537769, 33.349590, 18.479301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455444, 33.572067, 18.515713>,  <39.318233, 33.942863, 18.576397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455444, 33.572067, 18.515713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459949, -0.306585, 0.833338,
		-0.819011, -0.216078, -0.531536,
		0.343027, -0.926993, -0.151712,
		39.558353, 33.293968, 18.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800091, 33.543690, 18.682617>,  <39.318233, 33.942863, 18.576397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800091, 33.543690, 18.682617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112988, 33.295883, 18.708847>,  <39.300724, 33.147202, 18.724585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112988, 33.295883, 18.708847>,  <38.800091, 33.543690, 18.682617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112988, 33.295883, 18.708847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396487, -0.413897, 0.819443,
		-0.480516, -0.667001, -0.569397,
		0.782242, -0.619514, 0.065573,
		39.347660, 33.110031, 18.728519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504730, 32.953888, 18.910351>,  <38.800091, 33.543690, 18.682617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504730, 32.953888, 18.910351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889061, 32.945782, 19.020908>,  <39.119659, 32.940918, 19.087244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889061, 32.945782, 19.020908>,  <38.504730, 32.953888, 18.910351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889061, 32.945782, 19.020908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255830, -0.448360, 0.856460,
		0.106566, -0.893623, -0.435983,
		0.960830, -0.020268, 0.276396,
		39.177311, 32.939701, 19.103827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587769, 32.296951, 19.171104>,  <38.504730, 32.953888, 18.910351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587769, 32.296951, 19.171104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873360, 32.526203, 19.331980>,  <39.044716, 32.663754, 19.428505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873360, 32.526203, 19.331980>,  <38.587769, 32.296951, 19.171104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873360, 32.526203, 19.331980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321983, -0.241313, 0.915475,
		0.621740, -0.783128, 0.012246,
		0.713979, 0.573131, 0.402188,
		39.087555, 32.698143, 19.452637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645771, 32.108883, 19.849405>,  <38.587769, 32.296951, 19.171104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645771, 32.108883, 19.849405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875340, 32.435562, 19.873461>,  <39.013081, 32.631569, 19.887894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875340, 32.435562, 19.873461>,  <38.645771, 32.108883, 19.849405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875340, 32.435562, 19.873461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083474, -0.131402, 0.987809,
		0.814644, -0.561906, -0.143588,
		0.573923, 0.816698, 0.060141,
		39.047516, 32.680573, 19.891502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296566, 31.899149, 20.286837>,  <38.645771, 32.108883, 19.849405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296566, 31.899149, 20.286837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249428, 32.295410, 20.314327>,  <39.221146, 32.533165, 20.330822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249428, 32.295410, 20.314327>,  <39.296566, 31.899149, 20.286837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249428, 32.295410, 20.314327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041376, -0.064248, 0.997076,
		0.992169, 0.120346, -0.033418,
		-0.117848, 0.990651, 0.068724,
		39.214073, 32.592606, 20.334944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750648, 32.111614, 20.811104>,  <39.296566, 31.899149, 20.286837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750648, 32.111614, 20.811104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487034, 32.410908, 20.780607>,  <39.328865, 32.590485, 20.762308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487034, 32.410908, 20.780607>,  <39.750648, 32.111614, 20.811104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487034, 32.410908, 20.780607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051331, 0.056388, 0.997088,
		0.750357, 0.661032, 0.001245,
		-0.659037, 0.748236, -0.076243,
		39.289322, 32.635380, 20.757734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021908, 32.653904, 21.077391>,  <39.750648, 32.111614, 20.811104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021908, 32.653904, 21.077391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.624783, 32.690758, 21.107944>,  <39.386509, 32.712872, 21.126276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.624783, 32.690758, 21.107944>,  <40.021908, 32.653904, 21.077391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624783, 32.690758, 21.107944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081553, 0.053697, 0.995221,
		0.087593, 0.994298, -0.060825,
		-0.992813, 0.092135, 0.076384,
		39.326939, 32.718399, 21.130859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911667, 33.214714, 21.386072>,  <40.021908, 32.653904, 21.077391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911667, 33.214714, 21.386072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550301, 33.055630, 21.450153>,  <39.333481, 32.960178, 21.488602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550301, 33.055630, 21.450153>,  <39.911667, 33.214714, 21.386072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550301, 33.055630, 21.450153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018453, 0.337224, 0.941243,
		-0.428369, 0.853290, -0.297315,
		-0.903415, -0.397713, 0.160202,
		39.279278, 32.936317, 21.498215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485374, 33.741859, 21.762323>,  <39.911667, 33.214714, 21.386072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485374, 33.741859, 21.762323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310833, 33.387421, 21.824852>,  <39.206108, 33.174759, 21.862370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310833, 33.387421, 21.824852>,  <39.485374, 33.741859, 21.762323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310833, 33.387421, 21.824852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057120, 0.200663, 0.977994,
		-0.897961, 0.417820, -0.138173,
		-0.436352, -0.886093, 0.156322,
		39.179928, 33.121593, 21.871748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005707, 33.894283, 22.202990>,  <39.485374, 33.741859, 21.762323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005707, 33.894283, 22.202990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001423, 33.496159, 22.241451>,  <38.998852, 33.257286, 22.264528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001423, 33.496159, 22.241451>,  <39.005707, 33.894283, 22.202990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001423, 33.496159, 22.241451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136334, 0.096713, 0.985931,
		-0.990605, -0.002550, -0.136730,
		-0.010710, -0.995309, 0.096152,
		38.998211, 33.197567, 22.270296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369598, 33.779232, 22.528749>,  <39.005707, 33.894283, 22.202990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369598, 33.779232, 22.528749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634872, 33.489536, 22.604279>,  <38.794037, 33.315720, 22.649595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634872, 33.489536, 22.604279>,  <38.369598, 33.779232, 22.528749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634872, 33.489536, 22.604279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107938, 0.157098, 0.981667,
		-0.740629, -0.671410, 0.026011,
		0.663187, -0.724243, 0.188822,
		38.833828, 33.272263, 22.660925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756710, 33.375401, 22.463308>,  <38.369598, 33.779232, 22.528749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756710, 33.375401, 22.463308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363739, 33.430336, 22.513878>,  <37.127956, 33.463299, 22.544220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363739, 33.430336, 22.513878>,  <37.756710, 33.375401, 22.463308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363739, 33.430336, 22.513878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061475, 0.401438, -0.913821,
		-0.176256, -0.905530, -0.385939,
		-0.982423, 0.137341, 0.126423,
		37.069012, 33.471539, 22.551805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416336, 32.998108, 21.940809>,  <37.756710, 33.375401, 22.463308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416336, 32.998108, 21.940809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153191, 33.275032, 22.059414>,  <36.995304, 33.441185, 22.130577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153191, 33.275032, 22.059414>,  <37.416336, 32.998108, 21.940809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153191, 33.275032, 22.059414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146615, 0.268447, -0.952072,
		-0.738727, -0.669808, -0.075099,
		-0.657866, 0.692310, 0.296513,
		36.955830, 33.482723, 22.148367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704018, 32.945602, 21.434597>,  <37.416336, 32.998108, 21.940809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704018, 32.945602, 21.434597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.702801, 33.310833, 21.597708>,  <36.702072, 33.529972, 21.695574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.702801, 33.310833, 21.597708>,  <36.704018, 32.945602, 21.434597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702801, 33.310833, 21.597708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264111, 0.392566, -0.880987,
		-0.964488, -0.110376, 0.239960,
		-0.003039, 0.913077, 0.407776,
		36.701889, 33.584755, 21.720041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062859, 33.214268, 21.310085>,  <36.704018, 32.945602, 21.434597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062859, 33.214268, 21.310085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290726, 33.530605, 21.399569>,  <36.427444, 33.720409, 21.453259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290726, 33.530605, 21.399569>,  <36.062859, 33.214268, 21.310085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290726, 33.530605, 21.399569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286052, 0.445954, -0.848115,
		-0.770492, 0.419149, 0.480267,
		0.569663, 0.790847, 0.223706,
		36.461624, 33.767860, 21.466681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702690, 33.766563, 21.064117>,  <36.062859, 33.214268, 21.310085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702690, 33.766563, 21.064117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076992, 33.902744, 21.100882>,  <36.301575, 33.984455, 21.122940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076992, 33.902744, 21.100882>,  <35.702690, 33.766563, 21.064117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076992, 33.902744, 21.100882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110605, 0.530837, -0.840226,
		-0.334851, 0.776081, 0.534390,
		0.935757, 0.340456, 0.091912,
		36.357719, 34.004883, 21.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676498, 34.387192, 20.789883>,  <35.702690, 33.766563, 21.064117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676498, 34.387192, 20.789883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074657, 34.349644, 20.782131>,  <36.313553, 34.327114, 20.777481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074657, 34.349644, 20.782131>,  <35.676498, 34.387192, 20.789883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074657, 34.349644, 20.782131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012801, 0.330557, -0.943699,
		0.094992, 0.939106, 0.330237,
		0.995396, -0.093871, -0.019379,
		36.373276, 34.321484, 20.776318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793690, 35.081486, 20.513105>,  <35.676498, 34.387192, 20.789883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793690, 35.081486, 20.513105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098000, 34.829819, 20.449389>,  <36.280586, 34.678818, 20.411160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098000, 34.829819, 20.449389>,  <35.793690, 35.081486, 20.513105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098000, 34.829819, 20.449389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052550, 0.184913, -0.981349,
		0.646883, 0.754958, 0.107615,
		0.760776, -0.629163, -0.159290,
		36.326233, 34.641071, 20.401602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100761, 35.742855, 20.805250>,  <35.793690, 35.081486, 20.513105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100761, 35.742855, 20.805250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101421, 36.142628, 20.818676>,  <36.101818, 36.382492, 20.826731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101421, 36.142628, 20.818676>,  <36.100761, 35.742855, 20.805250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101421, 36.142628, 20.818676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392448, -0.030225, 0.919277,
		0.919773, -0.014691, 0.392177,
		0.001652, 0.999435, 0.033565,
		36.101917, 36.442459, 20.828745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584621, 35.945358, 21.425470>,  <36.100761, 35.742855, 20.805250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584621, 35.945358, 21.425470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315750, 36.237488, 21.376808>,  <36.154427, 36.412766, 21.347610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315750, 36.237488, 21.376808>,  <36.584621, 35.945358, 21.425470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315750, 36.237488, 21.376808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255204, -0.074300, 0.964028,
		0.695015, 0.679047, 0.236324,
		-0.672180, 0.730325, -0.121656,
		36.114098, 36.456585, 21.340311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620605, 36.268173, 22.046768>,  <36.584621, 35.945358, 21.425470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620605, 36.268173, 22.046768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284641, 36.423290, 21.894894>,  <36.083061, 36.516361, 21.803768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284641, 36.423290, 21.894894>,  <36.620605, 36.268173, 22.046768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284641, 36.423290, 21.894894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335310, 0.179311, 0.924886,
		0.426749, 0.904136, -0.020575,
		-0.839912, 0.387795, -0.379686,
		36.032669, 36.539627, 21.780987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567135, 36.778229, 22.399302>,  <36.620605, 36.268173, 22.046768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567135, 36.778229, 22.399302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192173, 36.701942, 22.282757>,  <35.967194, 36.656170, 22.212830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192173, 36.701942, 22.282757>,  <36.567135, 36.778229, 22.399302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192173, 36.701942, 22.282757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318201, 0.129210, 0.939177,
		-0.141470, 0.973104, -0.181808,
		-0.937408, -0.190717, -0.291363,
		35.910950, 36.644726, 22.195349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153275, 37.352409, 22.709846>,  <36.567135, 36.778229, 22.399302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153275, 37.352409, 22.709846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913544, 37.049206, 22.606911>,  <35.769703, 36.867283, 22.545149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913544, 37.049206, 22.606911>,  <36.153275, 37.352409, 22.709846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913544, 37.049206, 22.606911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447118, 0.050332, 0.893058,
		-0.663994, 0.650298, -0.369086,
		-0.599330, -0.758010, -0.257340,
		35.733746, 36.821804, 22.529709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573036, 37.509457, 22.922346>,  <36.153275, 37.352409, 22.709846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573036, 37.509457, 22.922346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501522, 37.118980, 22.873219>,  <35.458614, 36.884693, 22.843742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501522, 37.118980, 22.873219>,  <35.573036, 37.509457, 22.922346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501522, 37.118980, 22.873219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380600, -0.046494, 0.923570,
		-0.907293, 0.211865, -0.363226,
		-0.178785, -0.976192, -0.122820,
		35.447887, 36.826122, 22.836372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880344, 37.359657, 23.032080>,  <35.573036, 37.509457, 22.922346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880344, 37.359657, 23.032080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054699, 37.002052, 23.073538>,  <35.159309, 36.787487, 23.098413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054699, 37.002052, 23.073538>,  <34.880344, 37.359657, 23.032080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054699, 37.002052, 23.073538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304073, -0.037895, 0.951895,
		-0.847081, -0.446430, -0.288364,
		0.435882, -0.894016, 0.103647,
		35.185463, 36.733849, 23.104631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.535000, 37.251873, 18.932802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.550365, 36.853165, 18.960987>,  <40.559586, 36.613937, 18.977898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.550365, 36.853165, 18.960987>,  <40.535000, 37.251873, 18.932802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550365, 36.853165, 18.960987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113359, 0.074405, 0.990764,
		-0.992811, -0.030074, 0.115852,
		0.038416, -0.996774, 0.070461,
		40.561890, 36.554131, 18.982126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911552, 36.928272, 19.364271>,  <40.535000, 37.251873, 18.932802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911552, 36.928272, 19.364271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270729, 36.753059, 19.381361>,  <40.486237, 36.647930, 19.391615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270729, 36.753059, 19.381361>,  <39.911552, 36.928272, 19.364271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270729, 36.753059, 19.381361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006518, 0.083833, 0.996458,
		-0.440065, -0.895041, 0.072422,
		0.897942, -0.438035, 0.042726,
		40.540112, 36.621651, 19.394178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894142, 36.340878, 19.841688>,  <39.911552, 36.928272, 19.364271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894142, 36.340878, 19.841688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285667, 36.419868, 19.820070>,  <40.520584, 36.467262, 19.807100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285667, 36.419868, 19.820070>,  <39.894142, 36.340878, 19.841688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285667, 36.419868, 19.820070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046924, 0.040554, 0.998075,
		0.199293, -0.979467, 0.030428,
		0.978816, 0.197481, -0.054043,
		40.579311, 36.479111, 19.803858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141155, 36.023338, 20.423384>,  <39.894142, 36.340878, 19.841688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141155, 36.023338, 20.423384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434048, 36.274963, 20.318985>,  <40.609783, 36.425938, 20.256346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434048, 36.274963, 20.318985>,  <40.141155, 36.023338, 20.423384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434048, 36.274963, 20.318985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201879, 0.165523, 0.965322,
		0.650450, -0.759527, -0.005794,
		0.732229, 0.629064, -0.260997,
		40.653717, 36.463684, 20.240686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677654, 35.923164, 20.916592>,  <40.141155, 36.023338, 20.423384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677654, 35.923164, 20.916592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785564, 36.262657, 20.734661>,  <40.850311, 36.466354, 20.625504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785564, 36.262657, 20.734661>,  <40.677654, 35.923164, 20.916592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785564, 36.262657, 20.734661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197930, 0.413374, 0.888789,
		0.942360, -0.329800, -0.056470,
		0.269779, 0.848737, -0.454824,
		40.866497, 36.517277, 20.598213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384193, 36.082764, 21.047289>,  <40.677654, 35.923164, 20.916592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384193, 36.082764, 21.047289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.210796, 36.436756, 20.979309>,  <41.106758, 36.649155, 20.938522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.210796, 36.436756, 20.979309>,  <41.384193, 36.082764, 21.047289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210796, 36.436756, 20.979309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329985, 0.331379, 0.883911,
		0.838565, 0.327090, -0.435683,
		-0.433495, 0.884986, -0.169948,
		41.080750, 36.702251, 20.928324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936180, 36.638157, 21.206001>,  <41.384193, 36.082764, 21.047289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936180, 36.638157, 21.206001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.560215, 36.768898, 21.245461>,  <41.334637, 36.847343, 21.269136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.560215, 36.768898, 21.245461>,  <41.936180, 36.638157, 21.206001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560215, 36.768898, 21.245461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225860, 0.378586, 0.897585,
		0.256033, 0.865932, -0.429661,
		-0.939912, 0.326855, 0.098649,
		41.278240, 36.866955, 21.275055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054020, 37.173481, 21.580341>,  <41.936180, 36.638157, 21.206001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054020, 37.173481, 21.580341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656136, 37.155148, 21.617104>,  <41.417404, 37.144146, 21.639160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656136, 37.155148, 21.617104>,  <42.054020, 37.173481, 21.580341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656136, 37.155148, 21.617104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073352, 0.309270, 0.948141,
		-0.071879, 0.949869, -0.304273,
		-0.994712, -0.045833, 0.091905,
		41.357723, 37.141399, 21.644674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897671, 37.771423, 21.944334>,  <42.054020, 37.173481, 21.580341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897671, 37.771423, 21.944334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590256, 37.522697, 22.004587>,  <41.405807, 37.373463, 22.040739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590256, 37.522697, 22.004587>,  <41.897671, 37.771423, 21.944334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590256, 37.522697, 22.004587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018939, 0.213225, 0.976820,
		-0.639522, 0.753577, -0.152095,
		-0.768540, -0.621817, 0.150634,
		41.359695, 37.336151, 22.049778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345135, 38.176365, 22.157423>,  <41.897671, 37.771423, 21.944334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345135, 38.176365, 22.157423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289932, 37.805573, 22.296947>,  <41.256809, 37.583099, 22.380661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289932, 37.805573, 22.296947>,  <41.345135, 38.176365, 22.157423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289932, 37.805573, 22.296947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028934, 0.355802, 0.934113,
		-0.990009, 0.118822, -0.075924,
		-0.138007, -0.926977, 0.348809,
		41.248531, 37.527481, 22.401590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996326, 38.309082, 22.651482>,  <41.345135, 38.176365, 22.157423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996326, 38.309082, 22.651482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.137436, 37.944347, 22.735489>,  <41.222103, 37.725506, 22.785892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.137436, 37.944347, 22.735489>,  <40.996326, 38.309082, 22.651482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137436, 37.944347, 22.735489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171984, 0.283810, 0.943331,
		-0.919766, -0.296665, 0.256942,
		0.352776, -0.911834, 0.210018,
		41.243267, 37.670795, 22.798494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650829, 38.149948, 23.187195>,  <40.996326, 38.309082, 22.651482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650829, 38.149948, 23.187195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967243, 37.905609, 23.200647>,  <41.157093, 37.759007, 23.208719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967243, 37.905609, 23.200647>,  <40.650829, 38.149948, 23.187195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967243, 37.905609, 23.200647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222099, 0.337965, 0.914578,
		-0.570034, -0.715992, 0.403010,
		0.791034, -0.610848, 0.033630,
		41.204552, 37.722355, 23.210737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863632, 37.942501, 23.213650>,  <40.650829, 38.149948, 23.187195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863632, 37.942501, 23.213650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594334, 38.238102, 23.223555>,  <39.432755, 38.415462, 23.229498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594334, 38.238102, 23.223555>,  <39.863632, 37.942501, 23.213650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594334, 38.238102, 23.223555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215385, -0.163965, -0.962666,
		-0.707350, -0.653448, 0.269559,
		-0.673250, 0.739000, 0.024762,
		39.392357, 38.459801, 23.230984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254536, 37.697540, 22.880705>,  <39.863632, 37.942501, 23.213650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254536, 37.697540, 22.880705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244030, 38.096455, 22.853165>,  <39.237728, 38.335804, 22.836641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244030, 38.096455, 22.853165>,  <39.254536, 37.697540, 22.880705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244030, 38.096455, 22.853165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048871, -0.070071, -0.996344,
		-0.998460, -0.022803, 0.050578,
		-0.026264, 0.997281, -0.068848,
		39.236153, 38.395638, 22.832510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760963, 37.839703, 22.355820>,  <39.254536, 37.697540, 22.880705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760963, 37.839703, 22.355820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952587, 38.190041, 22.379105>,  <39.067562, 38.400246, 22.393076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952587, 38.190041, 22.379105>,  <38.760963, 37.839703, 22.355820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952587, 38.190041, 22.379105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030833, 0.083065, -0.996067,
		-0.877239, 0.475383, 0.066798,
		0.479062, 0.875849, 0.058210,
		39.096306, 38.452797, 22.396568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420261, 38.342136, 21.835043>,  <38.760963, 37.839703, 22.355820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420261, 38.342136, 21.835043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774078, 38.510731, 21.914978>,  <38.986370, 38.611885, 21.962938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774078, 38.510731, 21.914978>,  <38.420261, 38.342136, 21.835043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774078, 38.510731, 21.914978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048506, 0.342975, -0.938091,
		-0.463929, 0.839476, 0.282932,
		0.884543, 0.421484, 0.199836,
		39.039440, 38.637177, 21.974928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355709, 39.017860, 21.456104>,  <38.420261, 38.342136, 21.835043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355709, 39.017860, 21.456104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744015, 38.936432, 21.506990>,  <38.976997, 38.887573, 21.537523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744015, 38.936432, 21.506990>,  <38.355709, 39.017860, 21.456104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744015, 38.936432, 21.506990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208508, 0.452450, -0.867072,
		0.118951, 0.868245, 0.481666,
		0.970760, -0.203570, 0.127216,
		39.035244, 38.875362, 21.545155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623638, 39.647560, 21.169901>,  <38.355709, 39.017860, 21.456104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623638, 39.647560, 21.169901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926094, 39.387356, 21.198450>,  <39.107567, 39.231232, 21.215580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926094, 39.387356, 21.198450>,  <38.623638, 39.647560, 21.169901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926094, 39.387356, 21.198450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319968, 0.272362, -0.907436,
		0.570858, 0.708981, 0.414085,
		0.756136, -0.650511, 0.071371,
		39.152935, 39.192204, 21.219862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305649, 39.930653, 20.885305>,  <38.623638, 39.647560, 21.169901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305649, 39.930653, 20.885305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327778, 39.531593, 20.869164>,  <39.341057, 39.292156, 20.859478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327778, 39.531593, 20.869164>,  <39.305649, 39.930653, 20.885305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327778, 39.531593, 20.869164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301151, 0.055208, -0.951977,
		0.951971, 0.040512, 0.303498,
		0.055322, -0.997653, -0.040356,
		39.344376, 39.232296, 20.857058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925228, 39.776619, 20.558117>,  <39.305649, 39.930653, 20.885305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925228, 39.776619, 20.558117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699467, 39.448994, 20.516949>,  <39.564011, 39.252419, 20.492249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699467, 39.448994, 20.516949>,  <39.925228, 39.776619, 20.558117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699467, 39.448994, 20.516949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238300, -0.042287, -0.970271,
		0.790357, -0.572148, 0.219048,
		-0.564401, -0.819060, -0.102921,
		39.530148, 39.203278, 20.486073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348553, 39.339828, 20.104679>,  <39.925228, 39.776619, 20.558117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348553, 39.339828, 20.104679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006325, 39.133778, 20.084141>,  <39.800987, 39.010147, 20.071817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006325, 39.133778, 20.084141>,  <40.348553, 39.339828, 20.104679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006325, 39.133778, 20.084141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090798, -0.051678, -0.994528,
		0.509656, -0.855554, 0.090987,
		-0.855574, -0.515128, -0.051344,
		39.749653, 38.979240, 20.068737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480587, 38.740337, 19.847881>,  <40.348553, 39.339828, 20.104679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480587, 38.740337, 19.847881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094994, 38.808918, 19.766556>,  <39.863636, 38.850067, 19.717760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094994, 38.808918, 19.766556>,  <40.480587, 38.740337, 19.847881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094994, 38.808918, 19.766556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196338, -0.056891, -0.978884,
		-0.179395, -0.983549, 0.021180,
		-0.963986, 0.171448, -0.203314,
		39.805798, 38.860352, 19.705561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225231, 38.119049, 19.364454>,  <40.480587, 38.740337, 19.847881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225231, 38.119049, 19.364454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.962357, 38.415089, 19.307381>,  <39.804634, 38.592712, 19.273136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.962357, 38.415089, 19.307381>,  <40.225231, 38.119049, 19.364454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962357, 38.415089, 19.307381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028307, -0.213407, -0.976553,
		-0.753199, -0.637735, 0.161198,
		-0.657183, 0.740102, -0.142685,
		39.765202, 38.637119, 19.264576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673294, 37.744553, 19.094976>,  <40.225231, 38.119049, 19.364454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673294, 37.744553, 19.094976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.602898, 38.125057, 18.993677>,  <39.560661, 38.353359, 18.932898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.602898, 38.125057, 18.993677>,  <39.673294, 37.744553, 19.094976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602898, 38.125057, 18.993677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032913, -0.251435, -0.967314,
		-0.983842, -0.178569, 0.012940,
		-0.175986, 0.951259, -0.253249,
		39.550102, 38.410435, 18.917702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242920, 37.693726, 18.528818>,  <39.673294, 37.744553, 19.094976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242920, 37.693726, 18.528818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403076, 38.059895, 18.512365>,  <39.499172, 38.279594, 18.502495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403076, 38.059895, 18.512365>,  <39.242920, 37.693726, 18.528818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403076, 38.059895, 18.512365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264146, -0.158281, -0.951406,
		-0.877446, 0.370074, -0.305179,
		0.400394, 0.915420, -0.041130,
		39.523193, 38.334522, 18.500027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495750, 37.500870, 18.474943>,  <39.242920, 37.693726, 18.528818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495750, 37.500870, 18.474943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.131363, 37.526337, 18.311932>,  <37.912731, 37.541618, 18.214125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.131363, 37.526337, 18.311932>,  <38.495750, 37.500870, 18.474943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131363, 37.526337, 18.311932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403650, 0.065635, 0.912556,
		0.084848, 0.995811, -0.034092,
		-0.910971, 0.063667, -0.407528,
		37.858070, 37.545437, 18.189672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123127, 37.894562, 18.925701>,  <38.495750, 37.500870, 18.474943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123127, 37.894562, 18.925701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.834442, 37.720379, 18.710476>,  <37.661232, 37.615871, 18.581341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.834442, 37.720379, 18.710476>,  <38.123127, 37.894562, 18.925701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834442, 37.720379, 18.710476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575333, -0.054836, 0.816079,
		-0.384870, 0.898540, -0.210955,
		-0.721711, -0.435454, -0.538064,
		37.617928, 37.589745, 18.549057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421757, 38.248913, 19.113380>,  <38.123127, 37.894562, 18.925701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421757, 38.248913, 19.113380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.340065, 37.884743, 18.969482>,  <37.291050, 37.666241, 18.883144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.340065, 37.884743, 18.969482>,  <37.421757, 38.248913, 19.113380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340065, 37.884743, 18.969482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693048, -0.125065, 0.709960,
		-0.691357, 0.394315, -0.605426,
		-0.204230, -0.910426, -0.359744,
		37.278797, 37.611614, 18.861559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715683, 38.226997, 19.149012>,  <37.421757, 38.248913, 19.113380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715683, 38.226997, 19.149012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812466, 37.839565, 19.126019>,  <36.870537, 37.607105, 19.112223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812466, 37.839565, 19.126019>,  <36.715683, 38.226997, 19.149012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812466, 37.839565, 19.126019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595238, -0.194958, 0.779540,
		-0.766255, -0.154402, -0.623709,
		0.241960, -0.968582, -0.057482,
		36.885056, 37.548992, 19.108774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092308, 37.777103, 19.307554>,  <36.715683, 38.226997, 19.149012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092308, 37.777103, 19.307554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391582, 37.521286, 19.378210>,  <36.571148, 37.367794, 19.420605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391582, 37.521286, 19.378210>,  <36.092308, 37.777103, 19.307554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391582, 37.521286, 19.378210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524255, -0.406664, 0.748186,
		-0.406664, -0.652387, -0.639544,
		-0.748186, 0.639544, -0.176641,
		36.616039, 37.329422, 19.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848660, 37.082821, 19.361542>,  <36.092308, 37.777103, 19.307554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848660, 37.082821, 19.361542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198059, 37.050667, 19.553598>,  <36.407700, 37.031376, 19.668833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198059, 37.050667, 19.553598>,  <35.848660, 37.082821, 19.361542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198059, 37.050667, 19.553598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457315, -0.473651, 0.752674,
		0.166920, -0.877037, -0.450493,
		0.873499, -0.080381, 0.480143,
		36.460110, 37.026554, 19.697641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780197, 36.464703, 19.713528>,  <35.848660, 37.082821, 19.361542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780197, 36.464703, 19.713528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077049, 36.636543, 19.919319>,  <36.255161, 36.739647, 20.042793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077049, 36.636543, 19.919319>,  <35.780197, 36.464703, 19.713528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077049, 36.636543, 19.919319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284194, -0.493482, 0.822016,
		0.607028, -0.756251, -0.244134,
		0.742126, 0.429605, 0.514479,
		36.299686, 36.765423, 20.073664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904469, 35.973557, 20.175894>,  <35.780197, 36.464703, 19.713528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904469, 35.973557, 20.175894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.052013, 36.321926, 20.305777>,  <36.140541, 36.530949, 20.383707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.052013, 36.321926, 20.305777>,  <35.904469, 35.973557, 20.175894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052013, 36.321926, 20.305777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330876, -0.203422, 0.921488,
		0.868596, -0.447342, 0.213132,
		0.368865, 0.870922, 0.324707,
		36.162674, 36.583202, 20.403189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401703, 35.410423, 20.027298>,  <35.904469, 35.973557, 20.175894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401703, 35.410423, 20.027298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433498, 35.011692, 20.028414>,  <36.452576, 34.772453, 20.029083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433498, 35.011692, 20.028414>,  <36.401703, 35.410423, 20.027298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433498, 35.011692, 20.028414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171226, 0.010899, -0.985172,
		0.982020, 0.078784, 0.171550,
		0.079486, -0.996832, 0.002787,
		36.457344, 34.712643, 20.029249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991234, 35.361950, 19.649694>,  <36.401703, 35.410423, 20.027298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991234, 35.361950, 19.649694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800621, 35.011562, 19.619770>,  <36.686253, 34.801331, 19.601814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800621, 35.011562, 19.619770>,  <36.991234, 35.361950, 19.649694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800621, 35.011562, 19.619770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088629, 0.036796, -0.995385,
		0.874676, -0.480968, 0.060102,
		-0.476537, -0.875966, -0.074812,
		36.657661, 34.748772, 19.597326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413036, 35.015152, 19.188187>,  <36.991234, 35.361950, 19.649694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413036, 35.015152, 19.188187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.074680, 34.802841, 19.167263>,  <36.871666, 34.675453, 19.154709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.074680, 34.802841, 19.167263>,  <37.413036, 35.015152, 19.188187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074680, 34.802841, 19.167263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146122, -0.136305, -0.979831,
		0.512944, -0.836477, 0.192858,
		-0.845894, -0.530779, -0.052311,
		36.820911, 34.643608, 19.151569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635311, 34.377056, 18.876530>,  <37.413036, 35.015152, 19.188187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635311, 34.377056, 18.876530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.243332, 34.434109, 18.820877>,  <37.008144, 34.468342, 18.787485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.243332, 34.434109, 18.820877>,  <37.635311, 34.377056, 18.876530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243332, 34.434109, 18.820877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112342, -0.181185, -0.977011,
		-0.164558, -0.973051, 0.161528,
		-0.979949, 0.142628, -0.139130,
		36.949348, 34.476898, 18.779139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482410, 33.918720, 18.376900>,  <37.635311, 34.377056, 18.876530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482410, 33.918720, 18.376900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153267, 34.145554, 18.362337>,  <36.955780, 34.281654, 18.353600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153267, 34.145554, 18.362337>,  <37.482410, 33.918720, 18.376900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153267, 34.145554, 18.362337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048139, -0.133403, -0.989892,
		-0.566210, -0.812784, 0.137071,
		-0.822854, 0.567085, -0.036407,
		36.906410, 34.315678, 18.351416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037762, 33.441360, 18.078882>,  <37.482410, 33.918720, 18.376900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037762, 33.441360, 18.078882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.905987, 33.817013, 18.039904>,  <36.826920, 34.042404, 18.016516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.905987, 33.817013, 18.039904>,  <37.037762, 33.441360, 18.078882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905987, 33.817013, 18.039904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094059, -0.135340, -0.986325,
		-0.939480, -0.315769, 0.132920,
		-0.329441, 0.939134, -0.097448,
		36.807156, 34.098755, 18.010670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518841, 33.485111, 17.721605>,  <37.037762, 33.441360, 18.078882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518841, 33.485111, 17.721605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673119, 33.847099, 17.649755>,  <36.765686, 34.064293, 17.606646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673119, 33.847099, 17.649755>,  <36.518841, 33.485111, 17.721605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673119, 33.847099, 17.649755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035148, -0.208957, -0.977293,
		-0.921959, 0.370618, -0.112401,
		0.385690, 0.904974, -0.179624,
		36.788826, 34.118591, 17.595869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412426, 33.508286, 17.102930>,  <36.518841, 33.485111, 17.721605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412426, 33.508286, 17.102930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637936, 33.838070, 17.122604>,  <36.773243, 34.035942, 17.134409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637936, 33.838070, 17.122604>,  <36.412426, 33.508286, 17.102930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637936, 33.838070, 17.122604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065671, 0.014618, -0.997734,
		-0.823314, 0.565727, -0.045902,
		0.563774, 0.824463, 0.049187,
		36.807068, 34.085407, 17.137362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030399, 34.001652, 16.649837>,  <36.412426, 33.508286, 17.102930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030399, 34.001652, 16.649837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.422665, 34.066032, 16.694382>,  <36.658024, 34.104660, 16.721107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.422665, 34.066032, 16.694382>,  <36.030399, 34.001652, 16.649837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422665, 34.066032, 16.694382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097134, 0.093733, -0.990848,
		-0.169917, 0.982501, 0.076287,
		0.980659, 0.160952, 0.111361,
		36.716862, 34.114319, 16.727791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.651100, 34.068378, 33.111252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002110, 34.084595, 32.920124>,  <38.212715, 34.094322, 32.805447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002110, 34.084595, 32.920124>,  <37.651100, 34.068378, 33.111252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002110, 34.084595, 32.920124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448998, -0.280435, -0.848385,
		-0.168388, 0.959017, -0.227887,
		0.877523, 0.040537, -0.477819,
		38.265366, 34.096756, 32.776779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800503, 34.656647, 32.612816>,  <37.651100, 34.068378, 33.111252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800503, 34.656647, 32.612816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996944, 34.329998, 32.491531>,  <38.114811, 34.134007, 32.418758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996944, 34.329998, 32.491531>,  <37.800503, 34.656647, 32.612816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996944, 34.329998, 32.491531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556340, -0.026190, -0.830542,
		0.670300, 0.576574, -0.467183,
		0.491105, -0.816625, -0.303215,
		38.144276, 34.085011, 32.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772743, 34.704155, 31.868891>,  <37.800503, 34.656647, 32.612816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772743, 34.704155, 31.868891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908894, 34.331711, 31.921320>,  <37.990585, 34.108246, 31.952778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908894, 34.331711, 31.921320>,  <37.772743, 34.704155, 31.868891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908894, 34.331711, 31.921320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348190, -0.254300, -0.902272,
		0.873445, 0.261475, -0.410761,
		0.340378, -0.931108, 0.131074,
		38.011005, 34.052380, 31.960642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163895, 34.544807, 31.359247>,  <37.772743, 34.704155, 31.868891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163895, 34.544807, 31.359247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029034, 34.193066, 31.493748>,  <37.948116, 33.982021, 31.574448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029034, 34.193066, 31.493748>,  <38.163895, 34.544807, 31.359247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029034, 34.193066, 31.493748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427364, -0.175293, -0.886923,
		0.838863, -0.442727, -0.316705,
		-0.337148, -0.879355, 0.336252,
		37.927891, 33.929260, 31.594624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402328, 34.065437, 30.855709>,  <38.163895, 34.544807, 31.359247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402328, 34.065437, 30.855709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089752, 33.892265, 31.035454>,  <37.902206, 33.788361, 31.143301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089752, 33.892265, 31.035454>,  <38.402328, 34.065437, 30.855709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089752, 33.892265, 31.035454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364224, -0.268262, -0.891839,
		0.506650, -0.860586, 0.051946,
		-0.781438, -0.432930, 0.449361,
		37.855320, 33.762386, 31.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383915, 33.378284, 30.523594>,  <38.402328, 34.065437, 30.855709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383915, 33.378284, 30.523594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018936, 33.421448, 30.681482>,  <37.799950, 33.447346, 30.776215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018936, 33.421448, 30.681482>,  <38.383915, 33.378284, 30.523594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018936, 33.421448, 30.681482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407906, -0.163093, -0.898339,
		-0.032564, -0.980691, 0.192831,
		-0.912443, 0.107910, 0.394719,
		37.745205, 33.453823, 30.799898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961311, 32.903622, 30.208452>,  <38.383915, 33.378284, 30.523594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961311, 32.903622, 30.208452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.673538, 33.131344, 30.367605>,  <37.500874, 33.267975, 30.463097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.673538, 33.131344, 30.367605>,  <37.961311, 32.903622, 30.208452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673538, 33.131344, 30.367605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544352, -0.106364, -0.832086,
		-0.431388, -0.815219, 0.386422,
		-0.719434, 0.569302, 0.397882,
		37.457706, 33.302135, 30.486969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384380, 32.536278, 30.078829>,  <37.961311, 32.903622, 30.208452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384380, 32.536278, 30.078829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251244, 32.904694, 30.159725>,  <37.171364, 33.125744, 30.208263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251244, 32.904694, 30.159725>,  <37.384380, 32.536278, 30.078829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251244, 32.904694, 30.159725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421733, 0.046432, -0.905531,
		-0.843422, -0.386687, 0.372979,
		-0.332839, 0.921042, 0.202240,
		37.151390, 33.181007, 30.220398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742367, 32.517570, 29.948107>,  <37.384380, 32.536278, 30.078829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742367, 32.517570, 29.948107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855827, 32.900482, 29.925623>,  <36.923904, 33.130230, 29.912132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855827, 32.900482, 29.925623>,  <36.742367, 32.517570, 29.948107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855827, 32.900482, 29.925623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592623, 0.128913, -0.795097,
		-0.753883, 0.258841, 0.603871,
		0.283651, 0.957279, -0.056210,
		36.940922, 33.187664, 29.908760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134087, 32.906738, 29.734484>,  <36.742367, 32.517570, 29.948107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134087, 32.906738, 29.734484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427044, 33.142662, 29.598412>,  <36.602818, 33.284214, 29.516768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427044, 33.142662, 29.598412>,  <36.134087, 32.906738, 29.734484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427044, 33.142662, 29.598412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523593, 0.168494, -0.835141,
		-0.435252, 0.789772, 0.432222,
		0.732398, 0.589805, -0.340182,
		36.646763, 33.319603, 29.496357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753700, 33.500610, 29.484688>,  <36.134087, 32.906738, 29.734484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753700, 33.500610, 29.484688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117088, 33.530224, 29.320152>,  <36.335121, 33.547993, 29.221432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117088, 33.530224, 29.320152>,  <35.753700, 33.500610, 29.484688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117088, 33.530224, 29.320152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411984, -0.007025, -0.911164,
		-0.070348, 0.997231, 0.024119,
		0.908472, 0.074035, -0.411337,
		36.389629, 33.552433, 29.196751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697762, 34.134789, 28.992702>,  <35.753700, 33.500610, 29.484688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697762, 34.134789, 28.992702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972614, 33.875835, 28.860798>,  <36.137527, 33.720463, 28.781654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972614, 33.875835, 28.860798>,  <35.697762, 34.134789, 28.992702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972614, 33.875835, 28.860798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414590, 0.023341, -0.909709,
		0.596629, 0.761805, -0.252361,
		0.687131, -0.647385, -0.329763,
		36.178753, 33.681622, 28.761869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320927, 34.667999, 29.003914>,  <35.697762, 34.134789, 28.992702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320927, 34.667999, 29.003914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141911, 35.024849, 29.028614>,  <36.034500, 35.238960, 29.043434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141911, 35.024849, 29.028614>,  <36.320927, 34.667999, 29.003914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141911, 35.024849, 29.028614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168444, 0.016284, 0.985577,
		0.878255, 0.451490, -0.157561,
		-0.447544, 0.892128, 0.061750,
		36.007648, 35.292488, 29.047138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728603, 35.241096, 29.347466>,  <36.320927, 34.667999, 29.003914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728603, 35.241096, 29.347466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347038, 35.357559, 29.376522>,  <36.118099, 35.427437, 29.393957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347038, 35.357559, 29.376522>,  <36.728603, 35.241096, 29.347466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347038, 35.357559, 29.376522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116184, 0.135143, 0.983991,
		0.276682, 0.947081, -0.162743,
		-0.953912, 0.291160, 0.072644,
		36.060863, 35.444908, 29.398315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708015, 35.735943, 29.934528>,  <36.728603, 35.241096, 29.347466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708015, 35.735943, 29.934528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316238, 35.666500, 29.893446>,  <36.081173, 35.624836, 29.868795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316238, 35.666500, 29.893446>,  <36.708015, 35.735943, 29.934528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316238, 35.666500, 29.893446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123631, 0.114335, 0.985720,
		-0.159383, 0.978156, -0.133448,
		-0.979445, -0.173605, -0.102707,
		36.022404, 35.614418, 29.862635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335373, 36.424969, 30.097742>,  <36.708015, 35.735943, 29.934528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335373, 36.424969, 30.097742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084526, 36.121033, 30.166288>,  <35.934017, 35.938671, 30.207417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084526, 36.121033, 30.166288>,  <36.335373, 36.424969, 30.097742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084526, 36.121033, 30.166288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189065, 0.361912, 0.912839,
		-0.755631, 0.540058, -0.370620,
		-0.627118, -0.759840, 0.171366,
		35.896389, 35.893082, 30.217697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787563, 36.743557, 30.503582>,  <36.335373, 36.424969, 30.097742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787563, 36.743557, 30.503582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753605, 36.351547, 30.575512>,  <35.733231, 36.116341, 30.618670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753605, 36.351547, 30.575512>,  <35.787563, 36.743557, 30.503582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753605, 36.351547, 30.575512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207934, 0.193930, 0.958725,
		-0.974452, 0.043997, -0.220244,
		-0.084893, -0.980028, 0.179827,
		35.728138, 36.057537, 30.629459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215076, 36.613010, 30.932520>,  <35.787563, 36.743557, 30.503582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215076, 36.613010, 30.932520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398533, 36.265797, 31.008583>,  <35.508606, 36.057468, 31.054222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398533, 36.265797, 31.008583>,  <35.215076, 36.613010, 30.932520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398533, 36.265797, 31.008583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326719, 0.034282, 0.944500,
		-0.826378, -0.495319, -0.267880,
		0.458645, -0.868035, 0.190159,
		35.536125, 36.005386, 31.065632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753223, 36.278275, 31.334869>,  <35.215076, 36.613010, 30.932520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753223, 36.278275, 31.334869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092205, 36.077213, 31.403172>,  <35.295593, 35.956577, 31.444153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092205, 36.077213, 31.403172>,  <34.753223, 36.278275, 31.334869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092205, 36.077213, 31.403172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197186, 0.000588, 0.980366,
		-0.492886, -0.864487, -0.098618,
		0.847455, -0.502655, 0.170754,
		35.346443, 35.926418, 31.454397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571465, 35.682446, 31.789808>,  <34.753223, 36.278275, 31.334869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571465, 35.682446, 31.789808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962486, 35.745564, 31.845652>,  <35.197098, 35.783436, 31.879158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962486, 35.745564, 31.845652>,  <34.571465, 35.682446, 31.789808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962486, 35.745564, 31.845652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153933, 0.082485, 0.984632,
		0.143857, -0.984020, 0.104924,
		0.977553, 0.157798, 0.139607,
		35.255753, 35.792900, 31.887533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620197, 35.604561, 32.433514>,  <34.571465, 35.682446, 31.789808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620197, 35.604561, 32.433514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995300, 35.719700, 32.355785>,  <35.220360, 35.788784, 32.309151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995300, 35.719700, 32.355785>,  <34.620197, 35.604561, 32.433514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995300, 35.719700, 32.355785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146904, 0.178226, 0.972962,
		0.314702, -0.940944, 0.124845,
		0.937754, 0.287852, -0.194316,
		35.276627, 35.806057, 32.297489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043934, 35.196411, 32.868122>,  <34.620197, 35.604561, 32.433514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043934, 35.196411, 32.868122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202118, 35.549900, 32.768002>,  <35.297028, 35.761993, 32.707928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202118, 35.549900, 32.768002>,  <35.043934, 35.196411, 32.868122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202118, 35.549900, 32.768002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188495, 0.188630, 0.963788,
		0.898933, -0.428321, -0.091981,
		0.395460, 0.883719, -0.250302,
		35.320755, 35.815018, 32.692909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721863, 35.188416, 33.236389>,  <35.043934, 35.196411, 32.868122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721863, 35.188416, 33.236389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621155, 35.563568, 33.140896>,  <35.560730, 35.788658, 33.083599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621155, 35.563568, 33.140896>,  <35.721863, 35.188416, 33.236389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621155, 35.563568, 33.140896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187921, 0.289361, 0.938592,
		0.949366, 0.191449, -0.249100,
		-0.251772, 0.937879, -0.238733,
		35.545624, 35.844933, 33.069275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256069, 35.604412, 33.450062>,  <35.721863, 35.188416, 33.236389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256069, 35.604412, 33.450062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930016, 35.835293, 33.430454>,  <35.734383, 35.973820, 33.418690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930016, 35.835293, 33.430454>,  <36.256069, 35.604412, 33.450062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930016, 35.835293, 33.430454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140702, 0.279372, 0.949818,
		0.561929, 0.767329, -0.308937,
		-0.815131, 0.577198, -0.049022,
		35.685474, 36.008453, 33.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493774, 36.229813, 33.759327>,  <36.256069, 35.604412, 33.450062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493774, 36.229813, 33.759327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094002, 36.225147, 33.772022>,  <35.854137, 36.222347, 33.779640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094002, 36.225147, 33.772022>,  <36.493774, 36.229813, 33.759327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094002, 36.225147, 33.772022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026424, 0.316465, 0.948236,
		-0.021105, 0.948533, -0.315976,
		-0.999428, -0.011663, 0.031743,
		35.794174, 36.221649, 33.781544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253933, 36.831680, 33.897007>,  <36.493774, 36.229813, 33.759327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253933, 36.831680, 33.897007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995377, 36.570824, 34.055439>,  <35.840240, 36.414310, 34.150497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995377, 36.570824, 34.055439>,  <36.253933, 36.831680, 33.897007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995377, 36.570824, 34.055439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205300, 0.351312, 0.913473,
		-0.734865, 0.671779, -0.093200,
		-0.646394, -0.652145, 0.396083,
		35.801460, 36.375179, 34.174263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571995, 37.535332, 33.532429>,  <36.253933, 36.831680, 33.897007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571995, 37.535332, 33.532429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774952, 37.836113, 33.700768>,  <36.896729, 38.016582, 33.801773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774952, 37.836113, 33.700768>,  <36.571995, 37.535332, 33.532429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774952, 37.836113, 33.700768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063129, 0.454637, -0.888437,
		-0.859398, 0.477356, 0.183210,
		0.507395, 0.751955, 0.420849,
		36.927170, 38.061699, 33.827023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391922, 38.134361, 33.143940>,  <36.571995, 37.535332, 33.532429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391922, 38.134361, 33.143940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750065, 38.235897, 33.290310>,  <36.964951, 38.296818, 33.378132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750065, 38.235897, 33.290310>,  <36.391922, 38.134361, 33.143940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750065, 38.235897, 33.290310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179710, 0.545857, -0.818379,
		-0.407479, 0.798502, 0.443119,
		0.895358, 0.253839, 0.365924,
		37.018673, 38.312050, 33.400085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403164, 38.812370, 32.997791>,  <36.391922, 38.134361, 33.143940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403164, 38.812370, 32.997791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773087, 38.666981, 33.042717>,  <36.995041, 38.579746, 33.069672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773087, 38.666981, 33.042717>,  <36.403164, 38.812370, 32.997791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773087, 38.666981, 33.042717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294241, 0.496273, -0.816783,
		0.241141, 0.788416, 0.565907,
		0.924810, -0.363473, 0.112313,
		37.050529, 38.557938, 33.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803089, 39.386501, 32.789684>,  <36.403164, 38.812370, 32.997791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803089, 39.386501, 32.789684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035954, 39.065556, 32.737064>,  <37.175671, 38.872990, 32.705494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035954, 39.065556, 32.737064>,  <36.803089, 39.386501, 32.789684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035954, 39.065556, 32.737064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321744, 0.375920, -0.869003,
		0.746706, 0.463573, 0.477000,
		0.582160, -0.802362, -0.131550,
		37.210602, 38.824848, 32.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375755, 39.671452, 32.567772>,  <36.803089, 39.386501, 32.789684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375755, 39.671452, 32.567772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398014, 39.290016, 32.449406>,  <37.411369, 39.061153, 32.378384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398014, 39.290016, 32.449406>,  <37.375755, 39.671452, 32.567772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398014, 39.290016, 32.449406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425359, 0.290776, -0.857041,
		0.903313, -0.078182, 0.421799,
		0.055643, -0.953592, -0.295917,
		37.414707, 39.003941, 32.360630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998837, 39.709969, 32.268822>,  <37.375755, 39.671452, 32.567772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998837, 39.709969, 32.268822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802582, 39.389778, 32.131119>,  <37.684830, 39.197666, 32.048496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802582, 39.389778, 32.131119>,  <37.998837, 39.709969, 32.268822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802582, 39.389778, 32.131119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426791, 0.123682, -0.895853,
		0.759685, -0.586468, 0.280951,
		-0.490640, -0.800474, -0.344258,
		37.655388, 39.149635, 32.027840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476063, 39.299625, 31.885118>,  <37.998837, 39.709969, 32.268822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476063, 39.299625, 31.885118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110882, 39.179352, 31.774763>,  <37.891773, 39.107189, 31.708549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110882, 39.179352, 31.774763>,  <38.476063, 39.299625, 31.885118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110882, 39.179352, 31.774763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327831, -0.137810, -0.934631,
		0.243005, -0.943716, 0.224386,
		-0.912949, -0.300681, -0.275890,
		37.836998, 39.089149, 31.691996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494884, 38.828648, 31.248281>,  <38.476063, 39.299625, 31.885118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494884, 38.828648, 31.248281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114639, 38.946430, 31.209042>,  <37.886490, 39.017101, 31.185497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114639, 38.946430, 31.209042>,  <38.494884, 38.828648, 31.248281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114639, 38.946430, 31.209042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117790, 0.049852, -0.991786,
		-0.287150, -0.954363, -0.082075,
		-0.950616, 0.294459, -0.098099,
		37.829456, 39.034767, 31.179611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322102, 38.502937, 30.596615>,  <38.494884, 38.828648, 31.248281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322102, 38.502937, 30.596615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033062, 38.771736, 30.661455>,  <37.859638, 38.933014, 30.700359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033062, 38.771736, 30.661455>,  <38.322102, 38.502937, 30.596615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033062, 38.771736, 30.661455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024150, 0.258893, -0.965604,
		-0.690848, -0.693828, -0.203304,
		-0.722597, 0.671995, 0.162100,
		37.816284, 38.973335, 30.710085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860817, 38.309269, 30.166082>,  <38.322102, 38.502937, 30.596615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860817, 38.309269, 30.166082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767372, 38.686928, 30.259050>,  <37.711304, 38.913521, 30.314831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767372, 38.686928, 30.259050>,  <37.860817, 38.309269, 30.166082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767372, 38.686928, 30.259050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114026, 0.263985, -0.957763,
		-0.965620, -0.197246, -0.169327,
		-0.233615, 0.944143, 0.232418,
		37.697289, 38.970169, 30.328775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241035, 38.512486, 29.764223>,  <37.860817, 38.309269, 30.166082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241035, 38.512486, 29.764223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448696, 38.838383, 29.867506>,  <37.573292, 39.033920, 29.929476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448696, 38.838383, 29.867506>,  <37.241035, 38.512486, 29.764223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448696, 38.838383, 29.867506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065457, 0.263318, -0.962486,
		-0.852173, 0.516575, 0.083370,
		0.519149, 0.814748, 0.258207,
		37.604443, 39.082806, 29.944967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887615, 39.075535, 29.312864>,  <37.241035, 38.512486, 29.764223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887615, 39.075535, 29.312864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242413, 39.216549, 29.432177>,  <37.455292, 39.301155, 29.503763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242413, 39.216549, 29.432177>,  <36.887615, 39.075535, 29.312864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242413, 39.216549, 29.432177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188780, 0.312668, -0.930914,
		-0.421439, 0.882020, 0.210782,
		0.886990, 0.352532, 0.298278,
		37.508511, 39.322308, 29.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890865, 39.728367, 29.032324>,  <36.887615, 39.075535, 29.312864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890865, 39.728367, 29.032324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273277, 39.624279, 29.086420>,  <37.502724, 39.561829, 29.118877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273277, 39.624279, 29.086420>,  <36.890865, 39.728367, 29.032324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273277, 39.624279, 29.086420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227891, 0.368970, -0.901070,
		0.184574, 0.892271, 0.412049,
		0.956032, -0.260216, 0.135238,
		37.560085, 39.546215, 29.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251522, 40.196323, 28.593613>,  <36.890865, 39.728367, 29.032324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251522, 40.196323, 28.593613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559303, 39.950092, 28.661736>,  <37.743973, 39.802353, 28.702610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559303, 39.950092, 28.661736>,  <37.251522, 40.196323, 28.593613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559303, 39.950092, 28.661736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392539, 0.245430, -0.886384,
		0.503840, 0.748884, 0.430485,
		0.769454, -0.615578, 0.170309,
		37.790138, 39.765419, 28.712828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820843, 40.500214, 28.180870>,  <37.251522, 40.196323, 28.593613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820843, 40.500214, 28.180870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924698, 40.126720, 28.279446>,  <37.987011, 39.902626, 28.338591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924698, 40.126720, 28.279446>,  <37.820843, 40.500214, 28.180870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924698, 40.126720, 28.279446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293294, -0.166893, -0.941342,
		0.920091, 0.316685, 0.230526,
		0.259636, -0.933733, 0.246439,
		38.002590, 39.846600, 28.353376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443150, 40.339199, 27.810825>,  <37.820843, 40.500214, 28.180870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443150, 40.339199, 27.810825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292477, 39.989235, 27.932570>,  <38.202072, 39.779255, 28.005615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292477, 39.989235, 27.932570>,  <38.443150, 40.339199, 27.810825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292477, 39.989235, 27.932570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163843, -0.386307, -0.907702,
		0.911738, -0.292048, 0.288863,
		-0.376682, -0.874915, 0.304361,
		38.179474, 39.726761, 28.023878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944969, 39.905891, 27.757492>,  <38.443150, 40.339199, 27.810825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944969, 39.905891, 27.757492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622704, 39.672215, 27.718252>,  <38.429344, 39.532009, 27.694708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622704, 39.672215, 27.718252>,  <38.944969, 39.905891, 27.757492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622704, 39.672215, 27.718252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327362, -0.301066, -0.895653,
		0.493703, -0.753707, 0.433801,
		-0.805663, -0.584196, -0.098097,
		38.381004, 39.496956, 27.688824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218082, 39.205067, 27.514446>,  <38.944969, 39.905891, 27.757492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218082, 39.205067, 27.514446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833504, 39.212894, 27.404728>,  <38.602757, 39.217590, 27.338896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833504, 39.212894, 27.404728>,  <39.218082, 39.205067, 27.514446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833504, 39.212894, 27.404728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244928, -0.392575, -0.886507,
		-0.125027, -0.919512, 0.372648,
		-0.961446, 0.019566, -0.274297,
		38.545071, 39.218765, 27.322439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145657, 38.529137, 27.099154>,  <39.218082, 39.205067, 27.514446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145657, 38.529137, 27.099154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854866, 38.787544, 27.006060>,  <38.680393, 38.942589, 26.950203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854866, 38.787544, 27.006060>,  <39.145657, 38.529137, 27.099154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854866, 38.787544, 27.006060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036436, -0.302168, -0.952558,
		-0.685700, -0.700963, 0.196129,
		-0.726972, 0.646023, -0.232737,
		38.636776, 38.981350, 26.936239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523136, 38.229382, 26.737650>,  <39.145657, 38.529137, 27.099154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523136, 38.229382, 26.737650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514397, 38.618893, 26.647068>,  <38.509151, 38.852600, 26.592718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514397, 38.618893, 26.647068>,  <38.523136, 38.229382, 26.737650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514397, 38.618893, 26.647068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001055, -0.226486, -0.974014,
		-0.999761, -0.021520, 0.003921,
		-0.021849, 0.973777, -0.226454,
		38.507843, 38.911026, 26.579132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253937, 38.254894, 26.107367>,  <38.523136, 38.229382, 26.737650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253937, 38.254894, 26.107367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427380, 38.613533, 26.143349>,  <38.531445, 38.828716, 26.164938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427380, 38.613533, 26.143349>,  <38.253937, 38.254894, 26.107367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427380, 38.613533, 26.143349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150442, 0.026397, -0.988266,
		-0.888454, 0.442054, -0.123440,
		0.433608, 0.896600, 0.089956,
		38.557461, 38.882515, 26.170336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864647, 38.765465, 25.666611>,  <38.253937, 38.254894, 26.107367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864647, 38.765465, 25.666611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235874, 38.904003, 25.721357>,  <38.458611, 38.987125, 25.754206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235874, 38.904003, 25.721357>,  <37.864647, 38.765465, 25.666611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235874, 38.904003, 25.721357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073154, 0.190804, -0.978899,
		-0.365154, 0.918497, 0.151742,
		0.928069, 0.346348, 0.136865,
		38.514294, 39.007908, 25.762417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035275, 39.316120, 25.152620>,  <37.864647, 38.765465, 25.666611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035275, 39.316120, 25.152620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411541, 39.277752, 25.282822>,  <38.637299, 39.254730, 25.360943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411541, 39.277752, 25.282822>,  <38.035275, 39.316120, 25.152620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411541, 39.277752, 25.282822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334779, 0.105525, -0.936370,
		0.055469, 0.989779, 0.131376,
		0.940663, -0.095921, 0.325504,
		38.693741, 39.248974, 25.380472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435394, 39.871399, 24.806740>,  <38.035275, 39.316120, 25.152620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435394, 39.871399, 24.806740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687054, 39.586479, 24.931194>,  <38.838047, 39.415527, 25.005867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687054, 39.586479, 24.931194>,  <38.435394, 39.871399, 24.806740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687054, 39.586479, 24.931194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354901, -0.092881, -0.930278,
		0.691536, 0.695702, 0.194361,
		0.629144, -0.712300, 0.311136,
		38.875797, 39.372787, 25.024536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118599, 40.016365, 24.654337>,  <38.435394, 39.871399, 24.806740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118599, 40.016365, 24.654337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079540, 39.618996, 24.678272>,  <39.056107, 39.380573, 24.692633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079540, 39.618996, 24.678272>,  <39.118599, 40.016365, 24.654337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079540, 39.618996, 24.678272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420491, -0.095675, -0.902238,
		0.902027, -0.062938, 0.427067,
		-0.097644, -0.993421, 0.059836,
		39.050247, 39.320969, 24.696222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647720, 39.748974, 24.219059>,  <39.118599, 40.016365, 24.654337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647720, 39.748974, 24.219059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425491, 39.421364, 24.276369>,  <39.292152, 39.224796, 24.310755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425491, 39.421364, 24.276369>,  <39.647720, 39.748974, 24.219059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425491, 39.421364, 24.276369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201723, -0.299938, -0.932387,
		0.806625, -0.489110, 0.331856,
		-0.555575, -0.819029, 0.143273,
		39.258820, 39.175655, 24.319351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036335, 39.181404, 23.955835>,  <39.647720, 39.748974, 24.219059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036335, 39.181404, 23.955835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.660984, 39.043156, 23.955236>,  <39.435776, 38.960209, 23.954878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.660984, 39.043156, 23.955236>,  <40.036335, 39.181404, 23.955835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660984, 39.043156, 23.955236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173668, -0.467767, -0.866622,
		0.298822, -0.813475, 0.498963,
		-0.938374, -0.345619, -0.001495,
		39.379471, 38.939468, 23.954788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059956, 38.420582, 23.933054>,  <40.036335, 39.181404, 23.955835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059956, 38.420582, 23.933054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737938, 38.571384, 23.749853>,  <39.544727, 38.661865, 23.639933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737938, 38.571384, 23.749853>,  <40.059956, 38.420582, 23.933054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737938, 38.571384, 23.749853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257096, -0.474053, -0.842125,
		-0.534611, -0.795697, 0.284704,
		-0.805042, 0.377013, -0.458005,
		39.496426, 38.684486, 23.612452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578373, 37.836220, 23.868950>,  <40.059956, 38.420582, 23.933054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578373, 37.836220, 23.868950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.963959, 37.789776, 23.773203>,  <41.195309, 37.761909, 23.715755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.963959, 37.789776, 23.773203>,  <40.578373, 37.836220, 23.868950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963959, 37.789776, 23.773203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263575, 0.294577, 0.918560,
		-0.036138, -0.948548, 0.314564,
		0.963962, -0.116106, -0.239368,
		41.253147, 37.754944, 23.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832928, 37.493057, 24.368761>,  <40.578373, 37.836220, 23.868950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832928, 37.493057, 24.368761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.167690, 37.653328, 24.219606>,  <41.368549, 37.749493, 24.130114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.167690, 37.653328, 24.219606>,  <40.832928, 37.493057, 24.368761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167690, 37.653328, 24.219606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355608, 0.119855, 0.926918,
		0.416091, -0.908344, -0.042178,
		0.836905, 0.400681, -0.372885,
		41.418762, 37.773533, 24.107740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369568, 37.156281, 24.688431>,  <40.832928, 37.493057, 24.368761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369568, 37.156281, 24.688431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.517365, 37.502155, 24.552317>,  <41.606041, 37.709679, 24.470648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.517365, 37.502155, 24.552317>,  <41.369568, 37.156281, 24.688431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517365, 37.502155, 24.552317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360574, 0.204090, 0.910128,
		0.856426, -0.458978, -0.236375,
		0.369487, 0.864688, -0.340284,
		41.628212, 37.761562, 24.450232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023327, 37.131741, 24.792494>,  <41.369568, 37.156281, 24.688431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023327, 37.131741, 24.792494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.908470, 37.514896, 24.793146>,  <41.839558, 37.744789, 24.793537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.908470, 37.514896, 24.793146>,  <42.023327, 37.131741, 24.792494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908470, 37.514896, 24.793146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283458, 0.083346, 0.955356,
		0.914987, 0.274784, -0.295453,
		-0.287141, 0.957887, 0.001629,
		41.822327, 37.802261, 24.793634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529560, 37.444778, 25.210514>,  <42.023327, 37.131741, 24.792494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529560, 37.444778, 25.210514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.244949, 37.725590, 25.222439>,  <42.074184, 37.894077, 25.229593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.244949, 37.725590, 25.222439>,  <42.529560, 37.444778, 25.210514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244949, 37.725590, 25.222439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099592, 0.058757, 0.993292,
		0.695570, 0.709719, -0.111724,
		-0.711522, 0.702031, 0.029813,
		42.031494, 37.936199, 25.231382>
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
