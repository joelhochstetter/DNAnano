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
	<24.637951, 35.153141, 35.363831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370329, 34.981647, 35.120995>,  <24.209757, 34.878750, 34.975292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370329, 34.981647, 35.120995>,  <24.637951, 35.153141, 35.363831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370329, 34.981647, 35.120995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068639, -0.848992, 0.523928,
		-0.740038, 0.308866, 0.597450,
		-0.669054, -0.428735, -0.607086,
		24.169613, 34.853027, 34.938869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596012, 34.799690, 35.971077>,  <24.637951, 35.153141, 35.363831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596012, 34.799690, 35.971077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985596, 34.885990, 35.943195>,  <25.219345, 34.937771, 35.926468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985596, 34.885990, 35.943195>,  <24.596012, 34.799690, 35.971077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985596, 34.885990, 35.943195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074149, -0.012564, 0.997168,
		0.214267, -0.976367, -0.028235,
		0.973957, 0.215753, -0.069705,
		25.277782, 34.950714, 35.922283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874386, 34.305939, 36.411324>,  <24.596012, 34.799690, 35.971077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874386, 34.305939, 36.411324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088219, 34.643745, 36.398636>,  <25.216518, 34.846432, 36.391022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088219, 34.643745, 36.398636>,  <24.874386, 34.305939, 36.411324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088219, 34.643745, 36.398636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016573, 0.048005, 0.998710,
		0.844954, -0.533367, 0.039659,
		0.534582, 0.844521, -0.031722,
		25.248594, 34.897102, 36.389118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426714, 34.265003, 36.766792>,  <24.874386, 34.305939, 36.411324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426714, 34.265003, 36.766792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300056, 34.644390, 36.761791>,  <25.224062, 34.872021, 36.758789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300056, 34.644390, 36.761791>,  <25.426714, 34.265003, 36.766792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300056, 34.644390, 36.761791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127115, 0.055495, 0.990334,
		0.939989, 0.311992, -0.138135,
		-0.316643, 0.948462, -0.012506,
		25.205063, 34.928928, 36.758038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811541, 34.580177, 37.197941>,  <25.426714, 34.265003, 36.766792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811541, 34.580177, 37.197941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477594, 34.798763, 37.171467>,  <25.277227, 34.929913, 37.155582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477594, 34.798763, 37.171467>,  <25.811541, 34.580177, 37.197941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477594, 34.798763, 37.171467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001500, 0.117975, 0.993015,
		0.550453, 0.829133, -0.097674,
		-0.834865, 0.546462, -0.066183,
		25.227135, 34.962704, 37.151611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307131, 35.150970, 37.565853>,  <25.811541, 34.580177, 37.197941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307131, 35.150970, 37.565853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160973, 35.062248, 37.927471>,  <26.073278, 35.009014, 38.144440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160973, 35.062248, 37.927471>,  <26.307131, 35.150970, 37.565853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160973, 35.062248, 37.927471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306624, 0.945674, 0.108088,
		-0.878902, -0.237706, -0.413555,
		-0.365394, -0.221805, 0.904041,
		26.051353, 34.995708, 38.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561245, 35.472408, 37.699474>,  <26.307131, 35.150970, 37.565853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561245, 35.472408, 37.699474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775713, 35.417992, 38.032703>,  <25.904394, 35.385342, 38.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775713, 35.417992, 38.032703>,  <25.561245, 35.472408, 37.699474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775713, 35.417992, 38.032703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154756, 0.954356, 0.255450,
		-0.829804, -0.265888, 0.490642,
		0.536168, -0.136043, 0.833076,
		25.936563, 35.377178, 38.282627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162851, 35.590816, 38.217686>,  <25.561245, 35.472408, 37.699474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162851, 35.590816, 38.217686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526897, 35.688511, 38.351578>,  <25.745325, 35.747128, 38.431911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526897, 35.688511, 38.351578>,  <25.162851, 35.590816, 38.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526897, 35.688511, 38.351578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331813, 0.913425, 0.235703,
		-0.248180, -0.325583, 0.912361,
		0.910114, 0.244236, 0.334727,
		25.799932, 35.761784, 38.451996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111835, 35.984211, 38.854828>,  <25.162851, 35.590816, 38.217686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111835, 35.984211, 38.854828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464521, 36.084400, 38.694908>,  <25.676132, 36.144516, 38.598957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464521, 36.084400, 38.694908>,  <25.111835, 35.984211, 38.854828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464521, 36.084400, 38.694908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260538, 0.964998, 0.029986,
		0.393320, 0.077725, 0.916110,
		0.881714, 0.250476, -0.399803,
		25.729036, 36.159542, 38.574966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422688, 36.573524, 39.257832>,  <25.111835, 35.984211, 38.854828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422688, 36.573524, 39.257832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646584, 36.582424, 38.926483>,  <25.780922, 36.587765, 38.727676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646584, 36.582424, 38.926483>,  <25.422688, 36.573524, 39.257832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646584, 36.582424, 38.926483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159240, 0.983897, -0.081173,
		0.813224, 0.177346, 0.554270,
		0.559740, 0.022250, -0.828369,
		25.814507, 36.589100, 38.677971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690145, 37.160419, 39.271393>,  <25.422688, 36.573524, 39.257832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690145, 37.160419, 39.271393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751736, 37.080307, 38.884369>,  <25.788689, 37.032242, 38.652153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751736, 37.080307, 38.884369>,  <25.690145, 37.160419, 39.271393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751736, 37.080307, 38.884369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095625, 0.971625, -0.216337,
		0.983437, 0.125833, 0.130453,
		0.153974, -0.200279, -0.967564,
		25.797928, 37.020222, 38.594101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155083, 37.641113, 39.056576>,  <25.690145, 37.160419, 39.271393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155083, 37.641113, 39.056576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922110, 37.535355, 38.749104>,  <25.782326, 37.471901, 38.564621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922110, 37.535355, 38.749104>,  <26.155083, 37.641113, 39.056576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922110, 37.535355, 38.749104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246392, 0.958561, -0.143013,
		0.774637, 0.106101, -0.623442,
		-0.582433, -0.264394, -0.768679,
		25.747379, 37.456036, 38.518501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405176, 38.002209, 38.927162>,  <26.155083, 37.641113, 39.056576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405176, 38.002209, 38.927162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530489, 38.207256, 38.607395>,  <25.605677, 38.330284, 38.415535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530489, 38.207256, 38.607395>,  <25.405176, 38.002209, 38.927162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530489, 38.207256, 38.607395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429759, -0.827196, -0.362015,
		-0.846854, -0.230146, -0.479448,
		0.313281, 0.512621, -0.799422,
		25.624474, 38.361042, 38.367569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192841, 37.731087, 38.256218>,  <25.405176, 38.002209, 38.927162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192841, 37.731087, 38.256218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529360, 37.925613, 38.161804>,  <25.731272, 38.042328, 38.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529360, 37.925613, 38.161804>,  <25.192841, 37.731087, 38.256218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529360, 37.925613, 38.161804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340512, -0.815884, -0.467317,
		-0.419841, 0.312781, -0.851999,
		0.841300, 0.486314, -0.236036,
		25.781750, 38.071507, 38.090992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451693, 37.889381, 37.569946>,  <25.192841, 37.731087, 38.256218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451693, 37.889381, 37.569946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734732, 37.828800, 37.846024>,  <25.904556, 37.792454, 38.011669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734732, 37.828800, 37.846024>,  <25.451693, 37.889381, 37.569946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734732, 37.828800, 37.846024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182723, -0.904321, -0.385766,
		0.682581, 0.399081, -0.612223,
		0.707599, -0.151449, 0.690193,
		25.947012, 37.783367, 38.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356033, 37.192204, 37.436474>,  <25.451693, 37.889381, 37.569946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356033, 37.192204, 37.436474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621014, 37.280968, 37.722668>,  <25.780001, 37.334225, 37.894382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621014, 37.280968, 37.722668>,  <25.356033, 37.192204, 37.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621014, 37.280968, 37.722668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257690, -0.964331, 0.060503,
		0.703389, 0.144293, -0.696005,
		0.662449, 0.221910, 0.715484,
		25.819748, 37.347542, 37.937313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830721, 36.757366, 37.331448>,  <25.356033, 37.192204, 37.436474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830721, 36.757366, 37.331448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850874, 36.849583, 37.720150>,  <25.862965, 36.904915, 37.953373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850874, 36.849583, 37.720150>,  <25.830721, 36.757366, 37.331448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850874, 36.849583, 37.720150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231394, -0.949212, 0.213200,
		0.971555, 0.214117, -0.101169,
		0.050381, 0.230546, 0.971756,
		25.865988, 36.918747, 38.011677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460125, 36.474777, 37.564320>,  <25.830721, 36.757366, 37.331448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460125, 36.474777, 37.564320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290535, 36.511833, 37.924690>,  <26.188780, 36.534065, 38.140911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290535, 36.511833, 37.924690>,  <26.460125, 36.474777, 37.564320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290535, 36.511833, 37.924690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504719, -0.801798, 0.319968,
		0.751999, 0.590372, 0.293187,
		-0.423976, 0.092638, 0.900923,
		26.163342, 36.539623, 38.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925316, 36.418892, 38.123680>,  <26.460125, 36.474777, 37.564320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925316, 36.418892, 38.123680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578354, 36.346420, 38.309059>,  <26.370176, 36.302937, 38.420288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578354, 36.346420, 38.309059>,  <26.925316, 36.418892, 38.123680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578354, 36.346420, 38.309059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363936, -0.866150, 0.342543,
		0.339355, 0.465788, 0.817239,
		-0.867404, -0.181179, 0.463449,
		26.318132, 36.292068, 38.448093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098913, 36.037704, 38.681038>,  <26.925316, 36.418892, 38.123680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098913, 36.037704, 38.681038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712366, 35.961399, 38.612049>,  <26.480438, 35.915615, 38.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712366, 35.961399, 38.612049>,  <27.098913, 36.037704, 38.681038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712366, 35.961399, 38.612049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177783, -0.980133, 0.087939,
		-0.185819, 0.054319, 0.981082,
		-0.966367, -0.190760, -0.172470,
		26.422457, 35.904171, 38.560307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813354, 35.389786, 39.157665>,  <27.098913, 36.037704, 38.681038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813354, 35.389786, 39.157665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577234, 35.388836, 38.834793>,  <26.435562, 35.388268, 38.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577234, 35.388836, 38.834793>,  <26.813354, 35.389786, 39.157665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577234, 35.388836, 38.834793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233192, -0.957858, -0.167721,
		-0.772765, -0.287234, 0.565978,
		-0.590302, -0.002373, -0.807179,
		26.400145, 35.388123, 38.592640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132206, 35.152889, 39.375153>,  <26.813354, 35.389786, 39.157665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132206, 35.152889, 39.375153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236319, 35.501831, 39.540688>,  <26.298786, 35.711197, 39.640007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236319, 35.501831, 39.540688>,  <26.132206, 35.152889, 39.375153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236319, 35.501831, 39.540688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769295, -0.071639, 0.634864,
		0.583471, -0.483603, 0.652449,
		0.260281, 0.872351, 0.413833,
		26.314404, 35.763535, 39.664837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353848, 34.446632, 39.788136>,  <26.132206, 35.152889, 39.375153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353848, 34.446632, 39.788136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466295, 34.589050, 39.431664>,  <26.533764, 34.674500, 39.217781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466295, 34.589050, 39.431664>,  <26.353848, 34.446632, 39.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466295, 34.589050, 39.431664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950591, -0.230762, 0.207665,
		-0.131713, -0.905528, -0.403325,
		0.281119, 0.356046, -0.891181,
		26.550631, 34.695866, 39.164310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908484, 33.956898, 39.673763>,  <26.353848, 34.446632, 39.788136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908484, 33.956898, 39.673763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991304, 34.287842, 39.464920>,  <27.040997, 34.486408, 39.339615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991304, 34.287842, 39.464920>,  <26.908484, 33.956898, 39.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991304, 34.287842, 39.464920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966756, -0.091182, 0.238890,
		0.150042, -0.554216, -0.818738,
		0.207051, 0.827364, -0.522110,
		27.053419, 34.536053, 39.308289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353579, 33.902885, 39.139400>,  <26.908484, 33.956898, 39.673763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353579, 33.902885, 39.139400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383795, 34.265728, 39.305031>,  <27.401924, 34.483433, 39.404408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383795, 34.265728, 39.305031>,  <27.353579, 33.902885, 39.139400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383795, 34.265728, 39.305031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993084, -0.031015, -0.113231,
		-0.089870, 0.419766, -0.903172,
		0.075542, 0.907102, 0.414076,
		27.406458, 34.537857, 39.429253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038715, 34.226341, 38.995323>,  <27.353579, 33.902885, 39.139400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038715, 34.226341, 38.995323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893139, 34.423019, 39.311749>,  <27.805794, 34.541027, 39.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893139, 34.423019, 39.311749>,  <28.038715, 34.226341, 38.995323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893139, 34.423019, 39.311749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930974, 0.165693, 0.325320,
		0.028887, 0.854855, -0.518062,
		-0.363941, 0.491700, 0.791062,
		27.783957, 34.570530, 39.549068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501274, 34.781319, 39.148792>,  <28.038715, 34.226341, 38.995323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501274, 34.781319, 39.148792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326710, 34.696011, 39.498436>,  <28.221972, 34.644825, 39.708221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326710, 34.696011, 39.498436>,  <28.501274, 34.781319, 39.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326710, 34.696011, 39.498436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850692, 0.218601, 0.478055,
		-0.293036, 0.952223, 0.086027,
		-0.436409, -0.213270, 0.874107,
		28.195787, 34.632030, 39.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744799, 35.228683, 39.070087>,  <28.501274, 34.781319, 39.148792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744799, 35.228683, 39.070087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685530, 35.624069, 39.082596>,  <27.649969, 35.861301, 39.090099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685530, 35.624069, 39.082596>,  <27.744799, 35.228683, 39.070087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685530, 35.624069, 39.082596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911127, 0.124148, 0.392983,
		0.384569, 0.086717, -0.919014,
		-0.148172, 0.988467, 0.031267,
		27.641079, 35.920609, 39.091976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316547, 35.597801, 38.687984>,  <27.744799, 35.228683, 39.070087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316547, 35.597801, 38.687984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159252, 35.796894, 38.997211>,  <28.064875, 35.916348, 39.182747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159252, 35.796894, 38.997211>,  <28.316547, 35.597801, 38.687984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159252, 35.796894, 38.997211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896892, 0.022599, 0.441672,
		0.202363, 0.867038, -0.455296,
		-0.393236, 0.497729, 0.773066,
		28.041281, 35.946213, 39.229130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784412, 36.180271, 38.858665>,  <28.316547, 35.597801, 38.687984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784412, 36.180271, 38.858665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575012, 36.076298, 39.183228>,  <28.449371, 36.013916, 39.377964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575012, 36.076298, 39.183228>,  <28.784412, 36.180271, 38.858665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575012, 36.076298, 39.183228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848707, -0.075120, 0.523501,
		-0.075120, 0.962701, 0.259929,
		-0.523501, -0.259929, 0.811409,
		28.417961, 35.998318, 39.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969063, 36.713116, 39.385799>,  <28.784412, 36.180271, 38.858665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969063, 36.713116, 39.385799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828812, 36.379986, 39.557133>,  <28.744661, 36.180107, 39.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828812, 36.379986, 39.557133>,  <28.969063, 36.713116, 39.385799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828812, 36.379986, 39.557133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874068, -0.126793, 0.468966,
		-0.336255, 0.538825, 0.772399,
		-0.350626, -0.832821, 0.428335,
		28.723623, 36.130138, 39.685635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212772, 36.701824, 40.138855>,  <28.969063, 36.713116, 39.385799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212772, 36.701824, 40.138855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100637, 36.325855, 40.060932>,  <29.033356, 36.100273, 40.014179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100637, 36.325855, 40.060932>,  <29.212772, 36.701824, 40.138855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100637, 36.325855, 40.060932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874452, -0.333772, 0.352038,
		-0.395911, -0.071660, 0.915489,
		-0.280337, -0.939926, -0.194807,
		29.016537, 36.043877, 40.002491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431208, 36.192165, 40.577354>,  <29.212772, 36.701824, 40.138855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431208, 36.192165, 40.577354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404190, 36.032455, 40.211620>,  <29.387980, 35.936630, 39.992180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404190, 36.032455, 40.211620>,  <29.431208, 36.192165, 40.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404190, 36.032455, 40.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887104, -0.443434, 0.128108,
		-0.456600, -0.802462, 0.384150,
		-0.067543, -0.399275, -0.914340,
		29.383926, 35.912674, 39.937317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778955, 35.629608, 40.513130>,  <29.431208, 36.192165, 40.577354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778955, 35.629608, 40.513130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994499, 35.315449, 40.634964>,  <30.123825, 35.126953, 40.708065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994499, 35.315449, 40.634964>,  <29.778955, 35.629608, 40.513130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994499, 35.315449, 40.634964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605048, -0.612427, -0.508773,
		0.586130, 0.089866, -0.805218,
		0.538858, -0.785403, 0.304589,
		30.156157, 35.079826, 40.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835955, 35.152672, 39.927216>,  <29.778955, 35.629608, 40.513130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835955, 35.152672, 39.927216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824631, 34.977852, 40.286812>,  <29.817837, 34.872959, 40.502571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824631, 34.977852, 40.286812>,  <29.835955, 35.152672, 39.927216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824631, 34.977852, 40.286812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750946, -0.584292, -0.307706,
		0.659756, -0.683805, -0.311661,
		-0.028310, -0.437052, 0.898991,
		29.816137, 34.846737, 40.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296638, 35.037506, 39.470345>,  <29.835955, 35.152672, 39.927216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296638, 35.037506, 39.470345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300844, 35.241413, 39.814445>,  <29.303368, 35.363758, 40.020905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300844, 35.241413, 39.814445>,  <29.296638, 35.037506, 39.470345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300844, 35.241413, 39.814445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998610, 0.049790, -0.017299,
		-0.051650, -0.858870, 0.509583,
		0.010515, 0.509768, 0.860248,
		29.303999, 35.394344, 40.072521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673838, 34.810036, 39.910938>,  <29.296638, 35.037506, 39.470345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673838, 34.810036, 39.910938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777464, 35.193760, 39.955837>,  <28.839640, 35.423996, 39.982777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777464, 35.193760, 39.955837>,  <28.673838, 34.810036, 39.910938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777464, 35.193760, 39.955837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955920, 0.271293, -0.112323,
		-0.138205, -0.078203, 0.987311,
		0.259067, 0.959315, 0.112250,
		28.855185, 35.481556, 39.989513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195984, 35.129494, 40.381813>,  <28.673838, 34.810036, 39.910938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195984, 35.129494, 40.381813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357182, 35.438110, 40.184910>,  <28.453899, 35.623280, 40.066769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357182, 35.438110, 40.184910>,  <28.195984, 35.129494, 40.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357182, 35.438110, 40.184910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913255, 0.374086, -0.161321,
		0.059680, 0.514568, 0.855370,
		0.402992, 0.771544, -0.492257,
		28.478079, 35.669575, 40.037231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798464, 35.650951, 40.482903>,  <28.195984, 35.129494, 40.381813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798464, 35.650951, 40.482903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994968, 35.742844, 40.146835>,  <28.112871, 35.797977, 39.945194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994968, 35.742844, 40.146835>,  <27.798464, 35.650951, 40.482903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994968, 35.742844, 40.146835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870433, 0.164628, -0.463944,
		0.031734, 0.959230, 0.280840,
		0.491263, 0.229729, -0.840170,
		28.142347, 35.811764, 39.894783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602304, 36.272865, 40.229736>,  <27.798464, 35.650951, 40.482903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602304, 36.272865, 40.229736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715546, 36.032001, 39.931137>,  <27.783491, 35.887482, 39.751980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715546, 36.032001, 39.931137>,  <27.602304, 36.272865, 40.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715546, 36.032001, 39.931137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880280, 0.145843, -0.451484,
		0.380736, 0.784943, -0.488779,
		0.283104, -0.602159, -0.746496,
		27.800476, 35.851353, 39.707188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518616, 36.465939, 39.471424>,  <27.602304, 36.272865, 40.229736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518616, 36.465939, 39.471424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463266, 36.072510, 39.517796>,  <27.430056, 35.836452, 39.545616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463266, 36.072510, 39.517796>,  <27.518616, 36.465939, 39.471424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463266, 36.072510, 39.517796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973929, 0.113896, -0.196187,
		0.179761, -0.140049, -0.973690,
		-0.138375, -0.983572, 0.115924,
		27.421753, 35.777439, 39.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967188, 36.906574, 38.847641>,  <27.518616, 36.465939, 39.471424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967188, 36.906574, 38.847641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722843, 36.872177, 38.532822>,  <27.576237, 36.851540, 38.343929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722843, 36.872177, 38.532822>,  <27.967188, 36.906574, 38.847641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722843, 36.872177, 38.532822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458402, 0.848931, 0.263028,
		0.645535, 0.521461, -0.558000,
		-0.610862, -0.085995, -0.787053,
		27.539585, 36.846378, 38.296707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799295, 37.614685, 38.538551>,  <27.967188, 36.906574, 38.847641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799295, 37.614685, 38.538551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520103, 37.348259, 38.433342>,  <27.352589, 37.188404, 38.370216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520103, 37.348259, 38.433342>,  <27.799295, 37.614685, 38.538551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520103, 37.348259, 38.433342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712111, 0.606759, 0.353188,
		-0.075655, 0.433820, -0.897818,
		-0.697979, -0.666066, -0.263024,
		27.310709, 37.148438, 38.354435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447079, 37.945850, 38.569889>,  <27.799295, 37.614685, 38.538551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447079, 37.945850, 38.569889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564373, 38.327034, 38.600582>,  <28.634750, 38.555744, 38.618999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564373, 38.327034, 38.600582>,  <28.447079, 37.945850, 38.569889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564373, 38.327034, 38.600582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571050, 0.110216, 0.813483,
		0.766756, -0.282362, 0.576505,
		0.293236, 0.952956, 0.076734,
		28.652344, 38.612919, 38.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808426, 38.193607, 39.236336>,  <28.447079, 37.945850, 38.569889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808426, 38.193607, 39.236336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557520, 38.478233, 39.109707>,  <28.406977, 38.649010, 39.033730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557520, 38.478233, 39.109707>,  <28.808426, 38.193607, 39.236336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557520, 38.478233, 39.109707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585312, -0.162568, 0.794343,
		0.513762, 0.683555, 0.518460,
		-0.627263, 0.711565, -0.316571,
		28.369341, 38.691704, 39.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638592, 38.022400, 39.176258>,  <28.808426, 38.193607, 39.236336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638592, 38.022400, 39.176258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928570, 37.779213, 39.305767>,  <30.102556, 37.633301, 39.383472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928570, 37.779213, 39.305767>,  <29.638592, 38.022400, 39.176258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928570, 37.779213, 39.305767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176462, 0.618290, 0.765884,
		-0.665819, -0.498091, 0.555510,
		0.724946, -0.607966, 0.323775,
		30.146053, 37.596825, 39.402901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457556, 37.765110, 39.910946>,  <29.638592, 38.022400, 39.176258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457556, 37.765110, 39.910946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827242, 37.842365, 39.779179>,  <30.049053, 37.888718, 39.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827242, 37.842365, 39.779179>,  <29.457556, 37.765110, 39.910946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827242, 37.842365, 39.779179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090605, 0.727115, 0.680510,
		0.370962, -0.658787, 0.654513,
		0.924218, 0.193141, -0.329421,
		30.104507, 37.900307, 39.680351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904486, 37.857811, 40.501759>,  <29.457556, 37.765110, 39.910946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904486, 37.857811, 40.501759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043837, 38.031700, 40.169579>,  <30.127447, 38.136032, 39.970268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043837, 38.031700, 40.169579>,  <29.904486, 37.857811, 40.501759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043837, 38.031700, 40.169579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284792, 0.794984, 0.535625,
		0.893044, -0.423105, 0.153149,
		0.348376, 0.434721, -0.830452,
		30.148350, 38.162117, 39.920444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710550, 37.929676, 40.431675>,  <29.904486, 37.857811, 40.501759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710550, 37.929676, 40.431675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504107, 38.242054, 40.290958>,  <30.380239, 38.429482, 40.206528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504107, 38.242054, 40.290958>,  <30.710550, 37.929676, 40.431675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504107, 38.242054, 40.290958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386306, 0.578812, 0.718153,
		0.764460, 0.234746, -0.600413,
		-0.516110, 0.780942, -0.351795,
		30.349274, 38.476337, 40.185421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070650, 38.441048, 40.132977>,  <30.710550, 37.929676, 40.431675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070650, 38.441048, 40.132977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758957, 38.599510, 40.327236>,  <30.571941, 38.694588, 40.443794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758957, 38.599510, 40.327236>,  <31.070650, 38.441048, 40.132977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758957, 38.599510, 40.327236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626118, 0.526402, 0.575219,
		-0.027773, 0.752305, -0.658230,
		-0.779234, 0.396154, 0.485651,
		30.525187, 38.718357, 40.472931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456148, 38.757614, 40.758163>,  <31.070650, 38.441048, 40.132977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456148, 38.757614, 40.758163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507950, 39.153442, 40.783421>,  <31.539030, 39.390938, 40.798573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507950, 39.153442, 40.783421>,  <31.456148, 38.757614, 40.758163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507950, 39.153442, 40.783421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810614, -0.142326, 0.568021,
		0.571081, -0.022380, -0.820588,
		0.129503, 0.989567, 0.063139,
		31.546801, 39.450314, 40.802361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040569, 39.015598, 40.545181>,  <31.456148, 38.757614, 40.758163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040569, 39.015598, 40.545181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906885, 39.249893, 40.840538>,  <31.826675, 39.390469, 41.017750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906885, 39.249893, 40.840538>,  <32.040569, 39.015598, 40.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906885, 39.249893, 40.840538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842087, -0.166300, 0.513064,
		0.423313, 0.793259, -0.437659,
		-0.334210, 0.585734, 0.738390,
		31.806622, 39.425613, 41.062054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495556, 39.603306, 40.951576>,  <32.040569, 39.015598, 40.545181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495556, 39.603306, 40.951576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259617, 39.401901, 41.204102>,  <32.118053, 39.281059, 41.355618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259617, 39.401901, 41.204102>,  <32.495556, 39.603306, 40.951576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259617, 39.401901, 41.204102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801683, -0.271359, 0.532605,
		-0.096858, 0.820271, 0.563714,
		-0.589850, -0.503507, 0.631315,
		32.082661, 39.250851, 41.393497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673157, 39.805573, 41.737492>,  <32.495556, 39.603306, 40.951576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673157, 39.805573, 41.737492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469620, 39.461597, 41.753433>,  <32.347496, 39.255215, 41.763000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469620, 39.461597, 41.753433>,  <32.673157, 39.805573, 41.737492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469620, 39.461597, 41.753433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586897, -0.312667, 0.746854,
		-0.629784, 0.403425, 0.663793,
		-0.508845, -0.859935, 0.039856,
		32.316967, 39.203617, 41.765388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005039, 39.563362, 42.301395>,  <32.673157, 39.805573, 41.737492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005039, 39.563362, 42.301395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369076, 39.626495, 42.148129>,  <33.587498, 39.664375, 42.056168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369076, 39.626495, 42.148129>,  <33.005039, 39.563362, 42.301395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369076, 39.626495, 42.148129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308741, -0.875008, 0.372881,
		-0.276422, -0.457657, -0.845069,
		0.910093, 0.157835, -0.383169,
		33.642105, 39.673847, 42.033176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230877, 39.108658, 41.847382>,  <33.005039, 39.563362, 42.301395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230877, 39.108658, 41.847382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599701, 39.233192, 41.939362>,  <33.820995, 39.307911, 41.994549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599701, 39.233192, 41.939362>,  <33.230877, 39.108658, 41.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599701, 39.233192, 41.939362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288067, -0.948812, 0.129515,
		0.258499, -0.053180, -0.964547,
		0.922061, 0.311333, 0.229947,
		33.876320, 39.326591, 42.008347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804585, 38.864140, 41.426102>,  <33.230877, 39.108658, 41.847382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804585, 38.864140, 41.426102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901089, 38.917645, 41.810581>,  <33.958992, 38.949749, 42.041267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901089, 38.917645, 41.810581>,  <33.804585, 38.864140, 41.426102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901089, 38.917645, 41.810581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394333, -0.918515, 0.028849,
		0.886733, 0.372072, -0.274350,
		0.241261, 0.133767, 0.961197,
		33.973469, 38.957775, 42.098942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444153, 38.678513, 41.337017>,  <33.804585, 38.864140, 41.426102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444153, 38.678513, 41.337017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304436, 38.612846, 41.706024>,  <34.220604, 38.573444, 41.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304436, 38.612846, 41.706024>,  <34.444153, 38.678513, 41.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304436, 38.612846, 41.706024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213460, -0.972586, -0.092257,
		0.912376, 0.164696, 0.374760,
		-0.349291, -0.164169, 0.922520,
		34.199650, 38.563595, 41.982780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902695, 38.150341, 41.685452>,  <34.444153, 38.678513, 41.337017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902695, 38.150341, 41.685452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544315, 38.129097, 41.861835>,  <34.329288, 38.116348, 41.967667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544315, 38.129097, 41.861835>,  <34.902695, 38.150341, 41.685452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544315, 38.129097, 41.861835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121087, -0.984426, 0.127453,
		0.427327, 0.167586, 0.888429,
		-0.895952, -0.053113, 0.440964,
		34.275528, 38.113163, 41.994125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037193, 37.708714, 42.204109>,  <34.902695, 38.150341, 41.685452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037193, 37.708714, 42.204109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641357, 37.716660, 42.147087>,  <34.403858, 37.721428, 42.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641357, 37.716660, 42.147087>,  <35.037193, 37.708714, 42.204109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641357, 37.716660, 42.147087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021324, -0.999735, 0.008689,
		-0.142348, 0.011639, 0.989748,
		-0.989587, 0.019869, -0.142558,
		34.344482, 37.722622, 42.104321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698280, 37.205273, 42.707108>,  <35.037193, 37.708714, 42.204109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698280, 37.205273, 42.707108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443676, 37.263611, 42.404163>,  <34.290913, 37.298615, 42.222397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443676, 37.263611, 42.404163>,  <34.698280, 37.205273, 42.707108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443676, 37.263611, 42.404163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235976, -0.971694, 0.011201,
		-0.734285, 0.185847, 0.652906,
		-0.636507, 0.145846, -0.757356,
		34.252724, 37.307365, 42.176956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011391, 37.158199, 43.059311>,  <34.698280, 37.205273, 42.707108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011391, 37.158199, 43.059311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071896, 37.045452, 42.680328>,  <34.108196, 36.977806, 42.452938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071896, 37.045452, 42.680328>,  <34.011391, 37.158199, 43.059311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071896, 37.045452, 42.680328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236524, -0.940962, 0.242172,
		-0.959780, 0.187466, -0.208996,
		0.151258, -0.281864, -0.947457,
		34.117275, 36.960892, 42.396091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487148, 36.897972, 42.675850>,  <34.011391, 37.158199, 43.059311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487148, 36.897972, 42.675850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801350, 36.716690, 42.507286>,  <33.989872, 36.607922, 42.406147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801350, 36.716690, 42.507286>,  <33.487148, 36.897972, 42.675850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801350, 36.716690, 42.507286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404948, -0.891341, 0.203784,
		-0.467974, 0.010574, -0.883679,
		0.785505, -0.453209, -0.421406,
		34.037003, 36.580727, 42.380863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372982, 36.448818, 41.987701>,  <33.487148, 36.897972, 42.675850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372982, 36.448818, 41.987701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671272, 36.275139, 42.189838>,  <33.850246, 36.170933, 42.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671272, 36.275139, 42.189838>,  <33.372982, 36.448818, 41.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671272, 36.275139, 42.189838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482089, -0.875183, -0.040556,
		0.459873, -0.213374, -0.861968,
		0.745726, -0.434196, 0.505339,
		33.894989, 36.144878, 42.341438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613293, 35.857273, 41.565136>,  <33.372982, 36.448818, 41.987701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613293, 35.857273, 41.565136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659714, 35.835892, 41.961857>,  <33.687569, 35.823063, 42.199890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659714, 35.835892, 41.961857>,  <33.613293, 35.857273, 41.565136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659714, 35.835892, 41.961857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523583, -0.851836, 0.015359,
		0.844033, -0.521074, -0.126848,
		0.116057, -0.053452, 0.991803,
		33.694530, 35.819855, 42.259399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906776, 35.217834, 41.653309>,  <33.613293, 35.857273, 41.565136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906776, 35.217834, 41.653309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646175, 35.403694, 41.893192>,  <33.489815, 35.515209, 42.037121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646175, 35.403694, 41.893192>,  <33.906776, 35.217834, 41.653309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646175, 35.403694, 41.893192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591485, -0.806115, -0.018002,
		0.475071, -0.366447, 0.800015,
		-0.651501, 0.464645, 0.599710,
		33.450726, 35.543087, 42.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869156, 34.924175, 42.343941>,  <33.906776, 35.217834, 41.653309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869156, 34.924175, 42.343941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521282, 35.102715, 42.259640>,  <33.312557, 35.209839, 42.209057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521282, 35.102715, 42.259640>,  <33.869156, 34.924175, 42.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521282, 35.102715, 42.259640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442772, -0.894157, -0.066604,
		-0.218176, 0.035392, 0.975268,
		-0.869685, 0.446353, -0.210754,
		33.260376, 35.236622, 42.196415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308434, 34.806179, 42.745846>,  <33.869156, 34.924175, 42.343941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308434, 34.806179, 42.745846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117645, 34.905079, 42.408478>,  <33.003170, 34.964420, 42.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117645, 34.905079, 42.408478>,  <33.308434, 34.806179, 42.745846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117645, 34.905079, 42.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528720, -0.847286, 0.050621,
		-0.702105, 0.470080, 0.534858,
		-0.476973, 0.247249, -0.843424,
		32.974552, 34.979252, 42.155449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651974, 34.601379, 42.899796>,  <33.308434, 34.806179, 42.745846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651974, 34.601379, 42.899796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645718, 34.658470, 42.503941>,  <32.641964, 34.692726, 42.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645718, 34.658470, 42.503941>,  <32.651974, 34.601379, 42.899796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645718, 34.658470, 42.503941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509794, -0.852588, -0.114909,
		-0.860154, 0.502715, 0.086095,
		-0.015637, 0.142730, -0.989638,
		32.641026, 34.701290, 42.207050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951670, 34.374538, 42.706673>,  <32.651974, 34.601379, 42.899796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951670, 34.374538, 42.706673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131020, 34.391747, 42.349548>,  <32.238628, 34.402073, 42.135273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131020, 34.391747, 42.349548>,  <31.951670, 34.374538, 42.706673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131020, 34.391747, 42.349548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596666, -0.729318, -0.334792,
		-0.665546, 0.682821, -0.301337,
		0.448373, 0.043022, -0.892810,
		32.265533, 34.404652, 42.081707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409964, 34.221783, 42.232635>,  <31.951670, 34.374538, 42.706673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409964, 34.221783, 42.232635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743025, 34.134319, 42.029114>,  <31.942862, 34.081841, 41.907001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743025, 34.134319, 42.029114>,  <31.409964, 34.221783, 42.232635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743025, 34.134319, 42.029114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470211, -0.764499, -0.440957,
		-0.292563, 0.606408, -0.739375,
		0.832651, -0.218654, -0.508804,
		31.992821, 34.068722, 41.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219482, 34.041092, 41.557846>,  <31.409964, 34.221783, 42.232635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219482, 34.041092, 41.557846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567394, 33.851257, 41.611893>,  <31.776140, 33.737358, 41.644321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567394, 33.851257, 41.611893>,  <31.219482, 34.041092, 41.557846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567394, 33.851257, 41.611893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397173, -0.835815, -0.379034,
		0.292815, 0.276012, -0.915465,
		0.869778, -0.474585, 0.135115,
		31.828327, 33.708881, 41.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151373, 33.503811, 41.068310>,  <31.219482, 34.041092, 41.557846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151373, 33.503811, 41.068310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486080, 33.391899, 41.256580>,  <31.686905, 33.324753, 41.369545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486080, 33.391899, 41.256580>,  <31.151373, 33.503811, 41.068310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486080, 33.391899, 41.256580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015670, -0.871486, -0.490170,
		0.547333, 0.402783, -0.733616,
		0.836768, -0.279782, 0.470681,
		31.737110, 33.307964, 41.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568996, 33.212067, 40.587471>,  <31.151373, 33.503811, 41.068310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568996, 33.212067, 40.587471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695868, 33.042225, 40.926670>,  <31.771990, 32.940319, 41.130192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695868, 33.042225, 40.926670>,  <31.568996, 33.212067, 40.587471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695868, 33.042225, 40.926670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036516, -0.898975, -0.436474,
		0.947663, 0.107474, -0.300641,
		0.317179, -0.424609, 0.848001,
		31.791021, 32.914841, 41.181068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119854, 32.810341, 40.423882>,  <31.568996, 33.212067, 40.587471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119854, 32.810341, 40.423882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985645, 32.663815, 40.771038>,  <31.905121, 32.575897, 40.979332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985645, 32.663815, 40.771038>,  <32.119854, 32.810341, 40.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985645, 32.663815, 40.771038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241854, -0.856922, -0.455183,
		0.910459, -0.362625, 0.198917,
		-0.335517, -0.366316, 0.867894,
		31.884991, 32.553921, 41.031406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500862, 32.283344, 40.476524>,  <32.119854, 32.810341, 40.423882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500862, 32.283344, 40.476524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158665, 32.255375, 40.681751>,  <31.953346, 32.238594, 40.804890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158665, 32.255375, 40.681751>,  <32.500862, 32.283344, 40.476524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158665, 32.255375, 40.681751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251911, -0.809486, -0.530353,
		0.452405, -0.582962, 0.674897,
		-0.855495, -0.069920, 0.513069,
		31.902016, 32.234398, 40.835670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432655, 31.602030, 40.449871>,  <32.500862, 32.283344, 40.476524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432655, 31.602030, 40.449871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075451, 31.734301, 40.571972>,  <31.861128, 31.813663, 40.645233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075451, 31.734301, 40.571972>,  <32.432655, 31.602030, 40.449871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075451, 31.734301, 40.571972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437984, -0.794484, -0.420672,
		0.103411, -0.509361, 0.854317,
		-0.893015, 0.330675, 0.305251,
		31.807547, 31.833504, 40.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059216, 31.057779, 40.569920>,  <32.432655, 31.602030, 40.449871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059216, 31.057779, 40.569920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770378, 31.330168, 40.521164>,  <31.597075, 31.493601, 40.491909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770378, 31.330168, 40.521164>,  <32.059216, 31.057779, 40.569920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770378, 31.330168, 40.521164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477293, -0.617947, -0.624766,
		-0.500769, -0.392963, 0.771239,
		-0.722095, 0.680971, -0.121890,
		31.553749, 31.534460, 40.484596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439713, 30.634100, 40.500504>,  <32.059216, 31.057779, 40.569920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439713, 30.634100, 40.500504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367542, 30.993126, 40.339592>,  <31.324240, 31.208542, 40.243046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367542, 30.993126, 40.339592>,  <31.439713, 30.634100, 40.500504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367542, 30.993126, 40.339592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540507, -0.432175, -0.721857,
		-0.821766, 0.087192, 0.563115,
		-0.180424, 0.897565, -0.402274,
		31.313416, 31.262396, 40.218910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753336, 30.631081, 40.325718>,  <31.439713, 30.634100, 40.500504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753336, 30.631081, 40.325718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938263, 30.897547, 40.091629>,  <31.049219, 31.057426, 39.951176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938263, 30.897547, 40.091629>,  <30.753336, 30.631081, 40.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938263, 30.897547, 40.091629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419191, -0.417382, -0.806270,
		-0.781371, 0.618073, 0.086288,
		0.462319, 0.666167, -0.585221,
		31.076958, 31.097397, 39.916061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274187, 30.859320, 39.823788>,  <30.753336, 30.631081, 40.325718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274187, 30.859320, 39.823788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613480, 30.962614, 39.638824>,  <30.817055, 31.024590, 39.527847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613480, 30.962614, 39.638824>,  <30.274187, 30.859320, 39.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613480, 30.962614, 39.638824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389417, -0.287662, -0.874988,
		-0.358969, 0.922261, -0.143442,
		0.848231, 0.258235, -0.462406,
		30.867949, 31.040085, 39.500103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080544, 31.208820, 39.294621>,  <30.274187, 30.859320, 39.823788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080544, 31.208820, 39.294621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450144, 31.094397, 39.193115>,  <30.671904, 31.025743, 39.132214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450144, 31.094397, 39.193115>,  <30.080544, 31.208820, 39.294621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450144, 31.094397, 39.193115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302821, -0.142162, -0.942385,
		0.233502, 0.947608, -0.217982,
		0.924000, -0.286058, -0.253760,
		30.727345, 31.008579, 39.116989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184895, 31.524723, 38.648376>,  <30.080544, 31.208820, 39.294621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184895, 31.524723, 38.648376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475351, 31.249714, 38.646183>,  <30.649626, 31.084707, 38.644867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475351, 31.249714, 38.646183>,  <30.184895, 31.524723, 38.648376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475351, 31.249714, 38.646183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192030, -0.195143, -0.961792,
		0.660186, 0.699449, -0.273726,
		0.726140, -0.687525, -0.005484,
		30.693193, 31.043457, 38.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698997, 31.703154, 38.153393>,  <30.184895, 31.524723, 38.648376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698997, 31.703154, 38.153393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755682, 31.309086, 38.192097>,  <30.789694, 31.072645, 38.215317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755682, 31.309086, 38.192097>,  <30.698997, 31.703154, 38.153393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755682, 31.309086, 38.192097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192324, -0.123283, -0.973557,
		0.971045, 0.119357, -0.206943,
		0.141713, -0.985168, 0.096758,
		30.798197, 31.013536, 38.221123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867577, 31.525696, 37.507710>,  <30.698997, 31.703154, 38.153393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867577, 31.525696, 37.507710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792757, 31.172432, 37.679779>,  <30.747866, 30.960474, 37.783020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792757, 31.172432, 37.679779>,  <30.867577, 31.525696, 37.507710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792757, 31.172432, 37.679779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136926, -0.410185, -0.901665,
		0.972761, -0.227555, -0.044204,
		-0.187047, -0.883157, 0.430170,
		30.736643, 30.907484, 37.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275230, 31.026247, 37.183369>,  <30.867577, 31.525696, 37.507710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275230, 31.026247, 37.183369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955576, 30.847776, 37.344517>,  <30.763783, 30.740694, 37.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955576, 30.847776, 37.344517>,  <31.275230, 31.026247, 37.183369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955576, 30.847776, 37.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116919, -0.542016, -0.832195,
		0.589671, -0.712141, 0.380977,
		-0.799136, -0.446178, 0.402874,
		30.715836, 30.713923, 37.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339861, 30.322519, 37.038628>,  <31.275230, 31.026247, 37.183369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339861, 30.322519, 37.038628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945082, 30.342794, 37.099770>,  <30.708214, 30.354959, 37.136456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945082, 30.342794, 37.099770>,  <31.339861, 30.322519, 37.038628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945082, 30.342794, 37.099770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160392, -0.394248, -0.904899,
		0.014396, -0.917605, 0.397232,
		-0.986949, 0.050686, 0.152852,
		30.648996, 30.358000, 37.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981329, 29.657688, 36.763206>,  <31.339861, 30.322519, 37.038628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981329, 29.657688, 36.763206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673334, 29.907482, 36.815567>,  <30.488537, 30.057360, 36.846985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673334, 29.907482, 36.815567>,  <30.981329, 29.657688, 36.763206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673334, 29.907482, 36.815567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434223, -0.362536, -0.824632,
		-0.467516, -0.691797, 0.550315,
		-0.769986, 0.624488, 0.130903,
		30.442337, 30.094828, 36.854839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365715, 29.267096, 36.827114>,  <30.981329, 29.657688, 36.763206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365715, 29.267096, 36.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245907, 29.622480, 36.688019>,  <30.174023, 29.835711, 36.604561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245907, 29.622480, 36.688019>,  <30.365715, 29.267096, 36.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245907, 29.622480, 36.688019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547371, -0.458543, -0.700088,
		-0.781456, -0.019344, 0.623660,
		-0.299518, 0.888462, -0.347743,
		30.156052, 29.889019, 36.583694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616970, 29.229822, 36.613319>,  <30.365715, 29.267096, 36.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616970, 29.229822, 36.613319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769522, 29.547956, 36.424854>,  <29.861053, 29.738836, 36.311775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769522, 29.547956, 36.424854>,  <29.616970, 29.229822, 36.613319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769522, 29.547956, 36.424854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500848, -0.250613, -0.828459,
		-0.776981, 0.551938, 0.302763,
		0.381381, 0.795335, -0.471159,
		29.883936, 29.786556, 36.283508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044466, 29.527361, 36.205688>,  <29.616970, 29.229822, 36.613319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044466, 29.527361, 36.205688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387674, 29.668215, 36.056126>,  <29.593599, 29.752728, 35.966389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387674, 29.668215, 36.056126>,  <29.044466, 29.527361, 36.205688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387674, 29.668215, 36.056126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363705, -0.097459, -0.926402,
		-0.362659, 0.930861, 0.044451,
		0.858019, 0.352135, -0.373903,
		29.645081, 29.773855, 35.943954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800350, 29.947998, 35.723759>,  <29.044466, 29.527361, 36.205688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800350, 29.947998, 35.723759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182117, 29.883717, 35.623154>,  <29.411179, 29.845148, 35.562790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182117, 29.883717, 35.623154>,  <28.800350, 29.947998, 35.723759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182117, 29.883717, 35.623154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268415, -0.093630, -0.958742,
		0.130524, 0.982552, -0.132498,
		0.954420, -0.160703, -0.251510,
		29.468443, 29.835506, 35.547699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848724, 30.242373, 35.108028>,  <28.800350, 29.947998, 35.723759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848724, 30.242373, 35.108028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147978, 29.978659, 35.138062>,  <29.327530, 29.820431, 35.156082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147978, 29.978659, 35.138062>,  <28.848724, 30.242373, 35.108028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147978, 29.978659, 35.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202607, -0.334724, -0.920277,
		0.631857, 0.673279, -0.383995,
		0.748135, -0.659284, 0.075087,
		29.372419, 29.780874, 35.160587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182165, 30.236866, 34.515957>,  <28.848724, 30.242373, 35.108028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182165, 30.236866, 34.515957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291023, 29.886299, 34.674870>,  <29.356339, 29.675959, 34.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291023, 29.886299, 34.674870>,  <29.182165, 30.236866, 34.515957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291023, 29.886299, 34.674870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121343, -0.440822, -0.889355,
		0.954575, 0.193826, -0.226315,
		0.272145, -0.876417, 0.397278,
		29.372667, 29.623373, 34.794052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585276, 29.868235, 34.019741>,  <29.182165, 30.236866, 34.515957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585276, 29.868235, 34.019741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444939, 29.582094, 34.261463>,  <29.360737, 29.410410, 34.406494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444939, 29.582094, 34.261463>,  <29.585276, 29.868235, 34.019741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444939, 29.582094, 34.261463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075555, -0.621593, -0.779688,
		0.933381, -0.319207, 0.164034,
		-0.350844, -0.715352, 0.604301,
		29.339685, 29.367489, 34.442753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851013, 29.344820, 33.625759>,  <29.585276, 29.868235, 34.019741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851013, 29.344820, 33.625759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586988, 29.192198, 33.884598>,  <29.428574, 29.100624, 34.039902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586988, 29.192198, 33.884598>,  <29.851013, 29.344820, 33.625759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586988, 29.192198, 33.884598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283788, -0.670922, -0.685076,
		0.695545, -0.635831, 0.334570,
		-0.660062, -0.381554, 0.647097,
		29.388969, 29.077732, 34.078728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903566, 28.661757, 33.589489>,  <29.851013, 29.344820, 33.625759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903566, 28.661757, 33.589489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532215, 28.691746, 33.735088>,  <29.309404, 28.709740, 33.822449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532215, 28.691746, 33.735088>,  <29.903566, 28.661757, 33.589489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532215, 28.691746, 33.735088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327092, -0.629820, -0.704512,
		0.176435, -0.773114, 0.609233,
		-0.928376, 0.074975, 0.364002,
		29.253702, 28.714239, 33.844288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660221, 27.960770, 33.664570>,  <29.903566, 28.661757, 33.589489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660221, 27.960770, 33.664570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331099, 28.187902, 33.673992>,  <29.133625, 28.324183, 33.679646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331099, 28.187902, 33.673992>,  <29.660221, 27.960770, 33.664570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331099, 28.187902, 33.673992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448446, -0.623232, -0.640686,
		-0.349121, -0.537724, 0.767442,
		-0.822807, 0.567834, 0.023556,
		29.084257, 28.358252, 33.681061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115416, 27.490467, 33.695831>,  <29.660221, 27.960770, 33.664570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115416, 27.490467, 33.695831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949549, 27.831533, 33.568703>,  <28.850029, 28.036173, 33.492424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949549, 27.831533, 33.568703>,  <29.115416, 27.490467, 33.695831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949549, 27.831533, 33.568703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319653, -0.463499, -0.826432,
		-0.851982, -0.241100, 0.464755,
		-0.414666, 0.852666, -0.317824,
		28.825150, 28.087334, 33.473354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486933, 27.247368, 33.356167>,  <29.115416, 27.490467, 33.695831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486933, 27.247368, 33.356167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546234, 27.618618, 33.219578>,  <28.581816, 27.841368, 33.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546234, 27.618618, 33.219578>,  <28.486933, 27.247368, 33.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546234, 27.618618, 33.219578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162223, -0.317786, -0.934182,
		-0.975553, 0.193891, 0.103450,
		0.148254, 0.928126, -0.341471,
		28.590710, 27.897057, 33.117138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928423, 27.412615, 32.926456>,  <28.486933, 27.247368, 33.356167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928423, 27.412615, 32.926456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241484, 27.638739, 32.822239>,  <28.429319, 27.774412, 32.759708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241484, 27.638739, 32.822239>,  <27.928423, 27.412615, 32.926456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241484, 27.638739, 32.822239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187495, -0.185036, -0.964680,
		-0.593552, 0.803859, -0.038826,
		0.782651, 0.565308, -0.260547,
		28.476278, 27.808331, 32.744076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722548, 27.840454, 32.379688>,  <27.928423, 27.412615, 32.926456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722548, 27.840454, 32.379688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119638, 27.861227, 32.336243>,  <28.357893, 27.873692, 32.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119638, 27.861227, 32.336243>,  <27.722548, 27.840454, 32.379688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119638, 27.861227, 32.336243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113277, 0.097403, -0.988777,
		-0.040772, 0.993889, 0.102577,
		0.992726, 0.051934, -0.108614,
		28.417456, 27.876808, 32.303658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782175, 28.418461, 31.920908>,  <27.722548, 27.840454, 32.379688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782175, 28.418461, 31.920908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137054, 28.234095, 31.929291>,  <28.349981, 28.123476, 31.934320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137054, 28.234095, 31.929291>,  <27.782175, 28.418461, 31.920908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137054, 28.234095, 31.929291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040363, -0.122783, -0.991612,
		0.459621, 0.878910, -0.127536,
		0.887198, -0.460913, 0.020958,
		28.403214, 28.095821, 31.935577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145758, 28.750126, 31.376554>,  <27.782175, 28.418461, 31.920908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145758, 28.750126, 31.376554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343468, 28.411165, 31.454117>,  <28.462093, 28.207788, 31.500654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343468, 28.411165, 31.454117>,  <28.145758, 28.750126, 31.376554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343468, 28.411165, 31.454117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128412, -0.149435, -0.980398,
		0.859769, 0.509486, 0.034955,
		0.494275, -0.847404, 0.193904,
		28.491751, 28.156944, 31.512287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834530, 28.871298, 31.078924>,  <28.145758, 28.750126, 31.376554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834530, 28.871298, 31.078924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733341, 28.486544, 31.120461>,  <28.672628, 28.255692, 31.145382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733341, 28.486544, 31.120461>,  <28.834530, 28.871298, 31.078924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733341, 28.486544, 31.120461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086052, -0.084535, -0.992698,
		0.963639, -0.260062, -0.061387,
		-0.252973, -0.961884, 0.103840,
		28.657450, 28.197979, 31.151613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236732, 28.558481, 30.551025>,  <28.834530, 28.871298, 31.078924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236732, 28.558481, 30.551025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961067, 28.288315, 30.655998>,  <28.795668, 28.126215, 30.718983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961067, 28.288315, 30.655998>,  <29.236732, 28.558481, 30.551025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961067, 28.288315, 30.655998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249972, -0.118334, -0.960995,
		0.680124, -0.727882, -0.087283,
		-0.689162, -0.675415, 0.262432,
		28.754318, 28.085691, 30.734728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251154, 28.035976, 30.116049>,  <29.236732, 28.558481, 30.551025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251154, 28.035976, 30.116049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879124, 28.003029, 30.259254>,  <28.655905, 27.983261, 30.345177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879124, 28.003029, 30.259254>,  <29.251154, 28.035976, 30.116049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879124, 28.003029, 30.259254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356701, -0.030622, -0.933717,
		0.087876, -0.996131, -0.000902,
		-0.930076, -0.082373, 0.358012,
		28.600101, 27.978319, 30.366657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941366, 27.508207, 29.717802>,  <29.251154, 28.035976, 30.116049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941366, 27.508207, 29.717802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623465, 27.690569, 29.878059>,  <28.432724, 27.799986, 29.974215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623465, 27.690569, 29.878059>,  <28.941366, 27.508207, 29.717802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623465, 27.690569, 29.878059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464281, -0.031515, -0.885127,
		-0.390907, -0.889470, 0.236715,
		-0.794755, 0.455905, 0.400644,
		28.385038, 27.827341, 29.998253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390944, 27.082294, 29.531744>,  <28.941366, 27.508207, 29.717802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390944, 27.082294, 29.531744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212715, 27.434668, 29.595526>,  <28.105778, 27.646091, 29.633795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212715, 27.434668, 29.595526>,  <28.390944, 27.082294, 29.531744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212715, 27.434668, 29.595526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600873, -0.162245, -0.782706,
		-0.663639, -0.444563, 0.601620,
		-0.445572, 0.880931, 0.159454,
		28.079044, 27.698946, 29.643362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739746, 27.009470, 29.466450>,  <28.390944, 27.082294, 29.531744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739746, 27.009470, 29.466450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730240, 27.408176, 29.435753>,  <27.724537, 27.647400, 29.417336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730240, 27.408176, 29.435753>,  <27.739746, 27.009470, 29.466450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730240, 27.408176, 29.435753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557842, -0.076923, -0.826374,
		-0.829607, 0.023171, 0.557867,
		-0.023764, 0.996768, -0.076742,
		27.723110, 27.707207, 29.412731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072859, 27.308176, 29.335255>,  <27.739746, 27.009470, 29.466450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072859, 27.308176, 29.335255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302729, 27.605814, 29.198978>,  <27.440651, 27.784397, 29.117212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302729, 27.605814, 29.198978>,  <27.072859, 27.308176, 29.335255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302729, 27.605814, 29.198978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481934, -0.028760, -0.875735,
		-0.661428, 0.667456, 0.342077,
		0.574676, 0.744094, -0.340692,
		27.475132, 27.829042, 29.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696959, 27.854120, 29.067596>,  <27.072859, 27.308176, 29.335255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696959, 27.854120, 29.067596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033047, 27.970190, 28.884369>,  <27.234699, 28.039833, 28.774431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033047, 27.970190, 28.884369>,  <26.696959, 27.854120, 29.067596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033047, 27.970190, 28.884369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423539, -0.176295, -0.888558,
		-0.338594, 0.940594, -0.025226,
		0.840220, 0.290176, -0.458071,
		27.285112, 28.057243, 28.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644371, 28.424627, 28.582041>,  <26.696959, 27.854120, 29.067596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644371, 28.424627, 28.582041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946764, 28.196421, 28.453663>,  <27.128199, 28.059498, 28.376637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946764, 28.196421, 28.453663>,  <26.644371, 28.424627, 28.582041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946764, 28.196421, 28.453663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487914, -0.164252, -0.857299,
		0.436385, 0.804695, -0.402533,
		0.755982, -0.570514, -0.320945,
		27.173559, 28.025267, 28.357380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689293, 28.363653, 27.837791>,  <26.644371, 28.424627, 28.582041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689293, 28.363653, 27.837791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377520, 28.532501, 28.022961>,  <26.190454, 28.633810, 28.134062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377520, 28.532501, 28.022961>,  <26.689293, 28.363653, 27.837791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377520, 28.532501, 28.022961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040137, -0.703755, 0.709308,
		0.625196, 0.571439, 0.531589,
		-0.779435, 0.422120, 0.462921,
		26.143688, 28.659138, 28.161837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801888, 28.066725, 27.174057>,  <26.689293, 28.363653, 27.837791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801888, 28.066725, 27.174057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510393, 27.972719, 26.916777>,  <26.335497, 27.916315, 26.762407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510393, 27.972719, 26.916777>,  <26.801888, 28.066725, 27.174057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510393, 27.972719, 26.916777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677512, -0.384041, -0.627288,
		-0.099595, -0.892906, 0.439090,
		-0.728737, -0.235014, -0.643203,
		26.291773, 27.902214, 26.723816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064674, 28.714872, 27.028494>,  <26.801888, 28.066725, 27.174057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064674, 28.714872, 27.028494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064278, 29.094648, 26.902918>,  <27.064039, 29.322514, 26.827572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064278, 29.094648, 26.902918>,  <27.064674, 28.714872, 27.028494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064278, 29.094648, 26.902918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143294, 0.310836, 0.939600,
		0.989680, -0.044054, -0.136357,
		-0.000992, 0.949442, -0.313941,
		27.063980, 29.379480, 26.808735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542025, 29.078384, 27.412088>,  <27.064674, 28.714872, 27.028494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542025, 29.078384, 27.412088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307966, 29.367895, 27.265802>,  <27.167530, 29.541601, 27.178032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307966, 29.367895, 27.265802>,  <27.542025, 29.078384, 27.412088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307966, 29.367895, 27.265802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214464, 0.573046, 0.790964,
		0.782053, 0.384399, -0.490541,
		-0.585148, 0.723779, -0.365713,
		27.132421, 29.585030, 27.156088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958557, 29.685604, 27.428377>,  <27.542025, 29.078384, 27.412088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958557, 29.685604, 27.428377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576181, 29.802956, 27.432657>,  <27.346756, 29.873365, 27.435225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576181, 29.802956, 27.432657>,  <27.958557, 29.685604, 27.428377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576181, 29.802956, 27.432657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163770, 0.502668, 0.848826,
		0.243647, 0.813176, -0.528565,
		-0.955937, 0.293377, 0.010701,
		27.289400, 29.890968, 27.435867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776102, 30.434042, 27.472790>,  <27.958557, 29.685604, 27.428377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776102, 30.434042, 27.472790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525738, 30.178379, 27.651546>,  <27.375519, 30.024981, 27.758801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525738, 30.178379, 27.651546>,  <27.776102, 30.434042, 27.472790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525738, 30.178379, 27.651546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148339, 0.464987, 0.872802,
		-0.765657, 0.612588, -0.196229,
		-0.625912, -0.639158, 0.446891,
		27.337965, 29.986631, 27.785614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341204, 30.813446, 27.798376>,  <27.776102, 30.434042, 27.472790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341204, 30.813446, 27.798376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323147, 30.467335, 27.998077>,  <27.312313, 30.259668, 28.117899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323147, 30.467335, 27.998077>,  <27.341204, 30.813446, 27.798376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323147, 30.467335, 27.998077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043818, 0.497566, 0.866319,
		-0.998019, 0.060982, 0.015454,
		-0.045140, -0.865280, 0.499253,
		27.309605, 30.207750, 28.147854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826527, 30.980183, 28.292845>,  <27.341204, 30.813446, 27.798376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826527, 30.980183, 28.292845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047651, 30.671923, 28.419649>,  <27.180326, 30.486967, 28.495731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047651, 30.671923, 28.419649>,  <26.826527, 30.980183, 28.292845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047651, 30.671923, 28.419649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014741, 0.371324, 0.928386,
		-0.833176, -0.517896, 0.193912,
		0.552811, -0.770651, 0.317013,
		27.213495, 30.440727, 28.514753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491022, 30.771378, 28.943541>,  <26.826527, 30.980183, 28.292845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491022, 30.771378, 28.943541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870810, 30.646053, 28.936132>,  <27.098682, 30.570858, 28.931688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870810, 30.646053, 28.936132>,  <26.491022, 30.771378, 28.943541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870810, 30.646053, 28.936132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153863, 0.413217, 0.897540,
		-0.273559, -0.855036, 0.440544,
		0.949469, -0.313313, -0.018519,
		27.155651, 30.552059, 28.930576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667959, 30.263346, 29.527153>,  <26.491022, 30.771378, 28.943541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667959, 30.263346, 29.527153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991961, 30.467934, 29.412405>,  <27.186361, 30.590687, 29.343557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991961, 30.467934, 29.412405>,  <26.667959, 30.263346, 29.527153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991961, 30.467934, 29.412405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175288, 0.255646, 0.950747,
		0.559618, -0.820391, 0.117419,
		0.810001, 0.511472, -0.286869,
		27.234961, 30.621376, 29.326344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080315, 30.080111, 30.060369>,  <26.667959, 30.263346, 29.527153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080315, 30.080111, 30.060369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286123, 30.385187, 29.903618>,  <27.409609, 30.568233, 29.809566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286123, 30.385187, 29.903618>,  <27.080315, 30.080111, 30.060369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286123, 30.385187, 29.903618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350081, 0.230349, 0.907955,
		0.782759, -0.604352, -0.148485,
		0.514521, 0.762691, -0.391880,
		27.440479, 30.613995, 29.786055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646301, 30.220541, 30.563322>,  <27.080315, 30.080111, 30.060369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646301, 30.220541, 30.563322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626661, 30.554075, 30.343393>,  <27.614878, 30.754196, 30.211435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626661, 30.554075, 30.343393>,  <27.646301, 30.220541, 30.563322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626661, 30.554075, 30.343393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364071, 0.527555, 0.767553,
		0.930076, -0.162488, -0.329478,
		-0.049100, 0.833836, -0.549824,
		27.611931, 30.804226, 30.178446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330622, 30.569994, 30.585785>,  <27.646301, 30.220541, 30.563322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330622, 30.569994, 30.585785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066048, 30.858215, 30.502544>,  <27.907303, 31.031149, 30.452600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066048, 30.858215, 30.502544>,  <28.330622, 30.569994, 30.585785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066048, 30.858215, 30.502544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304930, 0.511862, 0.803128,
		0.685215, 0.467762, -0.558282,
		-0.661436, 0.720553, -0.208100,
		27.867617, 31.074381, 30.440115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717295, 31.137869, 30.413443>,  <28.330622, 30.569994, 30.585785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717295, 31.137869, 30.413443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365791, 31.273172, 30.548120>,  <28.154888, 31.354355, 30.628927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365791, 31.273172, 30.548120>,  <28.717295, 31.137869, 30.413443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365791, 31.273172, 30.548120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476679, 0.656960, 0.584107,
		-0.023616, 0.673784, -0.738550,
		-0.878760, 0.338257, 0.336694,
		28.102163, 31.374649, 30.649128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887850, 31.798578, 30.558250>,  <28.717295, 31.137869, 30.413443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887850, 31.798578, 30.558250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518274, 31.785273, 30.710688>,  <28.296530, 31.777288, 30.802151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518274, 31.785273, 30.710688>,  <28.887850, 31.798578, 30.558250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518274, 31.785273, 30.710688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233929, 0.739112, 0.631657,
		-0.302684, 0.672761, -0.675112,
		-0.923937, -0.033264, 0.381095,
		28.241093, 31.775293, 30.825016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640919, 32.495857, 30.567505>,  <28.887850, 31.798578, 30.558250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640919, 32.495857, 30.567505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421471, 32.319939, 30.851925>,  <28.289803, 32.214386, 31.022577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421471, 32.319939, 30.851925>,  <28.640919, 32.495857, 30.567505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421471, 32.319939, 30.851925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441761, 0.569567, 0.693138,
		-0.709833, 0.694383, -0.118190,
		-0.548621, -0.439801, 0.711049,
		28.256884, 32.188000, 31.065239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339346, 33.045734, 30.992373>,  <28.640919, 32.495857, 30.567505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339346, 33.045734, 30.992373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299572, 32.718452, 31.218876>,  <28.275707, 32.522083, 31.354778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299572, 32.718452, 31.218876>,  <28.339346, 33.045734, 30.992373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299572, 32.718452, 31.218876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252410, 0.529725, 0.809741,
		-0.962498, 0.223446, 0.153851,
		-0.099434, -0.818207, 0.566259,
		28.269741, 32.472992, 31.388754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061628, 33.285702, 31.656214>,  <28.339346, 33.045734, 30.992373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061628, 33.285702, 31.656214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243547, 32.939945, 31.742001>,  <28.352699, 32.732491, 31.793472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243547, 32.939945, 31.742001>,  <28.061628, 33.285702, 31.656214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243547, 32.939945, 31.742001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377012, 0.405031, 0.832954,
		-0.806860, -0.297968, 0.510090,
		0.454796, -0.864387, 0.214465,
		28.379986, 32.680630, 31.806339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801680, 33.131969, 32.289551>,  <28.061628, 33.285702, 31.656214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801680, 33.131969, 32.289551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145256, 32.929703, 32.257256>,  <28.351402, 32.808342, 32.237877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145256, 32.929703, 32.257256>,  <27.801680, 33.131969, 32.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145256, 32.929703, 32.257256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229463, 0.239123, 0.943487,
		-0.457781, -0.828929, 0.321425,
		0.858943, -0.505665, -0.080743,
		28.402939, 32.778004, 32.233032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875311, 32.747425, 32.991623>,  <27.801680, 33.131969, 32.289551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875311, 32.747425, 32.991623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232342, 32.729568, 32.812153>,  <28.446560, 32.718857, 32.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232342, 32.729568, 32.812153>,  <27.875311, 32.747425, 32.991623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232342, 32.729568, 32.812153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447051, 0.217252, 0.867725,
		0.058743, -0.975094, 0.213870,
		0.892578, -0.044638, -0.448679,
		28.500114, 32.716179, 32.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272173, 32.347198, 33.462708>,  <27.875311, 32.747425, 32.991623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272173, 32.347198, 33.462708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527969, 32.553909, 33.235027>,  <28.681448, 32.677937, 33.098419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527969, 32.553909, 33.235027>,  <28.272173, 32.347198, 33.462708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527969, 32.553909, 33.235027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535022, 0.232534, 0.812206,
		0.552090, -0.823934, -0.127784,
		0.639490, 0.516779, -0.569203,
		28.719816, 32.708942, 33.064266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952747, 32.194748, 33.671947>,  <28.272173, 32.347198, 33.462708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952747, 32.194748, 33.671947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003466, 32.528751, 33.457775>,  <29.033897, 32.729153, 33.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003466, 32.528751, 33.457775>,  <28.952747, 32.194748, 33.671947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003466, 32.528751, 33.457775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664038, 0.329535, 0.671163,
		0.736869, -0.440647, -0.512692,
		0.126796, 0.835007, -0.535431,
		29.041504, 32.779255, 33.297146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665098, 32.313213, 33.500473>,  <28.952747, 32.194748, 33.671947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665098, 32.313213, 33.500473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486322, 32.670975, 33.493732>,  <29.379057, 32.885632, 33.489689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486322, 32.670975, 33.493732>,  <29.665098, 32.313213, 33.500473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486322, 32.670975, 33.493732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668477, 0.346446, 0.658113,
		0.594459, 0.282871, -0.752730,
		-0.446942, 0.894404, -0.016856,
		29.352240, 32.939297, 33.488674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149830, 32.734753, 33.499939>,  <29.665098, 32.313213, 33.500473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149830, 32.734753, 33.499939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846098, 32.971092, 33.608978>,  <29.663858, 33.112896, 33.674404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846098, 32.971092, 33.608978>,  <30.149830, 32.734753, 33.499939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846098, 32.971092, 33.608978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612121, 0.506490, 0.607269,
		0.220734, 0.627984, -0.746265,
		-0.759332, 0.590850, 0.272602,
		29.618298, 33.148346, 33.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397963, 33.408291, 33.525356>,  <30.149830, 32.734753, 33.499939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397963, 33.408291, 33.525356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086500, 33.425846, 33.775723>,  <29.899622, 33.436378, 33.925941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086500, 33.425846, 33.775723>,  <30.397963, 33.408291, 33.525356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086500, 33.425846, 33.775723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604138, 0.321838, 0.728998,
		-0.169446, 0.945777, -0.277118,
		-0.778656, 0.043892, 0.625914,
		29.852903, 33.439014, 33.963497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487591, 33.961700, 33.811886>,  <30.397963, 33.408291, 33.525356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487591, 33.961700, 33.811886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248320, 33.777710, 34.074368>,  <30.104757, 33.667316, 34.231857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248320, 33.777710, 34.074368>,  <30.487591, 33.961700, 33.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248320, 33.777710, 34.074368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449074, 0.485792, 0.749892,
		-0.663713, 0.743253, -0.084026,
		-0.598179, -0.459979, 0.656202,
		30.068867, 33.639717, 34.271229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338661, 34.428898, 34.318218>,  <30.487591, 33.961700, 33.811886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338661, 34.428898, 34.318218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254980, 34.078121, 34.491287>,  <30.204771, 33.867653, 34.595127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254980, 34.078121, 34.491287>,  <30.338661, 34.428898, 34.318218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254980, 34.078121, 34.491287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292523, 0.366078, 0.883412,
		-0.933094, 0.311378, 0.179942,
		-0.209203, -0.876944, 0.432670,
		30.192219, 33.815037, 34.621090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907581, 34.619701, 34.844585>,  <30.338661, 34.428898, 34.318218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907581, 34.619701, 34.844585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040850, 34.254791, 34.939869>,  <30.120811, 34.035843, 34.997040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040850, 34.254791, 34.939869>,  <29.907581, 34.619701, 34.844585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040850, 34.254791, 34.939869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441294, 0.374141, 0.815645,
		-0.833220, -0.166629, 0.527237,
		0.333172, -0.912279, 0.238210,
		30.140800, 33.981106, 35.011333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778957, 34.588150, 35.547344>,  <29.907581, 34.619701, 34.844585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778957, 34.588150, 35.547344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052687, 34.309284, 35.461864>,  <30.216925, 34.141964, 35.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052687, 34.309284, 35.461864>,  <29.778957, 34.588150, 35.547344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052687, 34.309284, 35.461864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441613, 0.163043, 0.882267,
		-0.580240, -0.698129, 0.419449,
		0.684325, -0.697160, -0.213699,
		30.257984, 34.100136, 35.397755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764442, 34.091156, 36.043850>,  <29.778957, 34.588150, 35.547344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764442, 34.091156, 36.043850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126114, 34.029610, 35.884457>,  <30.343117, 33.992680, 35.788822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126114, 34.029610, 35.884457>,  <29.764442, 34.091156, 36.043850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126114, 34.029610, 35.884457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413134, 0.077956, 0.907327,
		-0.108547, -0.985011, 0.134055,
		0.904178, -0.153870, -0.398480,
		30.397367, 33.983448, 35.764912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023529, 33.622414, 36.424973>,  <29.764442, 34.091156, 36.043850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023529, 33.622414, 36.424973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348875, 33.794769, 36.268631>,  <30.544083, 33.898182, 36.174828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348875, 33.794769, 36.268631>,  <30.023529, 33.622414, 36.424973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348875, 33.794769, 36.268631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362184, 0.150704, 0.919843,
		0.455258, -0.889730, -0.033485,
		0.813365, 0.430894, -0.390855,
		30.592884, 33.924038, 36.151375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640625, 33.282097, 36.808372>,  <30.023529, 33.622414, 36.424973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640625, 33.282097, 36.808372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747190, 33.640293, 36.665760>,  <30.811129, 33.855213, 36.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747190, 33.640293, 36.665760>,  <30.640625, 33.282097, 36.808372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747190, 33.640293, 36.665760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201670, 0.309928, 0.929125,
		0.942526, -0.319432, -0.098026,
		0.266411, 0.895493, -0.356535,
		30.827114, 33.908939, 36.558800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293568, 33.397640, 37.159420>,  <30.640625, 33.282097, 36.808372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293568, 33.397640, 37.159420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172306, 33.743778, 36.999783>,  <31.099548, 33.951462, 36.903999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172306, 33.743778, 36.999783>,  <31.293568, 33.397640, 37.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172306, 33.743778, 36.999783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297070, 0.483750, 0.823247,
		0.905454, 0.131012, -0.403719,
		-0.303154, 0.865345, -0.399093,
		31.081360, 34.003384, 36.880054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830879, 33.881283, 37.061470>,  <31.293568, 33.397640, 37.159420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830879, 33.881283, 37.061470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505451, 34.113853, 37.064301>,  <31.310194, 34.253395, 37.065998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505451, 34.113853, 37.064301>,  <31.830879, 33.881283, 37.061470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505451, 34.113853, 37.064301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411752, 0.567468, 0.713050,
		0.410569, 0.583030, -0.701077,
		-0.813568, 0.581426, 0.007079,
		31.261381, 34.288280, 37.066425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047768, 34.593182, 37.120300>,  <31.830879, 33.881283, 37.061470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047768, 34.593182, 37.120300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662230, 34.621056, 37.223171>,  <31.430906, 34.637779, 37.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662230, 34.621056, 37.223171>,  <32.047768, 34.593182, 37.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662230, 34.621056, 37.223171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248830, 0.580550, 0.775271,
		-0.095278, 0.811237, -0.576902,
		-0.963849, 0.069684, 0.257174,
		31.373075, 34.641960, 37.300323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984564, 35.233173, 37.186253>,  <32.047768, 34.593182, 37.120300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984564, 35.233173, 37.186253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671343, 35.097286, 37.394646>,  <31.483410, 35.015755, 37.519680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671343, 35.097286, 37.394646>,  <31.984564, 35.233173, 37.186253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671343, 35.097286, 37.394646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379639, 0.402432, 0.833020,
		-0.492652, 0.850083, -0.186155,
		-0.783051, -0.339718, 0.520983,
		31.436428, 34.995373, 37.550941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806858, 35.734173, 37.519714>,  <31.984564, 35.233173, 37.186253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806858, 35.734173, 37.519714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636005, 35.436260, 37.724792>,  <31.533493, 35.257511, 37.847839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636005, 35.436260, 37.724792>,  <31.806858, 35.734173, 37.519714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636005, 35.436260, 37.724792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245472, 0.450208, 0.858520,
		-0.870230, 0.492554, -0.009475,
		-0.427133, -0.744784, 0.512693,
		31.507866, 35.212826, 37.878601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165766, 36.022297, 37.946449>,  <31.806858, 35.734173, 37.519714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165766, 36.022297, 37.946449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320341, 35.690292, 38.107327>,  <31.413086, 35.491089, 38.203854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320341, 35.690292, 38.107327>,  <31.165766, 36.022297, 37.946449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320341, 35.690292, 38.107327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164820, 0.491190, 0.855317,
		-0.907470, -0.264237, 0.326615,
		0.386436, -0.830007, 0.402189,
		31.436272, 35.441292, 38.227982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949348, 36.066799, 38.741882>,  <31.165766, 36.022297, 37.946449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949348, 36.066799, 38.741882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218210, 35.772823, 38.705959>,  <31.379528, 35.596436, 38.684406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218210, 35.772823, 38.705959>,  <30.949348, 36.066799, 38.741882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218210, 35.772823, 38.705959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376299, 0.234628, 0.896297,
		-0.637657, -0.636245, 0.434265,
		0.672156, -0.734943, -0.089806,
		31.419857, 35.552341, 38.679016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940422, 35.718933, 39.382988>,  <30.949348, 36.066799, 38.741882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940422, 35.718933, 39.382988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295620, 35.634792, 39.219421>,  <31.508739, 35.584309, 39.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295620, 35.634792, 39.219421>,  <30.940422, 35.718933, 39.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295620, 35.634792, 39.219421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455056, 0.273885, 0.847296,
		-0.066230, -0.938478, 0.338929,
		0.887996, -0.210348, -0.408921,
		31.562019, 35.571690, 39.096745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282475, 35.418453, 39.893353>,  <30.940422, 35.718933, 39.382988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282475, 35.418453, 39.893353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581059, 35.543285, 39.658268>,  <31.760208, 35.618183, 39.517216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581059, 35.543285, 39.658268>,  <31.282475, 35.418453, 39.893353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581059, 35.543285, 39.658268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536105, 0.241158, 0.808971,
		0.394194, -0.918939, 0.012707,
		0.746460, 0.312079, -0.587711,
		31.804996, 35.636909, 39.481956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875160, 35.176407, 40.213665>,  <31.282475, 35.418453, 39.893353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875160, 35.176407, 40.213665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000576, 35.465313, 39.967079>,  <32.075825, 35.638657, 39.819126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000576, 35.465313, 39.967079>,  <31.875160, 35.176407, 40.213665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000576, 35.465313, 39.967079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536359, 0.401014, 0.742635,
		0.783589, -0.563492, -0.261658,
		0.313541, 0.722263, -0.616464,
		32.094639, 35.681992, 39.782139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536579, 35.351418, 40.416573>,  <31.875160, 35.176407, 40.213665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536579, 35.351418, 40.416573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443985, 35.672558, 40.196812>,  <32.388428, 35.865242, 40.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443985, 35.672558, 40.196812>,  <32.536579, 35.351418, 40.416573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443985, 35.672558, 40.196812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682981, 0.536289, 0.495914,
		0.692785, -0.260437, -0.672474,
		-0.231486, 0.802849, -0.549407,
		32.374538, 35.913414, 40.031990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184776, 35.648167, 40.050358>,  <32.536579, 35.351418, 40.416573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184776, 35.648167, 40.050358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905460, 35.931435, 40.092113>,  <32.737873, 36.101395, 40.117168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905460, 35.931435, 40.092113>,  <33.184776, 35.648167, 40.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905460, 35.931435, 40.092113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653992, 0.571865, 0.495242,
		0.291016, 0.414091, -0.862460,
		-0.698287, 0.708165, 0.104391,
		32.695976, 36.143883, 40.123432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579006, 36.233955, 39.994831>,  <33.184776, 35.648167, 40.050358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579006, 36.233955, 39.994831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233612, 36.393341, 40.118523>,  <33.026375, 36.488972, 40.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233612, 36.393341, 40.118523>,  <33.579006, 36.233955, 39.994831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233612, 36.393341, 40.118523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501955, 0.618887, 0.604169,
		0.049361, 0.676910, -0.734409,
		-0.863484, 0.398463, 0.309229,
		32.974567, 36.512878, 40.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568253, 36.963860, 39.911476>,  <33.579006, 36.233955, 39.994831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568253, 36.963860, 39.911476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291027, 36.898987, 40.192436>,  <33.124691, 36.860062, 40.361012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291027, 36.898987, 40.192436>,  <33.568253, 36.963860, 39.911476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291027, 36.898987, 40.192436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474775, 0.630503, 0.614047,
		-0.542453, 0.759053, -0.359976,
		-0.693060, -0.162184, 0.702398,
		33.083111, 36.850330, 40.403156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456078, 37.737625, 39.916611>,  <33.568253, 36.963860, 39.911476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456078, 37.737625, 39.916611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795998, 37.936668, 39.847057>,  <33.999950, 38.056095, 39.805325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795998, 37.936668, 39.847057>,  <33.456078, 37.737625, 39.916611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795998, 37.936668, 39.847057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164271, -0.063440, -0.984373,
		-0.500859, 0.865081, 0.027831,
		0.849797, 0.497604, -0.173882,
		34.050938, 38.085949, 39.794891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291286, 38.347301, 39.471931>,  <33.456078, 37.737625, 39.916611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291286, 38.347301, 39.471931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669941, 38.225124, 39.430779>,  <33.897133, 38.151817, 39.406086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669941, 38.225124, 39.430779>,  <33.291286, 38.347301, 39.471931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669941, 38.225124, 39.430779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120321, -0.038779, -0.991977,
		0.298998, 0.951422, -0.073461,
		0.946638, -0.305438, -0.102881,
		33.953934, 38.133492, 39.399914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524914, 38.654423, 38.885975>,  <33.291286, 38.347301, 39.471931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524914, 38.654423, 38.885975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765274, 38.339043, 38.938534>,  <33.909492, 38.149815, 38.970070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765274, 38.339043, 38.938534>,  <33.524914, 38.654423, 38.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765274, 38.339043, 38.938534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084953, -0.226456, -0.970310,
		0.794795, 0.571898, -0.203059,
		0.600902, -0.788448, 0.131402,
		33.945545, 38.102509, 38.977955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885403, 38.611832, 38.301819>,  <33.524914, 38.654423, 38.885975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885403, 38.611832, 38.301819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986023, 38.251236, 38.442699>,  <34.046394, 38.034878, 38.527229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986023, 38.251236, 38.442699>,  <33.885403, 38.611832, 38.301819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986023, 38.251236, 38.442699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077390, -0.344004, -0.935774,
		0.964745, 0.262651, -0.016768,
		0.251550, -0.901485, 0.352202,
		34.061489, 37.980789, 38.548359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448776, 38.318226, 37.903580>,  <33.885403, 38.611832, 38.301819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448776, 38.318226, 37.903580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294613, 37.979652, 38.050549>,  <34.202114, 37.776508, 38.138729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294613, 37.979652, 38.050549>,  <34.448776, 38.318226, 37.903580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294613, 37.979652, 38.050549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098976, -0.433811, -0.895551,
		0.917421, -0.308790, 0.250973,
		-0.385412, -0.846438, 0.367425,
		34.178989, 37.725719, 38.160774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777512, 37.811497, 37.601395>,  <34.448776, 38.318226, 37.903580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777512, 37.811497, 37.601395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463024, 37.600334, 37.729881>,  <34.274334, 37.473637, 37.806973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463024, 37.600334, 37.729881>,  <34.777512, 37.811497, 37.601395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463024, 37.600334, 37.729881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050351, -0.572808, -0.818142,
		0.615896, -0.627063, 0.476932,
		-0.786217, -0.527904, 0.321217,
		34.227158, 37.441963, 37.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950291, 37.112026, 37.597301>,  <34.777512, 37.811497, 37.601395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950291, 37.112026, 37.597301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550819, 37.132225, 37.601288>,  <34.311138, 37.144344, 37.603680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550819, 37.132225, 37.601288>,  <34.950291, 37.112026, 37.597301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550819, 37.132225, 37.601288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043903, -0.734725, -0.676943,
		-0.026865, -0.676483, 0.735968,
		-0.998675, 0.050497, 0.009962,
		34.251217, 37.147373, 37.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798058, 36.383900, 37.514759>,  <34.950291, 37.112026, 37.597301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798058, 36.383900, 37.514759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483444, 36.614391, 37.425919>,  <34.294678, 36.752686, 37.372616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483444, 36.614391, 37.425919>,  <34.798058, 36.383900, 37.514759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483444, 36.614391, 37.425919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158344, -0.535805, -0.829361,
		-0.596902, -0.617152, 0.512671,
		-0.786534, 0.576226, -0.222101,
		34.247482, 36.787258, 37.359287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375542, 35.862206, 37.346497>,  <34.798058, 36.383900, 37.514759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375542, 35.862206, 37.346497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252003, 36.195526, 37.163094>,  <34.177879, 36.395519, 37.053051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252003, 36.195526, 37.163094>,  <34.375542, 35.862206, 37.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252003, 36.195526, 37.163094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232311, -0.533563, -0.813230,
		-0.922304, -0.144649, 0.358375,
		-0.308849, 0.833299, -0.458503,
		34.159348, 36.445515, 37.025543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736378, 35.662128, 37.139530>,  <34.375542, 35.862206, 37.346497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736378, 35.662128, 37.139530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828217, 35.973480, 36.905811>,  <33.883320, 36.160294, 36.765579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828217, 35.973480, 36.905811>,  <33.736378, 35.662128, 37.139530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828217, 35.973480, 36.905811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340943, -0.497974, -0.797358,
		-0.911615, 0.382284, 0.151050,
		0.229599, 0.778383, -0.584298,
		33.897095, 36.206997, 36.730522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055996, 35.877491, 36.846283>,  <33.736378, 35.662128, 37.139530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055996, 35.877491, 36.846283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358299, 36.009106, 36.619812>,  <33.539680, 36.088074, 36.483929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358299, 36.009106, 36.619812>,  <33.055996, 35.877491, 36.846283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358299, 36.009106, 36.619812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405218, -0.444193, -0.799056,
		-0.514414, 0.833321, -0.202371,
		0.755762, 0.329041, -0.566176,
		33.585030, 36.107819, 36.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837761, 36.040989, 36.302204>,  <33.055996, 35.877491, 36.846283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837761, 36.040989, 36.302204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211842, 36.034679, 36.160702>,  <33.436291, 36.030895, 36.075798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211842, 36.034679, 36.160702>,  <32.837761, 36.040989, 36.302204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211842, 36.034679, 36.160702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347712, -0.229932, -0.908971,
		-0.067007, 0.973079, -0.220517,
		0.935204, -0.015769, -0.353758,
		33.492401, 36.029949, 36.054573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855293, 36.381382, 35.589493>,  <32.837761, 36.040989, 36.302204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855293, 36.381382, 35.589493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145866, 36.107574, 35.613899>,  <33.320210, 35.943291, 35.628544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145866, 36.107574, 35.613899>,  <32.855293, 36.381382, 35.589493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145866, 36.107574, 35.613899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260375, -0.356305, -0.897358,
		0.635999, 0.635987, -0.437065,
		0.726436, -0.684520, 0.061015,
		33.363796, 35.902218, 35.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222607, 36.277180, 34.876179>,  <32.855293, 36.381382, 35.589493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222607, 36.277180, 34.876179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 35.940796, 35.053825>,  <33.420425, 35.738964, 35.160416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 35.940796, 35.053825>,  <33.222607, 36.277180, 34.876179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346245, 35.940796, 35.053825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275889, -0.526195, -0.804366,
		0.910136, 0.126094, -0.394655,
		0.309091, -0.840963, 0.444121,
		33.438972, 35.688507, 35.187061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530754, 35.960331, 34.356903>,  <33.222607, 36.277180, 34.876179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530754, 35.960331, 34.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472954, 35.657967, 34.612316>,  <33.438274, 35.476547, 34.765564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472954, 35.657967, 34.612316>,  <33.530754, 35.960331, 34.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472954, 35.657967, 34.612316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372593, -0.556240, -0.742813,
		0.916676, -0.345247, -0.201272,
		-0.144498, -0.755911, 0.638529,
		33.429604, 35.431194, 34.803875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694042, 35.334908, 33.937019>,  <33.530754, 35.960331, 34.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694042, 35.334908, 33.937019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478436, 35.226498, 34.256020>,  <33.349072, 35.161453, 34.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478436, 35.226498, 34.256020>,  <33.694042, 35.334908, 33.937019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478436, 35.226498, 34.256020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508454, -0.650150, -0.564605,
		0.671517, -0.709824, 0.212639,
		-0.539018, -0.271025, 0.797499,
		33.316730, 35.145191, 34.495270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647491, 34.652206, 33.842514>,  <33.694042, 35.334908, 33.937019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647491, 34.652206, 33.842514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337910, 34.761219, 34.071152>,  <33.152161, 34.826626, 34.208336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337910, 34.761219, 34.071152>,  <33.647491, 34.652206, 33.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337910, 34.761219, 34.071152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629137, -0.433557, -0.645147,
		0.071997, -0.858927, 0.507012,
		-0.773953, 0.272532, 0.571597,
		33.105724, 34.842979, 34.242630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098911, 34.048267, 33.795994>,  <33.647491, 34.652206, 33.842514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098911, 34.048267, 33.795994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908020, 34.369591, 33.938511>,  <32.793484, 34.562386, 34.024021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908020, 34.369591, 33.938511>,  <33.098911, 34.048267, 33.795994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908020, 34.369591, 33.938511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828078, -0.275360, -0.488328,
		-0.294175, -0.528075, 0.796617,
		-0.477230, 0.803315, 0.356283,
		32.764851, 34.610584, 34.045399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475685, 33.803165, 33.942253>,  <33.098911, 34.048267, 33.795994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475685, 33.803165, 33.942253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418026, 34.197777, 33.911297>,  <32.383430, 34.434544, 33.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418026, 34.197777, 33.911297>,  <32.475685, 33.803165, 33.942253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418026, 34.197777, 33.911297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851863, -0.163508, -0.497589,
		-0.503538, -0.005806, 0.863954,
		-0.144152, 0.986525, -0.077387,
		32.374779, 34.493732, 33.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784088, 33.856609, 34.113907>,  <32.475685, 33.803165, 33.942253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784088, 33.856609, 34.113907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891363, 34.185177, 33.912575>,  <31.955729, 34.382317, 33.791775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891363, 34.185177, 33.912575>,  <31.784088, 33.856609, 34.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891363, 34.185177, 33.912575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889206, 0.010042, -0.457397,
		-0.370660, 0.570236, 0.733104,
		0.268186, 0.821420, -0.503335,
		31.971819, 34.431602, 33.761574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187031, 34.258114, 34.093029>,  <31.784088, 33.856609, 34.113907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187031, 34.258114, 34.093029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404367, 34.425808, 33.802094>,  <31.534769, 34.526424, 33.627533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404367, 34.425808, 33.802094>,  <31.187031, 34.258114, 34.093029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404367, 34.425808, 33.802094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781125, -0.064993, -0.620983,
		-0.307608, 0.905550, 0.292159,
		0.543342, 0.419232, -0.727340,
		31.567369, 34.551579, 33.583893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696384, 34.672482, 33.609928>,  <31.187031, 34.258114, 34.093029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696384, 34.672482, 33.609928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014145, 34.604874, 33.376568>,  <31.204802, 34.564308, 33.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014145, 34.604874, 33.376568>,  <30.696384, 34.672482, 33.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014145, 34.604874, 33.376568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604967, -0.305963, -0.735120,
		-0.054253, 0.936920, -0.345307,
		0.794401, -0.169017, -0.583405,
		31.252464, 34.554169, 33.201546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485548, 34.818604, 32.953255>,  <30.696384, 34.672482, 33.609928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485548, 34.818604, 32.953255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814648, 34.600101, 32.890396>,  <31.012108, 34.469002, 32.852680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814648, 34.600101, 32.890396>,  <30.485548, 34.818604, 32.953255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814648, 34.600101, 32.890396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379090, -0.321322, -0.867780,
		0.423530, 0.773539, -0.471445,
		0.822748, -0.546251, -0.157151,
		31.061472, 34.436226, 32.843250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563265, 34.909218, 32.289577>,  <30.485548, 34.818604, 32.953255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563265, 34.909218, 32.289577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799047, 34.596951, 32.372616>,  <30.940517, 34.409588, 32.422440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799047, 34.596951, 32.372616>,  <30.563265, 34.909218, 32.289577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799047, 34.596951, 32.372616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293225, -0.446237, -0.845513,
		0.752702, 0.437523, -0.491950,
		0.589457, -0.780670, 0.207591,
		30.975885, 34.362751, 32.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079145, 34.893517, 31.696209>,  <30.563265, 34.909218, 32.289577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079145, 34.893517, 31.696209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044880, 34.537235, 31.874786>,  <31.024321, 34.323467, 31.981934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044880, 34.537235, 31.874786>,  <31.079145, 34.893517, 31.696209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044880, 34.537235, 31.874786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287231, -0.406987, -0.867098,
		0.954023, -0.202512, -0.220973,
		-0.085665, -0.890702, 0.446443,
		31.019180, 34.270023, 32.008720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465219, 34.478889, 31.372511>,  <31.079145, 34.893517, 31.696209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465219, 34.478889, 31.372511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231264, 34.215572, 31.562063>,  <31.090891, 34.057583, 31.675795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231264, 34.215572, 31.562063>,  <31.465219, 34.478889, 31.372511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231264, 34.215572, 31.562063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192303, -0.455036, -0.869460,
		0.787989, -0.599664, 0.139554,
		-0.584886, -0.658289, 0.473881,
		31.055798, 34.018085, 31.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758017, 33.834679, 31.197870>,  <31.465219, 34.478889, 31.372511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758017, 33.834679, 31.197870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386978, 33.759197, 31.326839>,  <31.164356, 33.713909, 31.404221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386978, 33.759197, 31.326839>,  <31.758017, 33.834679, 31.197870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386978, 33.759197, 31.326839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126571, -0.653264, -0.746475,
		0.351494, -0.733236, 0.582080,
		-0.927594, -0.188707, 0.322425,
		31.108700, 33.702583, 31.423567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721022, 33.071262, 31.167690>,  <31.758017, 33.834679, 31.197870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721022, 33.071262, 31.167690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342672, 33.200443, 31.180481>,  <31.115664, 33.277954, 31.188154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342672, 33.200443, 31.180481>,  <31.721022, 33.071262, 31.167690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342672, 33.200443, 31.180481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249949, -0.662098, -0.706507,
		-0.206999, -0.676258, 0.706984,
		-0.945874, 0.322956, 0.031976,
		31.058910, 33.297329, 31.190073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311152, 32.502640, 31.315920>,  <31.721022, 33.071262, 31.167690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311152, 32.502640, 31.315920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097517, 32.781067, 31.123985>,  <30.969336, 32.948124, 31.008825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097517, 32.781067, 31.123985>,  <31.311152, 32.502640, 31.315920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097517, 32.781067, 31.123985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175200, -0.646371, -0.742637,
		-0.827076, -0.312567, 0.467170,
		-0.534088, 0.696065, -0.479837,
		30.937290, 32.989887, 30.980034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680660, 32.143257, 31.125744>,  <31.311152, 32.502640, 31.315920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680660, 32.143257, 31.125744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704832, 32.458416, 30.880610>,  <30.719336, 32.647511, 30.733528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704832, 32.458416, 30.880610>,  <30.680660, 32.143257, 31.125744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704832, 32.458416, 30.880610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180815, -0.595159, -0.783002,
		-0.981659, 0.158127, 0.106498,
		0.060431, 0.787897, -0.612835,
		30.722961, 32.694786, 30.696758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167383, 32.013683, 30.674015>,  <30.680660, 32.143257, 31.125744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167383, 32.013683, 30.674015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417751, 32.271187, 30.497927>,  <30.567972, 32.425690, 30.392273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417751, 32.271187, 30.497927>,  <30.167383, 32.013683, 30.674015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417751, 32.271187, 30.497927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018547, -0.576594, -0.816820,
		-0.779666, 0.503100, -0.372842,
		0.625921, 0.643762, -0.440220,
		30.605528, 32.464314, 30.365860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817196, 32.236427, 30.102907>,  <30.167383, 32.013683, 30.674015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817196, 32.236427, 30.102907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204775, 32.298607, 30.025990>,  <30.437323, 32.335915, 29.979839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204775, 32.298607, 30.025990>,  <29.817196, 32.236427, 30.102907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204775, 32.298607, 30.025990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108007, -0.433497, -0.894659,
		-0.222432, 0.887647, -0.403246,
		0.968947, 0.155448, -0.192295,
		30.495459, 32.345242, 29.968302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727350, 32.446400, 29.392183>,  <29.817196, 32.236427, 30.102907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727350, 32.446400, 29.392183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116320, 32.357464, 29.420336>,  <30.349701, 32.304104, 29.437227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116320, 32.357464, 29.420336>,  <29.727350, 32.446400, 29.392183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116320, 32.357464, 29.420336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112217, -0.710641, -0.694548,
		0.204441, 0.667499, -0.715996,
		0.972426, -0.222341, 0.070379,
		30.408047, 32.290760, 29.441450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999100, 32.585220, 28.698929>,  <29.727350, 32.446400, 29.392183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999100, 32.585220, 28.698929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255289, 32.328663, 28.867886>,  <30.409002, 32.174728, 28.969259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255289, 32.328663, 28.867886>,  <29.999100, 32.585220, 28.698929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255289, 32.328663, 28.867886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062939, -0.591990, -0.803484,
		0.765398, 0.488024, -0.419521,
		0.640472, -0.641389, 0.422392,
		30.447432, 32.136246, 28.994604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323881, 32.302280, 28.170801>,  <29.999100, 32.585220, 28.698929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323881, 32.302280, 28.170801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410255, 32.043911, 28.463692>,  <30.462080, 31.888889, 28.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410255, 32.043911, 28.463692>,  <30.323881, 32.302280, 28.170801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410255, 32.043911, 28.463692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031153, -0.744980, -0.666359,
		0.975911, 0.166701, -0.140744,
		0.215934, -0.645922, 0.732227,
		30.475035, 31.850134, 28.683359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858603, 31.924742, 27.842676>,  <30.323881, 32.302280, 28.170801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858603, 31.924742, 27.842676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701307, 31.707659, 28.139549>,  <30.606930, 31.577410, 28.317673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701307, 31.707659, 28.139549>,  <30.858603, 31.924742, 27.842676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701307, 31.707659, 28.139549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210917, -0.838934, -0.501701,
		0.894918, -0.040749, 0.444366,
		-0.393238, -0.542706, 0.742182,
		30.583336, 31.544847, 28.362204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332262, 31.448450, 27.951477>,  <30.858603, 31.924742, 27.842676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332262, 31.448450, 27.951477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008739, 31.279449, 28.115101>,  <30.814627, 31.178049, 28.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008739, 31.279449, 28.115101>,  <31.332262, 31.448450, 27.951477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008739, 31.279449, 28.115101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224097, -0.864534, -0.449847,
		0.543706, -0.272169, 0.793919,
		-0.808804, -0.422499, 0.409060,
		30.766098, 31.152700, 28.237820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542242, 30.790789, 28.048170>,  <31.332262, 31.448450, 27.951477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542242, 30.790789, 28.048170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143461, 30.768377, 28.069880>,  <30.904192, 30.754930, 28.082905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143461, 30.768377, 28.069880>,  <31.542242, 30.790789, 28.048170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143461, 30.768377, 28.069880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013585, -0.809852, -0.586477,
		0.076814, -0.583953, 0.808146,
		-0.996953, -0.056029, 0.054275,
		30.844376, 30.751568, 28.086163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087128, 30.606689, 27.522326>,  <31.542242, 30.790789, 28.048170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087128, 30.606689, 27.522326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424999, 30.430698, 27.400385>,  <32.627724, 30.325104, 27.327221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424999, 30.430698, 27.400385>,  <32.087128, 30.606689, 27.522326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424999, 30.430698, 27.400385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512234, 0.499128, 0.698919,
		-0.155348, -0.746519, 0.646975,
		0.844679, -0.439978, -0.304853,
		32.678402, 30.298704, 27.308929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421097, 30.383146, 28.113094>,  <32.087128, 30.606689, 27.522326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421097, 30.383146, 28.113094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704361, 30.397110, 27.831020>,  <32.874321, 30.405487, 27.661776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704361, 30.397110, 27.831020>,  <32.421097, 30.383146, 28.113094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704361, 30.397110, 27.831020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606262, 0.481835, 0.632678,
		0.361867, -0.875566, 0.320055,
		0.708165, 0.034908, -0.705183,
		32.916809, 30.407583, 27.619465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965420, 30.016485, 28.383240>,  <32.421097, 30.383146, 28.113094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965420, 30.016485, 28.383240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093147, 30.287310, 28.118023>,  <33.169785, 30.449804, 27.958893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093147, 30.287310, 28.118023>,  <32.965420, 30.016485, 28.383240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093147, 30.287310, 28.118023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508699, 0.467853, 0.722730,
		0.799540, -0.568068, -0.195028,
		0.319315, 0.677062, -0.663043,
		33.188942, 30.490429, 27.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585018, 30.236547, 28.716284>,  <32.965420, 30.016485, 28.383240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585018, 30.236547, 28.716284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568291, 30.511572, 28.426315>,  <33.558254, 30.676586, 28.252335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568291, 30.511572, 28.426315>,  <33.585018, 30.236547, 28.716284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568291, 30.511572, 28.426315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340680, 0.691887, 0.636576,
		0.939249, -0.220346, -0.263173,
		-0.041819, 0.687561, -0.724922,
		33.555744, 30.717840, 28.208839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305481, 30.584116, 28.634628>,  <33.585018, 30.236547, 28.716284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305481, 30.584116, 28.634628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047741, 30.862333, 28.507486>,  <33.893097, 31.029264, 28.431202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047741, 30.862333, 28.507486>,  <34.305481, 30.584116, 28.634628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047741, 30.862333, 28.507486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416947, 0.667957, 0.616432,
		0.641069, 0.264669, -0.720403,
		-0.644349, 0.695546, -0.317854,
		33.854435, 31.070997, 28.412130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766853, 31.125303, 28.548969>,  <34.305481, 30.584116, 28.634628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766853, 31.125303, 28.548969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422234, 31.328367, 28.547535>,  <34.215462, 31.450207, 28.546675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422234, 31.328367, 28.547535>,  <34.766853, 31.125303, 28.548969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422234, 31.328367, 28.547535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419006, 0.715046, 0.559592,
		0.286648, 0.480614, -0.828760,
		-0.861549, 0.507661, -0.003586,
		34.163769, 31.480665, 28.546459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888042, 31.833138, 28.519127>,  <34.766853, 31.125303, 28.548969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888042, 31.833138, 28.519127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508579, 31.839300, 28.645493>,  <34.280899, 31.842997, 28.721312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508579, 31.839300, 28.645493>,  <34.888042, 31.833138, 28.519127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508579, 31.839300, 28.645493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282999, 0.487398, 0.826048,
		-0.141252, 0.873044, -0.466736,
		-0.948662, 0.015404, 0.315916,
		34.223980, 31.843922, 28.740267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687435, 32.526665, 28.786991>,  <34.888042, 31.833138, 28.519127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687435, 32.526665, 28.786991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443489, 32.276566, 28.981775>,  <34.297123, 32.126507, 29.098646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443489, 32.276566, 28.981775>,  <34.687435, 32.526665, 28.786991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443489, 32.276566, 28.981775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060689, 0.575807, 0.815330,
		-0.790179, 0.526793, -0.313218,
		-0.609863, -0.625248, 0.486961,
		34.260529, 32.088989, 29.127863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166344, 33.022694, 29.096987>,  <34.687435, 32.526665, 28.786991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166344, 33.022694, 29.096987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170582, 32.668179, 29.282192>,  <34.173122, 32.455471, 29.393314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170582, 32.668179, 29.282192>,  <34.166344, 33.022694, 29.096987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170582, 32.668179, 29.282192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153576, 0.458987, 0.875069,
		-0.988080, 0.061839, 0.140974,
		0.010592, -0.886288, 0.463012,
		34.173759, 32.402290, 29.421097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858864, 33.244629, 29.652576>,  <34.166344, 33.022694, 29.096987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858864, 33.244629, 29.652576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995731, 32.893040, 29.785442>,  <34.077850, 32.682087, 29.865162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995731, 32.893040, 29.785442>,  <33.858864, 33.244629, 29.652576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995731, 32.893040, 29.785442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173034, 0.406398, 0.897162,
		-0.923570, -0.249502, 0.291147,
		0.342165, -0.878971, 0.332165,
		34.098381, 32.629349, 29.885092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481976, 33.035946, 30.309010>,  <33.858864, 33.244629, 29.652576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481976, 33.035946, 30.309010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828976, 32.837570, 30.293606>,  <34.037174, 32.718544, 30.284363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828976, 32.837570, 30.293606>,  <33.481976, 33.035946, 30.309010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828976, 32.837570, 30.293606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326350, 0.509001, 0.796501,
		-0.375418, -0.703532, 0.603410,
		0.867500, -0.495943, -0.038510,
		34.089226, 32.688786, 30.282053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496250, 32.757854, 30.918627>,  <33.481976, 33.035946, 30.309010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496250, 32.757854, 30.918627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872803, 32.743450, 30.784466>,  <34.098736, 32.734806, 30.703970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872803, 32.743450, 30.784466>,  <33.496250, 32.757854, 30.918627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872803, 32.743450, 30.784466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328455, 0.324437, 0.887050,
		0.076872, -0.945222, 0.317249,
		0.941386, -0.036012, -0.335403,
		34.155220, 32.732647, 30.683846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827885, 32.579750, 31.490215>,  <33.496250, 32.757854, 30.918627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827885, 32.579750, 31.490215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097721, 32.728611, 31.235209>,  <34.259624, 32.817928, 31.082205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097721, 32.728611, 31.235209>,  <33.827885, 32.579750, 31.490215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097721, 32.728611, 31.235209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392260, 0.550886, 0.736652,
		0.625350, -0.747010, 0.225639,
		0.674588, 0.372156, -0.637519,
		34.300098, 32.840256, 31.043953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587883, 32.345406, 31.741629>,  <33.827885, 32.579750, 31.490215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587883, 32.345406, 31.741629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634407, 32.661598, 31.501091>,  <34.662323, 32.851315, 31.356768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634407, 32.661598, 31.501091>,  <34.587883, 32.345406, 31.741629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634407, 32.661598, 31.501091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737189, 0.337036, 0.585627,
		0.665600, -0.511420, -0.543530,
		0.116312, 0.790478, -0.601345,
		34.669300, 32.898743, 31.320688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317799, 32.416676, 31.649881>,  <34.587883, 32.345406, 31.741629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317799, 32.416676, 31.649881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140976, 32.767815, 31.576164>,  <35.034882, 32.978500, 31.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140976, 32.767815, 31.576164>,  <35.317799, 32.416676, 31.649881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140976, 32.767815, 31.576164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635718, 0.451561, 0.626064,
		0.632811, 0.159595, -0.757680,
		-0.442055, 0.877851, -0.184295,
		35.008358, 33.031170, 31.520876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835228, 32.968655, 31.564371>,  <35.317799, 32.416676, 31.649881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835228, 32.968655, 31.564371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502941, 33.181686, 31.629208>,  <35.303570, 33.309505, 31.668110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502941, 33.181686, 31.629208>,  <35.835228, 32.968655, 31.564371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502941, 33.181686, 31.629208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498714, 0.582550, 0.641810,
		0.247388, 0.613998, -0.749537,
		-0.830712, 0.532581, 0.162094,
		35.253727, 33.341461, 31.677835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204773, 33.645988, 31.612474>,  <35.835228, 32.968655, 31.564371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204773, 33.645988, 31.612474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834942, 33.666702, 31.763462>,  <35.613045, 33.679131, 31.854053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834942, 33.666702, 31.763462>,  <36.204773, 33.645988, 31.612474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834942, 33.666702, 31.763462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337900, 0.569190, 0.749564,
		-0.176034, 0.820573, -0.543757,
		-0.924573, 0.051787, 0.377468,
		35.557571, 33.682240, 31.876703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114491, 34.362034, 31.835119>,  <36.204773, 33.645988, 31.612474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114491, 34.362034, 31.835119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836533, 34.157902, 32.037777>,  <35.669758, 34.035423, 32.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836533, 34.157902, 32.037777>,  <36.114491, 34.362034, 31.835119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836533, 34.157902, 32.037777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261446, 0.477033, 0.839098,
		-0.669904, 0.715542, -0.198062,
		-0.694892, -0.510332, 0.506642,
		35.628063, 34.004803, 32.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819084, 34.815334, 32.313663>,  <36.114491, 34.362034, 31.835119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819084, 34.815334, 32.313663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701416, 34.470734, 32.479210>,  <35.630814, 34.263973, 32.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701416, 34.470734, 32.479210>,  <35.819084, 34.815334, 32.313663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701416, 34.470734, 32.479210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159737, 0.382614, 0.909995,
		-0.942310, 0.333803, 0.025060,
		-0.294171, -0.861500, 0.413862,
		35.613163, 34.212284, 32.603367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403404, 34.983803, 32.832245>,  <35.819084, 34.815334, 32.313663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403404, 34.983803, 32.832245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537071, 34.617367, 32.920887>,  <35.617271, 34.397507, 32.974072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537071, 34.617367, 32.920887>,  <35.403404, 34.983803, 32.832245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537071, 34.617367, 32.920887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241895, 0.310606, 0.919245,
		-0.910944, -0.253577, 0.325393,
		0.334168, -0.916091, 0.221605,
		35.637321, 34.342541, 32.987370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995403, 34.714947, 33.443645>,  <35.403404, 34.983803, 32.832245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995403, 34.714947, 33.443645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326321, 34.490517, 33.432434>,  <35.524872, 34.355858, 33.425705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326321, 34.490517, 33.432434>,  <34.995403, 34.714947, 33.443645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326321, 34.490517, 33.432434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091251, 0.084974, 0.992196,
		-0.554314, -0.823392, 0.121497,
		0.827290, -0.561075, -0.028033,
		35.574509, 34.322193, 33.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843300, 34.131054, 33.780190>,  <34.995403, 34.714947, 33.443645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843300, 34.131054, 33.780190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240120, 34.173306, 33.807568>,  <35.478210, 34.198658, 33.823994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240120, 34.173306, 33.807568>,  <34.843300, 34.131054, 33.780190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240120, 34.173306, 33.807568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, 0.183134, 0.979226,
		0.090900, -0.977397, 0.190874,
		0.992048, 0.105628, 0.068443,
		35.537735, 34.204994, 33.828098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052017, 33.691204, 34.355061>,  <34.843300, 34.131054, 33.780190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052017, 33.691204, 34.355061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352047, 33.951916, 34.310207>,  <35.532063, 34.108345, 34.283295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352047, 33.951916, 34.310207>,  <35.052017, 33.691204, 34.355061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352047, 33.951916, 34.310207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110224, 0.043975, 0.992933,
		0.652107, -0.757130, -0.038858,
		0.750071, 0.651782, -0.112131,
		35.577068, 34.147449, 34.276569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514992, 33.561001, 34.945877>,  <35.052017, 33.691204, 34.355061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514992, 33.561001, 34.945877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642498, 33.920620, 34.825809>,  <35.719002, 34.136391, 34.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642498, 33.920620, 34.825809>,  <35.514992, 33.561001, 34.945877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642498, 33.920620, 34.825809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169269, 0.257602, 0.951309,
		0.932597, -0.354052, -0.070067,
		0.318763, 0.899049, -0.300169,
		35.738129, 34.190334, 34.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075737, 33.732059, 35.397797>,  <35.514992, 33.561001, 34.945877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075737, 33.732059, 35.397797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984936, 34.087658, 35.238724>,  <35.930454, 34.301018, 35.143280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984936, 34.087658, 35.238724>,  <36.075737, 33.732059, 35.397797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984936, 34.087658, 35.238724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184911, 0.440256, 0.878626,
		0.956179, 0.125912, -0.264323,
		-0.226999, 0.889000, -0.397681,
		35.916836, 34.354359, 35.119419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649342, 34.133358, 35.548008>,  <36.075737, 33.732059, 35.397797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649342, 34.133358, 35.548008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358875, 34.402824, 35.493073>,  <36.184597, 34.564503, 35.460110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358875, 34.402824, 35.493073>,  <36.649342, 34.133358, 35.548008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358875, 34.402824, 35.493073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302229, 0.492208, 0.816327,
		0.617533, 0.551276, -0.561024,
		-0.726162, 0.673666, -0.137343,
		36.141026, 34.604923, 35.451870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861595, 34.798401, 35.449898>,  <36.649342, 34.133358, 35.548008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861595, 34.798401, 35.449898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491924, 34.860355, 35.589561>,  <36.270123, 34.897530, 35.673359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491924, 34.860355, 35.589561>,  <36.861595, 34.798401, 35.449898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491924, 34.860355, 35.589561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361042, 0.652633, 0.666123,
		-0.124695, 0.741674, -0.659069,
		-0.924175, 0.154889, 0.349155,
		36.214672, 34.906822, 35.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830444, 35.417877, 35.726013>,  <36.861595, 34.798401, 35.449898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830444, 35.417877, 35.726013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488365, 35.268272, 35.869537>,  <36.283115, 35.178509, 35.955654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488365, 35.268272, 35.869537>,  <36.830444, 35.417877, 35.726013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488365, 35.268272, 35.869537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102283, 0.556894, 0.824262,
		-0.508101, 0.741611, -0.438002,
		-0.855202, -0.374008, 0.358813,
		36.231804, 35.156071, 35.977180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533615, 36.002350, 35.991817>,  <36.830444, 35.417877, 35.726013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533615, 36.002350, 35.991817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371090, 35.684608, 36.172447>,  <36.273575, 35.493965, 36.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371090, 35.684608, 36.172447>,  <36.533615, 36.002350, 35.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371090, 35.684608, 36.172447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059334, 0.470223, 0.880551,
		-0.911806, 0.384572, -0.143926,
		-0.406312, -0.794352, 0.451570,
		36.249195, 35.446304, 36.307919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103233, 36.370716, 36.344913>,  <36.533615, 36.002350, 35.991817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103233, 36.370716, 36.344913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180035, 36.010029, 36.499851>,  <36.226116, 35.793617, 36.592815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180035, 36.010029, 36.499851>,  <36.103233, 36.370716, 36.344913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180035, 36.010029, 36.499851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124610, 0.413893, 0.901757,
		-0.973452, -0.124869, 0.191830,
		0.191999, -0.901720, 0.387345,
		36.237633, 35.739513, 36.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764851, 36.413067, 37.003426>,  <36.103233, 36.370716, 36.344913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764851, 36.413067, 37.003426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042820, 36.127537, 37.038147>,  <36.209602, 35.956219, 37.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042820, 36.127537, 37.038147>,  <35.764851, 36.413067, 37.003426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042820, 36.127537, 37.038147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136459, 0.249428, 0.958731,
		-0.706021, -0.654396, 0.270741,
		0.694920, -0.713829, 0.086803,
		36.251297, 35.913387, 37.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673420, 36.096420, 37.743511>,  <35.764851, 36.413067, 37.003426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673420, 36.096420, 37.743511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041641, 35.982300, 37.636791>,  <36.262573, 35.913826, 37.572762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041641, 35.982300, 37.636791>,  <35.673420, 36.096420, 37.743511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041641, 35.982300, 37.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293636, 0.055007, 0.954333,
		-0.257597, -0.956858, 0.134412,
		0.920555, -0.285302, -0.266798,
		36.317806, 35.896709, 37.556751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873722, 35.681789, 38.303673>,  <35.673420, 36.096420, 37.743511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873722, 35.681789, 38.303673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199051, 35.789642, 38.097446>,  <36.394249, 35.854355, 37.973709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199051, 35.789642, 38.097446>,  <35.873722, 35.681789, 38.303673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199051, 35.789642, 38.097446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489695, 0.161264, 0.856850,
		0.314180, -0.949363, -0.000880,
		0.813320, 0.269637, -0.515564,
		36.443047, 35.870533, 37.942776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328671, 35.543854, 38.877308>,  <35.873722, 35.681789, 38.303673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328671, 35.543854, 38.877308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543228, 35.739174, 38.601963>,  <36.671963, 35.856365, 38.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543228, 35.739174, 38.601963>,  <36.328671, 35.543854, 38.877308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543228, 35.739174, 38.601963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712728, 0.174733, 0.679329,
		0.451998, -0.855002, -0.254301,
		0.536393, 0.488303, -0.688363,
		36.704147, 35.885666, 38.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010963, 35.428787, 38.984322>,  <36.328671, 35.543854, 38.877308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010963, 35.428787, 38.984322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017654, 35.779495, 38.792072>,  <37.021667, 35.989918, 38.676723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017654, 35.779495, 38.792072>,  <37.010963, 35.428787, 38.984322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017654, 35.779495, 38.792072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802956, 0.274662, 0.528983,
		0.595804, -0.394767, -0.699411,
		0.016723, 0.876766, -0.480626,
		37.022671, 36.042526, 38.647884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637245, 35.521378, 38.918098>,  <37.010963, 35.428787, 38.984322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637245, 35.521378, 38.918098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490273, 35.886856, 38.848644>,  <37.402088, 36.106144, 38.806973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490273, 35.886856, 38.848644>,  <37.637245, 35.521378, 38.918098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490273, 35.886856, 38.848644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781108, 0.404501, 0.475656,
		0.504842, 0.039142, -0.862324,
		-0.367429, 0.913699, -0.173635,
		37.380043, 36.160965, 38.796555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138268, 35.938129, 38.657158>,  <37.637245, 35.521378, 38.918098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138268, 35.938129, 38.657158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901890, 36.237915, 38.776550>,  <37.760063, 36.417786, 38.848186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901890, 36.237915, 38.776550>,  <38.138268, 35.938129, 38.657158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901890, 36.237915, 38.776550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663667, 0.241311, 0.708036,
		0.458623, 0.616497, -0.639997,
		-0.590941, 0.749467, 0.298478,
		37.724609, 36.462753, 38.866093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558186, 36.506401, 38.507198>,  <38.138268, 35.938129, 38.657158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558186, 36.506401, 38.507198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269760, 36.596615, 38.769253>,  <38.096706, 36.650742, 38.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269760, 36.596615, 38.769253>,  <38.558186, 36.506401, 38.507198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269760, 36.596615, 38.769253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639133, 0.581611, 0.503227,
		-0.267542, 0.781578, -0.563522,
		-0.721062, 0.225531, 0.655138,
		38.053440, 36.664272, 38.965794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626556, 37.174038, 38.645756>,  <38.558186, 36.506401, 38.507198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626556, 37.174038, 38.645756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456463, 36.987820, 38.956223>,  <38.354404, 36.876087, 39.142502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456463, 36.987820, 38.956223>,  <38.626556, 37.174038, 38.645756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456463, 36.987820, 38.956223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768979, 0.266434, 0.581106,
		-0.477331, 0.843964, 0.244701,
		-0.425236, -0.465550, 0.776168,
		38.328892, 36.848156, 39.189072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610229, 37.686646, 39.096313>,  <38.626556, 37.174038, 38.645756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610229, 37.686646, 39.096313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584030, 37.340878, 39.295708>,  <38.568310, 37.133415, 39.415344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584030, 37.340878, 39.295708>,  <38.610229, 37.686646, 39.096313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584030, 37.340878, 39.295708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797885, 0.254629, 0.546391,
		-0.599240, 0.433522, 0.673030,
		-0.065500, -0.864421, 0.498484,
		38.564381, 37.081551, 39.445251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734112, 37.918755, 39.774105>,  <38.610229, 37.686646, 39.096313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734112, 37.918755, 39.774105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783161, 37.522022, 39.788120>,  <38.812592, 37.283981, 39.796532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783161, 37.522022, 39.788120>,  <38.734112, 37.918755, 39.774105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783161, 37.522022, 39.788120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935568, 0.127309, 0.329401,
		-0.331173, -0.007610, 0.943540,
		0.122627, -0.991834, 0.035042,
		38.819950, 37.224472, 39.798634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954006, 37.769005, 40.441151>,  <38.734112, 37.918755, 39.774105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954006, 37.769005, 40.441151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066387, 37.474949, 40.194366>,  <39.133816, 37.298515, 40.046295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066387, 37.474949, 40.194366>,  <38.954006, 37.769005, 40.441151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066387, 37.474949, 40.194366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945779, 0.102905, 0.308080,
		-0.162994, -0.670061, 0.724190,
		0.280955, -0.735139, -0.616957,
		39.150673, 37.254406, 40.009281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292950, 37.237625, 40.873817>,  <38.954006, 37.769005, 40.441151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292950, 37.237625, 40.873817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414108, 37.194809, 40.495022>,  <39.486805, 37.169121, 40.267742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414108, 37.194809, 40.495022>,  <39.292950, 37.237625, 40.873817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414108, 37.194809, 40.495022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937281, 0.213320, 0.275679,
		0.172504, -0.971101, 0.164939,
		0.302897, -0.107038, -0.946993,
		39.504978, 37.162697, 40.210922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785305, 36.812065, 40.884972>,  <39.292950, 37.237625, 40.873817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785305, 36.812065, 40.884972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862114, 37.032658, 40.560257>,  <39.908199, 37.165012, 40.365429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862114, 37.032658, 40.560257>,  <39.785305, 36.812065, 40.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862114, 37.032658, 40.560257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969389, 0.022383, 0.244507,
		0.153011, -0.833887, -0.530301,
		0.192022, 0.551481, -0.811786,
		39.919720, 37.198101, 40.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409031, 36.536732, 40.574490>,  <39.785305, 36.812065, 40.884972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409031, 36.536732, 40.574490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380512, 36.913517, 40.443268>,  <40.363400, 37.139587, 40.364532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380512, 36.913517, 40.443268>,  <40.409031, 36.536732, 40.574490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380512, 36.913517, 40.443268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949320, 0.165017, 0.267507,
		0.306117, -0.292359, -0.905990,
		-0.071295, 0.941964, -0.328057,
		40.359123, 37.196106, 40.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151749, 36.483826, 40.313931>,  <40.409031, 36.536732, 40.574490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151749, 36.483826, 40.313931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996368, 36.840122, 40.219536>,  <40.903141, 37.053898, 40.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996368, 36.840122, 40.219536>,  <41.151749, 36.483826, 40.313931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996368, 36.840122, 40.219536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920557, 0.363727, -0.142402,
		-0.041007, -0.272558, -0.961265,
		-0.388451, 0.890739, -0.235990,
		40.879833, 37.107346, 40.148739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450874, 36.737331, 39.620907>,  <41.151749, 36.483826, 40.313931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450874, 36.737331, 39.620907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310101, 37.047371, 39.830807>,  <41.225636, 37.233395, 39.956749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310101, 37.047371, 39.830807>,  <41.450874, 36.737331, 39.620907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310101, 37.047371, 39.830807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881583, 0.462884, -0.092461,
		-0.314566, 0.430072, -0.846219,
		-0.351936, 0.775098, 0.524752,
		41.204521, 37.279900, 39.988232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484379, 37.233521, 39.274712>,  <41.450874, 36.737331, 39.620907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484379, 37.233521, 39.274712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499565, 37.368225, 39.651043>,  <41.508675, 37.449047, 39.876842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499565, 37.368225, 39.651043>,  <41.484379, 37.233521, 39.274712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499565, 37.368225, 39.651043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885386, 0.425181, -0.187916,
		-0.463304, 0.840127, -0.282020,
		0.037964, 0.336759, 0.940825,
		41.510956, 37.469254, 39.933292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548077, 37.992817, 39.305397>,  <41.484379, 37.233521, 39.274712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548077, 37.992817, 39.305397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720211, 37.781456, 39.598137>,  <41.823490, 37.654640, 39.773781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720211, 37.781456, 39.598137>,  <41.548077, 37.992817, 39.305397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720211, 37.781456, 39.598137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889347, 0.386968, -0.243551,
		-0.154507, 0.755675, 0.636462,
		0.430336, -0.528405, 0.731847,
		41.849312, 37.622936, 39.817692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978500, 38.433544, 39.608337>,  <41.548077, 37.992817, 39.305397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978500, 38.433544, 39.608337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126514, 38.071190, 39.690750>,  <42.215324, 37.853779, 39.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126514, 38.071190, 39.690750>,  <41.978500, 38.433544, 39.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126514, 38.071190, 39.690750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908796, 0.306949, -0.282615,
		0.192773, 0.291823, 0.936845,
		0.370037, -0.905882, 0.206036,
		42.237526, 37.799427, 39.752560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570934, 38.582569, 39.910484>,  <41.978500, 38.433544, 39.608337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570934, 38.582569, 39.910484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616989, 38.205757, 39.784424>,  <42.644623, 37.979668, 39.708790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616989, 38.205757, 39.784424>,  <42.570934, 38.582569, 39.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616989, 38.205757, 39.784424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952174, 0.195060, -0.235196,
		0.283035, -0.272994, 0.919438,
		0.115138, -0.942033, -0.315147,
		42.651531, 37.923149, 39.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276394, 38.583397, 40.051983>,  <42.570934, 38.582569, 39.910484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276394, 38.583397, 40.051983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221748, 38.250622, 39.836868>,  <43.188961, 38.050957, 39.707798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221748, 38.250622, 39.836868>,  <43.276394, 38.583397, 40.051983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221748, 38.250622, 39.836868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982713, -0.045341, -0.179497,
		0.124946, -0.553016, 0.823749,
		-0.136615, -0.831936, -0.537791,
		43.180763, 38.001041, 39.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770283, 38.071766, 40.244068>,  <43.276394, 38.583397, 40.051983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770283, 38.071766, 40.244068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652954, 38.007607, 39.867085>,  <43.582558, 37.969109, 39.640892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652954, 38.007607, 39.867085>,  <43.770283, 38.071766, 40.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652954, 38.007607, 39.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955516, -0.081022, -0.283592,
		-0.030871, -0.983721, 0.177032,
		-0.293319, -0.160402, -0.942462,
		43.564957, 37.959484, 39.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253868, 37.703217, 39.998516>,  <43.770283, 38.071766, 40.244068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253868, 37.703217, 39.998516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081768, 37.859459, 39.672985>,  <43.978508, 37.953205, 39.477665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081768, 37.859459, 39.672985>,  <44.253868, 37.703217, 39.998516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081768, 37.859459, 39.672985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891455, 0.325777, -0.314925,
		0.142113, -0.860985, -0.488374,
		-0.430246, 0.390608, -0.813826,
		43.952694, 37.976643, 39.428837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763786, 37.491230, 39.533730>,  <44.253868, 37.703217, 39.998516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763786, 37.491230, 39.533730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535503, 37.764622, 39.351673>,  <44.398533, 37.928658, 39.242439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535503, 37.764622, 39.351673>,  <44.763786, 37.491230, 39.533730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535503, 37.764622, 39.351673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810179, 0.378366, -0.447715,
		-0.133793, -0.624260, -0.769675,
		-0.570709, 0.683476, -0.455139,
		44.364292, 37.969666, 39.215130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770267, 37.480515, 38.741211>,  <44.763786, 37.491230, 39.533730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770267, 37.480515, 38.741211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673420, 37.851910, 38.853840>,  <44.615311, 38.074749, 38.921417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673420, 37.851910, 38.853840>,  <44.770267, 37.480515, 38.741211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673420, 37.851910, 38.853840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604383, 0.371352, -0.704853,
		-0.759012, -0.000480, -0.651076,
		-0.242117, 0.928492, 0.281571,
		44.600784, 38.130459, 38.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079422, 37.755772, 38.209106>,  <44.770267, 37.480515, 38.741211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079422, 37.755772, 38.209106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939648, 38.071415, 38.411175>,  <44.855782, 38.260803, 38.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939648, 38.071415, 38.411175>,  <45.079422, 37.755772, 38.209106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939648, 38.071415, 38.411175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525167, 0.611460, -0.591875,
		-0.775947, 0.058476, -0.628082,
		-0.349437, 0.789111, 0.505170,
		44.834816, 38.308147, 38.562725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847004, 38.326290, 37.649944>,  <45.079422, 37.755772, 38.209106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847004, 38.326290, 37.649944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952263, 38.467350, 38.009140>,  <45.015419, 38.551987, 38.224659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952263, 38.467350, 38.009140>,  <44.847004, 38.326290, 37.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952263, 38.467350, 38.009140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790202, 0.455205, -0.410328,
		-0.553473, 0.817573, -0.158877,
		0.263152, 0.352650, 0.897992,
		45.031208, 38.573147, 38.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783527, 39.108997, 37.499157>,  <44.847004, 38.326290, 37.649944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783527, 39.108997, 37.499157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001202, 39.011009, 37.820118>,  <45.131805, 38.952217, 38.012695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001202, 39.011009, 37.820118>,  <44.783527, 39.108997, 37.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001202, 39.011009, 37.820118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837536, 0.214432, -0.502546,
		-0.048955, 0.945521, 0.321858,
		0.544185, -0.244966, 0.802406,
		45.164455, 38.937519, 38.060841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034855, 39.712051, 37.776592>,  <44.783527, 39.108997, 37.499157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034855, 39.712051, 37.776592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301182, 39.422901, 37.850487>,  <45.460979, 39.249409, 37.894825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301182, 39.422901, 37.850487>,  <45.034855, 39.712051, 37.776592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301182, 39.422901, 37.850487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699373, 0.518425, -0.492051,
		0.259922, 0.456817, 0.850740,
		0.665822, -0.722879, 0.184735,
		45.500927, 39.206036, 37.905907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739548, 39.855206, 38.256035>,  <45.034855, 39.712051, 37.776592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739548, 39.855206, 38.256035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709034, 39.658009, 37.909363>,  <45.690727, 39.539692, 37.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709034, 39.658009, 37.909363>,  <45.739548, 39.855206, 38.256035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709034, 39.658009, 37.909363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726875, 0.567497, -0.386782,
		0.682521, -0.659474, 0.315054,
		-0.076281, -0.492992, -0.866683,
		45.686150, 39.510113, 37.649357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287357, 39.998653, 38.029835>,  <45.739548, 39.855206, 38.256035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287357, 39.998653, 38.029835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129726, 39.757442, 38.307270>,  <46.035149, 39.612717, 38.473732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129726, 39.757442, 38.307270>,  <46.287357, 39.998653, 38.029835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129726, 39.757442, 38.307270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700827, -0.291063, -0.651248,
		0.594597, -0.742726, -0.307917,
		-0.394075, -0.603027, 0.693587,
		46.011505, 39.576534, 38.515347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527439, 39.643673, 37.412155>,  <46.287357, 39.998653, 38.029835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527439, 39.643673, 37.412155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733910, 39.474297, 37.709949>,  <46.857792, 39.372669, 37.888626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733910, 39.474297, 37.709949>,  <46.527439, 39.643673, 37.412155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.733910, 39.474297, 37.709949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851016, -0.351632, 0.390034,
		0.096628, -0.834895, -0.541861,
		0.516173, -0.423444, 0.744487,
		46.888763, 39.347263, 37.933296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373920, 38.859943, 37.505177>,  <46.527439, 39.643673, 37.412155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373920, 38.859943, 37.505177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471264, 39.066246, 37.833755>,  <46.529671, 39.190025, 38.030903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471264, 39.066246, 37.833755>,  <46.373920, 38.859943, 37.505177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471264, 39.066246, 37.833755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909099, -0.173931, 0.378533,
		0.338105, -0.838895, 0.426544,
		0.243360, 0.515755, 0.821446,
		46.544273, 39.220974, 38.080189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309452, 38.385048, 38.113625>,  <46.373920, 38.859943, 37.505177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309452, 38.385048, 38.113625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239700, 38.766171, 38.213032>,  <46.197849, 38.994843, 38.272675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239700, 38.766171, 38.213032>,  <46.309452, 38.385048, 38.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239700, 38.766171, 38.213032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900942, -0.256231, 0.350214,
		0.397362, -0.162828, 0.903101,
		-0.174378, 0.952803, 0.248515,
		46.187386, 39.052010, 38.287586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055210, 38.472679, 38.772163>,  <46.309452, 38.385048, 38.113625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055210, 38.472679, 38.772163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894688, 38.779102, 38.571323>,  <45.798374, 38.962955, 38.450817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894688, 38.779102, 38.571323>,  <46.055210, 38.472679, 38.772163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894688, 38.779102, 38.571323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911268, -0.278587, 0.303282,
		0.092452, 0.579259, 0.809884,
		-0.401302, 0.766060, -0.502104,
		45.774296, 39.008919, 38.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826668, 38.909847, 39.286396>,  <46.055210, 38.472679, 38.772163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826668, 38.909847, 39.286396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641407, 38.925232, 38.932220>,  <45.530251, 38.934464, 38.719715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641407, 38.925232, 38.932220>,  <45.826668, 38.909847, 39.286396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641407, 38.925232, 38.932220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823322, -0.388493, 0.413781,
		-0.328073, 0.920648, 0.211601,
		-0.463152, 0.038466, -0.885444,
		45.502460, 38.936771, 38.666588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268166, 39.264748, 39.354084>,  <45.826668, 38.909847, 39.286396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268166, 39.264748, 39.354084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174000, 39.044865, 39.033485>,  <45.117500, 38.912933, 38.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174000, 39.044865, 39.033485>,  <45.268166, 39.264748, 39.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174000, 39.044865, 39.033485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886132, -0.217317, 0.409320,
		-0.399186, 0.806594, -0.435955,
		-0.235415, -0.549708, -0.801499,
		45.103374, 38.879951, 38.793037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591995, 39.402378, 39.192589>,  <45.268166, 39.264748, 39.354084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591995, 39.402378, 39.192589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665768, 39.045300, 39.028114>,  <44.710033, 38.831051, 38.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665768, 39.045300, 39.028114>,  <44.591995, 39.402378, 39.192589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665768, 39.045300, 39.028114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885085, -0.332753, 0.325422,
		-0.427326, 0.303913, -0.851487,
		0.184435, -0.892700, -0.411183,
		44.721100, 38.777489, 38.904758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005619, 39.227299, 38.821487>,  <44.591995, 39.402378, 39.192589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005619, 39.227299, 38.821487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184151, 38.875053, 38.885128>,  <44.291267, 38.663708, 38.923313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184151, 38.875053, 38.885128>,  <44.005619, 39.227299, 38.821487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184151, 38.875053, 38.885128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891108, -0.421077, 0.169178,
		-0.081985, -0.217288, -0.972658,
		0.446324, -0.880614, 0.159105,
		44.318047, 38.610870, 38.932861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597912, 38.841175, 38.550453>,  <44.005619, 39.227299, 38.821487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597912, 38.841175, 38.550453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824142, 38.566723, 38.733467>,  <43.959881, 38.402050, 38.843277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824142, 38.566723, 38.733467>,  <43.597912, 38.841175, 38.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824142, 38.566723, 38.733467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815193, -0.549102, 0.184248,
		0.124816, -0.477189, -0.869892,
		0.565580, -0.686133, 0.457538,
		43.993816, 38.360882, 38.870728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364544, 38.264973, 38.296741>,  <43.597912, 38.841175, 38.550453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364544, 38.264973, 38.296741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543434, 38.182991, 38.644989>,  <43.650768, 38.133801, 38.853939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543434, 38.182991, 38.644989>,  <43.364544, 38.264973, 38.296741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543434, 38.182991, 38.644989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815669, -0.492838, 0.302975,
		0.366979, -0.845638, -0.387586,
		0.447224, -0.204957, 0.870622,
		43.677601, 38.121502, 38.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975670, 37.615505, 38.518318>,  <43.364544, 38.264973, 38.296741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975670, 37.615505, 38.518318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196949, 37.672970, 38.846546>,  <43.329716, 37.707447, 39.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196949, 37.672970, 38.846546>,  <42.975670, 37.615505, 38.518318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196949, 37.672970, 38.846546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716601, -0.420233, 0.556675,
		0.424802, -0.895972, -0.129525,
		0.553196, 0.143659, 0.820570,
		43.362907, 37.716068, 39.092716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082550, 36.986015, 38.975636>,  <42.975670, 37.615505, 38.518318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082550, 36.986015, 38.975636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080345, 37.323814, 39.189846>,  <43.079021, 37.526493, 39.318371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080345, 37.323814, 39.189846>,  <43.082550, 36.986015, 38.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080345, 37.323814, 39.189846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793818, -0.329371, 0.511241,
		0.608131, -0.422292, 0.672195,
		-0.005509, 0.844502, 0.535524,
		43.078693, 37.577164, 39.350502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007610, 36.677048, 39.591351>,  <43.082550, 36.986015, 38.975636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007610, 36.677048, 39.591351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858360, 37.047009, 39.620548>,  <42.768810, 37.268986, 39.638065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858360, 37.047009, 39.620548>,  <43.007610, 36.677048, 39.591351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858360, 37.047009, 39.620548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808797, -0.362809, 0.462835,
		0.454561, 0.113659, 0.883434,
		-0.373123, 0.924906, 0.072991,
		42.746422, 37.324482, 39.642445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615242, 36.634491, 40.183197>,  <43.007610, 36.677048, 39.591351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615242, 36.634491, 40.183197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512974, 37.005535, 40.074265>,  <42.451614, 37.228161, 40.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512974, 37.005535, 40.074265>,  <42.615242, 36.634491, 40.183197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512974, 37.005535, 40.074265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906951, -0.132596, 0.399822,
		0.334771, 0.349214, 0.875202,
		-0.255672, 0.927614, -0.272331,
		42.436272, 37.283821, 39.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362556, 36.913395, 40.796669>,  <42.615242, 36.634491, 40.183197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362556, 36.913395, 40.796669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192707, 37.116829, 40.497059>,  <42.090797, 37.238888, 40.317291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192707, 37.116829, 40.497059>,  <42.362556, 36.913395, 40.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192707, 37.116829, 40.497059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901523, -0.161322, 0.401536,
		0.083379, 0.845766, 0.526998,
		-0.424622, 0.508581, -0.749027,
		42.065319, 37.269402, 40.272350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944645, 37.404598, 41.047081>,  <42.362556, 36.913395, 40.796669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944645, 37.404598, 41.047081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822781, 37.321762, 40.675213>,  <41.749660, 37.272060, 40.452091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822781, 37.321762, 40.675213>,  <41.944645, 37.404598, 41.047081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822781, 37.321762, 40.675213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902902, -0.247952, 0.351124,
		-0.303228, 0.946379, -0.111439,
		-0.304665, -0.207089, -0.929674,
		41.731380, 37.259636, 40.396309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201790, 37.698845, 41.256577>,  <41.944645, 37.404598, 41.047081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201790, 37.698845, 41.256577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297504, 37.691105, 40.868275>,  <41.354935, 37.686462, 40.635292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297504, 37.691105, 40.868275>,  <41.201790, 37.698845, 41.256577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297504, 37.691105, 40.868275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949939, -0.211523, -0.229942,
		-0.200888, 0.977181, -0.068995,
		0.239289, -0.019349, -0.970756,
		41.369289, 37.685299, 40.577049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878681, 38.257835, 40.854187>,  <41.201790, 37.698845, 41.256577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878681, 38.257835, 40.854187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969208, 37.964119, 40.598186>,  <41.023525, 37.787888, 40.444588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969208, 37.964119, 40.598186>,  <40.878681, 38.257835, 40.854187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969208, 37.964119, 40.598186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961450, -0.063048, -0.267655,
		0.156186, 0.675900, -0.720253,
		0.226319, -0.734291, -0.639997,
		41.037102, 37.743832, 40.406189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533703, 38.421349, 40.195805>,  <40.878681, 38.257835, 40.854187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533703, 38.421349, 40.195805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629616, 38.033741, 40.172146>,  <40.687164, 37.801174, 40.157951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629616, 38.033741, 40.172146>,  <40.533703, 38.421349, 40.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629616, 38.033741, 40.172146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925290, -0.209676, -0.316031,
		0.293840, 0.130506, -0.946904,
		0.239787, -0.969022, -0.059144,
		40.701553, 37.743034, 40.154404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329769, 38.149197, 39.532597>,  <40.533703, 38.421349, 40.195805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329769, 38.149197, 39.532597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354736, 37.834915, 39.778774>,  <40.369717, 37.646347, 39.926479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354736, 37.834915, 39.778774>,  <40.329769, 38.149197, 39.532597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354736, 37.834915, 39.778774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838731, -0.375524, -0.394349,
		0.540956, -0.491575, -0.682437,
		0.062419, -0.785707, 0.615442,
		40.373463, 37.599201, 39.963406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108871, 37.661251, 39.146938>,  <40.329769, 38.149197, 39.532597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108871, 37.661251, 39.146938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090309, 37.472748, 39.499249>,  <40.079174, 37.359646, 39.710636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090309, 37.472748, 39.499249>,  <40.108871, 37.661251, 39.146938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090309, 37.472748, 39.499249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877393, -0.402270, -0.261459,
		0.477524, -0.784917, -0.394811,
		-0.046403, -0.471257, 0.880774,
		40.076389, 37.331371, 39.763481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981453, 36.898586, 39.054432>,  <40.108871, 37.661251, 39.146938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981453, 36.898586, 39.054432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829044, 37.000465, 39.409950>,  <39.737598, 37.061592, 39.623260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829044, 37.000465, 39.409950>,  <39.981453, 36.898586, 39.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829044, 37.000465, 39.409950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825480, -0.526680, -0.202956,
		0.416417, -0.811011, 0.410923,
		-0.381024, 0.254695, 0.888792,
		39.714737, 37.076874, 39.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529179, 36.269917, 39.226933>,  <39.981453, 36.898586, 39.054432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529179, 36.269917, 39.226933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411530, 36.571682, 39.461655>,  <39.340939, 36.752743, 39.602489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411530, 36.571682, 39.461655>,  <39.529179, 36.269917, 39.226933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411530, 36.571682, 39.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954706, -0.260823, -0.143205,
		0.045017, -0.602350, 0.796962,
		-0.294125, 0.754417, 0.586809,
		39.323292, 36.798008, 39.637699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124447, 35.929901, 39.835426>,  <39.529179, 36.269917, 39.226933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124447, 35.929901, 39.835426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014118, 36.313095, 39.803967>,  <38.947922, 36.543011, 39.785091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014118, 36.313095, 39.803967>,  <39.124447, 35.929901, 39.835426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014118, 36.313095, 39.803967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939238, -0.286010, -0.189817,
		-0.204335, 0.021510, 0.978665,
		-0.275825, 0.957985, -0.078645,
		38.931370, 36.600491, 39.780373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480503, 35.766617, 40.434208>,  <39.124447, 35.929901, 39.835426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480503, 35.766617, 40.434208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707226, 35.844135, 40.113914>,  <39.843258, 35.890648, 39.921738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707226, 35.844135, 40.113914>,  <39.480503, 35.766617, 40.434208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707226, 35.844135, 40.113914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817237, -0.255191, 0.516721,
		-0.104200, -0.947269, -0.303024,
		0.566803, 0.193800, -0.800735,
		39.877266, 35.902275, 39.873695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721333, 35.178684, 40.090748>,  <39.480503, 35.766617, 40.434208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721333, 35.178684, 40.090748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927284, 35.520439, 40.118805>,  <40.050854, 35.725491, 40.135639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927284, 35.520439, 40.118805>,  <39.721333, 35.178684, 40.090748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927284, 35.520439, 40.118805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734704, -0.481951, 0.477423,
		0.441712, -0.194278, -0.875869,
		0.514879, 0.854388, 0.070146,
		40.081749, 35.776756, 40.139851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538383, 35.025787, 39.969288>,  <39.721333, 35.178684, 40.090748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538383, 35.025787, 39.969288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498959, 35.360828, 40.184212>,  <40.475304, 35.561855, 40.313168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498959, 35.360828, 40.184212>,  <40.538383, 35.025787, 39.969288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498959, 35.360828, 40.184212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795282, -0.258256, 0.548481,
		0.598174, 0.481373, -0.640678,
		-0.098565, 0.837606, 0.537309,
		40.469391, 35.612110, 40.345406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170357, 35.448406, 39.944656>,  <40.538383, 35.025787, 39.969288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170357, 35.448406, 39.944656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979725, 35.478863, 40.294987>,  <40.865345, 35.497135, 40.505184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979725, 35.478863, 40.294987>,  <41.170357, 35.448406, 39.944656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979725, 35.478863, 40.294987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773812, -0.436485, 0.459016,
		0.417237, 0.896484, 0.149100,
		-0.476580, 0.076143, 0.875827,
		40.836750, 35.501705, 40.557735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685940, 35.578892, 39.379238>,  <41.170357, 35.448406, 39.944656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685940, 35.578892, 39.379238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020596, 35.797886, 39.386063>,  <42.221390, 35.929283, 39.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020596, 35.797886, 39.386063>,  <41.685940, 35.578892, 39.379238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020596, 35.797886, 39.386063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411981, -0.608429, -0.678297,
		-0.360974, 0.574522, -0.734590,
		0.836642, 0.547484, 0.017065,
		42.271587, 35.962132, 39.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815571, 35.518867, 38.606022>,  <41.685940, 35.578892, 39.379238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815571, 35.518867, 38.606022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151073, 35.607201, 38.805107>,  <42.352375, 35.660202, 38.924557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151073, 35.607201, 38.805107>,  <41.815571, 35.518867, 38.606022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151073, 35.607201, 38.805107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530655, -0.536366, -0.656290,
		0.122024, 0.814581, -0.567069,
		0.838758, 0.220835, 0.497711,
		42.402702, 35.673450, 38.954422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309525, 35.615795, 38.082279>,  <41.815571, 35.518867, 38.606022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309525, 35.615795, 38.082279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466579, 35.510960, 38.434902>,  <42.560814, 35.448059, 38.646477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466579, 35.510960, 38.434902>,  <42.309525, 35.615795, 38.082279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466579, 35.510960, 38.434902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677394, -0.565930, -0.469957,
		0.622069, 0.781687, -0.044674,
		0.392642, -0.262084, 0.881558,
		42.584373, 35.432335, 38.699371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097706, 35.784096, 38.107109>,  <42.309525, 35.615795, 38.082279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097706, 35.784096, 38.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967384, 35.477242, 38.328144>,  <42.889191, 35.293129, 38.460766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967384, 35.477242, 38.328144>,  <43.097706, 35.784096, 38.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967384, 35.477242, 38.328144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787166, -0.543838, -0.290876,
		0.523660, 0.340212, 0.781048,
		-0.325805, -0.767135, 0.552590,
		42.869644, 35.247101, 38.493919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618095, 35.560982, 38.674721>,  <43.097706, 35.784096, 38.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618095, 35.560982, 38.674721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371258, 35.297550, 38.502453>,  <43.223156, 35.139492, 38.399094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371258, 35.297550, 38.502453>,  <43.618095, 35.560982, 38.674721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371258, 35.297550, 38.502453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752762, -0.334622, -0.566902,
		0.229238, -0.674020, 0.702245,
		-0.617089, -0.658579, -0.430668,
		43.186131, 35.099976, 38.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039200, 35.057438, 38.649971>,  <43.618095, 35.560982, 38.674721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039200, 35.057438, 38.649971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745476, 35.006332, 38.383297>,  <43.569241, 34.975670, 38.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745476, 35.006332, 38.383297>,  <44.039200, 35.057438, 38.649971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745476, 35.006332, 38.383297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665125, -0.331662, -0.669036,
		-0.135634, -0.934706, 0.328522,
		-0.734311, -0.127764, -0.666681,
		43.525181, 34.968002, 38.183292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013996, 34.295963, 38.370968>,  <44.039200, 35.057438, 38.649971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013996, 34.295963, 38.370968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856369, 34.579865, 38.137398>,  <43.761791, 34.750206, 37.997257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856369, 34.579865, 38.137398>,  <44.013996, 34.295963, 38.370968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856369, 34.579865, 38.137398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669123, -0.213992, -0.711675,
		-0.630066, -0.671165, -0.390583,
		-0.394070, 0.709750, -0.583921,
		43.738148, 34.792789, 37.962223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898716, 33.968044, 37.652241>,  <44.013996, 34.295963, 38.370968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898716, 33.968044, 37.652241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945271, 34.364277, 37.623383>,  <43.973206, 34.602016, 37.606068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945271, 34.364277, 37.623383>,  <43.898716, 33.968044, 37.652241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945271, 34.364277, 37.623383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650834, -0.130940, -0.747844,
		-0.750246, 0.040084, -0.659943,
		0.116389, 0.990580, -0.072149,
		43.980186, 34.661449, 37.601738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811523, 34.175838, 36.911606>,  <43.898716, 33.968044, 37.652241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811523, 34.175838, 36.911606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047577, 34.380341, 37.161522>,  <44.189209, 34.503044, 37.311470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047577, 34.380341, 37.161522>,  <43.811523, 34.175838, 36.911606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047577, 34.380341, 37.161522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728281, -0.003187, -0.685271,
		-0.348359, 0.859421, -0.374220,
		0.590129, 0.511258, 0.624790,
		44.224617, 34.533718, 37.348957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477722, 34.605389, 36.871044>,  <43.811523, 34.175838, 36.911606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477722, 34.605389, 36.871044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181648, 34.776501, 37.078556>,  <44.004005, 34.879169, 37.203064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181648, 34.776501, 37.078556>,  <44.477722, 34.605389, 36.871044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181648, 34.776501, 37.078556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671049, 0.518911, 0.529551,
		-0.042666, 0.740090, -0.671153,
		-0.740184, 0.427783, 0.518777,
		43.959595, 34.904835, 37.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940952, 34.267914, 36.340843>,  <44.477722, 34.605389, 36.871044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940952, 34.267914, 36.340843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319359, 34.162621, 36.265202>,  <45.546402, 34.099445, 36.219814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319359, 34.162621, 36.265202>,  <44.940952, 34.267914, 36.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319359, 34.162621, 36.265202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323770, 0.794514, 0.513732,
		0.015016, -0.547226, 0.836850,
		0.946016, -0.263233, -0.189106,
		45.603165, 34.083652, 36.208469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539494, 34.290817, 36.932095>,  <44.940952, 34.267914, 36.340843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539494, 34.290817, 36.932095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627205, 34.387432, 36.553978>,  <45.679832, 34.445400, 36.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627205, 34.387432, 36.553978>,  <45.539494, 34.290817, 36.932095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627205, 34.387432, 36.553978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162731, 0.946247, 0.279529,
		0.961996, -0.215123, 0.168185,
		0.219278, 0.241537, -0.945292,
		45.692989, 34.459892, 36.270390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188652, 34.500923, 36.738823>,  <45.539494, 34.290817, 36.932095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188652, 34.500923, 36.738823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974747, 34.700401, 36.465961>,  <45.846401, 34.820087, 36.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974747, 34.700401, 36.465961>,  <46.188652, 34.500923, 36.738823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974747, 34.700401, 36.465961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420551, 0.857269, 0.297029,
		0.732912, -0.128038, -0.668166,
		-0.534767, 0.498694, -0.682150,
		45.814316, 34.850010, 36.261318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346088, 35.197567, 36.802906>,  <46.188652, 34.500923, 36.738823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346088, 35.197567, 36.802906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182331, 35.214134, 36.438339>,  <46.084076, 35.224075, 36.219597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182331, 35.214134, 36.438339>,  <46.346088, 35.197567, 36.802906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182331, 35.214134, 36.438339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477143, 0.861188, -0.175182,
		0.777647, -0.506595, -0.372326,
		-0.409389, 0.041423, -0.911419,
		46.059513, 35.226562, 36.164913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789066, 35.222576, 36.217293>,  <46.346088, 35.197567, 36.802906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789066, 35.222576, 36.217293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457703, 35.394455, 36.073566>,  <46.258884, 35.497581, 35.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457703, 35.394455, 36.073566>,  <46.789066, 35.222576, 36.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457703, 35.394455, 36.073566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558649, 0.680394, -0.474316,
		0.040665, -0.593657, -0.803690,
		-0.828407, 0.429692, -0.359314,
		46.209179, 35.523361, 35.965771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042679, 35.549629, 35.697472>,  <46.789066, 35.222576, 36.217293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042679, 35.549629, 35.697472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671410, 35.696735, 35.720287>,  <46.448650, 35.785000, 35.733978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671410, 35.696735, 35.720287>,  <47.042679, 35.549629, 35.697472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671410, 35.696735, 35.720287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288352, 0.807550, -0.514506,
		-0.235277, -0.461101, -0.855588,
		-0.928169, 0.367762, 0.057038,
		46.392960, 35.807064, 35.737400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377708, 34.893444, 35.450859>,  <47.042679, 35.549629, 35.697472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377708, 34.893444, 35.450859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651215, 35.051598, 35.205540>,  <47.815319, 35.146488, 35.058346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651215, 35.051598, 35.205540>,  <47.377708, 34.893444, 35.450859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.651215, 35.051598, 35.205540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688468, -0.071022, 0.721781,
		0.241821, -0.915767, -0.320770,
		0.683765, 0.395382, -0.613302,
		47.856342, 35.170212, 35.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.313217, 30.003891, 34.751244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.062492, 29.753338, 34.936607>,  <32.912056, 29.603006, 35.047825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.062492, 29.753338, 34.936607>,  <33.313217, 30.003891, 34.751244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062492, 29.753338, 34.936607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263616, 0.389189, 0.882631,
		-0.733219, 0.675408, -0.078825,
		-0.626814, -0.626383, 0.463410,
		32.874447, 29.565422, 35.075630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125713, 30.427935, 35.251945>,  <33.313217, 30.003891, 34.751244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125713, 30.427935, 35.251945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.985107, 30.073523, 35.372868>,  <32.900745, 29.860876, 35.445419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.985107, 30.073523, 35.372868>,  <33.125713, 30.427935, 35.251945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985107, 30.073523, 35.372868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078926, 0.293711, 0.952630,
		-0.932849, 0.358724, -0.033314,
		-0.351516, -0.886031, 0.302301,
		32.879654, 29.807713, 35.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496460, 30.592045, 35.655891>,  <33.125713, 30.427935, 35.251945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496460, 30.592045, 35.655891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637264, 30.234015, 35.765385>,  <32.721748, 30.019196, 35.831081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637264, 30.234015, 35.765385>,  <32.496460, 30.592045, 35.655891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637264, 30.234015, 35.765385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008086, 0.295343, 0.955357,
		-0.935961, -0.334081, 0.111201,
		0.352009, -0.895076, 0.273729,
		32.742867, 29.965492, 35.847504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117889, 30.439259, 36.250000>,  <32.496460, 30.592045, 35.655891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117889, 30.439259, 36.250000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.436516, 30.198458, 36.272182>,  <32.627693, 30.053978, 36.285492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.436516, 30.198458, 36.272182>,  <32.117889, 30.439259, 36.250000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436516, 30.198458, 36.272182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171594, 0.313104, 0.934089,
		-0.579687, -0.734547, 0.352708,
		0.796566, -0.602002, 0.055458,
		32.675488, 30.017857, 36.288818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022125, 30.082737, 36.939716>,  <32.117889, 30.439259, 36.250000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022125, 30.082737, 36.939716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.404293, 30.083027, 36.821617>,  <32.633595, 30.083200, 36.750755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.404293, 30.083027, 36.821617>,  <32.022125, 30.082737, 36.939716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404293, 30.083027, 36.821617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253789, 0.509003, 0.822500,
		0.150878, -0.860764, 0.486128,
		0.955420, 0.000723, -0.295250,
		32.690918, 30.083244, 36.733044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405056, 29.855598, 37.556644>,  <32.022125, 30.082737, 36.939716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405056, 29.855598, 37.556644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.697884, 30.000097, 37.325623>,  <32.873581, 30.086798, 37.187008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.697884, 30.000097, 37.325623>,  <32.405056, 29.855598, 37.556644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697884, 30.000097, 37.325623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372009, 0.498244, 0.783175,
		0.570686, -0.788195, 0.230361,
		0.732071, 0.361250, -0.577556,
		32.917503, 30.108471, 37.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014000, 29.754539, 37.825317>,  <32.405056, 29.855598, 37.556644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014000, 29.754539, 37.825317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 30.073875, 37.590706>,  <33.101372, 30.265478, 37.449940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 30.073875, 37.590706>,  <33.014000, 29.754539, 37.825317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068607, 30.073875, 37.590706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460279, 0.473162, 0.751173,
		0.877214, -0.372518, -0.302862,
		0.136523, 0.798341, -0.586527,
		33.109566, 30.313377, 37.414749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660049, 29.944998, 37.994190>,  <33.014000, 29.754539, 37.825317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660049, 29.944998, 37.994190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515369, 30.270378, 37.811993>,  <33.428562, 30.465607, 37.702675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515369, 30.270378, 37.811993>,  <33.660049, 29.944998, 37.994190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515369, 30.270378, 37.811993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418174, 0.578222, 0.700564,
		0.833249, 0.062919, -0.549306,
		-0.361700, 0.813450, -0.455492,
		33.406860, 30.514414, 37.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175846, 30.463833, 37.839226>,  <33.660049, 29.944998, 37.994190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175846, 30.463833, 37.839226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828030, 30.661367, 37.841099>,  <33.619339, 30.779888, 37.842224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828030, 30.661367, 37.841099>,  <34.175846, 30.463833, 37.839226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828030, 30.661367, 37.841099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369338, 0.643977, 0.669988,
		0.327848, 0.584312, -0.742357,
		-0.869543, 0.493835, 0.004682,
		33.567165, 30.809519, 37.842503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446037, 31.012287, 38.080326>,  <34.175846, 30.463833, 37.839226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446037, 31.012287, 38.080326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062138, 31.111393, 38.133244>,  <33.831799, 31.170856, 38.164993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062138, 31.111393, 38.133244>,  <34.446037, 31.012287, 38.080326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062138, 31.111393, 38.133244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257680, 0.589317, 0.765706,
		0.111754, 0.768972, -0.629439,
		-0.959746, 0.247764, 0.132290,
		33.774216, 31.185722, 38.172932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441063, 31.660139, 38.052380>,  <34.446037, 31.012287, 38.080326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441063, 31.660139, 38.052380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095406, 31.610178, 38.247383>,  <33.888012, 31.580200, 38.364384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095406, 31.610178, 38.247383>,  <34.441063, 31.660139, 38.052380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095406, 31.610178, 38.247383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318873, 0.613536, 0.722422,
		-0.389334, 0.779726, -0.490353,
		-0.864140, -0.124904, 0.487504,
		33.836163, 31.572706, 38.393635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174446, 32.340054, 38.192387>,  <34.441063, 31.660139, 38.052380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174446, 32.340054, 38.192387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994167, 32.094818, 38.451920>,  <33.885998, 31.947676, 38.607639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994167, 32.094818, 38.451920>,  <34.174446, 32.340054, 38.192387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994167, 32.094818, 38.451920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344544, 0.551049, 0.760023,
		-0.823504, 0.566095, -0.037121,
		-0.450701, -0.613092, 0.648835,
		33.858955, 31.910891, 38.646568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965443, 32.767334, 38.607082>,  <34.174446, 32.340054, 38.192387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965443, 32.767334, 38.607082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917217, 32.432972, 38.821270>,  <33.888283, 32.232353, 38.949783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917217, 32.432972, 38.821270>,  <33.965443, 32.767334, 38.607082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917217, 32.432972, 38.821270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209934, 0.505730, 0.836758,
		-0.970253, 0.213298, 0.114511,
		-0.120567, -0.835907, 0.535465,
		33.881046, 32.182201, 38.981911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451286, 32.821003, 39.087143>,  <33.965443, 32.767334, 38.607082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451286, 32.821003, 39.087143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699402, 32.554600, 39.252880>,  <33.848270, 32.394760, 39.352322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699402, 32.554600, 39.252880>,  <33.451286, 32.821003, 39.087143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699402, 32.554600, 39.252880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162329, 0.625810, 0.762897,
		-0.767391, -0.405957, 0.496295,
		0.620290, -0.666003, 0.414343,
		33.885490, 32.354797, 39.377182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415230, 32.970085, 39.893963>,  <33.451286, 32.821003, 39.087143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415230, 32.970085, 39.893963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734806, 32.732578, 39.855732>,  <33.926552, 32.590076, 39.832794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734806, 32.732578, 39.855732>,  <33.415230, 32.970085, 39.893963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734806, 32.732578, 39.855732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419489, 0.436308, 0.796031,
		-0.430952, -0.676077, 0.597662,
		0.798942, -0.593764, -0.095579,
		33.974487, 32.554447, 39.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597256, 32.756668, 40.543098>,  <33.415230, 32.970085, 39.893963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597256, 32.756668, 40.543098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917912, 32.729008, 40.305580>,  <34.110306, 32.712410, 40.163067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917912, 32.729008, 40.305580>,  <33.597256, 32.756668, 40.543098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917912, 32.729008, 40.305580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531633, 0.536723, 0.655207,
		0.273397, -0.840920, 0.467019,
		0.801636, -0.069151, -0.593799,
		34.158401, 32.708263, 40.127441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117741, 32.594337, 41.058899>,  <33.597256, 32.756668, 40.543098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117741, 32.594337, 41.058899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310719, 32.728519, 40.735241>,  <34.426506, 32.809029, 40.541046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310719, 32.728519, 40.735241>,  <34.117741, 32.594337, 41.058899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310719, 32.728519, 40.735241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528218, 0.625472, 0.574256,
		0.698736, -0.704452, 0.124561,
		0.482445, 0.335459, -0.809144,
		34.455452, 32.829155, 40.492496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810463, 32.354691, 41.024693>,  <34.117741, 32.594337, 41.058899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810463, 32.354691, 41.024693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795116, 32.687096, 40.802719>,  <34.785908, 32.886539, 40.669537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795116, 32.687096, 40.802719>,  <34.810463, 32.354691, 41.024693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795116, 32.687096, 40.802719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625601, 0.453015, 0.635138,
		0.779199, -0.322795, -0.537264,
		-0.038369, 0.831012, -0.554930,
		34.783607, 32.936398, 40.636242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505157, 32.700115, 41.091358>,  <34.810463, 32.354691, 41.024693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505157, 32.700115, 41.091358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269787, 32.987091, 40.942215>,  <35.128563, 33.159279, 40.852730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269787, 32.987091, 40.942215>,  <35.505157, 32.700115, 41.091358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269787, 32.987091, 40.942215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443649, 0.672019, 0.592930,
		0.675964, 0.183478, -0.713728,
		-0.588429, 0.717444, -0.372861,
		35.093258, 33.202324, 40.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023083, 33.329063, 40.977501>,  <35.505157, 32.700115, 41.091358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023083, 33.329063, 40.977501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654213, 33.481918, 40.953590>,  <35.432892, 33.573631, 40.939243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654213, 33.481918, 40.953590>,  <36.023083, 33.329063, 40.977501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654213, 33.481918, 40.953590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296090, 0.796892, 0.526586,
		0.248863, 0.467903, -0.848017,
		-0.922170, 0.382138, -0.059776,
		35.377563, 33.596561, 40.935658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074406, 33.973221, 40.768883>,  <36.023083, 33.329063, 40.977501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074406, 33.973221, 40.768883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725594, 33.963234, 40.964409>,  <35.516308, 33.957241, 41.081722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725594, 33.963234, 40.964409>,  <36.074406, 33.973221, 40.768883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725594, 33.963234, 40.964409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289949, 0.778241, 0.557019,
		-0.394323, 0.627469, -0.671411,
		-0.872032, -0.024971, 0.488812,
		35.463985, 33.955742, 41.111053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005657, 34.693401, 40.856266>,  <36.074406, 33.973221, 40.768883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005657, 34.693401, 40.856266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735184, 34.511196, 41.087879>,  <35.572899, 34.401871, 41.226845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735184, 34.511196, 41.087879>,  <36.005657, 34.693401, 40.856266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735184, 34.511196, 41.087879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023307, 0.798780, 0.601172,
		-0.736360, 0.393010, -0.550742,
		-0.676188, -0.455515, 0.579030,
		35.532326, 34.374542, 41.261589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717918, 34.789764, 40.860703>,  <36.005657, 34.693401, 40.856266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717918, 34.789764, 40.860703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089134, 34.745117, 40.718563>,  <37.311863, 34.718327, 40.633278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089134, 34.745117, 40.718563>,  <36.717918, 34.789764, 40.860703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089134, 34.745117, 40.718563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343651, -0.624564, -0.701301,
		-0.143661, 0.772956, -0.617981,
		0.928044, -0.111620, -0.355353,
		37.367546, 34.711632, 40.611958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739388, 35.095390, 40.128761>,  <36.717918, 34.789764, 40.860703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739388, 35.095390, 40.128761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984497, 34.800697, 40.243111>,  <37.131565, 34.623882, 40.311722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984497, 34.800697, 40.243111>,  <36.739388, 35.095390, 40.128761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984497, 34.800697, 40.243111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391475, -0.597240, -0.700037,
		0.686478, 0.317054, -0.654389,
		0.612777, -0.736737, 0.285874,
		37.168331, 34.579678, 40.328873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649288, 34.641903, 39.659023>,  <36.739388, 35.095390, 40.128761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649288, 34.641903, 39.659023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905773, 34.429600, 39.880707>,  <37.059662, 34.302219, 40.013718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905773, 34.429600, 39.880707>,  <36.649288, 34.641903, 39.659023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905773, 34.429600, 39.880707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098873, -0.773345, -0.626227,
		0.760971, 0.346746, -0.548353,
		0.641208, -0.530758, 0.554209,
		37.098137, 34.270370, 40.046970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261818, 34.529526, 39.303993>,  <36.649288, 34.641903, 39.659023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261818, 34.529526, 39.303993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170517, 34.230801, 39.553848>,  <37.115734, 34.051567, 39.703762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170517, 34.230801, 39.553848>,  <37.261818, 34.529526, 39.303993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170517, 34.230801, 39.553848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325487, -0.546124, -0.771885,
		0.917582, -0.379498, -0.118421,
		-0.228257, -0.746813, 0.624636,
		37.102039, 34.006756, 39.741238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366760, 34.003571, 38.926201>,  <37.261818, 34.529526, 39.303993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366760, 34.003571, 38.926201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199970, 33.807888, 39.232616>,  <37.099895, 33.690479, 39.416466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199970, 33.807888, 39.232616>,  <37.366760, 34.003571, 38.926201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199970, 33.807888, 39.232616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234078, -0.756577, -0.610573,
		0.878261, -0.433904, 0.200959,
		-0.416971, -0.489202, 0.766039,
		37.074879, 33.661129, 39.462429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592594, 33.344593, 38.974907>,  <37.366760, 34.003571, 38.926201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592594, 33.344593, 38.974907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221992, 33.344662, 39.125423>,  <36.999634, 33.344704, 39.215733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221992, 33.344662, 39.125423>,  <37.592594, 33.344593, 38.974907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221992, 33.344662, 39.125423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267138, -0.704589, -0.657412,
		0.265019, -0.709615, 0.652849,
		-0.926500, 0.000174, 0.376295,
		36.944042, 33.344715, 39.238312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382133, 32.687992, 38.843220>,  <37.592594, 33.344593, 38.974907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382133, 32.687992, 38.843220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029881, 32.861568, 38.919308>,  <36.818531, 32.965714, 38.964962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029881, 32.861568, 38.919308>,  <37.382133, 32.687992, 38.843220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029881, 32.861568, 38.919308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426774, -0.552087, -0.716285,
		-0.205807, -0.711964, 0.671379,
		-0.880629, 0.433943, 0.190224,
		36.765690, 32.991753, 38.976376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938904, 32.137165, 39.149387>,  <37.382133, 32.687992, 38.843220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938904, 32.137165, 39.149387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723679, 32.424850, 38.973560>,  <36.594543, 32.597462, 38.868065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723679, 32.424850, 38.973560>,  <36.938904, 32.137165, 39.149387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723679, 32.424850, 38.973560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460585, -0.687622, -0.561282,
		-0.705941, -0.099543, 0.701241,
		-0.538060, 0.719213, -0.439573,
		36.562260, 32.640614, 38.841690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137497, 31.878254, 39.124302>,  <36.938904, 32.137165, 39.149387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137497, 31.878254, 39.124302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122124, 32.183624, 38.866402>,  <36.112900, 32.366848, 38.711662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122124, 32.183624, 38.866402>,  <36.137497, 31.878254, 39.124302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122124, 32.183624, 38.866402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347355, -0.615197, -0.707727,
		-0.936946, 0.196757, 0.288823,
		-0.038433, 0.763426, -0.644751,
		36.110596, 32.412651, 38.672977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556572, 31.730974, 38.776840>,  <36.137497, 31.878254, 39.124302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556572, 31.730974, 38.776840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775604, 31.971668, 38.544266>,  <35.907024, 32.116085, 38.404720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775604, 31.971668, 38.544266>,  <35.556572, 31.730974, 38.776840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775604, 31.971668, 38.544266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355634, -0.461628, -0.812665,
		-0.757417, 0.651778, -0.038781,
		0.547580, 0.601735, -0.581440,
		35.939877, 32.152187, 38.369835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149902, 31.820791, 38.213707>,  <35.556572, 31.730974, 38.776840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149902, 31.820791, 38.213707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523849, 31.906912, 38.100807>,  <35.748219, 31.958584, 38.033066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523849, 31.906912, 38.100807>,  <35.149902, 31.820791, 38.213707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523849, 31.906912, 38.100807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195804, -0.350470, -0.915878,
		-0.296109, 0.911492, -0.285487,
		0.934869, 0.215300, -0.282251,
		35.804310, 31.971502, 38.016132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154228, 32.305576, 37.637558>,  <35.149902, 31.820791, 38.213707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154228, 32.305576, 37.637558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478436, 32.071316, 37.641048>,  <35.672958, 31.930759, 37.643143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478436, 32.071316, 37.641048>,  <35.154228, 32.305576, 37.637558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478436, 32.071316, 37.641048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144504, -0.214385, -0.966001,
		0.567614, 0.781696, -0.258392,
		0.810514, -0.585654, 0.008730,
		35.721588, 31.895620, 37.643669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643898, 32.457825, 37.098763>,  <35.154228, 32.305576, 37.637558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643898, 32.457825, 37.098763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708126, 32.069813, 37.171703>,  <35.746662, 31.837006, 37.215466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708126, 32.069813, 37.171703>,  <35.643898, 32.457825, 37.098763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708126, 32.069813, 37.171703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200804, -0.212988, -0.956197,
		0.966382, 0.116922, -0.228986,
		0.160572, -0.970033, 0.182349,
		35.756298, 31.778803, 37.226410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993626, 32.241390, 36.615940>,  <35.643898, 32.457825, 37.098763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993626, 32.241390, 36.615940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849457, 31.891129, 36.744518>,  <35.762955, 31.680971, 36.821663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849457, 31.891129, 36.744518>,  <35.993626, 32.241390, 36.615940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849457, 31.891129, 36.744518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258321, -0.237428, -0.936428,
		0.896309, -0.420541, -0.140627,
		-0.360418, -0.875656, 0.321444,
		35.741333, 31.628431, 36.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367630, 31.660618, 36.154694>,  <35.993626, 32.241390, 36.615940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367630, 31.660618, 36.154694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024731, 31.519691, 36.304890>,  <35.818989, 31.435137, 36.395008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024731, 31.519691, 36.304890>,  <36.367630, 31.660618, 36.154694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024731, 31.519691, 36.304890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294928, -0.261786, -0.918959,
		0.422060, -0.898522, 0.120509,
		-0.857253, -0.352315, 0.375489,
		35.767555, 31.413998, 36.417538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171196, 31.161665, 35.671185>,  <36.367630, 31.660618, 36.154694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171196, 31.161665, 35.671185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829323, 31.236383, 35.864933>,  <35.624199, 31.281214, 35.981182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829323, 31.236383, 35.864933>,  <36.171196, 31.161665, 35.671185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829323, 31.236383, 35.864933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517918, -0.242749, -0.820264,
		-0.035641, -0.951935, 0.304219,
		-0.854688, 0.186795, 0.484373,
		35.572918, 31.292421, 36.010246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738377, 30.667633, 35.363312>,  <36.171196, 31.161665, 35.671185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738377, 30.667633, 35.363312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492611, 30.920891, 35.551617>,  <35.345150, 31.072845, 35.664600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492611, 30.920891, 35.551617>,  <35.738377, 30.667633, 35.363312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492611, 30.920891, 35.551617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624799, -0.026105, -0.780349,
		-0.481786, -0.773591, 0.411629,
		-0.614417, 0.633147, 0.470762,
		35.308285, 31.110834, 35.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086239, 30.408602, 35.139400>,  <35.738377, 30.667633, 35.363312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086239, 30.408602, 35.139400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987514, 30.756697, 35.309940>,  <34.928280, 30.965553, 35.412266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987514, 30.756697, 35.309940>,  <35.086239, 30.408602, 35.139400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987514, 30.756697, 35.309940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744673, 0.111222, -0.658097,
		-0.620119, -0.479916, 0.620591,
		-0.246808, 0.870236, 0.426352,
		34.913471, 31.017767, 35.437847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.320278, 30.368782, 35.215240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476322, 30.734512, 35.171749>,  <34.569950, 30.953951, 35.145657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476322, 30.734512, 35.171749>,  <34.320278, 30.368782, 35.215240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476322, 30.734512, 35.171749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564021, 0.143957, -0.813116,
		-0.727801, 0.378529, 0.571858,
		0.390111, 0.914326, -0.108726,
		34.593357, 31.008810, 35.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777752, 30.667513, 34.934406>,  <34.320278, 30.368782, 35.215240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777752, 30.667513, 34.934406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074760, 30.924988, 34.860291>,  <34.252964, 31.079473, 34.815823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074760, 30.924988, 34.860291>,  <33.777752, 30.667513, 34.934406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074760, 30.924988, 34.860291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417011, 0.227761, -0.879902,
		-0.524181, 0.730611, 0.437541,
		0.742520, 0.643687, -0.185285,
		34.297516, 31.118093, 34.804707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502647, 31.231024, 34.729767>,  <33.777752, 30.667513, 34.934406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502647, 31.231024, 34.729767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874828, 31.236364, 34.583298>,  <34.098137, 31.239569, 34.495415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874828, 31.236364, 34.583298>,  <33.502647, 31.231024, 34.729767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874828, 31.236364, 34.583298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362228, 0.184263, -0.913695,
		0.055274, 0.982786, 0.176284,
		0.930449, 0.013351, -0.366177,
		34.153965, 31.240370, 34.473446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264977, 31.437403, 34.098545>,  <33.502647, 31.231024, 34.729767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264977, 31.437403, 34.098545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649006, 31.329929, 34.067402>,  <33.879425, 31.265446, 34.048717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649006, 31.329929, 34.067402>,  <33.264977, 31.437403, 34.098545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649006, 31.329929, 34.067402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158059, -0.291393, -0.943455,
		0.230804, 0.918096, -0.322228,
		0.960077, -0.268684, -0.077859,
		33.937027, 31.249325, 34.044044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529205, 31.809155, 33.544586>,  <33.264977, 31.437403, 34.098545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529205, 31.809155, 33.544586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745350, 31.475103, 33.585709>,  <33.875038, 31.274673, 33.610382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745350, 31.475103, 33.585709>,  <33.529205, 31.809155, 33.544586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745350, 31.475103, 33.585709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352658, -0.335707, -0.873460,
		0.763962, 0.435733, -0.475919,
		0.540364, -0.835127, 0.102803,
		33.907459, 31.224566, 33.616550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846333, 31.664236, 32.880268>,  <33.529205, 31.809155, 33.544586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846333, 31.664236, 32.880268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839828, 31.329163, 33.098633>,  <33.835926, 31.128119, 33.229652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839828, 31.329163, 33.098633>,  <33.846333, 31.664236, 32.880268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839828, 31.329163, 33.098633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331548, -0.510580, -0.793337,
		0.943298, -0.193900, -0.269428,
		-0.016264, -0.837682, 0.545917,
		33.834949, 31.077858, 33.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854179, 31.185474, 32.399841>,  <33.846333, 31.664236, 32.880268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854179, 31.185474, 32.399841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788109, 30.951971, 32.717819>,  <33.748466, 30.811869, 32.908607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788109, 30.951971, 32.717819>,  <33.854179, 31.185474, 32.399841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788109, 30.951971, 32.717819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030233, -0.808638, -0.587530,
		0.985800, -0.073014, 0.151218,
		-0.165178, -0.583759, 0.794948,
		33.738556, 30.776844, 32.956303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394352, 30.768074, 32.462234>,  <33.854179, 31.185474, 32.399841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394352, 30.768074, 32.462234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082851, 30.585157, 32.634014>,  <33.895950, 30.475409, 32.737083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082851, 30.585157, 32.634014>,  <34.394352, 30.768074, 32.462234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082851, 30.585157, 32.634014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004008, -0.688183, -0.725526,
		0.627317, -0.563285, 0.537758,
		-0.778754, -0.457291, 0.429451,
		33.849224, 30.447969, 32.762848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558479, 30.052359, 32.517635>,  <34.394352, 30.768074, 32.462234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558479, 30.052359, 32.517635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161777, 30.103521, 32.521004>,  <33.923756, 30.134220, 32.523026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161777, 30.103521, 32.521004>,  <34.558479, 30.052359, 32.517635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161777, 30.103521, 32.521004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062816, -0.427675, -0.901747,
		-0.111739, -0.894837, 0.432181,
		-0.991750, 0.127908, 0.008422,
		33.864254, 30.141893, 32.523529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308708, 29.466379, 32.272255>,  <34.558479, 30.052359, 32.517635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308708, 29.466379, 32.272255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985828, 29.700272, 32.239956>,  <33.792099, 29.840607, 32.220577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985828, 29.700272, 32.239956>,  <34.308708, 29.466379, 32.272255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985828, 29.700272, 32.239956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320112, -0.548565, -0.772402,
		-0.495937, -0.597638, 0.629981,
		-0.807202, 0.584727, -0.080743,
		33.743668, 29.875690, 32.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886055, 28.996700, 32.140282>,  <34.308708, 29.466379, 32.272255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886055, 28.996700, 32.140282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692257, 29.325827, 32.021461>,  <33.575977, 29.523302, 31.950171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692257, 29.325827, 32.021461>,  <33.886055, 28.996700, 32.140282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692257, 29.325827, 32.021461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442184, -0.523340, -0.728415,
		-0.754808, -0.221566, 0.617393,
		-0.484498, 0.822815, -0.297048,
		33.546909, 29.572672, 31.932346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246975, 28.771523, 31.993519>,  <33.886055, 28.996700, 32.140282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246975, 28.771523, 31.993519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268810, 29.116665, 31.792522>,  <33.281910, 29.323751, 31.671925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268810, 29.116665, 31.792522>,  <33.246975, 28.771523, 31.993519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268810, 29.116665, 31.792522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451340, -0.427575, -0.783244,
		-0.890681, 0.269550, 0.366102,
		0.054587, 0.862857, -0.502492,
		33.285187, 29.375523, 31.641775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625599, 28.861023, 31.640369>,  <33.246975, 28.771523, 31.993519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625599, 28.861023, 31.640369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873608, 29.095793, 31.432104>,  <33.022415, 29.236654, 31.307144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873608, 29.095793, 31.432104>,  <32.625599, 28.861023, 31.640369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873608, 29.095793, 31.432104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416370, -0.316315, -0.852397,
		-0.664984, 0.745297, 0.048253,
		0.620026, 0.586922, -0.520663,
		33.059616, 29.271870, 31.275906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175007, 29.055216, 31.208359>,  <32.625599, 28.861023, 31.640369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175007, 29.055216, 31.208359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528961, 29.158541, 31.053305>,  <32.741333, 29.220535, 30.960272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528961, 29.158541, 31.053305>,  <32.175007, 29.055216, 31.208359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528961, 29.158541, 31.053305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364909, -0.132827, -0.921520,
		-0.289526, 0.956887, -0.023276,
		0.884882, 0.258310, -0.387634,
		32.794426, 29.236034, 30.937014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985239, 29.555923, 30.744534>,  <32.175007, 29.055216, 31.208359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985239, 29.555923, 30.744534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326820, 29.385809, 30.624601>,  <32.531769, 29.283741, 30.552641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326820, 29.385809, 30.624601>,  <31.985239, 29.555923, 30.744534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326820, 29.385809, 30.624601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398312, -0.163469, -0.902566,
		0.334834, 0.890175, -0.308990,
		0.853951, -0.425285, -0.299833,
		32.583004, 29.258223, 30.534651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210270, 29.909719, 30.118132>,  <31.985239, 29.555923, 30.744534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210270, 29.909719, 30.118132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388901, 29.551823, 30.119255>,  <32.496078, 29.337084, 30.119930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388901, 29.551823, 30.119255>,  <32.210270, 29.909719, 30.118132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388901, 29.551823, 30.119255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274404, -0.139946, -0.951377,
		0.851629, 0.424091, -0.308017,
		0.446576, -0.894741, 0.002810,
		32.522873, 29.283400, 30.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685921, 29.900965, 29.550077>,  <32.210270, 29.909719, 30.118132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685921, 29.900965, 29.550077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639004, 29.510422, 29.622704>,  <32.610851, 29.276096, 29.666279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639004, 29.510422, 29.622704>,  <32.685921, 29.900965, 29.550077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639004, 29.510422, 29.622704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126427, -0.166658, -0.977876,
		0.985017, -0.137654, -0.103890,
		-0.117295, -0.976359, 0.181564,
		32.603817, 29.217514, 29.677174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157455, 29.582117, 29.127911>,  <32.685921, 29.900965, 29.550077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157455, 29.582117, 29.127911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890675, 29.295469, 29.209532>,  <32.730606, 29.123480, 29.258505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890675, 29.295469, 29.209532>,  <33.157455, 29.582117, 29.127911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890675, 29.295469, 29.209532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037248, -0.241448, -0.969699,
		0.744173, -0.654339, 0.134340,
		-0.666948, -0.716619, 0.204052,
		32.690590, 29.080484, 29.270748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504917, 29.060713, 28.848438>,  <33.157455, 29.582117, 29.127911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504917, 29.060713, 28.848438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126026, 28.940973, 28.894320>,  <32.898693, 28.869129, 28.921848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126026, 28.940973, 28.894320>,  <33.504917, 29.060713, 28.848438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126026, 28.940973, 28.894320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039397, -0.463805, -0.885061,
		0.318141, -0.833832, 0.451121,
		-0.947224, -0.299347, 0.114704,
		32.841858, 28.851170, 28.928730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516552, 28.458380, 28.579412>,  <33.504917, 29.060713, 28.848438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516552, 28.458380, 28.579412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120884, 28.516396, 28.570446>,  <32.883484, 28.551205, 28.565065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120884, 28.516396, 28.570446>,  <33.516552, 28.458380, 28.579412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120884, 28.516396, 28.570446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056491, -0.517259, -0.853962,
		-0.135453, -0.843449, 0.519852,
		-0.989172, 0.145039, -0.022417,
		32.824131, 28.559908, 28.563721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262974, 27.834684, 28.419235>,  <33.516552, 28.458380, 28.579412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262974, 27.834684, 28.419235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951183, 28.068892, 28.330170>,  <32.764107, 28.209415, 28.276730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951183, 28.068892, 28.330170>,  <33.262974, 27.834684, 28.419235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951183, 28.068892, 28.330170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159918, -0.529668, -0.832993,
		-0.605672, -0.613693, 0.506500,
		-0.779479, 0.585519, -0.222665,
		32.717339, 28.244547, 28.263371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782959, 27.374142, 28.179867>,  <33.262974, 27.834684, 28.419235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782959, 27.374142, 28.179867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603199, 27.712624, 28.065342>,  <32.495342, 27.915712, 27.996628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603199, 27.712624, 28.065342>,  <32.782959, 27.374142, 28.179867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603199, 27.712624, 28.065342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456888, -0.493128, -0.740323,
		-0.767654, -0.201889, 0.608234,
		-0.449400, 0.846207, -0.286311,
		32.468380, 27.966486, 27.979448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037979, 27.190115, 28.041330>,  <32.782959, 27.374142, 28.179867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037979, 27.190115, 28.041330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150394, 27.493334, 27.805914>,  <32.217842, 27.675264, 27.664663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150394, 27.493334, 27.805914>,  <32.037979, 27.190115, 28.041330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150394, 27.493334, 27.805914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360262, -0.485078, -0.796813,
		-0.889511, 0.435964, 0.136771,
		0.281037, 0.758047, -0.588543,
		32.234707, 27.720747, 27.629351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449762, 27.630852, 27.770700>,  <32.037979, 27.190115, 28.041330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449762, 27.630852, 27.770700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759426, 27.581793, 27.522303>,  <31.945225, 27.552357, 27.373264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759426, 27.581793, 27.522303>,  <31.449762, 27.630852, 27.770700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759426, 27.581793, 27.522303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628287, -0.268239, -0.730276,
		-0.077007, 0.955513, -0.284719,
		0.774161, -0.122648, -0.620992,
		31.991674, 27.544998, 27.336004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914062, 27.282091, 28.284636>,  <31.449762, 27.630852, 27.770700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914062, 27.282091, 28.284636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731775, 26.932581, 28.352562>,  <30.622402, 26.722876, 28.393318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731775, 26.932581, 28.352562>,  <30.914062, 27.282091, 28.284636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731775, 26.932581, 28.352562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090117, 0.235090, 0.967787,
		-0.885550, 0.425735, -0.185877,
		-0.455719, -0.873775, 0.169818,
		30.595060, 26.670448, 28.403507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269489, 27.432617, 28.750397>,  <30.914062, 27.282091, 28.284636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269489, 27.432617, 28.750397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335300, 27.041683, 28.803688>,  <30.374786, 26.807123, 28.835663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335300, 27.041683, 28.803688>,  <30.269489, 27.432617, 28.750397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335300, 27.041683, 28.803688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139345, 0.110683, 0.984039,
		-0.976480, -0.180465, -0.117976,
		0.164527, -0.977334, 0.133227,
		30.384659, 26.748484, 28.843657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718691, 27.183065, 29.191238>,  <30.269489, 27.432617, 28.750397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718691, 27.183065, 29.191238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024393, 26.925798, 29.210199>,  <30.207815, 26.771439, 29.221577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024393, 26.925798, 29.210199>,  <29.718691, 27.183065, 29.191238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024393, 26.925798, 29.210199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022155, 0.099642, 0.994777,
		-0.644533, -0.759213, 0.090401,
		0.764255, -0.643170, 0.047402,
		30.253670, 26.732847, 29.224421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570047, 26.745647, 29.715691>,  <29.718691, 27.183065, 29.191238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570047, 26.745647, 29.715691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958420, 26.658720, 29.675564>,  <30.191444, 26.606564, 29.651487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958420, 26.658720, 29.675564>,  <29.570047, 26.745647, 29.715691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958420, 26.658720, 29.675564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124058, 0.098474, 0.987377,
		-0.204695, -0.971121, 0.122571,
		0.970932, -0.217317, -0.100318,
		30.249699, 26.593525, 29.645468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763622, 26.327074, 30.240396>,  <29.570047, 26.745647, 29.715691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763622, 26.327074, 30.240396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115799, 26.471760, 30.117765>,  <30.327105, 26.558571, 30.044188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115799, 26.471760, 30.117765>,  <29.763622, 26.327074, 30.240396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115799, 26.471760, 30.117765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245071, 0.206367, 0.947287,
		0.405914, -0.909162, 0.093048,
		0.880440, 0.361714, -0.306577,
		30.379930, 26.580273, 30.025793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268635, 25.924582, 30.545805>,  <29.763622, 26.327074, 30.240396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268635, 25.924582, 30.545805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440157, 26.278868, 30.474665>,  <30.543070, 26.491440, 30.431980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440157, 26.278868, 30.474665>,  <30.268635, 25.924582, 30.545805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440157, 26.278868, 30.474665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247690, 0.074058, 0.966005,
		0.868777, -0.458283, -0.187626,
		0.428808, 0.885716, -0.177852,
		30.568800, 26.544582, 30.421309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761139, 26.082613, 31.070305>,  <30.268635, 25.924582, 30.545805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761139, 26.082613, 31.070305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746536, 26.446842, 30.905609>,  <30.737774, 26.665379, 30.806791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746536, 26.446842, 30.905609>,  <30.761139, 26.082613, 31.070305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746536, 26.446842, 30.905609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025881, 0.412735, 0.910483,
		0.998998, 0.022582, -0.038634,
		-0.036506, 0.910571, -0.411737,
		30.735584, 26.720013, 30.782087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148514, 26.399984, 31.459085>,  <30.761139, 26.082613, 31.070305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148514, 26.399984, 31.459085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.913239, 26.676474, 31.291161>,  <30.772074, 26.842367, 31.190405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.913239, 26.676474, 31.291161>,  <31.148514, 26.399984, 31.459085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913239, 26.676474, 31.291161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000043, 0.519080, 0.854725,
		0.808725, 0.502756, -0.305287,
		-0.588187, 0.691225, -0.419815,
		30.736782, 26.883841, 31.165216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510029, 27.034864, 31.557961>,  <31.148514, 26.399984, 31.459085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510029, 27.034864, 31.557961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130964, 27.130297, 31.473093>,  <30.903524, 27.187555, 31.422173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130964, 27.130297, 31.473093>,  <31.510029, 27.034864, 31.557961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130964, 27.130297, 31.473093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017644, 0.702658, 0.711309,
		0.318786, 0.670337, -0.670092,
		-0.947663, 0.238579, -0.212170,
		30.846666, 27.201870, 31.409443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496325, 27.640539, 31.287031>,  <31.510029, 27.034864, 31.557961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496325, 27.640539, 31.287031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146126, 27.566172, 31.465443>,  <30.936007, 27.521551, 31.572489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146126, 27.566172, 31.465443>,  <31.496325, 27.640539, 31.287031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146126, 27.566172, 31.465443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077523, 0.857027, 0.509406,
		-0.476966, 0.480561, -0.735911,
		-0.875496, -0.185919, 0.446027,
		30.883476, 27.510395, 31.599251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193739, 28.271833, 31.250570>,  <31.496325, 27.640539, 31.287031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193739, 28.271833, 31.250570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043663, 28.051945, 31.549110>,  <30.953617, 27.920012, 31.728233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043663, 28.051945, 31.549110>,  <31.193739, 28.271833, 31.250570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043663, 28.051945, 31.549110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156436, 0.756068, 0.635522,
		-0.913651, 0.355198, -0.197674,
		-0.375192, -0.549723, 0.746348,
		30.931105, 27.887028, 31.773014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758764, 28.777472, 31.633003>,  <31.193739, 28.271833, 31.250570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758764, 28.777472, 31.633003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.817207, 28.476856, 31.890326>,  <30.852272, 28.296488, 32.044720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.817207, 28.476856, 31.890326>,  <30.758764, 28.777472, 31.633003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817207, 28.476856, 31.890326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335801, 0.649353, 0.682333,
		-0.930533, 0.116331, 0.347241,
		0.146105, -0.751537, 0.643308,
		30.861038, 28.251394, 32.083317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330738, 28.908571, 32.291550>,  <30.758764, 28.777472, 31.633003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330738, 28.908571, 32.291550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641769, 28.673061, 32.379833>,  <30.828388, 28.531755, 32.432804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641769, 28.673061, 32.379833>,  <30.330738, 28.908571, 32.291550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641769, 28.673061, 32.379833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178349, 0.543114, 0.820499,
		-0.602961, -0.598639, 0.527322,
		0.777579, -0.588777, 0.220710,
		30.875044, 28.496428, 32.446045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345518, 28.941833, 32.964634>,  <30.330738, 28.908571, 32.291550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345518, 28.941833, 32.964634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710276, 28.793116, 32.895103>,  <30.929131, 28.703884, 32.853386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710276, 28.793116, 32.895103>,  <30.345518, 28.941833, 32.964634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710276, 28.793116, 32.895103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370561, 0.563771, 0.738138,
		-0.176439, -0.737517, 0.651873,
		0.911895, -0.371795, -0.173824,
		30.983845, 28.681578, 32.842957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633476, 28.797552, 33.652061>,  <30.345518, 28.941833, 32.964634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633476, 28.797552, 33.652061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.969923, 28.765863, 33.438053>,  <31.171791, 28.746851, 33.309650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.969923, 28.765863, 33.438053>,  <30.633476, 28.797552, 33.652061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969923, 28.765863, 33.438053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503614, 0.475417, 0.721354,
		0.197208, -0.876186, 0.439780,
		0.841119, -0.079223, -0.535016,
		31.222260, 28.742096, 33.277550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032715, 28.505999, 34.159489>,  <30.633476, 28.797552, 33.652061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032715, 28.505999, 34.159489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285166, 28.679266, 33.902103>,  <31.436636, 28.783226, 33.747673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285166, 28.679266, 33.902103>,  <31.032715, 28.505999, 34.159489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285166, 28.679266, 33.902103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589925, 0.270583, 0.760772,
		0.503653, -0.859738, -0.084765,
		0.631128, 0.433170, -0.643460,
		31.474504, 28.809217, 33.709064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688921, 28.120825, 34.206139>,  <31.032715, 28.505999, 34.159489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688921, 28.120825, 34.206139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770321, 28.483894, 34.059326>,  <31.819160, 28.701736, 33.971237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770321, 28.483894, 34.059326>,  <31.688921, 28.120825, 34.206139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770321, 28.483894, 34.059326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467501, 0.239298, 0.850987,
		0.860251, -0.344762, -0.375643,
		0.203498, 0.907676, -0.367033,
		31.831369, 28.756197, 33.949215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417103, 28.168123, 34.227749>,  <31.688921, 28.120825, 34.206139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417103, 28.168123, 34.227749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.286938, 28.545866, 34.208584>,  <32.208839, 28.772512, 34.197083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.286938, 28.545866, 34.208584>,  <32.417103, 28.168123, 34.227749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286938, 28.545866, 34.208584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428184, 0.192349, 0.882984,
		0.843069, 0.266815, -0.466951,
		-0.325411, 0.944358, -0.047917,
		32.189316, 28.829174, 34.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073982, 28.662865, 34.392475>,  <32.417103, 28.168123, 34.227749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073982, 28.662865, 34.392475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734928, 28.862797, 34.463684>,  <32.531498, 28.982756, 34.506409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734928, 28.862797, 34.463684>,  <33.073982, 28.662865, 34.392475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734928, 28.862797, 34.463684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437911, 0.469579, 0.766635,
		0.299591, 0.727782, -0.616911,
		-0.847631, 0.499829, 0.178022,
		32.480640, 29.012745, 34.517090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307953, 29.327143, 34.406860>,  <33.073982, 28.662865, 34.392475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307953, 29.327143, 34.406860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940136, 29.337851, 34.563686>,  <32.719444, 29.344276, 34.657784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940136, 29.337851, 34.563686>,  <33.307953, 29.327143, 34.406860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940136, 29.337851, 34.563686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323263, 0.618844, 0.715914,
		-0.223464, 0.785057, -0.577710,
		-0.919546, 0.026772, 0.392070,
		32.664272, 29.345882, 34.681309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.431118, 32.247299, 38.235104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763397, 32.455490, 38.314137>,  <37.962765, 32.580402, 38.361557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763397, 32.455490, 38.314137>,  <37.431118, 32.247299, 38.235104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763397, 32.455490, 38.314137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337978, 0.189457, 0.921887,
		0.442385, -0.832594, 0.333292,
		0.830702, 0.520474, 0.197586,
		38.012608, 32.611633, 38.373413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989304, 32.330219, 37.721336>,  <37.431118, 32.247299, 38.235104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989304, 32.330219, 37.721336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592953, 32.278812, 37.737537>,  <36.355141, 32.247967, 37.747257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592953, 32.278812, 37.737537>,  <36.989304, 32.330219, 37.721336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592953, 32.278812, 37.737537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061197, 0.697002, 0.714453,
		-0.120048, 0.705459, -0.698510,
		-0.990880, -0.128516, 0.040502,
		36.295689, 32.240257, 37.749687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553513, 32.969021, 37.568352>,  <36.989304, 32.330219, 37.721336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553513, 32.969021, 37.568352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387589, 32.702553, 37.816269>,  <36.288033, 32.542671, 37.965019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387589, 32.702553, 37.816269>,  <36.553513, 32.969021, 37.568352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387589, 32.702553, 37.816269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088546, 0.707486, 0.701158,
		-0.905589, 0.235968, -0.352460,
		-0.414812, -0.666170, 0.619797,
		36.263145, 32.502701, 38.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139088, 33.472534, 37.896339>,  <36.553513, 32.969021, 37.568352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139088, 33.472534, 37.896339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.133583, 33.147877, 38.129936>,  <36.130280, 32.953083, 38.270092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.133583, 33.147877, 38.129936>,  <36.139088, 33.472534, 37.896339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133583, 33.147877, 38.129936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294071, 0.554930, 0.778187,
		-0.955684, 0.182444, 0.231044,
		-0.013763, -0.811645, 0.583989,
		36.129456, 32.904385, 38.305134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709152, 33.605923, 38.530621>,  <36.139088, 33.472534, 37.896339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709152, 33.605923, 38.530621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.989754, 33.326088, 38.584980>,  <36.158115, 33.158188, 38.617596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.989754, 33.326088, 38.584980>,  <35.709152, 33.605923, 38.530621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989754, 33.326088, 38.584980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357788, 0.510639, 0.781815,
		-0.616341, -0.499826, 0.608520,
		0.701506, -0.699586, 0.135896,
		36.200207, 33.116211, 38.625748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720695, 33.598907, 39.262207>,  <35.709152, 33.605923, 38.530621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720695, 33.598907, 39.262207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.052345, 33.416401, 39.132984>,  <36.251335, 33.306896, 39.055450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.052345, 33.416401, 39.132984>,  <35.720695, 33.598907, 39.262207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052345, 33.416401, 39.132984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510258, 0.381499, 0.770776,
		-0.228437, -0.803913, 0.549127,
		0.829128, -0.456270, -0.323055,
		36.301083, 33.279518, 39.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844936, 33.256908, 39.873463>,  <35.720695, 33.598907, 39.262207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844936, 33.256908, 39.873463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180347, 33.298389, 39.659500>,  <36.381592, 33.323277, 39.531124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180347, 33.298389, 39.659500>,  <35.844936, 33.256908, 39.873463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180347, 33.298389, 39.659500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484199, 0.308351, 0.818823,
		0.249847, -0.945604, 0.208351,
		0.838527, 0.103697, -0.534901,
		36.431904, 33.329498, 39.499031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359650, 33.096203, 40.370934>,  <35.844936, 33.256908, 39.873463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359650, 33.096203, 40.370934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579536, 33.269840, 40.085453>,  <36.711468, 33.374023, 39.914165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579536, 33.269840, 40.085453>,  <36.359650, 33.096203, 40.370934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579536, 33.269840, 40.085453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530950, 0.478025, 0.699703,
		0.644905, -0.763580, 0.032296,
		0.549717, 0.434094, -0.713704,
		36.744453, 33.400070, 39.871342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993259, 32.926781, 40.502369>,  <36.359650, 33.096203, 40.370934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993259, 32.926781, 40.502369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.028103, 33.250580, 40.270119>,  <37.049007, 33.444859, 40.130768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.028103, 33.250580, 40.270119>,  <36.993259, 32.926781, 40.502369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028103, 33.250580, 40.270119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593736, 0.425825, 0.682752,
		0.799931, -0.404208, -0.443538,
		0.087105, 0.809499, -0.580624,
		37.054234, 33.493431, 40.095932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490479, 33.379971, 40.883579>,  <36.993259, 32.926781, 40.502369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490479, 33.379971, 40.883579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430759, 33.632893, 40.579498>,  <37.394928, 33.784645, 40.397049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430759, 33.632893, 40.579498>,  <37.490479, 33.379971, 40.883579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430759, 33.632893, 40.579498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496594, 0.712773, 0.495328,
		0.855046, -0.303557, -0.420416,
		-0.149301, 0.632304, -0.760198,
		37.385971, 33.822582, 40.351440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041630, 33.664593, 40.712242>,  <37.490479, 33.379971, 40.883579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041630, 33.664593, 40.712242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775650, 33.937386, 40.590427>,  <37.616062, 34.101063, 40.517338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775650, 33.937386, 40.590427>,  <38.041630, 33.664593, 40.712242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775650, 33.937386, 40.590427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540497, 0.720784, 0.433974,
		0.515471, 0.123966, -0.847893,
		-0.664945, 0.681985, -0.304540,
		37.576168, 34.141979, 40.499065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414730, 34.176682, 40.244415>,  <38.041630, 33.664593, 40.712242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414730, 34.176682, 40.244415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093933, 34.345829, 40.413174>,  <37.901455, 34.447319, 40.514427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093933, 34.345829, 40.413174>,  <38.414730, 34.176682, 40.244415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093933, 34.345829, 40.413174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546341, 0.804830, 0.231862,
		-0.241505, 0.416448, -0.876497,
		-0.801989, 0.422870, 0.421893,
		37.853336, 34.472691, 40.539742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575634, 34.873455, 40.370983>,  <38.414730, 34.176682, 40.244415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575634, 34.873455, 40.370983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266048, 34.817619, 40.618042>,  <38.080296, 34.784119, 40.766277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266048, 34.817619, 40.618042>,  <38.575634, 34.873455, 40.370983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266048, 34.817619, 40.618042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441518, 0.580232, 0.684392,
		-0.453914, 0.802400, -0.387449,
		-0.773966, -0.139589, 0.617649,
		38.033859, 34.775742, 40.803337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144474, 35.544174, 40.630257>,  <38.575634, 34.873455, 40.370983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144474, 35.544174, 40.630257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161125, 35.238258, 40.887432>,  <38.171116, 35.054710, 41.041737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161125, 35.238258, 40.887432>,  <38.144474, 35.544174, 40.630257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161125, 35.238258, 40.887432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411492, 0.599509, 0.686486,
		-0.910462, 0.235990, 0.339658,
		0.041624, -0.764786, 0.642938,
		38.173611, 35.008823, 41.080315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506935, 36.048607, 40.248722>,  <38.144474, 35.544174, 40.630257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506935, 36.048607, 40.248722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512932, 36.356701, 39.993690>,  <38.516529, 36.541557, 39.840672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512932, 36.356701, 39.993690>,  <38.506935, 36.048607, 40.248722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512932, 36.356701, 39.993690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961161, -0.164643, -0.221500,
		-0.275581, 0.616141, 0.737852,
		0.014993, 0.770236, -0.637583,
		38.517429, 36.587772, 39.802414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757072, 36.375450, 40.268242>,  <38.506935, 36.048607, 40.248722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757072, 36.375450, 40.268242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925285, 36.526287, 39.938164>,  <38.026215, 36.616791, 39.740116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925285, 36.526287, 39.938164>,  <37.757072, 36.375450, 40.268242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925285, 36.526287, 39.938164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877262, -0.063005, -0.475858,
		-0.231435, 0.924029, 0.304316,
		0.420533, 0.377095, -0.825197,
		38.051445, 36.639416, 39.690605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291428, 37.020397, 39.971756>,  <37.757072, 36.375450, 40.268242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291428, 37.020397, 39.971756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524162, 36.892197, 39.672760>,  <37.663803, 36.815277, 39.493362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524162, 36.892197, 39.672760>,  <37.291428, 37.020397, 39.971756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524162, 36.892197, 39.672760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812688, -0.193335, -0.549691,
		0.031661, 0.927308, -0.372957,
		0.581839, -0.320501, -0.747491,
		37.698715, 36.796047, 39.448513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806480, 37.259270, 39.340065>,  <37.291428, 37.020397, 39.971756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806480, 37.259270, 39.340065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087357, 37.011726, 39.199242>,  <37.255882, 36.863201, 39.114746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087357, 37.011726, 39.199242>,  <36.806480, 37.259270, 39.340065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087357, 37.011726, 39.199242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601433, -0.250919, -0.758497,
		0.381062, 0.744350, -0.548393,
		0.702189, -0.618856, -0.352061,
		37.298012, 36.826069, 39.093624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669151, 37.342781, 38.698395>,  <36.806480, 37.259270, 39.340065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669151, 37.342781, 38.698395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885925, 37.006962, 38.713753>,  <37.015987, 36.805470, 38.722969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885925, 37.006962, 38.713753>,  <36.669151, 37.342781, 38.698395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885925, 37.006962, 38.713753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490646, -0.353149, -0.796588,
		0.682332, 0.412857, -0.603302,
		0.541932, -0.839545, 0.038399,
		37.048504, 36.755100, 38.725273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966183, 37.166775, 38.002125>,  <36.669151, 37.342781, 38.698395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966183, 37.166775, 38.002125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982887, 36.815659, 38.193012>,  <36.992912, 36.604988, 38.307545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982887, 36.815659, 38.193012>,  <36.966183, 37.166775, 38.002125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982887, 36.815659, 38.193012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427777, -0.447350, -0.785421,
		0.902919, -0.171338, -0.394183,
		0.041765, -0.877793, 0.477215,
		36.995419, 36.552322, 38.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321548, 36.715328, 37.554661>,  <36.966183, 37.166775, 38.002125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321548, 36.715328, 37.554661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.137711, 36.461849, 37.803562>,  <37.027409, 36.309761, 37.952904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.137711, 36.461849, 37.803562>,  <37.321548, 36.715328, 37.554661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137711, 36.461849, 37.803562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306308, -0.544543, -0.780800,
		0.833637, -0.549451, 0.056160,
		-0.459593, -0.633702, 0.622252,
		36.999832, 36.271740, 37.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606579, 36.140415, 37.379589>,  <37.321548, 36.715328, 37.554661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606579, 36.140415, 37.379589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244873, 36.069588, 37.535000>,  <37.027851, 36.027092, 37.628246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244873, 36.069588, 37.535000>,  <37.606579, 36.140415, 37.379589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244873, 36.069588, 37.535000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271608, -0.463568, -0.843406,
		0.329454, -0.868188, 0.371093,
		-0.904262, -0.177072, 0.388531,
		36.973595, 36.016468, 37.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460819, 35.470509, 37.176331>,  <37.606579, 36.140415, 37.379589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460819, 35.470509, 37.176331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103348, 35.604740, 37.295479>,  <36.888866, 35.685280, 37.366966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103348, 35.604740, 37.295479>,  <37.460819, 35.470509, 37.176331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103348, 35.604740, 37.295479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438557, -0.512819, -0.738027,
		-0.094913, -0.790192, 0.605466,
		-0.893677, 0.335580, 0.297871,
		36.835243, 35.705414, 37.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075241, 34.882397, 37.313400>,  <37.460819, 35.470509, 37.176331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075241, 34.882397, 37.313400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836189, 35.191326, 37.227280>,  <36.692760, 35.376686, 37.175606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836189, 35.191326, 37.227280>,  <37.075241, 34.882397, 37.313400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836189, 35.191326, 37.227280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438341, -0.539578, -0.718827,
		-0.671341, -0.335214, 0.661009,
		-0.597627, 0.772326, -0.215303,
		36.656902, 35.423023, 37.162689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493362, 34.590546, 37.157421>,  <37.075241, 34.882397, 37.313400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493362, 34.590546, 37.157421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389519, 34.946041, 37.006290>,  <36.327213, 35.159340, 36.915611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389519, 34.946041, 37.006290>,  <36.493362, 34.590546, 37.157421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389519, 34.946041, 37.006290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520074, -0.458319, -0.720740,
		-0.813713, 0.009388, 0.581191,
		-0.259605, 0.888738, -0.377823,
		36.311638, 35.212662, 36.892944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784168, 34.490955, 37.056625>,  <36.493362, 34.590546, 37.157421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784168, 34.490955, 37.056625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.921913, 34.783089, 36.820652>,  <36.004559, 34.958370, 36.679066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.921913, 34.783089, 36.820652>,  <35.784168, 34.490955, 37.056625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921913, 34.783089, 36.820652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460076, -0.416469, -0.784145,
		-0.818380, 0.541443, 0.192596,
		0.344360, 0.730337, -0.589935,
		36.025223, 35.002190, 36.643673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209305, 34.672085, 36.615452>,  <35.784168, 34.490955, 37.056625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209305, 34.672085, 36.615452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531990, 34.801334, 36.417538>,  <35.725601, 34.878883, 36.298790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531990, 34.801334, 36.417538>,  <35.209305, 34.672085, 36.615452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531990, 34.801334, 36.417538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408983, -0.299081, -0.862139,
		-0.426560, 0.897853, -0.109119,
		0.806709, 0.323126, -0.494782,
		35.774002, 34.898273, 36.269104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984806, 35.160934, 35.978382>,  <35.209305, 34.672085, 36.615452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984806, 35.160934, 35.978382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369240, 35.073708, 35.910534>,  <35.599899, 35.021374, 35.869827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369240, 35.073708, 35.910534>,  <34.984806, 35.160934, 35.978382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369240, 35.073708, 35.910534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221670, -0.242284, -0.944543,
		0.164875, 0.945382, -0.281193,
		0.961082, -0.218063, -0.169617,
		35.657566, 35.008289, 35.859650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743855, 35.861008, 35.713871>,  <34.984806, 35.160934, 35.978382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743855, 35.861008, 35.713871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359947, 35.896336, 35.820480>,  <34.129601, 35.917534, 35.884445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359947, 35.896336, 35.820480>,  <34.743855, 35.861008, 35.713871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359947, 35.896336, 35.820480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244086, 0.731621, 0.636517,
		-0.138779, 0.675966, -0.723747,
		-0.959772, 0.088322, 0.266527,
		34.072014, 35.922832, 35.900440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599564, 36.564201, 35.730644>,  <34.743855, 35.861008, 35.713871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599564, 36.564201, 35.730644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.307892, 36.383842, 35.936550>,  <34.132889, 36.275627, 36.060093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.307892, 36.383842, 35.936550>,  <34.599564, 36.564201, 35.730644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307892, 36.383842, 35.936550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148410, 0.630131, 0.762174,
		-0.668034, 0.632159, -0.392562,
		-0.729181, -0.450898, 0.514768,
		34.089138, 36.248573, 36.090981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149330, 37.215164, 35.931854>,  <34.599564, 36.564201, 35.730644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149330, 37.215164, 35.931854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.064754, 36.903542, 36.167946>,  <34.014008, 36.716568, 36.309601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.064754, 36.903542, 36.167946>,  <34.149330, 37.215164, 35.931854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064754, 36.903542, 36.167946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142297, 0.572910, 0.807171,
		-0.966977, 0.254656, -0.010280,
		-0.211441, -0.779053, 0.590228,
		34.001324, 36.669827, 36.345013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855602, 37.518650, 36.428619>,  <34.149330, 37.215164, 35.931854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855602, 37.518650, 36.428619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928429, 37.169041, 36.608810>,  <33.972126, 36.959274, 36.716927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928429, 37.169041, 36.608810>,  <33.855602, 37.518650, 36.428619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928429, 37.169041, 36.608810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054454, 0.448470, 0.892138,
		-0.981777, -0.186960, 0.034058,
		0.182068, -0.874026, 0.450478,
		33.983047, 36.906834, 36.743954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280106, 37.429783, 36.889065>,  <33.855602, 37.518650, 36.428619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280106, 37.429783, 36.889065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 37.191380, 37.029640>,  <33.742172, 37.048336, 37.113987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 37.191380, 37.029640>,  <33.280106, 37.429783, 36.889065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568897, 37.191380, 37.029640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099669, 0.413041, 0.905242,
		-0.684694, -0.688598, 0.238805,
		0.721984, -0.596013, 0.351439,
		33.785492, 37.012577, 37.135071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979843, 37.134560, 37.553001>,  <33.280106, 37.429783, 36.889065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979843, 37.134560, 37.553001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378426, 37.108067, 37.573734>,  <33.617577, 37.092171, 37.586174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378426, 37.108067, 37.573734>,  <32.979843, 37.134560, 37.553001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378426, 37.108067, 37.573734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015939, 0.456422, 0.889620,
		-0.082577, -0.887295, 0.453750,
		0.996457, -0.066230, 0.051833,
		33.677364, 37.088196, 37.589283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205025, 36.775425, 38.263855>,  <32.979843, 37.134560, 37.553001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205025, 36.775425, 38.263855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.527924, 36.968708, 38.128292>,  <33.721664, 37.084679, 38.046955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.527924, 36.968708, 38.128292>,  <33.205025, 36.775425, 38.263855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527924, 36.968708, 38.128292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118134, 0.430308, 0.894919,
		0.578268, -0.762458, 0.290282,
		0.807248, 0.483210, -0.338906,
		33.770100, 37.113670, 38.026619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697773, 36.708252, 38.800259>,  <33.205025, 36.775425, 38.263855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697773, 36.708252, 38.800259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846760, 37.012329, 38.587326>,  <33.936153, 37.194775, 38.459568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846760, 37.012329, 38.587326>,  <33.697773, 36.708252, 38.800259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846760, 37.012329, 38.587326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337232, 0.423523, 0.840775,
		0.864606, -0.492679, -0.098614,
		0.372467, 0.760195, -0.532328,
		33.958500, 37.240387, 38.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412418, 36.814468, 38.960995>,  <33.697773, 36.708252, 38.800259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412418, 36.814468, 38.960995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282303, 37.167702, 38.825733>,  <34.204235, 37.379642, 38.744576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282303, 37.167702, 38.825733>,  <34.412418, 36.814468, 38.960995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282303, 37.167702, 38.825733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231247, 0.421034, 0.877072,
		0.916903, 0.207105, -0.341169,
		-0.325290, 0.883084, -0.338155,
		34.184715, 37.432629, 38.724285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793549, 37.170033, 39.259331>,  <34.412418, 36.814468, 38.960995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793549, 37.170033, 39.259331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.544514, 37.458626, 39.138107>,  <34.395092, 37.631783, 39.065372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.544514, 37.458626, 39.138107>,  <34.793549, 37.170033, 39.259331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544514, 37.458626, 39.138107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118596, 0.469783, 0.874779,
		0.773511, 0.508686, -0.378046,
		-0.622587, 0.721487, -0.303054,
		34.357738, 37.675072, 39.047192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151196, 37.711216, 39.232025>,  <34.793549, 37.170033, 39.259331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151196, 37.711216, 39.232025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.783798, 37.852680, 39.302784>,  <34.563358, 37.937561, 39.345242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.783798, 37.852680, 39.302784>,  <35.151196, 37.711216, 39.232025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783798, 37.852680, 39.302784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303534, 0.343822, 0.888624,
		0.253452, 0.869890, -0.423147,
		-0.918493, 0.353663, 0.176899,
		34.508251, 37.958778, 39.355854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264488, 38.413822, 39.625507>,  <35.151196, 37.711216, 39.232025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264488, 38.413822, 39.625507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.888393, 38.304871, 39.707256>,  <34.662739, 38.239502, 39.756306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.888393, 38.304871, 39.707256>,  <35.264488, 38.413822, 39.625507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888393, 38.304871, 39.707256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130953, 0.264806, 0.955369,
		-0.314339, 0.925035, -0.213311,
		-0.940235, -0.272376, 0.204375,
		34.606323, 38.223160, 39.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.247601, 35.041019, 32.596962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045010, 34.871048, 32.897072>,  <31.923454, 34.769066, 33.077137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045010, 34.871048, 32.897072>,  <32.247601, 35.041019, 32.596962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045010, 34.871048, 32.897072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641199, 0.396153, 0.657211,
		-0.576492, 0.813940, 0.071820,
		-0.506479, -0.424928, 0.750277,
		31.893066, 34.743568, 33.122154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143318, 35.536823, 33.184181>,  <32.247601, 35.041019, 32.596962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143318, 35.536823, 33.184181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093571, 35.191734, 33.380238>,  <32.063725, 34.984680, 33.497871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093571, 35.191734, 33.380238>,  <32.143318, 35.536823, 33.184181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093571, 35.191734, 33.380238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553797, 0.349525, 0.755739,
		-0.823312, 0.365427, 0.434305,
		-0.124367, -0.862726, 0.490140,
		32.056259, 34.932915, 33.527279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188622, 35.764748, 33.862801>,  <32.143318, 35.536823, 33.184181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188622, 35.764748, 33.862801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245819, 35.369446, 33.884331>,  <32.280140, 35.132263, 33.897251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245819, 35.369446, 33.884331>,  <32.188622, 35.764748, 33.862801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245819, 35.369446, 33.884331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727293, 0.141812, 0.671516,
		-0.671265, -0.056877, 0.739032,
		0.142997, -0.988258, 0.053827,
		32.288719, 35.072968, 33.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119011, 35.654400, 34.483459>,  <32.188622, 35.764748, 33.862801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119011, 35.654400, 34.483459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317184, 35.323174, 34.378506>,  <32.436089, 35.124435, 34.315533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317184, 35.323174, 34.378506>,  <32.119011, 35.654400, 34.483459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317184, 35.323174, 34.378506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629772, 0.134364, 0.765071,
		-0.598277, -0.544284, 0.588064,
		0.495431, -0.828070, -0.262388,
		32.465813, 35.074753, 34.299789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202824, 35.149677, 35.107857>,  <32.119011, 35.654400, 34.483459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202824, 35.149677, 35.107857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483841, 35.051945, 34.840504>,  <32.652451, 34.993305, 34.680092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483841, 35.051945, 34.840504>,  <32.202824, 35.149677, 35.107857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483841, 35.051945, 34.840504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677144, -0.059374, 0.733451,
		-0.218893, -0.967871, 0.123738,
		0.702540, -0.244336, -0.668385,
		32.694603, 34.978645, 34.639988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657658, 34.663002, 35.447441>,  <32.202824, 35.149677, 35.107857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657658, 34.663002, 35.447441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832970, 34.845455, 35.137638>,  <32.938156, 34.954929, 34.951756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832970, 34.845455, 35.137638>,  <32.657658, 34.663002, 35.447441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832970, 34.845455, 35.137638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701383, 0.365318, 0.612049,
		0.562117, -0.811470, -0.159815,
		0.438276, 0.456135, -0.774503,
		32.964451, 34.982296, 34.905289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249966, 34.396679, 35.565346>,  <32.657658, 34.663002, 35.447441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249966, 34.396679, 35.565346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294933, 34.728668, 35.346802>,  <33.321915, 34.927860, 35.215675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294933, 34.728668, 35.346802>,  <33.249966, 34.396679, 35.565346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294933, 34.728668, 35.346802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571567, 0.395765, 0.718806,
		0.812818, -0.393093, -0.429890,
		0.112422, 0.829969, -0.546364,
		33.328659, 34.977657, 35.182892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897495, 34.677727, 35.791939>,  <33.249966, 34.396679, 35.565346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897495, 34.677727, 35.791939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745983, 34.989147, 35.591785>,  <33.655075, 35.175999, 35.471695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745983, 34.989147, 35.591785>,  <33.897495, 34.677727, 35.791939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745983, 34.989147, 35.591785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409723, 0.625870, 0.663637,
		0.829849, 0.046357, -0.556059,
		-0.378785, 0.778548, -0.500384,
		33.632347, 35.222713, 35.441669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448002, 35.173946, 35.523952>,  <33.897495, 34.677727, 35.791939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448002, 35.173946, 35.523952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104702, 35.367649, 35.591961>,  <33.898724, 35.483871, 35.632767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104702, 35.367649, 35.591961>,  <34.448002, 35.173946, 35.523952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104702, 35.367649, 35.591961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426594, 0.488901, 0.760916,
		0.285351, 0.725586, -0.626179,
		-0.858249, 0.484252, 0.170022,
		33.847229, 35.512924, 35.642967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083633, 35.364799, 35.306561>,  <34.448002, 35.173946, 35.523952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083633, 35.364799, 35.306561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415665, 35.144581, 35.342030>,  <35.614883, 35.012451, 35.363312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415665, 35.144581, 35.342030>,  <35.083633, 35.364799, 35.306561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415665, 35.144581, 35.342030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005226, -0.151326, -0.988470,
		0.557617, 0.820974, -0.122736,
		0.830082, -0.550547, 0.088672,
		35.664688, 34.979416, 35.368629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484062, 35.516300, 34.739712>,  <35.083633, 35.364799, 35.306561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484062, 35.516300, 34.739712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636864, 35.156857, 34.826031>,  <35.728546, 34.941189, 34.877823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636864, 35.156857, 34.826031>,  <35.484062, 35.516300, 34.739712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636864, 35.156857, 34.826031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000486, -0.233703, -0.972308,
		0.924159, 0.371324, -0.089713,
		0.382008, -0.898611, 0.215799,
		35.751465, 34.887272, 34.890770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077759, 35.349438, 34.309803>,  <35.484062, 35.516300, 34.739712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077759, 35.349438, 34.309803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980507, 34.990089, 34.456127>,  <35.922157, 34.774479, 34.543922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980507, 34.990089, 34.456127>,  <36.077759, 35.349438, 34.309803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980507, 34.990089, 34.456127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227619, -0.419440, -0.878783,
		0.942909, -0.130392, 0.306465,
		-0.243130, -0.898369, 0.365814,
		35.907566, 34.720577, 34.565872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641186, 34.856556, 34.034874>,  <36.077759, 35.349438, 34.309803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641186, 34.856556, 34.034874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313286, 34.641171, 34.112907>,  <36.116547, 34.511940, 34.159729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313286, 34.641171, 34.112907>,  <36.641186, 34.856556, 34.034874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313286, 34.641171, 34.112907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123807, -0.499195, -0.857599,
		0.559173, -0.678867, 0.475883,
		-0.819754, -0.538464, 0.195088,
		36.067360, 34.479630, 34.171432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827930, 34.185169, 33.711323>,  <36.641186, 34.856556, 34.034874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827930, 34.185169, 33.711323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433002, 34.227161, 33.758945>,  <36.196045, 34.252357, 33.787521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433002, 34.227161, 33.758945>,  <36.827930, 34.185169, 33.711323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433002, 34.227161, 33.758945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154892, -0.473180, -0.867242,
		-0.034707, -0.874688, 0.483442,
		-0.987322, 0.104980, 0.119059,
		36.136806, 34.258656, 33.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602745, 33.591473, 33.407349>,  <36.827930, 34.185169, 33.711323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602745, 33.591473, 33.407349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281891, 33.829685, 33.424915>,  <36.089378, 33.972610, 33.435455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281891, 33.829685, 33.424915>,  <36.602745, 33.591473, 33.407349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281891, 33.829685, 33.424915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381437, -0.454409, -0.804996,
		-0.459478, -0.662438, 0.591655,
		-0.802113, 0.595557, 0.043887,
		36.041252, 34.008343, 33.438087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132427, 33.165279, 33.160950>,  <36.602745, 33.591473, 33.407349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132427, 33.165279, 33.160950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986755, 33.534992, 33.115208>,  <35.899353, 33.756821, 33.087761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986755, 33.534992, 33.115208>,  <36.132427, 33.165279, 33.160950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986755, 33.534992, 33.115208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534825, -0.308076, -0.786798,
		-0.762452, -0.225378, 0.606524,
		-0.364182, 0.924280, -0.114356,
		35.877502, 33.812275, 33.080902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409611, 33.138550, 33.243641>,  <36.132427, 33.165279, 33.160950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409611, 33.138550, 33.243641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447483, 33.470257, 33.023335>,  <35.470207, 33.669281, 32.891151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447483, 33.470257, 33.023335>,  <35.409611, 33.138550, 33.243641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447483, 33.470257, 33.023335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539942, -0.422030, -0.728254,
		-0.836360, 0.366338, 0.407798,
		0.094684, 0.829269, -0.550770,
		35.475887, 33.719036, 32.858105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845921, 33.328114, 32.892365>,  <35.409611, 33.138550, 33.243641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845921, 33.328114, 32.892365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070572, 33.566830, 32.663136>,  <35.205364, 33.710060, 32.525597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070572, 33.566830, 32.663136>,  <34.845921, 33.328114, 32.892365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070572, 33.566830, 32.663136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666617, -0.083890, -0.740665,
		-0.490094, 0.798003, 0.350712,
		0.561632, 0.596785, -0.573076,
		35.239063, 33.745865, 32.491211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430550, 33.900524, 32.541759>,  <34.845921, 33.328114, 32.892365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430550, 33.900524, 32.541759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753628, 33.819702, 32.320202>,  <34.947475, 33.771210, 32.187267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753628, 33.819702, 32.320202>,  <34.430550, 33.900524, 32.541759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753628, 33.819702, 32.320202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584758, -0.154403, -0.796378,
		0.075390, 0.967126, -0.242865,
		0.807697, -0.202056, -0.553894,
		34.995937, 33.759087, 32.154034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282562, 34.206028, 31.909857>,  <34.430550, 33.900524, 32.541759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282562, 34.206028, 31.909857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583755, 33.957867, 31.822111>,  <34.764469, 33.808968, 31.769464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583755, 33.957867, 31.822111>,  <34.282562, 34.206028, 31.909857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583755, 33.957867, 31.822111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446868, -0.237386, -0.862530,
		0.483044, 0.747493, -0.455986,
		0.752979, -0.620405, -0.219363,
		34.809650, 33.771744, 31.756302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449478, 34.229534, 31.117981>,  <34.282562, 34.206028, 31.909857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449478, 34.229534, 31.117981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627380, 33.893234, 31.241486>,  <34.734119, 33.691456, 31.315588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627380, 33.893234, 31.241486>,  <34.449478, 34.229534, 31.117981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627380, 33.893234, 31.241486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316764, -0.470109, -0.823807,
		0.837768, 0.268586, -0.475401,
		0.444753, -0.840749, 0.308764,
		34.760807, 33.641010, 31.334114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755272, 33.929909, 30.516853>,  <34.449478, 34.229534, 31.117981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755272, 33.929909, 30.516853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729065, 33.624409, 30.773727>,  <34.713341, 33.441109, 30.927851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729065, 33.624409, 30.773727>,  <34.755272, 33.929909, 30.516853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729065, 33.624409, 30.773727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274345, -0.604978, -0.747487,
		0.959397, -0.225155, -0.169892,
		-0.065520, -0.763746, 0.642184,
		34.709408, 33.395287, 30.966383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281601, 33.426701, 30.444229>,  <34.755272, 33.929909, 30.516853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281601, 33.426701, 30.444229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975204, 33.225174, 30.603937>,  <34.791367, 33.104256, 30.699762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975204, 33.225174, 30.603937>,  <35.281601, 33.426701, 30.444229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975204, 33.225174, 30.603937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092182, -0.528591, -0.843856,
		0.636203, -0.683195, 0.358456,
		-0.765995, -0.503821, 0.399269,
		34.745407, 33.074028, 30.723719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.108637, 28.379595, 35.219181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.184393, 28.668295, 34.952885>,  <29.229847, 28.841515, 34.793106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.184393, 28.668295, 34.952885>,  <29.108637, 28.379595, 35.219181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184393, 28.668295, 34.952885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533349, 0.493650, 0.686912,
		0.824421, -0.485165, -0.291452,
		0.189390, 0.721751, -0.665738,
		29.241209, 28.884821, 34.753162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833887, 28.456030, 35.260471>,  <29.108637, 28.379595, 35.219181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833887, 28.456030, 35.260471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.675278, 28.798437, 35.127808>,  <29.580112, 29.003881, 35.048210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.675278, 28.798437, 35.127808>,  <29.833887, 28.456030, 35.260471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675278, 28.798437, 35.127808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582045, 0.513805, 0.630261,
		0.709924, 0.056873, -0.701978,
		-0.396524, 0.856020, -0.331660,
		29.556320, 29.055243, 35.028309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378147, 28.954531, 35.310024>,  <29.833887, 28.456030, 35.260471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378147, 28.954531, 35.310024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.068066, 29.203167, 35.264973>,  <29.882017, 29.352348, 35.237942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.068066, 29.203167, 35.264973>,  <30.378147, 28.954531, 35.310024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068066, 29.203167, 35.264973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407622, 0.628405, 0.662534,
		0.482601, 0.467689, -0.740515,
		-0.775203, 0.621590, -0.112629,
		29.835505, 29.389645, 35.231186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683863, 29.619678, 35.181610>,  <30.378147, 28.954531, 35.310024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683863, 29.619678, 35.181610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307652, 29.682539, 35.302086>,  <30.081924, 29.720255, 35.374371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307652, 29.682539, 35.302086>,  <30.683863, 29.619678, 35.181610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307652, 29.682539, 35.302086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322472, 0.691907, 0.645970,
		-0.106877, 0.704675, -0.701434,
		-0.940526, 0.157153, 0.301187,
		30.025494, 29.729685, 35.392441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688522, 30.275040, 35.403046>,  <30.683863, 29.619678, 35.181610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688522, 30.275040, 35.403046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.352795, 30.131907, 35.566753>,  <30.151358, 30.046026, 35.664978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.352795, 30.131907, 35.566753>,  <30.688522, 30.275040, 35.403046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352795, 30.131907, 35.566753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206225, 0.486995, 0.848709,
		-0.503008, 0.796739, -0.334950,
		-0.839318, -0.357832, 0.409269,
		30.101000, 30.024557, 35.689533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232956, 30.852133, 35.658863>,  <30.688522, 30.275040, 35.403046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232956, 30.852133, 35.658863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098774, 30.524096, 35.844299>,  <30.018265, 30.327272, 35.955563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098774, 30.524096, 35.844299>,  <30.232956, 30.852133, 35.658863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098774, 30.524096, 35.844299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083260, 0.464370, 0.881719,
		-0.938370, 0.334376, -0.087495,
		-0.335456, -0.820093, 0.463591,
		29.998137, 30.278067, 35.983376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746420, 31.012575, 36.146736>,  <30.232956, 30.852133, 35.658863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746420, 31.012575, 36.146736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.900446, 30.672277, 36.289822>,  <29.992861, 30.468100, 36.375671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.900446, 30.672277, 36.289822>,  <29.746420, 31.012575, 36.146736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900446, 30.672277, 36.289822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155594, 0.441896, 0.883469,
		-0.909679, -0.284536, 0.302530,
		0.385066, -0.850745, 0.357711,
		30.015966, 30.417053, 36.397137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549961, 31.000681, 36.917118>,  <29.746420, 31.012575, 36.146736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549961, 31.000681, 36.917118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.820583, 30.706705, 36.898617>,  <29.982956, 30.530319, 36.887516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.820583, 30.706705, 36.898617>,  <29.549961, 31.000681, 36.917118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820583, 30.706705, 36.898617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207207, 0.129721, 0.969659,
		-0.706641, -0.665610, 0.240048,
		0.676554, -0.734940, -0.046252,
		30.023550, 30.486223, 36.884743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393591, 30.568687, 37.429680>,  <29.549961, 31.000681, 36.917118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393591, 30.568687, 37.429680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.779335, 30.523760, 37.333851>,  <30.010782, 30.496803, 37.276356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.779335, 30.523760, 37.333851>,  <29.393591, 30.568687, 37.429680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779335, 30.523760, 37.333851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258288, 0.203140, 0.944469,
		-0.057416, -0.972686, 0.224911,
		0.964360, -0.112319, -0.239570,
		30.068644, 30.490065, 37.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660603, 30.254799, 38.091621>,  <29.393591, 30.568687, 37.429680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660603, 30.254799, 38.091621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992872, 30.354538, 37.892498>,  <30.192234, 30.414381, 37.773026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992872, 30.354538, 37.892498>,  <29.660603, 30.254799, 38.091621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992872, 30.354538, 37.892498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495562, 0.076416, 0.865205,
		0.253776, -0.965395, -0.060090,
		0.830672, 0.249346, -0.497805,
		30.242073, 30.429342, 37.743156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278063, 29.797132, 38.317631>,  <29.660603, 30.254799, 38.091621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278063, 29.797132, 38.317631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423876, 30.138781, 38.169254>,  <30.511364, 30.343769, 38.080231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423876, 30.138781, 38.169254>,  <30.278063, 29.797132, 38.317631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423876, 30.138781, 38.169254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608427, 0.083092, 0.789248,
		0.704935, -0.513393, -0.489381,
		0.364531, 0.854121, -0.370936,
		30.533236, 30.395018, 38.057972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950867, 29.803652, 38.530010>,  <30.278063, 29.797132, 38.317631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950867, 29.803652, 38.530010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866936, 30.184475, 38.440968>,  <30.816576, 30.412970, 38.387543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866936, 30.184475, 38.440968>,  <30.950867, 29.803652, 38.530010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866936, 30.184475, 38.440968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455617, 0.296657, 0.839290,
		0.865093, 0.074682, -0.496021,
		-0.209828, 0.952060, -0.222609,
		30.803988, 30.470093, 38.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559166, 30.125460, 38.731525>,  <30.950867, 29.803652, 38.530010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559166, 30.125460, 38.731525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293367, 30.421297, 38.688725>,  <31.133888, 30.598799, 38.663044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293367, 30.421297, 38.688725>,  <31.559166, 30.125460, 38.731525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293367, 30.421297, 38.688725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443023, 0.505189, 0.740618,
		0.601810, 0.444734, -0.663352,
		-0.664496, 0.739592, -0.107000,
		31.094019, 30.643175, 38.656624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920490, 30.772909, 38.629555>,  <31.559166, 30.125460, 38.731525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920490, 30.772909, 38.629555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560213, 30.847586, 38.786476>,  <31.344048, 30.892391, 38.880630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560213, 30.847586, 38.786476>,  <31.920490, 30.772909, 38.629555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560213, 30.847586, 38.786476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428603, 0.529591, 0.732006,
		-0.071100, 0.827453, -0.557015,
		-0.900691, 0.186692, 0.392303,
		31.290007, 30.903593, 38.904167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528259, 30.995701, 38.360287>,  <31.920490, 30.772909, 38.629555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528259, 30.995701, 38.360287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899139, 31.117401, 38.272900>,  <33.121670, 31.190420, 38.220467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899139, 31.117401, 38.272900>,  <32.528259, 30.995701, 38.360287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899139, 31.117401, 38.272900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118599, -0.314781, -0.941726,
		-0.355289, 0.899080, -0.255782,
		0.927202, 0.304249, -0.218468,
		33.177299, 31.208675, 38.207359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513508, 31.509937, 37.772278>,  <32.528259, 30.995701, 38.360287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513508, 31.509937, 37.772278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.861229, 31.312832, 37.787731>,  <33.069862, 31.194569, 37.797005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.861229, 31.312832, 37.787731>,  <32.513508, 31.509937, 37.772278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861229, 31.312832, 37.787731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199232, -0.420865, -0.884974,
		0.452344, 0.761615, -0.464034,
		0.869305, -0.492764, 0.038637,
		33.122021, 31.165003, 37.799324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684025, 31.437065, 37.072002>,  <32.513508, 31.509937, 37.772278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684025, 31.437065, 37.072002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943954, 31.189028, 37.247826>,  <33.099911, 31.040205, 37.353321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943954, 31.189028, 37.247826>,  <32.684025, 31.437065, 37.072002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943954, 31.189028, 37.247826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089377, -0.636631, -0.765972,
		0.754812, 0.458460, -0.469120,
		0.649823, -0.620093, 0.439561,
		33.138901, 31.003000, 37.379692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229073, 31.282402, 36.607189>,  <32.684025, 31.437065, 37.072002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229073, 31.282402, 36.607189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213680, 30.978569, 36.866898>,  <33.204445, 30.796270, 37.022724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213680, 30.978569, 36.866898>,  <33.229073, 31.282402, 36.607189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213680, 30.978569, 36.866898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039540, -0.650403, -0.758560,
		0.998477, -0.003519, 0.055063,
		-0.038483, -0.759581, 0.649273,
		33.202137, 30.750694, 37.061680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749077, 30.760801, 36.449966>,  <33.229073, 31.282402, 36.607189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749077, 30.760801, 36.449966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.485012, 30.551876, 36.665882>,  <33.326572, 30.426521, 36.795429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.485012, 30.551876, 36.665882>,  <33.749077, 30.760801, 36.449966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485012, 30.551876, 36.665882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037738, -0.694670, -0.718338,
		0.750172, -0.494592, 0.438886,
		-0.660165, -0.522315, 0.539787,
		33.286964, 30.395182, 36.827820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906322, 29.972347, 36.481453>,  <33.749077, 30.760801, 36.449966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906322, 29.972347, 36.481453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519707, 30.023165, 36.570583>,  <33.287735, 30.053656, 36.624062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519707, 30.023165, 36.570583>,  <33.906322, 29.972347, 36.481453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519707, 30.023165, 36.570583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237472, -0.771571, -0.590157,
		0.096954, -0.623328, 0.775927,
		-0.966544, 0.127043, 0.222829,
		33.229744, 30.061277, 36.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668201, 29.271694, 36.426826>,  <33.906322, 29.972347, 36.481453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668201, 29.271694, 36.426826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345455, 29.505013, 36.389427>,  <33.151810, 29.645002, 36.366989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345455, 29.505013, 36.389427>,  <33.668201, 29.271694, 36.426826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345455, 29.505013, 36.389427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300743, -0.541815, -0.784850,
		-0.508455, -0.605148, 0.612592,
		-0.806862, 0.583294, -0.093494,
		33.103397, 29.680000, 36.361378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264683, 28.788345, 36.118069>,  <33.668201, 29.271694, 36.426826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264683, 28.788345, 36.118069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.090527, 29.140575, 36.043213>,  <32.986034, 29.351913, 35.998299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.090527, 29.140575, 36.043213>,  <33.264683, 28.788345, 36.118069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090527, 29.140575, 36.043213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333415, -0.350828, -0.875074,
		-0.836224, -0.318601, 0.446344,
		-0.435389, 0.880576, -0.187144,
		32.959911, 29.404749, 35.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583263, 28.691797, 35.944237>,  <33.264683, 28.788345, 36.118069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583263, 28.691797, 35.944237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660324, 29.048971, 35.781483>,  <32.706562, 29.263275, 35.683830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660324, 29.048971, 35.781483>,  <32.583263, 28.691797, 35.944237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660324, 29.048971, 35.781483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532608, -0.253099, -0.807632,
		-0.824143, 0.372304, 0.426823,
		0.192656, 0.892934, -0.406882,
		32.718121, 29.316851, 35.659420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976349, 28.762274, 35.590096>,  <32.583263, 28.691797, 35.944237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976349, 28.762274, 35.590096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.243099, 29.018890, 35.438465>,  <32.403149, 29.172861, 35.347488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.243099, 29.018890, 35.438465>,  <31.976349, 28.762274, 35.590096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243099, 29.018890, 35.438465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426117, -0.089013, -0.900278,
		-0.611308, 0.761906, 0.214011,
		0.666878, 0.641541, -0.379076,
		32.443161, 29.211353, 35.324741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570356, 29.304657, 35.317078>,  <31.976349, 28.762274, 35.590096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570356, 29.304657, 35.317078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.925028, 29.319418, 35.132713>,  <32.137833, 29.328274, 35.022095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.925028, 29.319418, 35.132713>,  <31.570356, 29.304657, 35.317078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925028, 29.319418, 35.132713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461698, 0.016364, -0.886886,
		-0.025184, 0.999185, 0.031546,
		0.886680, 0.036901, -0.460909,
		32.191032, 29.330488, 34.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487236, 29.817463, 34.796719>,  <31.570356, 29.304657, 35.317078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487236, 29.817463, 34.796719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.776384, 29.553768, 34.713905>,  <31.949873, 29.395552, 34.664219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.776384, 29.553768, 34.713905>,  <31.487236, 29.817463, 34.796719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776384, 29.553768, 34.713905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347516, -0.087886, -0.933546,
		0.597235, 0.746780, -0.292626,
		0.722871, -0.659239, -0.207029,
		31.993246, 29.355997, 34.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843683, 30.046328, 34.110546>,  <31.487236, 29.817463, 34.796719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843683, 30.046328, 34.110546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943617, 29.660400, 34.143314>,  <32.003578, 29.428844, 34.162975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943617, 29.660400, 34.143314>,  <31.843683, 30.046328, 34.110546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943617, 29.660400, 34.143314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161667, -0.124976, -0.978900,
		0.954698, 0.231318, -0.187202,
		0.249833, -0.964818, 0.081918,
		32.018566, 29.370955, 34.167889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084938, 29.933901, 33.473717>,  <31.843683, 30.046328, 34.110546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084938, 29.933901, 33.473717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034462, 29.558174, 33.601318>,  <32.004177, 29.332739, 33.677879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034462, 29.558174, 33.601318>,  <32.084938, 29.933901, 33.473717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034462, 29.558174, 33.601318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264760, -0.278016, -0.923368,
		0.956022, -0.200979, -0.213610,
		-0.126190, -0.939316, 0.319000,
		31.996605, 29.276379, 33.697018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772717, 29.926674, 33.388371>,  <32.084938, 29.933901, 33.473717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772717, 29.926674, 33.388371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094059, 30.079006, 33.205250>,  <33.286865, 30.170406, 33.095379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094059, 30.079006, 33.205250>,  <32.772717, 29.926674, 33.388371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094059, 30.079006, 33.205250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293964, 0.414957, 0.861044,
		0.517881, -0.826304, 0.221408,
		0.803358, 0.380832, -0.457802,
		33.335068, 30.193256, 33.067909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279747, 29.901424, 33.812893>,  <32.772717, 29.926674, 33.388371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279747, 29.901424, 33.812893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431564, 30.166708, 33.554867>,  <33.522655, 30.325878, 33.400051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431564, 30.166708, 33.554867>,  <33.279747, 29.901424, 33.812893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431564, 30.166708, 33.554867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459804, 0.469809, 0.753565,
		0.802826, -0.582610, -0.126634,
		0.379541, 0.663208, -0.645061,
		33.545425, 30.365671, 33.361347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895607, 29.994186, 34.059006>,  <33.279747, 29.901424, 33.812893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895607, 29.994186, 34.059006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880451, 30.302250, 33.804314>,  <33.871357, 30.487087, 33.651501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880451, 30.302250, 33.804314>,  <33.895607, 29.994186, 34.059006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880451, 30.302250, 33.804314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566891, 0.541297, 0.620993,
		0.822921, -0.337424, -0.457107,
		-0.037893, 0.770158, -0.636727,
		33.869083, 30.533297, 33.613297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618053, 30.081293, 33.834820>,  <33.895607, 29.994186, 34.059006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618053, 30.081293, 33.834820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393791, 30.409903, 33.793320>,  <34.259235, 30.607069, 33.768417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393791, 30.409903, 33.793320>,  <34.618053, 30.081293, 33.834820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393791, 30.409903, 33.793320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547039, 0.461531, 0.698382,
		0.621624, 0.334793, -0.708165,
		-0.560653, 0.821525, -0.103753,
		34.225594, 30.656361, 33.762196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084755, 30.617847, 33.808868>,  <34.618053, 30.081293, 33.834820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084755, 30.617847, 33.808868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752323, 30.825100, 33.889709>,  <34.552864, 30.949451, 33.938213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752323, 30.825100, 33.889709>,  <35.084755, 30.617847, 33.808868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752323, 30.825100, 33.889709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505952, 0.553487, 0.661562,
		0.230914, 0.652066, -0.722142,
		-0.831078, 0.518133, 0.202106,
		34.502998, 30.980539, 33.950340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356831, 31.233025, 34.072472>,  <35.084755, 30.617847, 33.808868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356831, 31.233025, 34.072472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974613, 31.223654, 34.190033>,  <34.745281, 31.218031, 34.260571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974613, 31.223654, 34.190033>,  <35.356831, 31.233025, 34.072472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974613, 31.223654, 34.190033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271605, 0.317898, 0.908389,
		-0.114711, 0.947835, -0.297405,
		-0.955548, -0.023426, 0.293903,
		34.687950, 31.216625, 34.278206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350449, 31.786879, 34.511978>,  <35.356831, 31.233025, 34.072472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350449, 31.786879, 34.511978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037621, 31.557922, 34.610558>,  <34.849926, 31.420547, 34.669704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037621, 31.557922, 34.610558>,  <35.350449, 31.786879, 34.511978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037621, 31.557922, 34.610558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182125, 0.168275, 0.968769,
		-0.595988, 0.802527, -0.027356,
		-0.782067, -0.572393, 0.246450,
		34.803001, 31.386204, 34.684494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023308, 32.225311, 35.006992>,  <35.350449, 31.786879, 34.511978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023308, 32.225311, 35.006992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900143, 31.851398, 35.077835>,  <34.826244, 31.627050, 35.120338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900143, 31.851398, 35.077835>,  <35.023308, 32.225311, 35.006992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900143, 31.851398, 35.077835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323557, 0.072166, 0.943453,
		-0.894706, 0.347808, 0.280234,
		-0.307917, -0.934784, 0.177103,
		34.807766, 31.570963, 35.130966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575047, 32.295406, 35.497822>,  <35.023308, 32.225311, 35.006992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575047, 32.295406, 35.497822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727116, 31.925781, 35.513680>,  <34.818356, 31.704004, 35.523193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727116, 31.925781, 35.513680>,  <34.575047, 32.295406, 35.497822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727116, 31.925781, 35.513680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265793, 0.150205, 0.952256,
		-0.885904, -0.351481, 0.302714,
		0.380169, -0.924067, 0.039646,
		34.841167, 31.648561, 35.525574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640137, 32.108383, 36.205544>,  <34.575047, 32.295406, 35.497822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640137, 32.108383, 36.205544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841957, 31.797672, 36.054790>,  <34.963051, 31.611244, 35.964340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841957, 31.797672, 36.054790>,  <34.640137, 32.108383, 36.205544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841957, 31.797672, 36.054790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344688, -0.218993, 0.912816,
		-0.791591, -0.590470, 0.157253,
		0.504553, -0.776780, -0.376881,
		34.993324, 31.564638, 35.941727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430458, 31.459747, 36.557556>,  <34.640137, 32.108383, 36.205544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430458, 31.459747, 36.557556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.799229, 31.426462, 36.406223>,  <35.020489, 31.406492, 36.315422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.799229, 31.426462, 36.406223>,  <34.430458, 31.459747, 36.557556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799229, 31.426462, 36.406223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344891, -0.268371, 0.899459,
		-0.176376, -0.959715, -0.218720,
		0.921923, -0.083209, -0.378331,
		35.075806, 31.401499, 36.292725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659458, 30.974218, 37.018440>,  <34.430458, 31.459747, 36.557556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659458, 30.974218, 37.018440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978806, 31.103334, 36.815102>,  <35.170414, 31.180803, 36.693096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978806, 31.103334, 36.815102>,  <34.659458, 30.974218, 37.018440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978806, 31.103334, 36.815102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567592, -0.121417, 0.814308,
		0.201128, -0.938650, -0.280149,
		0.798365, 0.322790, -0.508350,
		35.218315, 31.200171, 36.662598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200527, 30.533087, 37.222366>,  <34.659458, 30.974218, 37.018440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200527, 30.533087, 37.222366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357796, 30.880619, 37.101997>,  <35.452156, 31.089138, 37.029778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357796, 30.880619, 37.101997>,  <35.200527, 30.533087, 37.222366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357796, 30.880619, 37.101997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463993, 0.095070, 0.880723,
		0.793808, -0.485895, -0.365754,
		0.393167, 0.868831, -0.300919,
		35.475746, 31.141268, 37.011723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915878, 30.492542, 37.469906>,  <35.200527, 30.533087, 37.222366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915878, 30.492542, 37.469906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885647, 30.885981, 37.404396>,  <35.867508, 31.122044, 37.365089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885647, 30.885981, 37.404396>,  <35.915878, 30.492542, 37.469906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885647, 30.885981, 37.404396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444805, 0.180256, 0.877301,
		0.892433, -0.006543, -0.451133,
		-0.075579, 0.983598, -0.163776,
		35.862972, 31.181061, 37.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.381668, 32.733974, 30.282427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009468, 32.697659, 30.424370>,  <34.786148, 32.675869, 30.509535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009468, 32.697659, 30.424370>,  <35.381668, 32.733974, 30.282427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009468, 32.697659, 30.424370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161217, -0.768399, -0.619332,
		0.328901, -0.633498, 0.700360,
		-0.930502, -0.090789, 0.354858,
		34.730316, 32.670422, 30.530827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231335, 31.989136, 30.397398>,  <35.381668, 32.733974, 30.282427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231335, 31.989136, 30.397398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893665, 32.199860, 30.357718>,  <34.691063, 32.326294, 30.333910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893665, 32.199860, 30.357718>,  <35.231335, 31.989136, 30.397398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893665, 32.199860, 30.357718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354649, -0.687608, -0.633576,
		-0.401983, -0.499669, 0.767294,
		-0.844176, 0.526807, -0.099199,
		34.640411, 32.357903, 30.327957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718204, 31.566866, 30.290358>,  <35.231335, 31.989136, 30.397398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718204, 31.566866, 30.290358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522655, 31.889557, 30.157578>,  <34.405327, 32.083172, 30.077909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522655, 31.889557, 30.157578>,  <34.718204, 31.566866, 30.290358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522655, 31.889557, 30.157578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445162, -0.557953, -0.700371,
		-0.750223, -0.194619, 0.631893,
		-0.488872, 0.806729, -0.331952,
		34.375992, 32.131577, 30.057993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072922, 31.348221, 30.174629>,  <34.718204, 31.566866, 30.290358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072922, 31.348221, 30.174629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103119, 31.668522, 29.936941>,  <34.121239, 31.860703, 29.794329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103119, 31.668522, 29.936941>,  <34.072922, 31.348221, 30.174629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103119, 31.668522, 29.936941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346888, -0.537610, -0.768533,
		-0.934863, 0.264147, 0.237185,
		0.075493, 0.800750, -0.594222,
		34.125767, 31.908747, 29.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499142, 31.318836, 29.807732>,  <34.072922, 31.348221, 30.174629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499142, 31.318836, 29.807732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738892, 31.552286, 29.588593>,  <33.882740, 31.692356, 29.457109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738892, 31.552286, 29.588593>,  <33.499142, 31.318836, 29.807732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738892, 31.552286, 29.588593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414750, -0.358945, -0.836146,
		-0.684641, 0.728384, 0.026915,
		0.599374, 0.583623, -0.547846,
		33.918705, 31.727373, 29.424238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056679, 31.521980, 29.196480>,  <33.499142, 31.318836, 29.807732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056679, 31.521980, 29.196480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432072, 31.604383, 29.085621>,  <33.657307, 31.653826, 29.019106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432072, 31.604383, 29.085621>,  <33.056679, 31.521980, 29.196480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432072, 31.604383, 29.085621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172839, -0.414597, -0.893441,
		-0.298961, 0.886380, -0.353485,
		0.938482, 0.206008, -0.277149,
		33.713615, 31.666185, 29.002476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982338, 31.972263, 28.701828>,  <33.056679, 31.521980, 29.196480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982338, 31.972263, 28.701828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323853, 31.765997, 28.673147>,  <33.528759, 31.642237, 28.655939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323853, 31.765997, 28.673147>,  <32.982338, 31.972263, 28.701828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323853, 31.765997, 28.673147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343775, -0.454963, -0.821479,
		0.390987, 0.726015, -0.565713,
		0.853785, -0.515666, -0.071701,
		33.579987, 31.611298, 28.651636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156570, 32.055916, 28.000853>,  <32.982338, 31.972263, 28.701828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156570, 32.055916, 28.000853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354893, 31.727434, 28.113852>,  <33.473888, 31.530346, 28.181652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354893, 31.727434, 28.113852>,  <33.156570, 32.055916, 28.000853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354893, 31.727434, 28.113852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291424, -0.463766, -0.836656,
		0.818075, 0.332494, -0.469256,
		0.495808, -0.821200, 0.282498,
		33.503635, 31.481073, 28.198601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428497, 31.638592, 27.341509>,  <33.156570, 32.055916, 28.000853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428497, 31.638592, 27.341509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497879, 31.344221, 27.603296>,  <33.539509, 31.167599, 27.760368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497879, 31.344221, 27.603296>,  <33.428497, 31.638592, 27.341509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497879, 31.344221, 27.603296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281966, -0.673830, -0.682970,
		0.943615, -0.066075, -0.324384,
		0.173452, -0.735926, 0.654467,
		33.549915, 31.123444, 27.799637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888187, 31.138157, 27.013927>,  <33.428497, 31.638592, 27.341509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888187, 31.138157, 27.013927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670864, 30.939735, 27.284849>,  <33.540470, 30.820683, 27.447403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670864, 30.939735, 27.284849>,  <33.888187, 31.138157, 27.013927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670864, 30.939735, 27.284849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216005, -0.697008, -0.683756,
		0.811267, -0.517794, 0.271542,
		-0.543311, -0.496055, 0.677306,
		33.507870, 30.790918, 27.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923828, 30.469894, 26.841574>,  <33.888187, 31.138157, 27.013927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923828, 30.469894, 26.841574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601521, 30.443981, 27.077045>,  <33.408138, 30.428434, 27.218328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601521, 30.443981, 27.077045>,  <33.923828, 30.469894, 26.841574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601521, 30.443981, 27.077045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422707, -0.633288, -0.648279,
		0.414800, -0.771200, 0.482899,
		-0.805767, -0.064781, 0.588679,
		33.359791, 30.424547, 27.253649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821426, 29.745802, 26.936081>,  <33.923828, 30.469894, 26.841574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821426, 29.745802, 26.936081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473053, 29.925196, 27.016417>,  <33.264030, 30.032831, 27.064617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473053, 29.925196, 27.016417>,  <33.821426, 29.745802, 26.936081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473053, 29.925196, 27.016417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478252, -0.679685, -0.556151,
		-0.112917, -0.580422, 0.806449,
		-0.870933, 0.448485, 0.200840,
		33.211773, 30.059742, 27.076668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396210, 29.219265, 27.295441>,  <33.821426, 29.745802, 26.936081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396210, 29.219265, 27.295441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159328, 29.471361, 27.094606>,  <33.017200, 29.622620, 26.974106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159328, 29.471361, 27.094606>,  <33.396210, 29.219265, 27.295441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159328, 29.471361, 27.094606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556291, -0.770557, -0.311097,
		-0.582951, 0.095072, 0.806926,
		-0.592206, 0.630240, -0.502085,
		32.981667, 29.660433, 26.943981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861359, 28.781664, 27.161976>,  <33.396210, 29.219265, 27.295441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861359, 28.781664, 27.161976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831696, 29.084328, 26.902140>,  <32.813900, 29.265926, 26.746237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831696, 29.084328, 26.902140>,  <32.861359, 28.781664, 27.161976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831696, 29.084328, 26.902140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456607, -0.604857, -0.652425,
		-0.886573, 0.248228, 0.390348,
		-0.074154, 0.756658, -0.649592,
		32.809448, 29.311325, 26.707262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235653, 29.133394, 27.418621>,  <32.861359, 28.781664, 27.161976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235653, 29.133394, 27.418621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317604, 28.770813, 27.566336>,  <32.366776, 28.553265, 27.654964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317604, 28.770813, 27.566336>,  <32.235653, 29.133394, 27.418621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317604, 28.770813, 27.566336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135543, 0.399927, 0.906469,
		-0.969358, -0.135659, 0.204798,
		0.204875, -0.906452, 0.369285,
		32.379066, 28.498877, 27.677120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764784, 29.049988, 28.007311>,  <32.235653, 29.133394, 27.418621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764784, 29.049988, 28.007311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062759, 28.792179, 28.076200>,  <32.241543, 28.637495, 28.117535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062759, 28.792179, 28.076200>,  <31.764784, 29.049988, 28.007311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062759, 28.792179, 28.076200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112547, 0.375869, 0.919813,
		-0.657572, -0.665820, 0.352538,
		0.744938, -0.644520, 0.172225,
		32.286240, 28.598824, 28.127869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541645, 28.823795, 28.639772>,  <31.764784, 29.049988, 28.007311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541645, 28.823795, 28.639772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922722, 28.706562, 28.607569>,  <32.151367, 28.636223, 28.588247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922722, 28.706562, 28.607569>,  <31.541645, 28.823795, 28.639772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922722, 28.706562, 28.607569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101185, 0.056055, 0.993287,
		-0.286603, -0.954442, 0.083058,
		0.952691, -0.293084, -0.080510,
		32.208530, 28.618637, 28.583416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671856, 28.414957, 29.174261>,  <31.541645, 28.823795, 28.639772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671856, 28.414957, 29.174261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044987, 28.523834, 29.079819>,  <32.268864, 28.589161, 29.023153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044987, 28.523834, 29.079819>,  <31.671856, 28.414957, 29.174261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044987, 28.523834, 29.079819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220993, 0.085362, 0.971533,
		0.284598, -0.958449, 0.019476,
		0.932827, 0.272192, -0.236104,
		32.324837, 28.605492, 29.008987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950523, 28.146900, 29.655998>,  <31.671856, 28.414957, 29.174261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950523, 28.146900, 29.655998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.215630, 28.410904, 29.514503>,  <32.374695, 28.569305, 29.429607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.215630, 28.410904, 29.514503>,  <31.950523, 28.146900, 29.655998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215630, 28.410904, 29.514503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369197, 0.122975, 0.921179,
		0.651487, -0.741125, -0.162169,
		0.662766, 0.660009, -0.353738,
		32.414459, 28.608906, 29.408382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618629, 27.907707, 29.864573>,  <31.950523, 28.146900, 29.655998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618629, 27.907707, 29.864573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612888, 28.304428, 29.813786>,  <32.609444, 28.542461, 29.783314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612888, 28.304428, 29.813786>,  <32.618629, 27.907707, 29.864573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612888, 28.304428, 29.813786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379807, 0.122869, 0.916869,
		0.924954, -0.035064, -0.378457,
		-0.014352, 0.991803, -0.126965,
		32.608582, 28.601969, 29.775696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216568, 28.204559, 30.045769>,  <32.618629, 27.907707, 29.864573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216568, 28.204559, 30.045769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994629, 28.536951, 30.061859>,  <32.861465, 28.736387, 30.071512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994629, 28.536951, 30.061859>,  <33.216568, 28.204559, 30.045769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994629, 28.536951, 30.061859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425741, 0.242064, 0.871865,
		0.714767, 0.500875, -0.488091,
		-0.554844, 0.830981, 0.040224,
		32.828175, 28.786245, 30.073927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713287, 28.776468, 30.073973>,  <33.216568, 28.204559, 30.045769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713287, 28.776468, 30.073973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363731, 28.886204, 30.234497>,  <33.153996, 28.952045, 30.330812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363731, 28.886204, 30.234497>,  <33.713287, 28.776468, 30.073973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363731, 28.886204, 30.234497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474011, 0.297780, 0.828638,
		0.107826, 0.914366, -0.390268,
		-0.873892, 0.274340, 0.401311,
		33.101562, 28.968506, 30.354891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035748, 29.474571, 30.382231>,  <33.713287, 28.776468, 30.073973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035748, 29.474571, 30.382231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672428, 29.418049, 30.539722>,  <33.454437, 29.384136, 30.634216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672428, 29.418049, 30.539722>,  <34.035748, 29.474571, 30.382231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672428, 29.418049, 30.539722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332638, 0.326749, 0.884640,
		-0.253655, 0.934488, -0.249783,
		-0.908301, -0.141306, 0.393728,
		33.399937, 29.375658, 30.657841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863503, 30.121616, 30.718788>,  <34.035748, 29.474571, 30.382231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863503, 30.121616, 30.718788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598900, 29.857893, 30.861738>,  <33.440136, 29.699659, 30.947508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598900, 29.857893, 30.861738>,  <33.863503, 30.121616, 30.718788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598900, 29.857893, 30.861738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058537, 0.429691, 0.901076,
		-0.747647, 0.616992, -0.245652,
		-0.661511, -0.659307, 0.357374,
		33.400448, 29.660101, 30.968950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429050, 30.530752, 31.083416>,  <33.863503, 30.121616, 30.718788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429050, 30.530752, 31.083416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353523, 30.179739, 31.259726>,  <33.308208, 29.969131, 31.365511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353523, 30.179739, 31.259726>,  <33.429050, 30.530752, 31.083416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353523, 30.179739, 31.259726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013577, 0.451139, 0.892351,
		-0.981919, 0.162505, -0.097096,
		-0.188815, -0.877534, 0.440775,
		33.296879, 29.916479, 31.391958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818043, 30.518904, 31.438625>,  <33.429050, 30.530752, 31.083416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818043, 30.518904, 31.438625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044594, 30.235678, 31.607321>,  <33.180523, 30.065742, 31.708538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044594, 30.235678, 31.607321>,  <32.818043, 30.518904, 31.438625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044594, 30.235678, 31.607321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084267, 0.459290, 0.884280,
		-0.819827, -0.536375, 0.200465,
		0.566377, -0.708064, 0.421737,
		33.214508, 30.023258, 31.733841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601082, 30.460732, 32.124527>,  <32.818043, 30.518904, 31.438625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601082, 30.460732, 32.124527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964909, 30.295181, 32.139439>,  <33.183205, 30.195850, 32.148388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964909, 30.295181, 32.139439>,  <32.601082, 30.460732, 32.124527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964909, 30.295181, 32.139439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128626, 0.365713, 0.921797,
		-0.395144, -0.833643, 0.385877,
		0.909570, -0.413876, 0.037281,
		33.237778, 30.171019, 32.150623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615391, 30.049973, 32.679955>,  <32.601082, 30.460732, 32.124527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615391, 30.049973, 32.679955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007565, 30.111729, 32.631104>,  <33.242870, 30.148783, 32.601791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007565, 30.111729, 32.631104>,  <32.615391, 30.049973, 32.679955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007565, 30.111729, 32.631104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089344, 0.203833, 0.974921,
		0.175402, -0.966757, 0.186052,
		0.980435, 0.154380, -0.122126,
		33.301693, 30.158045, 32.594463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173744, 29.432335, 32.803104>,  <32.615391, 30.049973, 32.679955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173744, 29.432335, 32.803104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976614, 29.225145, 33.082767>,  <31.858335, 29.100832, 33.250565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976614, 29.225145, 33.082767>,  <32.173744, 29.432335, 32.803104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976614, 29.225145, 33.082767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381244, -0.593738, -0.708610,
		0.782159, -0.615773, 0.095136,
		-0.492828, -0.517976, 0.699158,
		31.828766, 29.069752, 33.292515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371029, 28.727974, 32.728355>,  <32.173744, 29.432335, 32.803104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371029, 28.727974, 32.728355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004654, 28.735130, 32.888721>,  <31.784828, 28.739424, 32.984943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004654, 28.735130, 32.888721>,  <32.371029, 28.727974, 32.728355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004654, 28.735130, 32.888721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303129, -0.685526, -0.661941,
		0.262998, -0.727828, 0.633324,
		-0.915939, 0.017889, 0.400918,
		31.729872, 28.740498, 33.008995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123928, 28.057938, 32.607075>,  <32.371029, 28.727974, 32.728355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123928, 28.057938, 32.607075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783470, 28.248949, 32.694279>,  <31.579197, 28.363556, 32.746601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783470, 28.248949, 32.694279>,  <32.123928, 28.057938, 32.607075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783470, 28.248949, 32.694279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508345, -0.646202, -0.569218,
		-0.130941, -0.595307, 0.792757,
		-0.851140, 0.477528, 0.218007,
		31.528128, 28.392208, 32.759682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703890, 27.546906, 32.755741>,  <32.123928, 28.057938, 32.607075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703890, 27.546906, 32.755741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.453281, 27.847157, 32.671810>,  <31.302916, 28.027308, 32.621452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.453281, 27.847157, 32.671810>,  <31.703890, 27.546906, 32.755741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453281, 27.847157, 32.671810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529462, -0.607454, -0.592174,
		-0.571962, -0.259915, 0.778013,
		-0.626522, 0.750629, -0.209826,
		31.265326, 28.072346, 32.608864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180851, 27.218998, 32.867588>,  <31.703890, 27.546906, 32.755741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180851, 27.218998, 32.867588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090651, 27.512125, 32.610798>,  <31.036530, 27.688002, 32.456722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090651, 27.512125, 32.610798>,  <31.180851, 27.218998, 32.867588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090651, 27.512125, 32.610798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561873, -0.636142, -0.528794,
		-0.795895, 0.241465, 0.555200,
		-0.225501, 0.732815, -0.641974,
		31.023001, 27.731970, 32.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549917, 27.098955, 32.741188>,  <31.180851, 27.218998, 32.867588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549917, 27.098955, 32.741188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645937, 27.353630, 32.448067>,  <30.703548, 27.506435, 32.272194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645937, 27.353630, 32.448067>,  <30.549917, 27.098955, 32.741188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645937, 27.353630, 32.448067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441633, -0.600613, -0.666501,
		-0.864486, 0.483626, 0.137005,
		0.240050, 0.636687, -0.732807,
		30.717953, 27.544636, 32.228226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935925, 27.257204, 32.464638>,  <30.549917, 27.098955, 32.741188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935925, 27.257204, 32.464638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.229429, 27.337847, 32.205116>,  <30.405533, 27.386232, 32.049404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.229429, 27.337847, 32.205116>,  <29.935925, 27.257204, 32.464638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229429, 27.337847, 32.205116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444135, -0.580326, -0.682616,
		-0.514139, 0.789035, -0.336281,
		0.733761, 0.201605, -0.648807,
		30.449558, 27.398329, 32.010475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725933, 27.990614, 32.362179>,  <29.935925, 27.257204, 32.464638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725933, 27.990614, 32.362179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328465, 27.950911, 32.341145>,  <29.089983, 27.927088, 32.328526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328465, 27.950911, 32.341145>,  <29.725933, 27.990614, 32.362179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328465, 27.950911, 32.341145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087840, 0.394903, 0.914514,
		-0.070009, 0.913345, -0.401123,
		-0.993671, -0.099259, -0.052581,
		29.030363, 27.921133, 32.325371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362131, 28.740236, 32.395790>,  <29.725933, 27.990614, 32.362179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362131, 28.740236, 32.395790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.096647, 28.462376, 32.506752>,  <28.937357, 28.295660, 32.573330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.096647, 28.462376, 32.506752>,  <29.362131, 28.740236, 32.395790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096647, 28.462376, 32.506752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187707, 0.513674, 0.837201,
		-0.724055, 0.503588, -0.471321,
		-0.663709, -0.694650, 0.277401,
		28.897535, 28.253981, 32.589973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833128, 29.159956, 32.706615>,  <29.362131, 28.740236, 32.395790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833128, 29.159956, 32.706615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.759296, 28.785480, 32.826267>,  <28.714998, 28.560795, 32.898060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.759296, 28.785480, 32.826267>,  <28.833128, 29.159956, 32.706615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759296, 28.785480, 32.826267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114645, 0.322793, 0.939500,
		-0.976108, 0.139117, -0.166910,
		-0.184578, -0.936190, 0.299132,
		28.703922, 28.504623, 32.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225193, 29.170925, 32.978512>,  <28.833128, 29.159956, 32.706615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225193, 29.170925, 32.978512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.407701, 28.851194, 33.134918>,  <28.517206, 28.659355, 33.228764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.407701, 28.851194, 33.134918>,  <28.225193, 29.170925, 32.978512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407701, 28.851194, 33.134918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017462, 0.447380, 0.894173,
		-0.889670, -0.401156, 0.218084,
		0.456269, -0.799328, 0.391016,
		28.544582, 28.611397, 33.252224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019810, 29.118303, 33.628147>,  <28.225193, 29.170925, 32.978512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019810, 29.118303, 33.628147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.336517, 28.875530, 33.655685>,  <28.526541, 28.729866, 33.672207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.336517, 28.875530, 33.655685>,  <28.019810, 29.118303, 33.628147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336517, 28.875530, 33.655685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225336, 0.394979, 0.890626,
		-0.567740, -0.689656, 0.449495,
		0.791767, -0.606931, 0.068841,
		28.574047, 28.693451, 33.676338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044434, 28.917845, 34.311768>,  <28.019810, 29.118303, 33.628147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044434, 28.917845, 34.311768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.413023, 28.865154, 34.165600>,  <28.634176, 28.833540, 34.077900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.413023, 28.865154, 34.165600>,  <28.044434, 28.917845, 34.311768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413023, 28.865154, 34.165600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388271, 0.284968, 0.876378,
		-0.011309, -0.949443, 0.313737,
		0.921476, -0.131726, -0.365418,
		28.689466, 28.825636, 34.055973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494390, 28.533056, 34.852390>,  <28.044434, 28.917845, 34.311768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494390, 28.533056, 34.852390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752569, 28.724607, 34.614372>,  <28.907476, 28.839539, 34.471561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752569, 28.724607, 34.614372>,  <28.494390, 28.533056, 34.852390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752569, 28.724607, 34.614372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455434, 0.384118, 0.803140,
		0.613172, -0.789386, 0.029831,
		0.645445, 0.478877, -0.595044,
		28.946203, 28.868271, 34.435860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.547199, 30.612818, 28.094086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.942358, 30.674831, 28.095974>,  <30.179453, 30.712040, 28.097107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.942358, 30.674831, 28.095974>,  <29.547199, 30.612818, 28.094086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942358, 30.674831, 28.095974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097392, 0.596344, 0.796799,
		0.120715, -0.787616, 0.604226,
		0.987898, 0.155032, 0.004720,
		30.238728, 30.721342, 28.097389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702379, 30.612965, 28.759653>,  <29.547199, 30.612818, 28.094086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702379, 30.612965, 28.759653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.031086, 30.770952, 28.595360>,  <30.228310, 30.865746, 28.496784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.031086, 30.770952, 28.595360>,  <29.702379, 30.612965, 28.759653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031086, 30.770952, 28.595360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112947, 0.593600, 0.796795,
		0.558518, -0.701170, 0.443191,
		0.821767, 0.394967, -0.410732,
		30.277615, 30.889442, 28.472139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010818, 30.828451, 29.301592>,  <29.702379, 30.612965, 28.759653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010818, 30.828451, 29.301592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251888, 31.007135, 29.037096>,  <30.396530, 31.114346, 28.878399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251888, 31.007135, 29.037096>,  <30.010818, 30.828451, 29.301592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251888, 31.007135, 29.037096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308272, 0.633973, 0.709258,
		0.736039, -0.631292, 0.244371,
		0.602673, 0.446709, -0.661238,
		30.432690, 31.141148, 28.838724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733593, 30.934696, 29.578650>,  <30.010818, 30.828451, 29.301592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733593, 30.934696, 29.578650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673346, 31.208105, 29.292961>,  <30.637197, 31.372150, 29.121548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673346, 31.208105, 29.292961>,  <30.733593, 30.934696, 29.578650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673346, 31.208105, 29.292961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315973, 0.717850, 0.620365,
		0.936737, -0.132236, -0.324096,
		-0.150618, 0.683524, -0.714219,
		30.628160, 31.413162, 29.078695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363972, 31.206324, 29.372091>,  <30.733593, 30.934696, 29.578650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363972, 31.206324, 29.372091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083208, 31.484552, 29.310774>,  <30.914749, 31.651489, 29.273983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083208, 31.484552, 29.310774>,  <31.363972, 31.206324, 29.372091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083208, 31.484552, 29.310774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536465, 0.657852, 0.528616,
		0.468536, 0.288805, -0.834905,
		-0.701911, 0.695573, -0.153294,
		30.872635, 31.693224, 29.264786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642681, 31.941801, 29.541416>,  <31.363972, 31.206324, 29.372091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642681, 31.941801, 29.541416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256269, 32.045155, 29.539370>,  <31.024422, 32.107166, 29.538141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256269, 32.045155, 29.539370>,  <31.642681, 31.941801, 29.541416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256269, 32.045155, 29.539370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216060, 0.818351, 0.532559,
		0.141792, 0.513362, -0.846377,
		-0.966029, 0.258381, -0.005119,
		30.966461, 32.122669, 29.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734659, 32.628990, 29.732044>,  <31.642681, 31.941801, 29.541416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734659, 32.628990, 29.732044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343330, 32.570747, 29.790945>,  <31.108534, 32.535801, 29.826284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343330, 32.570747, 29.790945>,  <31.734659, 32.628990, 29.732044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343330, 32.570747, 29.790945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039776, 0.829941, 0.556432,
		-0.203232, 0.538513, -0.817741,
		-0.978323, -0.145611, 0.147250,
		31.049833, 32.527065, 29.835119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444376, 33.311951, 29.796719>,  <31.734659, 32.628990, 29.732044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444376, 33.311951, 29.796719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.183571, 33.057076, 29.961094>,  <31.027088, 32.904152, 30.059719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.183571, 33.057076, 29.961094>,  <31.444376, 33.311951, 29.796719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183571, 33.057076, 29.961094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173406, 0.652938, 0.737293,
		-0.738112, 0.409466, -0.536216,
		-0.652013, -0.637188, 0.410938,
		30.987967, 32.865917, 30.084375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873199, 33.763847, 29.931639>,  <31.444376, 33.311951, 29.796719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873199, 33.763847, 29.931639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856447, 33.447136, 30.175386>,  <30.846395, 33.257107, 30.321634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856447, 33.447136, 30.175386>,  <30.873199, 33.763847, 29.931639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856447, 33.447136, 30.175386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248985, 0.598932, 0.761109,
		-0.967601, -0.119849, -0.222225,
		-0.041879, -0.791780, 0.609368,
		30.843884, 33.209602, 30.358196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252707, 33.930984, 30.332088>,  <30.873199, 33.763847, 29.931639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252707, 33.930984, 30.332088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458534, 33.649055, 30.527411>,  <30.582031, 33.479897, 30.644604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458534, 33.649055, 30.527411>,  <30.252707, 33.930984, 30.332088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458534, 33.649055, 30.527411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116083, 0.506983, 0.854104,
		-0.849554, -0.496180, 0.179060,
		0.514570, -0.704822, 0.488307,
		30.612906, 33.437611, 30.673903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849653, 33.686584, 30.987398>,  <30.252707, 33.930984, 30.332088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849653, 33.686584, 30.987398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235836, 33.596840, 31.040392>,  <30.467546, 33.542992, 31.072187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235836, 33.596840, 31.040392>,  <29.849653, 33.686584, 30.987398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235836, 33.596840, 31.040392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042465, 0.366168, 0.929580,
		-0.257076, -0.903096, 0.343992,
		0.965458, -0.224365, 0.132483,
		30.525473, 33.529530, 31.080137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864569, 33.362530, 31.739737>,  <29.849653, 33.686584, 30.987398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864569, 33.362530, 31.739737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235491, 33.476166, 31.642256>,  <30.458044, 33.544350, 31.583767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235491, 33.476166, 31.642256>,  <29.864569, 33.362530, 31.739737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235491, 33.476166, 31.642256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128241, 0.370540, 0.919921,
		0.351645, -0.884303, 0.307172,
		0.927308, 0.284093, -0.243703,
		30.513683, 33.561394, 31.569145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709332, 32.805359, 32.188053>,  <29.864569, 33.362530, 31.739737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709332, 32.805359, 32.188053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345934, 32.749252, 32.345516>,  <29.127895, 32.715588, 32.439995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345934, 32.749252, 32.345516>,  <29.709332, 32.805359, 32.188053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345934, 32.749252, 32.345516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283300, -0.485784, -0.826895,
		0.307215, -0.862752, 0.401595,
		-0.908494, -0.140263, 0.393658,
		29.073385, 32.707172, 32.463612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533731, 32.161812, 32.058506>,  <29.709332, 32.805359, 32.188053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533731, 32.161812, 32.058506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183105, 32.342213, 32.125713>,  <28.972731, 32.450455, 32.166039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183105, 32.342213, 32.125713>,  <29.533731, 32.161812, 32.058506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183105, 32.342213, 32.125713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413627, -0.527447, -0.742100,
		-0.246070, -0.719995, 0.648889,
		-0.876563, 0.451007, 0.168020,
		28.920137, 32.477516, 32.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054407, 31.616331, 31.987749>,  <29.533731, 32.161812, 32.058506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054407, 31.616331, 31.987749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831741, 31.946604, 31.951147>,  <28.698143, 32.144768, 31.929186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831741, 31.946604, 31.951147>,  <29.054407, 31.616331, 31.987749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831741, 31.946604, 31.951147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577546, -0.463824, -0.671794,
		-0.597133, -0.321113, 0.735064,
		-0.556662, 0.825683, -0.091507,
		28.664742, 32.194309, 31.923695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280186, 31.425531, 32.126328>,  <29.054407, 31.616331, 31.987749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280186, 31.425531, 32.126328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307989, 31.736509, 31.876287>,  <28.324671, 31.923096, 31.726263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307989, 31.736509, 31.876287>,  <28.280186, 31.425531, 32.126328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307989, 31.736509, 31.876287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626252, -0.453749, -0.633972,
		-0.776516, 0.435536, 0.455336,
		0.069510, 0.777445, -0.625098,
		28.328842, 31.969742, 31.688759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583633, 31.495386, 31.876568>,  <28.280186, 31.425531, 32.126328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583633, 31.495386, 31.876568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818243, 31.702440, 31.627396>,  <27.959009, 31.826672, 31.477892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818243, 31.702440, 31.627396>,  <27.583633, 31.495386, 31.876568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818243, 31.702440, 31.627396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540891, -0.322132, -0.776961,
		-0.602847, 0.792645, 0.091045,
		0.586526, 0.517634, -0.622931,
		27.994202, 31.857731, 31.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056793, 31.760017, 31.398905>,  <27.583633, 31.495386, 31.876568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056793, 31.760017, 31.398905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415501, 31.765144, 31.221977>,  <27.630724, 31.768221, 31.115822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415501, 31.765144, 31.221977>,  <27.056793, 31.760017, 31.398905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415501, 31.765144, 31.221977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398166, -0.412738, -0.819214,
		-0.193059, 0.910760, -0.365028,
		0.896767, 0.012815, -0.442317,
		27.684530, 31.768990, 31.089283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887569, 32.029812, 30.721115>,  <27.056793, 31.760017, 31.398905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887569, 32.029812, 30.721115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238997, 31.838881, 30.714493>,  <27.449854, 31.724321, 30.710520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238997, 31.838881, 30.714493>,  <26.887569, 32.029812, 30.721115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238997, 31.838881, 30.714493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327096, -0.576072, -0.749099,
		0.348030, 0.663550, -0.662252,
		0.878569, -0.477329, -0.016554,
		27.502567, 31.695683, 30.709526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040668, 31.994495, 30.065952>,  <26.887569, 32.029812, 30.721115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040668, 31.994495, 30.065952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307999, 31.729834, 30.201925>,  <27.468397, 31.571037, 30.283508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307999, 31.729834, 30.201925>,  <27.040668, 31.994495, 30.065952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307999, 31.729834, 30.201925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053868, -0.498830, -0.865024,
		0.741914, 0.559808, -0.369024,
		0.668328, -0.661652, 0.339933,
		27.508497, 31.531338, 30.303905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545326, 31.926291, 29.510822>,  <27.040668, 31.994495, 30.065952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545326, 31.926291, 29.510822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559465, 31.582191, 29.714283>,  <27.567949, 31.375732, 29.836359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559465, 31.582191, 29.714283>,  <27.545326, 31.926291, 29.510822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559465, 31.582191, 29.714283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039576, -0.509774, -0.859398,
		0.998591, 0.010247, -0.052064,
		0.035348, -0.860247, 0.508650,
		27.570070, 31.324118, 29.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105984, 31.546268, 29.199568>,  <27.545326, 31.926291, 29.510822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105984, 31.546268, 29.199568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904287, 31.252028, 29.380514>,  <27.783270, 31.075483, 29.489082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904287, 31.252028, 29.380514>,  <28.105984, 31.546268, 29.199568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904287, 31.252028, 29.380514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092724, -0.566925, -0.818534,
		0.858571, -0.370793, 0.354074,
		-0.504240, -0.735601, 0.452365,
		27.753016, 31.031347, 29.516224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500559, 30.880968, 29.133446>,  <28.105984, 31.546268, 29.199568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500559, 30.880968, 29.133446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108150, 30.814362, 29.173183>,  <27.872705, 30.774397, 29.197027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108150, 30.814362, 29.173183>,  <28.500559, 30.880968, 29.133446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108150, 30.814362, 29.173183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002861, -0.499863, -0.866100,
		0.193880, -0.849946, 0.489900,
		-0.981021, -0.166518, 0.099346,
		27.813845, 30.764406, 29.202988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398951, 30.216793, 28.880655>,  <28.500559, 30.880968, 29.133446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398951, 30.216793, 28.880655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020555, 30.346336, 28.886646>,  <27.793518, 30.424063, 28.890242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020555, 30.346336, 28.886646>,  <28.398951, 30.216793, 28.880655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020555, 30.346336, 28.886646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190994, -0.519363, -0.832937,
		-0.261973, -0.790808, 0.553165,
		-0.945987, 0.323858, 0.014980,
		27.736759, 30.443495, 28.891140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081985, 29.610161, 28.899542>,  <28.398951, 30.216793, 28.880655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081985, 29.610161, 28.899542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851597, 29.903980, 28.756044>,  <27.713364, 30.080273, 28.669945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851597, 29.903980, 28.756044>,  <28.081985, 29.610161, 28.899542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851597, 29.903980, 28.756044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150861, -0.526821, -0.836481,
		-0.803430, -0.427667, 0.414247,
		-0.575970, 0.734548, -0.358745,
		27.678806, 30.124344, 28.648420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817251, 29.004936, 29.245876>,  <28.081985, 29.610161, 28.899542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817251, 29.004936, 29.245876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776104, 28.609201, 29.287111>,  <27.751415, 28.371759, 29.311852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776104, 28.609201, 29.287111>,  <27.817251, 29.004936, 29.245876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776104, 28.609201, 29.287111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515051, 0.035682, 0.856416,
		-0.850964, 0.141191, 0.505890,
		-0.102867, -0.989339, 0.103085,
		27.745243, 28.312399, 29.318037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518492, 28.850208, 29.932587>,  <27.817251, 29.004936, 29.245876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518492, 28.850208, 29.932587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694292, 28.506277, 29.828634>,  <27.799772, 28.299919, 29.766264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694292, 28.506277, 29.828634>,  <27.518492, 28.850208, 29.932587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694292, 28.506277, 29.828634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492512, -0.011277, 0.870232,
		-0.751181, -0.510460, 0.418519,
		0.439499, -0.859828, -0.259879,
		27.826141, 28.248329, 29.750671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358307, 28.430374, 30.467199>,  <27.518492, 28.850208, 29.932587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358307, 28.430374, 30.467199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669201, 28.232191, 30.312061>,  <27.855738, 28.113281, 30.218979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669201, 28.232191, 30.312061>,  <27.358307, 28.430374, 30.467199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669201, 28.232191, 30.312061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297591, -0.253639, 0.920384,
		-0.554385, -0.830775, -0.049693,
		0.777237, -0.495459, -0.387845,
		27.902372, 28.083553, 30.195707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414471, 27.809067, 30.887186>,  <27.358307, 28.430374, 30.467199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414471, 27.809067, 30.887186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772388, 27.850950, 30.713575>,  <27.987139, 27.876080, 30.609409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772388, 27.850950, 30.713575>,  <27.414471, 27.809067, 30.887186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772388, 27.850950, 30.713575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446475, -0.213123, 0.869045,
		-0.001505, -0.971398, -0.237450,
		0.894795, 0.104708, -0.434026,
		28.040827, 27.882362, 30.583368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800282, 27.211706, 31.073088>,  <27.414471, 27.809067, 30.887186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800282, 27.211706, 31.073088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078377, 27.482052, 30.975233>,  <28.245234, 27.644260, 30.916519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078377, 27.482052, 30.975233>,  <27.800282, 27.211706, 31.073088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078377, 27.482052, 30.975233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488547, -0.194687, 0.850541,
		0.527223, -0.710847, -0.465546,
		0.695240, 0.675865, -0.244638,
		28.286949, 27.684811, 30.901842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464592, 26.918711, 31.114145>,  <27.800282, 27.211706, 31.073088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464592, 26.918711, 31.114145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505014, 27.315006, 31.150425>,  <28.529268, 27.552784, 31.172194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505014, 27.315006, 31.150425>,  <28.464592, 26.918711, 31.114145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505014, 27.315006, 31.150425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512849, -0.129997, 0.848579,
		0.852510, -0.039239, -0.521236,
		0.101057, 0.990738, 0.090700,
		28.535332, 27.612228, 31.177635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895836, 26.960413, 31.689541>,  <28.464592, 26.918711, 31.114145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895836, 26.960413, 31.689541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787193, 27.341263, 31.633415>,  <28.722008, 27.569773, 31.599739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787193, 27.341263, 31.633415>,  <28.895836, 26.960413, 31.689541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787193, 27.341263, 31.633415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273107, 0.216052, 0.937408,
		0.922845, 0.216283, -0.318713,
		-0.271604, 0.952125, -0.140314,
		28.705711, 27.626900, 31.591320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488760, 27.380783, 31.893154>,  <28.895836, 26.960413, 31.689541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488760, 27.380783, 31.893154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152510, 27.596996, 31.906851>,  <28.950760, 27.726725, 31.915070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152510, 27.596996, 31.906851>,  <29.488760, 27.380783, 31.893154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152510, 27.596996, 31.906851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197670, 0.247320, 0.948556,
		0.504258, 0.804149, -0.314751,
		-0.840625, 0.540535, 0.034243,
		28.900322, 27.759157, 31.917124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506445, 27.574553, 31.200645>,  <29.488760, 27.380783, 31.893154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506445, 27.574553, 31.200645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889723, 27.479168, 31.263887>,  <30.119690, 27.421938, 31.301832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889723, 27.479168, 31.263887>,  <29.506445, 27.574553, 31.200645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889723, 27.479168, 31.263887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094996, -0.256099, -0.961972,
		0.269883, 0.936776, -0.222740,
		0.958196, -0.238461, 0.158107,
		30.177181, 27.407629, 31.311319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911354, 27.862099, 30.687887>,  <29.506445, 27.574553, 31.200645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911354, 27.862099, 30.687887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170465, 27.589956, 30.824999>,  <30.325932, 27.426670, 30.907267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170465, 27.589956, 30.824999>,  <29.911354, 27.862099, 30.687887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170465, 27.589956, 30.824999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123058, -0.350589, -0.928409,
		0.751825, 0.643584, -0.143380,
		0.647777, -0.680358, 0.342780,
		30.364799, 27.385849, 30.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482702, 27.813805, 30.216585>,  <29.911354, 27.862099, 30.687887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482702, 27.813805, 30.216585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577166, 27.480120, 30.415913>,  <30.633842, 27.279909, 30.535509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577166, 27.480120, 30.415913>,  <30.482702, 27.813805, 30.216585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577166, 27.480120, 30.415913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188028, -0.463901, -0.865703,
		0.953350, 0.298139, 0.047302,
		0.236156, -0.834212, 0.498318,
		30.648012, 27.229856, 30.565409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125843, 27.665302, 30.039938>,  <30.482702, 27.813805, 30.216585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125843, 27.665302, 30.039938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931770, 27.334738, 30.154230>,  <30.815327, 27.136398, 30.222805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931770, 27.334738, 30.154230>,  <31.125843, 27.665302, 30.039938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931770, 27.334738, 30.154230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187720, -0.417593, -0.889031,
		0.854025, -0.377705, 0.357743,
		-0.485183, -0.826411, 0.285732,
		30.786215, 27.086815, 30.239950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511639, 27.114305, 29.779249>,  <31.125843, 27.665302, 30.039938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511639, 27.114305, 29.779249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144484, 26.967768, 29.840273>,  <30.924191, 26.879845, 29.876886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144484, 26.967768, 29.840273>,  <31.511639, 27.114305, 29.779249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144484, 26.967768, 29.840273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068041, -0.524022, -0.848982,
		0.390966, -0.768889, 0.505920,
		-0.917886, -0.366347, 0.152559,
		30.869118, 26.857864, 29.886040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535744, 26.527710, 29.376671>,  <31.511639, 27.114305, 29.779249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535744, 26.527710, 29.376671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149574, 26.571192, 29.471449>,  <30.917873, 26.597281, 29.528316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149574, 26.571192, 29.471449>,  <31.535744, 26.527710, 29.376671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149574, 26.571192, 29.471449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258273, -0.522300, -0.812710,
		0.035413, -0.845805, 0.532315,
		-0.965423, 0.108702, 0.236945,
		30.859947, 26.603802, 29.542532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166950, 25.846073, 29.323406>,  <31.535744, 26.527710, 29.376671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166950, 25.846073, 29.323406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882420, 26.126900, 29.310022>,  <30.711702, 26.295395, 29.301992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882420, 26.126900, 29.310022>,  <31.166950, 25.846073, 29.323406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882420, 26.126900, 29.310022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278184, -0.324932, -0.903899,
		-0.645468, -0.633658, 0.426436,
		-0.711326, 0.702066, -0.033460,
		30.669022, 26.337519, 29.299984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531496, 25.514797, 29.142620>,  <31.166950, 25.846073, 29.323406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531496, 25.514797, 29.142620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507145, 25.899008, 29.034039>,  <30.492535, 26.129534, 28.968889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507145, 25.899008, 29.034039>,  <30.531496, 25.514797, 29.142620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507145, 25.899008, 29.034039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226357, -0.278159, -0.933483,
		-0.972140, 0.004618, 0.234355,
		-0.060877, 0.960524, -0.271455,
		30.488882, 26.187164, 28.952602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960239, 25.568241, 28.737474>,  <30.531496, 25.514797, 29.142620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960239, 25.568241, 28.737474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158045, 25.902298, 28.641142>,  <30.276728, 26.102732, 28.583344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158045, 25.902298, 28.641142>,  <29.960239, 25.568241, 28.737474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158045, 25.902298, 28.641142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139224, -0.197392, -0.970388,
		-0.857948, 0.513397, 0.018659,
		0.494512, 0.835140, -0.240829,
		30.306398, 26.152840, 28.568893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.806313, 33.730770, 42.107742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972961, 33.962387, 41.827415>,  <35.072948, 34.101357, 41.659222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972961, 33.962387, 41.827415>,  <34.806313, 33.730770, 42.107742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972961, 33.962387, 41.827415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157766, -0.713152, -0.683027,
		-0.895287, 0.395126, -0.205759,
		0.416619, 0.579043, -0.700812,
		35.097946, 34.136101, 41.617172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280487, 33.803032, 41.558456>,  <34.806313, 33.730770, 42.107742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280487, 33.803032, 41.558456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641994, 33.883415, 41.407291>,  <34.858898, 33.931644, 41.316593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641994, 33.883415, 41.407291>,  <34.280487, 33.803032, 41.558456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641994, 33.883415, 41.407291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197641, -0.587235, -0.784916,
		-0.379664, 0.784073, -0.491004,
		0.903766, 0.200962, -0.377917,
		34.913124, 33.943703, 41.293915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157948, 33.965359, 40.874809>,  <34.280487, 33.803032, 41.558456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157948, 33.965359, 40.874809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547169, 33.874214, 40.860641>,  <34.780701, 33.819527, 40.852142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547169, 33.874214, 40.860641>,  <34.157948, 33.965359, 40.874809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547169, 33.874214, 40.860641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170927, -0.609590, -0.774070,
		0.154792, 0.759262, -0.632108,
		0.973048, -0.227864, -0.035419,
		34.839085, 33.805855, 40.850018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369560, 34.121815, 40.287544>,  <34.157948, 33.965359, 40.874809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369560, 34.121815, 40.287544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608391, 33.837311, 40.435932>,  <34.751690, 33.666611, 40.524963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608391, 33.837311, 40.435932>,  <34.369560, 34.121815, 40.287544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608391, 33.837311, 40.435932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293696, -0.624159, -0.723994,
		0.746490, 0.323325, -0.581561,
		0.597072, -0.711257, 0.370969,
		34.787514, 33.623932, 40.547222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730171, 33.838337, 39.702389>,  <34.369560, 34.121815, 40.287544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730171, 33.838337, 39.702389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735661, 33.572075, 40.000843>,  <34.738953, 33.412319, 40.179916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735661, 33.572075, 40.000843>,  <34.730171, 33.838337, 39.702389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735661, 33.572075, 40.000843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365616, -0.697869, -0.615876,
		0.930665, -0.264349, -0.252948,
		0.013719, -0.665656, 0.746132,
		34.739777, 33.372379, 40.224682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944820, 33.234459, 39.358837>,  <34.730171, 33.838337, 39.702389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944820, 33.234459, 39.358837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814911, 33.103745, 39.713852>,  <34.736965, 33.025314, 39.926861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814911, 33.103745, 39.713852>,  <34.944820, 33.234459, 39.358837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814911, 33.103745, 39.713852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316762, -0.846633, -0.427638,
		0.891169, -0.420026, 0.171452,
		-0.324776, -0.326789, 0.887541,
		34.717480, 33.005707, 39.980114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241764, 32.525387, 39.468243>,  <34.944820, 33.234459, 39.358837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241764, 32.525387, 39.468243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898457, 32.572800, 39.667976>,  <34.692474, 32.601246, 39.787815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898457, 32.572800, 39.667976>,  <35.241764, 32.525387, 39.468243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898457, 32.572800, 39.667976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366288, -0.822970, -0.434227,
		0.359465, -0.555580, 0.749744,
		-0.858264, 0.118533, 0.499331,
		34.640976, 32.608360, 39.817776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011490, 31.785477, 39.602783>,  <35.241764, 32.525387, 39.468243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011490, 31.785477, 39.602783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708145, 32.034580, 39.679783>,  <34.526138, 32.184044, 39.725983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708145, 32.034580, 39.679783>,  <35.011490, 31.785477, 39.602783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708145, 32.034580, 39.679783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648977, -0.693764, -0.312284,
		-0.060930, -0.361751, 0.930281,
		-0.758364, 0.622758, 0.192497,
		34.480637, 32.221409, 39.737534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481510, 31.332087, 39.831146>,  <35.011490, 31.785477, 39.602783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481510, 31.332087, 39.831146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281593, 31.656305, 39.709023>,  <34.161644, 31.850836, 39.635746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281593, 31.656305, 39.709023>,  <34.481510, 31.332087, 39.831146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281593, 31.656305, 39.709023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407482, -0.531092, -0.742899,
		-0.764304, -0.246889, 0.595722,
		-0.499796, 0.810547, -0.305313,
		34.131653, 31.899469, 39.617428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767487, 31.106121, 39.702248>,  <34.481510, 31.332087, 39.831146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767487, 31.106121, 39.702248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770004, 31.450552, 39.498875>,  <33.771515, 31.657209, 39.376850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770004, 31.450552, 39.498875>,  <33.767487, 31.106121, 39.702248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770004, 31.450552, 39.498875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475931, -0.444588, -0.758836,
		-0.879460, 0.246757, 0.407015,
		0.006294, 0.861076, -0.508437,
		33.771893, 31.708876, 39.346344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187820, 31.259562, 39.529804>,  <33.767487, 31.106121, 39.702248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187820, 31.259562, 39.529804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396954, 31.460266, 39.254158>,  <33.522434, 31.580688, 39.088768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396954, 31.460266, 39.254158>,  <33.187820, 31.259562, 39.529804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396954, 31.460266, 39.254158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405312, -0.564855, -0.718792,
		-0.749915, 0.655113, -0.091952,
		0.522829, 0.501763, -0.689118,
		33.553802, 31.610796, 39.047424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689011, 31.286503, 38.989796>,  <33.187820, 31.259562, 39.529804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689011, 31.286503, 38.989796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046345, 31.343790, 38.819412>,  <33.260746, 31.378162, 38.717182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046345, 31.343790, 38.819412>,  <32.689011, 31.286503, 38.989796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046345, 31.343790, 38.819412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288875, -0.543064, -0.788437,
		-0.344237, 0.827388, -0.443768,
		0.893338, 0.143216, -0.425954,
		33.314346, 31.386755, 38.691628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984100, 31.485226, 39.008862>,  <32.689011, 31.286503, 38.989796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984100, 31.485226, 39.008862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634003, 31.355423, 39.152325>,  <31.423944, 31.277540, 39.238403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634003, 31.355423, 39.152325>,  <31.984100, 31.485226, 39.008862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634003, 31.355423, 39.152325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117196, 0.577149, 0.808186,
		-0.469264, 0.749395, -0.467116,
		-0.875246, -0.324509, 0.358661,
		31.371429, 31.258070, 39.259922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512590, 32.068638, 39.145531>,  <31.984100, 31.485226, 39.008862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512590, 32.068638, 39.145531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383392, 31.768862, 39.376705>,  <31.305874, 31.588997, 39.515411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383392, 31.768862, 39.376705>,  <31.512590, 32.068638, 39.145531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383392, 31.768862, 39.376705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176823, 0.552129, 0.814793,
		-0.929735, 0.365367, -0.045817,
		-0.322995, -0.749440, 0.577939,
		31.286493, 31.544029, 39.550087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076122, 32.422810, 39.671844>,  <31.512590, 32.068638, 39.145531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076122, 32.422810, 39.671844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149925, 32.067108, 39.839264>,  <31.194208, 31.853687, 39.939716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149925, 32.067108, 39.839264>,  <31.076122, 32.422810, 39.671844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149925, 32.067108, 39.839264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170159, 0.448336, 0.877520,
		-0.967989, -0.090690, 0.234036,
		0.184509, -0.889253, 0.418552,
		31.205278, 31.800333, 39.964828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688284, 32.477741, 40.234165>,  <31.076122, 32.422810, 39.671844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688284, 32.477741, 40.234165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953487, 32.186573, 40.304089>,  <31.112610, 32.011871, 40.346043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953487, 32.186573, 40.304089>,  <30.688284, 32.477741, 40.234165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953487, 32.186573, 40.304089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266598, 0.447786, 0.853471,
		-0.699532, -0.519255, 0.490947,
		0.663008, -0.727916, 0.174809,
		31.152390, 31.968199, 40.356533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559969, 32.254326, 40.919994>,  <30.688284, 32.477741, 40.234165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559969, 32.254326, 40.919994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935715, 32.134182, 40.853813>,  <31.161163, 32.062096, 40.814106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935715, 32.134182, 40.853813>,  <30.559969, 32.254326, 40.919994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935715, 32.134182, 40.853813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309491, 0.534829, 0.786240,
		-0.147671, -0.789772, 0.595360,
		0.939366, -0.300363, -0.165448,
		31.217525, 32.044071, 40.804180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819317, 32.037758, 41.534634>,  <30.559969, 32.254326, 40.919994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819317, 32.037758, 41.534634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147776, 32.111374, 41.318542>,  <31.344851, 32.155544, 41.188889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147776, 32.111374, 41.318542>,  <30.819317, 32.037758, 41.534634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147776, 32.111374, 41.318542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423230, 0.438667, 0.792747,
		0.382873, -0.879604, 0.282321,
		0.821148, 0.184035, -0.540229,
		31.394119, 32.166584, 41.156475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421944, 31.992868, 42.074039>,  <30.819317, 32.037758, 41.534634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421944, 31.992868, 42.074039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567051, 32.173317, 41.747875>,  <31.654116, 32.281586, 41.552177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567051, 32.173317, 41.747875>,  <31.421944, 31.992868, 42.074039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567051, 32.173317, 41.747875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495804, 0.647453, 0.578777,
		0.789037, -0.614244, 0.011207,
		0.362766, 0.451120, -0.815409,
		31.675880, 32.308651, 41.503254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251247, 32.272823, 42.181961>,  <31.421944, 31.992868, 42.074039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251247, 32.272823, 42.181961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072445, 32.479473, 41.889854>,  <31.965164, 32.603462, 41.714592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072445, 32.479473, 41.889854>,  <32.251247, 32.272823, 42.181961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072445, 32.479473, 41.889854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400348, 0.845581, 0.353150,
		0.799942, -0.134499, -0.584810,
		-0.447006, 0.516627, -0.730262,
		31.938343, 32.634460, 41.670776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630177, 32.751263, 42.204243>,  <32.251247, 32.272823, 42.181961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630177, 32.751263, 42.204243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366005, 32.924480, 41.958866>,  <32.207504, 33.028412, 41.811638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366005, 32.924480, 41.958866>,  <32.630177, 32.751263, 42.204243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366005, 32.924480, 41.958866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447183, 0.883104, 0.141966,
		0.603213, -0.180565, -0.776872,
		-0.660425, 0.433040, -0.613445,
		32.167877, 33.054394, 41.774834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954227, 33.102093, 41.708878>,  <32.630177, 32.751263, 42.204243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954227, 33.102093, 41.708878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603416, 33.294182, 41.703007>,  <32.392929, 33.409435, 41.699486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603416, 33.294182, 41.703007>,  <32.954227, 33.102093, 41.708878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603416, 33.294182, 41.703007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480442, 0.876761, -0.021594,
		0.002494, -0.025987, -0.999659,
		-0.877023, 0.480224, -0.014672,
		32.340309, 33.438248, 41.698605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149914, 33.735683, 41.434910>,  <32.954227, 33.102093, 41.708878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149914, 33.735683, 41.434910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785702, 33.829220, 41.571289>,  <32.567173, 33.885342, 41.653118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785702, 33.829220, 41.571289>,  <33.149914, 33.735683, 41.434910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785702, 33.829220, 41.571289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283471, 0.953421, 0.103113,
		-0.300958, 0.190537, -0.934409,
		-0.910532, 0.233845, 0.340951,
		32.512543, 33.899372, 41.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921532, 34.303139, 40.973267>,  <33.149914, 33.735683, 41.434910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921532, 34.303139, 40.973267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717495, 34.349167, 41.314224>,  <32.595074, 34.376781, 41.518799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717495, 34.349167, 41.314224>,  <32.921532, 34.303139, 40.973267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717495, 34.349167, 41.314224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166548, 0.985469, -0.033364,
		-0.843843, 0.124945, -0.521841,
		-0.510089, 0.115066, 0.852390,
		32.564468, 34.383686, 41.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707355, 34.915096, 40.943279>,  <32.921532, 34.303139, 40.973267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707355, 34.915096, 40.943279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657448, 34.834763, 41.331936>,  <32.627502, 34.786560, 41.565132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657448, 34.834763, 41.331936>,  <32.707355, 34.915096, 40.943279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657448, 34.834763, 41.331936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183111, 0.957816, 0.221493,
		-0.975142, 0.205556, -0.082735,
		-0.124774, -0.200838, 0.971646,
		32.620014, 34.774509, 41.623428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202915, 35.368816, 41.140728>,  <32.707355, 34.915096, 40.943279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202915, 35.368816, 41.140728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464699, 35.249851, 41.418785>,  <32.621769, 35.178471, 41.585621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464699, 35.249851, 41.418785>,  <32.202915, 35.368816, 41.140728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464699, 35.249851, 41.418785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344310, 0.935759, 0.076198,
		-0.673148, 0.189476, 0.714822,
		0.654463, -0.297413, 0.695143,
		32.661037, 35.160625, 41.627327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192551, 35.987328, 41.616722>,  <32.202915, 35.368816, 41.140728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192551, 35.987328, 41.616722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505558, 35.754673, 41.705593>,  <32.693363, 35.615082, 41.758915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505558, 35.754673, 41.705593>,  <32.192551, 35.987328, 41.616722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505558, 35.754673, 41.705593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550943, 0.813070, 0.188091,
		-0.290050, -0.024775, 0.956691,
		0.782517, -0.581638, 0.222181,
		32.740314, 35.580181, 41.772247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790825, 36.267132, 41.377476>,  <32.192551, 35.987328, 41.616722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790825, 36.267132, 41.377476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871094, 36.614197, 41.195538>,  <32.919254, 36.822437, 41.086376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871094, 36.614197, 41.195538>,  <32.790825, 36.267132, 41.377476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871094, 36.614197, 41.195538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557683, -0.280542, -0.781208,
		-0.805432, 0.410428, 0.427585,
		0.200674, 0.867666, -0.454846,
		32.931297, 36.874496, 41.059082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138912, 36.659523, 41.231922>,  <32.790825, 36.267132, 41.377476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138912, 36.659523, 41.231922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427372, 36.755527, 40.971970>,  <32.600449, 36.813129, 40.815998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427372, 36.755527, 40.971970>,  <32.138912, 36.659523, 41.231922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427372, 36.755527, 40.971970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583541, -0.295159, -0.756545,
		-0.373400, 0.924810, -0.072794,
		0.721147, 0.240015, -0.649877,
		32.643715, 36.827534, 40.777008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787918, 36.934864, 40.695114>,  <32.138912, 36.659523, 41.231922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787918, 36.934864, 40.695114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149216, 36.827255, 40.561382>,  <32.365993, 36.762691, 40.481144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149216, 36.827255, 40.561382>,  <31.787918, 36.934864, 40.695114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149216, 36.827255, 40.561382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414521, -0.345439, -0.841929,
		0.111004, 0.899055, -0.423530,
		0.903244, -0.269020, -0.334332,
		32.420189, 36.746548, 40.461082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670868, 36.937393, 40.057667>,  <31.787918, 36.934864, 40.695114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670868, 36.937393, 40.057667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006634, 36.721455, 40.082787>,  <32.208096, 36.591892, 40.097858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006634, 36.721455, 40.082787>,  <31.670868, 36.937393, 40.057667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006634, 36.721455, 40.082787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319433, -0.583545, -0.746618,
		0.439707, 0.606663, -0.662282,
		0.839417, -0.539848, 0.062800,
		32.258457, 36.559502, 40.101627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029690, 37.001659, 39.412624>,  <31.670868, 36.937393, 40.057667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029690, 37.001659, 39.412624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122921, 36.658649, 39.596066>,  <32.178860, 36.452843, 39.706131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122921, 36.658649, 39.596066>,  <32.029690, 37.001659, 39.412624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122921, 36.658649, 39.596066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287111, -0.511252, -0.810055,
		0.929107, 0.057140, -0.365370,
		0.233083, -0.857529, 0.458602,
		32.192844, 36.401390, 39.733646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470985, 36.669827, 38.983097>,  <32.029690, 37.001659, 39.412624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470985, 36.669827, 38.983097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348358, 36.367123, 39.214039>,  <32.274780, 36.185501, 39.352604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348358, 36.367123, 39.214039>,  <32.470985, 36.669827, 38.983097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348358, 36.367123, 39.214039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307950, -0.495081, -0.812442,
		0.900656, -0.426867, -0.081266,
		-0.306571, -0.756756, 0.577351,
		32.256386, 36.140095, 39.387245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597332, 36.113815, 38.580036>,  <32.470985, 36.669827, 38.983097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597332, 36.113815, 38.580036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365292, 35.940418, 38.855881>,  <32.226067, 35.836380, 39.021389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365292, 35.940418, 38.855881>,  <32.597332, 36.113815, 38.580036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365292, 35.940418, 38.855881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319942, -0.657318, -0.682327,
		0.749076, -0.616458, 0.242622,
		-0.580106, -0.433489, 0.689612,
		32.191261, 35.810371, 39.062763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652931, 35.377476, 38.501373>,  <32.597332, 36.113815, 38.580036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652931, 35.377476, 38.501373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311573, 35.433342, 38.702255>,  <32.106758, 35.466862, 38.822784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311573, 35.433342, 38.702255>,  <32.652931, 35.377476, 38.501373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311573, 35.433342, 38.702255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474395, -0.607362, -0.637229,
		0.216018, -0.782051, 0.584579,
		-0.853397, 0.139668, 0.502202,
		32.055553, 35.475243, 38.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391842, 34.730057, 38.564117>,  <32.652931, 35.377476, 38.501373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391842, 34.730057, 38.564117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082779, 34.979717, 38.610481>,  <31.897341, 35.129513, 38.638298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082779, 34.979717, 38.610481>,  <32.391842, 34.730057, 38.564117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082779, 34.979717, 38.610481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500957, -0.487325, -0.715232,
		-0.389926, -0.610697, 0.689208,
		-0.772658, 0.624151, 0.115912,
		31.850981, 35.166962, 38.645256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886387, 34.312710, 38.727161>,  <32.391842, 34.730057, 38.564117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886387, 34.312710, 38.727161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741882, 34.657494, 38.584888>,  <31.655180, 34.864365, 38.499523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741882, 34.657494, 38.584888>,  <31.886387, 34.312710, 38.727161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741882, 34.657494, 38.584888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320449, -0.472979, -0.820733,
		-0.875672, -0.182521, 0.447084,
		-0.361263, 0.861961, -0.355686,
		31.633503, 34.916080, 38.478184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073948, 34.254654, 38.603523>,  <31.886387, 34.312710, 38.727161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073948, 34.254654, 38.603523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.230886, 34.531113, 38.360748>,  <31.325050, 34.696987, 38.215084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.230886, 34.531113, 38.360748>,  <31.073948, 34.254654, 38.603523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230886, 34.531113, 38.360748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562569, -0.341738, -0.752815,
		-0.727722, 0.636811, 0.254738,
		0.392348, 0.691148, -0.606941,
		31.348591, 34.738457, 38.178665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474892, 34.441669, 38.183163>,  <31.073948, 34.254654, 38.603523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474892, 34.441669, 38.183163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793274, 34.580494, 37.984768>,  <30.984303, 34.663788, 37.865730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793274, 34.580494, 37.984768>,  <30.474892, 34.441669, 38.183163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793274, 34.580494, 37.984768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438568, -0.234164, -0.867655,
		-0.417272, 0.908139, -0.034174,
		0.795954, 0.347060, -0.495991,
		31.032061, 34.684612, 37.835972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105703, 34.690113, 37.592846>,  <30.474892, 34.441669, 38.183163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105703, 34.690113, 37.592846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497021, 34.674664, 37.511406>,  <30.731812, 34.665394, 37.462543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497021, 34.674664, 37.511406>,  <30.105703, 34.690113, 37.592846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497021, 34.674664, 37.511406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201192, -0.412468, -0.888478,
		-0.049664, 0.910153, -0.411284,
		0.978292, -0.038622, -0.203600,
		30.790508, 34.663078, 37.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140186, 35.067131, 36.942070>,  <30.105703, 34.690113, 37.592846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140186, 35.067131, 36.942070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466286, 34.844315, 37.005402>,  <30.661945, 34.710625, 37.043400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466286, 34.844315, 37.005402>,  <30.140186, 35.067131, 36.942070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466286, 34.844315, 37.005402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076636, -0.374778, -0.923942,
		0.574016, 0.741110, -0.348227,
		0.815250, -0.557044, 0.158333,
		30.710861, 34.677200, 37.052902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657057, 35.184795, 36.415108>,  <30.140186, 35.067131, 36.942070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657057, 35.184795, 36.415108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750931, 34.823227, 36.558128>,  <30.807255, 34.606285, 36.643940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750931, 34.823227, 36.558128>,  <30.657057, 35.184795, 36.415108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750931, 34.823227, 36.558128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129082, -0.393550, -0.910196,
		0.963463, 0.167454, -0.209040,
		0.234683, -0.903924, 0.357555,
		30.821337, 34.552052, 36.665394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301094, 34.949066, 36.004810>,  <30.657057, 35.184795, 36.415108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301094, 34.949066, 36.004810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156557, 34.616852, 36.174343>,  <31.069834, 34.417522, 36.276062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156557, 34.616852, 36.174343>,  <31.301094, 34.949066, 36.004810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156557, 34.616852, 36.174343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009202, -0.451346, -0.892302,
		0.932387, -0.326328, 0.155449,
		-0.361345, -0.830540, 0.423832,
		31.048153, 34.367691, 36.301491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696304, 34.433079, 35.743889>,  <31.301094, 34.949066, 36.004810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696304, 34.433079, 35.743889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358526, 34.255856, 35.864300>,  <31.155859, 34.149521, 35.936546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358526, 34.255856, 35.864300>,  <31.696304, 34.433079, 35.743889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358526, 34.255856, 35.864300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081010, -0.449883, -0.889406,
		0.529484, -0.775439, 0.344008,
		-0.844443, -0.443058, 0.301024,
		31.105194, 34.122940, 35.954605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621695, 33.798485, 35.380005>,  <31.696304, 34.433079, 35.743889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621695, 33.798485, 35.380005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242418, 33.859394, 35.491539>,  <31.014853, 33.895939, 35.558460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242418, 33.859394, 35.491539>,  <31.621695, 33.798485, 35.380005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242418, 33.859394, 35.491539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317223, -0.502111, -0.804521,
		0.017501, -0.851292, 0.524401,
		-0.948189, 0.152272, 0.278837,
		30.957962, 33.905075, 35.575191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186813, 33.177212, 35.227295>,  <31.621695, 33.798485, 35.380005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186813, 33.177212, 35.227295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901737, 33.454922, 35.267414>,  <30.730692, 33.621548, 35.291485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901737, 33.454922, 35.267414>,  <31.186813, 33.177212, 35.227295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901737, 33.454922, 35.267414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481461, -0.380150, -0.789735,
		-0.510165, -0.611123, 0.605195,
		-0.712690, 0.694273, 0.100293,
		30.687931, 33.663204, 35.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606691, 32.819317, 35.316017>,  <31.186813, 33.177212, 35.227295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606691, 32.819317, 35.316017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461714, 33.182564, 35.232155>,  <30.374727, 33.400513, 35.181839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461714, 33.182564, 35.232155>,  <30.606691, 32.819317, 35.316017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461714, 33.182564, 35.232155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591899, -0.398043, -0.700869,
		-0.719923, -0.129933, 0.681783,
		-0.362445, 0.908118, -0.209653,
		30.352980, 33.454998, 35.169258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928982, 32.734009, 35.277519>,  <30.606691, 32.819317, 35.316017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928982, 32.734009, 35.277519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970783, 33.080368, 35.081844>,  <29.995863, 33.288181, 34.964439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970783, 33.080368, 35.081844>,  <29.928982, 32.734009, 35.277519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970783, 33.080368, 35.081844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724492, -0.270689, -0.633907,
		-0.681315, 0.420656, 0.599048,
		0.104501, 0.865896, -0.489187,
		30.002134, 33.340137, 34.935089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247118, 33.054100, 35.086990>,  <29.928982, 32.734009, 35.277519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247118, 33.054100, 35.086990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489780, 33.239094, 34.828354>,  <29.635378, 33.350090, 34.673172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489780, 33.239094, 34.828354>,  <29.247118, 33.054100, 35.086990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489780, 33.239094, 34.828354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669594, -0.141143, -0.729194,
		-0.428503, 0.875321, 0.224052,
		0.606655, 0.462485, -0.646589,
		29.671778, 33.377838, 34.634377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830153, 33.376450, 34.718033>,  <29.247118, 33.054100, 35.086990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830153, 33.376450, 34.718033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.147825, 33.375477, 34.474964>,  <29.338428, 33.374893, 34.329121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.147825, 33.375477, 34.474964>,  <28.830153, 33.376450, 34.718033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147825, 33.375477, 34.474964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604421, -0.106596, -0.789502,
		-0.062853, 0.994300, -0.086129,
		0.794182, -0.002435, -0.607675,
		29.386080, 33.374748, 34.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573948, 33.727295, 34.116825>,  <28.830153, 33.376450, 34.718033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573948, 33.727295, 34.116825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.919451, 33.569878, 33.990940>,  <29.126753, 33.475426, 33.915409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.919451, 33.569878, 33.990940>,  <28.573948, 33.727295, 34.116825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919451, 33.569878, 33.990940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378781, -0.095183, -0.920579,
		0.332333, 0.914365, -0.231282,
		0.863759, -0.393544, -0.314712,
		29.178579, 33.451813, 33.896526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815384, 34.083111, 33.493469>,  <28.573948, 33.727295, 34.116825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815384, 34.083111, 33.493469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962301, 33.711735, 33.515697>,  <29.050451, 33.488907, 33.529034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962301, 33.711735, 33.515697>,  <28.815384, 34.083111, 33.493469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962301, 33.711735, 33.515697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444448, -0.227680, -0.866388,
		0.817044, 0.293522, -0.496270,
		0.367295, -0.928443, 0.055570,
		29.072489, 33.433201, 33.532368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123934, 33.970444, 32.806686>,  <28.815384, 34.083111, 33.493469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123934, 33.970444, 32.806686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095314, 33.603451, 32.963203>,  <29.078142, 33.383255, 33.057114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095314, 33.603451, 32.963203>,  <29.123934, 33.970444, 32.806686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095314, 33.603451, 32.963203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347659, -0.344760, -0.871937,
		0.934887, -0.198423, -0.294303,
		-0.071549, -0.917480, 0.391295,
		29.073849, 33.328205, 33.080593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478968, 33.539558, 32.357552>,  <29.123934, 33.970444, 32.806686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478968, 33.539558, 32.357552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216959, 33.310852, 32.555153>,  <29.059753, 33.173630, 32.673714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216959, 33.310852, 32.555153>,  <29.478968, 33.539558, 32.357552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216959, 33.310852, 32.555153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192414, -0.506008, -0.840793,
		0.730702, -0.645789, 0.221431,
		-0.655021, -0.571762, 0.494000,
		29.020452, 33.139324, 32.703354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190737, 33.319290, 32.364223>,  <29.478968, 33.539558, 32.357552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190737, 33.319290, 32.364223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447351, 33.530243, 32.141403>,  <30.601320, 33.656815, 32.007710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447351, 33.530243, 32.141403>,  <30.190737, 33.319290, 32.364223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447351, 33.530243, 32.141403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440402, 0.341362, 0.830373,
		0.628077, -0.778038, -0.013263,
		0.641534, 0.527379, -0.557050,
		30.639812, 33.688457, 31.974289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836454, 33.051971, 32.547489>,  <30.190737, 33.319290, 32.364223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836454, 33.051971, 32.547489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894279, 33.414661, 32.389023>,  <30.928974, 33.632275, 32.293941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894279, 33.414661, 32.389023>,  <30.836454, 33.051971, 32.547489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894279, 33.414661, 32.389023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589288, 0.242737, 0.770597,
		0.794884, -0.344857, -0.499232,
		0.144564, 0.906726, -0.396167,
		30.937649, 33.686680, 32.270172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451664, 33.213818, 32.830357>,  <30.836454, 33.051971, 32.547489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451664, 33.213818, 32.830357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319891, 33.570511, 32.706230>,  <31.240828, 33.784527, 32.631756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319891, 33.570511, 32.706230>,  <31.451664, 33.213818, 32.830357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319891, 33.570511, 32.706230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416254, 0.432161, 0.799981,
		0.847471, 0.134370, -0.513553,
		-0.329431, 0.891730, -0.310312,
		31.221062, 33.838028, 32.613136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051205, 33.616051, 32.601555>,  <31.451664, 33.213818, 32.830357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051205, 33.616051, 32.601555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755854, 33.867714, 32.698677>,  <31.578642, 34.018711, 32.756950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755854, 33.867714, 32.698677>,  <32.051205, 33.616051, 32.601555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755854, 33.867714, 32.698677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623830, 0.500447, 0.600324,
		0.256185, 0.594739, -0.762007,
		-0.738380, 0.629157, 0.242809,
		31.534340, 34.056461, 32.771519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261124, 34.319649, 32.460140>,  <32.051205, 33.616051, 32.601555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261124, 34.319649, 32.460140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958826, 34.352173, 32.720062>,  <31.777449, 34.371689, 32.876015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958826, 34.352173, 32.720062>,  <32.261124, 34.319649, 32.460140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958826, 34.352173, 32.720062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581804, 0.538834, 0.609231,
		-0.300596, 0.838478, -0.454528,
		-0.755742, 0.081313, 0.649801,
		31.732103, 34.376568, 32.915001>
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
