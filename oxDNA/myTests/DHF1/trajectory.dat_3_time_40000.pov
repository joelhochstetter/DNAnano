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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.898282, 0.825210, 3.131703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635308, 1.105918, 3.021940>,  <3.477524, 1.274343, 2.956082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635308, 1.105918, 3.021940>,  <3.898282, 0.825210, 3.131703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.635308, 1.105918, 3.021940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747857, 0.652229, -0.123723,
		0.092152, -0.286557, -0.953621,
		-0.657433, 0.701770, -0.274408,
		3.438078, 1.316449, 2.939617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.187400, 1.472718, 3.266250>,  <3.898282, 0.825210, 3.131703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.187400, 1.472718, 3.266250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.110227, 1.151251, 3.491423>,  <4.063922, 0.958370, 3.626527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.110227, 1.151251, 3.491423>,  <4.187400, 1.472718, 3.266250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.110227, 1.151251, 3.491423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726703, 0.268458, 0.632323,
		-0.659302, 0.531082, 0.532234,
		-0.192933, -0.803668, 0.562934,
		4.052347, 0.910150, 3.660303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.064878, 2.239641, 3.152909>,  <4.187400, 1.472718, 3.266250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.064878, 2.239641, 3.152909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417916, 2.057727, 3.105247>,  <4.629739, 1.948579, 3.076651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417916, 2.057727, 3.105247>,  <4.064878, 2.239641, 3.152909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417916, 2.057727, 3.105247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351246, -0.469411, -0.810111,
		0.312494, 0.756852, -0.574041,
		0.882595, -0.454784, -0.119154,
		4.682695, 1.921292, 3.069501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202516, 2.397904, 2.520259>,  <4.064878, 2.239641, 3.152909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202516, 2.397904, 2.520259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360948, 2.051355, 2.641928>,  <4.456007, 1.843426, 2.714929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360948, 2.051355, 2.641928>,  <4.202516, 2.397904, 2.520259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360948, 2.051355, 2.641928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372185, -0.454311, -0.809370,
		0.839404, 0.207367, -0.502394,
		0.396080, -0.866372, 0.304171,
		4.479772, 1.791443, 2.733179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.535189, 2.042163, 1.924626>,  <4.202516, 2.397904, 2.520259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.535189, 2.042163, 1.924626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403117, 1.775970, 2.192391>,  <4.323874, 1.616254, 2.353050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403117, 1.775970, 2.192391>,  <4.535189, 2.042163, 1.924626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403117, 1.775970, 2.192391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182330, -0.650863, -0.736975,
		0.926141, -0.365388, 0.093564,
		-0.330179, -0.665484, 0.669413,
		4.304063, 1.576325, 2.393215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.958166, 1.396252, 2.034388>,  <4.535189, 2.042163, 1.924626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.958166, 1.396252, 2.034388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562547, 1.360862, 2.081645>,  <4.325175, 1.339627, 2.109998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562547, 1.360862, 2.081645>,  <4.958166, 1.396252, 2.034388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.562547, 1.360862, 2.081645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028372, -0.671523, -0.740440,
		0.144846, -0.735682, 0.661658,
		-0.989047, -0.088477, 0.118141,
		4.265832, 1.334319, 2.117087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.623048, 0.795638, 2.299598>,  <4.958166, 1.396252, 2.034388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.623048, 0.795638, 2.299598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372802, 0.980679, 2.048327>,  <4.222654, 1.091703, 1.897564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372802, 0.980679, 2.048327>,  <4.623048, 0.795638, 2.299598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372802, 0.980679, 2.048327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066065, -0.770912, -0.633507,
		-0.777334, -0.437829, 0.451728,
		-0.625610, 0.462603, -0.628180,
		4.185117, 1.119459, 1.859873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.289781, 0.230801, 1.983870>,  <4.623048, 0.795638, 2.299598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.289781, 0.230801, 1.983870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232820, 0.537172, 1.733087>,  <4.198643, 0.720995, 1.582617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232820, 0.537172, 1.733087>,  <4.289781, 0.230801, 1.983870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232820, 0.537172, 1.733087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040169, -0.628420, -0.776836,
		-0.988993, -0.135809, 0.058723,
		-0.142404, 0.765927, -0.626958,
		4.190098, 0.766950, 1.544999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.610743, 2.508641, 3.483484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.591432, 2.777725, 3.778816>,  <2.579846, 2.939175, 3.956015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.591432, 2.777725, 3.778816>,  <2.610743, 2.508641, 3.483484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.591432, 2.777725, 3.778816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849315, -0.361380, 0.384796,
		0.525674, 0.645652, -0.553896,
		-0.048277, 0.672710, 0.738330,
		2.576949, 2.979538, 4.000315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.337730, 2.860441, 3.580033>,  <2.610743, 2.508641, 3.483484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.337730, 2.860441, 3.580033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121032, 2.867890, 3.916167>,  <2.991013, 2.872360, 4.117848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121032, 2.867890, 3.916167>,  <3.337730, 2.860441, 3.580033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121032, 2.867890, 3.916167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804244, -0.279137, 0.524665,
		0.244339, 0.960071, 0.136244,
		-0.541746, 0.018623, 0.840336,
		2.958508, 2.873477, 4.168268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.809393, 3.297968, 4.040700>,  <3.337730, 2.860441, 3.580033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.809393, 3.297968, 4.040700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.566285, 3.001653, 4.155138>,  <3.420421, 2.823864, 4.223802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.566285, 3.001653, 4.155138>,  <3.809393, 3.297968, 4.040700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.566285, 3.001653, 4.155138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734203, -0.386902, 0.557901,
		-0.302595, 0.549128, 0.779035,
		-0.607769, -0.740787, 0.286096,
		3.383955, 2.779417, 4.240967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959585, 3.215490, 4.672641>,  <3.809393, 3.297968, 4.040700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959585, 3.215490, 4.672641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.813287, 2.879451, 4.512407>,  <3.725509, 2.677828, 4.416267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.813287, 2.879451, 4.512407>,  <3.959585, 3.215490, 4.672641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.813287, 2.879451, 4.512407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746878, -0.521740, 0.412263,
		-0.555342, -0.148404, 0.818274,
		-0.365744, -0.840098, -0.400584,
		3.703564, 2.627422, 4.392232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.740383, 2.621301, 5.176499>,  <3.959585, 3.215490, 4.672641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.740383, 2.621301, 5.176499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879217, 2.518144, 4.815828>,  <3.962517, 2.456249, 4.599425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879217, 2.518144, 4.815828>,  <3.740383, 2.621301, 5.176499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.879217, 2.518144, 4.815828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640264, -0.637365, 0.428752,
		-0.685271, -0.726124, -0.056098,
		0.347082, -0.257894, -0.901679,
		3.983342, 2.440776, 4.545324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.731956, 1.786282, 5.098742>,  <3.740383, 2.621301, 5.176499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.731956, 1.786282, 5.098742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.998649, 2.025443, 4.920763>,  <4.158665, 2.168939, 4.813974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.998649, 2.025443, 4.920763>,  <3.731956, 1.786282, 5.098742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.998649, 2.025443, 4.920763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739826, -0.458747, 0.492148,
		0.090136, -0.657317, -0.748205,
		0.666733, 0.597902, -0.444950,
		4.198669, 2.204813, 4.787277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.294832, 1.445073, 4.871008>,  <3.731956, 1.786282, 5.098742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.294832, 1.445073, 4.871008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416035, 1.821614, 4.930396>,  <4.488757, 2.047538, 4.966029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416035, 1.821614, 4.930396>,  <4.294832, 1.445073, 4.871008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416035, 1.821614, 4.930396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707460, -0.326575, 0.626777,
		0.638504, -0.084882, -0.764923,
		0.303007, 0.941352, 0.148469,
		4.506938, 2.104019, 4.974937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.005584, 1.445239, 5.125628>,  <4.294832, 1.445073, 4.871008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.005584, 1.445239, 5.125628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899222, 1.814369, 5.237119>,  <4.835405, 2.035847, 5.304013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899222, 1.814369, 5.237119>,  <5.005584, 1.445239, 5.125628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899222, 1.814369, 5.237119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566315, -0.084445, 0.819851,
		0.780117, 0.375848, -0.500156,
		-0.265904, 0.922826, 0.278725,
		4.819451, 2.091217, 5.320736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
