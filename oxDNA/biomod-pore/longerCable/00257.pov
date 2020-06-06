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
	<24.508747, 34.634628, 34.728745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232765, 34.837044, 34.935776>,  <24.067177, 34.958492, 35.059994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232765, 34.837044, 34.935776>,  <24.508747, 34.634628, 34.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232765, 34.837044, 34.935776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039630, 0.687553, -0.725052,
		-0.722767, -0.520764, -0.454326,
		-0.689955, 0.506038, 0.517579,
		24.025778, 34.988853, 35.091049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019354, 34.080330, 34.794880>,  <24.508747, 34.634628, 34.728745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019354, 34.080330, 34.794880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698475, 33.856297, 34.712139>,  <24.505947, 33.721878, 34.662495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698475, 33.856297, 34.712139>,  <25.019354, 34.080330, 34.794880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698475, 33.856297, 34.712139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537149, -0.525751, -0.659589,
		0.260675, -0.640228, 0.722604,
		-0.802197, -0.560084, -0.206848,
		24.457815, 33.688271, 34.650085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459932, 34.720692, 35.180378>,  <25.019354, 34.080330, 34.794880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459932, 34.720692, 35.180378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772013, 34.586056, 34.969479>,  <25.959261, 34.505276, 34.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772013, 34.586056, 34.969479>,  <25.459932, 34.720692, 35.180378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772013, 34.586056, 34.969479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122504, 0.908784, -0.398879,
		0.613416, 0.246615, 0.750267,
		0.780201, -0.336589, -0.527252,
		26.006073, 34.485081, 34.811302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905092, 35.249645, 35.274834>,  <25.459932, 34.720692, 35.180378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905092, 35.249645, 35.274834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065176, 35.047794, 34.968845>,  <26.161226, 34.926685, 34.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065176, 35.047794, 34.968845>,  <25.905092, 35.249645, 35.274834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065176, 35.047794, 34.968845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119806, 0.856384, -0.502248,
		0.908560, 0.109355, 0.403188,
		0.400207, -0.504627, -0.764974,
		26.185238, 34.896408, 34.739353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601118, 35.626263, 35.010815>,  <25.905092, 35.249645, 35.274834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601118, 35.626263, 35.010815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420444, 35.434010, 34.710155>,  <26.312040, 35.318657, 34.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420444, 35.434010, 34.710155>,  <26.601118, 35.626263, 35.010815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420444, 35.434010, 34.710155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142425, 0.792833, -0.592562,
		0.880736, -0.374705, -0.289656,
		-0.451685, -0.480636, -0.751644,
		26.284939, 35.289818, 34.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023148, 35.808247, 34.494644>,  <26.601118, 35.626263, 35.010815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023148, 35.808247, 34.494644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656923, 35.717358, 34.361904>,  <26.437189, 35.662827, 34.282261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656923, 35.717358, 34.361904>,  <27.023148, 35.808247, 34.494644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656923, 35.717358, 34.361904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008092, 0.835357, -0.549647,
		0.402101, -0.500549, -0.766658,
		-0.915559, -0.227218, -0.331847,
		26.382256, 35.649193, 34.262348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097315, 35.839947, 33.809185>,  <27.023148, 35.808247, 34.494644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097315, 35.839947, 33.809185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737040, 35.919727, 33.963577>,  <26.520874, 35.967594, 34.056213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737040, 35.919727, 33.963577>,  <27.097315, 35.839947, 33.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737040, 35.919727, 33.963577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025281, 0.862831, -0.504859,
		-0.433729, -0.464479, -0.772100,
		-0.900689, 0.199453, 0.385977,
		26.466833, 35.979565, 34.079369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792393, 36.223454, 33.336227>,  <27.097315, 35.839947, 33.809185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792393, 36.223454, 33.336227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577852, 36.304970, 33.663834>,  <26.449127, 36.353882, 33.860397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577852, 36.304970, 33.663834>,  <26.792393, 36.223454, 33.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577852, 36.304970, 33.663834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216510, 0.904713, -0.366903,
		-0.815751, -0.374115, -0.441122,
		-0.536353, 0.203794, 0.819020,
		26.416946, 36.366108, 33.909538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174040, 36.512623, 33.023975>,  <26.792393, 36.223454, 33.336227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174040, 36.512623, 33.023975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193468, 36.615543, 33.410019>,  <26.205126, 36.677296, 33.641644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193468, 36.615543, 33.410019>,  <26.174040, 36.512623, 33.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193468, 36.615543, 33.410019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138352, 0.958668, -0.248625,
		-0.989191, -0.121448, 0.082163,
		0.048572, 0.257305, 0.965109,
		26.208040, 36.692734, 33.699551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622784, 36.868431, 33.040253>,  <26.174040, 36.512623, 33.023975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622784, 36.868431, 33.040253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852470, 36.979454, 33.348339>,  <25.990282, 37.046070, 33.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852470, 36.979454, 33.348339>,  <25.622784, 36.868431, 33.040253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852470, 36.979454, 33.348339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001633, 0.941164, -0.337945,
		-0.818700, 0.192796, 0.540888,
		0.574219, 0.277559, 0.770217,
		26.024736, 37.062721, 33.579403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245707, 37.483994, 33.371201>,  <25.622784, 36.868431, 33.040253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245707, 37.483994, 33.371201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620378, 37.519848, 33.506611>,  <25.845181, 37.541359, 33.587856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620378, 37.519848, 33.506611>,  <25.245707, 37.483994, 33.371201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620378, 37.519848, 33.506611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040808, 0.932162, -0.359735,
		-0.347807, 0.350770, 0.869477,
		0.936678, 0.089636, 0.338526,
		25.901382, 37.546738, 33.608170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341766, 38.211922, 33.616730>,  <25.245707, 37.483994, 33.371201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341766, 38.211922, 33.616730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691385, 38.036613, 33.532864>,  <25.901157, 37.931427, 33.482544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691385, 38.036613, 33.532864>,  <25.341766, 38.211922, 33.616730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691385, 38.036613, 33.532864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318724, 0.842963, -0.433391,
		0.366680, 0.311981, 0.876478,
		0.874049, -0.438270, -0.209662,
		25.953600, 37.905132, 33.469963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763948, 38.727299, 33.493320>,  <25.341766, 38.211922, 33.616730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763948, 38.727299, 33.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962635, 38.427082, 33.318981>,  <26.081846, 38.246952, 33.214378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962635, 38.427082, 33.318981>,  <25.763948, 38.727299, 33.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962635, 38.427082, 33.318981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496201, 0.657590, -0.566886,
		0.712080, 0.065312, 0.699053,
		0.496715, -0.750539, -0.435850,
		26.111650, 38.201920, 33.188225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589949, 38.653622, 33.467148>,  <25.763948, 38.727299, 33.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589949, 38.653622, 33.467148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405762, 38.496346, 33.148811>,  <26.295250, 38.401981, 32.957809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405762, 38.496346, 33.148811>,  <26.589949, 38.653622, 33.467148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405762, 38.496346, 33.148811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312946, 0.767081, -0.560046,
		0.830682, -0.506941, -0.230171,
		-0.460470, -0.393189, -0.795846,
		26.267620, 38.378387, 32.910057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118397, 38.467861, 32.968136>,  <26.589949, 38.653622, 33.467148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118397, 38.467861, 32.968136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753647, 38.569874, 32.839485>,  <26.534798, 38.631081, 32.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753647, 38.569874, 32.839485>,  <27.118397, 38.467861, 32.968136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753647, 38.569874, 32.839485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409402, 0.621516, -0.667912,
		0.029554, -0.740726, -0.671157,
		-0.911875, 0.255033, -0.321624,
		26.480083, 38.646385, 32.742996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049292, 37.842178, 33.329575>,  <27.118397, 38.467861, 32.968136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049292, 37.842178, 33.329575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722469, 37.928215, 33.543549>,  <26.526375, 37.979836, 33.671932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722469, 37.928215, 33.543549>,  <27.049292, 37.842178, 33.329575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722469, 37.928215, 33.543549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125104, -0.971841, 0.199687,
		0.562821, 0.096234, 0.820958,
		-0.817057, 0.215093, 0.534933,
		26.477352, 37.992744, 33.704029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049023, 37.787560, 34.110275>,  <27.049292, 37.842178, 33.329575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049023, 37.787560, 34.110275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689339, 37.690845, 33.964420>,  <26.473528, 37.632816, 33.876907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689339, 37.690845, 33.964420>,  <27.049023, 37.787560, 34.110275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689339, 37.690845, 33.964420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100228, -0.925097, 0.366265,
		-0.425881, 0.292803, 0.856091,
		-0.899211, -0.241790, -0.364634,
		26.419575, 37.618309, 33.855030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854937, 37.347267, 34.609138>,  <27.049023, 37.787560, 34.110275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854937, 37.347267, 34.609138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611982, 37.276909, 34.299263>,  <26.466209, 37.234692, 34.113338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611982, 37.276909, 34.299263>,  <26.854937, 37.347267, 34.609138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611982, 37.276909, 34.299263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179629, -0.919511, 0.349619,
		-0.773831, 0.351510, 0.526902,
		-0.607387, -0.175899, -0.774687,
		26.429766, 37.224140, 34.066856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296669, 37.073696, 34.933704>,  <26.854937, 37.347267, 34.609138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296669, 37.073696, 34.933704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252541, 36.967079, 34.550709>,  <26.226063, 36.903111, 34.320911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252541, 36.967079, 34.550709>,  <26.296669, 37.073696, 34.933704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252541, 36.967079, 34.550709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285011, -0.914427, 0.287389,
		-0.952155, 0.304600, 0.024915,
		-0.110321, -0.266538, -0.957490,
		26.219444, 36.887119, 34.263462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597082, 36.718269, 34.889343>,  <26.296669, 37.073696, 34.933704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597082, 36.718269, 34.889343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837477, 36.609264, 34.588795>,  <25.981714, 36.543861, 34.408466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837477, 36.609264, 34.588795>,  <25.597082, 36.718269, 34.889343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837477, 36.609264, 34.588795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205306, -0.961171, 0.184390,
		-0.772441, 0.043444, -0.633599,
		0.600987, -0.272512, -0.751367,
		26.017773, 36.527512, 34.363384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004023, 36.397125, 35.267033>,  <25.597082, 36.718269, 34.889343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004023, 36.397125, 35.267033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855068, 36.663670, 35.525425>,  <24.765696, 36.823597, 35.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855068, 36.663670, 35.525425>,  <25.004023, 36.397125, 35.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855068, 36.663670, 35.525425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215025, 0.739050, -0.638411,
		-0.902824, -0.098834, -0.418498,
		-0.372388, 0.666361, 0.645981,
		24.743351, 36.863579, 35.719219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216850, 36.223000, 34.530495>,  <25.004023, 36.397125, 35.267033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216850, 36.223000, 34.530495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593525, 36.163620, 34.409702>,  <25.819529, 36.127991, 34.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593525, 36.163620, 34.409702>,  <25.216850, 36.223000, 34.530495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593525, 36.163620, 34.409702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127601, -0.987936, 0.087749,
		-0.311364, -0.044099, -0.949267,
		0.941685, -0.148450, -0.301981,
		25.876030, 36.119083, 34.319107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240765, 35.640099, 34.036118>,  <25.216850, 36.223000, 34.530495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240765, 35.640099, 34.036118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586517, 35.649197, 33.835190>,  <25.793968, 35.654655, 33.714634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586517, 35.649197, 33.835190>,  <25.240765, 35.640099, 34.036118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586517, 35.649197, 33.835190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329440, -0.780328, 0.531562,
		-0.379886, -0.624957, -0.681994,
		0.864382, 0.022743, -0.502321,
		25.845833, 35.656021, 33.684494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459822, 34.903374, 33.763390>,  <25.240765, 35.640099, 34.036118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459822, 34.903374, 33.763390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765163, 35.148296, 33.845722>,  <25.948368, 35.295250, 33.895123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765163, 35.148296, 33.845722>,  <25.459822, 34.903374, 33.763390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765163, 35.148296, 33.845722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411612, -0.706623, 0.575552,
		0.497859, -0.354629, -0.791438,
		0.763355, 0.612309, 0.205829,
		25.994169, 35.331989, 33.907471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985098, 34.522049, 33.500290>,  <25.459822, 34.903374, 33.763390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985098, 34.522049, 33.500290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079960, 34.763901, 33.804443>,  <26.136877, 34.909012, 33.986935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079960, 34.763901, 33.804443>,  <25.985098, 34.522049, 33.500290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079960, 34.763901, 33.804443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237454, -0.795050, 0.558131,
		0.942005, 0.048194, -0.332119,
		0.237153, 0.604626, 0.760385,
		26.151106, 34.945290, 34.032558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583178, 34.187359, 33.757046>,  <25.985098, 34.522049, 33.500290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583178, 34.187359, 33.757046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462582, 34.418751, 34.060219>,  <26.390224, 34.557587, 34.242123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462582, 34.418751, 34.060219>,  <26.583178, 34.187359, 33.757046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462582, 34.418751, 34.060219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268128, -0.711407, 0.649621,
		0.914992, 0.399079, 0.059378,
		-0.301492, 0.578477, 0.757936,
		26.372133, 34.592293, 34.287601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122471, 34.124298, 34.245274>,  <26.583178, 34.187359, 33.757046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122471, 34.124298, 34.245274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785925, 34.222446, 34.437897>,  <26.583998, 34.281334, 34.553471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785925, 34.222446, 34.437897>,  <27.122471, 34.124298, 34.245274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785925, 34.222446, 34.437897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143924, -0.757111, 0.637235,
		0.520953, 0.605455, 0.601692,
		-0.841364, 0.245371, 0.481559,
		26.533516, 34.296059, 34.582363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167315, 34.444077, 34.928604>,  <27.122471, 34.124298, 34.245274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167315, 34.444077, 34.928604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827784, 34.235390, 34.894421>,  <26.624065, 34.110176, 34.873909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827784, 34.235390, 34.894421>,  <27.167315, 34.444077, 34.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827784, 34.235390, 34.894421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281489, -0.582842, 0.762272,
		-0.447502, 0.622981, 0.641589,
		-0.848826, -0.521719, -0.085461,
		26.573135, 34.078873, 34.868782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631424, 34.170856, 35.433861>,  <27.167315, 34.444077, 34.928604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631424, 34.170856, 35.433861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292974, 34.043297, 35.604683>,  <27.089905, 33.966763, 35.707176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292974, 34.043297, 35.604683>,  <27.631424, 34.170856, 35.433861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292974, 34.043297, 35.604683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233146, -0.499077, -0.834605,
		0.479289, -0.805746, 0.347932,
		-0.846124, -0.318898, 0.427058,
		27.039137, 33.947628, 35.732800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566578, 33.419857, 35.395008>,  <27.631424, 34.170856, 35.433861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566578, 33.419857, 35.395008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200916, 33.581738, 35.404289>,  <26.981520, 33.678864, 35.409859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200916, 33.581738, 35.404289>,  <27.566578, 33.419857, 35.395008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200916, 33.581738, 35.404289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291266, -0.615965, -0.731950,
		-0.281927, -0.675875, 0.680963,
		-0.914156, 0.404698, 0.023202,
		26.926670, 33.703148, 35.411251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400726, 32.892860, 34.874126>,  <27.566578, 33.419857, 35.395008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400726, 32.892860, 34.874126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543949, 32.737999, 35.213985>,  <27.629883, 32.645081, 35.417900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543949, 32.737999, 35.213985>,  <27.400726, 32.892860, 34.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543949, 32.737999, 35.213985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095648, -0.920405, -0.379086,
		0.928788, 0.054467, -0.366586,
		0.358056, -0.387154, 0.849652,
		27.651365, 32.621853, 35.468880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978285, 32.450378, 34.731899>,  <27.400726, 32.892860, 34.874126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978285, 32.450378, 34.731899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794994, 32.341873, 35.070473>,  <27.685020, 32.276772, 35.273617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794994, 32.341873, 35.070473>,  <27.978285, 32.450378, 34.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794994, 32.341873, 35.070473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132430, -0.920828, -0.366795,
		0.878913, -0.280169, 0.386027,
		-0.458228, -0.271260, 0.846431,
		27.657526, 32.260494, 35.324402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253105, 31.871134, 34.977230>,  <27.978285, 32.450378, 34.731899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253105, 31.871134, 34.977230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881876, 31.874353, 35.126156>,  <27.659138, 31.876286, 35.215511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881876, 31.874353, 35.126156>,  <28.253105, 31.871134, 34.977230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881876, 31.874353, 35.126156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125081, -0.948422, -0.291289,
		0.350766, -0.316907, 0.881211,
		-0.928072, 0.008048, 0.372313,
		27.603455, 31.876768, 35.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104546, 31.129587, 34.824371>,  <28.253105, 31.871134, 34.977230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104546, 31.129587, 34.824371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758972, 31.258688, 34.979004>,  <27.551628, 31.336149, 35.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758972, 31.258688, 34.979004>,  <28.104546, 31.129587, 34.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758972, 31.258688, 34.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453029, -0.833359, -0.316666,
		0.219960, -0.448713, 0.866184,
		-0.863934, 0.322753, 0.386586,
		27.499792, 31.355515, 35.094978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858419, 30.519413, 35.000053>,  <28.104546, 31.129587, 34.824371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858419, 30.519413, 35.000053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563026, 30.789011, 35.007782>,  <27.385792, 30.950769, 35.012421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563026, 30.789011, 35.007782>,  <27.858419, 30.519413, 35.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563026, 30.789011, 35.007782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641503, -0.693473, -0.327976,
		-0.207653, -0.254601, 0.944488,
		-0.738481, 0.673997, 0.019326,
		27.341482, 30.991211, 35.013580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922810, 31.053953, 35.508987>,  <27.858419, 30.519413, 35.000053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922810, 31.053953, 35.508987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553097, 31.204971, 35.531487>,  <27.331270, 31.295582, 35.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553097, 31.204971, 35.531487>,  <27.922810, 31.053953, 35.508987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553097, 31.204971, 35.531487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338617, -0.742961, -0.577362,
		-0.176192, -0.552691, 0.814548,
		-0.924281, 0.377547, 0.056246,
		27.275812, 31.318235, 35.548359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534645, 30.428530, 35.896664>,  <27.922810, 31.053953, 35.508987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534645, 30.428530, 35.896664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310507, 30.645599, 35.646378>,  <27.176023, 30.775841, 35.496208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310507, 30.645599, 35.646378>,  <27.534645, 30.428530, 35.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310507, 30.645599, 35.646378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423307, -0.836976, -0.346816,
		-0.711916, 0.070532, 0.698714,
		-0.560346, 0.542675, -0.625713,
		27.142403, 30.808401, 35.458664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901346, 30.079006, 35.934006>,  <27.534645, 30.428530, 35.896664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901346, 30.079006, 35.934006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885143, 30.299419, 35.600605>,  <26.875422, 30.431667, 35.400566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885143, 30.299419, 35.600605>,  <26.901346, 30.079006, 35.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885143, 30.299419, 35.600605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668554, -0.634888, -0.387237,
		-0.742560, 0.541555, 0.394111,
		-0.040506, 0.551031, -0.833501,
		26.872992, 30.464729, 35.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172943, 30.271194, 35.869164>,  <26.901346, 30.079006, 35.934006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172943, 30.271194, 35.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340679, 30.281965, 35.506191>,  <26.441320, 30.288427, 35.288406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340679, 30.281965, 35.506191>,  <26.172943, 30.271194, 35.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340679, 30.281965, 35.506191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622565, -0.718966, -0.309033,
		-0.660733, 0.694523, -0.284727,
		0.419339, 0.026927, -0.907430,
		26.466480, 30.290043, 35.233963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439455, 29.659700, 35.427952>,  <26.172943, 30.271194, 35.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439455, 29.659700, 35.427952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505066, 29.483681, 35.781097>,  <26.544434, 29.378069, 35.992985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505066, 29.483681, 35.781097>,  <26.439455, 29.659700, 35.427952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505066, 29.483681, 35.781097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878824, 0.471707, 0.071835,
		-0.448065, 0.764101, 0.464098,
		0.164029, -0.440047, 0.882866,
		26.554276, 29.351667, 36.045956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351641, 28.950127, 35.256634>,  <26.439455, 29.659700, 35.427952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351641, 28.950127, 35.256634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316038, 29.041239, 34.868778>,  <26.294678, 29.095905, 34.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316038, 29.041239, 34.868778>,  <26.351641, 28.950127, 35.256634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316038, 29.041239, 34.868778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161720, 0.963887, 0.211585,
		0.982815, -0.137978, -0.122627,
		-0.089004, 0.227780, -0.969636,
		26.289337, 29.109573, 34.577888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998566, 29.325201, 35.095852>,  <26.351641, 28.950127, 35.256634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998566, 29.325201, 35.095852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696388, 29.445181, 34.862843>,  <26.515081, 29.517168, 34.723038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696388, 29.445181, 34.862843>,  <26.998566, 29.325201, 35.095852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696388, 29.445181, 34.862843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268779, 0.952680, 0.141984,
		0.597545, -0.049309, -0.800318,
		-0.755445, 0.299950, -0.582522,
		26.469755, 29.535166, 34.688087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201414, 29.751673, 34.447323>,  <26.998566, 29.325201, 35.095852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201414, 29.751673, 34.447323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844625, 29.872662, 34.581726>,  <26.630552, 29.945255, 34.662369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844625, 29.872662, 34.581726>,  <27.201414, 29.751673, 34.447323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844625, 29.872662, 34.581726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367749, 0.917731, 0.150103,
		-0.262962, 0.257454, -0.929822,
		-0.891971, 0.302470, 0.336006,
		26.577034, 29.963402, 34.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188961, 30.394176, 34.117599>,  <27.201414, 29.751673, 34.447323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188961, 30.394176, 34.117599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984541, 30.349712, 34.458534>,  <26.861889, 30.323034, 34.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984541, 30.349712, 34.458534>,  <27.188961, 30.394176, 34.117599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984541, 30.349712, 34.458534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463307, 0.799602, 0.382077,
		-0.724001, 0.590152, -0.357133,
		-0.511048, -0.111162, 0.852334,
		26.831226, 30.316364, 34.714233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890139, 31.120506, 34.200035>,  <27.188961, 30.394176, 34.117599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890139, 31.120506, 34.200035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876902, 30.912512, 34.541447>,  <26.868959, 30.787716, 34.746296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876902, 30.912512, 34.541447>,  <26.890139, 31.120506, 34.200035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876902, 30.912512, 34.541447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275751, 0.816103, 0.507874,
		-0.960659, 0.252169, 0.116382,
		-0.033090, -0.519987, 0.853533,
		26.866974, 30.756516, 34.797508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424091, 31.575981, 34.604649>,  <26.890139, 31.120506, 34.200035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424091, 31.575981, 34.604649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649622, 31.349514, 34.845165>,  <26.784941, 31.213633, 34.989475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649622, 31.349514, 34.845165>,  <26.424091, 31.575981, 34.604649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649622, 31.349514, 34.845165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250356, 0.810960, 0.528834,
		-0.787033, -0.147634, 0.598985,
		0.563827, -0.566170, 0.601291,
		26.818769, 31.179663, 35.025551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272198, 31.740564, 35.409996>,  <26.424091, 31.575981, 34.604649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272198, 31.740564, 35.409996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645021, 31.619841, 35.329819>,  <26.868715, 31.547405, 35.281712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645021, 31.619841, 35.329819>,  <26.272198, 31.740564, 35.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645021, 31.619841, 35.329819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360356, 0.714839, 0.599290,
		-0.037585, -0.630805, 0.775030,
		0.932057, -0.301811, -0.200447,
		26.924639, 31.529297, 35.269684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574141, 31.717113, 36.013866>,  <26.272198, 31.740564, 35.409996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574141, 31.717113, 36.013866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886190, 31.769999, 35.769268>,  <27.073420, 31.801729, 35.622509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886190, 31.769999, 35.769268>,  <26.574141, 31.717113, 36.013866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886190, 31.769999, 35.769268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294669, 0.784561, 0.545558,
		0.551884, -0.605792, 0.573097,
		0.780125, 0.132210, -0.611495,
		27.120228, 31.809662, 35.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193138, 31.827705, 36.474720>,  <26.574141, 31.717113, 36.013866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193138, 31.827705, 36.474720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276896, 31.980568, 36.114697>,  <27.327150, 32.072285, 35.898682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276896, 31.980568, 36.114697>,  <27.193138, 31.827705, 36.474720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276896, 31.980568, 36.114697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327645, 0.839836, 0.432810,
		0.921305, -0.385528, 0.050644,
		0.209393, 0.382156, -0.900062,
		27.339714, 32.095215, 35.844677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891382, 31.996807, 36.399658>,  <27.193138, 31.827705, 36.474720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891382, 31.996807, 36.399658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709602, 32.257042, 36.156277>,  <27.600534, 32.413181, 36.010250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709602, 32.257042, 36.156277>,  <27.891382, 31.996807, 36.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709602, 32.257042, 36.156277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452553, 0.756967, 0.471377,
		0.767248, -0.061138, -0.638430,
		-0.454452, 0.650586, -0.608450,
		27.573267, 32.452217, 35.973743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519976, 32.452026, 36.214642>,  <27.891382, 31.996807, 36.399658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519976, 32.452026, 36.214642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160593, 32.617706, 36.156387>,  <27.944963, 32.717113, 36.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160593, 32.617706, 36.156387>,  <28.519976, 32.452026, 36.214642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160593, 32.617706, 36.156387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347505, 0.873588, 0.340712,
		0.268350, 0.255506, -0.928819,
		-0.898459, 0.414200, -0.145638,
		27.891056, 32.741966, 36.112698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957790, 31.777357, 36.253098>,  <28.519976, 32.452026, 36.214642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957790, 31.777357, 36.253098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939123, 31.739401, 36.650856>,  <28.927923, 31.716627, 36.889511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939123, 31.739401, 36.650856>,  <28.957790, 31.777357, 36.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939123, 31.739401, 36.650856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969550, 0.235276, 0.067952,
		-0.240405, 0.967286, 0.081020,
		-0.046667, -0.094889, 0.994393,
		28.925123, 31.710934, 36.949173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280722, 32.445873, 36.644268>,  <28.957790, 31.777357, 36.253098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280722, 32.445873, 36.644268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289736, 32.100784, 36.846340>,  <29.295143, 31.893732, 36.967583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289736, 32.100784, 36.846340>,  <29.280722, 32.445873, 36.644268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289736, 32.100784, 36.846340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981704, 0.114659, 0.152020,
		-0.189075, 0.492514, 0.849518,
		0.022533, -0.862719, 0.505182,
		29.296495, 31.841969, 36.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849483, 32.817516, 36.830685>,  <29.280722, 32.445873, 36.644268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849483, 32.817516, 36.830685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207094, 32.680031, 36.945629>,  <30.421659, 32.597538, 37.014595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207094, 32.680031, 36.945629>,  <29.849483, 32.817516, 36.830685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207094, 32.680031, 36.945629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194155, 0.280815, 0.939918,
		-0.403760, -0.896105, 0.184322,
		0.894026, -0.343714, 0.287365,
		30.475302, 32.576916, 37.031837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864641, 32.389690, 37.482113>,  <29.849483, 32.817516, 36.830685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864641, 32.389690, 37.482113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239401, 32.529373, 37.475502>,  <30.464256, 32.613182, 37.471535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239401, 32.529373, 37.475502>,  <29.864641, 32.389690, 37.482113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239401, 32.529373, 37.475502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056835, 0.198778, 0.978395,
		0.344951, -0.915718, 0.206083,
		0.936898, 0.349211, -0.016524,
		30.520470, 32.634136, 37.470547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283592, 32.154114, 38.047428>,  <29.864641, 32.389690, 37.482113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283592, 32.154114, 38.047428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483995, 32.487392, 37.953812>,  <30.604239, 32.687359, 37.897640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483995, 32.487392, 37.953812>,  <30.283592, 32.154114, 38.047428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483995, 32.487392, 37.953812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099877, 0.324290, 0.940670,
		0.859660, -0.447908, 0.245689,
		0.501009, 0.833195, -0.234044,
		30.634298, 32.737350, 37.883598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830605, 32.247082, 38.538712>,  <30.283592, 32.154114, 38.047428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830605, 32.247082, 38.538712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731657, 32.600014, 38.378555>,  <30.672289, 32.811771, 38.282463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731657, 32.600014, 38.378555>,  <30.830605, 32.247082, 38.538712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731657, 32.600014, 38.378555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303848, 0.321743, 0.896749,
		0.920046, 0.343485, 0.188503,
		-0.247371, 0.882326, -0.400386,
		30.657446, 32.864712, 38.258438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162203, 32.887100, 38.880978>,  <30.830605, 32.247082, 38.538712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162203, 32.887100, 38.880978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793219, 32.940548, 38.736084>,  <30.571829, 32.972618, 38.649147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793219, 32.940548, 38.736084>,  <31.162203, 32.887100, 38.880978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793219, 32.940548, 38.736084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328131, 0.223114, 0.917905,
		0.203470, 0.965591, -0.161969,
		-0.922459, 0.133619, -0.362237,
		30.516481, 32.980633, 38.627415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785154, 33.504494, 39.185036>,  <31.162203, 32.887100, 38.880978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785154, 33.504494, 39.185036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510767, 33.240955, 39.061508>,  <30.346134, 33.082832, 38.987392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510767, 33.240955, 39.061508>,  <30.785154, 33.504494, 39.185036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510767, 33.240955, 39.061508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508005, 0.129789, 0.851520,
		-0.520941, 0.740996, -0.423729,
		-0.685968, -0.658848, -0.308817,
		30.304977, 33.043301, 38.968864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601557, 33.974968, 39.713284>,  <30.785154, 33.504494, 39.185036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601557, 33.974968, 39.713284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372858, 34.189793, 39.465195>,  <30.235640, 34.318687, 39.316341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372858, 34.189793, 39.465195>,  <30.601557, 33.974968, 39.713284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372858, 34.189793, 39.465195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135811, -0.683586, -0.717123,
		-0.809112, -0.494245, 0.317898,
		-0.571745, 0.537059, -0.620222,
		30.201334, 34.350910, 39.279129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973381, 33.425575, 39.460876>,  <30.601557, 33.974968, 39.713284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973381, 33.425575, 39.460876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096983, 33.745995, 39.255806>,  <30.171144, 33.938248, 39.132763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096983, 33.745995, 39.255806>,  <29.973381, 33.425575, 39.460876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096983, 33.745995, 39.255806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463676, -0.597542, -0.654177,
		-0.830373, -0.035571, -0.556071,
		0.309006, 0.801048, -0.512676,
		30.189686, 33.986309, 39.102001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705070, 33.353588, 38.791874>,  <29.973381, 33.425575, 39.460876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705070, 33.353588, 38.791874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040197, 33.570873, 38.770031>,  <30.241274, 33.701244, 38.756927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040197, 33.570873, 38.770031>,  <29.705070, 33.353588, 38.791874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040197, 33.570873, 38.770031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321508, -0.571749, -0.754808,
		-0.441241, 0.614836, -0.653669,
		0.837818, 0.543212, -0.054605,
		30.291542, 33.733837, 38.753651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787148, 33.601017, 38.058121>,  <29.705070, 33.353588, 38.791874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787148, 33.601017, 38.058121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141199, 33.569771, 38.241619>,  <30.353630, 33.551022, 38.351719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141199, 33.569771, 38.241619>,  <29.787148, 33.601017, 38.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141199, 33.569771, 38.241619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355435, -0.522795, -0.774823,
		0.300356, 0.848872, -0.434975,
		0.885128, -0.078117, 0.458744,
		30.406738, 33.546337, 38.379242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403189, 33.895981, 37.612572>,  <29.787148, 33.601017, 38.058121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403189, 33.895981, 37.612572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539200, 33.596485, 37.840172>,  <30.620806, 33.416786, 37.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539200, 33.596485, 37.840172>,  <30.403189, 33.895981, 37.612572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539200, 33.596485, 37.840172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480726, -0.381636, -0.789466,
		0.808260, 0.541975, 0.230173,
		0.340028, -0.748744, 0.569002,
		30.641209, 33.371861, 38.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105112, 33.850292, 37.532768>,  <30.403189, 33.895981, 37.612572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105112, 33.850292, 37.532768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959415, 33.492035, 37.634869>,  <30.871998, 33.277081, 37.696129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959415, 33.492035, 37.634869>,  <31.105112, 33.850292, 37.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959415, 33.492035, 37.634869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323086, -0.378577, -0.867350,
		0.873466, -0.233460, 0.427264,
		-0.364244, -0.895643, 0.255246,
		30.850142, 33.223343, 37.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543247, 33.311474, 37.273148>,  <31.105112, 33.850292, 37.532768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543247, 33.311474, 37.273148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210033, 33.094574, 37.316986>,  <31.010105, 32.964432, 37.343288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210033, 33.094574, 37.316986>,  <31.543247, 33.311474, 37.273148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210033, 33.094574, 37.316986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286033, -0.591749, -0.753669,
		0.473536, -0.596484, 0.648051,
		-0.833036, -0.542254, 0.109600,
		30.960123, 32.931896, 37.349865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766407, 32.606476, 37.216461>,  <31.543247, 33.311474, 37.273148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766407, 32.606476, 37.216461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377913, 32.624722, 37.122978>,  <31.144815, 32.635670, 37.066887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377913, 32.624722, 37.122978>,  <31.766407, 32.606476, 37.216461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377913, 32.624722, 37.122978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133912, -0.706928, -0.694493,
		-0.196897, -0.705813, 0.680485,
		-0.971236, 0.045619, -0.233709,
		31.086542, 32.638409, 37.052864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519028, 31.858372, 37.248669>,  <31.766407, 32.606476, 37.216461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519028, 31.858372, 37.248669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293131, 32.035385, 36.970036>,  <31.157593, 32.141594, 36.802856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293131, 32.035385, 36.970036>,  <31.519028, 31.858372, 37.248669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293131, 32.035385, 36.970036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249415, -0.713079, -0.655218,
		-0.786676, -0.543767, 0.292331,
		-0.564741, 0.442533, -0.696586,
		31.123709, 32.168144, 36.761059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153385, 31.314821, 36.986164>,  <31.519028, 31.858372, 37.248669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153385, 31.314821, 36.986164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152481, 31.593744, 36.699455>,  <31.151937, 31.761099, 36.527431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152481, 31.593744, 36.699455>,  <31.153385, 31.314821, 36.986164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152481, 31.593744, 36.699455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314167, -0.679983, -0.662512,
		-0.949365, -0.226683, -0.217534,
		-0.002261, 0.697308, -0.716768,
		31.151802, 31.802937, 36.484425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584797, 31.195498, 36.496426>,  <31.153385, 31.314821, 36.986164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584797, 31.195498, 36.496426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860636, 31.409464, 36.301155>,  <31.026138, 31.537844, 36.183990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860636, 31.409464, 36.301155>,  <30.584797, 31.195498, 36.496426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860636, 31.409464, 36.301155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070876, -0.720716, -0.689598,
		-0.720716, 0.440945, -0.534917,
		0.689598, 0.534917, -0.488179,
		31.067514, 31.569939, 36.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406307, 31.116655, 35.835194>,  <30.584797, 31.195498, 36.496426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406307, 31.116655, 35.835194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775661, 31.264839, 35.794960>,  <30.997274, 31.353750, 35.770821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775661, 31.264839, 35.794960>,  <30.406307, 31.116655, 35.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775661, 31.264839, 35.794960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181511, -0.652248, -0.735953,
		-0.338249, 0.661311, -0.669519,
		0.923386, 0.370460, -0.100586,
		31.052677, 31.375977, 35.764786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611109, 31.138987, 35.093330>,  <30.406307, 31.116655, 35.835194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611109, 31.138987, 35.093330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970869, 31.129128, 35.267902>,  <31.186726, 31.123213, 35.372646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970869, 31.129128, 35.267902>,  <30.611109, 31.138987, 35.093330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970869, 31.129128, 35.267902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325964, -0.627406, -0.707184,
		0.291248, 0.778302, -0.556256,
		0.899401, -0.024647, 0.436429,
		31.240690, 31.121733, 35.398830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151173, 31.202198, 34.539684>,  <30.611109, 31.138987, 35.093330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151173, 31.202198, 34.539684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328264, 31.020250, 34.848770>,  <31.434519, 30.911081, 35.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328264, 31.020250, 34.848770>,  <31.151173, 31.202198, 34.539684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328264, 31.020250, 34.848770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566587, -0.526007, -0.634269,
		0.694962, 0.718617, 0.024846,
		0.442727, -0.454870, 0.772713,
		31.461082, 30.883789, 35.080585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796516, 31.171349, 34.299133>,  <31.151173, 31.202198, 34.539684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796516, 31.171349, 34.299133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768871, 30.906559, 34.597668>,  <31.752285, 30.747686, 34.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768871, 30.906559, 34.597668>,  <31.796516, 31.171349, 34.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768871, 30.906559, 34.597668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576997, -0.636820, -0.511404,
		0.813817, 0.395288, 0.425969,
		-0.069113, -0.661972, 0.746335,
		31.748137, 30.707968, 34.821568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455170, 30.979523, 34.280464>,  <31.796516, 31.171349, 34.299133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455170, 30.979523, 34.280464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258659, 30.691345, 34.476265>,  <32.140755, 30.518438, 34.593746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258659, 30.691345, 34.476265>,  <32.455170, 30.979523, 34.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258659, 30.691345, 34.476265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463598, -0.692060, -0.553290,
		0.737377, -0.044887, 0.673989,
		-0.491277, -0.720443, 0.489499,
		32.111275, 30.475212, 34.623116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004173, 30.508848, 34.321152>,  <32.455170, 30.979523, 34.280464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004173, 30.508848, 34.321152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643398, 30.340309, 34.359055>,  <32.426933, 30.239185, 34.381798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643398, 30.340309, 34.359055>,  <33.004173, 30.508848, 34.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643398, 30.340309, 34.359055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340370, -0.828574, -0.444538,
		0.265820, -0.368691, 0.890734,
		-0.901936, -0.421346, 0.094760,
		32.372818, 30.213905, 34.387482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127155, 29.907249, 34.595558>,  <33.004173, 30.508848, 34.321152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127155, 29.907249, 34.595558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779537, 29.863028, 34.402668>,  <32.570965, 29.836494, 34.286934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779537, 29.863028, 34.402668>,  <33.127155, 29.907249, 34.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779537, 29.863028, 34.402668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343952, -0.835628, -0.428279,
		-0.355610, -0.538055, 0.764224,
		-0.869044, -0.110557, -0.482223,
		32.518826, 29.829861, 34.257999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007687, 29.180685, 34.634010>,  <33.127155, 29.907249, 34.595558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007687, 29.180685, 34.634010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747894, 29.304291, 34.356110>,  <32.592018, 29.378454, 34.189369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747894, 29.304291, 34.356110>,  <33.007687, 29.180685, 34.634010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747894, 29.304291, 34.356110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147556, -0.845105, -0.513833,
		-0.745920, -0.436241, 0.503286,
		-0.649485, 0.309016, -0.694751,
		32.553051, 29.396996, 34.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794762, 28.552107, 34.285175>,  <33.007687, 29.180685, 34.634010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794762, 28.552107, 34.285175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697666, 28.834276, 34.018806>,  <32.639408, 29.003578, 33.858986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697666, 28.834276, 34.018806>,  <32.794762, 28.552107, 34.285175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697666, 28.834276, 34.018806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036571, -0.679313, -0.732937,
		-0.969402, -0.202266, 0.139098,
		-0.242739, 0.705423, -0.665924,
		32.624844, 29.045904, 33.819031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347519, 28.139956, 33.738914>,  <32.794762, 28.552107, 34.285175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347519, 28.139956, 33.738914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420815, 28.489100, 33.558010>,  <32.464790, 28.698586, 33.449467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420815, 28.489100, 33.558010>,  <32.347519, 28.139956, 33.738914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420815, 28.489100, 33.558010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039651, -0.466240, -0.883769,
		-0.982268, 0.144008, -0.120043,
		0.183239, 0.872858, -0.452263,
		32.475784, 28.750957, 33.422333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833231, 28.227556, 33.282364>,  <32.347519, 28.139956, 33.738914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833231, 28.227556, 33.282364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134541, 28.460548, 33.160191>,  <32.315327, 28.600344, 33.086887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134541, 28.460548, 33.160191>,  <31.833231, 28.227556, 33.282364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134541, 28.460548, 33.160191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071622, -0.388989, -0.918454,
		-0.653795, 0.713724, -0.251297,
		0.753274, 0.582482, -0.305438,
		32.360523, 28.635294, 33.068558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529240, 28.586376, 32.704712>,  <31.833231, 28.227556, 33.282364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529240, 28.586376, 32.704712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926193, 28.576567, 32.656418>,  <32.164364, 28.570681, 32.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926193, 28.576567, 32.656418>,  <31.529240, 28.586376, 32.704712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926193, 28.576567, 32.656418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120935, -0.380864, -0.916688,
		-0.023502, 0.924306, -0.380928,
		0.992382, -0.024523, -0.120733,
		32.223907, 28.569210, 32.620197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729975, 28.969875, 32.053356>,  <31.529240, 28.586376, 32.704712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729975, 28.969875, 32.053356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015568, 28.710098, 32.158009>,  <32.186924, 28.554232, 32.220802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015568, 28.710098, 32.158009>,  <31.729975, 28.969875, 32.053356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015568, 28.710098, 32.158009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089395, -0.455174, -0.885904,
		0.694435, 0.609130, -0.383042,
		0.713981, -0.649444, 0.261636,
		32.229763, 28.515265, 32.236500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042564, 28.743412, 31.398815>,  <31.729975, 28.969875, 32.053356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042564, 28.743412, 31.398815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203865, 28.471804, 31.644194>,  <32.300648, 28.308840, 31.791422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203865, 28.471804, 31.644194>,  <32.042564, 28.743412, 31.398815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203865, 28.471804, 31.644194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100744, -0.633353, -0.767278,
		0.909525, 0.371209, -0.186995,
		0.403255, -0.679020, 0.613447,
		32.324841, 28.268097, 31.828228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569725, 28.510277, 31.058168>,  <32.042564, 28.743412, 31.398815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569725, 28.510277, 31.058168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483093, 28.222368, 31.321995>,  <32.431114, 28.049623, 31.480289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483093, 28.222368, 31.321995>,  <32.569725, 28.510277, 31.058168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483093, 28.222368, 31.321995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005204, -0.676441, -0.736478,
		0.976252, -0.156071, 0.150246,
		-0.216575, -0.719770, 0.659565,
		32.418121, 28.006437, 31.519865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006115, 27.933449, 30.835939>,  <32.569725, 28.510277, 31.058168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006115, 27.933449, 30.835939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689957, 27.798943, 31.040764>,  <32.500263, 27.718239, 31.163658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689957, 27.798943, 31.040764>,  <33.006115, 27.933449, 30.835939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689957, 27.798943, 31.040764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161335, -0.692108, -0.703532,
		0.590976, -0.638679, 0.492785,
		-0.790392, -0.336267, 0.512060,
		32.452839, 27.698063, 31.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136299, 27.318838, 30.926704>,  <33.006115, 27.933449, 30.835939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136299, 27.318838, 30.926704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743576, 27.315454, 31.002590>,  <32.507942, 27.313425, 31.048120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743576, 27.315454, 31.002590>,  <33.136299, 27.318838, 30.926704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743576, 27.315454, 31.002590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120466, -0.744525, -0.656635,
		0.146800, -0.667540, 0.729959,
		-0.981803, -0.008459, 0.189712,
		32.449036, 27.312918, 31.059504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019638, 26.620350, 30.831785>,  <33.136299, 27.318838, 30.926704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019638, 26.620350, 30.831785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683140, 26.827833, 30.770800>,  <32.481239, 26.952324, 30.734209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683140, 26.827833, 30.770800>,  <33.019638, 26.620350, 30.831785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683140, 26.827833, 30.770800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214993, -0.579695, -0.785959,
		-0.496063, -0.628409, 0.599186,
		-0.841249, 0.518706, -0.152461,
		32.430767, 26.983446, 30.725061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546188, 26.047318, 30.654032>,  <33.019638, 26.620350, 30.831785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546188, 26.047318, 30.654032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387012, 26.397549, 30.544485>,  <32.291508, 26.607687, 30.478758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387012, 26.397549, 30.544485>,  <32.546188, 26.047318, 30.654032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387012, 26.397549, 30.544485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322691, -0.413035, -0.851629,
		-0.858786, -0.250524, 0.446905,
		-0.397941, 0.875580, -0.273866,
		32.267632, 26.660223, 30.462326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959776, 25.866415, 30.461779>,  <32.546188, 26.047318, 30.654032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959776, 25.866415, 30.461779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011490, 26.228304, 30.299414>,  <32.042519, 26.445436, 30.201994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011490, 26.228304, 30.299414>,  <31.959776, 25.866415, 30.461779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011490, 26.228304, 30.299414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242348, -0.368105, -0.897645,
		-0.961537, 0.214425, 0.171667,
		0.129286, 0.904721, -0.405912,
		32.050274, 26.499720, 30.177641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360754, 25.982771, 30.025429>,  <31.959776, 25.866415, 30.461779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360754, 25.982771, 30.025429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638531, 26.238344, 29.893059>,  <31.805197, 26.391689, 29.813637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638531, 26.238344, 29.893059>,  <31.360754, 25.982771, 30.025429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638531, 26.238344, 29.893059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127726, -0.343142, -0.930559,
		-0.708120, 0.688488, -0.156684,
		0.694443, 0.638935, -0.330924,
		31.846863, 26.430025, 29.793781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126276, 26.074944, 29.373728>,  <31.360754, 25.982771, 30.025429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126276, 26.074944, 29.373728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487280, 26.247017, 29.365513>,  <31.703882, 26.350260, 29.360584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487280, 26.247017, 29.365513>,  <31.126276, 26.074944, 29.373728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487280, 26.247017, 29.365513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048814, 0.054792, -0.997304,
		-0.427896, 0.901078, 0.070449,
		0.902509, 0.430182, -0.020539,
		31.758032, 26.376072, 29.359350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151262, 26.711758, 28.895782>,  <31.126276, 26.074944, 29.373728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151262, 26.711758, 28.895782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538176, 26.610922, 28.907190>,  <31.770325, 26.550421, 28.914036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538176, 26.610922, 28.907190>,  <31.151262, 26.711758, 28.895782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538176, 26.610922, 28.907190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061814, 0.125159, -0.990209,
		0.246050, 0.959576, 0.136647,
		0.967284, -0.252088, 0.028520,
		31.828362, 26.535295, 28.915747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616631, 27.218319, 28.592197>,  <31.151262, 26.711758, 28.895782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616631, 27.218319, 28.592197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801401, 26.866257, 28.548477>,  <31.912264, 26.655020, 28.522245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801401, 26.866257, 28.548477>,  <31.616631, 27.218319, 28.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801401, 26.866257, 28.548477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012260, 0.116886, -0.993070,
		0.886832, 0.460067, 0.043203,
		0.461929, -0.880157, -0.109298,
		31.939980, 26.602209, 28.515688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060543, 27.331583, 27.967201>,  <31.616631, 27.218319, 28.592197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060543, 27.331583, 27.967201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042999, 26.936981, 28.030304>,  <32.032471, 26.700220, 28.068165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042999, 26.936981, 28.030304>,  <32.060543, 27.331583, 27.967201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042999, 26.936981, 28.030304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088568, -0.161125, -0.982952,
		0.995104, -0.029142, 0.094440,
		-0.043862, -0.986504, 0.157756,
		32.029842, 26.641029, 28.077631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754951, 26.910894, 27.760002>,  <32.060543, 27.331583, 27.967201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754951, 26.910894, 27.760002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403671, 26.722267, 27.728050>,  <32.192902, 26.609091, 27.708879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403671, 26.722267, 27.728050>,  <32.754951, 26.910894, 27.760002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403671, 26.722267, 27.728050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147132, -0.107447, -0.983264,
		0.455094, -0.875259, 0.163743,
		-0.878204, -0.471569, -0.079880,
		32.140209, 26.580797, 27.704086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873672, 26.387880, 27.253590>,  <32.754951, 26.910894, 27.760002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873672, 26.387880, 27.253590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474682, 26.416061, 27.257050>,  <32.235287, 26.432970, 27.259125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474682, 26.416061, 27.257050>,  <32.873672, 26.387880, 27.253590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474682, 26.416061, 27.257050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007991, 0.009623, -0.999922,
		-0.070531, -0.997469, -0.009035,
		-0.997478, 0.070454, 0.008649,
		32.175438, 26.437197, 27.259644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595200, 26.073322, 26.652552>,  <32.873672, 26.387880, 27.253590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595200, 26.073322, 26.652552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294056, 26.323063, 26.735863>,  <32.113369, 26.472908, 26.785849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294056, 26.323063, 26.735863>,  <32.595200, 26.073322, 26.652552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294056, 26.323063, 26.735863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034930, 0.278097, -0.959918,
		-0.657249, -0.729962, -0.187561,
		-0.752864, 0.624354, 0.208276,
		32.068195, 26.510368, 26.798346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101353, 25.846069, 26.230972>,  <32.595200, 26.073322, 26.652552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101353, 25.846069, 26.230972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992207, 26.220844, 26.318331>,  <31.926720, 26.445709, 26.370747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992207, 26.220844, 26.318331>,  <32.101353, 25.846069, 26.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992207, 26.220844, 26.318331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280424, 0.139695, -0.949657,
		-0.920276, -0.320370, 0.224622,
		-0.272864, 0.936936, 0.218397,
		31.910347, 26.501925, 26.383850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629105, 25.996067, 25.673983>,  <32.101353, 25.846069, 26.230972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629105, 25.996067, 25.673983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698288, 26.357075, 25.831741>,  <31.739798, 26.573679, 25.926397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698288, 26.357075, 25.831741>,  <31.629105, 25.996067, 25.673983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698288, 26.357075, 25.831741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061706, 0.409574, -0.910188,
		-0.982994, 0.133087, 0.126529,
		0.172957, 0.902517, 0.394396,
		31.750175, 26.627831, 25.950060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023554, 26.549694, 25.517900>,  <31.629105, 25.996067, 25.673983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023554, 26.549694, 25.517900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368658, 26.740274, 25.585598>,  <31.575720, 26.854622, 25.626217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368658, 26.740274, 25.585598>,  <31.023554, 26.549694, 25.517900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368658, 26.740274, 25.585598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132997, 0.536786, -0.833170,
		-0.487811, 0.696315, 0.526483,
		0.862758, 0.476451, 0.169243,
		31.627485, 26.883209, 25.636372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875397, 27.277815, 25.342209>,  <31.023554, 26.549694, 25.517900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875397, 27.277815, 25.342209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267536, 27.199181, 25.335649>,  <31.502821, 27.152000, 25.331713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267536, 27.199181, 25.335649>,  <30.875397, 27.277815, 25.342209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267536, 27.199181, 25.335649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061869, 0.385345, -0.920696,
		0.187314, 0.901590, 0.389935,
		0.980350, -0.196584, -0.016400,
		31.561642, 27.140205, 25.330730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217266, 27.845928, 25.310125>,  <30.875397, 27.277815, 25.342209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217266, 27.845928, 25.310125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435820, 27.550215, 25.152685>,  <31.566952, 27.372786, 25.058220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435820, 27.550215, 25.152685>,  <31.217266, 27.845928, 25.310125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435820, 27.550215, 25.152685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184282, 0.564554, -0.804561,
		0.817010, 0.367066, 0.444700,
		0.546384, -0.739284, -0.393603,
		31.599735, 27.328430, 25.034605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664516, 28.253559, 24.900402>,  <31.217266, 27.845928, 25.310125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664516, 28.253559, 24.900402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740637, 27.882015, 24.773275>,  <31.786308, 27.659088, 24.697001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740637, 27.882015, 24.773275>,  <31.664516, 28.253559, 24.900402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740637, 27.882015, 24.773275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180134, 0.285198, -0.941389,
		0.965059, 0.236395, -0.113046,
		0.190299, -0.928859, -0.317816,
		31.797726, 27.603357, 24.677931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155563, 28.300545, 24.393888>,  <31.664516, 28.253559, 24.900402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155563, 28.300545, 24.393888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953146, 27.957760, 24.354832>,  <31.831696, 27.752089, 24.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953146, 27.957760, 24.354832>,  <32.155563, 28.300545, 24.393888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953146, 27.957760, 24.354832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150953, 0.199456, -0.968210,
		0.849195, -0.475218, -0.230294,
		-0.506044, -0.856963, -0.097641,
		31.801332, 27.700670, 24.325539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530628, 27.962908, 23.882980>,  <32.155563, 28.300545, 24.393888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530628, 27.962908, 23.882980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148331, 27.849375, 23.913942>,  <31.918953, 27.781254, 23.932520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148331, 27.849375, 23.913942>,  <32.530628, 27.962908, 23.882980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148331, 27.849375, 23.913942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148608, 0.238697, -0.959656,
		0.253923, -0.928684, -0.270315,
		-0.955739, -0.283850, 0.077399,
		31.861607, 27.764225, 23.937164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443134, 27.526335, 23.273737>,  <32.530628, 27.962908, 23.882980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443134, 27.526335, 23.273737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078232, 27.635519, 23.395903>,  <31.859289, 27.701029, 23.469202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078232, 27.635519, 23.395903>,  <32.443134, 27.526335, 23.273737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078232, 27.635519, 23.395903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224591, 0.290229, -0.930229,
		-0.342555, -0.917202, -0.203460,
		-0.912258, 0.272960, 0.305415,
		31.804554, 27.717407, 23.487528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973135, 27.226688, 22.835089>,  <32.443134, 27.526335, 23.273737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973135, 27.226688, 22.835089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767719, 27.532230, 22.991451>,  <31.644470, 27.715555, 23.085268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767719, 27.532230, 22.991451>,  <31.973135, 27.226688, 22.835089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767719, 27.532230, 22.991451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358589, 0.222832, -0.906510,
		-0.779546, -0.605702, 0.159477,
		-0.513538, 0.763853, 0.390906,
		31.613657, 27.761387, 23.108723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286957, 27.116896, 22.603050>,  <31.973135, 27.226688, 22.835089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286957, 27.116896, 22.603050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316803, 27.500181, 22.713511>,  <31.334711, 27.730152, 22.779787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316803, 27.500181, 22.713511>,  <31.286957, 27.116896, 22.603050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316803, 27.500181, 22.713511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561965, 0.269168, -0.782140,
		-0.823789, -0.096828, 0.558567,
		0.074615, 0.958213, 0.276152,
		31.339188, 27.787645, 22.796356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679869, 27.423033, 22.785032>,  <31.286957, 27.116896, 22.603050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679869, 27.423033, 22.785032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888752, 27.750353, 22.688963>,  <31.014082, 27.946745, 22.631321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888752, 27.750353, 22.688963>,  <30.679869, 27.423033, 22.785032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888752, 27.750353, 22.688963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677370, 0.226888, -0.699780,
		-0.518138, 0.528118, 0.672774,
		0.522210, 0.818299, -0.240172,
		31.045416, 27.995842, 22.616911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474558, 27.782753, 22.205000>,  <30.679869, 27.423033, 22.785032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474558, 27.782753, 22.205000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192270, 27.932425, 21.964352>,  <30.022898, 28.022228, 21.819963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192270, 27.932425, 21.964352>,  <30.474558, 27.782753, 22.205000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192270, 27.932425, 21.964352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129653, -0.903027, -0.409552,
		-0.696525, -0.211028, 0.685799,
		-0.705721, 0.374179, -0.601620,
		29.980555, 28.044678, 21.783865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838148, 27.269432, 22.128054>,  <30.474558, 27.782753, 22.205000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838148, 27.269432, 22.128054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830734, 27.515461, 21.812752>,  <29.826286, 27.663078, 21.623571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830734, 27.515461, 21.812752>,  <29.838148, 27.269432, 22.128054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830734, 27.515461, 21.812752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141448, -0.782073, -0.606922,
		-0.989772, 0.100246, 0.101498,
		-0.018537, 0.615071, -0.788254,
		29.825172, 27.699982, 21.576275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138165, 27.129442, 21.763447>,  <29.838148, 27.269432, 22.128054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138165, 27.129442, 21.763447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389929, 27.303186, 21.505711>,  <29.540987, 27.407433, 21.351068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389929, 27.303186, 21.505711>,  <29.138165, 27.129442, 21.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389929, 27.303186, 21.505711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022882, -0.839188, -0.543360,
		-0.776735, 0.327253, -0.538134,
		0.629412, 0.434360, -0.644338,
		29.578753, 27.433495, 21.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885344, 27.218004, 21.024973>,  <29.138165, 27.129442, 21.763447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885344, 27.218004, 21.024973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283775, 27.184738, 21.012894>,  <29.522835, 27.164778, 21.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283775, 27.184738, 21.012894>,  <28.885344, 27.218004, 21.024973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283775, 27.184738, 21.012894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074482, -0.603927, -0.793552,
		0.047758, 0.792689, -0.607753,
		0.996078, -0.083165, -0.030199,
		29.582600, 27.159788, 21.003834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029186, 26.509386, 21.072521>,  <28.885344, 27.218004, 21.024973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029186, 26.509386, 21.072521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209005, 26.476221, 20.716761>,  <29.316896, 26.456322, 20.503305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209005, 26.476221, 20.716761>,  <29.029186, 26.509386, 21.072521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209005, 26.476221, 20.716761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479986, 0.862144, 0.162237,
		0.753338, -0.499833, 0.427374,
		0.449549, -0.082914, -0.889399,
		29.343870, 26.451347, 20.449942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782791, 26.447697, 21.105322>,  <29.029186, 26.509386, 21.072521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782791, 26.447697, 21.105322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678459, 26.616362, 20.757950>,  <29.615860, 26.717560, 20.549526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678459, 26.616362, 20.757950>,  <29.782791, 26.447697, 21.105322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678459, 26.616362, 20.757950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473048, 0.839994, 0.265776,
		0.841542, -0.341485, -0.418563,
		-0.260832, 0.421662, -0.868428,
		29.600210, 26.742861, 20.497421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344721, 26.720341, 20.864223>,  <29.782791, 26.447697, 21.105322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344721, 26.720341, 20.864223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030909, 26.913881, 20.709099>,  <29.842621, 27.030006, 20.616024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030909, 26.913881, 20.709099>,  <30.344721, 26.720341, 20.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030909, 26.913881, 20.709099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250358, 0.819332, 0.515767,
		0.567303, 0.307543, -0.763927,
		-0.784530, 0.483852, -0.387814,
		29.795549, 27.059036, 20.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582684, 27.336542, 20.657423>,  <30.344721, 26.720341, 20.864223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582684, 27.336542, 20.657423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185587, 27.374409, 20.687103>,  <29.947329, 27.397129, 20.704912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185587, 27.374409, 20.687103>,  <30.582684, 27.336542, 20.657423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185587, 27.374409, 20.687103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118638, 0.872303, 0.474355,
		-0.019819, 0.479714, -0.877201,
		-0.992740, 0.094668, 0.074200,
		29.887766, 27.402809, 20.709364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388882, 28.065718, 20.490723>,  <30.582684, 27.336542, 20.657423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388882, 28.065718, 20.490723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121767, 27.877953, 20.721794>,  <29.961498, 27.765293, 20.860437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121767, 27.877953, 20.721794>,  <30.388882, 28.065718, 20.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121767, 27.877953, 20.721794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074565, 0.814363, 0.575546,
		-0.740608, 0.341268, -0.578823,
		-0.667788, -0.469414, 0.577677,
		29.921431, 27.737129, 20.895098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760958, 28.420998, 20.524366>,  <30.388882, 28.065718, 20.490723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760958, 28.420998, 20.524366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790926, 28.195669, 20.853500>,  <29.808907, 28.060472, 21.050982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790926, 28.195669, 20.853500>,  <29.760958, 28.420998, 20.524366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790926, 28.195669, 20.853500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024810, 0.823845, 0.566271,
		-0.996881, -0.062840, 0.047747,
		0.074921, -0.563320, 0.822835,
		29.813402, 28.026672, 21.100351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250439, 28.666620, 20.927345>,  <29.760958, 28.420998, 20.524366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250439, 28.666620, 20.927345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475313, 28.474894, 21.196924>,  <29.610237, 28.359858, 21.358671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475313, 28.474894, 21.196924>,  <29.250439, 28.666620, 20.927345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475313, 28.474894, 21.196924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166378, 0.732708, 0.659892,
		-0.810104, -0.483111, 0.332169,
		0.562184, -0.479315, 0.673949,
		29.643969, 28.331099, 21.399109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867632, 28.655880, 21.517149>,  <29.250439, 28.666620, 20.927345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867632, 28.655880, 21.517149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257378, 28.651451, 21.607027>,  <29.491226, 28.648794, 21.660954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257378, 28.651451, 21.607027>,  <28.867632, 28.655880, 21.517149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257378, 28.651451, 21.607027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170386, 0.615860, 0.769211,
		-0.146900, -0.787778, 0.598186,
		0.974366, -0.011074, 0.224696,
		29.549688, 28.648129, 21.674437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902184, 28.495272, 22.218748>,  <28.867632, 28.655880, 21.517149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902184, 28.495272, 22.218748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260681, 28.653509, 22.138500>,  <29.475780, 28.748451, 22.090351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260681, 28.653509, 22.138500>,  <28.902184, 28.495272, 22.218748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260681, 28.653509, 22.138500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065514, 0.565399, 0.822212,
		0.438694, -0.723760, 0.532653,
		0.896245, 0.395595, -0.200621,
		29.529554, 28.772188, 22.078314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299295, 28.527279, 22.845772>,  <28.902184, 28.495272, 22.218748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299295, 28.527279, 22.845772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490244, 28.793964, 22.616823>,  <29.604813, 28.953976, 22.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490244, 28.793964, 22.616823>,  <29.299295, 28.527279, 22.845772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490244, 28.793964, 22.616823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049856, 0.629783, 0.775169,
		0.877288, -0.398578, 0.267399,
		0.477369, 0.666715, -0.572372,
		29.633455, 28.993979, 22.445112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410875, 29.070528, 23.380852>,  <29.299295, 28.527279, 22.845772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410875, 29.070528, 23.380852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579491, 29.199585, 23.041862>,  <29.680660, 29.277020, 22.838469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579491, 29.199585, 23.041862>,  <29.410875, 29.070528, 23.380852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579491, 29.199585, 23.041862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338615, 0.810955, 0.477170,
		0.841217, -0.488111, 0.232595,
		0.421537, 0.322644, -0.847471,
		29.705952, 29.296377, 22.787621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199038, 29.161097, 23.464373>,  <29.410875, 29.070528, 23.380852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199038, 29.161097, 23.464373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028345, 29.410267, 23.202116>,  <29.925930, 29.559769, 23.044762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028345, 29.410267, 23.202116>,  <30.199038, 29.161097, 23.464373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028345, 29.410267, 23.202116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174405, 0.768037, 0.616200,
		0.887403, 0.148605, -0.436386,
		-0.426731, 0.622925, -0.655641,
		29.900326, 29.597145, 23.005424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573414, 29.714783, 23.453028>,  <30.199038, 29.161097, 23.464373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573414, 29.714783, 23.453028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249615, 29.872740, 23.279238>,  <30.055334, 29.967514, 23.174963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249615, 29.872740, 23.279238>,  <30.573414, 29.714783, 23.453028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249615, 29.872740, 23.279238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016391, 0.724526, 0.689053,
		0.586891, 0.564909, -0.580031,
		-0.809500, 0.394892, -0.434477,
		30.006765, 29.991207, 23.148895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711456, 30.455654, 23.252214>,  <30.573414, 29.714783, 23.453028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711456, 30.455654, 23.252214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320488, 30.396442, 23.312523>,  <30.085907, 30.360914, 23.348707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320488, 30.396442, 23.312523>,  <30.711456, 30.455654, 23.252214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320488, 30.396442, 23.312523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018814, 0.771696, 0.635713,
		-0.210453, 0.618524, -0.757058,
		-0.977423, -0.148031, 0.150770,
		30.027262, 30.352034, 23.357754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393709, 31.173248, 23.216026>,  <30.711456, 30.455654, 23.252214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393709, 31.173248, 23.216026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167948, 30.915213, 23.422058>,  <30.032490, 30.760391, 23.545677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167948, 30.915213, 23.422058>,  <30.393709, 31.173248, 23.216026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167948, 30.915213, 23.422058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095085, 0.670613, 0.735688,
		-0.820003, 0.366250, -0.439836,
		-0.564405, -0.645089, 0.515080,
		29.998627, 30.721685, 23.576582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871273, 31.609098, 23.558321>,  <30.393709, 31.173248, 23.216026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871273, 31.609098, 23.558321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859842, 31.263132, 23.758762>,  <29.852983, 31.055553, 23.879028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859842, 31.263132, 23.758762>,  <29.871273, 31.609098, 23.558321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859842, 31.263132, 23.758762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192094, 0.496717, 0.846387,
		-0.980960, -0.072072, -0.180339,
		-0.028577, -0.864915, 0.501105,
		29.851269, 31.003658, 23.909094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279678, 31.634386, 24.028103>,  <29.871273, 31.609098, 23.558321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279678, 31.634386, 24.028103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523144, 31.346800, 24.162334>,  <29.669224, 31.174248, 24.242874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523144, 31.346800, 24.162334>,  <29.279678, 31.634386, 24.028103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523144, 31.346800, 24.162334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156128, 0.306148, 0.939094,
		-0.777915, -0.623986, 0.074090,
		0.608664, -0.718968, 0.335579,
		29.705744, 31.131109, 24.263008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944410, 31.351463, 24.597626>,  <29.279678, 31.634386, 24.028103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944410, 31.351463, 24.597626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332521, 31.264267, 24.639654>,  <29.565388, 31.211950, 24.664871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332521, 31.264267, 24.639654>,  <28.944410, 31.351463, 24.597626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332521, 31.264267, 24.639654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058615, 0.209553, 0.976039,
		-0.234784, -0.953188, 0.190547,
		0.970279, -0.217989, 0.105071,
		29.623606, 31.198870, 24.671175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970461, 30.880951, 25.186890>,  <28.944410, 31.351463, 24.597626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970461, 30.880951, 25.186890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338095, 31.035048, 25.153728>,  <29.558676, 31.127504, 25.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338095, 31.035048, 25.153728>,  <28.970461, 30.880951, 25.186890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338095, 31.035048, 25.153728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032570, 0.283926, 0.958293,
		0.392713, -0.878052, 0.273499,
		0.919084, 0.385242, -0.082904,
		29.613821, 31.150620, 25.128857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308159, 30.643490, 25.739481>,  <28.970461, 30.880951, 25.186890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308159, 30.643490, 25.739481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527029, 30.955402, 25.617798>,  <29.658350, 31.142550, 25.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527029, 30.955402, 25.617798>,  <29.308159, 30.643490, 25.739481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527029, 30.955402, 25.617798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198477, 0.232199, 0.952203,
		0.813147, -0.581398, -0.027715,
		0.547173, 0.779782, -0.304206,
		29.691181, 31.189337, 25.526537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657049, 30.664019, 26.338955>,  <29.308159, 30.643490, 25.739481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657049, 30.664019, 26.338955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705454, 30.992840, 26.116392>,  <29.734497, 31.190132, 25.982855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705454, 30.992840, 26.116392>,  <29.657049, 30.664019, 26.338955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705454, 30.992840, 26.116392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250450, 0.517107, 0.818459,
		0.960537, -0.238396, -0.143306,
		0.121013, 0.822051, -0.556406,
		29.741758, 31.239454, 25.949471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285917, 30.974890, 26.540827>,  <29.657049, 30.664019, 26.338955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285917, 30.974890, 26.540827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007715, 31.222502, 26.394909>,  <29.840794, 31.371069, 26.307358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007715, 31.222502, 26.394909>,  <30.285917, 30.974890, 26.540827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007715, 31.222502, 26.394909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109428, 0.593038, 0.797704,
		0.710140, 0.514888, -0.480200,
		-0.695505, 0.619029, -0.364796,
		29.799065, 31.408211, 26.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569063, 31.479017, 26.682457>,  <30.285917, 30.974890, 26.540827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569063, 31.479017, 26.682457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199751, 31.623425, 26.629974>,  <29.978163, 31.710070, 26.598486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199751, 31.623425, 26.629974>,  <30.569063, 31.479017, 26.682457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199751, 31.623425, 26.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211992, 0.763747, 0.609713,
		0.320325, 0.535123, -0.781687,
		-0.923283, 0.361017, -0.131205,
		29.922766, 31.731730, 26.590612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675346, 32.174992, 26.577158>,  <30.569063, 31.479017, 26.682457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675346, 32.174992, 26.577158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298157, 32.121208, 26.698959>,  <30.071844, 32.088936, 26.772041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298157, 32.121208, 26.698959>,  <30.675346, 32.174992, 26.577158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298157, 32.121208, 26.698959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082778, 0.791319, 0.605774,
		-0.322414, 0.596434, -0.735061,
		-0.942972, -0.134463, 0.304505,
		30.015265, 32.080868, 26.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487545, 32.834476, 26.847691>,  <30.675346, 32.174992, 26.577158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487545, 32.834476, 26.847691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223555, 32.566677, 26.984047>,  <30.065161, 32.405998, 27.065861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223555, 32.566677, 26.984047>,  <30.487545, 32.834476, 26.847691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223555, 32.566677, 26.984047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069755, 0.506387, 0.859481,
		-0.748043, 0.543457, -0.380903,
		-0.659975, -0.669498, 0.340890,
		30.025562, 32.365829, 27.086313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882755, 33.260788, 27.219252>,  <30.487545, 32.834476, 26.847691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882755, 33.260788, 27.219252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872124, 32.885036, 27.355997>,  <29.865746, 32.659588, 27.438044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872124, 32.885036, 27.355997>,  <29.882755, 33.260788, 27.219252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872124, 32.885036, 27.355997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034760, 0.342644, 0.938822,
		-0.999042, 0.013070, -0.041760,
		-0.026579, -0.939375, 0.341861,
		29.864149, 32.603226, 27.458555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526264, 33.366959, 27.795855>,  <29.882755, 33.260788, 27.219252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526264, 33.366959, 27.795855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660263, 32.994858, 27.855734>,  <29.740664, 32.771599, 27.891661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660263, 32.994858, 27.855734>,  <29.526264, 33.366959, 27.795855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660263, 32.994858, 27.855734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180665, 0.092512, 0.979184,
		-0.924736, -0.355070, -0.137072,
		0.334998, -0.930251, 0.149698,
		29.760763, 32.715782, 27.900642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004675, 33.020748, 28.137589>,  <29.526264, 33.366959, 27.795855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004675, 33.020748, 28.137589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344481, 32.835079, 28.237888>,  <29.548363, 32.723679, 28.298067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344481, 32.835079, 28.237888>,  <29.004675, 33.020748, 28.137589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344481, 32.835079, 28.237888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349735, -0.139637, 0.926384,
		-0.394986, -0.874670, -0.280960,
		0.849512, -0.464170, 0.250748,
		29.599335, 32.695827, 28.313112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841822, 32.503956, 28.615673>,  <29.004675, 33.020748, 28.137589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841822, 32.503956, 28.615673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233862, 32.523849, 28.692537>,  <29.469086, 32.535786, 28.738655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233862, 32.523849, 28.692537>,  <28.841822, 32.503956, 28.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233862, 32.523849, 28.692537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181360, -0.169070, 0.968774,
		0.080673, -0.984348, -0.156686,
		0.980102, 0.049738, 0.192161,
		29.527893, 32.538769, 28.750185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865925, 32.004711, 29.039240>,  <28.841822, 32.503956, 28.615673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865925, 32.004711, 29.039240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184635, 32.235600, 29.110754>,  <29.375860, 32.374134, 29.153664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184635, 32.235600, 29.110754>,  <28.865925, 32.004711, 29.039240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184635, 32.235600, 29.110754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030841, -0.256640, 0.966015,
		0.603489, -0.775210, -0.186682,
		0.796775, 0.577222, 0.178787,
		29.423668, 32.408768, 29.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387173, 31.596958, 29.419989>,  <28.865925, 32.004711, 29.039240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387173, 31.596958, 29.419989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445652, 31.984365, 29.500586>,  <29.480740, 32.216808, 29.548944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445652, 31.984365, 29.500586>,  <29.387173, 31.596958, 29.419989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445652, 31.984365, 29.500586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014518, -0.201558, 0.979369,
		0.989149, -0.146108, -0.015407,
		0.146199, 0.968518, 0.201492,
		29.489511, 32.274921, 29.561033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826559, 31.596491, 30.005388>,  <29.387173, 31.596958, 29.419989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826559, 31.596491, 30.005388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681768, 31.968607, 30.029169>,  <29.594894, 32.191875, 30.043438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681768, 31.968607, 30.029169>,  <29.826559, 31.596491, 30.005388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681768, 31.968607, 30.029169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106198, -0.022209, 0.994097,
		0.926118, 0.366155, -0.090755,
		-0.361978, 0.930289, 0.059453,
		29.573175, 32.247692, 30.047005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386639, 32.041000, 30.417952>,  <29.826559, 31.596491, 30.005388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386639, 32.041000, 30.417952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036062, 32.232925, 30.434109>,  <29.825716, 32.348080, 30.443804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036062, 32.232925, 30.434109>,  <30.386639, 32.041000, 30.417952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036062, 32.232925, 30.434109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128135, 0.151541, 0.980111,
		0.464146, 0.864186, -0.194297,
		-0.876442, 0.479810, 0.040395,
		29.773130, 32.376869, 30.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462193, 32.729874, 30.871981>,  <30.386639, 32.041000, 30.417952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462193, 32.729874, 30.871981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072945, 32.639526, 30.854008>,  <29.839396, 32.585320, 30.843224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072945, 32.639526, 30.854008>,  <30.462193, 32.729874, 30.871981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072945, 32.639526, 30.854008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048347, 0.009612, 0.998784,
		-0.225159, 0.974111, -0.020274,
		-0.973122, -0.225866, -0.044931,
		29.781008, 32.571766, 30.840528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140032, 33.351742, 31.193769>,  <30.462193, 32.729874, 30.871981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140032, 33.351742, 31.193769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886818, 33.042397, 31.207487>,  <29.734890, 32.856789, 31.215717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886818, 33.042397, 31.207487>,  <30.140032, 33.351742, 31.193769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886818, 33.042397, 31.207487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094439, 0.121123, 0.988135,
		-0.768343, 0.622283, -0.149710,
		-0.633033, -0.773365, 0.034296,
		29.696909, 32.810387, 31.217775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702362, 33.401943, 31.781727>,  <30.140032, 33.351742, 31.193769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702362, 33.401943, 31.781727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581982, 33.029388, 31.699810>,  <29.509754, 32.805855, 31.650660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581982, 33.029388, 31.699810>,  <29.702362, 33.401943, 31.781727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581982, 33.029388, 31.699810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077468, -0.190161, 0.978692,
		-0.950488, 0.310403, -0.014924,
		-0.300951, -0.931391, -0.204792,
		29.491697, 32.749969, 31.638372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123207, 33.345871, 32.139980>,  <29.702362, 33.401943, 31.781727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123207, 33.345871, 32.139980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272690, 32.979702, 32.080200>,  <29.362379, 32.759998, 32.044331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272690, 32.979702, 32.080200>,  <29.123207, 33.345871, 32.139980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272690, 32.979702, 32.080200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007192, -0.163983, 0.986437,
		-0.927519, -0.367564, -0.067866,
		0.373708, -0.915427, -0.149454,
		29.384802, 32.705074, 32.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770535, 32.886326, 32.550285>,  <29.123207, 33.345871, 32.139980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770535, 32.886326, 32.550285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116205, 32.693230, 32.493492>,  <29.323608, 32.577374, 32.459415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116205, 32.693230, 32.493492>,  <28.770535, 32.886326, 32.550285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116205, 32.693230, 32.493492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043653, -0.209180, 0.976902,
		-0.501290, -0.850415, -0.159695,
		0.864178, -0.482740, -0.141983,
		29.375458, 32.548409, 32.450897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677500, 32.301888, 32.857426>,  <28.770535, 32.886326, 32.550285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677500, 32.301888, 32.857426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074917, 32.346157, 32.847439>,  <29.313368, 32.372719, 32.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074917, 32.346157, 32.847439>,  <28.677500, 32.301888, 32.857426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074917, 32.346157, 32.847439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050557, -0.234866, 0.970712,
		0.101570, -0.965706, -0.238945,
		0.993543, 0.110675, -0.024968,
		29.372980, 32.379360, 32.839947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838316, 31.784653, 33.350250>,  <28.677500, 32.301888, 32.857426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838316, 31.784653, 33.350250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160828, 32.018944, 33.317169>,  <29.354334, 32.159519, 33.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160828, 32.018944, 33.317169>,  <28.838316, 31.784653, 33.350250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160828, 32.018944, 33.317169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206446, -0.147614, 0.967259,
		0.554343, -0.796952, -0.239939,
		0.806278, 0.585728, -0.082699,
		29.402712, 32.194664, 33.292358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397392, 31.450264, 33.764877>,  <28.838316, 31.784653, 33.350250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397392, 31.450264, 33.764877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532267, 31.822971, 33.711037>,  <29.613192, 32.046597, 33.678730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532267, 31.822971, 33.711037>,  <29.397392, 31.450264, 33.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532267, 31.822971, 33.711037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280383, 0.037100, 0.959171,
		0.898717, -0.361158, -0.248742,
		0.337184, 0.931766, -0.134604,
		29.633423, 32.102501, 33.670654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085442, 31.440123, 33.979034>,  <29.397392, 31.450264, 33.764877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085442, 31.440123, 33.979034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935570, 31.808359, 34.023090>,  <29.845646, 32.029301, 34.049522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935570, 31.808359, 34.023090>,  <30.085442, 31.440123, 33.979034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935570, 31.808359, 34.023090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372593, 0.040728, 0.927100,
		0.848993, 0.388402, -0.358266,
		-0.374679, 0.920589, 0.110138,
		29.823166, 32.084538, 34.056133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571358, 31.824612, 34.372395>,  <30.085442, 31.440123, 33.979034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571358, 31.824612, 34.372395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241512, 32.049595, 34.396557>,  <30.043604, 32.184586, 34.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241512, 32.049595, 34.396557>,  <30.571358, 31.824612, 34.372395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241512, 32.049595, 34.396557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290083, 0.328770, 0.898756,
		0.485655, 0.758650, -0.434269,
		-0.824616, 0.562459, 0.060403,
		29.994127, 32.218334, 34.414677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801592, 32.448620, 34.609207>,  <30.571358, 31.824612, 34.372395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801592, 32.448620, 34.609207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414454, 32.440594, 34.709499>,  <30.182171, 32.435780, 34.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414454, 32.440594, 34.709499>,  <30.801592, 32.448620, 34.609207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414454, 32.440594, 34.709499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212246, 0.469809, 0.856873,
		-0.134989, 0.882540, -0.450445,
		-0.967848, -0.020064, 0.250735,
		30.124100, 32.434574, 34.784721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710131, 33.048153, 35.029743>,  <30.801592, 32.448620, 34.609207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710131, 33.048153, 35.029743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389154, 32.820156, 35.100391>,  <30.196568, 32.683357, 35.142780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389154, 32.820156, 35.100391>,  <30.710131, 33.048153, 35.029743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389154, 32.820156, 35.100391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051648, 0.228523, 0.972168,
		-0.594490, 0.789231, -0.153937,
		-0.802443, -0.569993, 0.176616,
		30.148422, 32.649158, 35.153378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023710, 33.267445, 34.361740>,  <30.710131, 33.048153, 35.029743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023710, 33.267445, 34.361740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422909, 33.262638, 34.336899>,  <31.662428, 33.259754, 34.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422909, 33.262638, 34.336899>,  <31.023710, 33.267445, 34.361740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422909, 33.262638, 34.336899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054404, 0.337855, -0.939624,
		0.032276, 0.941121, 0.336525,
		0.997997, -0.012019, -0.062106,
		31.722307, 33.259033, 34.318268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155811, 33.893379, 34.061974>,  <31.023710, 33.267445, 34.361740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155811, 33.893379, 34.061974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468672, 33.651031, 34.003780>,  <31.656389, 33.505623, 33.968864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468672, 33.651031, 34.003780>,  <31.155811, 33.893379, 34.061974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468672, 33.651031, 34.003780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023082, 0.261496, -0.964928,
		0.622659, 0.751363, 0.218514,
		0.782152, -0.605865, -0.145480,
		31.703318, 33.469273, 33.960136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576668, 34.311081, 33.712341>,  <31.155811, 33.893379, 34.061974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576668, 34.311081, 33.712341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763361, 33.961067, 33.661003>,  <31.875378, 33.751060, 33.630199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763361, 33.961067, 33.661003>,  <31.576668, 34.311081, 33.712341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763361, 33.961067, 33.661003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330933, 0.307375, -0.892191,
		0.820148, 0.373943, 0.433041,
		0.466734, -0.875036, -0.128343,
		31.903381, 33.698555, 33.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278328, 34.470963, 33.539940>,  <31.576668, 34.311081, 33.712341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278328, 34.470963, 33.539940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169197, 34.116272, 33.390663>,  <32.103718, 33.903458, 33.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169197, 34.116272, 33.390663>,  <32.278328, 34.470963, 33.539940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169197, 34.116272, 33.390663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353309, 0.268458, -0.896160,
		0.894839, -0.376352, 0.240046,
		-0.272830, -0.886729, -0.373196,
		32.087349, 33.850254, 33.278706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828575, 34.228165, 33.184048>,  <32.278328, 34.470963, 33.539940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828575, 34.228165, 33.184048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534103, 34.000629, 33.037369>,  <32.357422, 33.864109, 32.949360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534103, 34.000629, 33.037369>,  <32.828575, 34.228165, 33.184048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534103, 34.000629, 33.037369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291414, 0.222592, -0.930339,
		0.610833, -0.791757, 0.001899,
		-0.736180, -0.568835, -0.366696,
		32.313248, 33.829979, 32.927361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096172, 33.911667, 32.554184>,  <32.828575, 34.228165, 33.184048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096172, 33.911667, 32.554184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700359, 33.859161, 32.530212>,  <32.462872, 33.827656, 32.515827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700359, 33.859161, 32.530212>,  <33.096172, 33.911667, 32.554184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700359, 33.859161, 32.530212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048883, 0.085832, -0.995110,
		0.135770, -0.987624, -0.078517,
		-0.989534, -0.131268, -0.059931,
		32.403500, 33.819782, 32.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978630, 33.474968, 32.006149>,  <33.096172, 33.911667, 32.554184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978630, 33.474968, 32.006149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621689, 33.651867, 32.042217>,  <32.407524, 33.758007, 32.063858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621689, 33.651867, 32.042217>,  <32.978630, 33.474968, 32.006149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621689, 33.651867, 32.042217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041288, 0.118951, -0.992041,
		-0.449452, -0.888970, -0.087887,
		-0.892349, 0.442247, 0.090167,
		32.353985, 33.784542, 32.069267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620224, 33.234009, 31.452473>,  <32.978630, 33.474968, 32.006149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620224, 33.234009, 31.452473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449097, 33.578564, 31.561998>,  <32.346420, 33.785297, 31.627714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449097, 33.578564, 31.561998>,  <32.620224, 33.234009, 31.452473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449097, 33.578564, 31.561998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093603, 0.259086, -0.961308,
		-0.899004, -0.436897, -0.030213,
		-0.427820, 0.861392, 0.273814,
		32.320751, 33.836983, 31.644142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981522, 33.262688, 31.011253>,  <32.620224, 33.234009, 31.452473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981522, 33.262688, 31.011253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023331, 33.632462, 31.157951>,  <32.048416, 33.854324, 31.245970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023331, 33.632462, 31.157951>,  <31.981522, 33.262688, 31.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023331, 33.632462, 31.157951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133389, 0.378466, -0.915954,
		-0.985537, 0.046818, 0.162867,
		0.104523, 0.924430, 0.366747,
		32.054688, 33.909790, 31.267975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338503, 33.598640, 30.882168>,  <31.981522, 33.262688, 31.011253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338503, 33.598640, 30.882168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621305, 33.875889, 30.938341>,  <31.790987, 34.042240, 30.972046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621305, 33.875889, 30.938341>,  <31.338503, 33.598640, 30.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621305, 33.875889, 30.938341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093939, 0.288857, -0.952752,
		-0.700943, 0.660408, 0.269335,
		0.707004, 0.693126, 0.140435,
		31.833406, 34.083828, 30.980471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093813, 34.256165, 30.658020>,  <31.338503, 33.598640, 30.882168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093813, 34.256165, 30.658020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493063, 34.249989, 30.634340>,  <31.732613, 34.246281, 30.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493063, 34.249989, 30.634340>,  <31.093813, 34.256165, 30.658020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493063, 34.249989, 30.634340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056847, 0.123583, -0.990705,
		0.022616, 0.992214, 0.122473,
		0.998127, -0.015443, -0.059199,
		31.792501, 34.245358, 30.616581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267233, 34.357407, 30.039185>,  <31.093813, 34.256165, 30.658020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267233, 34.357407, 30.039185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649237, 34.270008, 30.119400>,  <31.878439, 34.217567, 30.167530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649237, 34.270008, 30.119400>,  <31.267233, 34.357407, 30.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649237, 34.270008, 30.119400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175818, -0.127447, -0.976138,
		0.238844, 0.967479, -0.083296,
		0.955009, -0.218500, 0.200540,
		31.935740, 34.204456, 30.179562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591064, 34.746082, 29.559496>,  <31.267233, 34.357407, 30.039185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591064, 34.746082, 29.559496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831795, 34.443432, 29.661726>,  <31.976233, 34.261841, 29.723064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831795, 34.443432, 29.661726>,  <31.591064, 34.746082, 29.559496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831795, 34.443432, 29.661726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300818, -0.081683, -0.950177,
		0.739807, 0.648723, 0.178448,
		0.601826, -0.756628, 0.255577,
		32.012344, 34.216442, 29.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287663, 34.860294, 29.192059>,  <31.591064, 34.746082, 29.559496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287663, 34.860294, 29.192059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246708, 34.473194, 29.284119>,  <32.222134, 34.240932, 29.339355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246708, 34.473194, 29.284119>,  <32.287663, 34.860294, 29.192059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246708, 34.473194, 29.284119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274795, -0.249880, -0.928465,
		0.956036, -0.031818, 0.291519,
		-0.102387, -0.967754, 0.230151,
		32.215992, 34.182869, 29.353165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888008, 34.545620, 28.791571>,  <32.287663, 34.860294, 29.192059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888008, 34.545620, 28.791571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636063, 34.247715, 28.879755>,  <32.484894, 34.068974, 28.932665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636063, 34.247715, 28.879755>,  <32.888008, 34.545620, 28.791571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636063, 34.247715, 28.879755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174638, -0.412372, -0.894120,
		0.756816, -0.524674, 0.389802,
		-0.629865, -0.744759, 0.220462,
		32.447102, 34.024288, 28.945894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307365, 33.978516, 28.675081>,  <32.888008, 34.545620, 28.791571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307365, 33.978516, 28.675081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931202, 33.847725, 28.637735>,  <32.705505, 33.769249, 28.615328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931202, 33.847725, 28.637735>,  <33.307365, 33.978516, 28.675081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931202, 33.847725, 28.637735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197048, -0.300240, -0.933289,
		0.277132, -0.896070, 0.346779,
		-0.940410, -0.326977, -0.093363,
		32.649078, 33.749634, 28.609726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340805, 33.273556, 28.393160>,  <33.307365, 33.978516, 28.675081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340805, 33.273556, 28.393160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975639, 33.421635, 28.324408>,  <32.756538, 33.510483, 28.283155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975639, 33.421635, 28.324408>,  <33.340805, 33.273556, 28.393160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975639, 33.421635, 28.324408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026287, -0.366922, -0.929880,
		-0.407308, -0.853418, 0.325236,
		-0.912913, 0.370198, -0.171884,
		32.701763, 33.532692, 28.272842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979633, 32.829044, 28.104767>,  <33.340805, 33.273556, 28.393160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979633, 32.829044, 28.104767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751614, 33.141727, 28.003593>,  <32.614803, 33.329338, 27.942888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751614, 33.141727, 28.003593>,  <32.979633, 32.829044, 28.104767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751614, 33.141727, 28.003593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175441, -0.416564, -0.892017,
		-0.802663, -0.464116, 0.374605,
		-0.570046, 0.781710, -0.252935,
		32.580601, 33.376240, 27.927713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365482, 32.549706, 27.818604>,  <32.979633, 32.829044, 28.104767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365482, 32.549706, 27.818604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397446, 32.916969, 27.663380>,  <32.416626, 33.137329, 27.570246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397446, 32.916969, 27.663380>,  <32.365482, 32.549706, 27.818604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397446, 32.916969, 27.663380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464161, -0.310248, -0.829639,
		-0.882139, 0.246420, 0.401383,
		0.079911, 0.918163, -0.388061,
		32.421417, 33.192417, 27.546961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747593, 32.646610, 27.391159>,  <32.365482, 32.549706, 27.818604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747593, 32.646610, 27.391159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977886, 32.948833, 27.266153>,  <32.116062, 33.130169, 27.191149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977886, 32.948833, 27.266153>,  <31.747593, 32.646610, 27.391159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977886, 32.948833, 27.266153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210282, -0.232535, -0.949584,
		-0.790136, 0.612422, 0.025002,
		0.575732, 0.755557, -0.312516,
		32.150604, 33.175499, 27.172400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431334, 32.777630, 26.768774>,  <31.747593, 32.646610, 27.391159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431334, 32.777630, 26.768774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780436, 32.970650, 26.739248>,  <31.989897, 33.086460, 26.721533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780436, 32.970650, 26.739248>,  <31.431334, 32.777630, 26.768774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780436, 32.970650, 26.739248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137112, 0.097195, -0.985775,
		-0.468510, 0.870460, 0.150990,
		0.872753, 0.482548, -0.073814,
		32.042263, 33.115414, 26.717104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343678, 33.365326, 26.283068>,  <31.431334, 32.777630, 26.768774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343678, 33.365326, 26.283068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736494, 33.290924, 26.295700>,  <31.972183, 33.246284, 26.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736494, 33.290924, 26.295700>,  <31.343678, 33.365326, 26.283068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736494, 33.290924, 26.295700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005881, -0.137126, -0.990536,
		0.188572, 0.972934, -0.133570,
		0.982042, -0.186002, 0.031580,
		32.031105, 33.235123, 26.305174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668066, 33.775089, 25.707731>,  <31.343678, 33.365326, 26.283068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668066, 33.775089, 25.707731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926304, 33.485992, 25.806396>,  <32.081245, 33.312534, 25.865597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926304, 33.485992, 25.806396>,  <31.668066, 33.775089, 25.707731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926304, 33.485992, 25.806396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076217, -0.382360, -0.920865,
		0.759866, 0.575706, -0.301936,
		0.645596, -0.722747, 0.246664,
		32.119984, 33.269169, 25.880396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076160, 33.796299, 25.180010>,  <31.668066, 33.775089, 25.707731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076160, 33.796299, 25.180010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154751, 33.435543, 25.333893>,  <32.201904, 33.219090, 25.426222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154751, 33.435543, 25.333893>,  <32.076160, 33.796299, 25.180010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154751, 33.435543, 25.333893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008043, -0.393824, -0.919151,
		0.980476, 0.177494, -0.084630,
		0.196473, -0.901886, 0.384707,
		32.213692, 33.164978, 25.449305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576912, 33.491425, 24.856449>,  <32.076160, 33.796299, 25.180010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576912, 33.491425, 24.856449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423954, 33.146194, 24.988434>,  <32.332180, 32.939056, 25.067625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423954, 33.146194, 24.988434>,  <32.576912, 33.491425, 24.856449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423954, 33.146194, 24.988434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117830, -0.399734, -0.909026,
		0.916457, -0.308723, 0.254551,
		-0.382390, -0.863078, 0.329962,
		32.309238, 32.887272, 25.087423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945621, 32.890076, 24.514013>,  <32.576912, 33.491425, 24.856449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945621, 32.890076, 24.514013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633568, 32.695839, 24.671789>,  <32.446335, 32.579296, 24.766455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633568, 32.695839, 24.671789>,  <32.945621, 32.890076, 24.514013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633568, 32.695839, 24.671789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092895, -0.533586, -0.840629,
		0.618674, -0.692447, 0.371160,
		-0.780136, -0.485596, 0.394441,
		32.399529, 32.550159, 24.790121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101662, 32.190887, 24.447231>,  <32.945621, 32.890076, 24.514013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101662, 32.190887, 24.447231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702297, 32.197453, 24.468803>,  <32.462677, 32.201389, 24.481747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702297, 32.197453, 24.468803>,  <33.101662, 32.190887, 24.447231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702297, 32.197453, 24.468803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049878, -0.702898, -0.709540,
		0.026263, -0.711101, 0.702599,
		-0.998410, 0.016410, 0.053928,
		32.402775, 32.202377, 24.484982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895401, 31.490969, 24.442259>,  <33.101662, 32.190887, 24.447231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895401, 31.490969, 24.442259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592880, 31.718695, 24.313332>,  <32.411369, 31.855330, 24.235975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592880, 31.718695, 24.313332>,  <32.895401, 31.490969, 24.442259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592880, 31.718695, 24.313332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088047, -0.576763, -0.812153,
		-0.648272, -0.585852, 0.486333,
		-0.756301, 0.569316, -0.322317,
		32.365990, 31.889490, 24.216637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356339, 30.977102, 24.415461>,  <32.895401, 31.490969, 24.442259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356339, 30.977102, 24.415461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302391, 31.280621, 24.160576>,  <32.270023, 31.462732, 24.007645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302391, 31.280621, 24.160576>,  <32.356339, 30.977102, 24.415461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302391, 31.280621, 24.160576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288617, -0.645286, -0.707323,
		-0.947899, 0.088518, 0.306028,
		-0.134864, 0.758796, -0.637213,
		32.261932, 31.508259, 23.969412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828455, 30.739260, 23.860390>,  <32.356339, 30.977102, 24.415461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828455, 30.739260, 23.860390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973385, 31.072903, 23.694023>,  <32.060345, 31.273088, 23.594202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973385, 31.072903, 23.694023>,  <31.828455, 30.739260, 23.860390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973385, 31.072903, 23.694023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042631, -0.430941, -0.901373,
		-0.931076, 0.344321, -0.120582,
		0.362325, 0.834106, -0.415917,
		32.082081, 31.323135, 23.569248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377470, 30.959448, 23.316889>,  <31.828455, 30.739260, 23.860390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377470, 30.959448, 23.316889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724220, 31.137358, 23.226818>,  <31.932270, 31.244102, 23.172775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724220, 31.137358, 23.226818>,  <31.377470, 30.959448, 23.316889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724220, 31.137358, 23.226818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034050, -0.397806, -0.916837,
		-0.497361, 0.802451, -0.329704,
		0.866875, 0.444773, -0.225177,
		31.984283, 31.270790, 23.159266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254345, 31.124331, 22.668016>,  <31.377470, 30.959448, 23.316889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254345, 31.124331, 22.668016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650179, 31.174541, 22.696198>,  <31.887680, 31.204668, 22.713106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650179, 31.174541, 22.696198>,  <31.254345, 31.124331, 22.668016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650179, 31.174541, 22.696198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129003, -0.556210, -0.820968,
		-0.063869, 0.821507, -0.566611,
		0.989585, 0.125529, 0.070452,
		31.947054, 31.212200, 22.717333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618687, 31.336500, 22.046030>,  <31.254345, 31.124331, 22.668016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618687, 31.336500, 22.046030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924164, 31.154095, 22.228821>,  <32.107449, 31.044651, 22.338495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924164, 31.154095, 22.228821>,  <31.618687, 31.336500, 22.046030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924164, 31.154095, 22.228821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284818, -0.397246, -0.872396,
		0.579356, 0.796396, -0.173493,
		0.763692, -0.456014, 0.456975,
		32.153271, 31.017290, 22.365913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243710, 31.468279, 21.615948>,  <31.618687, 31.336500, 22.046030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243710, 31.468279, 21.615948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294609, 31.147030, 21.848776>,  <32.325150, 30.954281, 21.988472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294609, 31.147030, 21.848776>,  <32.243710, 31.468279, 21.615948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294609, 31.147030, 21.848776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387194, -0.500057, -0.774612,
		0.913175, 0.323943, 0.247331,
		0.127250, -0.803121, 0.582069,
		32.332783, 30.906094, 22.023396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793449, 31.205839, 21.306023>,  <32.243710, 31.468279, 21.615948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793449, 31.205839, 21.306023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667965, 30.917582, 21.553329>,  <32.592674, 30.744627, 21.701714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667965, 30.917582, 21.553329>,  <32.793449, 31.205839, 21.306023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667965, 30.917582, 21.553329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319410, -0.693287, -0.646011,
		0.894182, -0.005182, 0.447674,
		-0.313714, -0.720643, 0.618269,
		32.573853, 30.701389, 21.738810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274113, 30.705658, 21.239561>,  <32.793449, 31.205839, 21.306023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274113, 30.705658, 21.239561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963997, 30.525002, 21.416168>,  <32.777927, 30.416607, 21.522133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963997, 30.525002, 21.416168>,  <33.274113, 30.705658, 21.239561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963997, 30.525002, 21.416168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110670, -0.785376, -0.609046,
		0.621829, -0.423326, 0.658881,
		-0.775294, -0.451641, 0.441520,
		32.731407, 30.389509, 21.548624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474941, 29.952869, 21.334368>,  <33.274113, 30.705658, 21.239561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474941, 29.952869, 21.334368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075089, 29.963606, 21.335398>,  <32.835175, 29.970047, 21.336016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075089, 29.963606, 21.335398>,  <33.474941, 29.952869, 21.334368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075089, 29.963606, 21.335398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024678, -0.872221, -0.488489,
		-0.010863, -0.488375, 0.872566,
		-0.999637, 0.026839, 0.002577,
		32.775196, 29.971659, 21.336170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377758, 29.326754, 21.183599>,  <33.474941, 29.952869, 21.334368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377758, 29.326754, 21.183599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007622, 29.477222, 21.164656>,  <32.785542, 29.567505, 21.153290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007622, 29.477222, 21.164656>,  <33.377758, 29.326754, 21.183599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007622, 29.477222, 21.164656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327616, -0.856188, -0.399511,
		-0.190834, -0.354167, 0.915504,
		-0.925338, 0.376174, -0.047359,
		32.730019, 29.590075, 21.150448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872738, 28.997805, 21.697548>,  <33.377758, 29.326754, 21.183599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872738, 28.997805, 21.697548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240543, 28.868849, 21.787493>,  <34.461227, 28.791475, 21.841459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240543, 28.868849, 21.787493>,  <33.872738, 28.997805, 21.697548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240543, 28.868849, 21.787493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280157, -0.136277, 0.950232,
		-0.275700, -0.936747, -0.215628,
		0.919512, -0.322389, 0.224864,
		34.516396, 28.772133, 21.854952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802788, 28.266253, 22.036671>,  <33.872738, 28.997805, 21.697548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802788, 28.266253, 22.036671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164570, 28.409842, 22.128845>,  <34.381638, 28.495995, 22.184151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164570, 28.409842, 22.128845>,  <33.802788, 28.266253, 22.036671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164570, 28.409842, 22.128845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142306, -0.255347, 0.956319,
		0.402132, -0.897740, -0.179865,
		0.904455, 0.358971, 0.230438,
		34.435905, 28.517532, 22.197977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154152, 27.737854, 22.508718>,  <33.802788, 28.266253, 22.036671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154152, 27.737854, 22.508718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339508, 28.088898, 22.557831>,  <34.450722, 28.299524, 22.587297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339508, 28.088898, 22.557831>,  <34.154152, 27.737854, 22.508718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339508, 28.088898, 22.557831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079107, -0.097034, 0.992132,
		0.882618, -0.469455, 0.024460,
		0.463388, 0.877608, 0.122781,
		34.478523, 28.352180, 22.594666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652969, 27.671789, 22.993639>,  <34.154152, 27.737854, 22.508718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652969, 27.671789, 22.993639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561996, 28.061306, 22.992682>,  <34.507412, 28.295015, 22.992107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561996, 28.061306, 22.992682>,  <34.652969, 27.671789, 22.993639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561996, 28.061306, 22.992682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164517, -0.036002, 0.985717,
		0.959796, 0.224579, 0.168393,
		-0.227434, 0.973791, -0.002393,
		34.493767, 28.353443, 22.991964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841888, 27.865309, 23.625074>,  <34.652969, 27.671789, 22.993639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841888, 27.865309, 23.625074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618294, 28.172644, 23.500370>,  <34.484138, 28.357044, 23.425549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618294, 28.172644, 23.500370>,  <34.841888, 27.865309, 23.625074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618294, 28.172644, 23.500370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245340, 0.205892, 0.947321,
		0.792052, 0.606024, 0.073413,
		-0.558984, 0.768338, -0.311759,
		34.450600, 28.403145, 23.406843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996639, 28.328476, 24.128857>,  <34.841888, 27.865309, 23.625074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996639, 28.328476, 24.128857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663803, 28.484184, 23.970825>,  <34.464100, 28.577610, 23.876007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663803, 28.484184, 23.970825>,  <34.996639, 28.328476, 24.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663803, 28.484184, 23.970825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232829, 0.401359, 0.885834,
		0.503397, 0.829083, -0.243336,
		-0.832095, 0.389271, -0.395078,
		34.414173, 28.600965, 23.852303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943161, 29.083677, 24.299751>,  <34.996639, 28.328476, 24.128857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943161, 29.083677, 24.299751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564098, 28.970366, 24.240818>,  <34.336662, 28.902378, 24.205458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564098, 28.970366, 24.240818>,  <34.943161, 29.083677, 24.299751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564098, 28.970366, 24.240818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277909, 0.504538, 0.817440,
		-0.157228, 0.815595, -0.556853,
		-0.947653, -0.283279, -0.147334,
		34.279804, 28.885382, 24.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507751, 29.612997, 24.525791>,  <34.943161, 29.083677, 24.299751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507751, 29.612997, 24.525791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235077, 29.320389, 24.520456>,  <34.071472, 29.144823, 24.517256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235077, 29.320389, 24.520456>,  <34.507751, 29.612997, 24.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235077, 29.320389, 24.520456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487377, 0.440428, 0.753981,
		-0.545680, 0.520479, -0.656761,
		-0.681687, -0.731522, -0.013336,
		34.030571, 29.100931, 24.516455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829853, 29.887114, 24.352587>,  <34.507751, 29.612997, 24.525791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829853, 29.887114, 24.352587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808025, 29.555305, 24.574909>,  <33.794930, 29.356220, 24.708302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808025, 29.555305, 24.574909>,  <33.829853, 29.887114, 24.352587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808025, 29.555305, 24.574909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486345, 0.508224, 0.710758,
		-0.872061, -0.231526, -0.431166,
		-0.054570, -0.829520, 0.555805,
		33.791653, 29.306450, 24.741650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211403, 29.975355, 24.749504>,  <33.829853, 29.887114, 24.352587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211403, 29.975355, 24.749504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368252, 29.663479, 24.944778>,  <33.462360, 29.476353, 25.061943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368252, 29.663479, 24.944778>,  <33.211403, 29.975355, 24.749504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368252, 29.663479, 24.944778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332625, 0.374610, 0.865464,
		-0.857672, -0.501750, -0.112451,
		0.392122, -0.779689, 0.488187,
		33.485889, 29.429573, 25.091234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616676, 29.678968, 25.189611>,  <33.211403, 29.975355, 24.749504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616676, 29.678968, 25.189611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962345, 29.554245, 25.347586>,  <33.169746, 29.479410, 25.442369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962345, 29.554245, 25.347586>,  <32.616676, 29.678968, 25.189611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962345, 29.554245, 25.347586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279958, 0.354236, 0.892267,
		-0.418118, -0.881641, 0.218828,
		0.864176, -0.311810, 0.394935,
		33.221600, 29.460703, 25.466066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456024, 29.458836, 25.957466>,  <32.616676, 29.678968, 25.189611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456024, 29.458836, 25.957466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853779, 29.497652, 25.940628>,  <33.092434, 29.520943, 25.930525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853779, 29.497652, 25.940628>,  <32.456024, 29.458836, 25.957466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853779, 29.497652, 25.940628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007889, 0.328811, 0.944363,
		0.105484, -0.939397, 0.326201,
		0.994389, 0.097042, -0.042095,
		33.152096, 29.526766, 25.927999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600925, 29.306648, 26.710899>,  <32.456024, 29.458836, 25.957466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600925, 29.306648, 26.710899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897552, 29.498142, 26.522903>,  <33.075527, 29.613039, 26.410107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897552, 29.498142, 26.522903>,  <32.600925, 29.306648, 26.710899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897552, 29.498142, 26.522903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383231, 0.272720, 0.882472,
		0.550645, -0.834529, 0.018775,
		0.741569, 0.478733, -0.469989,
		33.120022, 29.641762, 26.381907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305672, 28.977856, 26.940069>,  <32.600925, 29.306648, 26.710899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305672, 28.977856, 26.940069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360870, 29.349373, 26.802488>,  <33.393990, 29.572283, 26.719940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360870, 29.349373, 26.802488>,  <33.305672, 28.977856, 26.940069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360870, 29.349373, 26.802488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269465, 0.298965, 0.915428,
		0.953072, -0.219006, -0.209022,
		0.137994, 0.928793, -0.343950,
		33.402267, 29.628010, 26.699303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958958, 29.224867, 27.245493>,  <33.305672, 28.977856, 26.940069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958958, 29.224867, 27.245493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763371, 29.555223, 27.133202>,  <33.646019, 29.753437, 27.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763371, 29.555223, 27.133202>,  <33.958958, 29.224867, 27.245493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763371, 29.555223, 27.133202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173082, 0.407287, 0.896750,
		0.854956, 0.389896, -0.342098,
		-0.488971, 0.825892, -0.280729,
		33.616680, 29.802992, 27.048983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427811, 29.755415, 27.472853>,  <33.958958, 29.224867, 27.245493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427811, 29.755415, 27.472853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063705, 29.908026, 27.408525>,  <33.845242, 29.999592, 27.369928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063705, 29.908026, 27.408525>,  <34.427811, 29.755415, 27.472853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063705, 29.908026, 27.408525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159692, 0.681884, 0.713816,
		0.381999, 0.624077, -0.681619,
		-0.910261, 0.381525, -0.160819,
		33.790627, 30.022484, 27.360279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513882, 30.484884, 27.355892>,  <34.427811, 29.755415, 27.472853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513882, 30.484884, 27.355892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129086, 30.459991, 27.462254>,  <33.898209, 30.445055, 27.526070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129086, 30.459991, 27.462254>,  <34.513882, 30.484884, 27.355892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129086, 30.459991, 27.462254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179280, 0.590573, 0.786817,
		-0.206001, 0.804581, -0.556968,
		-0.961989, -0.062232, 0.265904,
		33.840488, 30.441322, 27.542025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332409, 31.180330, 27.529787>,  <34.513882, 30.484884, 27.355892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332409, 31.180330, 27.529787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060989, 30.945679, 27.706623>,  <33.898140, 30.804888, 27.812725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060989, 30.945679, 27.706623>,  <34.332409, 31.180330, 27.529787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060989, 30.945679, 27.706623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105023, 0.518183, 0.848797,
		-0.727011, 0.622378, -0.290001,
		-0.678546, -0.586628, 0.442089,
		33.857426, 30.769690, 27.839251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889851, 31.644007, 27.777699>,  <34.332409, 31.180330, 27.529787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889851, 31.644007, 27.777699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826794, 31.309666, 27.988031>,  <33.788960, 31.109060, 28.114231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826794, 31.309666, 27.988031>,  <33.889851, 31.644007, 27.777699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826794, 31.309666, 27.988031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018094, 0.529956, 0.847832,
		-0.987331, 0.143165, -0.068418,
		-0.157638, -0.835853, 0.525832,
		33.779503, 31.058910, 28.145781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376446, 31.878229, 28.217947>,  <33.889851, 31.644007, 27.777699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376446, 31.878229, 28.217947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478474, 31.538057, 28.401993>,  <33.539688, 31.333954, 28.512421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478474, 31.538057, 28.401993>,  <33.376446, 31.878229, 28.217947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478474, 31.538057, 28.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021146, 0.470836, 0.881967,
		-0.966692, -0.234690, 0.102111,
		0.255066, -0.850432, 0.460116,
		33.554993, 31.282928, 28.540028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899395, 31.785286, 28.741457>,  <33.376446, 31.878229, 28.217947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899395, 31.785286, 28.741457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191978, 31.548275, 28.876438>,  <33.367531, 31.406069, 28.957428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191978, 31.548275, 28.876438>,  <32.899395, 31.785286, 28.741457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191978, 31.548275, 28.876438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119343, 0.598494, 0.792188,
		-0.671357, -0.539183, 0.508489,
		0.731462, -0.592525, 0.337455,
		33.411419, 31.370518, 28.977674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758221, 31.850315, 29.379751>,  <32.899395, 31.785286, 28.741457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758221, 31.850315, 29.379751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133556, 31.712063, 29.376682>,  <33.358757, 31.629110, 29.374842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133556, 31.712063, 29.376682>,  <32.758221, 31.850315, 29.379751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133556, 31.712063, 29.376682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233422, 0.617026, 0.751528,
		-0.255019, -0.706978, 0.659657,
		0.938339, -0.345632, -0.007671,
		33.415058, 31.608374, 29.374380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970169, 31.714323, 30.110003>,  <32.758221, 31.850315, 29.379751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970169, 31.714323, 30.110003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294670, 31.753462, 29.879421>,  <33.489372, 31.776945, 29.741074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294670, 31.753462, 29.879421>,  <32.970169, 31.714323, 30.110003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294670, 31.753462, 29.879421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458850, 0.504513, 0.731384,
		0.362392, -0.857841, 0.364390,
		0.811251, 0.097848, -0.576452,
		33.538044, 31.782816, 29.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530922, 31.506500, 30.529684>,  <32.970169, 31.714323, 30.110003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530922, 31.506500, 30.529684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669254, 31.724796, 30.224380>,  <33.752254, 31.855774, 30.041199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669254, 31.724796, 30.224380>,  <33.530922, 31.506500, 30.529684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669254, 31.724796, 30.224380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503646, 0.578364, 0.641743,
		0.791668, -0.606350, -0.074842,
		0.345835, 0.545742, -0.763259,
		33.773006, 31.888519, 29.995403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199169, 31.556664, 30.737108>,  <33.530922, 31.506500, 30.529684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199169, 31.556664, 30.737108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130688, 31.845112, 30.468580>,  <34.089600, 32.018181, 30.307463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130688, 31.845112, 30.468580>,  <34.199169, 31.556664, 30.737108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130688, 31.845112, 30.468580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513430, 0.646848, 0.563894,
		0.840879, -0.248134, -0.480990,
		-0.171206, 0.721122, -0.671321,
		34.079327, 32.061447, 30.267183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783760, 31.796503, 30.678345>,  <34.199169, 31.556664, 30.737108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783760, 31.796503, 30.678345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523399, 32.074017, 30.555063>,  <34.367184, 32.240524, 30.481094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523399, 32.074017, 30.555063>,  <34.783760, 31.796503, 30.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523399, 32.074017, 30.555063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483522, 0.691853, 0.536234,
		0.585263, 0.200011, -0.785788,
		-0.650902, 0.693783, -0.308206,
		34.328129, 32.282150, 30.462601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245525, 32.318394, 30.561478>,  <34.783760, 31.796503, 30.678345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245525, 32.318394, 30.561478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888809, 32.497654, 30.586365>,  <34.674782, 32.605209, 30.601297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888809, 32.497654, 30.586365>,  <35.245525, 32.318394, 30.561478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888809, 32.497654, 30.586365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410052, 0.742415, 0.529790,
		0.191236, 0.497973, -0.845844,
		-0.891788, 0.448155, 0.062218,
		34.621273, 32.632099, 30.605030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353100, 33.025265, 30.490131>,  <35.245525, 32.318394, 30.561478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353100, 33.025265, 30.490131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997066, 33.022892, 30.672436>,  <34.783447, 33.021469, 30.781818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997066, 33.022892, 30.672436>,  <35.353100, 33.025265, 30.490131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997066, 33.022892, 30.672436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326841, 0.688631, 0.647274,
		-0.317694, 0.725088, -0.610998,
		-0.890082, -0.005936, 0.455762,
		34.730042, 33.021111, 30.809164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156166, 33.709579, 30.515770>,  <35.353100, 33.025265, 30.490131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156166, 33.709579, 30.515770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972134, 33.516159, 30.813631>,  <34.861713, 33.400108, 30.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972134, 33.516159, 30.813631>,  <35.156166, 33.709579, 30.515770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972134, 33.516159, 30.813631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225205, 0.747706, 0.624675,
		-0.858841, 0.455101, -0.235109,
		-0.460082, -0.483549, 0.744651,
		34.834110, 33.371094, 31.037025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771915, 34.216942, 30.925854>,  <35.156166, 33.709579, 30.515770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771915, 34.216942, 30.925854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840637, 33.906055, 31.167984>,  <34.881870, 33.719524, 31.313261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840637, 33.906055, 31.167984>,  <34.771915, 34.216942, 30.925854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840637, 33.906055, 31.167984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111306, 0.625841, 0.771968,
		-0.978822, -0.065255, 0.194034,
		0.171809, -0.777216, 0.605324,
		34.892181, 33.672890, 31.349581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533417, 34.424541, 31.579235>,  <34.771915, 34.216942, 30.925854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533417, 34.424541, 31.579235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768799, 34.114342, 31.670731>,  <34.910027, 33.928223, 31.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768799, 34.114342, 31.670731>,  <34.533417, 34.424541, 31.579235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768799, 34.114342, 31.670731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232317, 0.433151, 0.870867,
		-0.774438, -0.459323, 0.435050,
		0.588451, -0.775502, 0.228740,
		34.945335, 33.881691, 31.739353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449131, 34.296410, 32.275917>,  <34.533417, 34.424541, 31.579235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449131, 34.296410, 32.275917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796768, 34.107071, 32.218483>,  <35.005352, 33.993469, 32.184021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796768, 34.107071, 32.218483>,  <34.449131, 34.296410, 32.275917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796768, 34.107071, 32.218483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300162, 0.273947, 0.913704,
		-0.393164, -0.837195, 0.380167,
		0.869094, -0.473347, -0.143589,
		35.057495, 33.965065, 32.175407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602131, 34.015034, 32.900723>,  <34.449131, 34.296410, 32.275917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602131, 34.015034, 32.900723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954777, 34.035732, 32.713074>,  <35.166363, 34.048153, 32.600483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954777, 34.035732, 32.713074>,  <34.602131, 34.015034, 32.900723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954777, 34.035732, 32.713074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443135, 0.251340, 0.860500,
		0.162439, -0.966514, 0.198654,
		0.881615, 0.051749, -0.469124,
		35.219261, 34.051258, 32.572338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013905, 33.625717, 33.354214>,  <34.602131, 34.015034, 32.900723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013905, 33.625717, 33.354214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276413, 33.838661, 33.140331>,  <35.433918, 33.966427, 33.012001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276413, 33.838661, 33.140331>,  <35.013905, 33.625717, 33.354214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276413, 33.838661, 33.140331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591827, 0.076391, 0.802437,
		0.468031, -0.843064, -0.264932,
		0.656267, 0.532360, -0.534702,
		35.473293, 33.998367, 32.979919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620518, 33.254795, 33.420143>,  <35.013905, 33.625717, 33.354214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620518, 33.254795, 33.420143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709057, 33.635910, 33.337006>,  <35.762180, 33.864578, 33.287125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709057, 33.635910, 33.337006>,  <35.620518, 33.254795, 33.420143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709057, 33.635910, 33.337006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760657, -0.035313, 0.648193,
		0.610251, -0.301573, -0.732562,
		0.221347, 0.952789, -0.207844,
		35.775459, 33.921745, 33.274651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275684, 33.312260, 33.424320>,  <35.620518, 33.254795, 33.420143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275684, 33.312260, 33.424320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225830, 33.709141, 33.423870>,  <36.195919, 33.947269, 33.423599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225830, 33.709141, 33.423870>,  <36.275684, 33.312260, 33.424320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225830, 33.709141, 33.423870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847525, 0.107052, 0.519847,
		0.515914, 0.063833, -0.854259,
		-0.124633, 0.992202, -0.001130,
		36.188438, 34.006802, 33.423531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015186, 33.570732, 33.375797>,  <36.275684, 33.312260, 33.424320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015186, 33.570732, 33.375797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809292, 33.880192, 33.523586>,  <36.685757, 34.065868, 33.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809292, 33.880192, 33.523586>,  <37.015186, 33.570732, 33.375797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809292, 33.880192, 33.523586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770239, 0.228019, 0.595599,
		0.376541, 0.591157, -0.713267,
		-0.514732, 0.773654, 0.369474,
		36.654873, 34.112289, 33.634430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464413, 34.081154, 33.355156>,  <37.015186, 33.570732, 33.375797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464413, 34.081154, 33.355156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192520, 34.186722, 33.628891>,  <37.029385, 34.250061, 33.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192520, 34.186722, 33.628891>,  <37.464413, 34.081154, 33.355156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192520, 34.186722, 33.628891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727084, 0.119644, 0.676043,
		0.096543, 0.957096, -0.273216,
		-0.679727, 0.263918, 0.684338,
		36.988602, 34.265896, 33.834194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763199, 34.586201, 33.637848>,  <37.464413, 34.081154, 33.355156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763199, 34.586201, 33.637848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496315, 34.490448, 33.919991>,  <37.336185, 34.432995, 34.089275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496315, 34.490448, 33.919991>,  <37.763199, 34.586201, 33.637848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496315, 34.490448, 33.919991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700305, 0.121028, 0.703509,
		-0.253777, 0.963352, 0.086891,
		-0.667211, -0.239385, 0.705354,
		37.296150, 34.418633, 34.131596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891331, 35.063557, 34.160843>,  <37.763199, 34.586201, 33.637848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891331, 35.063557, 34.160843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697941, 34.759998, 34.335346>,  <37.581905, 34.577862, 34.440048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697941, 34.759998, 34.335346>,  <37.891331, 35.063557, 34.160843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697941, 34.759998, 34.335346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635483, 0.038455, 0.771157,
		-0.602006, 0.650072, 0.463675,
		-0.483477, -0.758899, 0.436260,
		37.552898, 34.532330, 34.466225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898849, 35.204964, 34.835346>,  <37.891331, 35.063557, 34.160843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898849, 35.204964, 34.835346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886715, 34.805317, 34.846985>,  <37.879436, 34.565529, 34.853970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886715, 34.805317, 34.846985>,  <37.898849, 35.204964, 34.835346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886715, 34.805317, 34.846985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728665, -0.002175, 0.684867,
		-0.684198, 0.041979, 0.728087,
		-0.030334, -0.999116, 0.029101,
		37.877613, 34.505581, 34.855717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867725, 34.912498, 35.514977>,  <37.898849, 35.204964, 34.835346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867725, 34.912498, 35.514977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063625, 34.645435, 35.290699>,  <38.181168, 34.485199, 35.156132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063625, 34.645435, 35.290699>,  <37.867725, 34.912498, 35.514977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063625, 34.645435, 35.290699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769076, 0.027902, 0.638548,
		-0.410688, -0.743944, 0.527145,
		0.489753, -0.667659, -0.560691,
		38.210552, 34.445137, 35.122490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965496, 34.214024, 35.777893>,  <37.867725, 34.912498, 35.514977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965496, 34.214024, 35.777893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268085, 34.302658, 35.531757>,  <38.449638, 34.355839, 35.384075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268085, 34.302658, 35.531757>,  <37.965496, 34.214024, 35.777893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268085, 34.302658, 35.531757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651935, -0.180344, 0.736517,
		0.052228, -0.958319, -0.280885,
		0.756474, 0.221586, -0.615342,
		38.495029, 34.369133, 35.347153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514557, 33.703545, 35.670647>,  <37.965496, 34.214024, 35.777893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514557, 33.703545, 35.670647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659424, 34.075958, 35.652721>,  <38.746346, 34.299408, 35.641968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659424, 34.075958, 35.652721>,  <38.514557, 33.703545, 35.670647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659424, 34.075958, 35.652721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689788, -0.235373, 0.684684,
		0.626917, -0.278881, -0.727461,
		0.362170, 0.931034, -0.044810,
		38.768074, 34.355270, 35.639278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247112, 33.619740, 35.657730>,  <38.514557, 33.703545, 35.670647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247112, 33.619740, 35.657730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187721, 33.993149, 35.788258>,  <39.152084, 34.217194, 35.866573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187721, 33.993149, 35.788258>,  <39.247112, 33.619740, 35.657730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187721, 33.993149, 35.788258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658405, -0.152888, 0.736973,
		0.737873, 0.324274, -0.591937,
		-0.148481, 0.933527, 0.326315,
		39.143177, 34.273209, 35.886150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831474, 34.015919, 35.635658>,  <39.247112, 33.619740, 35.657730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831474, 34.015919, 35.635658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611538, 34.195717, 35.917259>,  <39.479576, 34.303596, 36.086220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611538, 34.195717, 35.917259>,  <39.831474, 34.015919, 35.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611538, 34.195717, 35.917259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759858, -0.080790, 0.645050,
		0.346824, 0.889621, -0.297131,
		-0.549845, 0.449496, 0.704006,
		39.446583, 34.330566, 36.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185257, 34.745815, 36.021103>,  <39.831474, 34.015919, 35.635658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185257, 34.745815, 36.021103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951744, 34.505238, 36.239262>,  <39.811634, 34.360889, 36.370155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951744, 34.505238, 36.239262>,  <40.185257, 34.745815, 36.021103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951744, 34.505238, 36.239262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656559, 0.045452, 0.752904,
		-0.477622, 0.797618, 0.368352,
		-0.583787, -0.601448, 0.545392,
		39.776608, 34.324802, 36.402878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609909, 34.515537, 36.560696>,  <40.185257, 34.745815, 36.021103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609909, 34.515537, 36.560696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247494, 34.440022, 36.712193>,  <40.030045, 34.394711, 36.803089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247494, 34.440022, 36.712193>,  <40.609909, 34.515537, 36.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247494, 34.440022, 36.712193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413838, -0.208216, 0.886219,
		-0.088452, 0.959689, 0.266782,
		-0.906043, -0.188792, 0.378739,
		39.975681, 34.383385, 36.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518333, 34.876411, 37.197765>,  <40.609909, 34.515537, 36.560696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518333, 34.876411, 37.197765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307247, 34.536709, 37.191128>,  <40.180595, 34.332886, 37.187145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307247, 34.536709, 37.191128>,  <40.518333, 34.876411, 37.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307247, 34.536709, 37.191128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471998, -0.309424, 0.825515,
		-0.706210, 0.427805, 0.564136,
		-0.527717, -0.849258, -0.016595,
		40.148933, 34.281933, 37.186150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253803, 34.852329, 37.903713>,  <40.518333, 34.876411, 37.197765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253803, 34.852329, 37.903713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261841, 34.488167, 37.738419>,  <40.266663, 34.269669, 37.639240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261841, 34.488167, 37.738419>,  <40.253803, 34.852329, 37.903713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261841, 34.488167, 37.738419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502259, -0.348192, 0.791517,
		-0.864484, -0.223455, 0.450262,
		0.020091, -0.910401, -0.413238,
		40.267868, 34.215046, 37.614449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905739, 34.369030, 38.399269>,  <40.253803, 34.852329, 37.903713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905739, 34.369030, 38.399269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107464, 34.128403, 38.151466>,  <40.228500, 33.984028, 38.002785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107464, 34.128403, 38.151466>,  <39.905739, 34.369030, 38.399269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107464, 34.128403, 38.151466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365838, -0.501011, 0.784315,
		-0.782198, -0.622177, -0.032589,
		0.504311, -0.601568, -0.619506,
		40.258759, 33.947933, 37.965614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293453, 34.092121, 38.910465>,  <39.905739, 34.369030, 38.399269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293453, 34.092121, 38.910465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356281, 33.839401, 38.606846>,  <40.393978, 33.687771, 38.424675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356281, 33.839401, 38.606846>,  <40.293453, 34.092121, 38.910465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356281, 33.839401, 38.606846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368031, -0.675783, 0.638648,
		-0.916451, -0.379667, 0.126377,
		0.157070, -0.631800, -0.759051,
		40.403404, 33.649860, 38.379131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037193, 33.405689, 39.104904>,  <40.293453, 34.092121, 38.910465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037193, 33.405689, 39.104904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293083, 33.318253, 38.810158>,  <40.446617, 33.265789, 38.633308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293083, 33.318253, 38.810158>,  <40.037193, 33.405689, 39.104904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293083, 33.318253, 38.810158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446559, -0.674588, 0.587806,
		-0.625571, -0.705087, -0.333935,
		0.639723, -0.218593, -0.736866,
		40.485001, 33.252674, 38.589096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005112, 32.655651, 38.873158>,  <40.037193, 33.405689, 39.104904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005112, 32.655651, 38.873158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365742, 32.821209, 38.822800>,  <40.582119, 32.920544, 38.792583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365742, 32.821209, 38.822800>,  <40.005112, 32.655651, 38.873158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365742, 32.821209, 38.822800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378546, -0.613865, 0.692728,
		0.209430, -0.672207, -0.710124,
		0.901578, 0.413893, -0.125899,
		40.636215, 32.945377, 38.785030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422726, 32.090950, 38.766418>,  <40.005112, 32.655651, 38.873158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422726, 32.090950, 38.766418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646061, 32.400848, 38.885094>,  <40.780064, 32.586788, 38.956299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646061, 32.400848, 38.885094>,  <40.422726, 32.090950, 38.766418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646061, 32.400848, 38.885094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498235, -0.599088, 0.626782,
		0.663337, -0.202140, -0.720502,
		0.558341, 0.774747, 0.296684,
		40.813564, 32.633274, 38.974098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121613, 31.845299, 38.740677>,  <40.422726, 32.090950, 38.766418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121613, 31.845299, 38.740677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122677, 32.148209, 39.001915>,  <41.123318, 32.329952, 39.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122677, 32.148209, 39.001915>,  <41.121613, 31.845299, 38.740677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122677, 32.148209, 39.001915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506140, -0.564284, 0.652232,
		0.862447, 0.328819, -0.384789,
		0.002664, 0.757273, 0.653094,
		41.123478, 32.375389, 39.197842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854839, 31.770739, 39.130058>,  <41.121613, 31.845299, 38.740677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854839, 31.770739, 39.130058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619919, 32.008564, 39.349720>,  <41.478966, 32.151260, 39.481518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619919, 32.008564, 39.349720>,  <41.854839, 31.770739, 39.130058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619919, 32.008564, 39.349720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422515, -0.353483, 0.834584,
		0.690329, 0.722180, -0.043609,
		-0.587305, 0.594563, 0.549151,
		41.443726, 32.186932, 39.514465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216801, 32.072197, 39.623039>,  <41.854839, 31.770739, 39.130058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216801, 32.072197, 39.623039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864727, 32.135654, 39.801971>,  <41.653481, 32.173729, 39.909332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864727, 32.135654, 39.801971>,  <42.216801, 32.072197, 39.623039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864727, 32.135654, 39.801971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405938, -0.236747, 0.882703,
		0.245940, 0.958532, 0.143982,
		-0.880186, 0.158644, 0.447330,
		41.600670, 32.183247, 39.936169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338165, 32.572594, 40.233593>,  <42.216801, 32.072197, 39.623039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338165, 32.572594, 40.233593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003906, 32.363464, 40.300945>,  <41.803352, 32.237988, 40.341354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003906, 32.363464, 40.300945>,  <42.338165, 32.572594, 40.233593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003906, 32.363464, 40.300945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340876, -0.253258, 0.905353,
		-0.430698, 0.813950, 0.389852,
		-0.835645, -0.522825, 0.168378,
		41.753212, 32.206615, 40.351460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484581, 32.713005, 40.966831>,  <42.338165, 32.572594, 40.233593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484581, 32.713005, 40.966831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198086, 32.448414, 40.877872>,  <42.026188, 32.289661, 40.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198086, 32.448414, 40.877872>,  <42.484581, 32.713005, 40.966831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198086, 32.448414, 40.877872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271707, -0.557858, 0.784200,
		-0.642793, 0.501246, 0.579284,
		-0.716235, -0.661474, -0.222395,
		41.983215, 32.249973, 40.811153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978210, 32.666027, 41.543751>,  <42.484581, 32.713005, 40.966831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978210, 32.666027, 41.543751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054123, 32.337563, 41.328465>,  <42.099670, 32.140484, 41.199291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054123, 32.337563, 41.328465>,  <41.978210, 32.666027, 41.543751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054123, 32.337563, 41.328465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420476, -0.427392, 0.800335,
		-0.887234, -0.378195, 0.264169,
		0.189779, -0.821160, -0.538219,
		42.111057, 32.091213, 41.167000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647419, 32.033791, 41.706100>,  <41.978210, 32.666027, 41.543751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647419, 32.033791, 41.706100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012028, 32.029976, 41.541649>,  <42.230793, 32.027687, 41.442978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012028, 32.029976, 41.541649>,  <41.647419, 32.033791, 41.706100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012028, 32.029976, 41.541649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408007, -0.104218, 0.907011,
		-0.051496, -0.994509, -0.091107,
		0.911525, -0.009535, -0.411133,
		42.285484, 32.027115, 41.418308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039616, 31.477079, 41.851254>,  <41.647419, 32.033791, 41.706100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039616, 31.477079, 41.851254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301514, 31.775534, 41.802944>,  <42.458652, 31.954607, 41.773960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301514, 31.775534, 41.802944>,  <42.039616, 31.477079, 41.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301514, 31.775534, 41.802944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429489, -0.235778, 0.871750,
		0.621968, -0.622647, -0.474832,
		0.654747, 0.746136, -0.120774,
		42.497936, 31.999374, 41.766712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718254, 31.095291, 41.315453>,  <42.039616, 31.477079, 41.851254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718254, 31.095291, 41.315453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910507, 31.441429, 41.372265>,  <42.025860, 31.649111, 41.406353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910507, 31.441429, 41.372265>,  <41.718254, 31.095291, 41.315453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910507, 31.441429, 41.372265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586201, 0.437507, -0.681877,
		-0.652195, 0.244478, 0.717546,
		0.480636, 0.865343, 0.142027,
		42.054699, 31.701033, 41.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057610, 31.278965, 40.712482>,  <41.718254, 31.095291, 41.315453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057610, 31.278965, 40.712482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882851, 31.560627, 40.936371>,  <41.777996, 31.729624, 41.070702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882851, 31.560627, 40.936371>,  <42.057610, 31.278965, 40.712482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882851, 31.560627, 40.936371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253752, 0.500492, -0.827718,
		-0.862976, -0.503660, -0.039985,
		-0.436901, 0.704154, 0.559718,
		41.751781, 31.771873, 41.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285221, 31.270329, 40.666157>,  <42.057610, 31.278965, 40.712482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285221, 31.270329, 40.666157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433590, 31.632605, 40.748276>,  <41.522610, 31.849970, 40.797546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433590, 31.632605, 40.748276>,  <41.285221, 31.270329, 40.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433590, 31.632605, 40.748276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502081, 0.381546, -0.776104,
		-0.781238, 0.184797, 0.596252,
		0.370920, 0.905689, 0.205295,
		41.544865, 31.904312, 40.809864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600056, 31.701370, 40.672531>,  <41.285221, 31.270329, 40.666157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600056, 31.701370, 40.672531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954933, 31.861687, 40.581093>,  <41.167858, 31.957876, 40.526230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954933, 31.861687, 40.581093>,  <40.600056, 31.701370, 40.672531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954933, 31.861687, 40.581093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419843, 0.495778, -0.760221,
		-0.191358, 0.770436, 0.608120,
		0.887194, 0.400789, -0.228592,
		41.221092, 31.981924, 40.512516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526539, 32.357018, 40.585892>,  <40.600056, 31.701370, 40.672531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526539, 32.357018, 40.585892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848103, 32.285782, 40.358910>,  <41.041042, 32.243042, 40.222721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848103, 32.285782, 40.358910>,  <40.526539, 32.357018, 40.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848103, 32.285782, 40.358910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349021, 0.631287, -0.692575,
		0.481568, 0.754825, 0.445344,
		0.803913, -0.178088, -0.567458,
		41.089275, 32.232357, 40.188671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635273, 32.925442, 40.170918>,  <40.526539, 32.357018, 40.585892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635273, 32.925442, 40.170918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853489, 32.670593, 39.953125>,  <40.984421, 32.517685, 39.822449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853489, 32.670593, 39.953125>,  <40.635273, 32.925442, 40.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853489, 32.670593, 39.953125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274938, 0.477664, -0.834414,
		0.791702, 0.604907, 0.085417,
		0.545543, -0.637122, -0.544479,
		41.017151, 32.479458, 39.789780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382053, 33.238888, 39.999626>,  <40.635273, 32.925442, 40.170918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382053, 33.238888, 39.999626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194706, 32.987213, 39.751514>,  <41.082298, 32.836208, 39.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194706, 32.987213, 39.751514>,  <41.382053, 33.238888, 39.999626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194706, 32.987213, 39.751514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031524, 0.713500, -0.699946,
		0.882970, -0.308280, -0.354017,
		-0.468370, -0.629191, -0.620281,
		41.054195, 32.798454, 39.565430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497787, 33.617340, 39.399178>,  <41.382053, 33.238888, 39.999626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497787, 33.617340, 39.399178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307732, 33.293938, 39.260288>,  <41.193699, 33.099895, 39.176952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307732, 33.293938, 39.260288>,  <41.497787, 33.617340, 39.399178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307732, 33.293938, 39.260288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191407, 0.480135, -0.856057,
		0.858841, -0.340282, -0.382884,
		-0.475137, -0.808504, -0.347227,
		41.165192, 33.051388, 39.156120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811798, 33.483021, 38.801708>,  <41.497787, 33.617340, 39.399178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811798, 33.483021, 38.801708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445244, 33.323444, 38.814865>,  <41.225311, 33.227699, 38.822758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445244, 33.323444, 38.814865>,  <41.811798, 33.483021, 38.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445244, 33.323444, 38.814865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248344, 0.502156, -0.828350,
		0.313947, -0.767257, -0.559244,
		-0.916385, -0.398944, 0.032893,
		41.170330, 33.203762, 38.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643173, 33.264160, 38.171955>,  <41.811798, 33.483021, 38.801708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643173, 33.264160, 38.171955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287571, 33.337490, 38.339794>,  <41.074211, 33.381489, 38.440498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287571, 33.337490, 38.339794>,  <41.643173, 33.264160, 38.171955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287571, 33.337490, 38.339794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305270, 0.445725, -0.841510,
		-0.341295, -0.876197, -0.340288,
		-0.889004, 0.183323, 0.419600,
		41.020870, 33.392487, 38.465675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430218, 33.421665, 37.537552>,  <41.643173, 33.264160, 38.171955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430218, 33.421665, 37.537552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106369, 33.455841, 37.769833>,  <40.912060, 33.476345, 37.909203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106369, 33.455841, 37.769833>,  <41.430218, 33.421665, 37.537552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106369, 33.455841, 37.769833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502029, 0.411804, -0.760516,
		-0.304115, -0.907258, -0.290511,
		-0.809617, 0.085440, 0.580706,
		40.863483, 33.481472, 37.944046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859280, 33.148903, 37.219761>,  <41.430218, 33.421665, 37.537552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859280, 33.148903, 37.219761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656368, 33.365715, 37.487751>,  <40.534622, 33.495800, 37.648544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656368, 33.365715, 37.487751>,  <40.859280, 33.148903, 37.219761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656368, 33.365715, 37.487751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637864, 0.286602, -0.714835,
		-0.579477, -0.789978, 0.200352,
		-0.507282, 0.542028, 0.669978,
		40.504185, 33.528324, 37.688744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137760, 32.979748, 37.207062>,  <40.859280, 33.148903, 37.219761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137760, 32.979748, 37.207062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188541, 33.361668, 37.314575>,  <40.219009, 33.590820, 37.379086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188541, 33.361668, 37.314575>,  <40.137760, 32.979748, 37.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188541, 33.361668, 37.314575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657233, 0.283931, -0.698160,
		-0.742917, -0.088019, 0.663571,
		0.126957, 0.954796, 0.268786,
		40.226627, 33.648106, 37.395210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452671, 33.198437, 37.101959>,  <40.137760, 32.979748, 37.207062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452671, 33.198437, 37.101959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670712, 33.532089, 37.135658>,  <39.801537, 33.732281, 37.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670712, 33.532089, 37.135658>,  <39.452671, 33.198437, 37.101959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670712, 33.532089, 37.135658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617069, 0.467204, -0.633203,
		-0.567534, 0.293169, 0.769387,
		0.545096, 0.834129, 0.084249,
		39.834240, 33.782330, 37.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972233, 33.741291, 37.321201>,  <39.452671, 33.198437, 37.101959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972233, 33.741291, 37.321201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277954, 33.893894, 37.113243>,  <39.461388, 33.985458, 36.988468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277954, 33.893894, 37.113243>,  <38.972233, 33.741291, 37.321201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277954, 33.893894, 37.113243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634593, 0.588281, -0.501216,
		0.114627, 0.713003, 0.691728,
		0.764299, 0.381513, -0.519900,
		39.507244, 34.008347, 36.957272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859211, 34.467693, 37.325684>,  <38.972233, 33.741291, 37.321201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859211, 34.467693, 37.325684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110783, 34.392418, 37.023945>,  <39.261726, 34.347252, 36.842903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110783, 34.392418, 37.023945>,  <38.859211, 34.467693, 37.325684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110783, 34.392418, 37.023945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633395, 0.438622, -0.637511,
		0.450841, 0.878748, 0.156667,
		0.628929, -0.188184, -0.754344,
		39.299461, 34.335964, 36.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695885, 35.120457, 36.948284>,  <38.859211, 34.467693, 37.325684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695885, 35.120457, 36.948284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899647, 34.853092, 36.731495>,  <39.021904, 34.692673, 36.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899647, 34.853092, 36.731495>,  <38.695885, 35.120457, 36.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899647, 34.853092, 36.731495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357663, 0.408376, -0.839825,
		0.782679, 0.621651, -0.031039,
		0.509402, -0.668415, -0.541969,
		39.052467, 34.652569, 36.568905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971493, 35.505886, 36.268166>,  <38.695885, 35.120457, 36.948284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971493, 35.505886, 36.268166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999699, 35.121296, 36.161892>,  <39.016621, 34.890541, 36.098129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999699, 35.121296, 36.161892>,  <38.971493, 35.505886, 36.268166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999699, 35.121296, 36.161892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363566, 0.223249, -0.904422,
		0.928896, 0.160367, -0.333819,
		0.070515, -0.961479, -0.265679,
		39.020855, 34.832851, 36.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283798, 35.533176, 35.611248>,  <38.971493, 35.505886, 36.268166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283798, 35.533176, 35.611248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108242, 35.174286, 35.630711>,  <39.002911, 34.958954, 35.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108242, 35.174286, 35.630711>,  <39.283798, 35.533176, 35.611248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108242, 35.174286, 35.630711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512732, 0.205602, -0.833567,
		0.737891, -0.390791, -0.550272,
		-0.438887, -0.897224, 0.048658,
		38.976578, 34.905117, 35.645309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843475, 35.813534, 35.774216>,  <39.283798, 35.533176, 35.611248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843475, 35.813534, 35.774216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030010, 35.483955, 35.645443>,  <40.141930, 35.286209, 35.568180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030010, 35.483955, 35.645443>,  <39.843475, 35.813534, 35.774216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030010, 35.483955, 35.645443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868037, 0.496332, -0.012916,
		0.170426, -0.273424, 0.946675,
		0.466334, -0.823950, -0.321930,
		40.169910, 35.236771, 35.548862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518196, 35.907539, 35.363056>,  <39.843475, 35.813534, 35.774216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518196, 35.907539, 35.363056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403809, 35.659321, 35.655121>,  <40.335178, 35.510387, 35.830360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403809, 35.659321, 35.655121>,  <40.518196, 35.907539, 35.363056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403809, 35.659321, 35.655121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813989, 0.244748, 0.526802,
		-0.505614, 0.744993, 0.435132,
		-0.285966, -0.620551, 0.730164,
		40.318020, 35.473156, 35.874168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705757, 36.267044, 35.921825>,  <40.518196, 35.907539, 35.363056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705757, 36.267044, 35.921825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683193, 35.900845, 36.081169>,  <40.669655, 35.681126, 36.176773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683193, 35.900845, 36.081169>,  <40.705757, 36.267044, 35.921825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683193, 35.900845, 36.081169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834150, 0.176036, 0.522690,
		-0.548645, 0.361774, 0.753730,
		-0.056413, -0.915495, 0.398355,
		40.666271, 35.626198, 36.200676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342030, 36.831203, 35.435783>,  <40.705757, 36.267044, 35.921825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342030, 36.831203, 35.435783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201302, 37.036076, 35.122379>,  <40.116863, 37.158997, 34.934338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201302, 37.036076, 35.122379>,  <40.342030, 36.831203, 35.435783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201302, 37.036076, 35.122379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460391, -0.634111, -0.621244,
		-0.815022, -0.579291, -0.012707,
		-0.351823, 0.512178, -0.783515,
		40.095757, 37.189728, 34.887325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744667, 36.520893, 34.893524>,  <40.342030, 36.831203, 35.435783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744667, 36.520893, 34.893524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037663, 36.742130, 34.734749>,  <40.213459, 36.874870, 34.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037663, 36.742130, 34.734749>,  <39.744667, 36.520893, 34.893524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037663, 36.742130, 34.734749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304395, -0.787609, -0.535738,
		-0.608941, 0.271595, -0.745270,
		0.732485, 0.553089, -0.396936,
		40.257408, 36.908058, 34.615669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680756, 36.456520, 34.190159>,  <39.744667, 36.520893, 34.893524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680756, 36.456520, 34.190159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051624, 36.552090, 34.305588>,  <40.274143, 36.609432, 34.374844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051624, 36.552090, 34.305588>,  <39.680756, 36.456520, 34.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051624, 36.552090, 34.305588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374332, -0.622262, -0.687507,
		0.015302, 0.745456, -0.666380,
		0.927169, 0.238927, 0.288569,
		40.329777, 36.623768, 34.392159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157696, 36.801975, 33.692497>,  <39.680756, 36.456520, 34.190159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157696, 36.801975, 33.692497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317612, 36.510086, 33.914371>,  <40.413563, 36.334953, 34.047497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317612, 36.510086, 33.914371>,  <40.157696, 36.801975, 33.692497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317612, 36.510086, 33.914371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283657, -0.476946, -0.831903,
		0.871611, 0.489927, 0.016312,
		0.399791, -0.729723, 0.554682,
		40.437550, 36.291168, 34.080776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761654, 36.711052, 33.403896>,  <40.157696, 36.801975, 33.692497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761654, 36.711052, 33.403896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689758, 36.377327, 33.612366>,  <40.646622, 36.177094, 33.737446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689758, 36.377327, 33.612366>,  <40.761654, 36.711052, 33.403896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689758, 36.377327, 33.612366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280322, -0.551274, -0.785822,
		0.942929, 0.004856, 0.332959,
		-0.179736, -0.834310, 0.521174,
		40.635838, 36.127033, 33.768719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373421, 36.480701, 33.447018>,  <40.761654, 36.711052, 33.403896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373421, 36.480701, 33.447018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058575, 36.234707, 33.465931>,  <40.869667, 36.087109, 33.477280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058575, 36.234707, 33.465931>,  <41.373421, 36.480701, 33.447018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058575, 36.234707, 33.465931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216466, -0.347205, -0.912464,
		0.577571, -0.707982, 0.406415,
		-0.787117, -0.614988, 0.047281,
		40.822441, 36.050209, 33.480114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132053, 35.896717, 34.012806>,  <41.373421, 36.480701, 33.447018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132053, 35.896717, 34.012806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128216, 36.291824, 34.075054>,  <41.125912, 36.528889, 34.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128216, 36.291824, 34.075054>,  <41.132053, 35.896717, 34.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128216, 36.291824, 34.075054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372204, -0.140917, 0.917391,
		0.928102, 0.066724, -0.366300,
		-0.009594, 0.987770, 0.155621,
		41.125340, 36.588154, 34.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831585, 36.123173, 34.068043>,  <41.132053, 35.896717, 34.012806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831585, 36.123173, 34.068043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547195, 36.320957, 34.268051>,  <41.376560, 36.439629, 34.388058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547195, 36.320957, 34.268051>,  <41.831585, 36.123173, 34.068043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547195, 36.320957, 34.268051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337258, -0.384188, 0.859451,
		0.617066, 0.779686, 0.106389,
		-0.710976, 0.494458, 0.500025,
		41.333904, 36.469296, 34.418060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126781, 36.542797, 34.621735>,  <41.831585, 36.123173, 34.068043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126781, 36.542797, 34.621735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766937, 36.404072, 34.727879>,  <41.551029, 36.320835, 34.791565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766937, 36.404072, 34.727879>,  <42.126781, 36.542797, 34.621735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766937, 36.404072, 34.727879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376443, -0.307903, 0.873777,
		-0.221330, 0.885956, 0.407548,
		-0.899613, -0.346812, 0.265364,
		41.497055, 36.300030, 34.807487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802414, 36.321754, 34.455120>,  <42.126781, 36.542797, 34.621735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802414, 36.321754, 34.455120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055744, 36.258625, 34.758171>,  <43.207741, 36.220749, 34.940002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055744, 36.258625, 34.758171>,  <42.802414, 36.321754, 34.455120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055744, 36.258625, 34.758171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714426, -0.257094, -0.650768,
		0.297485, 0.953413, -0.050073,
		0.633324, -0.157821, 0.757624,
		43.245743, 36.211277, 34.985458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434441, 36.397114, 34.087212>,  <42.802414, 36.321754, 34.455120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434441, 36.397114, 34.087212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534943, 36.281464, 34.456703>,  <43.595242, 36.212074, 34.678398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534943, 36.281464, 34.456703>,  <43.434441, 36.397114, 34.087212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534943, 36.281464, 34.456703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890579, -0.304759, -0.337625,
		0.379132, 0.907483, 0.180922,
		0.251252, -0.289130, 0.923730,
		43.610317, 36.194725, 34.733822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106514, 36.068451, 33.908890>,  <43.434441, 36.397114, 34.087212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106514, 36.068451, 33.908890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825977, 36.122204, 33.628872>,  <43.657658, 36.154457, 33.460861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825977, 36.122204, 33.628872>,  <44.106514, 36.068451, 33.908890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825977, 36.122204, 33.628872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044348, -0.971942, -0.231003,
		-0.711447, -0.193057, 0.675701,
		-0.701339, 0.134381, -0.700047,
		43.615574, 36.162518, 33.418858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687099, 35.499538, 34.028099>,  <44.106514, 36.068451, 33.908890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687099, 35.499538, 34.028099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622059, 35.647144, 33.662064>,  <43.583035, 35.735706, 33.442440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622059, 35.647144, 33.662064>,  <43.687099, 35.499538, 34.028099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622059, 35.647144, 33.662064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015075, -0.926395, -0.376250,
		-0.986577, -0.074974, 0.145071,
		-0.162602, 0.369013, -0.915091,
		43.573277, 35.757847, 33.387535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025093, 34.833454, 34.000076>,  <43.687099, 35.499538, 34.028099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025093, 34.833454, 34.000076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109676, 34.599705, 34.313457>,  <44.160427, 34.459454, 34.501484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109676, 34.599705, 34.313457>,  <44.025093, 34.833454, 34.000076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109676, 34.599705, 34.313457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969186, 0.228989, -0.090788,
		-0.126347, 0.778506, 0.614789,
		0.211459, -0.584374, 0.783449,
		44.173115, 34.424393, 34.548492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453537, 35.118092, 34.562946>,  <44.025093, 34.833454, 34.000076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453537, 35.118092, 34.562946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555965, 34.735321, 34.617676>,  <44.617420, 34.505657, 34.650513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555965, 34.735321, 34.617676>,  <44.453537, 35.118092, 34.562946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555965, 34.735321, 34.617676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966425, 0.250317, -0.058004,
		0.021257, 0.147079, 0.988896,
		0.256069, -0.956927, 0.136820,
		44.632786, 34.448242, 34.658722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874386, 35.079639, 35.099461>,  <44.453537, 35.118092, 34.562946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874386, 35.079639, 35.099461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953041, 34.771339, 34.857044>,  <45.000233, 34.586361, 34.711594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953041, 34.771339, 34.857044>,  <44.874386, 35.079639, 35.099461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953041, 34.771339, 34.857044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972739, 0.230854, 0.022023,
		0.122932, -0.593845, 0.795132,
		0.196638, -0.770749, -0.606036,
		45.012032, 34.540115, 34.675232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347256, 34.603165, 35.443222>,  <44.874386, 35.079639, 35.099461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347256, 34.603165, 35.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390671, 34.651154, 35.048492>,  <45.416721, 34.679947, 34.811653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390671, 34.651154, 35.048492>,  <45.347256, 34.603165, 35.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390671, 34.651154, 35.048492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991009, 0.065058, 0.116909,
		0.078228, -0.990643, -0.111836,
		0.108540, 0.119976, -0.986826,
		45.423233, 34.687145, 34.752445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705463, 34.111240, 35.190277>,  <45.347256, 34.603165, 35.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705463, 34.111240, 35.190277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769844, 34.461941, 35.008995>,  <45.808472, 34.672363, 34.900227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769844, 34.461941, 35.008995>,  <45.705463, 34.111240, 35.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769844, 34.461941, 35.008995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972796, -0.063408, 0.222817,
		0.166619, -0.476739, -0.863109,
		0.160953, 0.876755, -0.453205,
		45.818130, 34.724968, 34.873035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317242, 33.939159, 34.903614>,  <45.705463, 34.111240, 35.190277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317242, 33.939159, 34.903614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294849, 34.338230, 34.919140>,  <46.281414, 34.577671, 34.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294849, 34.338230, 34.919140>,  <46.317242, 33.939159, 34.903614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294849, 34.338230, 34.919140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957013, 0.042535, 0.286911,
		0.284593, 0.053211, -0.957171,
		-0.055980, 0.997677, 0.038818,
		46.278057, 34.637535, 34.930786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849117, 34.214619, 34.577618>,  <46.317242, 33.939159, 34.903614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849117, 34.214619, 34.577618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774540, 34.544914, 34.790554>,  <46.729794, 34.743092, 34.918316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774540, 34.544914, 34.790554>,  <46.849117, 34.214619, 34.577618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774540, 34.544914, 34.790554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975890, 0.093076, 0.197421,
		0.113470, 0.556317, -0.823186,
		-0.186447, 0.825741, 0.532344,
		46.718605, 34.792637, 34.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516148, 34.671162, 34.550003>,  <46.849117, 34.214619, 34.577618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516148, 34.671162, 34.550003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325104, 34.775333, 34.885639>,  <47.210476, 34.837837, 35.087021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325104, 34.775333, 34.885639>,  <47.516148, 34.671162, 34.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325104, 34.775333, 34.885639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873304, 0.036291, 0.485823,
		0.096072, 0.964810, -0.244767,
		-0.477610, 0.260430, 0.839086,
		47.181820, 34.853462, 35.137363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907196, 35.225975, 34.814777>,  <47.516148, 34.671162, 34.550003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907196, 35.225975, 34.814777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725250, 34.997364, 35.087967>,  <47.616081, 34.860199, 35.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725250, 34.997364, 35.087967>,  <47.907196, 35.225975, 34.814777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725250, 34.997364, 35.087967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854743, -0.064861, 0.514983,
		-0.250027, 0.818018, 0.518009,
		-0.454864, -0.571524, 0.682978,
		47.588791, 34.825905, 35.292862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.881290, 27.245615, 29.274330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510818, 27.110512, 29.341394>,  <35.288536, 27.029449, 29.381634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510818, 27.110512, 29.341394>,  <35.881290, 27.245615, 29.274330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510818, 27.110512, 29.341394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067900, 0.586745, 0.806920,
		-0.370916, 0.735970, -0.566365,
		-0.926181, -0.337756, 0.167661,
		35.232964, 27.009186, 29.391693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531593, 27.836281, 29.457355>,  <35.881290, 27.245615, 29.274330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531593, 27.836281, 29.457355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314915, 27.536993, 29.610577>,  <35.184906, 27.357420, 29.702509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314915, 27.536993, 29.610577>,  <35.531593, 27.836281, 29.457355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314915, 27.536993, 29.610577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153871, 0.536272, 0.829902,
		-0.826370, 0.390615, -0.405626,
		-0.541698, -0.748220, 0.383055,
		35.152405, 27.312527, 29.725492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934990, 28.125347, 29.660360>,  <35.531593, 27.836281, 29.457355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934990, 28.125347, 29.660360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940979, 27.790897, 29.879694>,  <34.944572, 27.590227, 30.011293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940979, 27.790897, 29.879694>,  <34.934990, 28.125347, 29.660360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940979, 27.790897, 29.879694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304820, 0.518475, 0.798917,
		-0.952292, -0.179106, -0.247104,
		0.014974, -0.836125, 0.548334,
		34.945473, 27.540060, 30.044195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386742, 28.066141, 29.986691>,  <34.934990, 28.125347, 29.660360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386742, 28.066141, 29.986691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585068, 27.813772, 30.225388>,  <34.704063, 27.662350, 30.368607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585068, 27.813772, 30.225388>,  <34.386742, 28.066141, 29.986691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585068, 27.813772, 30.225388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403781, 0.440874, 0.801618,
		-0.768847, -0.638409, -0.036163,
		0.495817, -0.630923, 0.596742,
		34.733814, 27.624495, 30.404409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969799, 28.019869, 30.616625>,  <34.386742, 28.066141, 29.986691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969799, 28.019869, 30.616625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327457, 27.875320, 30.722391>,  <34.542053, 27.788591, 30.785851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327457, 27.875320, 30.722391>,  <33.969799, 28.019869, 30.616625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327457, 27.875320, 30.722391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108686, 0.397701, 0.911055,
		-0.434386, -0.843354, 0.316327,
		0.894146, -0.361369, 0.264416,
		34.595699, 27.766911, 30.801716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923157, 27.637505, 31.351013>,  <33.969799, 28.019869, 30.616625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923157, 27.637505, 31.351013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303513, 27.753315, 31.307230>,  <34.531727, 27.822802, 31.280960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303513, 27.753315, 31.307230>,  <33.923157, 27.637505, 31.351013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303513, 27.753315, 31.307230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005063, 0.368129, 0.929761,
		0.309482, -0.883548, 0.351517,
		0.950892, 0.289524, -0.109456,
		34.588779, 27.840174, 31.274393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198475, 27.538210, 32.014828>,  <33.923157, 27.637505, 31.351013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198475, 27.538210, 32.014828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476433, 27.779242, 31.857849>,  <34.643208, 27.923861, 31.763662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476433, 27.779242, 31.857849>,  <34.198475, 27.538210, 32.014828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476433, 27.779242, 31.857849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094438, 0.464545, 0.880499,
		0.712882, -0.648918, 0.265905,
		0.694897, 0.602580, -0.392449,
		34.684902, 27.960016, 31.740114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806686, 27.519861, 32.474178>,  <34.198475, 27.538210, 32.014828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806686, 27.519861, 32.474178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853554, 27.850704, 32.254299>,  <34.881672, 28.049210, 32.122372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853554, 27.850704, 32.254299>,  <34.806686, 27.519861, 32.474178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853554, 27.850704, 32.254299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047424, 0.548218, 0.834990,
		0.991979, -0.123901, 0.025008,
		0.117166, 0.827107, -0.549697,
		34.888702, 28.098837, 32.089390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412174, 27.821863, 32.734344>,  <34.806686, 27.519861, 32.474178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412174, 27.821863, 32.734344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229298, 28.123755, 32.546150>,  <35.119572, 28.304890, 32.433231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229298, 28.123755, 32.546150>,  <35.412174, 27.821863, 32.734344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229298, 28.123755, 32.546150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267456, 0.621202, 0.736598,
		0.848200, 0.210930, -0.485865,
		-0.457191, 0.754730, -0.470489,
		35.092140, 28.350174, 32.405003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853943, 28.401127, 32.958256>,  <35.412174, 27.821863, 32.734344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853943, 28.401127, 32.958256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551189, 28.597216, 32.785366>,  <35.369537, 28.714869, 32.681633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551189, 28.597216, 32.785366>,  <35.853943, 28.401127, 32.958256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551189, 28.597216, 32.785366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133080, 0.763085, 0.632448,
		0.639861, 0.421167, -0.642803,
		-0.756880, 0.490223, -0.432220,
		35.324127, 28.744282, 32.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015980, 29.090725, 32.949417>,  <35.853943, 28.401127, 32.958256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015980, 29.090725, 32.949417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616905, 29.090836, 32.922237>,  <35.377460, 29.090902, 32.905930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616905, 29.090836, 32.922237>,  <36.015980, 29.090725, 32.949417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616905, 29.090836, 32.922237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041866, 0.785097, 0.617956,
		0.053516, 0.619372, -0.783271,
		-0.997689, 0.000278, -0.067945,
		35.317600, 29.090919, 32.901855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751034, 29.731390, 32.925442>,  <36.015980, 29.090725, 32.949417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751034, 29.731390, 32.925442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457561, 29.515778, 33.090927>,  <35.281479, 29.386410, 33.190220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457561, 29.515778, 33.090927>,  <35.751034, 29.731390, 32.925442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457561, 29.515778, 33.090927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214346, 0.761364, 0.611866,
		-0.644801, 0.360237, -0.674138,
		-0.733681, -0.539030, 0.413713,
		35.237457, 29.354069, 33.215042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177891, 30.239773, 32.937870>,  <35.751034, 29.731390, 32.925442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177891, 30.239773, 32.937870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094616, 29.949524, 33.200207>,  <35.044651, 29.775375, 33.357609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094616, 29.949524, 33.200207>,  <35.177891, 30.239773, 32.937870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094616, 29.949524, 33.200207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248666, 0.687771, 0.682009,
		-0.945951, -0.021101, -0.323622,
		-0.208187, -0.725621, 0.655845,
		35.032158, 29.731838, 33.396961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628971, 30.544909, 33.309998>,  <35.177891, 30.239773, 32.937870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628971, 30.544909, 33.309998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749447, 30.253628, 33.556252>,  <34.821732, 30.078859, 33.704002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749447, 30.253628, 33.556252>,  <34.628971, 30.544909, 33.309998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749447, 30.253628, 33.556252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258495, 0.559088, 0.787782,
		-0.917860, -0.396408, -0.019847,
		0.301187, -0.728204, 0.615634,
		34.839802, 30.035166, 33.740940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100994, 30.466164, 33.899868>,  <34.628971, 30.544909, 33.309998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100994, 30.466164, 33.899868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451111, 30.334612, 34.041683>,  <34.661182, 30.255682, 34.126774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451111, 30.334612, 34.041683>,  <34.100994, 30.466164, 33.899868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451111, 30.334612, 34.041683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074481, 0.632711, 0.770798,
		-0.477820, -0.701081, 0.529314,
		0.875295, -0.328879, 0.354539,
		34.713699, 30.235949, 34.148045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959633, 30.414366, 34.561657>,  <34.100994, 30.466164, 33.899868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959633, 30.414366, 34.561657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359383, 30.427280, 34.567505>,  <34.599232, 30.435030, 34.571014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359383, 30.427280, 34.567505>,  <33.959633, 30.414366, 34.561657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359383, 30.427280, 34.567505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029902, 0.546718, 0.836783,
		0.019025, -0.836694, 0.547340,
		0.999372, 0.032286, 0.014618,
		34.659195, 30.436966, 34.571892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135880, 30.140795, 35.173004>,  <33.959633, 30.414366, 34.561657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135880, 30.140795, 35.173004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.423836, 30.376238, 35.025871>,  <34.596611, 30.517504, 34.937592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.423836, 30.376238, 35.025871>,  <34.135880, 30.140795, 35.173004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423836, 30.376238, 35.025871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022046, 0.549070, 0.835485,
		0.693739, -0.593348, 0.408246,
		0.719889, 0.588608, -0.367831,
		34.639801, 30.552820, 34.915524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476799, 30.362469, 35.751892>,  <34.135880, 30.140795, 35.173004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476799, 30.362469, 35.751892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674103, 30.594391, 35.492504>,  <34.792484, 30.733545, 35.336872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674103, 30.594391, 35.492504>,  <34.476799, 30.362469, 35.751892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674103, 30.594391, 35.492504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161366, 0.671545, 0.723179,
		0.854784, -0.461357, 0.237686,
		0.493260, 0.579807, -0.648473,
		34.822083, 30.768333, 35.297962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023663, 30.585997, 36.134930>,  <34.476799, 30.362469, 35.751892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023663, 30.585997, 36.134930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988190, 30.849083, 35.835720>,  <34.966904, 31.006935, 35.656193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988190, 30.849083, 35.835720>,  <35.023663, 30.585997, 36.134930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988190, 30.849083, 35.835720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038160, 0.748191, 0.662386,
		0.995328, 0.087289, -0.041256,
		-0.088686, 0.657717, -0.748026,
		34.961582, 31.046398, 35.611313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531830, 31.143549, 36.288746>,  <35.023663, 30.585997, 36.134930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531830, 31.143549, 36.288746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254917, 31.314341, 36.056046>,  <35.088772, 31.416815, 35.916424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254917, 31.314341, 36.056046>,  <35.531830, 31.143549, 36.288746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254917, 31.314341, 36.056046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121429, 0.725747, 0.677161,
		0.711340, 0.539426, -0.450572,
		-0.692279, 0.426979, -0.581755,
		35.047234, 31.442434, 35.881519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684978, 31.798561, 36.071373>,  <35.531830, 31.143549, 36.288746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684978, 31.798561, 36.071373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.285484, 31.788984, 36.053688>,  <35.045788, 31.783237, 36.043076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.285484, 31.788984, 36.053688>,  <35.684978, 31.798561, 36.071373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285484, 31.788984, 36.053688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048132, 0.709552, 0.703008,
		0.014539, 0.704246, -0.709807,
		-0.998735, -0.023943, -0.044213,
		34.985863, 31.781801, 36.040424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462238, 32.564606, 36.142227>,  <35.684978, 31.798561, 36.071373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462238, 32.564606, 36.142227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163937, 32.309334, 36.218723>,  <34.984955, 32.156170, 36.264622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163937, 32.309334, 36.218723>,  <35.462238, 32.564606, 36.142227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163937, 32.309334, 36.218723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104489, 0.395543, 0.912484,
		-0.657977, 0.660506, -0.361661,
		-0.745754, -0.638183, 0.191242,
		34.940212, 32.117878, 36.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102032, 32.283340, 35.756561>,  <35.462238, 32.564606, 36.142227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102032, 32.283340, 35.756561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469826, 32.434921, 35.714733>,  <36.690502, 32.525871, 35.689636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469826, 32.434921, 35.714733>,  <36.102032, 32.283340, 35.756561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469826, 32.434921, 35.714733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129901, -0.543945, -0.829005,
		-0.371034, 0.748677, -0.549378,
		0.919488, 0.378954, -0.104568,
		36.745674, 32.548607, 35.683361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106869, 32.420624, 35.072159>,  <36.102032, 32.283340, 35.756561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106869, 32.420624, 35.072159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490437, 32.397717, 35.183289>,  <36.720577, 32.383972, 35.249966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490437, 32.397717, 35.183289>,  <36.106869, 32.420624, 35.072159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490437, 32.397717, 35.183289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226888, -0.432985, -0.872380,
		0.170254, 0.899580, -0.402205,
		0.958924, -0.057271, 0.277821,
		36.778114, 32.380535, 35.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453705, 32.678265, 34.546890>,  <36.106869, 32.420624, 35.072159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453705, 32.678265, 34.546890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716648, 32.459141, 34.753883>,  <36.874413, 32.327667, 34.878078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716648, 32.459141, 34.753883>,  <36.453705, 32.678265, 34.546890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716648, 32.459141, 34.753883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317198, -0.421768, -0.849410,
		0.683571, 0.722510, -0.103489,
		0.657356, -0.547805, 0.517487,
		36.913857, 32.294800, 34.909130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031479, 32.708183, 34.166527>,  <36.453705, 32.678265, 34.546890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031479, 32.708183, 34.166527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101772, 32.387680, 34.395302>,  <37.143948, 32.195377, 34.532566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101772, 32.387680, 34.395302>,  <37.031479, 32.708183, 34.166527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101772, 32.387680, 34.395302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312871, -0.505396, -0.804168,
		0.933397, 0.320259, 0.161875,
		0.175731, -0.801255, 0.571935,
		37.154491, 32.147305, 34.566883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580414, 32.502800, 33.872513>,  <37.031479, 32.708183, 34.166527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580414, 32.502800, 33.872513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489021, 32.171169, 34.076645>,  <37.434185, 31.972191, 34.199123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489021, 32.171169, 34.076645>,  <37.580414, 32.502800, 33.872513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489021, 32.171169, 34.076645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175440, -0.550675, -0.816075,
		0.957610, -0.096927, 0.271273,
		-0.228483, -0.829073, 0.510326,
		37.420475, 31.922447, 34.229744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042091, 31.988405, 33.746967>,  <37.580414, 32.502800, 33.872513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042091, 31.988405, 33.746967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726585, 31.778856, 33.875591>,  <37.537281, 31.653126, 33.952766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726585, 31.778856, 33.875591>,  <38.042091, 31.988405, 33.746967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726585, 31.778856, 33.875591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119143, -0.643502, -0.756115,
		0.603035, -0.558087, 0.569989,
		-0.788767, -0.523874, 0.321562,
		37.489956, 31.621695, 33.972061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355915, 31.275967, 33.856129>,  <38.042091, 31.988405, 33.746967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355915, 31.275967, 33.856129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960659, 31.285843, 33.795494>,  <37.723507, 31.291769, 33.759113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960659, 31.285843, 33.795494>,  <38.355915, 31.275967, 33.856129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960659, 31.285843, 33.795494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087183, -0.722367, -0.685992,
		-0.126438, -0.691069, 0.711644,
		-0.988136, 0.024692, -0.151584,
		37.664219, 31.293251, 33.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361187, 30.513374, 33.737011>,  <38.355915, 31.275967, 33.856129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361187, 30.513374, 33.737011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007008, 30.675873, 33.646725>,  <37.794498, 30.773373, 33.592552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007008, 30.675873, 33.646725>,  <38.361187, 30.513374, 33.737011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007008, 30.675873, 33.646725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105767, -0.649078, -0.753333,
		-0.452543, -0.643165, 0.617692,
		-0.885448, 0.406247, -0.225711,
		37.741375, 30.797747, 33.579010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827652, 29.996075, 33.697433>,  <38.361187, 30.513374, 33.737011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827652, 29.996075, 33.697433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720154, 30.307421, 33.470482>,  <37.655655, 30.494228, 33.334312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720154, 30.307421, 33.470482>,  <37.827652, 29.996075, 33.697433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720154, 30.307421, 33.470482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047265, -0.598998, -0.799354,
		-0.962051, -0.188006, 0.197768,
		-0.268746, 0.778367, -0.567380,
		37.639530, 30.540932, 33.300266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227638, 29.735968, 33.275818>,  <37.827652, 29.996075, 33.697433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227638, 29.735968, 33.275818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343342, 30.071657, 33.091633>,  <37.412766, 30.273071, 32.981121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343342, 30.071657, 33.091633>,  <37.227638, 29.735968, 33.275818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343342, 30.071657, 33.091633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170488, -0.428174, -0.887469,
		-0.941946, 0.335213, 0.019224,
		0.289260, 0.839226, -0.460466,
		37.430119, 30.323425, 32.953491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870007, 29.753325, 32.601734>,  <37.227638, 29.735968, 33.275818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870007, 29.753325, 32.601734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162521, 30.023338, 32.562653>,  <37.338032, 30.185347, 32.539204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162521, 30.023338, 32.562653>,  <36.870007, 29.753325, 32.601734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162521, 30.023338, 32.562653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053007, -0.199056, -0.978553,
		-0.680003, 0.710428, -0.181349,
		0.731290, 0.675032, -0.097701,
		37.381908, 30.225847, 32.533344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708958, 29.973383, 32.026337>,  <36.870007, 29.753325, 32.601734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708958, 29.973383, 32.026337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092022, 30.082291, 32.063759>,  <37.321861, 30.147635, 32.086212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092022, 30.082291, 32.063759>,  <36.708958, 29.973383, 32.026337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092022, 30.082291, 32.063759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127016, -0.107942, -0.986010,
		-0.258360, 0.956148, -0.137954,
		0.957662, 0.272267, 0.093558,
		37.379322, 30.163971, 32.091827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809139, 30.478895, 31.539412>,  <36.708958, 29.973383, 32.026337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809139, 30.478895, 31.539412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155670, 30.304132, 31.636236>,  <37.363586, 30.199274, 31.694330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155670, 30.304132, 31.636236>,  <36.809139, 30.478895, 31.539412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155670, 30.304132, 31.636236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165934, -0.205352, -0.964519,
		0.471113, 0.875753, -0.105404,
		0.866325, -0.436907, 0.242061,
		37.415569, 30.173059, 31.708855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404594, 30.792139, 31.069193>,  <36.809139, 30.478895, 31.539412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404594, 30.792139, 31.069193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497223, 30.427670, 31.205507>,  <37.552799, 30.208988, 31.287296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497223, 30.427670, 31.205507>,  <37.404594, 30.792139, 31.069193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497223, 30.427670, 31.205507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068174, -0.334246, -0.940017,
		0.970425, 0.240918, -0.015285,
		0.231576, -0.911174, 0.340785,
		37.566696, 30.154318, 31.307743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949612, 30.622644, 30.684031>,  <37.404594, 30.792139, 31.069193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949612, 30.622644, 30.684031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862625, 30.263641, 30.837490>,  <37.810432, 30.048239, 30.929565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862625, 30.263641, 30.837490>,  <37.949612, 30.622644, 30.684031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862625, 30.263641, 30.837490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066591, -0.405780, -0.911542,
		0.973794, -0.172681, 0.148009,
		-0.217464, -0.897510, 0.383647,
		37.797386, 29.994389, 30.952585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450855, 30.142384, 30.474825>,  <37.949612, 30.622644, 30.684031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450855, 30.142384, 30.474825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120983, 29.936584, 30.568806>,  <37.923061, 29.813105, 30.625195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120983, 29.936584, 30.568806>,  <38.450855, 30.142384, 30.474825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120983, 29.936584, 30.568806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096764, -0.280934, -0.954837,
		0.557267, -0.810166, 0.181894,
		-0.824676, -0.514498, 0.234950,
		37.873581, 29.782236, 30.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615002, 29.360052, 30.143297>,  <38.450855, 30.142384, 30.474825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615002, 29.360052, 30.143297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220520, 29.358355, 30.209486>,  <37.983829, 29.357336, 30.249199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220520, 29.358355, 30.209486>,  <38.615002, 29.360052, 30.143297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220520, 29.358355, 30.209486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160029, -0.231013, -0.959700,
		0.042300, -0.972941, 0.227147,
		-0.986205, -0.004246, 0.165471,
		37.924660, 29.357080, 30.259127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331760, 28.735350, 29.843506>,  <38.615002, 29.360052, 30.143297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331760, 28.735350, 29.843506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019924, 28.984158, 29.872707>,  <37.832821, 29.133442, 29.890228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019924, 28.984158, 29.872707>,  <38.331760, 28.735350, 29.843506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019924, 28.984158, 29.872707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417778, -0.429653, -0.800537,
		-0.466586, -0.654588, 0.594820,
		-0.779588, 0.622023, 0.073003,
		37.786049, 29.170765, 29.894608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.703560, 28.277418, 29.765553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575191, 28.649002, 29.691748>,  <37.498169, 28.871952, 29.647465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575191, 28.649002, 29.691748>,  <37.703560, 28.277418, 29.765553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575191, 28.649002, 29.691748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481478, -0.327785, -0.812857,
		-0.815591, -0.172025, 0.552467,
		-0.320923, 0.928959, -0.184512,
		37.478916, 28.927691, 29.636395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958084, 28.260651, 29.618364>,  <37.703560, 28.277418, 29.765553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958084, 28.260651, 29.618364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090199, 28.603054, 29.459288>,  <37.169468, 28.808496, 29.363842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090199, 28.603054, 29.459288>,  <36.958084, 28.260651, 29.618364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090199, 28.603054, 29.459288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394581, -0.257536, -0.882032,
		-0.857447, 0.448248, 0.252703,
		0.330289, 0.856008, -0.397694,
		37.189285, 28.859856, 29.339979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475330, 28.537642, 29.375416>,  <36.958084, 28.260651, 29.618364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475330, 28.537642, 29.375416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766769, 28.698635, 29.153732>,  <36.941635, 28.795231, 29.020721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766769, 28.698635, 29.153732>,  <36.475330, 28.537642, 29.375416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766769, 28.698635, 29.153732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393891, -0.415741, -0.819762,
		-0.560349, 0.815577, -0.144375,
		0.728601, 0.402485, -0.554208,
		36.985352, 28.819380, 28.987471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108646, 28.811199, 28.854425>,  <36.475330, 28.537642, 29.375416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108646, 28.811199, 28.854425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485016, 28.795145, 28.719936>,  <36.710838, 28.785513, 28.639244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485016, 28.795145, 28.719936>,  <36.108646, 28.811199, 28.854425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485016, 28.795145, 28.719936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331640, -0.309628, -0.891148,
		-0.068338, 0.950010, -0.304648,
		0.940928, -0.040134, -0.336220,
		36.767296, 28.783104, 28.619070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116253, 29.254692, 28.199097>,  <36.108646, 28.811199, 28.854425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116253, 29.254692, 28.199097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450325, 29.037497, 28.164150>,  <36.650768, 28.907179, 28.143183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450325, 29.037497, 28.164150>,  <36.116253, 29.254692, 28.199097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450325, 29.037497, 28.164150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241825, -0.219893, -0.945076,
		0.493953, 0.810439, -0.314959,
		0.835183, -0.542988, -0.087367,
		36.700878, 28.874599, 28.137939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348854, 29.345242, 27.500444>,  <36.116253, 29.254692, 28.199097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348854, 29.345242, 27.500444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516190, 29.000803, 27.616034>,  <36.616592, 28.794140, 27.685387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516190, 29.000803, 27.616034>,  <36.348854, 29.345242, 27.500444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516190, 29.000803, 27.616034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259219, -0.418104, -0.870628,
		0.870516, 0.289310, -0.398122,
		0.418338, -0.861097, 0.288972,
		36.641689, 28.742474, 27.702724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445644, 28.994976, 26.848269>,  <36.348854, 29.345242, 27.500444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445644, 28.994976, 26.848269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568577, 28.713221, 27.104200>,  <36.642338, 28.544168, 27.257759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568577, 28.713221, 27.104200>,  <36.445644, 28.994976, 26.848269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568577, 28.713221, 27.104200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049799, -0.683357, -0.728384,
		0.950297, 0.191996, -0.245097,
		0.307336, -0.704387, 0.639831,
		36.660778, 28.501904, 27.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103363, 28.600113, 26.597626>,  <36.445644, 28.994976, 26.848269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103363, 28.600113, 26.597626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925903, 28.339880, 26.844175>,  <36.819427, 28.183741, 26.992105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925903, 28.339880, 26.844175>,  <37.103363, 28.600113, 26.597626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925903, 28.339880, 26.844175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058742, -0.707393, -0.704375,
		0.894272, -0.276291, 0.352053,
		-0.443653, -0.650583, 0.616372,
		36.792809, 28.144705, 27.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622047, 28.017195, 26.758669>,  <37.103363, 28.600113, 26.597626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622047, 28.017195, 26.758669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232304, 27.927465, 26.765656>,  <36.998459, 27.873627, 26.769848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232304, 27.927465, 26.765656>,  <37.622047, 28.017195, 26.758669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232304, 27.927465, 26.765656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103236, -0.514675, -0.851148,
		0.199923, -0.827519, 0.524636,
		-0.974357, -0.224325, 0.017466,
		36.939995, 27.860168, 26.770895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594803, 27.366808, 26.555634>,  <37.622047, 28.017195, 26.758669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594803, 27.366808, 26.555634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213444, 27.481058, 26.516762>,  <36.984627, 27.549608, 26.493439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213444, 27.481058, 26.516762>,  <37.594803, 27.366808, 26.555634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213444, 27.481058, 26.516762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071349, -0.526417, -0.847227,
		-0.293145, -0.800814, 0.522266,
		-0.953402, 0.285623, -0.097179,
		36.927422, 27.566746, 26.487608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116722, 26.756554, 26.367470>,  <37.594803, 27.366808, 26.555634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116722, 26.756554, 26.367470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869537, 27.044378, 26.240753>,  <36.721226, 27.217073, 26.164722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869537, 27.044378, 26.240753>,  <37.116722, 26.756554, 26.367470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869537, 27.044378, 26.240753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257347, -0.565865, -0.783307,
		-0.742900, -0.402525, 0.534858,
		-0.617958, 0.719563, -0.316793,
		36.684151, 27.260246, 26.145716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554028, 26.414482, 26.091986>,  <37.116722, 26.756554, 26.367470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554028, 26.414482, 26.091986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523476, 26.779667, 25.931650>,  <36.505146, 26.998777, 25.835449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523476, 26.779667, 25.931650>,  <36.554028, 26.414482, 26.091986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523476, 26.779667, 25.931650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304698, -0.404151, -0.862450,
		-0.949382, 0.056263, 0.309045,
		-0.076377, 0.912960, -0.400837,
		36.500561, 27.053555, 25.811399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037254, 26.353355, 25.694258>,  <36.554028, 26.414482, 26.091986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037254, 26.353355, 25.694258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227409, 26.673071, 25.547207>,  <36.341503, 26.864901, 25.458977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227409, 26.673071, 25.547207>,  <36.037254, 26.353355, 25.694258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227409, 26.673071, 25.547207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222324, -0.295158, -0.929222,
		-0.851223, 0.523471, 0.037387,
		0.475386, 0.799287, -0.367626,
		36.370026, 26.912857, 25.436918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663776, 26.555683, 25.149302>,  <36.037254, 26.353355, 25.694258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663776, 26.555683, 25.149302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011658, 26.745195, 25.093954>,  <36.220387, 26.858902, 25.060745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011658, 26.745195, 25.093954>,  <35.663776, 26.555683, 25.149302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011658, 26.745195, 25.093954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166707, 0.018106, -0.985840,
		-0.464565, 0.880457, 0.094728,
		0.869706, 0.473779, -0.138367,
		36.272568, 26.887329, 25.052444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508591, 26.987907, 24.778486>,  <35.663776, 26.555683, 25.149302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508591, 26.987907, 24.778486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903004, 26.964823, 24.715988>,  <36.139652, 26.950972, 24.678490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903004, 26.964823, 24.715988>,  <35.508591, 26.987907, 24.778486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903004, 26.964823, 24.715988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150761, 0.089565, -0.984505,
		0.070813, 0.994307, 0.079613,
		0.986031, -0.057713, -0.156245,
		36.198814, 26.947510, 24.669115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780979, 27.538153, 24.416973>,  <35.508591, 26.987907, 24.778486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780979, 27.538153, 24.416973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077408, 27.287800, 24.319740>,  <36.255264, 27.137589, 24.261400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077408, 27.287800, 24.319740>,  <35.780979, 27.538153, 24.416973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077408, 27.287800, 24.319740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130032, 0.221399, -0.966475,
		0.658718, 0.747832, 0.082687,
		0.741068, -0.625882, -0.243082,
		36.299728, 27.100035, 24.246817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025883, 27.813091, 23.880854>,  <35.780979, 27.538153, 24.416973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025883, 27.813091, 23.880854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189415, 27.451456, 23.831076>,  <36.287533, 27.234474, 23.801208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189415, 27.451456, 23.831076>,  <36.025883, 27.813091, 23.880854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189415, 27.451456, 23.831076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005574, 0.138830, -0.990300,
		0.912594, 0.404169, 0.061797,
		0.408828, -0.904087, -0.124443,
		36.312065, 27.180229, 23.793743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504269, 27.863253, 23.430637>,  <36.025883, 27.813091, 23.880854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504269, 27.863253, 23.430637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.435802, 27.469238, 23.422548>,  <36.394722, 27.232830, 23.417694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.435802, 27.469238, 23.422548>,  <36.504269, 27.863253, 23.430637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435802, 27.469238, 23.422548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158703, 0.047825, -0.986167,
		0.972377, -0.165584, -0.164513,
		-0.171162, -0.985035, -0.020225,
		36.384453, 27.173727, 23.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959789, 27.616693, 22.940567>,  <36.504269, 27.863253, 23.430637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959789, 27.616693, 22.940567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670193, 27.343855, 22.981720>,  <36.496437, 27.180151, 23.006413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670193, 27.343855, 22.981720>,  <36.959789, 27.616693, 22.940567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670193, 27.343855, 22.981720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091754, -0.052597, -0.994392,
		0.683683, -0.729368, -0.024506,
		-0.723988, -0.682097, 0.102882,
		36.452995, 27.139225, 23.012585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100388, 27.080845, 22.413965>,  <36.959789, 27.616693, 22.940567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100388, 27.080845, 22.413965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.715557, 27.021648, 22.505623>,  <36.484657, 26.986132, 22.560617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.715557, 27.021648, 22.505623>,  <37.100388, 27.080845, 22.413965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715557, 27.021648, 22.505623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242315, 0.077905, -0.967065,
		0.125264, -0.985916, -0.110811,
		-0.962077, -0.147989, 0.229144,
		36.426933, 26.977251, 22.574366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988495, 26.549866, 22.028721>,  <37.100388, 27.080845, 22.413965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988495, 26.549866, 22.028721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619968, 26.684258, 22.107002>,  <36.398853, 26.764893, 22.153971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619968, 26.684258, 22.107002>,  <36.988495, 26.549866, 22.028721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619968, 26.684258, 22.107002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209936, -0.006178, -0.977696,
		-0.327278, -0.941849, 0.076226,
		-0.921312, 0.335981, 0.195706,
		36.343575, 26.785051, 22.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473244, 26.031370, 21.818003>,  <36.988495, 26.549866, 22.028721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473244, 26.031370, 21.818003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291767, 26.387606, 21.805286>,  <36.182880, 26.601347, 21.797657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291767, 26.387606, 21.805286>,  <36.473244, 26.031370, 21.818003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291767, 26.387606, 21.805286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358564, -0.215090, -0.908388,
		-0.815840, -0.400729, 0.416919,
		-0.453692, 0.890591, -0.031792,
		36.155659, 26.654783, 21.795750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752193, 25.998192, 21.688631>,  <36.473244, 26.031370, 21.818003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752193, 25.998192, 21.688631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886570, 26.317076, 21.487993>,  <35.967197, 26.508406, 21.367611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886570, 26.317076, 21.487993>,  <35.752193, 25.998192, 21.688631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886570, 26.317076, 21.487993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273608, -0.426983, -0.861873,
		-0.901266, 0.426782, 0.074681,
		0.335945, 0.797209, -0.501596,
		35.987354, 26.556238, 21.337515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300335, 26.449118, 21.384869>,  <35.752193, 25.998192, 21.688631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300335, 26.449118, 21.384869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618587, 26.522795, 21.154032>,  <35.809540, 26.567001, 21.015530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618587, 26.522795, 21.154032>,  <35.300335, 26.449118, 21.384869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618587, 26.522795, 21.154032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509620, -0.311498, -0.802033,
		-0.327493, 0.932224, -0.153969,
		0.795635, 0.184195, -0.577093,
		35.857277, 26.578053, 20.980904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527847, 26.333719, 21.564955>,  <35.300335, 26.449118, 21.384869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527847, 26.333719, 21.564955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166130, 26.168715, 21.520969>,  <33.949100, 26.069712, 21.494579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.166130, 26.168715, 21.520969>,  <34.527847, 26.333719, 21.564955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166130, 26.168715, 21.520969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035066, -0.328472, 0.943862,
		-0.425472, 0.849671, 0.311500,
		-0.904292, -0.412510, -0.109961,
		33.894844, 26.044962, 21.487982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025509, 26.634682, 22.047905>,  <34.527847, 26.333719, 21.564955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025509, 26.634682, 22.047905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885250, 26.272514, 21.952183>,  <33.801094, 26.055214, 21.894751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885250, 26.272514, 21.952183>,  <34.025509, 26.634682, 22.047905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885250, 26.272514, 21.952183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040178, -0.269837, 0.962067,
		-0.935645, 0.327733, 0.130996,
		-0.350649, -0.905417, -0.239304,
		33.780056, 26.000889, 21.880392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361401, 26.491123, 22.384947>,  <34.025509, 26.634682, 22.047905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361401, 26.491123, 22.384947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594334, 26.173603, 22.314781>,  <33.734093, 25.983091, 22.272682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594334, 26.173603, 22.314781>,  <33.361401, 26.491123, 22.384947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594334, 26.173603, 22.314781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185207, -0.339645, 0.922139,
		-0.791571, -0.504505, -0.344804,
		0.582335, -0.793798, -0.175415,
		33.769035, 25.935463, 22.262157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716610, 26.088049, 22.708113>,  <33.361401, 26.491123, 22.384947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716610, 26.088049, 22.708113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080452, 25.923243, 22.686693>,  <33.298756, 25.824358, 22.673841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080452, 25.923243, 22.686693>,  <32.716610, 26.088049, 22.708113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080452, 25.923243, 22.686693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047590, -0.024714, 0.998561,
		-0.412749, -0.910840, -0.002872,
		0.909601, -0.412019, -0.053547,
		33.353333, 25.799637, 22.670630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721668, 25.508907, 23.195551>,  <32.716610, 26.088049, 22.708113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721668, 25.508907, 23.195551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109909, 25.582542, 23.133526>,  <33.342854, 25.626724, 23.096312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109909, 25.582542, 23.133526>,  <32.721668, 25.508907, 23.195551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109909, 25.582542, 23.133526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164655, -0.037934, 0.985621,
		0.175559, -0.982177, -0.067130,
		0.970601, 0.184089, -0.155061,
		33.401089, 25.637768, 23.087008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010620, 25.103151, 23.625832>,  <32.721668, 25.508907, 23.195551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010620, 25.103151, 23.625832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307171, 25.362055, 23.554935>,  <33.485104, 25.517397, 23.512398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307171, 25.362055, 23.554935>,  <33.010620, 25.103151, 23.625832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307171, 25.362055, 23.554935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259197, -0.032567, 0.965275,
		0.619011, -0.761574, -0.191912,
		0.741379, 0.647259, -0.177238,
		33.529583, 25.556232, 23.501764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548035, 24.846754, 24.063280>,  <33.010620, 25.103151, 23.625832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548035, 24.846754, 24.063280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651932, 25.224375, 23.981985>,  <33.714268, 25.450947, 23.933208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651932, 25.224375, 23.981985>,  <33.548035, 24.846754, 24.063280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651932, 25.224375, 23.981985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295484, 0.122669, 0.947440,
		0.919361, -0.306141, -0.247090,
		0.259740, 0.944050, -0.203237,
		33.729855, 25.507589, 23.921015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143211, 24.975420, 24.479710>,  <33.548035, 24.846754, 24.063280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143211, 24.975420, 24.479710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989376, 25.338360, 24.411818>,  <33.897076, 25.556124, 24.371082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989376, 25.338360, 24.411818>,  <34.143211, 24.975420, 24.479710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989376, 25.338360, 24.411818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196454, 0.260112, 0.945382,
		0.901943, 0.330235, -0.278288,
		-0.384584, 0.907351, -0.169730,
		33.874001, 25.610565, 24.360899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669895, 25.360710, 24.761848>,  <34.143211, 24.975420, 24.479710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669895, 25.360710, 24.761848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371338, 25.624744, 24.727934>,  <34.192204, 25.783165, 24.707586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371338, 25.624744, 24.727934>,  <34.669895, 25.360710, 24.761848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371338, 25.624744, 24.727934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351446, 0.499135, 0.792054,
		0.565142, 0.561385, -0.604534,
		-0.746392, 0.660084, -0.084785,
		34.147419, 25.822769, 24.702497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983952, 26.002600, 24.802820>,  <34.669895, 25.360710, 24.761848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983952, 26.002600, 24.802820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599899, 26.010332, 24.914368>,  <34.369469, 26.014971, 24.981297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599899, 26.010332, 24.914368>,  <34.983952, 26.002600, 24.802820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599899, 26.010332, 24.914368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277160, 0.195660, 0.940691,
		-0.036379, 0.980481, -0.193218,
		-0.960135, 0.019331, 0.278868,
		34.311859, 26.016130, 24.998028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958584, 26.621586, 25.201490>,  <34.983952, 26.002600, 24.802820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958584, 26.621586, 25.201490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605141, 26.485121, 25.329763>,  <34.393074, 26.403242, 25.406727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605141, 26.485121, 25.329763>,  <34.958584, 26.621586, 25.201490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605141, 26.485121, 25.329763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301739, 0.108792, 0.947163,
		-0.358026, 0.933687, 0.006813,
		-0.883612, -0.341165, 0.320680,
		34.340057, 26.382771, 25.425968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617092, 27.109337, 25.676600>,  <34.958584, 26.621586, 25.201490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617092, 27.109337, 25.676600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440685, 26.764246, 25.775557>,  <34.334839, 26.557192, 25.834930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440685, 26.764246, 25.775557>,  <34.617092, 27.109337, 25.676600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440685, 26.764246, 25.775557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128265, 0.212232, 0.968765,
		-0.888284, 0.458978, 0.017059,
		-0.441021, -0.862727, 0.247393,
		34.308380, 26.505428, 25.849775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151608, 27.335384, 26.221478>,  <34.617092, 27.109337, 25.676600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151608, 27.335384, 26.221478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231136, 26.943518, 26.232218>,  <34.278854, 26.708397, 26.238663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231136, 26.943518, 26.232218>,  <34.151608, 27.335384, 26.221478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231136, 26.943518, 26.232218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198033, 0.066993, 0.977904,
		-0.959818, -0.189115, 0.207326,
		0.198826, -0.979667, 0.026850,
		34.290783, 26.649618, 26.240273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826866, 27.241541, 26.854965>,  <34.151608, 27.335384, 26.221478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826866, 27.241541, 26.854965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063362, 26.925760, 26.788998>,  <34.205261, 26.736292, 26.749416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063362, 26.925760, 26.788998>,  <33.826866, 27.241541, 26.854965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063362, 26.925760, 26.788998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297659, 0.023550, 0.954382,
		-0.749555, -0.613360, 0.248912,
		0.591241, -0.789453, -0.164921,
		34.240734, 26.688925, 26.739521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634598, 26.820784, 27.435356>,  <33.826866, 27.241541, 26.854965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634598, 26.820784, 27.435356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991222, 26.698681, 27.301529>,  <34.205196, 26.625420, 27.221233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991222, 26.698681, 27.301529>,  <33.634598, 26.820784, 27.435356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991222, 26.698681, 27.301529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336627, -0.047555, 0.940436,
		-0.302984, -0.951082, 0.060360,
		0.891562, -0.305256, -0.334569,
		34.258690, 26.607103, 27.201159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866222, 26.190342, 27.907629>,  <33.634598, 26.820784, 27.435356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866222, 26.190342, 27.907629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203499, 26.329641, 27.743795>,  <34.405865, 26.413221, 27.645496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203499, 26.329641, 27.743795>,  <33.866222, 26.190342, 27.907629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203499, 26.329641, 27.743795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430402, 0.019269, 0.902431,
		0.322163, -0.937204, -0.133640,
		0.843187, 0.348249, -0.409583,
		34.456455, 26.434116, 27.620920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440098, 25.673229, 28.042145>,  <33.866222, 26.190342, 27.907629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440098, 25.673229, 28.042145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594139, 26.038467, 27.988544>,  <34.686562, 26.257610, 27.956385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594139, 26.038467, 27.988544>,  <34.440098, 25.673229, 28.042145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594139, 26.038467, 27.988544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431891, -0.049995, 0.900539,
		0.815579, -0.404670, -0.413611,
		0.385099, 0.913095, -0.133999,
		34.709667, 26.312395, 27.948345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008556, 25.623972, 28.403458>,  <34.440098, 25.673229, 28.042145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008556, 25.623972, 28.403458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946186, 26.018511, 28.382278>,  <34.908764, 26.255234, 28.369572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946186, 26.018511, 28.382278>,  <35.008556, 25.623972, 28.403458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946186, 26.018511, 28.382278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203480, 0.084526, 0.975424,
		0.966584, 0.141318, -0.213882,
		-0.155923, 0.986349, -0.052946,
		34.899410, 26.314415, 28.366394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589203, 25.998184, 28.788788>,  <35.008556, 25.623972, 28.403458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589203, 25.998184, 28.788788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295143, 26.267353, 28.755972>,  <35.118706, 26.428854, 28.736282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295143, 26.267353, 28.755972>,  <35.589203, 25.998184, 28.788788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295143, 26.267353, 28.755972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200629, 0.331573, 0.921850,
		0.647536, 0.661238, -0.378764,
		-0.735150, 0.672922, -0.082042,
		35.074596, 26.469229, 28.731359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858604, 26.543251, 29.160425>,  <35.589203, 25.998184, 28.788788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858604, 26.543251, 29.160425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470238, 26.636724, 29.139612>,  <35.237217, 26.692808, 29.127125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470238, 26.636724, 29.139612>,  <35.858604, 26.543251, 29.160425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470238, 26.636724, 29.139612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080994, 0.525144, 0.847151,
		0.225289, 0.818301, -0.528799,
		-0.970920, 0.233683, -0.052032,
		35.178963, 26.706829, 29.124002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.639530, 30.305273, 32.130432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241642, 30.267632, 32.114017>,  <38.002911, 30.245047, 32.104168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241642, 30.267632, 32.114017>,  <38.639530, 30.305273, 32.130432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241642, 30.267632, 32.114017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086727, 0.556323, 0.826428,
		-0.054938, 0.825620, -0.561545,
		-0.994716, -0.094103, -0.041040,
		37.943226, 30.239401, 32.101704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423725, 30.994177, 32.350311>,  <38.639530, 30.305273, 32.130432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423725, 30.994177, 32.350311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107822, 30.753414, 32.397629>,  <37.918282, 30.608957, 32.426022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107822, 30.753414, 32.397629>,  <38.423725, 30.994177, 32.350311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107822, 30.753414, 32.397629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263657, 0.507202, 0.820507,
		-0.553870, 0.616809, -0.559263,
		-0.789755, -0.601907, 0.118298,
		37.870895, 30.572842, 32.433117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891193, 31.437748, 32.330830>,  <38.423725, 30.994177, 32.350311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891193, 31.437748, 32.330830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769535, 31.106833, 32.519760>,  <37.696541, 30.908283, 32.633118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769535, 31.106833, 32.519760>,  <37.891193, 31.437748, 32.330830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769535, 31.106833, 32.519760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035689, 0.505358, 0.862172,
		-0.951956, 0.245371, -0.183228,
		-0.304147, -0.827289, 0.472322,
		37.678291, 30.858646, 32.661457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294544, 31.678619, 32.714237>,  <37.891193, 31.437748, 32.330830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294544, 31.678619, 32.714237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405815, 31.329704, 32.875099>,  <37.472576, 31.120354, 32.971615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405815, 31.329704, 32.875099>,  <37.294544, 31.678619, 32.714237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405815, 31.329704, 32.875099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329486, 0.306620, 0.892986,
		-0.902251, -0.380912, -0.202112,
		0.278177, -0.872290, 0.402153,
		37.489269, 31.068018, 32.995747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634720, 31.270693, 33.068340>,  <37.294544, 31.678619, 32.714237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634720, 31.270693, 33.068340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990376, 31.175102, 33.224457>,  <37.203770, 31.117748, 33.318127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990376, 31.175102, 33.224457>,  <36.634720, 31.270693, 33.068340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990376, 31.175102, 33.224457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303640, 0.330021, 0.893806,
		-0.342401, -0.913224, 0.220871,
		0.889137, -0.238974, 0.390291,
		37.257118, 31.103411, 33.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355518, 30.967005, 33.669224>,  <36.634720, 31.270693, 33.068340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355518, 30.967005, 33.669224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.738689, 31.080826, 33.684208>,  <36.968594, 31.149118, 33.693199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.738689, 31.080826, 33.684208>,  <36.355518, 30.967005, 33.669224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738689, 31.080826, 33.684208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157871, 0.413414, 0.896753,
		0.239689, -0.864938, 0.440944,
		0.957928, 0.284553, 0.037458,
		37.026070, 31.166191, 33.695446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467178, 30.931244, 34.340500>,  <36.355518, 30.967005, 33.669224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467178, 30.931244, 34.340500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793587, 31.132164, 34.226089>,  <36.989429, 31.252716, 34.157444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793587, 31.132164, 34.226089>,  <36.467178, 30.931244, 34.340500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793587, 31.132164, 34.226089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005735, 0.501847, 0.864937,
		0.578000, -0.704163, 0.412396,
		0.816017, 0.502299, -0.286029,
		37.038391, 31.282854, 34.140282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844494, 30.951727, 34.906887>,  <36.467178, 30.931244, 34.340500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844494, 30.951727, 34.906887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030785, 31.239124, 34.700253>,  <37.142559, 31.411564, 34.576271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030785, 31.239124, 34.700253>,  <36.844494, 30.951727, 34.906887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030785, 31.239124, 34.700253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138295, 0.517496, 0.844436,
		0.874057, -0.464717, 0.141646,
		0.465725, 0.718496, -0.516589,
		37.170502, 31.454674, 34.545277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389538, 31.082649, 35.221886>,  <36.844494, 30.951727, 34.906887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389538, 31.082649, 35.221886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310707, 31.417454, 35.017700>,  <37.263409, 31.618336, 34.895187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310707, 31.417454, 35.017700>,  <37.389538, 31.082649, 35.221886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310707, 31.417454, 35.017700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059831, 0.529976, 0.845899,
		0.978561, 0.136165, -0.154525,
		-0.197077, 0.837009, -0.510467,
		37.251583, 31.668556, 34.864559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748417, 31.558586, 35.466984>,  <37.389538, 31.082649, 35.221886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748417, 31.558586, 35.466984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493439, 31.804836, 35.281651>,  <37.340454, 31.952585, 35.170452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493439, 31.804836, 35.281651>,  <37.748417, 31.558586, 35.466984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493439, 31.804836, 35.281651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015807, 0.611660, 0.790963,
		0.770335, 0.496870, -0.399630,
		-0.637443, 0.615624, -0.463329,
		37.302204, 31.989523, 35.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036129, 32.310963, 35.657356>,  <37.748417, 31.558586, 35.466984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036129, 32.310963, 35.657356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661457, 32.354851, 35.524330>,  <37.436653, 32.381184, 35.444515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661457, 32.354851, 35.524330>,  <38.036129, 32.310963, 35.657356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661457, 32.354851, 35.524330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181191, 0.660817, 0.728348,
		0.299674, 0.742485, -0.599093,
		-0.936678, 0.109717, -0.332561,
		37.380455, 32.387764, 35.424561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969479, 32.930531, 35.665638>,  <38.036129, 32.310963, 35.657356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969479, 32.930531, 35.665638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591263, 32.800411, 35.670406>,  <37.364334, 32.722340, 35.673267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591263, 32.800411, 35.670406>,  <37.969479, 32.930531, 35.665638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591263, 32.800411, 35.670406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208203, 0.632517, 0.746039,
		-0.250224, 0.702925, -0.665796,
		-0.945536, -0.325298, 0.011920,
		37.307602, 32.702824, 35.673981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625774, 33.571835, 35.664707>,  <37.969479, 32.930531, 35.665638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625774, 33.571835, 35.664707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382526, 33.281452, 35.793190>,  <37.236576, 33.107224, 35.870277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382526, 33.281452, 35.793190>,  <37.625774, 33.571835, 35.664707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382526, 33.281452, 35.793190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349693, 0.608221, 0.712588,
		-0.712672, 0.321018, -0.623736,
		-0.608123, -0.725958, 0.321204,
		37.200089, 33.063663, 35.889549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479057, 33.432549, 34.841873>,  <37.625774, 33.571835, 35.664707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479057, 33.432549, 34.841873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505745, 33.819183, 34.940876>,  <37.521755, 34.051163, 35.000278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.505745, 33.819183, 34.940876>,  <37.479057, 33.432549, 34.841873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505745, 33.819183, 34.940876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878085, 0.174679, -0.445482,
		-0.473831, -0.187613, 0.860398,
		0.066716, 0.966586, 0.247508,
		37.525761, 34.109158, 35.015129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865406, 33.613121, 35.082893>,  <37.479057, 33.432549, 34.841873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865406, 33.613121, 35.082893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074970, 33.895870, 34.892796>,  <37.200706, 34.065521, 34.778736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074970, 33.895870, 34.892796>,  <36.865406, 33.613121, 35.082893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074970, 33.895870, 34.892796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751162, 0.120367, -0.649052,
		-0.401593, 0.697026, 0.594036,
		0.523908, 0.706871, -0.475241,
		37.232143, 34.107933, 34.750225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385960, 34.104549, 35.040653>,  <36.865406, 33.613121, 35.082893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385960, 34.104549, 35.040653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658291, 34.228455, 34.775166>,  <36.821690, 34.302799, 34.615871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658291, 34.228455, 34.775166>,  <36.385960, 34.104549, 35.040653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658291, 34.228455, 34.775166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719844, 0.115613, -0.684440,
		-0.135280, 0.943758, 0.301695,
		0.680826, 0.309765, -0.663718,
		36.862537, 34.321384, 34.576050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040138, 34.616413, 34.664497>,  <36.385960, 34.104549, 35.040653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040138, 34.616413, 34.664497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335461, 34.523727, 34.411133>,  <36.512653, 34.468117, 34.259113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335461, 34.523727, 34.411133>,  <36.040138, 34.616413, 34.664497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335461, 34.523727, 34.411133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582416, 0.254588, -0.771995,
		0.340138, 0.938880, 0.053013,
		0.738307, -0.231710, -0.633414,
		36.556953, 34.454216, 34.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927555, 35.036228, 34.135277>,  <36.040138, 34.616413, 34.664497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927555, 35.036228, 34.135277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174122, 34.756130, 33.991230>,  <36.322063, 34.588070, 33.904800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174122, 34.756130, 33.991230>,  <35.927555, 35.036228, 34.135277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174122, 34.756130, 33.991230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415703, 0.099010, -0.904095,
		0.668744, 0.707002, -0.230063,
		0.616418, -0.700246, -0.360116,
		36.359047, 34.546055, 33.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916260, 35.272388, 33.524708>,  <35.927555, 35.036228, 34.135277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916260, 35.272388, 33.524708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021198, 34.887333, 33.497868>,  <36.084160, 34.656300, 33.481762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021198, 34.887333, 33.497868>,  <35.916260, 35.272388, 33.524708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021198, 34.887333, 33.497868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435893, -0.056183, -0.898243,
		0.860913, 0.264899, -0.434347,
		0.262347, -0.962638, -0.067099,
		36.099903, 34.598541, 33.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988209, 35.202164, 32.843342>,  <35.916260, 35.272388, 33.524708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988209, 35.202164, 32.843342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971577, 34.820118, 32.960667>,  <35.961597, 34.590893, 33.031063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971577, 34.820118, 32.960667>,  <35.988209, 35.202164, 32.843342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971577, 34.820118, 32.960667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337994, -0.262810, -0.903709,
		0.940229, -0.136717, -0.311893,
		-0.041584, -0.955112, 0.293312,
		35.959103, 34.533585, 33.048660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425060, 34.660286, 32.402264>,  <35.988209, 35.202164, 32.843342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425060, 34.660286, 32.402264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127899, 34.450134, 32.568195>,  <35.949604, 34.324043, 32.667755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127899, 34.450134, 32.568195>,  <36.425060, 34.660286, 32.402264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127899, 34.450134, 32.568195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298858, -0.294200, -0.907816,
		0.598988, -0.798390, 0.061548,
		-0.742898, -0.525377, 0.414827,
		35.905029, 34.292522, 32.692642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323902, 34.060997, 31.957504>,  <36.425060, 34.660286, 32.402264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323902, 34.060997, 31.957504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990108, 34.063736, 32.177902>,  <35.789833, 34.065380, 32.310143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990108, 34.063736, 32.177902>,  <36.323902, 34.060997, 31.957504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990108, 34.063736, 32.177902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453504, -0.576529, -0.679668,
		0.313013, -0.817048, 0.484206,
		-0.834480, 0.006844, 0.550996,
		35.739765, 34.065788, 32.343201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209770, 33.364830, 32.030281>,  <36.323902, 34.060997, 31.957504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209770, 33.364830, 32.030281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856197, 33.543316, 32.086220>,  <35.644054, 33.650406, 32.119781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856197, 33.543316, 32.086220>,  <36.209770, 33.364830, 32.030281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856197, 33.543316, 32.086220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414388, -0.608900, -0.676405,
		-0.216666, -0.655848, 0.723132,
		-0.883933, 0.446211, 0.139847,
		35.591019, 33.677177, 32.128174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682446, 32.874790, 32.104412>,  <36.209770, 33.364830, 32.030281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682446, 32.874790, 32.104412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434116, 33.175220, 32.014561>,  <35.285118, 33.355480, 31.960649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434116, 33.175220, 32.014561>,  <35.682446, 32.874790, 32.104412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434116, 33.175220, 32.014561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488958, -0.594951, -0.637929,
		-0.612787, -0.286197, 0.736603,
		-0.620816, 0.751082, -0.224641,
		35.247871, 33.400543, 31.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936852, 32.594589, 32.066051>,  <35.682446, 32.874790, 32.104412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936852, 32.594589, 32.066051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.940784, 32.934311, 31.854925>,  <34.943146, 33.138142, 31.728249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.940784, 32.934311, 31.854925>,  <34.936852, 32.594589, 32.066051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940784, 32.934311, 31.854925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357063, -0.490061, -0.795202,
		-0.934029, 0.196286, 0.298433,
		0.009836, 0.849301, -0.527818,
		34.943737, 33.189102, 31.696579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181393, 32.697796, 31.928555>,  <34.936852, 32.594589, 32.066051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181393, 32.697796, 31.928555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.386208, 32.903839, 31.653606>,  <34.509098, 33.027466, 31.488638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.386208, 32.903839, 31.653606>,  <34.181393, 32.697796, 31.928555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386208, 32.903839, 31.653606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428357, -0.540497, -0.724137,
		-0.744533, 0.665225, -0.056102,
		0.512037, 0.515112, -0.687371,
		34.539818, 33.058372, 31.447395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702488, 33.044453, 31.529266>,  <34.181393, 32.697796, 31.928555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702488, 33.044453, 31.529266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.025295, 33.034279, 31.293276>,  <34.218979, 33.028175, 31.151682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.025295, 33.034279, 31.293276>,  <33.702488, 33.044453, 31.529266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025295, 33.034279, 31.293276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518654, -0.508208, -0.687548,
		-0.282342, 0.860859, -0.423327,
		0.807020, -0.025437, -0.589976,
		34.267403, 33.026649, 31.116283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444847, 33.218800, 30.895716>,  <33.702488, 33.044453, 31.529266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444847, 33.218800, 30.895716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.792477, 33.037247, 30.817026>,  <34.001053, 32.928314, 30.769812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.792477, 33.037247, 30.817026>,  <33.444847, 33.218800, 30.895716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792477, 33.037247, 30.817026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439758, -0.526739, -0.727433,
		0.226548, 0.718704, -0.657374,
		0.869074, -0.453884, -0.196725,
		34.053200, 32.901081, 30.758009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033314, 33.640053, 30.485819>,  <33.444847, 33.218800, 30.895716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033314, 33.640053, 30.485819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684216, 33.816311, 30.401772>,  <32.474758, 33.922066, 30.351343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684216, 33.816311, 30.401772>,  <33.033314, 33.640053, 30.485819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684216, 33.816311, 30.401772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023077, 0.392690, 0.919381,
		0.487635, 0.807232, -0.332549,
		-0.872742, 0.440648, -0.210118,
		32.422394, 33.948505, 30.338736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097286, 34.368031, 30.646673>,  <33.033314, 33.640053, 30.485819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097286, 34.368031, 30.646673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.701118, 34.314587, 30.660643>,  <32.463417, 34.282520, 30.669024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.701118, 34.314587, 30.660643>,  <33.097286, 34.368031, 30.646673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701118, 34.314587, 30.660643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009607, 0.318936, 0.947728,
		-0.137760, 0.938312, -0.317164,
		-0.990419, -0.133606, 0.034922,
		32.403992, 34.274506, 30.671120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901707, 34.833267, 31.191690>,  <33.097286, 34.368031, 30.646673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901707, 34.833267, 31.191690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590729, 34.590023, 31.127451>,  <32.404144, 34.444077, 31.088907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590729, 34.590023, 31.127451>,  <32.901707, 34.833267, 31.191690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590729, 34.590023, 31.127451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102313, -0.129665, 0.986265,
		-0.620579, 0.783194, 0.038590,
		-0.777441, -0.608107, -0.160599,
		32.357498, 34.407593, 31.079271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373280, 35.095608, 31.616604>,  <32.901707, 34.833267, 31.191690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373280, 35.095608, 31.616604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.254116, 34.728790, 31.510567>,  <32.182617, 34.508698, 31.446943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.254116, 34.728790, 31.510567>,  <32.373280, 35.095608, 31.616604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254116, 34.728790, 31.510567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143183, -0.231635, 0.962208,
		-0.943794, 0.324611, -0.062299,
		-0.297913, -0.917046, -0.265094,
		32.164742, 34.453678, 31.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641785, 34.912640, 31.916237>,  <32.373280, 35.095608, 31.616604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641785, 34.912640, 31.916237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858717, 34.583561, 31.848055>,  <31.988876, 34.386116, 31.807146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858717, 34.583561, 31.848055>,  <31.641785, 34.912640, 31.916237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858717, 34.583561, 31.848055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272090, -0.363929, 0.890799,
		-0.794887, -0.436728, -0.421216,
		0.542329, -0.822694, -0.170453,
		32.021416, 34.336754, 31.796919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380032, 34.416077, 32.413456>,  <31.641785, 34.912640, 31.916237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380032, 34.416077, 32.413456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.674326, 34.197117, 32.253933>,  <31.850903, 34.065742, 32.158218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.674326, 34.197117, 32.253933>,  <31.380032, 34.416077, 32.413456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674326, 34.197117, 32.253933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035218, -0.618978, 0.784619,
		-0.676355, -0.563225, -0.474681,
		0.735734, -0.547398, -0.398813,
		31.895046, 34.032898, 32.134289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099373, 33.769539, 32.321373>,  <31.380032, 34.416077, 32.413456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099373, 33.769539, 32.321373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.496075, 33.788280, 32.369080>,  <31.734097, 33.799526, 32.397705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.496075, 33.788280, 32.369080>,  <31.099373, 33.769539, 32.321373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496075, 33.788280, 32.369080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091304, -0.394658, 0.914280,
		0.089908, -0.917633, -0.387127,
		0.991756, 0.046855, 0.119266,
		31.793602, 33.802338, 32.404858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305140, 33.122639, 32.551174>,  <31.099373, 33.769539, 32.321373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305140, 33.122639, 32.551174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628551, 33.337002, 32.648403>,  <31.822599, 33.465618, 32.706741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628551, 33.337002, 32.648403>,  <31.305140, 33.122639, 32.551174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628551, 33.337002, 32.648403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008063, -0.423125, 0.906035,
		0.588401, -0.730596, -0.346430,
		0.808529, 0.535905, 0.243077,
		31.871111, 33.497772, 32.721325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795568, 32.646931, 32.861839>,  <31.305140, 33.122639, 32.551174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795568, 32.646931, 32.861839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881927, 33.017857, 32.984135>,  <31.933743, 33.240410, 33.057514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881927, 33.017857, 32.984135>,  <31.795568, 32.646931, 32.861839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881927, 33.017857, 32.984135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011905, -0.315604, 0.948816,
		0.976343, -0.201209, -0.079178,
		0.215899, 0.927313, 0.305742,
		31.946697, 33.296051, 33.075859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302910, 32.491055, 33.298382>,  <31.795568, 32.646931, 32.861839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302910, 32.491055, 33.298382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.197044, 32.865173, 33.392338>,  <32.133526, 33.089645, 33.448711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.197044, 32.865173, 33.392338>,  <32.302910, 32.491055, 33.298382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197044, 32.865173, 33.392338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118793, -0.210100, 0.970436,
		0.956996, 0.284742, -0.055501,
		-0.264663, 0.935297, 0.234890,
		32.117645, 33.145763, 33.462807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818340, 32.710400, 33.795143>,  <32.302910, 32.491055, 33.298382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818340, 32.710400, 33.795143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.501499, 32.952953, 33.823055>,  <32.311394, 33.098484, 33.839802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.501499, 32.952953, 33.823055>,  <32.818340, 32.710400, 33.795143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501499, 32.952953, 33.823055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029115, -0.076655, 0.996632,
		0.609691, 0.791468, 0.043064,
		-0.792104, 0.606384, 0.069780,
		32.263866, 33.134869, 33.843990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005360, 33.282990, 34.240009>,  <32.818340, 32.710400, 33.795143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005360, 33.282990, 34.240009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607250, 33.258419, 34.270103>,  <32.368385, 33.243675, 34.288158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607250, 33.258419, 34.270103>,  <33.005360, 33.282990, 34.240009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607250, 33.258419, 34.270103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076622, -0.020600, 0.996847,
		-0.059684, 0.997899, 0.025210,
		-0.995272, -0.061427, 0.075232,
		32.308670, 33.239990, 34.292671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.249954, 33.619152, 26.657991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890644, 33.443684, 26.668425>,  <32.675060, 33.338402, 26.674685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890644, 33.443684, 26.668425>,  <33.249954, 33.619152, 26.657991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890644, 33.443684, 26.668425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174180, 0.409907, 0.895342,
		-0.403447, 0.799717, -0.444615,
		-0.898271, -0.438667, 0.026081,
		32.621162, 33.312084, 26.676249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907669, 34.192120, 26.858438>,  <33.249954, 33.619152, 26.657991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907669, 34.192120, 26.858438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693058, 33.867004, 26.949232>,  <32.564293, 33.671936, 27.003708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693058, 33.867004, 26.949232>,  <32.907669, 34.192120, 26.858438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693058, 33.867004, 26.949232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057187, 0.303376, 0.951153,
		-0.841944, 0.497337, -0.209249,
		-0.536525, -0.812784, 0.226985,
		32.532101, 33.623169, 27.017328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203728, 34.408642, 27.078087>,  <32.907669, 34.192120, 26.858438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203728, 34.408642, 27.078087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288937, 34.048538, 27.229958>,  <32.340061, 33.832478, 27.321081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288937, 34.048538, 27.229958>,  <32.203728, 34.408642, 27.078087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288937, 34.048538, 27.229958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078986, 0.371457, 0.925084,
		-0.973849, -0.227054, 0.008022,
		0.213024, -0.900259, 0.379678,
		32.352844, 33.778461, 27.343861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910711, 34.436398, 27.626135>,  <32.203728, 34.408642, 27.078087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910711, 34.436398, 27.626135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092670, 34.088455, 27.702473>,  <32.201847, 33.879692, 27.748276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092670, 34.088455, 27.702473>,  <31.910711, 34.436398, 27.626135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092670, 34.088455, 27.702473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181637, 0.119168, 0.976119,
		-0.871823, -0.478699, -0.103788,
		0.454899, -0.869854, 0.190842,
		32.229141, 33.827499, 27.759726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532295, 34.011208, 28.078968>,  <31.910711, 34.436398, 27.626135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532295, 34.011208, 28.078968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897394, 33.859173, 28.138865>,  <32.116455, 33.767952, 28.174803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897394, 33.859173, 28.138865>,  <31.532295, 34.011208, 28.078968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897394, 33.859173, 28.138865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138810, 0.056176, 0.988724,
		-0.384214, -0.923243, -0.001485,
		0.912749, -0.380088, 0.149739,
		32.171219, 33.745148, 28.183786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440832, 33.314217, 28.459818>,  <31.532295, 34.011208, 28.078968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440832, 33.314217, 28.459818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811899, 33.448265, 28.525694>,  <32.034538, 33.528694, 28.565220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811899, 33.448265, 28.525694>,  <31.440832, 33.314217, 28.459818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811899, 33.448265, 28.525694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151044, -0.066578, 0.986282,
		0.341491, -0.939819, -0.011144,
		0.927669, 0.335123, 0.164690,
		32.090199, 33.548801, 28.575102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574860, 33.083820, 29.157623>,  <31.440832, 33.314217, 28.459818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574860, 33.083820, 29.157623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875599, 33.341297, 29.100504>,  <32.056042, 33.495781, 29.066233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875599, 33.341297, 29.100504>,  <31.574860, 33.083820, 29.157623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875599, 33.341297, 29.100504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118812, 0.080770, 0.989626,
		0.648544, -0.761014, -0.015752,
		0.751848, 0.643688, -0.142801,
		32.101154, 33.534405, 29.057663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100391, 32.899475, 29.626223>,  <31.574860, 33.083820, 29.157623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100391, 32.899475, 29.626223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154789, 33.285305, 29.535807>,  <32.187428, 33.516804, 29.481556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154789, 33.285305, 29.535807>,  <32.100391, 32.899475, 29.626223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154789, 33.285305, 29.535807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023256, 0.224990, 0.974083,
		0.990437, -0.137724, 0.008165,
		0.135992, 0.964578, -0.226041,
		32.195587, 33.574680, 29.467995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683750, 33.140820, 29.992641>,  <32.100391, 32.899475, 29.626223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683750, 33.140820, 29.992641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479294, 33.472511, 29.902208>,  <32.356621, 33.671524, 29.847948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479294, 33.472511, 29.902208>,  <32.683750, 33.140820, 29.992641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479294, 33.472511, 29.902208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140080, 0.339899, 0.929971,
		0.848003, 0.443680, -0.289895,
		-0.511145, 0.829227, -0.226085,
		32.325951, 33.721279, 29.834383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455093, 33.199875, 30.046736>,  <32.683750, 33.140820, 29.992641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455093, 33.199875, 30.046736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747955, 32.957905, 30.171963>,  <33.923672, 32.812721, 30.247099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747955, 32.957905, 30.171963>,  <33.455093, 33.199875, 30.046736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747955, 32.957905, 30.171963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181761, -0.616473, -0.766110,
		0.656437, 0.504009, -0.561307,
		0.732157, -0.604926, 0.313066,
		33.967602, 32.776428, 30.265882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759109, 33.036285, 29.460014>,  <33.455093, 33.199875, 30.046736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759109, 33.036285, 29.460014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880718, 32.735306, 29.693729>,  <33.953682, 32.554718, 29.833958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880718, 32.735306, 29.693729>,  <33.759109, 33.036285, 29.460014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880718, 32.735306, 29.693729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031911, -0.621017, -0.783148,
		0.952131, 0.219449, -0.212814,
		0.304022, -0.752450, 0.584286,
		33.971924, 32.509571, 29.869015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298420, 32.712543, 29.203785>,  <33.759109, 33.036285, 29.460014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298420, 32.712543, 29.203785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160507, 32.431423, 29.452684>,  <34.077759, 32.262753, 29.602024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160507, 32.431423, 29.452684>,  <34.298420, 32.712543, 29.203785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160507, 32.431423, 29.452684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089783, -0.684548, -0.723418,
		0.934379, -0.193554, 0.299121,
		-0.344783, -0.702802, 0.622249,
		34.057072, 32.220581, 29.639359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614388, 32.049160, 29.050053>,  <34.298420, 32.712543, 29.203785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614388, 32.049160, 29.050053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298141, 31.927750, 29.262770>,  <34.108395, 31.854904, 29.390400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298141, 31.927750, 29.262770>,  <34.614388, 32.049160, 29.050053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298141, 31.927750, 29.262770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100150, -0.792698, -0.601331,
		0.604069, -0.528680, 0.596321,
		-0.790614, -0.303524, 0.531792,
		34.060959, 31.836693, 29.422308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714890, 31.329937, 29.252321>,  <34.614388, 32.049160, 29.050053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714890, 31.329937, 29.252321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323135, 31.401417, 29.289984>,  <34.088081, 31.444304, 29.312580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323135, 31.401417, 29.289984>,  <34.714890, 31.329937, 29.252321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323135, 31.401417, 29.289984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201794, -0.845401, -0.494546,
		-0.008776, -0.503352, 0.864037,
		-0.979389, 0.178697, 0.094155,
		34.029320, 31.455027, 29.318230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367138, 30.717249, 29.446033>,  <34.714890, 31.329937, 29.252321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367138, 30.717249, 29.446033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062984, 30.931646, 29.299320>,  <33.880493, 31.060284, 29.211292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062984, 30.931646, 29.299320>,  <34.367138, 30.717249, 29.446033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062984, 30.931646, 29.299320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243750, -0.758968, -0.603782,
		-0.601997, -0.369703, 0.707756,
		-0.760384, 0.535991, -0.366781,
		33.834869, 31.092443, 29.189285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963634, 30.205551, 29.163363>,  <34.367138, 30.717249, 29.446033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963634, 30.205551, 29.163363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832085, 30.529427, 28.968941>,  <33.753155, 30.723751, 28.852287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832085, 30.529427, 28.968941>,  <33.963634, 30.205551, 29.163363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832085, 30.529427, 28.968941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195703, -0.561942, -0.803693,
		-0.923874, -0.169191, 0.343266,
		-0.328873, 0.809689, -0.486052,
		33.733421, 30.772333, 28.823126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402943, 30.036499, 28.808422>,  <33.963634, 30.205551, 29.163363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402943, 30.036499, 28.808422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507343, 30.361300, 28.599604>,  <33.569984, 30.556179, 28.474314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507343, 30.361300, 28.599604>,  <33.402943, 30.036499, 28.808422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507343, 30.361300, 28.599604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236965, -0.470351, -0.850069,
		-0.935802, 0.345577, 0.069653,
		0.261003, 0.812002, -0.522045,
		33.585644, 30.604900, 28.442989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851486, 30.052895, 28.247540>,  <33.402943, 30.036499, 28.808422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851486, 30.052895, 28.247540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144791, 30.299456, 28.132740>,  <33.320774, 30.447392, 28.063860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144791, 30.299456, 28.132740>,  <32.851486, 30.052895, 28.247540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144791, 30.299456, 28.132740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134001, -0.282811, -0.949769,
		-0.666608, 0.734891, -0.124777,
		0.733265, 0.616403, -0.287000,
		33.364769, 30.484377, 28.046640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572193, 30.285538, 27.744019>,  <32.851486, 30.052895, 28.247540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572193, 30.285538, 27.744019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966949, 30.332499, 27.699732>,  <33.203804, 30.360676, 27.673161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966949, 30.332499, 27.699732>,  <32.572193, 30.285538, 27.744019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966949, 30.332499, 27.699732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073879, -0.281246, -0.956788,
		-0.143468, 0.952427, -0.268887,
		0.986894, 0.117403, -0.110715,
		33.263016, 30.367720, 27.666517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637196, 30.691326, 27.203098>,  <32.572193, 30.285538, 27.744019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637196, 30.691326, 27.203098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980366, 30.487556, 27.229774>,  <33.186268, 30.365295, 27.245779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980366, 30.487556, 27.229774>,  <32.637196, 30.691326, 27.203098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980366, 30.487556, 27.229774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031170, -0.181174, -0.982957,
		0.512824, 0.841228, -0.171313,
		0.857928, -0.509423, 0.066690,
		33.237743, 30.334730, 27.249781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031765, 30.897579, 26.634970>,  <32.637196, 30.691326, 27.203098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031765, 30.897579, 26.634970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196045, 30.550922, 26.748287>,  <33.294613, 30.342928, 26.816278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196045, 30.550922, 26.748287>,  <33.031765, 30.897579, 26.634970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196045, 30.550922, 26.748287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296406, -0.166927, -0.940361,
		0.862247, 0.470175, 0.188322,
		0.410698, -0.866644, 0.283295,
		33.319256, 30.290930, 26.833275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604122, 30.806211, 26.223358>,  <33.031765, 30.897579, 26.634970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604122, 30.806211, 26.223358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527870, 30.438589, 26.361338>,  <33.482117, 30.218016, 26.444126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527870, 30.438589, 26.361338>,  <33.604122, 30.806211, 26.223358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527870, 30.438589, 26.361338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207540, -0.381185, -0.900902,
		0.959472, -0.100150, 0.263408,
		-0.190633, -0.919058, 0.344951,
		33.470680, 30.162872, 26.464823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028473, 30.461727, 25.845270>,  <33.604122, 30.806211, 26.223358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028473, 30.461727, 25.845270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758926, 30.211555, 26.002619>,  <33.597198, 30.061453, 26.097027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758926, 30.211555, 26.002619>,  <34.028473, 30.461727, 25.845270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758926, 30.211555, 26.002619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037469, -0.502796, -0.863593,
		0.737900, -0.596688, 0.315385,
		-0.673869, -0.625428, 0.393371,
		33.556767, 30.023928, 26.120630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.105862, 25.407225, 28.178850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.131237, 25.805120, 28.146681>,  <32.146461, 26.043858, 28.127378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.131237, 25.805120, 28.146681>,  <32.105862, 25.407225, 28.178850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131237, 25.805120, 28.146681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140210, 0.070905, 0.987580,
		0.988088, -0.073924, -0.134974,
		0.063435, 0.994740, -0.080426,
		32.150269, 26.103542, 28.122553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698387, 25.551470, 28.518799>,  <32.105862, 25.407225, 28.178850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698387, 25.551470, 28.518799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479378, 25.885838, 28.503536>,  <32.347973, 26.086458, 28.494379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479378, 25.885838, 28.503536>,  <32.698387, 25.551470, 28.518799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479378, 25.885838, 28.503536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190946, 0.169206, 0.966907,
		0.814711, 0.522121, -0.252260,
		-0.547527, 0.835918, -0.038156,
		32.315121, 26.136614, 28.492090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970997, 26.006861, 28.961578>,  <32.698387, 25.551470, 28.518799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970997, 26.006861, 28.961578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.619225, 26.195892, 28.938730>,  <32.408161, 26.309311, 28.925022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.619225, 26.195892, 28.938730>,  <32.970997, 26.006861, 28.961578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619225, 26.195892, 28.938730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129100, 0.352281, 0.926947,
		0.458178, 0.807815, -0.370819,
		-0.879435, 0.472580, -0.057119,
		32.355392, 26.337666, 28.921595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041924, 26.698748, 29.287132>,  <32.970997, 26.006861, 28.961578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041924, 26.698748, 29.287132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.648434, 26.627151, 29.293394>,  <32.412338, 26.584194, 29.297152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.648434, 26.627151, 29.293394>,  <33.041924, 26.698748, 29.287132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648434, 26.627151, 29.293394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075693, 0.491857, 0.867380,
		-0.162951, 0.852080, -0.497400,
		-0.983726, -0.178990, 0.015653,
		32.353317, 26.573454, 29.298090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709126, 27.329185, 29.411097>,  <33.041924, 26.698748, 29.287132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709126, 27.329185, 29.411097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443916, 27.052452, 29.525478>,  <32.284790, 26.886412, 29.594107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443916, 27.052452, 29.525478>,  <32.709126, 27.329185, 29.411097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443916, 27.052452, 29.525478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132300, 0.484259, 0.864864,
		-0.736819, 0.535590, -0.412603,
		-0.663019, -0.691836, 0.285953,
		32.245010, 26.844902, 29.611263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092731, 27.634748, 29.548250>,  <32.709126, 27.329185, 29.411097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092731, 27.634748, 29.548250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.092194, 27.285839, 29.743858>,  <32.091869, 27.076494, 29.861223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.092194, 27.285839, 29.743858>,  <32.092731, 27.634748, 29.548250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092194, 27.285839, 29.743858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095004, 0.486920, 0.868264,
		-0.995476, -0.045288, -0.083526,
		-0.001349, -0.872272, 0.489019,
		32.091789, 27.024158, 29.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703060, 27.743076, 30.052212>,  <32.092731, 27.634748, 29.548250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703060, 27.743076, 30.052212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.862314, 27.405478, 30.195963>,  <31.957867, 27.202917, 30.282213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.862314, 27.405478, 30.195963>,  <31.703060, 27.743076, 30.052212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862314, 27.405478, 30.195963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025957, 0.401976, 0.915282,
		-0.916959, -0.355079, 0.181949,
		0.398136, -0.843999, 0.359379,
		31.981754, 27.152277, 30.303776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326267, 27.643885, 30.609646>,  <31.703060, 27.743076, 30.052212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326267, 27.643885, 30.609646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653500, 27.418358, 30.654997>,  <31.849838, 27.283043, 30.682207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653500, 27.418358, 30.654997>,  <31.326267, 27.643885, 30.609646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653500, 27.418358, 30.654997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082527, 0.310193, 0.947085,
		-0.569150, -0.765436, 0.300293,
		0.818081, -0.563816, 0.113377,
		31.898924, 27.249212, 30.689011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185364, 27.160242, 31.201504>,  <31.326267, 27.643885, 30.609646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185364, 27.160242, 31.201504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575296, 27.234289, 31.151804>,  <31.809256, 27.278717, 31.121984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575296, 27.234289, 31.151804>,  <31.185364, 27.160242, 31.201504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575296, 27.234289, 31.151804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058119, 0.327031, 0.943225,
		0.215239, -0.926705, 0.308041,
		0.974830, 0.185116, -0.124248,
		31.867746, 27.289824, 31.114529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440527, 27.180899, 31.862757>,  <31.185364, 27.160242, 31.201504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440527, 27.180899, 31.862757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.761765, 27.324560, 31.672577>,  <31.954506, 27.410757, 31.558468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.761765, 27.324560, 31.672577>,  <31.440527, 27.180899, 31.862757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761765, 27.324560, 31.672577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244932, 0.528421, 0.812883,
		0.543205, -0.769265, 0.336392,
		0.803080, 0.359169, -0.475459,
		32.002693, 27.432306, 31.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051380, 27.118147, 32.415577>,  <31.440527, 27.180899, 31.862757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051380, 27.118147, 32.415577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.182751, 27.368795, 32.132881>,  <32.261574, 27.519184, 31.963264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.182751, 27.368795, 32.132881>,  <32.051380, 27.118147, 32.415577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182751, 27.368795, 32.132881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210110, 0.681029, 0.701465,
		0.920864, -0.378872, 0.092008,
		0.328425, 0.626622, -0.706740,
		32.281277, 27.556782, 31.920858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724731, 27.263742, 32.528557>,  <32.051380, 27.118147, 32.415577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724731, 27.263742, 32.528557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594891, 27.577955, 32.317814>,  <32.516987, 27.766483, 32.191368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594891, 27.577955, 32.317814>,  <32.724731, 27.263742, 32.528557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594891, 27.577955, 32.317814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309047, 0.614527, 0.725842,
		0.893936, 0.072789, -0.442244,
		-0.324605, 0.785530, -0.526853,
		32.497509, 27.813614, 32.159760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289928, 27.868565, 32.411301>,  <32.724731, 27.263742, 32.528557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289928, 27.868565, 32.411301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939491, 28.060122, 32.388969>,  <32.729229, 28.175055, 32.375572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939491, 28.060122, 32.388969>,  <33.289928, 27.868565, 32.411301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939491, 28.060122, 32.388969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319857, 0.663948, 0.675918,
		0.360756, 0.574314, -0.734859,
		-0.876097, 0.478891, -0.055825,
		32.676662, 28.203789, 32.372223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508060, 28.572466, 32.520027>,  <33.289928, 27.868565, 32.411301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508060, 28.572466, 32.520027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.112488, 28.545971, 32.573124>,  <32.875145, 28.530073, 32.604980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.112488, 28.545971, 32.573124>,  <33.508060, 28.572466, 32.520027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112488, 28.545971, 32.573124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066232, 0.603518, 0.794594,
		-0.132744, 0.794593, -0.592453,
		-0.988935, -0.066238, 0.132741,
		32.815807, 28.526100, 32.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064919, 29.003370, 32.244240>,  <33.508060, 28.572466, 32.520027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064919, 29.003370, 32.244240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432838, 28.948809, 32.391411>,  <34.653591, 28.916071, 32.479713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432838, 28.948809, 32.391411>,  <34.064919, 29.003370, 32.244240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432838, 28.948809, 32.391411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194022, -0.656895, -0.728590,
		0.341072, 0.741540, -0.577744,
		0.919797, -0.136406, 0.367924,
		34.708778, 28.907887, 32.501789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612465, 29.331961, 31.769245>,  <34.064919, 29.003370, 32.244240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612465, 29.331961, 31.769245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779068, 29.021009, 31.957800>,  <34.879028, 28.834438, 32.070934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779068, 29.021009, 31.957800>,  <34.612465, 29.331961, 31.769245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779068, 29.021009, 31.957800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164489, -0.445509, -0.880037,
		0.894129, 0.444079, -0.057687,
		0.416507, -0.777377, 0.471389,
		34.904018, 28.787796, 32.099216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162460, 29.164824, 31.439398>,  <34.612465, 29.331961, 31.769245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162460, 29.164824, 31.439398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084000, 28.827578, 31.639669>,  <35.036922, 28.625229, 31.759832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084000, 28.827578, 31.639669>,  <35.162460, 29.164824, 31.439398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084000, 28.827578, 31.639669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168935, -0.532019, -0.829709,
		0.965911, -0.078169, 0.246790,
		-0.196154, -0.843116, 0.500678,
		35.025154, 28.574642, 31.789873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471832, 28.770458, 31.061638>,  <35.162460, 29.164824, 31.439398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471832, 28.770458, 31.061638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235172, 28.532328, 31.279093>,  <35.093178, 28.389450, 31.409565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235172, 28.532328, 31.279093>,  <35.471832, 28.770458, 31.061638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235172, 28.532328, 31.279093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116326, -0.730307, -0.673142,
		0.797760, -0.335024, 0.501336,
		-0.591648, -0.595324, 0.543638,
		35.057678, 28.353731, 31.442184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833599, 28.080835, 31.073954>,  <35.471832, 28.770458, 31.061638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833599, 28.080835, 31.073954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447620, 27.998028, 31.138470>,  <35.216034, 27.948343, 31.177179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447620, 27.998028, 31.138470>,  <35.833599, 28.080835, 31.073954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447620, 27.998028, 31.138470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041330, -0.726803, -0.685602,
		0.259159, -0.654905, 0.709884,
		-0.964950, -0.207019, 0.161291,
		35.158134, 27.935923, 31.186857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768929, 27.340130, 31.189224>,  <35.833599, 28.080835, 31.073954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768929, 27.340130, 31.189224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405621, 27.465948, 31.078875>,  <35.187637, 27.541439, 31.012665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405621, 27.465948, 31.078875>,  <35.768929, 27.340130, 31.189224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405621, 27.465948, 31.078875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031829, -0.709416, -0.704071,
		-0.417173, -0.630705, 0.654353,
		-0.908270, 0.314547, -0.275875,
		35.133141, 27.560312, 30.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359127, 26.753445, 31.095776>,  <35.768929, 27.340130, 31.189224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359127, 26.753445, 31.095776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197872, 27.048803, 30.879534>,  <35.101120, 27.226019, 30.749788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197872, 27.048803, 30.879534>,  <35.359127, 26.753445, 31.095776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197872, 27.048803, 30.879534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030360, -0.601200, -0.798521,
		-0.914637, -0.305498, 0.264782,
		-0.403133, 0.738396, -0.540606,
		35.076931, 27.270323, 30.717352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989460, 26.388290, 30.723719>,  <35.359127, 26.753445, 31.095776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989460, 26.388290, 30.723719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007141, 26.734095, 30.523453>,  <35.017750, 26.941578, 30.403294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007141, 26.734095, 30.523453>,  <34.989460, 26.388290, 30.723719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007141, 26.734095, 30.523453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110754, -0.502305, -0.857568,
		-0.992864, -0.017546, -0.117950,
		0.044200, 0.864512, -0.500664,
		35.020401, 26.993448, 30.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412270, 26.335793, 30.124933>,  <34.989460, 26.388290, 30.723719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412270, 26.335793, 30.124933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670116, 26.624554, 30.024279>,  <34.824825, 26.797812, 29.963886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670116, 26.624554, 30.024279>,  <34.412270, 26.335793, 30.124933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670116, 26.624554, 30.024279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200477, -0.158013, -0.966871,
		-0.737751, 0.673710, 0.042867,
		0.644617, 0.721905, -0.251638,
		34.863503, 26.841125, 29.948788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997612, 26.644056, 29.659882>,  <34.412270, 26.335793, 30.124933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997612, 26.644056, 29.659882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372391, 26.761076, 29.583420>,  <34.597260, 26.831287, 29.537542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372391, 26.761076, 29.583420>,  <33.997612, 26.644056, 29.659882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372391, 26.761076, 29.583420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095103, -0.312891, -0.945016,
		-0.336274, 0.903612, -0.265341,
		0.936950, 0.292549, -0.191153,
		34.653477, 26.848841, 29.526073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920464, 26.962193, 29.000338>,  <33.997612, 26.644056, 29.659882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920464, 26.962193, 29.000338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309639, 26.879047, 29.040705>,  <34.543144, 26.829161, 29.064924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309639, 26.879047, 29.040705>,  <33.920464, 26.962193, 29.000338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309639, 26.879047, 29.040705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095730, -0.034889, -0.994796,
		0.210302, 0.977535, -0.014046,
		0.972938, -0.207863, 0.100916,
		34.601521, 26.816689, 29.070980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200207, 27.424236, 28.515720>,  <33.920464, 26.962193, 29.000338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200207, 27.424236, 28.515720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475807, 27.144314, 28.591145>,  <34.641167, 26.976360, 28.636400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475807, 27.144314, 28.591145>,  <34.200207, 27.424236, 28.515720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475807, 27.144314, 28.591145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078500, -0.186583, -0.979298,
		0.720499, 0.689537, -0.073621,
		0.688998, -0.699804, 0.188561,
		34.682507, 26.934372, 28.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793831, 27.577902, 28.135235>,  <34.200207, 27.424236, 28.515720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793831, 27.577902, 28.135235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806629, 27.189087, 28.228289>,  <34.814308, 26.955797, 28.284121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806629, 27.189087, 28.228289>,  <34.793831, 27.577902, 28.135235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806629, 27.189087, 28.228289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170518, -0.224035, -0.959548,
		0.984835, 0.070367, 0.158583,
		0.031992, -0.972037, 0.232637,
		34.816227, 26.897476, 28.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283581, 27.426256, 27.780428>,  <34.793831, 27.577902, 28.135235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283581, 27.426256, 27.780428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112114, 27.070255, 27.842567>,  <35.009232, 26.856655, 27.879852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112114, 27.070255, 27.842567>,  <35.283581, 27.426256, 27.780428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112114, 27.070255, 27.842567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090292, -0.213293, -0.972807,
		0.898937, -0.402988, 0.171793,
		-0.428672, -0.890004, 0.155350,
		34.983513, 26.803253, 27.889172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043804, 27.397898, 27.695145>,  <35.283581, 27.426256, 27.780428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043804, 27.397898, 27.695145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 27.620111, 27.487915>,  <36.460041, 27.753439, 27.363577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 27.620111, 27.487915>,  <36.043804, 27.397898, 27.695145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303951, 27.620111, 27.487915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218731, 0.516175, 0.828082,
		0.727443, -0.651880, 0.214193,
		0.650371, 0.555533, -0.518075,
		36.499062, 27.786772, 27.332493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726944, 27.446220, 28.071886>,  <36.043804, 27.397898, 27.695145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726944, 27.446220, 28.071886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713177, 27.754271, 27.817101>,  <36.704914, 27.939100, 27.664230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713177, 27.754271, 27.817101>,  <36.726944, 27.446220, 28.071886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713177, 27.754271, 27.817101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438996, 0.584214, 0.682625,
		0.897829, -0.256126, -0.358192,
		-0.034423, 0.770126, -0.636963,
		36.702850, 27.985308, 27.626011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374287, 27.710714, 28.041693>,  <36.726944, 27.446220, 28.071886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374287, 27.710714, 28.041693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156376, 28.028156, 27.933315>,  <37.025631, 28.218620, 27.868288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156376, 28.028156, 27.933315>,  <37.374287, 27.710714, 28.041693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156376, 28.028156, 27.933315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423791, 0.539351, 0.727668,
		0.723614, 0.281594, -0.630149,
		-0.544778, 0.793603, -0.270945,
		36.992943, 28.266237, 27.852032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872749, 28.174902, 28.164825>,  <37.374287, 27.710714, 28.041693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872749, 28.174902, 28.164825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526699, 28.374866, 28.148632>,  <37.319069, 28.494846, 28.138916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526699, 28.374866, 28.148632>,  <37.872749, 28.174902, 28.164825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526699, 28.374866, 28.148632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313288, 0.601661, 0.734748,
		0.391666, 0.622969, -0.677131,
		-0.865129, 0.499913, -0.040482,
		37.267159, 28.524841, 28.136488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038918, 28.826321, 28.261604>,  <37.872749, 28.174902, 28.164825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038918, 28.826321, 28.261604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651150, 28.821821, 28.359671>,  <37.418491, 28.819120, 28.418510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651150, 28.821821, 28.359671>,  <38.038918, 28.826321, 28.261604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651150, 28.821821, 28.359671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211840, 0.466041, 0.859028,
		-0.123921, 0.884692, -0.449404,
		-0.969416, -0.011250, 0.245166,
		37.360325, 28.818447, 28.433220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917885, 29.537264, 28.496811>,  <38.038918, 28.826321, 28.261604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917885, 29.537264, 28.496811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639069, 29.288021, 28.638723>,  <37.471779, 29.138475, 28.723871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639069, 29.288021, 28.638723>,  <37.917885, 29.537264, 28.496811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639069, 29.288021, 28.638723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150004, 0.357121, 0.921934,
		-0.701162, 0.695848, -0.155461,
		-0.697044, -0.623106, 0.354780,
		37.429955, 29.101089, 28.745157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564339, 29.996691, 28.896450>,  <37.917885, 29.537264, 28.496811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564339, 29.996691, 28.896450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415066, 29.646856, 29.020279>,  <37.325504, 29.436954, 29.094576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415066, 29.646856, 29.020279>,  <37.564339, 29.996691, 28.896450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415066, 29.646856, 29.020279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087930, 0.298833, 0.950246,
		-0.923583, 0.381833, -0.034616,
		-0.373179, -0.874587, 0.309572,
		37.303112, 29.384480, 29.113150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017906, 30.100706, 29.324415>,  <37.564339, 29.996691, 28.896450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017906, 30.100706, 29.324415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156868, 29.738918, 29.423407>,  <37.240246, 29.521847, 29.482801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156868, 29.738918, 29.423407>,  <37.017906, 30.100706, 29.324415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156868, 29.738918, 29.423407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101147, 0.298522, 0.949028,
		-0.932244, -0.304666, 0.195193,
		0.347406, -0.904468, 0.247480,
		37.261089, 29.467577, 29.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672436, 29.802412, 29.914194>,  <37.017906, 30.100706, 29.324415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672436, 29.802412, 29.914194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017857, 29.600863, 29.922169>,  <37.225109, 29.479933, 29.926952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017857, 29.600863, 29.922169>,  <36.672436, 29.802412, 29.914194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017857, 29.600863, 29.922169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046530, 0.118983, 0.991805,
		-0.502116, -0.855544, 0.126192,
		0.863548, -0.503873, 0.019935,
		37.276920, 29.449701, 29.928150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634506, 29.352640, 30.514252>,  <36.672436, 29.802412, 29.914194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634506, 29.352640, 30.514252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026016, 29.374474, 30.435244>,  <37.260921, 29.387573, 30.387838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026016, 29.374474, 30.435244>,  <36.634506, 29.352640, 30.514252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026016, 29.374474, 30.435244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194268, 0.059619, 0.979135,
		0.065268, -0.996725, 0.047741,
		0.978775, 0.054632, -0.197523,
		37.319649, 29.390850, 30.375988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827621, 29.068657, 30.986437>,  <36.634506, 29.352640, 30.514252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827621, 29.068657, 30.986437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164074, 29.252907, 30.873072>,  <37.365944, 29.363457, 30.805052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164074, 29.252907, 30.873072>,  <36.827621, 29.068657, 30.986437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164074, 29.252907, 30.873072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233194, 0.163926, 0.958514,
		0.487976, -0.872325, 0.030467,
		0.841130, 0.460627, -0.283413,
		37.416412, 29.391094, 30.788048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343708, 28.863884, 31.379871>,  <36.827621, 29.068657, 30.986437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343708, 28.863884, 31.379871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488083, 29.215263, 31.254618>,  <37.574707, 29.426090, 31.179464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488083, 29.215263, 31.254618>,  <37.343708, 28.863884, 31.379871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488083, 29.215263, 31.254618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201508, 0.254378, 0.945879,
		0.910560, -0.404502, -0.085200,
		0.360937, 0.878448, -0.313137,
		37.596363, 29.478798, 31.160677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926849, 28.990496, 31.737129>,  <37.343708, 28.863884, 31.379871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926849, 28.990496, 31.737129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820667, 29.353275, 31.606297>,  <37.756958, 29.570942, 31.527798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820667, 29.353275, 31.606297>,  <37.926849, 28.990496, 31.737129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820667, 29.353275, 31.606297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337369, 0.405184, 0.849711,
		0.903171, 0.115211, -0.413533,
		-0.265453, 0.906947, -0.327081,
		37.741032, 29.625359, 31.508173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507595, 29.493055, 31.832508>,  <37.926849, 28.990496, 31.737129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507595, 29.493055, 31.832508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161354, 29.692675, 31.816122>,  <37.953609, 29.812447, 31.806290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161354, 29.692675, 31.816122>,  <38.507595, 29.493055, 31.832508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161354, 29.692675, 31.816122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212056, 0.439467, 0.872869,
		0.453605, 0.746874, -0.486231,
		-0.865607, 0.499046, -0.040966,
		37.901672, 29.842388, 31.803833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.435944, 29.795727, 25.792519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057163, 29.680580, 25.849667>,  <33.829895, 29.611492, 25.883955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057163, 29.680580, 25.849667>,  <34.435944, 29.795727, 25.792519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057163, 29.680580, 25.849667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067813, -0.613543, -0.786744,
		0.314133, -0.735322, 0.600518,
		-0.946954, -0.287866, 0.142869,
		33.773079, 29.594221, 25.892527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416008, 29.047064, 25.841225>,  <34.435944, 29.795727, 25.792519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416008, 29.047064, 25.841225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048115, 29.164398, 25.736887>,  <33.827377, 29.234798, 25.674284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048115, 29.164398, 25.736887>,  <34.416008, 29.047064, 25.841225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048115, 29.164398, 25.736887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016956, -0.634200, -0.772983,
		-0.392174, -0.715362, 0.578322,
		-0.919735, 0.293338, -0.260846,
		33.772194, 29.252399, 25.658632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016045, 28.474810, 25.721746>,  <34.416008, 29.047064, 25.841225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016045, 28.474810, 25.721746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838539, 28.765310, 25.511745>,  <33.732037, 28.939611, 25.385744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838539, 28.765310, 25.511745>,  <34.016045, 28.474810, 25.721746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838539, 28.765310, 25.511745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182962, -0.500082, -0.846430,
		-0.877266, -0.471673, 0.089044,
		-0.443767, 0.726253, -0.525003,
		33.705410, 28.983187, 25.354244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460896, 28.199799, 25.291563>,  <34.016045, 28.474810, 25.721746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460896, 28.199799, 25.291563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575371, 28.548710, 25.132957>,  <33.644058, 28.758057, 25.037794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575371, 28.548710, 25.132957>,  <33.460896, 28.199799, 25.291563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575371, 28.548710, 25.132957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117891, -0.442734, -0.888869,
		-0.950892, 0.207642, -0.229541,
		0.286193, 0.872279, -0.396513,
		33.661228, 28.810394, 25.014004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267857, 28.095268, 24.604805>,  <33.460896, 28.199799, 25.291563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267857, 28.095268, 24.604805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495277, 28.421743, 24.563644>,  <33.631729, 28.617628, 24.538948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495277, 28.421743, 24.563644>,  <33.267857, 28.095268, 24.604805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495277, 28.421743, 24.563644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298708, -0.321370, -0.898607,
		-0.766503, 0.480164, -0.426516,
		0.568548, 0.816189, -0.102902,
		33.665840, 28.666599, 24.532774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049652, 28.503344, 23.982464>,  <33.267857, 28.095268, 24.604805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049652, 28.503344, 23.982464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430065, 28.599796, 24.059814>,  <33.658314, 28.657669, 24.106224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430065, 28.599796, 24.059814>,  <33.049652, 28.503344, 23.982464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430065, 28.599796, 24.059814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261029, -0.291492, -0.920270,
		-0.165541, 0.925682, -0.340161,
		0.951031, 0.241134, 0.193376,
		33.715374, 28.672136, 24.117826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241776, 28.762894, 23.362059>,  <33.049652, 28.503344, 23.982464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241776, 28.762894, 23.362059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603550, 28.740950, 23.531284>,  <33.820614, 28.727783, 23.632820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603550, 28.740950, 23.531284>,  <33.241776, 28.762894, 23.362059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603550, 28.740950, 23.531284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421347, -0.040392, -0.905999,
		0.066790, 0.997677, -0.013418,
		0.904436, -0.054858, 0.423066,
		33.874882, 28.724493, 23.658205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673473, 29.288385, 23.027109>,  <33.241776, 28.762894, 23.362059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673473, 29.288385, 23.027109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945236, 29.038841, 23.181614>,  <34.108295, 28.889114, 23.274317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945236, 29.038841, 23.181614>,  <33.673473, 29.288385, 23.027109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945236, 29.038841, 23.181614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471708, -0.031869, -0.881179,
		0.562043, 0.780885, 0.272628,
		0.679411, -0.623861, 0.386261,
		34.149059, 28.851683, 23.297493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357792, 29.648705, 22.987644>,  <33.673473, 29.288385, 23.027109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357792, 29.648705, 22.987644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385658, 29.249727, 22.981270>,  <34.402378, 29.010342, 22.977446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385658, 29.249727, 22.981270>,  <34.357792, 29.648705, 22.987644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385658, 29.249727, 22.981270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368876, 0.040601, -0.928591,
		0.926864, 0.058813, 0.370762,
		0.069667, -0.997443, -0.015937,
		34.406559, 28.950495, 22.976488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037968, 29.494543, 22.788767>,  <34.357792, 29.648705, 22.987644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037968, 29.494543, 22.788767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851719, 29.144663, 22.734959>,  <34.739971, 28.934734, 22.702673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851719, 29.144663, 22.734959>,  <35.037968, 29.494543, 22.788767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851719, 29.144663, 22.734959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271796, 0.003319, -0.962349,
		0.842214, -0.484653, 0.236194,
		-0.465621, -0.874700, -0.134522,
		34.712032, 28.882254, 22.694601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584209, 29.111547, 22.500938>,  <35.037968, 29.494543, 22.788767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584209, 29.111547, 22.500938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238319, 28.935162, 22.404772>,  <35.030785, 28.829330, 22.347073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238319, 28.935162, 22.404772>,  <35.584209, 29.111547, 22.500938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238319, 28.935162, 22.404772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287475, -0.042046, -0.956865,
		0.411836, -0.896538, 0.163125,
		-0.864725, -0.440966, -0.240416,
		34.978901, 28.802872, 22.332647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768841, 28.610401, 22.049576>,  <35.584209, 29.111547, 22.500938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768841, 28.610401, 22.049576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.380367, 28.682030, 21.986664>,  <35.147282, 28.725006, 21.948917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.380367, 28.682030, 21.986664>,  <35.768841, 28.610401, 22.049576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380367, 28.682030, 21.986664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187675, 0.167828, -0.967787,
		-0.146908, -0.969416, -0.196599,
		-0.971183, 0.179072, -0.157280,
		35.089012, 28.735750, 21.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458733, 28.327312, 21.388367>,  <35.768841, 28.610401, 22.049576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458733, 28.327312, 21.388367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.267975, 28.667740, 21.476236>,  <35.153519, 28.871996, 21.528959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.267975, 28.667740, 21.476236>,  <35.458733, 28.327312, 21.388367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267975, 28.667740, 21.476236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199991, 0.348436, -0.915749,
		-0.855906, -0.392783, -0.336373,
		-0.476894, 0.851067, 0.219675,
		35.124905, 28.923059, 21.542139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873451, 27.789724, 21.565491>,  <35.458733, 28.327312, 21.388367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873451, 27.789724, 21.565491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800426, 27.396830, 21.548151>,  <35.756611, 27.161093, 21.537748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800426, 27.396830, 21.548151>,  <35.873451, 27.789724, 21.565491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800426, 27.396830, 21.548151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059839, -0.032906, 0.997666,
		-0.981372, 0.184728, -0.052769,
		-0.182560, -0.982239, -0.043347,
		35.745659, 27.102158, 21.535147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387520, 27.779404, 22.104271>,  <35.873451, 27.789724, 21.565491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387520, 27.779404, 22.104271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578335, 27.438377, 22.018883>,  <35.692822, 27.233761, 21.967649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578335, 27.438377, 22.018883>,  <35.387520, 27.779404, 22.104271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578335, 27.438377, 22.018883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157594, -0.155976, 0.975108,
		-0.864640, -0.498802, 0.059953,
		0.477035, -0.852565, -0.213471,
		35.721447, 27.182608, 21.954842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171307, 27.208769, 22.556847>,  <35.387520, 27.779404, 22.104271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171307, 27.208769, 22.556847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523891, 27.069025, 22.429743>,  <35.735443, 26.985180, 22.353481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523891, 27.069025, 22.429743>,  <35.171307, 27.208769, 22.556847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523891, 27.069025, 22.429743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233937, -0.261480, 0.936430,
		-0.410237, -0.899765, -0.148758,
		0.881464, -0.349359, -0.317758,
		35.788330, 26.964218, 22.334415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164497, 26.611179, 22.907202>,  <35.171307, 27.208769, 22.556847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164497, 26.611179, 22.907202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539780, 26.710182, 22.810452>,  <35.764950, 26.769583, 22.752401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539780, 26.710182, 22.810452>,  <35.164497, 26.611179, 22.907202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539780, 26.710182, 22.810452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306741, -0.271151, 0.912353,
		0.160227, -0.930171, -0.330317,
		0.938209, 0.247505, -0.241875,
		35.821243, 26.784433, 22.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574482, 26.155354, 23.270067>,  <35.164497, 26.611179, 22.907202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574482, 26.155354, 23.270067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833889, 26.440235, 23.162594>,  <35.989532, 26.611164, 23.098110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833889, 26.440235, 23.162594>,  <35.574482, 26.155354, 23.270067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833889, 26.440235, 23.162594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438717, -0.061261, 0.896534,
		0.622054, -0.699295, -0.352184,
		0.648518, 0.712203, -0.268685,
		36.028446, 26.653896, 23.081987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124451, 25.870125, 23.497980>,  <35.574482, 26.155354, 23.270067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124451, 25.870125, 23.497980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222141, 26.256472, 23.463434>,  <36.280754, 26.488279, 23.442707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222141, 26.256472, 23.463434>,  <36.124451, 25.870125, 23.497980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222141, 26.256472, 23.463434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369120, -0.010235, 0.929325,
		0.896719, -0.258842, -0.359020,
		0.244223, 0.965865, -0.086366,
		36.295406, 26.546230, 23.437525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806057, 25.986238, 23.656303>,  <36.124451, 25.870125, 23.497980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806057, 25.986238, 23.656303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657223, 26.354204, 23.705791>,  <36.567921, 26.574984, 23.735483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657223, 26.354204, 23.705791>,  <36.806057, 25.986238, 23.656303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657223, 26.354204, 23.705791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440418, 0.057646, 0.895940,
		0.817057, 0.387856, -0.426597,
		-0.372087, 0.919915, 0.123719,
		36.545597, 26.630178, 23.742907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236416, 26.225800, 24.148239>,  <36.806057, 25.986238, 23.656303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236416, 26.225800, 24.148239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934921, 26.487520, 24.172791>,  <36.754025, 26.644552, 24.187521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934921, 26.487520, 24.172791>,  <37.236416, 26.225800, 24.148239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934921, 26.487520, 24.172791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241914, 0.189412, 0.951631,
		0.611027, 0.732130, -0.301051,
		-0.753740, 0.654301, 0.061376,
		36.708801, 26.683811, 24.191204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529263, 26.791401, 24.498425>,  <37.236416, 26.225800, 24.148239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529263, 26.791401, 24.498425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134781, 26.850433, 24.528404>,  <36.898090, 26.885853, 24.546392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134781, 26.850433, 24.528404>,  <37.529263, 26.791401, 24.498425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134781, 26.850433, 24.528404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115283, 0.287493, 0.950819,
		0.118774, 0.946344, -0.300541,
		-0.986206, 0.147580, 0.074951,
		36.838921, 26.894707, 24.550890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457745, 27.323177, 24.951097>,  <37.529263, 26.791401, 24.498425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457745, 27.323177, 24.951097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.068851, 27.230429, 24.938452>,  <36.835514, 27.174780, 24.930864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.068851, 27.230429, 24.938452>,  <37.457745, 27.323177, 24.951097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068851, 27.230429, 24.938452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142765, 0.480650, 0.865213,
		-0.185424, 0.845702, -0.500406,
		-0.972233, -0.231872, -0.031613,
		36.777184, 27.160868, 24.928968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009438, 27.888554, 24.888552>,  <37.457745, 27.323177, 24.951097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009438, 27.888554, 24.888552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.789936, 27.605858, 25.067165>,  <36.658237, 27.436241, 25.174334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.789936, 27.605858, 25.067165>,  <37.009438, 27.888554, 24.888552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789936, 27.605858, 25.067165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028160, 0.549465, 0.835042,
		-0.835513, 0.445654, -0.321421,
		-0.548749, -0.706739, 0.446535,
		36.625313, 27.393837, 25.201126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467487, 28.209631, 25.172497>,  <37.009438, 27.888554, 24.888552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467487, 28.209631, 25.172497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484154, 27.869455, 25.382265>,  <36.494156, 27.665350, 25.508125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484154, 27.869455, 25.382265>,  <36.467487, 28.209631, 25.172497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484154, 27.869455, 25.382265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092039, 0.519375, 0.849575,
		-0.994883, -0.083669, -0.056631,
		0.041670, -0.850441, 0.524418,
		36.496655, 27.614323, 25.539591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968285, 28.297316, 25.865164>,  <36.467487, 28.209631, 25.172497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968285, 28.297316, 25.865164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201939, 27.979996, 25.933830>,  <36.342129, 27.789604, 25.975031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201939, 27.979996, 25.933830>,  <35.968285, 28.297316, 25.865164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201939, 27.979996, 25.933830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056306, 0.171388, 0.983593,
		-0.809705, -0.584213, 0.055445,
		0.584130, -0.793298, 0.171668,
		36.377178, 27.742006, 25.985331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662453, 27.879513, 26.323294>,  <35.968285, 28.297316, 25.865164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662453, 27.879513, 26.323294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048569, 27.792313, 26.380833>,  <36.280239, 27.739992, 26.415356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048569, 27.792313, 26.380833>,  <35.662453, 27.879513, 26.323294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048569, 27.792313, 26.380833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102378, 0.190871, 0.976262,
		-0.240284, -0.957102, 0.161927,
		0.965289, -0.218002, 0.143849,
		36.338154, 27.726912, 26.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676197, 27.543547, 26.995304>,  <35.662453, 27.879513, 26.323294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676197, 27.543547, 26.995304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054401, 27.644844, 26.913452>,  <36.281326, 27.705624, 26.864342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054401, 27.644844, 26.913452>,  <35.676197, 27.543547, 26.995304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054401, 27.644844, 26.913452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121118, 0.309810, 0.943053,
		0.302205, -0.916456, 0.262259,
		0.945517, 0.253231, -0.204626,
		36.338055, 27.720818, 26.852062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597778, 26.849279, 27.157650>,  <35.676197, 27.543547, 26.995304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597778, 26.849279, 27.157650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245548, 26.711138, 27.287458>,  <35.034210, 26.628252, 27.365343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245548, 26.711138, 27.287458>,  <35.597778, 26.849279, 27.157650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245548, 26.711138, 27.287458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299216, -0.125857, -0.945849,
		0.367496, -0.929995, 0.007492,
		-0.880577, -0.345355, 0.324521,
		34.981377, 26.607531, 27.384815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490067, 26.280123, 26.845545>,  <35.597778, 26.849279, 27.157650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490067, 26.280123, 26.845545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112442, 26.353254, 26.955328>,  <34.885868, 26.397133, 27.021198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112442, 26.353254, 26.955328>,  <35.490067, 26.280123, 26.845545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112442, 26.353254, 26.955328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321640, -0.326734, -0.888703,
		-0.072808, -0.927263, 0.367262,
		-0.944059, 0.182831, 0.274456,
		34.829224, 26.408104, 27.037664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066174, 25.641783, 26.644514>,  <35.490067, 26.280123, 26.845545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066174, 25.641783, 26.644514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817677, 25.954390, 26.667450>,  <34.668579, 26.141953, 26.681211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817677, 25.954390, 26.667450>,  <35.066174, 25.641783, 26.644514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817677, 25.954390, 26.667450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431285, -0.279912, -0.857696,
		-0.654254, -0.557567, 0.510951,
		-0.621244, 0.781517, 0.057337,
		34.631302, 26.188845, 26.684650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461845, 25.395853, 26.367451>,  <35.066174, 25.641783, 26.644514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461845, 25.395853, 26.367451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402542, 25.790731, 26.343897>,  <34.366959, 26.027658, 26.329765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402542, 25.790731, 26.343897>,  <34.461845, 25.395853, 26.367451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402542, 25.790731, 26.343897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576464, -0.134647, -0.805953,
		-0.803560, -0.085546, 0.589044,
		-0.148259, 0.987194, -0.058883,
		34.358063, 26.086889, 26.326233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763481, 25.408447, 26.197309>,  <34.461845, 25.395853, 26.367451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763481, 25.408447, 26.197309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938660, 25.749264, 26.082607>,  <34.043766, 25.953753, 26.013786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938660, 25.749264, 26.082607>,  <33.763481, 25.408447, 26.197309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938660, 25.749264, 26.082607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503094, -0.032067, -0.863637,
		-0.745047, 0.522495, 0.414612,
		0.437951, 0.852039, -0.286755,
		34.070045, 26.004875, 25.996580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224606, 25.789255, 25.775320>,  <33.763481, 25.408447, 26.197309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224606, 25.789255, 25.775320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576145, 25.950165, 25.672712>,  <33.787067, 26.046711, 25.611147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576145, 25.950165, 25.672712>,  <33.224606, 25.789255, 25.775320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576145, 25.950165, 25.672712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342859, 0.158622, -0.925898,
		-0.331775, 0.901673, 0.277328,
		0.878848, 0.402274, -0.256520,
		33.839798, 26.070847, 25.595757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108082, 26.303099, 25.303312>,  <33.224606, 25.789255, 25.775320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108082, 26.303099, 25.303312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487808, 26.208790, 25.220156>,  <33.715645, 26.152205, 25.170261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487808, 26.208790, 25.220156>,  <33.108082, 26.303099, 25.303312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487808, 26.208790, 25.220156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242532, -0.128669, -0.961573,
		0.199961, 0.963253, -0.179329,
		0.949312, -0.235770, -0.207891,
		33.772602, 26.138060, 25.157789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863392, 27.076866, 25.307501>,  <33.108082, 26.303099, 25.303312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863392, 27.076866, 25.307501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469784, 27.145302, 25.327265>,  <32.233620, 27.186363, 25.339123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469784, 27.145302, 25.327265>,  <32.863392, 27.076866, 25.307501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469784, 27.145302, 25.327265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021580, -0.389987, 0.920568,
		0.176768, 0.904787, 0.387445,
		-0.984016, 0.171088, 0.049411,
		32.174580, 27.196629, 25.342089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706116, 27.571917, 25.800562>,  <32.863392, 27.076866, 25.307501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706116, 27.571917, 25.800562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380695, 27.344625, 25.751156>,  <32.185444, 27.208250, 25.721512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380695, 27.344625, 25.751156>,  <32.706116, 27.571917, 25.800562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380695, 27.344625, 25.751156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062803, -0.125306, 0.990128,
		-0.578095, 0.813275, 0.066257,
		-0.813549, -0.568227, -0.123515,
		32.136631, 27.174158, 25.714102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291912, 27.732008, 26.343592>,  <32.706116, 27.571917, 25.800562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291912, 27.732008, 26.343592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119514, 27.392689, 26.220543>,  <32.016075, 27.189096, 26.146713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119514, 27.392689, 26.220543>,  <32.291912, 27.732008, 26.343592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119514, 27.392689, 26.220543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125882, -0.281051, 0.951401,
		-0.893529, 0.448776, 0.014346,
		-0.430998, -0.848299, -0.307620,
		31.990215, 27.138199, 26.128258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551426, 27.709023, 26.601954>,  <32.291912, 27.732008, 26.343592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551426, 27.709023, 26.601954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651123, 27.327465, 26.535057>,  <31.710941, 27.098532, 26.494919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651123, 27.327465, 26.535057>,  <31.551426, 27.709023, 26.601954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651123, 27.327465, 26.535057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212434, -0.222335, 0.951545,
		-0.944855, -0.201637, -0.258054,
		0.249241, -0.953892, -0.167240,
		31.725895, 27.041298, 26.484884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167778, 27.302435, 27.179291>,  <31.551426, 27.709023, 26.601954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167778, 27.302435, 27.179291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442362, 27.047728, 27.038834>,  <31.607111, 26.894903, 26.954559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442362, 27.047728, 27.038834>,  <31.167778, 27.302435, 27.179291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442362, 27.047728, 27.038834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017328, -0.497075, 0.867534,
		-0.726964, -0.589441, -0.352255,
		0.686457, -0.636770, -0.351142,
		31.648298, 26.856697, 26.933491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844099, 26.684361, 27.280714>,  <31.167778, 27.302435, 27.179291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844099, 26.684361, 27.280714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239363, 26.622995, 27.279575>,  <31.476521, 26.586176, 27.278893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239363, 26.622995, 27.279575>,  <30.844099, 26.684361, 27.280714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239363, 26.622995, 27.279575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047532, -0.323698, 0.944966,
		-0.145891, -0.933640, -0.327157,
		0.988158, -0.153412, -0.002847,
		31.535810, 26.576971, 27.278721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971159, 25.995178, 27.521332>,  <30.844099, 26.684361, 27.280714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971159, 25.995178, 27.521332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300613, 26.210039, 27.594095>,  <31.498285, 26.338955, 27.637753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300613, 26.210039, 27.594095>,  <30.971159, 25.995178, 27.521332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300613, 26.210039, 27.594095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045322, -0.382076, 0.923019,
		0.565305, -0.751987, -0.339036,
		0.823636, 0.537153, 0.181908,
		31.547705, 26.371185, 27.648668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.705908, 30.167704, 20.530756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015053, 30.000086, 20.721371>,  <32.200539, 29.899515, 20.835739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015053, 30.000086, 20.721371>,  <31.705908, 30.167704, 20.530756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015053, 30.000086, 20.721371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050026, 0.708382, 0.704054,
		-0.632602, -0.567975, 0.526517,
		0.772860, -0.419046, 0.476537,
		32.246910, 29.874372, 20.864332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467562, 30.168949, 21.243937>,  <31.705908, 30.167704, 20.530756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467562, 30.168949, 21.243937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861614, 30.106546, 21.272730>,  <32.098045, 30.069105, 21.290007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861614, 30.106546, 21.272730>,  <31.467562, 30.168949, 21.243937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861614, 30.106546, 21.272730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039265, 0.612299, 0.789651,
		-0.167266, -0.775082, 0.609320,
		0.985130, -0.156007, 0.071983,
		32.157154, 30.059744, 21.294325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655788, 29.776588, 21.929842>,  <31.467562, 30.168949, 21.243937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655788, 29.776588, 21.929842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980886, 29.979748, 21.815660>,  <32.175945, 30.101643, 21.747152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980886, 29.979748, 21.815660>,  <31.655788, 29.776588, 21.929842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980886, 29.979748, 21.815660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041060, 0.538664, 0.841519,
		0.581170, -0.672220, 0.458651,
		0.812745, 0.507899, -0.285454,
		32.224712, 30.132116, 21.730024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027256, 29.863724, 22.555660>,  <31.655788, 29.776588, 21.929842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027256, 29.863724, 22.555660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213448, 30.104946, 22.296537>,  <32.325165, 30.249680, 22.141064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213448, 30.104946, 22.296537>,  <32.027256, 29.863724, 22.555660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213448, 30.104946, 22.296537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122946, 0.680782, 0.722094,
		0.876477, -0.415767, 0.242748,
		0.465481, 0.603054, -0.647806,
		32.353092, 30.285862, 22.102196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626999, 29.999800, 22.945486>,  <32.027256, 29.863724, 22.555660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626999, 29.999800, 22.945486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533947, 30.271036, 22.666609>,  <32.478115, 30.433779, 22.499283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533947, 30.271036, 22.666609>,  <32.626999, 29.999800, 22.945486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533947, 30.271036, 22.666609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074823, 0.727211, 0.682324,
		0.969684, 0.106561, -0.219906,
		-0.232627, 0.678092, -0.697191,
		32.464157, 30.474464, 22.457451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117397, 30.640604, 23.108980>,  <32.626999, 29.999800, 22.945486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117397, 30.640604, 23.108980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822708, 30.732353, 22.854538>,  <32.645897, 30.787403, 22.701872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822708, 30.732353, 22.854538>,  <33.117397, 30.640604, 23.108980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822708, 30.732353, 22.854538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209989, 0.816595, 0.537658,
		0.642766, 0.529679, -0.553436,
		-0.736720, 0.229373, -0.636107,
		32.601692, 30.801165, 22.663706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198059, 31.337337, 22.845154>,  <33.117397, 30.640604, 23.108980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198059, 31.337337, 22.845154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802666, 31.280197, 22.825201>,  <32.565430, 31.245913, 22.813229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802666, 31.280197, 22.825201>,  <33.198059, 31.337337, 22.845154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802666, 31.280197, 22.825201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147805, 0.841080, 0.520326,
		-0.032371, 0.521708, -0.852510,
		-0.988487, -0.142849, -0.049884,
		32.506119, 31.237343, 22.810236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013592, 32.021603, 22.823738>,  <33.198059, 31.337337, 22.845154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013592, 32.021603, 22.823738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703285, 31.791439, 22.927347>,  <32.517101, 31.653341, 22.989513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703285, 31.791439, 22.927347>,  <33.013592, 32.021603, 22.823738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703285, 31.791439, 22.927347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347881, 0.732459, 0.585220,
		-0.526463, 0.363885, -0.768391,
		-0.775768, -0.575405, 0.259024,
		32.470554, 31.618818, 23.005054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529629, 32.500519, 23.095694>,  <33.013592, 32.021603, 22.823738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529629, 32.500519, 23.095694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.369389, 32.159557, 23.230116>,  <32.273247, 31.954981, 23.310770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.369389, 32.159557, 23.230116>,  <32.529629, 32.500519, 23.095694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369389, 32.159557, 23.230116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450990, 0.502703, 0.737494,
		-0.797577, 0.143881, -0.585807,
		-0.400598, -0.852401, 0.336055,
		32.249210, 31.903837, 23.330933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759296, 32.625603, 23.398893>,  <32.529629, 32.500519, 23.095694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759296, 32.625603, 23.398893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.900335, 32.287525, 23.559553>,  <31.984959, 32.084679, 23.655949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.900335, 32.287525, 23.559553>,  <31.759296, 32.625603, 23.398893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900335, 32.287525, 23.559553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247141, 0.329868, 0.911103,
		-0.902550, -0.420516, -0.092572,
		0.352597, -0.845195, 0.401649,
		32.006115, 32.033966, 23.680048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198702, 32.363731, 23.876625>,  <31.759296, 32.625603, 23.398893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198702, 32.363731, 23.876625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.555098, 32.212528, 23.977222>,  <31.768934, 32.121807, 24.037580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.555098, 32.212528, 23.977222>,  <31.198702, 32.363731, 23.876625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555098, 32.212528, 23.977222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000157, 0.553660, 0.832743,
		-0.454029, -0.742002, 0.493245,
		0.890987, -0.378012, 0.251495,
		31.822393, 32.099125, 24.052671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120317, 32.028088, 24.528330>,  <31.198702, 32.363731, 23.876625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120317, 32.028088, 24.528330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514912, 32.093594, 24.530470>,  <31.751667, 32.132896, 24.531754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514912, 32.093594, 24.530470>,  <31.120317, 32.028088, 24.528330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514912, 32.093594, 24.530470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093969, 0.538696, 0.837243,
		0.134233, -0.826430, 0.546805,
		0.986484, 0.163768, 0.005349,
		31.810858, 32.142723, 24.532074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809349, 31.490580, 25.041698>,  <31.120317, 32.028088, 24.528330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809349, 31.490580, 25.041698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.424706, 31.382103, 25.058479>,  <30.193918, 31.317017, 25.068548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.424706, 31.382103, 25.058479>,  <30.809349, 31.490580, 25.041698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424706, 31.382103, 25.058479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112200, -0.528062, -0.841761,
		0.250435, -0.804739, 0.538218,
		-0.961610, -0.271194, 0.041954,
		30.136223, 31.300745, 25.071066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793251, 30.759235, 24.903708>,  <30.809349, 31.490580, 25.041698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793251, 30.759235, 24.903708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419216, 30.884983, 24.838247>,  <30.194796, 30.960432, 24.798971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419216, 30.884983, 24.838247>,  <30.793251, 30.759235, 24.903708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419216, 30.884983, 24.838247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073341, -0.623395, -0.778460,
		-0.346745, -0.715926, 0.605986,
		-0.935088, 0.314370, -0.163652,
		30.138689, 30.979294, 24.789152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499662, 30.192167, 24.593010>,  <30.793251, 30.759235, 24.903708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499662, 30.192167, 24.593010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226915, 30.467720, 24.494625>,  <30.063267, 30.633051, 24.435595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226915, 30.467720, 24.494625>,  <30.499662, 30.192167, 24.593010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226915, 30.467720, 24.494625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239165, -0.527740, -0.815040,
		-0.691271, -0.496924, 0.524606,
		-0.681869, 0.688881, -0.245964,
		30.022354, 30.674385, 24.420835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887503, 29.856506, 24.516411>,  <30.499662, 30.192167, 24.593010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887503, 29.856506, 24.516411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868378, 30.204008, 24.319239>,  <29.856903, 30.412508, 24.200935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868378, 30.204008, 24.319239>,  <29.887503, 29.856506, 24.516411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868378, 30.204008, 24.319239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286032, -0.484738, -0.826568,
		-0.957026, 0.101472, 0.271669,
		-0.047815, 0.868753, -0.492932,
		29.854033, 30.464634, 24.171360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209970, 29.914019, 24.156933>,  <29.887503, 29.856506, 24.516411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209970, 29.914019, 24.156933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447039, 30.176966, 23.970768>,  <29.589279, 30.334734, 23.859070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447039, 30.176966, 23.970768>,  <29.209970, 29.914019, 24.156933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447039, 30.176966, 23.970768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099881, -0.513389, -0.852324,
		-0.799226, 0.551635, -0.238613,
		0.592673, 0.657367, -0.465412,
		29.624840, 30.374176, 23.831144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828999, 30.003956, 23.645401>,  <29.209970, 29.914019, 24.156933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828999, 30.003956, 23.645401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210028, 30.081972, 23.551966>,  <29.438644, 30.128782, 23.495905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210028, 30.081972, 23.551966>,  <28.828999, 30.003956, 23.645401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210028, 30.081972, 23.551966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092366, -0.546072, -0.832630,
		-0.289955, 0.814717, -0.502158,
		0.952573, 0.195042, -0.233589,
		29.495800, 30.140486, 23.481890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833002, 30.315269, 22.933950>,  <28.828999, 30.003956, 23.645401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833002, 30.315269, 22.933950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203011, 30.187216, 23.015776>,  <29.425016, 30.110384, 23.064871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203011, 30.187216, 23.015776>,  <28.833002, 30.315269, 22.933950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203011, 30.187216, 23.015776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019015, -0.498767, -0.866527,
		0.379434, 0.805448, -0.455284,
		0.925023, -0.320133, 0.204565,
		29.480518, 30.091175, 23.077145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208363, 30.396364, 22.297926>,  <28.833002, 30.315269, 22.933950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208363, 30.396364, 22.297926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410080, 30.122591, 22.508541>,  <29.531111, 29.958328, 22.634911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410080, 30.122591, 22.508541>,  <29.208363, 30.396364, 22.297926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410080, 30.122591, 22.508541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040031, -0.590565, -0.805996,
		0.862605, 0.427536, -0.270419,
		0.504292, -0.684431, 0.526540,
		29.561367, 29.917261, 22.666502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790455, 30.191202, 21.890020>,  <29.208363, 30.396364, 22.297926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790455, 30.191202, 21.890020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785103, 29.903753, 22.168131>,  <29.781891, 29.731285, 22.334997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785103, 29.903753, 22.168131>,  <29.790455, 30.191202, 21.890020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785103, 29.903753, 22.168131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354474, -0.653586, -0.668710,
		0.934970, 0.237509, 0.263478,
		-0.013381, -0.718620, 0.695274,
		29.781088, 29.688168, 22.376713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353884, 29.785669, 21.775572>,  <29.790455, 30.191202, 21.890020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353884, 29.785669, 21.775572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109930, 29.552544, 21.990372>,  <29.963558, 29.412668, 22.119251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109930, 29.552544, 21.990372>,  <30.353884, 29.785669, 21.775572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109930, 29.552544, 21.990372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357856, -0.807128, -0.469557,
		0.707091, -0.094208, 0.700819,
		-0.609886, -0.582812, 0.537000,
		29.926964, 29.377701, 22.151472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748623, 29.265491, 21.753220>,  <30.353884, 29.785669, 21.775572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748623, 29.265491, 21.753220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378166, 29.134678, 21.828379>,  <30.155891, 29.056190, 21.873474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378166, 29.134678, 21.828379>,  <30.748623, 29.265491, 21.753220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378166, 29.134678, 21.828379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176925, -0.816661, -0.549329,
		0.333099, -0.475514, 0.814206,
		-0.926144, -0.327034, 0.187898,
		30.100323, 29.036568, 21.884748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827482, 28.560019, 21.723085>,  <30.748623, 29.265491, 21.753220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827482, 28.560019, 21.723085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428654, 28.586393, 21.738586>,  <30.189356, 28.602219, 21.747887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428654, 28.586393, 21.738586>,  <30.827482, 28.560019, 21.723085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428654, 28.586393, 21.738586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076447, -0.844132, -0.530657,
		-0.002277, -0.532065, 0.846700,
		-0.997071, 0.065936, 0.038752,
		30.129532, 28.606174, 21.750212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622734, 28.816786, 21.815289>,  <30.827482, 28.560019, 21.723085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622734, 28.816786, 21.815289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338203, 28.630445, 22.025810>,  <31.167484, 28.518641, 22.152122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338203, 28.630445, 22.025810>,  <31.622734, 28.816786, 21.815289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338203, 28.630445, 22.025810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616591, -0.054154, 0.785419,
		-0.337388, 0.883204, 0.325761,
		-0.711326, -0.465852, 0.526305,
		31.124805, 28.490690, 22.183702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662931, 29.052910, 22.553528>,  <31.622734, 28.816786, 21.815289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662931, 29.052910, 22.553528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445446, 28.717804, 22.573647>,  <31.314955, 28.516741, 22.585718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445446, 28.717804, 22.573647>,  <31.662931, 29.052910, 22.553528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445446, 28.717804, 22.573647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401758, -0.207192, 0.891999,
		-0.736863, 0.505197, 0.449231,
		-0.543712, -0.837763, 0.050294,
		31.282331, 28.466475, 22.588736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390120, 29.032541, 23.269608>,  <31.662931, 29.052910, 22.553528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390120, 29.032541, 23.269608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.368858, 28.665840, 23.111248>,  <31.356102, 28.445820, 23.016233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.368858, 28.665840, 23.111248>,  <31.390120, 29.032541, 23.269608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368858, 28.665840, 23.111248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224577, -0.397276, 0.889796,
		-0.973005, -0.041614, 0.226999,
		-0.053153, -0.916755, -0.395897,
		31.352913, 28.390814, 22.992479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864595, 28.661278, 23.675446>,  <31.390120, 29.032541, 23.269608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864595, 28.661278, 23.675446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078636, 28.375231, 23.495546>,  <31.207060, 28.203602, 23.387608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078636, 28.375231, 23.495546>,  <30.864595, 28.661278, 23.675446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078636, 28.375231, 23.495546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109571, -0.469129, 0.876306,
		-0.837652, -0.518191, -0.172675,
		0.535100, -0.715120, -0.449746,
		31.239166, 28.160694, 23.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577890, 28.129232, 23.896410>,  <30.864595, 28.661278, 23.675446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577890, 28.129232, 23.896410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947161, 28.014280, 23.794304>,  <31.168722, 27.945309, 23.733040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947161, 28.014280, 23.794304>,  <30.577890, 28.129232, 23.896410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947161, 28.014280, 23.794304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109445, -0.440086, 0.891261,
		-0.368470, -0.850727, -0.374824,
		0.923175, -0.287381, -0.255266,
		31.224113, 27.928066, 23.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638319, 27.456383, 24.066620>,  <30.577890, 28.129232, 23.896410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638319, 27.456383, 24.066620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026379, 27.546127, 24.029799>,  <31.259214, 27.599974, 24.007706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026379, 27.546127, 24.029799>,  <30.638319, 27.456383, 24.066620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026379, 27.546127, 24.029799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225488, -0.694829, 0.682911,
		0.089259, -0.683282, -0.724679,
		0.970149, 0.224362, -0.092053,
		31.317423, 27.613436, 24.002182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935526, 26.814730, 24.245222>,  <30.638319, 27.456383, 24.066620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935526, 26.814730, 24.245222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243341, 27.070141, 24.248949>,  <31.428032, 27.223389, 24.251186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243341, 27.070141, 24.248949>,  <30.935526, 26.814730, 24.245222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243341, 27.070141, 24.248949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532464, -0.649632, 0.542643,
		0.352548, -0.412623, -0.839912,
		0.769540, 0.638530, 0.009319,
		31.474203, 27.261700, 24.251745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633518, 26.446230, 24.124477>,  <30.935526, 26.814730, 24.245222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633518, 26.446230, 24.124477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679451, 26.795084, 24.314716>,  <31.707010, 27.004396, 24.428860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679451, 26.795084, 24.314716>,  <31.633518, 26.446230, 24.124477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679451, 26.795084, 24.314716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467367, -0.469900, 0.748840,
		0.876574, 0.136290, -0.461566,
		0.114830, 0.872135, 0.475599,
		31.713900, 27.056725, 24.457396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376076, 26.400866, 24.524174>,  <31.633518, 26.446230, 24.124477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376076, 26.400866, 24.524174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.130314, 26.675684, 24.679337>,  <31.982857, 26.840576, 24.772434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.130314, 26.675684, 24.679337>,  <32.376076, 26.400866, 24.524174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130314, 26.675684, 24.679337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166003, -0.368077, 0.914857,
		0.771330, 0.626486, 0.112096,
		-0.614405, 0.687048, 0.387907,
		31.945992, 26.881798, 24.795710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064152, 26.497475, 24.608181>,  <32.376076, 26.400866, 24.524174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064152, 26.497475, 24.608181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.415073, 26.308205, 24.640284>,  <33.625626, 26.194643, 24.659544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.415073, 26.308205, 24.640284>,  <33.064152, 26.497475, 24.608181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415073, 26.308205, 24.640284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033758, -0.227647, -0.973158,
		0.478746, 0.851047, -0.215690,
		0.877304, -0.473176, 0.080256,
		33.678265, 26.166252, 24.664360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481434, 26.796576, 24.116226>,  <33.064152, 26.497475, 24.608181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481434, 26.796576, 24.116226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634922, 26.432463, 24.178377>,  <33.727016, 26.213995, 24.215668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634922, 26.432463, 24.178377>,  <33.481434, 26.796576, 24.116226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634922, 26.432463, 24.178377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131747, -0.220500, -0.966448,
		0.914003, 0.350375, -0.204537,
		0.383720, -0.910284, 0.155377,
		33.750038, 26.159378, 24.224991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036160, 26.790236, 23.658644>,  <33.481434, 26.796576, 24.116226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036160, 26.790236, 23.658644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961010, 26.404516, 23.733299>,  <33.915920, 26.173084, 23.778091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961010, 26.404516, 23.733299>,  <34.036160, 26.790236, 23.658644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961010, 26.404516, 23.733299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067805, -0.202301, -0.976973,
		0.979850, -0.170893, 0.103392,
		-0.187874, -0.964298, 0.186637,
		33.904648, 26.115227, 23.789289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496159, 26.385998, 23.231930>,  <34.036160, 26.790236, 23.658644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496159, 26.385998, 23.231930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189026, 26.143412, 23.314522>,  <34.004745, 25.997860, 23.364077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189026, 26.143412, 23.314522>,  <34.496159, 26.385998, 23.231930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189026, 26.143412, 23.314522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060265, -0.252496, -0.965719,
		0.637809, -0.753955, 0.157326,
		-0.767833, -0.606463, 0.206482,
		33.958675, 25.961473, 23.376467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678505, 25.850821, 22.834167>,  <34.496159, 26.385998, 23.231930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678505, 25.850821, 22.834167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290844, 25.797731, 22.917238>,  <34.058247, 25.765879, 22.967081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290844, 25.797731, 22.917238>,  <34.678505, 25.850821, 22.834167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290844, 25.797731, 22.917238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162223, -0.290866, -0.942911,
		0.185550, -0.947514, 0.260363,
		-0.969152, -0.132721, 0.207679,
		34.000099, 25.757915, 22.979542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465866, 25.273865, 22.409317>,  <34.678505, 25.850821, 22.834167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465866, 25.273865, 22.409317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113403, 25.437807, 22.503624>,  <33.901928, 25.536173, 22.560207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113403, 25.437807, 22.503624>,  <34.465866, 25.273865, 22.409317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113403, 25.437807, 22.503624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363590, -0.268572, -0.892004,
		-0.302275, -0.871714, 0.385673,
		-0.881154, 0.409857, 0.235764,
		33.849056, 25.560762, 22.574354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985950, 24.806015, 22.038507>,  <34.465866, 25.273865, 22.409317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985950, 24.806015, 22.038507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.838772, 25.169504, 22.117340>,  <33.750465, 25.387598, 22.164640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.838772, 25.169504, 22.117340>,  <33.985950, 24.806015, 22.038507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838772, 25.169504, 22.117340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346625, 0.062628, -0.935911,
		-0.862826, -0.412677, 0.291942,
		-0.367945, 0.908722, 0.197081,
		33.728390, 25.442122, 22.176464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452206, 24.768267, 21.589840>,  <33.985950, 24.806015, 22.038507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452206, 24.768267, 21.589840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513596, 25.150730, 21.689608>,  <33.550430, 25.380209, 21.749468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513596, 25.150730, 21.689608>,  <33.452206, 24.768267, 21.589840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513596, 25.150730, 21.689608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187667, 0.276016, -0.942654,
		-0.970169, 0.097863, 0.221799,
		0.153471, 0.956158, 0.249417,
		33.559635, 25.437578, 21.764433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927544, 25.175854, 21.341602>,  <33.452206, 24.768267, 21.589840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927544, 25.175854, 21.341602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.230907, 25.434818, 21.371752>,  <33.412926, 25.590197, 21.389841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.230907, 25.434818, 21.371752>,  <32.927544, 25.175854, 21.341602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230907, 25.434818, 21.371752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204331, 0.345977, -0.915723,
		-0.618926, 0.679088, 0.394677,
		0.758406, 0.647410, 0.075375,
		33.458427, 25.629042, 21.394363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.993465, 31.229765, 36.368473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265034, 31.522644, 36.346756>,  <34.427975, 31.698372, 36.333725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265034, 31.522644, 36.346756>,  <33.993465, 31.229765, 36.368473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265034, 31.522644, 36.346756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253151, -0.302863, -0.918797,
		-0.689185, 0.610049, -0.390978,
		0.678924, 0.732198, -0.054294,
		34.468712, 31.742304, 36.330467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685883, 31.727774, 35.771210>,  <33.993465, 31.229765, 36.368473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685883, 31.727774, 35.771210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070686, 31.714693, 35.879631>,  <34.301567, 31.706844, 35.944683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070686, 31.714693, 35.879631>,  <33.685883, 31.727774, 35.771210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070686, 31.714693, 35.879631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256480, -0.232038, -0.938284,
		0.093579, 0.972157, -0.214835,
		0.962009, -0.032702, 0.271053,
		34.359287, 31.704882, 35.960945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151947, 31.968077, 35.162056>,  <33.685883, 31.727774, 35.771210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151947, 31.968077, 35.162056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437870, 31.788950, 35.376911>,  <34.609425, 31.681475, 35.505825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437870, 31.788950, 35.376911>,  <34.151947, 31.968077, 35.162056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437870, 31.788950, 35.376911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275513, -0.525628, -0.804865,
		0.642765, 0.723309, -0.252343,
		0.714805, -0.447815, 0.537136,
		34.652313, 31.654606, 35.538052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629322, 31.864828, 34.683517>,  <34.151947, 31.968077, 35.162056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629322, 31.864828, 34.683517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753361, 31.611057, 34.966740>,  <34.827782, 31.458796, 35.136673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753361, 31.611057, 34.966740>,  <34.629322, 31.864828, 34.683517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753361, 31.611057, 34.966740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335234, -0.623963, -0.705895,
		0.889640, 0.456259, 0.019194,
		0.310095, -0.634427, 0.708056,
		34.846390, 31.420729, 35.179157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338638, 31.694742, 34.549339>,  <34.629322, 31.864828, 34.683517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338638, 31.694742, 34.549339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136780, 31.411320, 34.746635>,  <35.015667, 31.241266, 34.865013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136780, 31.411320, 34.746635>,  <35.338638, 31.694742, 34.549339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136780, 31.411320, 34.746635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245057, -0.665389, -0.705127,
		0.827818, -0.234965, 0.509420,
		-0.504642, -0.708554, 0.493241,
		34.985386, 31.198753, 34.894608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651913, 31.076998, 34.327965>,  <35.338638, 31.694742, 34.549339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651913, 31.076998, 34.327965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361267, 30.907343, 34.544167>,  <35.186882, 30.805550, 34.673889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361267, 30.907343, 34.544167>,  <35.651913, 31.076998, 34.327965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361267, 30.907343, 34.544167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084615, -0.835960, -0.542228,
		0.681820, -0.348253, 0.643304,
		-0.726610, -0.424135, 0.540507,
		35.143284, 30.780102, 34.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953655, 30.434149, 34.481915>,  <35.651913, 31.076998, 34.327965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953655, 30.434149, 34.481915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555260, 30.430227, 34.517490>,  <35.316223, 30.427874, 34.538837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555260, 30.430227, 34.517490>,  <35.953655, 30.434149, 34.481915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555260, 30.430227, 34.517490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025397, -0.922119, -0.386072,
		0.085799, -0.386782, 0.918171,
		-0.995989, -0.009806, 0.088940,
		35.256462, 30.427286, 34.544174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781082, 29.749092, 34.677490>,  <35.953655, 30.434149, 34.481915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781082, 29.749092, 34.677490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444775, 29.892603, 34.515312>,  <35.242989, 29.978708, 34.418003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444775, 29.892603, 34.515312>,  <35.781082, 29.749092, 34.677490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444775, 29.892603, 34.515312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094215, -0.834429, -0.543003,
		-0.533134, -0.418341, 0.735363,
		-0.840769, 0.358775, -0.405448,
		35.192543, 30.000237, 34.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358482, 29.119688, 34.512711>,  <35.781082, 29.749092, 34.677490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358482, 29.119688, 34.512711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192978, 29.402636, 34.283474>,  <35.093678, 29.572403, 34.145931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192978, 29.402636, 34.283474>,  <35.358482, 29.119688, 34.512711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192978, 29.402636, 34.283474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090728, -0.658410, -0.747171,
		-0.905855, -0.257151, 0.336599,
		-0.413757, 0.707368, -0.573093,
		35.068851, 29.614845, 34.111546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754097, 28.773584, 34.226421>,  <35.358482, 29.119688, 34.512711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754097, 28.773584, 34.226421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851833, 29.072975, 33.979820>,  <34.910477, 29.252609, 33.831860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851833, 29.072975, 33.979820>,  <34.754097, 28.773584, 34.226421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851833, 29.072975, 33.979820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274592, -0.556347, -0.784268,
		-0.929998, 0.360917, 0.069587,
		0.244342, 0.748476, -0.616507,
		34.925137, 29.297518, 33.794868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144501, 29.034233, 33.684128>,  <34.754097, 28.773584, 34.226421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144501, 29.034233, 33.684128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516651, 29.076483, 33.543709>,  <34.739941, 29.101833, 33.459457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516651, 29.076483, 33.543709>,  <34.144501, 29.034233, 33.684128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516651, 29.076483, 33.543709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288128, -0.381378, -0.878370,
		-0.226659, 0.918365, -0.324393,
		0.930381, 0.105623, -0.351049,
		34.795765, 29.108170, 33.438393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028744, 29.225084, 32.937748>,  <34.144501, 29.034233, 33.684128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028744, 29.225084, 32.937748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423782, 29.164707, 32.920490>,  <34.660805, 29.128481, 32.910137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423782, 29.164707, 32.920490>,  <34.028744, 29.225084, 32.937748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423782, 29.164707, 32.920490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114975, -0.508337, -0.853449,
		0.106891, 0.847827, -0.519389,
		0.987601, -0.150943, -0.043142,
		34.720062, 29.119425, 32.907547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312477, 29.349279, 32.588100>,  <34.028744, 29.225084, 32.937748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312477, 29.349279, 32.588100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035473, 29.113831, 32.754932>,  <32.869270, 28.972561, 32.855030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035473, 29.113831, 32.754932>,  <33.312477, 29.349279, 32.588100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035473, 29.113831, 32.754932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216731, 0.721192, 0.657959,
		-0.688080, 0.365251, -0.627006,
		-0.692512, -0.588621, 0.417077,
		32.827721, 28.937244, 32.880054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827198, 29.803926, 32.758617>,  <33.312477, 29.349279, 32.588100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827198, 29.803926, 32.758617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707474, 29.484072, 32.966843>,  <32.635639, 29.292158, 33.091778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707474, 29.484072, 32.966843>,  <32.827198, 29.803926, 32.758617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707474, 29.484072, 32.966843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272363, 0.594481, 0.756578,
		-0.914456, 0.084670, -0.395728,
		-0.299312, -0.799639, 0.520566,
		32.617680, 29.244181, 33.123013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169430, 29.912046, 32.972874>,  <32.827198, 29.803926, 32.758617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169430, 29.912046, 32.972874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339455, 29.657560, 33.230415>,  <32.441467, 29.504868, 33.384941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339455, 29.657560, 33.230415>,  <32.169430, 29.912046, 32.972874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339455, 29.657560, 33.230415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233097, 0.610387, 0.757029,
		-0.874638, -0.471863, 0.111150,
		0.425058, -0.636217, 0.643857,
		32.466972, 29.466696, 33.423573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611475, 29.662373, 33.293106>,  <32.169430, 29.912046, 32.972874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611475, 29.662373, 33.293106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913975, 29.589815, 33.544559>,  <32.095474, 29.546280, 33.695431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913975, 29.589815, 33.544559>,  <31.611475, 29.662373, 33.293106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913975, 29.589815, 33.544559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440655, 0.569014, 0.694295,
		-0.483644, -0.802072, 0.350384,
		0.756248, -0.181393, 0.628637,
		32.140850, 29.535397, 33.733150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323589, 29.612165, 33.889893>,  <31.611475, 29.662373, 33.293106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323589, 29.612165, 33.889893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701338, 29.661861, 34.011696>,  <31.927986, 29.691679, 34.084778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701338, 29.661861, 34.011696>,  <31.323589, 29.612165, 33.889893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701338, 29.661861, 34.011696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324237, 0.506788, 0.798772,
		-0.055084, -0.853071, 0.518879,
		0.944371, 0.124240, 0.304513,
		31.984650, 29.699133, 34.103050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144724, 29.607927, 34.536560>,  <31.323589, 29.612165, 33.889893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144724, 29.607927, 34.536560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512320, 29.761694, 34.501511>,  <31.732878, 29.853954, 34.480480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512320, 29.761694, 34.501511>,  <31.144724, 29.607927, 34.536560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512320, 29.761694, 34.501511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173582, 0.594021, 0.785499,
		0.354012, -0.706656, 0.612628,
		0.918991, 0.384417, -0.087627,
		31.788017, 29.877020, 34.475224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438927, 29.501509, 35.170380>,  <31.144724, 29.607927, 34.536560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438927, 29.501509, 35.170380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.630615, 29.802914, 34.990349>,  <31.745628, 29.983757, 34.882332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.630615, 29.802914, 34.990349>,  <31.438927, 29.501509, 35.170380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630615, 29.802914, 34.990349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238001, 0.605141, 0.759710,
		0.844810, -0.256950, 0.469332,
		0.479219, 0.753513, -0.450075,
		31.774382, 30.028967, 34.855328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809681, 29.800547, 35.770042>,  <31.438927, 29.501509, 35.170380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809681, 29.800547, 35.770042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776567, 30.069040, 35.475399>,  <31.756701, 30.230137, 35.298615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776567, 30.069040, 35.475399>,  <31.809681, 29.800547, 35.770042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776567, 30.069040, 35.475399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297207, 0.688881, 0.661143,
		0.951217, 0.273657, 0.142468,
		-0.082783, 0.671234, -0.736609,
		31.751732, 30.270411, 35.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130440, 30.395592, 36.096722>,  <31.809681, 29.800547, 35.770042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130440, 30.395592, 36.096722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918264, 30.546658, 35.793144>,  <31.790958, 30.637297, 35.610996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918264, 30.546658, 35.793144>,  <32.130440, 30.395592, 36.096722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918264, 30.546658, 35.793144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106536, 0.858482, 0.501656,
		0.841000, 0.346955, -0.415141,
		-0.530443, 0.377665, -0.758946,
		31.759132, 30.659958, 35.565460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422909, 31.128180, 35.914913>,  <32.130440, 30.395592, 36.096722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422909, 31.128180, 35.914913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053574, 31.115362, 35.761848>,  <31.831974, 31.107672, 35.670010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053574, 31.115362, 35.761848>,  <32.422909, 31.128180, 35.914913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053574, 31.115362, 35.761848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204274, 0.884798, 0.418814,
		0.325155, 0.464872, -0.823510,
		-0.923335, -0.032042, -0.382658,
		31.776573, 31.105749, 35.647053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337460, 31.838398, 35.612873>,  <32.422909, 31.128180, 35.914913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337460, 31.838398, 35.612873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969999, 31.690632, 35.668884>,  <31.749523, 31.601973, 35.702492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969999, 31.690632, 35.668884>,  <32.337460, 31.838398, 35.612873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969999, 31.690632, 35.668884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306117, 0.889667, 0.338799,
		-0.249733, 0.268375, -0.930381,
		-0.918655, -0.369415, 0.140025,
		31.694403, 31.579807, 35.710892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934795, 32.429260, 35.637558>,  <32.337460, 31.838398, 35.612873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934795, 32.429260, 35.637558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661854, 32.166897, 35.766659>,  <31.498089, 32.009480, 35.844120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661854, 32.166897, 35.766659>,  <31.934795, 32.429260, 35.637558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661854, 32.166897, 35.766659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420373, 0.713283, 0.560815,
		-0.598061, 0.246997, -0.762440,
		-0.682356, -0.655911, 0.322756,
		31.457148, 31.970123, 35.863487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330379, 32.692638, 35.559650>,  <31.934795, 32.429260, 35.637558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330379, 32.692638, 35.559650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248837, 32.428463, 35.848721>,  <31.199911, 32.269958, 36.022163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248837, 32.428463, 35.848721>,  <31.330379, 32.692638, 35.559650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248837, 32.428463, 35.848721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484393, 0.709535, 0.511785,
		-0.850767, -0.245729, -0.464555,
		-0.203858, -0.660437, 0.722679,
		31.187679, 32.230331, 36.065525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520769, 32.771454, 35.794765>,  <31.330379, 32.692638, 35.559650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520769, 32.771454, 35.794765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697424, 32.566887, 36.089630>,  <30.803417, 32.444145, 36.266548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697424, 32.566887, 36.089630>,  <30.520769, 32.771454, 35.794765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697424, 32.566887, 36.089630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581656, 0.462366, 0.669248,
		-0.683106, -0.724338, -0.093274,
		0.441636, -0.511421, 0.737161,
		30.829914, 32.413460, 36.310780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075920, 32.453285, 36.263134>,  <30.520769, 32.771454, 35.794765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075920, 32.453285, 36.263134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.405457, 32.440800, 36.489517>,  <30.603178, 32.433308, 36.625347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.405457, 32.440800, 36.489517>,  <30.075920, 32.453285, 36.263134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405457, 32.440800, 36.489517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546547, 0.220901, 0.807768,
		-0.150235, -0.974796, 0.164928,
		0.823842, -0.031214, 0.565959,
		30.652609, 32.431435, 36.659306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639690, 31.975288, 35.987186>,  <30.075920, 32.453285, 36.263134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639690, 31.975288, 35.987186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771858, 32.312214, 35.816856>,  <29.851160, 32.514370, 35.714657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771858, 32.312214, 35.816856>,  <29.639690, 31.975288, 35.987186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771858, 32.312214, 35.816856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080604, -0.424335, -0.901911,
		-0.940386, 0.332333, -0.072315,
		0.330421, 0.842315, -0.425826,
		29.870985, 32.564907, 35.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216845, 31.804176, 35.376057>,  <29.639690, 31.975288, 35.987186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216845, 31.804176, 35.376057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495266, 32.086666, 35.324276>,  <29.662319, 32.256161, 35.293209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495266, 32.086666, 35.324276>,  <29.216845, 31.804176, 35.376057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495266, 32.086666, 35.324276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098395, -0.084770, -0.991530,
		-0.711217, 0.702895, 0.010485,
		0.696052, 0.706225, -0.129451,
		29.704082, 32.298534, 35.285442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902271, 32.254398, 34.933884>,  <29.216845, 31.804176, 35.376057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902271, 32.254398, 34.933884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.290941, 32.342007, 34.898392>,  <29.524143, 32.394573, 34.877098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.290941, 32.342007, 34.898392>,  <28.902271, 32.254398, 34.933884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290941, 32.342007, 34.898392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073520, -0.076654, -0.994344,
		-0.224588, 0.972703, -0.058381,
		0.971677, 0.219025, -0.088728,
		29.582443, 32.407715, 34.871773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842115, 32.838749, 34.427738>,  <28.902271, 32.254398, 34.933884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842115, 32.838749, 34.427738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203304, 32.667934, 34.446854>,  <29.420017, 32.565445, 34.458324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203304, 32.667934, 34.446854>,  <28.842115, 32.838749, 34.427738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203304, 32.667934, 34.446854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059148, 0.013367, -0.998160,
		0.425610, 0.904136, 0.037328,
		0.902971, -0.427035, 0.047789,
		29.474195, 32.539825, 34.461189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377829, 33.274952, 34.064915>,  <28.842115, 32.838749, 34.427738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377829, 33.274952, 34.064915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527048, 32.904308, 34.083836>,  <29.616579, 32.681923, 34.095188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527048, 32.904308, 34.083836>,  <29.377829, 33.274952, 34.064915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527048, 32.904308, 34.083836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087503, -0.015619, -0.996042,
		0.923676, 0.375712, 0.075254,
		0.373050, -0.926605, 0.047303,
		29.638964, 32.626328, 34.098026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917917, 33.357670, 33.630527>,  <29.377829, 33.274952, 34.064915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917917, 33.357670, 33.630527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849903, 32.964256, 33.655018>,  <29.809093, 32.728207, 33.669712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849903, 32.964256, 33.655018>,  <29.917917, 33.357670, 33.630527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849903, 32.964256, 33.655018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043707, -0.054543, -0.997555,
		0.984468, -0.172297, -0.033713,
		-0.170036, -0.983534, 0.061227,
		29.798893, 32.669197, 33.673386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299028, 33.086517, 33.080082>,  <29.917917, 33.357670, 33.630527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299028, 33.086517, 33.080082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.047825, 32.784420, 33.155140>,  <29.897102, 32.603161, 33.200176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.047825, 32.784420, 33.155140>,  <30.299028, 33.086517, 33.080082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047825, 32.784420, 33.155140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075944, -0.180499, -0.980639,
		0.774491, -0.630101, 0.055999,
		-0.628009, -0.755243, 0.187647,
		29.859423, 32.557846, 33.211433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615250, 32.449249, 32.810623>,  <30.299028, 33.086517, 33.080082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615250, 32.449249, 32.810623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215662, 32.454956, 32.827862>,  <29.975910, 32.458382, 32.838203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215662, 32.454956, 32.827862>,  <30.615250, 32.449249, 32.810623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215662, 32.454956, 32.827862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045387, -0.330990, -0.942542,
		0.000812, -0.943527, 0.331296,
		-0.998969, 0.014271, 0.043092,
		29.915972, 32.459236, 32.840790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474325, 31.960728, 32.262630>,  <30.615250, 32.449249, 32.810623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474325, 31.960728, 32.262630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124931, 32.142776, 32.331787>,  <29.915295, 32.252007, 32.373280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124931, 32.142776, 32.331787>,  <30.474325, 31.960728, 32.262630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124931, 32.142776, 32.331787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267125, -0.151132, -0.951737,
		-0.407027, -0.877510, 0.253586,
		-0.873483, 0.455121, 0.172890,
		29.862886, 32.279312, 32.383656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966585, 31.540274, 31.966658>,  <30.474325, 31.960728, 32.262630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966585, 31.540274, 31.966658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785593, 31.895514, 31.999014>,  <29.676998, 32.108658, 32.018429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785593, 31.895514, 31.999014>,  <29.966585, 31.540274, 31.966658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785593, 31.895514, 31.999014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269740, -0.049840, -0.961642,
		-0.850001, -0.456945, 0.262107,
		-0.452481, 0.888098, 0.080893,
		29.649849, 32.161942, 32.023281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278072, 31.515982, 31.627775>,  <29.966585, 31.540274, 31.966658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278072, 31.515982, 31.627775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376436, 31.903688, 31.630671>,  <29.435455, 32.136311, 31.632408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376436, 31.903688, 31.630671>,  <29.278072, 31.515982, 31.627775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376436, 31.903688, 31.630671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221034, 0.063344, -0.973207,
		-0.943754, 0.237724, 0.229817,
		0.245912, 0.969265, 0.007236,
		29.450211, 32.194469, 31.632841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773363, 31.839838, 31.315683>,  <29.278072, 31.515982, 31.627775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773363, 31.839838, 31.315683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057779, 32.119289, 31.283838>,  <29.228430, 32.286961, 31.264732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057779, 32.119289, 31.283838>,  <28.773363, 31.839838, 31.315683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057779, 32.119289, 31.283838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202595, 0.095133, -0.974631,
		-0.673331, 0.709132, 0.209182,
		0.711042, 0.698628, -0.079610,
		29.271091, 32.328876, 31.259954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559872, 32.279453, 30.851227>,  <28.773363, 31.839838, 31.315683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559872, 32.279453, 30.851227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938894, 32.406868, 30.840876>,  <29.166307, 32.483315, 30.834665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938894, 32.406868, 30.840876>,  <28.559872, 32.279453, 30.851227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938894, 32.406868, 30.840876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082329, 0.165053, -0.982843,
		-0.308796, 0.933431, 0.182622,
		0.947558, 0.318533, -0.025880,
		29.223162, 32.502426, 30.833111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693346, 33.086468, 30.512043>,  <28.559872, 32.279453, 30.851227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693346, 33.086468, 30.512043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013231, 32.848633, 30.478748>,  <29.205162, 32.705933, 30.458771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013231, 32.848633, 30.478748>,  <28.693346, 33.086468, 30.512043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013231, 32.848633, 30.478748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017603, 0.161800, -0.986667,
		0.600123, 0.787586, 0.139860,
		0.799714, -0.594583, -0.083236,
		29.253145, 32.670258, 30.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134003, 33.465286, 30.057552>,  <28.693346, 33.086468, 30.512043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134003, 33.465286, 30.057552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269276, 33.088867, 30.054640>,  <29.350439, 32.863014, 30.052893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269276, 33.088867, 30.054640>,  <29.134003, 33.465286, 30.057552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269276, 33.088867, 30.054640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348504, 0.132421, -0.927906,
		0.874172, 0.311264, 0.372743,
		0.338182, -0.941052, -0.007282,
		29.370729, 32.806553, 30.052456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851919, 33.495697, 29.776947>,  <29.134003, 33.465286, 30.057552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851919, 33.495697, 29.776947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716331, 33.124306, 29.716238>,  <29.634979, 32.901470, 29.679811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716331, 33.124306, 29.716238>,  <29.851919, 33.495697, 29.776947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716331, 33.124306, 29.716238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377298, 0.013624, -0.925992,
		0.861828, -0.371145, 0.345693,
		-0.338967, -0.928475, -0.151774,
		29.614641, 32.845764, 29.670706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452961, 33.122868, 29.464121>,  <29.851919, 33.495697, 29.776947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452961, 33.122868, 29.464121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.101721, 32.955528, 29.371231>,  <29.890978, 32.855125, 29.315496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.101721, 32.955528, 29.371231>,  <30.452961, 33.122868, 29.464121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101721, 32.955528, 29.371231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282002, -0.060399, -0.957511,
		0.386545, -0.906277, 0.171011,
		-0.878099, -0.418346, -0.232225,
		29.838291, 32.830025, 29.301563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793653, 32.760143, 28.842848>,  <30.452961, 33.122868, 29.464121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793653, 32.760143, 28.842848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397223, 32.710888, 28.822441>,  <30.159365, 32.681335, 28.810196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397223, 32.710888, 28.822441>,  <30.793653, 32.760143, 28.842848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397223, 32.710888, 28.822441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080255, -0.245681, -0.966023,
		0.106424, -0.961497, 0.253372,
		-0.991077, -0.123143, -0.051019,
		30.099899, 32.673946, 28.807135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791439, 32.160667, 28.449720>,  <30.793653, 32.760143, 28.842848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791439, 32.160667, 28.449720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.417072, 32.297985, 28.418215>,  <30.192451, 32.380375, 28.399311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.417072, 32.297985, 28.418215>,  <30.791439, 32.160667, 28.449720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417072, 32.297985, 28.418215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012081, -0.254787, -0.966921,
		-0.352012, -0.904007, 0.242607,
		-0.935918, 0.343299, -0.078767,
		30.136297, 32.400974, 28.394585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336685, 31.568907, 28.049213>,  <30.791439, 32.160667, 28.449720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336685, 31.568907, 28.049213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.170298, 31.931068, 28.015236>,  <30.070465, 32.148365, 27.994848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.170298, 31.931068, 28.015236>,  <30.336685, 31.568907, 28.049213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170298, 31.931068, 28.015236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045265, -0.113909, -0.992460,
		-0.908252, -0.408987, 0.088365,
		-0.415968, 0.905403, -0.084945,
		30.045507, 32.202690, 27.989752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634438, 31.448420, 27.922615>,  <30.336685, 31.568907, 28.049213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634438, 31.448420, 27.922615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737980, 31.803467, 27.770233>,  <29.800106, 32.016495, 27.678804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737980, 31.803467, 27.770233>,  <29.634438, 31.448420, 27.922615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737980, 31.803467, 27.770233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284116, -0.306979, -0.908318,
		-0.923186, 0.343359, 0.172723,
		0.258856, 0.887620, -0.380952,
		29.815638, 32.069752, 27.655947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960739, 31.700983, 27.521557>,  <29.634438, 31.448420, 27.922615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960739, 31.700983, 27.521557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286732, 31.899027, 27.401112>,  <29.482327, 32.017853, 27.328844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286732, 31.899027, 27.401112>,  <28.960739, 31.700983, 27.521557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286732, 31.899027, 27.401112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165752, -0.298742, -0.939829,
		-0.555275, 0.815854, -0.161404,
		0.814982, 0.495111, -0.301114,
		29.531227, 32.047562, 27.310778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724211, 32.139233, 27.021299>,  <28.960739, 31.700983, 27.521557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724211, 32.139233, 27.021299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.116909, 32.091705, 26.961887>,  <29.352528, 32.063187, 26.926241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.116909, 32.091705, 26.961887>,  <28.724211, 32.139233, 27.021299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116909, 32.091705, 26.961887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183491, -0.385897, -0.904110,
		0.050111, 0.914858, -0.400655,
		0.981743, -0.118823, -0.148530,
		29.411432, 32.056057, 26.917328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828600, 32.306641, 26.287348>,  <28.724211, 32.139233, 27.021299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828600, 32.306641, 26.287348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158400, 32.108532, 26.396822>,  <29.356279, 31.989666, 26.462507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158400, 32.108532, 26.396822>,  <28.828600, 32.306641, 26.287348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158400, 32.108532, 26.396822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052413, -0.414741, -0.908429,
		0.563429, 0.763345, -0.315996,
		0.824501, -0.495272, 0.273686,
		29.405750, 31.959949, 26.478928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280743, 32.479519, 25.781590>,  <28.828600, 32.306641, 26.287348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280743, 32.479519, 25.781590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400846, 32.135101, 25.945757>,  <29.472908, 31.928450, 26.044258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400846, 32.135101, 25.945757>,  <29.280743, 32.479519, 25.781590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400846, 32.135101, 25.945757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212240, -0.359178, -0.908815,
		0.929946, 0.359987, 0.074902,
		0.300259, -0.861046, 0.410419,
		29.490925, 31.876787, 26.068882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850040, 32.353115, 25.334332>,  <29.280743, 32.479519, 25.781590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850040, 32.353115, 25.334332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807875, 32.005398, 25.527504>,  <29.782576, 31.796768, 25.643408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807875, 32.005398, 25.527504>,  <29.850040, 32.353115, 25.334332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807875, 32.005398, 25.527504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387826, -0.483123, -0.784974,
		0.915685, 0.104545, 0.388062,
		-0.105417, -0.869289, 0.482933,
		29.776249, 31.744612, 25.672384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511765, 32.111347, 25.190321>,  <29.850040, 32.353115, 25.334332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511765, 32.111347, 25.190321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240160, 31.831402, 25.278984>,  <30.077196, 31.663435, 25.332182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240160, 31.831402, 25.278984>,  <30.511765, 32.111347, 25.190321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240160, 31.831402, 25.278984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324529, -0.556987, -0.764490,
		0.658499, -0.447165, 0.605328,
		-0.679013, -0.699863, 0.221658,
		30.036455, 31.621443, 25.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235212, 32.084984, 25.231709>,  <30.511765, 32.111347, 25.190321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235212, 32.084984, 25.231709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586449, 32.209801, 25.086609>,  <31.797190, 32.284691, 24.999550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586449, 32.209801, 25.086609>,  <31.235212, 32.084984, 25.231709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586449, 32.209801, 25.086609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273107, 0.295655, 0.915424,
		0.392900, -0.902894, 0.174390,
		0.878090, 0.312043, -0.362750,
		31.849876, 32.303413, 24.977783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732868, 31.919477, 25.702593>,  <31.235212, 32.084984, 25.231709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732868, 31.919477, 25.702593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926437, 32.203789, 25.498392>,  <32.042580, 32.374374, 25.375872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926437, 32.203789, 25.498392>,  <31.732868, 31.919477, 25.702593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926437, 32.203789, 25.498392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322041, 0.397780, 0.859105,
		0.813701, -0.580142, -0.036405,
		0.483921, 0.710779, -0.510504,
		32.071613, 32.417023, 25.345242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451256, 31.914639, 25.803778>,  <31.732868, 31.919477, 25.702593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451256, 31.914639, 25.803778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363483, 32.295059, 25.716734>,  <32.310818, 32.523312, 25.664509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363483, 32.295059, 25.716734>,  <32.451256, 31.914639, 25.803778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363483, 32.295059, 25.716734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283347, 0.275554, 0.918577,
		0.933575, 0.139909, -0.329943,
		-0.219434, 0.951050, -0.217607,
		32.297653, 32.580376, 25.651451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936989, 32.243114, 26.139250>,  <32.451256, 31.914639, 25.803778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936989, 32.243114, 26.139250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705471, 32.559513, 26.059931>,  <32.566559, 32.749352, 26.012339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705471, 32.559513, 26.059931>,  <32.936989, 32.243114, 26.139250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705471, 32.559513, 26.059931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377051, 0.475204, 0.794993,
		0.723066, 0.385372, -0.573292,
		-0.578799, 0.790993, -0.198299,
		32.531830, 32.796810, 26.000441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294445, 32.828800, 26.455357>,  <32.936989, 32.243114, 26.139250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294445, 32.828800, 26.455357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913410, 32.939060, 26.403843>,  <32.684788, 33.005219, 26.372934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913410, 32.939060, 26.403843>,  <33.294445, 32.828800, 26.455357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913410, 32.939060, 26.403843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016426, 0.376065, 0.926448,
		0.303810, 0.884641, -0.353709,
		-0.952591, 0.275654, -0.128783,
		32.627632, 33.021755, 26.365208>
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
