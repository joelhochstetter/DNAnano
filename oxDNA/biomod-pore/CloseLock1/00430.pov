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
	<24.032951, 35.223061, 34.944836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319977, 34.972828, 35.067310>,  <24.492191, 34.822689, 35.140797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319977, 34.972828, 35.067310>,  <24.032951, 35.223061, 34.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319977, 34.972828, 35.067310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593938, 0.319988, -0.738136,
		0.363786, 0.711518, 0.601168,
		0.717564, -0.625580, 0.306190,
		24.535246, 34.785152, 35.159168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537327, 35.727589, 35.097050>,  <24.032951, 35.223061, 34.944836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537327, 35.727589, 35.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679796, 35.361023, 35.024021>,  <24.765278, 35.141083, 34.980202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679796, 35.361023, 35.024021>,  <24.537327, 35.727589, 35.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679796, 35.361023, 35.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704596, 0.391731, -0.591685,
		0.613746, 0.082101, 0.785223,
		0.356174, -0.916410, -0.182575,
		24.786648, 35.086102, 34.969250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377680, 35.663151, 35.165070>,  <24.537327, 35.727589, 35.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377680, 35.663151, 35.165070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194782, 35.410229, 34.914909>,  <25.085045, 35.258476, 34.764812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194782, 35.410229, 34.914909>,  <25.377680, 35.663151, 35.165070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194782, 35.410229, 34.914909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485898, 0.411362, -0.771158,
		0.744872, -0.656484, 0.119144,
		-0.457241, -0.632305, -0.625396,
		25.057610, 35.220539, 34.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888102, 35.486893, 34.742420>,  <25.377680, 35.663151, 35.165070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888102, 35.486893, 34.742420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532667, 35.431789, 34.567410>,  <25.319407, 35.398727, 34.462402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532667, 35.431789, 34.567410>,  <25.888102, 35.486893, 34.742420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532667, 35.431789, 34.567410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380347, 0.311903, -0.870662,
		0.256408, -0.940074, -0.224758,
		-0.888590, -0.137759, -0.437529,
		25.266090, 35.390461, 34.436150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051596, 35.033833, 34.164703>,  <25.888102, 35.486893, 34.742420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051596, 35.033833, 34.164703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710203, 35.233109, 34.103546>,  <25.505367, 35.352673, 34.066853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710203, 35.233109, 34.103546>,  <26.051596, 35.033833, 34.164703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710203, 35.233109, 34.103546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242337, 0.119692, -0.962781,
		-0.461348, -0.858767, -0.222885,
		-0.853482, 0.498190, -0.152891,
		25.454159, 35.382565, 34.057678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087704, 34.836826, 34.945957>,  <26.051596, 35.033833, 34.164703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087704, 34.836826, 34.945957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461246, 34.930401, 35.054169>,  <26.685371, 34.986546, 35.119095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461246, 34.930401, 35.054169>,  <26.087704, 34.836826, 34.945957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461246, 34.930401, 35.054169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311752, 0.903157, 0.295157,
		-0.175280, -0.359972, 0.916350,
		0.933856, 0.233939, 0.270528,
		26.741404, 35.000584, 35.135326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049726, 35.165546, 35.644318>,  <26.087704, 34.836826, 34.945957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049726, 35.165546, 35.644318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391296, 35.282619, 35.472202>,  <26.596239, 35.352863, 35.368935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391296, 35.282619, 35.472202>,  <26.049726, 35.165546, 35.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391296, 35.282619, 35.472202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220529, 0.952457, 0.210218,
		0.471357, -0.084620, 0.877873,
		0.853926, 0.292685, -0.430287,
		26.647474, 35.370426, 35.343117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365980, 35.637104, 36.071968>,  <26.049726, 35.165546, 35.644318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365980, 35.637104, 36.071968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555542, 35.727951, 35.731655>,  <26.669279, 35.782459, 35.527466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555542, 35.727951, 35.731655>,  <26.365980, 35.637104, 36.071968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555542, 35.727951, 35.731655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074326, 0.973035, 0.218355,
		0.877433, -0.040244, 0.478008,
		0.473906, 0.227120, -0.850781,
		26.697714, 35.796085, 35.476421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905495, 35.982918, 36.294708>,  <26.365980, 35.637104, 36.071968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905495, 35.982918, 36.294708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832695, 36.069824, 35.911110>,  <26.789015, 36.121967, 35.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832695, 36.069824, 35.911110>,  <26.905495, 35.982918, 36.294708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832695, 36.069824, 35.911110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039830, 0.976112, 0.213585,
		0.982492, 0.000675, -0.186303,
		-0.181997, 0.217266, -0.958996,
		26.778095, 36.135002, 35.623413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314587, 36.522682, 36.074593>,  <26.905495, 35.982918, 36.294708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314587, 36.522682, 36.074593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016382, 36.529526, 35.808083>,  <26.837460, 36.533630, 35.648178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016382, 36.529526, 35.808083>,  <27.314587, 36.522682, 36.074593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016382, 36.529526, 35.808083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164476, 0.964031, 0.208786,
		0.645882, 0.265238, -0.715881,
		-0.745510, 0.017106, -0.666275,
		26.792728, 36.534657, 35.608200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430832, 37.086636, 35.839024>,  <27.314587, 36.522682, 36.074593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430832, 37.086636, 35.839024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080786, 37.024872, 35.655575>,  <26.870758, 36.987812, 35.545506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080786, 37.024872, 35.655575>,  <27.430832, 37.086636, 35.839024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080786, 37.024872, 35.655575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165096, 0.986131, -0.016982,
		0.454880, 0.060855, -0.888471,
		-0.875116, -0.154408, -0.458618,
		26.818251, 36.978550, 35.517990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473574, 37.510815, 35.251511>,  <27.430832, 37.086636, 35.839024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473574, 37.510815, 35.251511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082035, 37.468002, 35.321259>,  <26.847113, 37.442314, 35.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082035, 37.468002, 35.321259>,  <27.473574, 37.510815, 35.251511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082035, 37.468002, 35.321259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147776, 0.959264, -0.240777,
		-0.141496, -0.261452, -0.954789,
		-0.978847, -0.107026, 0.174369,
		26.788382, 37.435894, 35.373569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175186, 37.847733, 34.690807>,  <27.473574, 37.510815, 35.251511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175186, 37.847733, 34.690807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872049, 37.823654, 34.950672>,  <26.690168, 37.809208, 35.106590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872049, 37.823654, 34.950672>,  <27.175186, 37.847733, 34.690807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872049, 37.823654, 34.950672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253207, 0.944825, -0.207828,
		-0.601302, -0.321998, -0.731268,
		-0.757840, -0.060195, 0.649657,
		26.644697, 37.805595, 35.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610905, 38.215065, 34.342545>,  <27.175186, 37.847733, 34.690807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610905, 38.215065, 34.342545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520929, 38.209114, 34.732246>,  <26.466944, 38.205544, 34.966068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520929, 38.209114, 34.732246>,  <26.610905, 38.215065, 34.342545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520929, 38.209114, 34.732246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238912, 0.970203, -0.040348,
		-0.944629, -0.241838, -0.221790,
		-0.224939, -0.014874, 0.974259,
		26.453447, 38.204651, 35.024525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016989, 38.512413, 34.291489>,  <26.610905, 38.215065, 34.342545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016989, 38.512413, 34.291489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172504, 38.552010, 34.657887>,  <26.265814, 38.575768, 34.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172504, 38.552010, 34.657887>,  <26.016989, 38.512413, 34.291489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172504, 38.552010, 34.657887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113255, 0.991806, -0.059111,
		-0.914340, -0.080759, 0.396812,
		0.388787, 0.098988, 0.915995,
		26.289141, 38.581707, 34.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601530, 39.020004, 34.544743>,  <26.016989, 38.512413, 34.291489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601530, 39.020004, 34.544743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931238, 38.987049, 34.768810>,  <26.129063, 38.967278, 34.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931238, 38.987049, 34.768810>,  <25.601530, 39.020004, 34.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931238, 38.987049, 34.768810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187188, 0.973376, -0.132286,
		-0.534359, 0.213897, 0.817746,
		0.824270, -0.082384, 0.560172,
		26.178518, 38.962334, 34.936863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456341, 39.545364, 35.055180>,  <25.601530, 39.020004, 34.544743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456341, 39.545364, 35.055180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847670, 39.467262, 35.027576>,  <26.082466, 39.420403, 35.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847670, 39.467262, 35.027576>,  <25.456341, 39.545364, 35.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847670, 39.467262, 35.027576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183520, 0.971813, -0.147982,
		0.095953, 0.132110, 0.986580,
		0.978322, -0.195257, -0.069003,
		26.141167, 39.408684, 35.006874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785093, 40.104275, 35.255112>,  <25.456341, 39.545364, 35.055180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785093, 40.104275, 35.255112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099047, 39.939884, 35.069614>,  <26.287418, 39.841248, 34.958317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099047, 39.939884, 35.069614>,  <25.785093, 40.104275, 35.255112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099047, 39.939884, 35.069614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347445, 0.911573, -0.219810,
		0.513070, 0.011400, 0.858271,
		0.784882, -0.410980, -0.463740,
		26.334511, 39.816589, 34.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327900, 40.486954, 35.496979>,  <25.785093, 40.104275, 35.255112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327900, 40.486954, 35.496979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476810, 40.329285, 35.160873>,  <26.566156, 40.234684, 34.959209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476810, 40.329285, 35.160873>,  <26.327900, 40.486954, 35.496979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476810, 40.329285, 35.160873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108769, 0.917623, -0.382279,
		0.921726, 0.050920, 0.384484,
		0.372277, -0.394176, -0.840259,
		26.588493, 40.211033, 34.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782373, 41.004921, 35.283966>,  <26.327900, 40.486954, 35.496979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782373, 41.004921, 35.283966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700745, 40.763802, 34.975426>,  <26.651768, 40.619129, 34.790302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700745, 40.763802, 34.975426>,  <26.782373, 41.004921, 35.283966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700745, 40.763802, 34.975426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146225, 0.760326, -0.632869,
		0.967973, -0.241943, -0.067018,
		-0.204074, -0.602800, -0.771353,
		26.639523, 40.582962, 34.744019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362658, 40.976791, 34.889484>,  <26.782373, 41.004921, 35.283966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362658, 40.976791, 34.889484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037811, 40.902000, 34.668392>,  <26.842903, 40.857124, 34.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037811, 40.902000, 34.668392>,  <27.362658, 40.976791, 34.889484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037811, 40.902000, 34.668392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234057, 0.763330, -0.602116,
		0.534495, -0.618358, -0.576149,
		-0.812116, -0.186976, -0.552727,
		26.794176, 40.845909, 34.502575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595692, 40.891785, 34.111782>,  <27.362658, 40.976791, 34.889484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595692, 40.891785, 34.111782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210266, 40.998161, 34.123222>,  <26.979010, 41.061989, 34.130085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210266, 40.998161, 34.123222>,  <27.595692, 40.891785, 34.111782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210266, 40.998161, 34.123222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230273, 0.879188, -0.417137,
		-0.136076, -0.395353, -0.908394,
		-0.963565, 0.265941, 0.028597,
		26.921196, 41.077942, 34.131802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531260, 41.319355, 33.496464>,  <27.595692, 40.891785, 34.111782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531260, 41.319355, 33.496464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202381, 41.398788, 33.709839>,  <27.005054, 41.446449, 33.837864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202381, 41.398788, 33.709839>,  <27.531260, 41.319355, 33.496464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202381, 41.398788, 33.709839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023309, 0.924632, -0.380148,
		-0.568724, -0.324990, -0.755602,
		-0.822198, 0.198587, 0.533436,
		26.955721, 41.458366, 33.869869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230003, 41.636219, 33.012016>,  <27.531260, 41.319355, 33.496464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230003, 41.636219, 33.012016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013819, 41.754803, 33.326981>,  <26.884108, 41.825951, 33.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013819, 41.754803, 33.326981>,  <27.230003, 41.636219, 33.012016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013819, 41.754803, 33.326981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028514, 0.941785, -0.335006,
		-0.840885, -0.158606, -0.517451,
		-0.540462, 0.296456, 0.787410,
		26.851681, 41.843739, 33.563202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664164, 42.115875, 32.892181>,  <27.230003, 41.636219, 33.012016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664164, 42.115875, 32.892181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801687, 42.203110, 33.257526>,  <26.884201, 42.255451, 33.476734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801687, 42.203110, 33.257526>,  <26.664164, 42.115875, 32.892181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801687, 42.203110, 33.257526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039522, 0.968434, -0.246116,
		-0.938208, 0.120714, 0.324335,
		0.343807, 0.218090, 0.913364,
		26.904829, 42.268536, 33.531536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316032, 42.764015, 33.127831>,  <26.664164, 42.115875, 32.892181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316032, 42.764015, 33.127831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656843, 42.703579, 33.328320>,  <26.861330, 42.667316, 33.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656843, 42.703579, 33.328320>,  <26.316032, 42.764015, 33.127831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656843, 42.703579, 33.328320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199606, 0.978877, -0.044243,
		-0.483947, 0.137743, 0.864188,
		0.852028, -0.151086, 0.501219,
		26.912451, 42.658253, 33.478683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368965, 43.161213, 33.758293>,  <26.316032, 42.764015, 33.127831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368965, 43.161213, 33.758293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749510, 43.083435, 33.662704>,  <26.977837, 43.036770, 33.605350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749510, 43.083435, 33.662704>,  <26.368965, 43.161213, 33.758293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749510, 43.083435, 33.662704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198073, 0.980146, -0.008976,
		0.235972, -0.038795, 0.970985,
		0.951359, -0.194444, -0.238971,
		27.034918, 43.025101, 33.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912107, 43.405655, 34.220394>,  <26.368965, 43.161213, 33.758293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912107, 43.405655, 34.220394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033188, 43.424450, 33.839622>,  <27.105835, 43.435726, 33.611160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033188, 43.424450, 33.839622>,  <26.912107, 43.405655, 34.220394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033188, 43.424450, 33.839622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240274, 0.962762, 0.123924,
		0.922302, -0.266235, 0.280139,
		0.302700, 0.046985, -0.951927,
		27.123999, 43.438545, 33.554043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374437, 43.098274, 34.627342>,  <26.912107, 43.405655, 34.220394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374437, 43.098274, 34.627342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224386, 43.074959, 34.997398>,  <26.134356, 43.060970, 35.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224386, 43.074959, 34.997398>,  <26.374437, 43.098274, 34.627342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224386, 43.074959, 34.997398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904177, 0.196964, 0.379036,
		-0.204312, 0.978676, -0.021184,
		-0.375127, -0.058288, 0.925139,
		26.111849, 43.057472, 35.274940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688263, 43.653461, 35.001259>,  <26.374437, 43.098274, 34.627342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688263, 43.653461, 35.001259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563938, 43.364246, 35.248032>,  <26.489344, 43.190716, 35.396095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563938, 43.364246, 35.248032>,  <26.688263, 43.653461, 35.001259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563938, 43.364246, 35.248032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717521, 0.247195, 0.651197,
		-0.623345, 0.645064, 0.441966,
		-0.310812, -0.723040, 0.616935,
		26.470695, 43.147335, 35.433113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504536, 43.944107, 35.731625>,  <26.688263, 43.653461, 35.001259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504536, 43.944107, 35.731625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617796, 43.561359, 35.757629>,  <26.685753, 43.331711, 35.773232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617796, 43.561359, 35.757629>,  <26.504536, 43.944107, 35.731625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617796, 43.561359, 35.757629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655713, 0.242609, 0.714970,
		-0.699904, -0.159818, 0.696126,
		0.283152, -0.956869, 0.065008,
		26.702742, 43.274300, 35.777130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644810, 43.784981, 36.402287>,  <26.504536, 43.944107, 35.731625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644810, 43.784981, 36.402287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842112, 43.536251, 36.158962>,  <26.960493, 43.387012, 36.012966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842112, 43.536251, 36.158962>,  <26.644810, 43.784981, 36.402287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842112, 43.536251, 36.158962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864894, 0.275768, 0.419416,
		-0.093049, -0.733002, 0.673833,
		0.493254, -0.621820, -0.608309,
		26.990088, 43.349705, 35.976471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823088, 44.283802, 36.871593>,  <26.644810, 43.784981, 36.402287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823088, 44.283802, 36.871593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445803, 44.304909, 37.002785>,  <26.219431, 44.317574, 37.081497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445803, 44.304909, 37.002785>,  <26.823088, 44.283802, 36.871593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445803, 44.304909, 37.002785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310157, 0.493476, 0.812579,
		-0.118972, 0.868158, -0.481817,
		-0.943212, 0.052764, 0.327975,
		26.162840, 44.320740, 37.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896446, 44.403534, 37.521587>,  <26.823088, 44.283802, 36.871593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896446, 44.403534, 37.521587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064409, 44.493347, 37.873329>,  <27.165188, 44.547237, 38.084373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064409, 44.493347, 37.873329>,  <26.896446, 44.403534, 37.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064409, 44.493347, 37.873329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524818, -0.850558, -0.033426,
		0.740434, 0.475536, -0.474997,
		0.419908, 0.224537, 0.879352,
		27.190382, 44.560707, 38.137135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494114, 44.194908, 37.431980>,  <26.896446, 44.403534, 37.521587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494114, 44.194908, 37.431980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480072, 44.190746, 37.831711>,  <27.471647, 44.188248, 38.071548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480072, 44.190746, 37.831711>,  <27.494114, 44.194908, 37.431980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480072, 44.190746, 37.831711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497574, -0.867380, 0.008447,
		0.866711, 0.497537, 0.035627,
		-0.035105, -0.010406, 0.999329,
		27.469540, 44.187626, 38.131508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299290, 44.149868, 37.611530>,  <27.494114, 44.194908, 37.431980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299290, 44.149868, 37.611530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988865, 43.970905, 37.789318>,  <27.802610, 43.863529, 37.895992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988865, 43.970905, 37.789318>,  <28.299290, 44.149868, 37.611530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988865, 43.970905, 37.789318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498119, -0.867103, -0.003099,
		0.386787, 0.218993, 0.895789,
		-0.776063, -0.447408, 0.444468,
		27.756046, 43.836681, 37.922657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530462, 43.762512, 38.261898>,  <28.299290, 44.149868, 37.611530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530462, 43.762512, 38.261898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225605, 43.589836, 38.068905>,  <28.042690, 43.486233, 37.953110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225605, 43.589836, 38.068905>,  <28.530462, 43.762512, 38.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225605, 43.589836, 38.068905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578728, -0.788327, -0.208842,
		-0.290199, -0.438393, 0.850645,
		-0.762141, -0.431686, -0.482482,
		27.996964, 43.460331, 37.924160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472664, 42.969223, 38.421757>,  <28.530462, 43.762512, 38.261898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472664, 42.969223, 38.421757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253822, 42.996761, 38.088066>,  <28.122519, 43.013283, 37.887852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253822, 42.996761, 38.088066>,  <28.472664, 42.969223, 38.421757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253822, 42.996761, 38.088066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445423, -0.819854, -0.359774,
		-0.708715, -0.568418, 0.417879,
		-0.547102, 0.068844, -0.834230,
		28.089691, 43.017414, 37.837795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378199, 42.241730, 38.181190>,  <28.472664, 42.969223, 38.421757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378199, 42.241730, 38.181190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294228, 42.441967, 37.845253>,  <28.243845, 42.562107, 37.643692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294228, 42.441967, 37.845253>,  <28.378199, 42.241730, 38.181190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294228, 42.441967, 37.845253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357646, -0.760137, -0.542477,
		-0.909956, -0.414249, -0.019460,
		-0.209929, 0.500590, -0.839845,
		28.231249, 42.592144, 37.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851494, 41.916004, 37.806377>,  <28.378199, 42.241730, 38.181190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851494, 41.916004, 37.806377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026566, 42.129501, 37.516953>,  <28.131609, 42.257599, 37.343296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026566, 42.129501, 37.516953>,  <27.851494, 41.916004, 37.806377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026566, 42.129501, 37.516953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218434, -0.843752, -0.490275,
		-0.872194, 0.056532, -0.485883,
		0.437681, 0.533748, -0.723567,
		28.157869, 42.289627, 37.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665821, 41.571140, 37.205730>,  <27.851494, 41.916004, 37.806377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665821, 41.571140, 37.205730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986858, 41.786701, 37.103413>,  <28.179480, 41.916039, 37.042023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986858, 41.786701, 37.103413>,  <27.665821, 41.571140, 37.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986858, 41.786701, 37.103413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339683, -0.765361, -0.546661,
		-0.490370, 0.351858, -0.797329,
		0.802591, 0.538905, -0.255790,
		28.227636, 41.948372, 37.026676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803787, 41.508705, 36.480915>,  <27.665821, 41.571140, 37.205730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803787, 41.508705, 36.480915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158419, 41.629559, 36.621025>,  <28.371199, 41.702072, 36.705090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158419, 41.629559, 36.621025>,  <27.803787, 41.508705, 36.480915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158419, 41.629559, 36.621025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447740, -0.750727, -0.485733,
		0.116203, 0.587473, -0.800857,
		0.886581, 0.302132, 0.350272,
		28.424393, 41.720200, 36.726109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090557, 41.780807, 35.900383>,  <27.803787, 41.508705, 36.480915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090557, 41.780807, 35.900383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336414, 41.645031, 36.185196>,  <28.483929, 41.563564, 36.356083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336414, 41.645031, 36.185196>,  <28.090557, 41.780807, 35.900383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336414, 41.645031, 36.185196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113114, -0.855419, -0.505435,
		0.780652, 0.391204, -0.487383,
		0.614645, -0.339439, 0.712035,
		28.520807, 41.543198, 36.398808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649364, 41.456799, 35.555565>,  <28.090557, 41.780807, 35.900383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649364, 41.456799, 35.555565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718969, 41.319218, 35.924652>,  <28.760733, 41.236668, 36.146107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718969, 41.319218, 35.924652>,  <28.649364, 41.456799, 35.555565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718969, 41.319218, 35.924652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199055, -0.905388, -0.375032,
		0.964415, 0.248933, -0.089084,
		0.174013, -0.343954, 0.922721,
		28.771173, 41.216030, 36.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326553, 41.064629, 35.614178>,  <28.649364, 41.456799, 35.555565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326553, 41.064629, 35.614178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118715, 40.937111, 35.931263>,  <28.994013, 40.860600, 36.121513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118715, 40.937111, 35.931263>,  <29.326553, 41.064629, 35.614178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118715, 40.937111, 35.931263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356473, -0.924063, -0.137964,
		0.776496, 0.210894, 0.593782,
		-0.519596, -0.318796, 0.792709,
		28.962837, 40.841473, 36.169075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744246, 40.753815, 35.974983>,  <29.326553, 41.064629, 35.614178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744246, 40.753815, 35.974983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401524, 40.597538, 36.109592>,  <29.195890, 40.503773, 36.190357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401524, 40.597538, 36.109592>,  <29.744246, 40.753815, 35.974983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401524, 40.597538, 36.109592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408795, -0.912439, -0.018498,
		0.314281, 0.121719, 0.941495,
		-0.856805, -0.390692, 0.336520,
		29.144482, 40.480331, 36.210548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020546, 40.094509, 36.360394>,  <29.744246, 40.753815, 35.974983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020546, 40.094509, 36.360394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624483, 40.049763, 36.326748>,  <29.386845, 40.022915, 36.306561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624483, 40.049763, 36.326748>,  <30.020546, 40.094509, 36.360394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624483, 40.049763, 36.326748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120831, -0.986521, -0.110349,
		-0.070637, -0.119427, 0.990327,
		-0.990157, -0.111868, -0.084115,
		29.327436, 40.016201, 36.301514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878342, 39.545818, 36.752197>,  <30.020546, 40.094509, 36.360394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878342, 39.545818, 36.752197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569767, 39.595150, 36.502502>,  <29.384623, 39.624748, 36.352684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569767, 39.595150, 36.502502>,  <29.878342, 39.545818, 36.752197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569767, 39.595150, 36.502502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037138, -0.970639, -0.237658,
		-0.635219, -0.206522, 0.744208,
		-0.771438, 0.123327, -0.624238,
		29.338335, 39.632149, 36.315231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375538, 38.945843, 36.907913>,  <29.878342, 39.545818, 36.752197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375538, 38.945843, 36.907913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296803, 39.073792, 36.537197>,  <29.249561, 39.150562, 36.314770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296803, 39.073792, 36.537197>,  <29.375538, 38.945843, 36.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296803, 39.073792, 36.537197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055105, -0.947397, -0.315282,
		-0.978886, -0.010989, 0.204112,
		-0.196839, 0.319873, -0.926788,
		29.237751, 39.169754, 36.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802767, 38.535442, 36.742149>,  <29.375538, 38.945843, 36.907913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802767, 38.535442, 36.742149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949656, 38.684990, 36.401474>,  <29.037788, 38.774719, 36.197071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949656, 38.684990, 36.401474>,  <28.802767, 38.535442, 36.742149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949656, 38.684990, 36.401474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026488, -0.911084, -0.411368,
		-0.929757, 0.173623, -0.324666,
		0.367221, 0.373872, -0.851686,
		29.059822, 38.797153, 36.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356331, 38.218933, 36.263008>,  <28.802767, 38.535442, 36.742149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356331, 38.218933, 36.263008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668287, 38.341961, 36.044956>,  <28.855461, 38.415775, 35.914124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668287, 38.341961, 36.044956>,  <28.356331, 38.218933, 36.263008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668287, 38.341961, 36.044956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052736, -0.900132, -0.432413,
		-0.623687, 0.308488, -0.718227,
		0.779893, 0.307567, -0.545133,
		28.902256, 38.434231, 35.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229471, 37.931847, 35.523651>,  <28.356331, 38.218933, 36.263008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229471, 37.931847, 35.523651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608070, 38.059643, 35.541862>,  <28.835230, 38.136318, 35.552788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608070, 38.059643, 35.541862>,  <28.229471, 37.931847, 35.523651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608070, 38.059643, 35.541862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304448, -0.837208, -0.454305,
		-0.107031, 0.443858, -0.889682,
		0.946496, 0.319487, 0.045524,
		28.892019, 38.155487, 35.555519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484476, 37.840748, 34.862682>,  <28.229471, 37.931847, 35.523651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484476, 37.840748, 34.862682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823799, 37.830208, 35.074223>,  <29.027393, 37.823883, 35.201145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823799, 37.830208, 35.074223>,  <28.484476, 37.840748, 34.862682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823799, 37.830208, 35.074223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116941, -0.964778, -0.235645,
		0.516432, 0.261744, -0.815346,
		0.848306, -0.026347, 0.528850,
		29.078291, 37.822304, 35.232876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078794, 37.656364, 34.407021>,  <28.484476, 37.840748, 34.862682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078794, 37.656364, 34.407021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154055, 37.549137, 34.784958>,  <29.199211, 37.484798, 35.011723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154055, 37.549137, 34.784958>,  <29.078794, 37.656364, 34.407021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154055, 37.549137, 34.784958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201564, -0.931012, -0.304284,
		0.961235, 0.247698, -0.121135,
		0.188149, -0.268072, 0.944848,
		29.210499, 37.468716, 35.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566885, 37.065140, 34.354355>,  <29.078794, 37.656364, 34.407021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566885, 37.065140, 34.354355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418869, 37.052689, 34.725754>,  <29.330059, 37.045216, 34.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418869, 37.052689, 34.725754>,  <29.566885, 37.065140, 34.354355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418869, 37.052689, 34.725754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089238, -0.996008, 0.002171,
		0.924720, 0.083660, 0.371340,
		-0.370039, -0.031130, 0.928494,
		29.307858, 37.043350, 35.004303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082762, 36.712849, 34.787415>,  <29.566885, 37.065140, 34.354355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082762, 36.712849, 34.787415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725073, 36.680702, 34.963554>,  <29.510460, 36.661415, 35.069237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725073, 36.680702, 34.963554>,  <30.082762, 36.712849, 34.787415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725073, 36.680702, 34.963554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126456, -0.989033, 0.076301,
		0.429388, 0.123915, 0.894579,
		-0.894223, -0.080362, 0.440349,
		29.456806, 36.656593, 35.095657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222231, 36.348969, 35.476910>,  <30.082762, 36.712849, 34.787415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222231, 36.348969, 35.476910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837282, 36.305103, 35.377460>,  <29.606312, 36.278782, 35.317791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837282, 36.305103, 35.377460>,  <30.222231, 36.348969, 35.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837282, 36.305103, 35.377460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107352, -0.993958, 0.022886,
		-0.249627, -0.004665, 0.968331,
		-0.962373, -0.109665, -0.248619,
		29.548571, 36.272205, 35.302876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916254, 35.967937, 36.081772>,  <30.222231, 36.348969, 35.476910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916254, 35.967937, 36.081772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737780, 35.927917, 35.726040>,  <29.630695, 35.903908, 35.512600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737780, 35.927917, 35.726040>,  <29.916254, 35.967937, 36.081772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737780, 35.927917, 35.726040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271250, -0.962106, -0.027856,
		-0.852844, -0.253660, 0.456415,
		-0.446185, -0.100045, -0.889331,
		29.603924, 35.897903, 35.459240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676563, 36.341614, 36.045300>,  <29.916254, 35.967937, 36.081772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676563, 36.341614, 36.045300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521086, 36.635906, 35.823448>,  <30.427799, 36.812481, 35.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521086, 36.635906, 35.823448>,  <30.676563, 36.341614, 36.045300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521086, 36.635906, 35.823448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572199, 0.279057, 0.771178,
		0.722154, 0.617113, 0.312516,
		-0.388694, 0.735731, -0.554633,
		30.404478, 36.856625, 35.657059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327339, 36.037415, 36.313152>,  <30.676563, 36.341614, 36.045300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327339, 36.037415, 36.313152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380453, 36.291771, 36.009045>,  <31.412321, 36.444386, 35.826580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380453, 36.291771, 36.009045>,  <31.327339, 36.037415, 36.313152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380453, 36.291771, 36.009045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183939, 0.737924, 0.649334,
		0.973927, -0.226065, -0.018981,
		0.132785, 0.635896, -0.760266,
		31.420288, 36.482540, 35.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007534, 36.279411, 36.199551>,  <31.327339, 36.037415, 36.313152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007534, 36.279411, 36.199551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719131, 36.537773, 36.099186>,  <31.546089, 36.692791, 36.038967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719131, 36.537773, 36.099186>,  <32.007534, 36.279411, 36.199551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719131, 36.537773, 36.099186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115201, 0.468802, 0.875759,
		0.683281, 0.602525, -0.412419,
		-0.721010, 0.645901, -0.250912,
		31.502829, 36.731544, 36.023911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241016, 36.938797, 36.285675>,  <32.007534, 36.279411, 36.199551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241016, 36.938797, 36.285675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844303, 36.988811, 36.274822>,  <31.606276, 37.018818, 36.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844303, 36.988811, 36.274822>,  <32.241016, 36.938797, 36.285675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844303, 36.988811, 36.274822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034482, 0.465448, 0.884403,
		0.123210, 0.876199, -0.465934,
		-0.991781, 0.125034, -0.027134,
		31.546768, 37.026321, 36.266682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155632, 37.592464, 36.583107>,  <32.241016, 36.938797, 36.285675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155632, 37.592464, 36.583107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831394, 37.359585, 36.608318>,  <31.636850, 37.219856, 36.623444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831394, 37.359585, 36.608318>,  <32.155632, 37.592464, 36.583107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831394, 37.359585, 36.608318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039502, 0.053020, 0.997812,
		-0.584270, 0.811313, -0.019980,
		-0.810597, -0.582203, 0.063027,
		31.588215, 37.184925, 36.627228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684757, 37.955601, 36.914185>,  <32.155632, 37.592464, 36.583107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684757, 37.955601, 36.914185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667595, 37.559227, 36.965103>,  <31.657297, 37.321404, 36.995655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667595, 37.559227, 36.965103>,  <31.684757, 37.955601, 36.914185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667595, 37.559227, 36.965103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322994, 0.106813, 0.940354,
		-0.945428, 0.081461, 0.315484,
		-0.042905, -0.990937, 0.127296,
		31.654724, 37.261948, 37.003292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259787, 37.819748, 37.495991>,  <31.684757, 37.955601, 36.914185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259787, 37.819748, 37.495991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484512, 37.490849, 37.459595>,  <31.619347, 37.293510, 37.437756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484512, 37.490849, 37.459595>,  <31.259787, 37.819748, 37.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484512, 37.490849, 37.459595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120218, -0.027678, 0.992362,
		-0.818483, -0.568460, 0.083298,
		0.561812, -0.822245, -0.090993,
		31.653055, 37.244175, 37.432297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959251, 37.247490, 37.928165>,  <31.259787, 37.819748, 37.495991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959251, 37.247490, 37.928165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341433, 37.141739, 37.875683>,  <31.570742, 37.078289, 37.844193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341433, 37.141739, 37.875683>,  <30.959251, 37.247490, 37.928165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341433, 37.141739, 37.875683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079983, -0.196000, 0.977337,
		-0.284102, -0.944293, -0.166123,
		0.955452, -0.264376, -0.131211,
		31.628069, 37.062428, 37.836319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097542, 36.751503, 38.471233>,  <30.959251, 37.247490, 37.928165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097542, 36.751503, 38.471233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460770, 36.884949, 38.369957>,  <31.678707, 36.965015, 38.309193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460770, 36.884949, 38.369957>,  <31.097542, 36.751503, 38.471233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460770, 36.884949, 38.369957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299259, -0.093928, 0.949537,
		0.293002, -0.938017, -0.185132,
		0.908071, 0.333619, -0.253189,
		31.733191, 36.985035, 38.293999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496675, 36.448792, 38.788048>,  <31.097542, 36.751503, 38.471233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496675, 36.448792, 38.788048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736441, 36.753956, 38.691151>,  <31.880299, 36.937054, 38.633015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736441, 36.753956, 38.691151>,  <31.496675, 36.448792, 38.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736441, 36.753956, 38.691151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331052, 0.039251, 0.942796,
		0.728773, -0.645316, -0.229035,
		0.599411, 0.762907, -0.242238,
		31.916264, 36.982826, 38.618481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164146, 36.270363, 39.028198>,  <31.496675, 36.448792, 38.788048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164146, 36.270363, 39.028198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208504, 36.665596, 38.985493>,  <32.235119, 36.902737, 38.959869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208504, 36.665596, 38.985493>,  <32.164146, 36.270363, 39.028198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208504, 36.665596, 38.985493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413730, 0.051778, 0.908926,
		0.903620, -0.144970, -0.403056,
		0.110897, 0.988080, -0.106766,
		32.241772, 36.962021, 38.953465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883747, 36.391121, 39.246834>,  <32.164146, 36.270363, 39.028198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883747, 36.391121, 39.246834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671318, 36.729298, 39.269390>,  <32.543861, 36.932205, 39.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671318, 36.729298, 39.269390>,  <32.883747, 36.391121, 39.246834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671318, 36.729298, 39.269390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340559, 0.152039, 0.927849,
		0.775873, 0.511962, -0.368668,
		-0.531075, 0.845446, 0.056391,
		32.511997, 36.982933, 39.286308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329327, 36.892033, 39.366566>,  <32.883747, 36.391121, 39.246834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329327, 36.892033, 39.366566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972538, 37.016960, 39.497311>,  <32.758465, 37.091915, 39.575756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972538, 37.016960, 39.497311>,  <33.329327, 36.892033, 39.366566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972538, 37.016960, 39.497311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401826, 0.216394, 0.889781,
		0.207163, 0.925004, -0.318515,
		-0.891975, 0.312317, 0.326862,
		32.704945, 37.110657, 39.595367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587711, 37.281597, 39.890305>,  <33.329327, 36.892033, 39.366566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587711, 37.281597, 39.890305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194252, 37.287857, 39.962070>,  <32.958176, 37.291611, 40.005131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194252, 37.287857, 39.962070>,  <33.587711, 37.281597, 39.890305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194252, 37.287857, 39.962070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180093, 0.082188, 0.980210,
		0.000591, 0.996494, -0.083662,
		-0.983649, 0.015646, 0.179413,
		32.899158, 37.292549, 40.015896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559437, 37.867950, 40.304665>,  <33.587711, 37.281597, 39.890305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559437, 37.867950, 40.304665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225746, 37.656055, 40.365898>,  <33.025532, 37.528919, 40.402637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225746, 37.656055, 40.365898>,  <33.559437, 37.867950, 40.304665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225746, 37.656055, 40.365898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187699, -0.011765, 0.982156,
		-0.518487, 0.848078, 0.109246,
		-0.834230, -0.529741, 0.153084,
		32.975475, 37.497135, 40.411823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326160, 38.171776, 40.926350>,  <33.559437, 37.867950, 40.304665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326160, 38.171776, 40.926350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147907, 37.813934, 40.913143>,  <33.040955, 37.599228, 40.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147907, 37.813934, 40.913143>,  <33.326160, 38.171776, 40.926350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147907, 37.813934, 40.913143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081128, -0.077088, 0.993718,
		-0.891534, 0.440151, 0.106931,
		-0.445629, -0.894608, -0.033018,
		33.014217, 37.545551, 40.903236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825157, 38.191635, 41.487808>,  <33.326160, 38.171776, 40.926350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825157, 38.191635, 41.487808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918873, 37.811150, 41.407505>,  <32.975101, 37.582859, 41.359322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918873, 37.811150, 41.407505>,  <32.825157, 38.191635, 41.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918873, 37.811150, 41.407505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079307, -0.187115, 0.979131,
		-0.968926, -0.245325, 0.031598,
		0.234293, -0.951212, -0.200757,
		32.989162, 37.525787, 41.347279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326405, 37.819599, 41.926563>,  <32.825157, 38.191635, 41.487808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326405, 37.819599, 41.926563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631092, 37.573593, 41.845036>,  <32.813904, 37.425991, 41.796120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631092, 37.573593, 41.845036>,  <32.326405, 37.819599, 41.926563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631092, 37.573593, 41.845036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067511, -0.237527, 0.969032,
		-0.644382, -0.751889, -0.139408,
		0.761718, -0.615016, -0.203818,
		32.859608, 37.389088, 41.783890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128056, 37.278568, 42.304970>,  <32.326405, 37.819599, 41.926563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128056, 37.278568, 42.304970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513435, 37.203697, 42.228313>,  <32.744663, 37.158775, 42.182320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513435, 37.203697, 42.228313>,  <32.128056, 37.278568, 42.304970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513435, 37.203697, 42.228313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152855, -0.203371, 0.967096,
		-0.220003, -0.961042, -0.167325,
		0.963449, -0.187187, -0.191642,
		32.802471, 37.147545, 42.170822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276314, 36.654247, 42.611244>,  <32.128056, 37.278568, 42.304970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276314, 36.654247, 42.611244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641727, 36.811203, 42.568363>,  <32.860973, 36.905376, 42.542633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641727, 36.811203, 42.568363>,  <32.276314, 36.654247, 42.611244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641727, 36.811203, 42.568363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183830, -0.163151, 0.969324,
		0.362860, -0.905215, -0.221176,
		0.913531, 0.392388, -0.107204,
		32.915787, 36.928921, 42.536201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632359, 36.248657, 43.031162>,  <32.276314, 36.654247, 42.611244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632359, 36.248657, 43.031162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847076, 36.580956, 42.972214>,  <32.975906, 36.780334, 42.936844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847076, 36.580956, 42.972214>,  <32.632359, 36.248657, 43.031162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847076, 36.580956, 42.972214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178552, 0.058863, 0.982168,
		0.824604, -0.553536, -0.116733,
		0.536794, 0.830743, -0.147374,
		33.008114, 36.830177, 42.928001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276741, 36.073074, 43.300846>,  <32.632359, 36.248657, 43.031162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276741, 36.073074, 43.300846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217823, 36.468414, 43.316181>,  <33.182472, 36.705620, 43.325382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217823, 36.468414, 43.316181>,  <33.276741, 36.073074, 43.300846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217823, 36.468414, 43.316181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382178, 0.021121, 0.923847,
		0.912275, 0.150727, -0.380836,
		-0.147292, 0.988350, 0.038336,
		33.173634, 36.764919, 43.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846481, 36.258369, 43.745594>,  <33.276741, 36.073074, 43.300846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846481, 36.258369, 43.745594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588509, 36.563957, 43.753647>,  <33.433723, 36.747311, 43.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588509, 36.563957, 43.753647>,  <33.846481, 36.258369, 43.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588509, 36.563957, 43.753647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362455, 0.282572, 0.888132,
		0.672818, 0.580086, -0.459146,
		-0.644935, 0.763972, 0.020136,
		33.395027, 36.793148, 43.759689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132233, 36.903053, 44.077785>,  <33.846481, 36.258369, 43.745594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132233, 36.903053, 44.077785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733330, 36.913383, 44.105530>,  <33.493988, 36.919582, 44.122177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733330, 36.913383, 44.105530>,  <34.132233, 36.903053, 44.077785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733330, 36.913383, 44.105530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073180, 0.203915, 0.976250,
		0.011073, 0.978648, -0.205246,
		-0.997257, 0.025830, 0.069359,
		33.434151, 36.921131, 44.126339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027069, 37.438217, 44.562252>,  <34.132233, 36.903053, 44.077785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027069, 37.438217, 44.562252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688644, 37.225182, 44.553001>,  <33.485592, 37.097359, 44.547451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688644, 37.225182, 44.553001>,  <34.027069, 37.438217, 44.562252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688644, 37.225182, 44.553001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052836, 0.040615, 0.997777,
		-0.530465, 0.845400, -0.062502,
		-0.846059, -0.532588, -0.023123,
		33.434826, 37.065407, 44.546066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498234, 37.866776, 44.898571>,  <34.027069, 37.438217, 44.562252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498234, 37.866776, 44.898571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368645, 37.488411, 44.905476>,  <33.290890, 37.261395, 44.909618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368645, 37.488411, 44.905476>,  <33.498234, 37.866776, 44.898571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368645, 37.488411, 44.905476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234308, 0.097903, 0.967220,
		-0.916591, 0.309312, -0.253352,
		-0.323976, -0.945908, 0.017263,
		33.271450, 37.204639, 44.910656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298302, 37.847904, 45.606304>,  <33.498234, 37.866776, 44.898571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298302, 37.847904, 45.606304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240299, 37.462799, 45.515034>,  <33.205498, 37.231735, 45.460270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240299, 37.462799, 45.515034>,  <33.298302, 37.847904, 45.606304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240299, 37.462799, 45.515034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061641, -0.221374, 0.973239,
		-0.987509, 0.155190, -0.027245,
		-0.145005, -0.962762, -0.228175,
		33.196796, 37.173969, 45.446583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634487, 37.628708, 45.906044>,  <33.298302, 37.847904, 45.606304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634487, 37.628708, 45.906044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859344, 37.301254, 45.858994>,  <32.994259, 37.104782, 45.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859344, 37.301254, 45.858994>,  <32.634487, 37.628708, 45.906044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859344, 37.301254, 45.858994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132327, -0.229425, 0.964289,
		-0.816384, -0.526504, -0.237297,
		0.562144, -0.818631, -0.117628,
		33.027988, 37.055664, 45.823704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236401, 37.213730, 46.195637>,  <32.634487, 37.628708, 45.906044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236401, 37.213730, 46.195637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606544, 37.062702, 46.209175>,  <32.828632, 36.972084, 46.217297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606544, 37.062702, 46.209175>,  <32.236401, 37.213730, 46.195637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606544, 37.062702, 46.209175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160453, -0.309222, 0.937356,
		-0.343462, -0.872821, -0.346725,
		0.925359, -0.377579, 0.033841,
		32.884151, 36.949429, 46.219330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106487, 36.679089, 46.666573>,  <32.236401, 37.213730, 46.195637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106487, 36.679089, 46.666573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503586, 36.725887, 46.655540>,  <32.741844, 36.753967, 46.648922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503586, 36.725887, 46.655540>,  <32.106487, 36.679089, 46.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503586, 36.725887, 46.655540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063420, -0.314909, 0.947001,
		0.102108, -0.941884, -0.320046,
		0.992750, 0.116994, -0.027579,
		32.801411, 36.760986, 46.647266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392918, 36.121857, 47.032867>,  <32.106487, 36.679089, 46.666573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392918, 36.121857, 47.032867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675289, 36.405083, 47.025852>,  <32.844711, 36.575020, 47.021645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675289, 36.405083, 47.025852>,  <32.392918, 36.121857, 47.032867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675289, 36.405083, 47.025852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122522, -0.097689, 0.987646,
		0.697608, -0.699354, -0.155715,
		0.705926, 0.708069, -0.017537,
		32.887066, 36.617504, 47.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943344, 35.833954, 47.322716>,  <32.392918, 36.121857, 47.032867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943344, 35.833954, 47.322716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015633, 36.224297, 47.371765>,  <33.059006, 36.458504, 47.401196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015633, 36.224297, 47.371765>,  <32.943344, 35.833954, 47.322716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015633, 36.224297, 47.371765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276752, -0.170096, 0.945767,
		0.943794, -0.136985, -0.300811,
		0.180723, 0.975860, 0.122625,
		33.069851, 36.517056, 47.408554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471920, 35.920689, 47.652000>,  <32.943344, 35.833954, 47.322716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471920, 35.920689, 47.652000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288754, 36.266769, 47.733715>,  <33.178852, 36.474419, 47.782742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288754, 36.266769, 47.733715>,  <33.471920, 35.920689, 47.652000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288754, 36.266769, 47.733715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250142, -0.095108, 0.963527,
		0.853076, 0.492317, -0.172872,
		-0.457919, 0.865204, 0.204284,
		33.151379, 36.526329, 47.795002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923340, 36.245487, 47.954838>,  <33.471920, 35.920689, 47.652000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923340, 36.245487, 47.954838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598846, 36.448071, 48.071728>,  <33.404148, 36.569622, 48.141861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598846, 36.448071, 48.071728>,  <33.923340, 36.245487, 47.954838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598846, 36.448071, 48.071728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263491, -0.129507, 0.955929,
		0.521986, 0.852481, -0.028387,
		-0.811236, 0.506461, 0.292222,
		33.355476, 36.600010, 48.159393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107666, 36.761059, 48.381603>,  <33.923340, 36.245487, 47.954838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107666, 36.761059, 48.381603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718784, 36.729912, 48.469917>,  <33.485455, 36.711224, 48.522907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718784, 36.729912, 48.469917>,  <34.107666, 36.761059, 48.381603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718784, 36.729912, 48.469917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214304, 0.083665, 0.973177,
		-0.094254, 0.993447, -0.064652,
		-0.972209, -0.077870, 0.220786,
		33.427120, 36.706551, 48.536152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000652, 37.119087, 49.015049>,  <34.107666, 36.761059, 48.381603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000652, 37.119087, 49.015049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697258, 36.861313, 48.976276>,  <33.515221, 36.706646, 48.953014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697258, 36.861313, 48.976276>,  <34.000652, 37.119087, 49.015049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697258, 36.861313, 48.976276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105503, -0.268203, 0.957568,
		-0.643090, 0.716078, 0.271419,
		-0.758488, -0.644438, -0.096930,
		33.469711, 36.667980, 48.947197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742027, 37.040878, 49.671925>,  <34.000652, 37.119087, 49.015049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742027, 37.040878, 49.671925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570911, 36.716255, 49.512741>,  <33.468243, 36.521481, 49.417229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570911, 36.716255, 49.512741>,  <33.742027, 37.040878, 49.671925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570911, 36.716255, 49.512741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045543, -0.420370, 0.906209,
		-0.902729, 0.405793, 0.142870,
		-0.427791, -0.811555, -0.397961,
		33.442574, 36.472790, 49.393353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267849, 36.790356, 50.258835>,  <33.742027, 37.040878, 49.671925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267849, 36.790356, 50.258835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330868, 36.480488, 50.013863>,  <33.368679, 36.294567, 49.866879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330868, 36.480488, 50.013863>,  <33.267849, 36.790356, 50.258835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330868, 36.480488, 50.013863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016671, -0.622170, 0.782705,
		-0.987370, -0.113104, -0.110936,
		0.157549, -0.774669, -0.612427,
		33.378132, 36.248089, 49.830135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790737, 36.185356, 50.520824>,  <33.267849, 36.790356, 50.258835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790737, 36.185356, 50.520824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047695, 36.016621, 50.264893>,  <33.201870, 35.915379, 50.111332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047695, 36.016621, 50.264893>,  <32.790737, 36.185356, 50.520824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047695, 36.016621, 50.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043125, -0.813662, 0.579737,
		-0.765159, -0.400013, -0.504500,
		0.642395, -0.421834, -0.639832,
		33.240414, 35.890072, 50.072945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516853, 35.502220, 50.367069>,  <32.790737, 36.185356, 50.520824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516853, 35.502220, 50.367069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911156, 35.515739, 50.301170>,  <33.147736, 35.523849, 50.261631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911156, 35.515739, 50.301170>,  <32.516853, 35.502220, 50.367069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911156, 35.515739, 50.301170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109685, -0.871792, 0.477439,
		-0.127487, -0.488709, -0.863082,
		0.985757, 0.033800, -0.164747,
		33.206882, 35.525879, 50.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703827, 34.810043, 50.099514>,  <32.516853, 35.502220, 50.367069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703827, 34.810043, 50.099514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049694, 34.962284, 50.230656>,  <33.257214, 35.053627, 50.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049694, 34.962284, 50.230656>,  <32.703827, 34.810043, 50.099514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049694, 34.962284, 50.230656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138012, -0.807525, 0.573460,
		0.483009, -0.450606, -0.750771,
		0.864671, 0.380602, 0.327853,
		33.309093, 35.076466, 50.329010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194401, 34.319561, 50.028446>,  <32.703827, 34.810043, 50.099514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194401, 34.319561, 50.028446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410221, 34.543224, 50.280235>,  <33.539715, 34.677422, 50.431309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410221, 34.543224, 50.280235>,  <33.194401, 34.319561, 50.028446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410221, 34.543224, 50.280235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021451, -0.756516, 0.653623,
		0.841680, -0.339160, -0.420173,
		0.539551, 0.559155, 0.629469,
		33.572086, 34.710972, 50.469074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908665, 33.960518, 50.279671>,  <33.194401, 34.319561, 50.028446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908665, 33.960518, 50.279671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799911, 34.235527, 50.549007>,  <33.734657, 34.400532, 50.710609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799911, 34.235527, 50.549007>,  <33.908665, 33.960518, 50.279671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799911, 34.235527, 50.549007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030797, -0.693130, 0.720154,
		0.961836, 0.216538, 0.167280,
		-0.271887, 0.687519, 0.673346,
		33.718346, 34.441784, 50.751011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437344, 33.893578, 50.945267>,  <33.908665, 33.960518, 50.279671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437344, 33.893578, 50.945267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115009, 34.089851, 51.077839>,  <33.921608, 34.207615, 51.157383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115009, 34.089851, 51.077839>,  <34.437344, 33.893578, 50.945267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115009, 34.089851, 51.077839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086118, -0.456653, 0.885467,
		0.585838, 0.742087, 0.325731,
		-0.805839, 0.490689, 0.331432,
		33.873257, 34.237057, 51.177269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662689, 34.098812, 51.552673>,  <34.437344, 33.893578, 50.945267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662689, 34.098812, 51.552673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262924, 34.111450, 51.547310>,  <34.023067, 34.119034, 51.544090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262924, 34.111450, 51.547310>,  <34.662689, 34.098812, 51.552673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262924, 34.111450, 51.547310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020901, -0.250323, 0.967937,
		0.027229, 0.967646, 0.250836,
		-0.999411, 0.031599, -0.013409,
		33.963100, 34.120930, 51.543285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454407, 34.366276, 52.111568>,  <34.662689, 34.098812, 51.552673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454407, 34.366276, 52.111568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115173, 34.182899, 52.005295>,  <33.911633, 34.072872, 51.941532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115173, 34.182899, 52.005295>,  <34.454407, 34.366276, 52.111568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115173, 34.182899, 52.005295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073889, -0.394194, 0.916052,
		-0.524691, 0.796517, 0.300434,
		-0.848080, -0.458445, -0.265683,
		33.860748, 34.045364, 51.925591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035744, 34.333607, 52.678658>,  <34.454407, 34.366276, 52.111568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035744, 34.333607, 52.678658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865444, 34.044327, 52.461136>,  <33.763264, 33.870758, 52.330624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865444, 34.044327, 52.461136>,  <34.035744, 34.333607, 52.678658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865444, 34.044327, 52.461136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118440, -0.551277, 0.825873,
		-0.897056, 0.416022, 0.149049,
		-0.425748, -0.723201, -0.543800,
		33.737720, 33.827366, 52.297997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410057, 34.034294, 52.987667>,  <34.035744, 34.333607, 52.678658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410057, 34.034294, 52.987667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576420, 33.743633, 52.768944>,  <33.676239, 33.569237, 52.637711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576420, 33.743633, 52.768944>,  <33.410057, 34.034294, 52.987667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576420, 33.743633, 52.768944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236020, -0.666927, 0.706755,
		-0.878247, -0.164885, -0.448882,
		0.415905, -0.726651, -0.546810,
		33.701191, 33.525639, 52.604900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979183, 33.440651, 52.723949>,  <33.410057, 34.034294, 52.987667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979183, 33.440651, 52.723949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361843, 33.376808, 52.821384>,  <33.591438, 33.338501, 52.879845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361843, 33.376808, 52.821384>,  <32.979183, 33.440651, 52.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361843, 33.376808, 52.821384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287249, -0.379405, 0.879511,
		-0.047960, -0.911360, -0.408807,
		0.956655, -0.159611, 0.243591,
		33.648838, 33.328926, 52.894463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953030, 32.735748, 52.877537>,  <32.979183, 33.440651, 52.723949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953030, 32.735748, 52.877537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209068, 32.983173, 53.059814>,  <33.362694, 33.131626, 53.169182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209068, 32.983173, 53.059814>,  <32.953030, 32.735748, 52.877537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209068, 32.983173, 53.059814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443275, -0.187106, 0.876641,
		0.627517, -0.763135, 0.154426,
		0.640101, 0.618560, 0.455690,
		33.401100, 33.168743, 53.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354733, 32.431709, 53.399277>,  <32.953030, 32.735748, 52.877537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354733, 32.431709, 53.399277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274284, 32.810642, 53.498966>,  <33.226017, 33.038002, 53.558781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274284, 32.810642, 53.498966>,  <33.354733, 32.431709, 53.399277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274284, 32.810642, 53.498966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478179, -0.316992, 0.819061,
		0.854924, 0.045557, 0.516749,
		-0.201119, 0.947334, 0.249220,
		33.213947, 33.094841, 53.573730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525261, 32.530258, 54.087822>,  <33.354733, 32.431709, 53.399277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525261, 32.530258, 54.087822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242424, 32.795361, 53.989212>,  <33.072723, 32.954422, 53.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242424, 32.795361, 53.989212>,  <33.525261, 32.530258, 54.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242424, 32.795361, 53.989212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470203, -0.180295, 0.863946,
		0.528140, 0.726805, 0.439116,
		-0.707091, 0.662758, -0.246525,
		33.030296, 32.994186, 53.915253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128624, 32.662430, 54.353230>,  <33.525261, 32.530258, 54.087822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128624, 32.662430, 54.353230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440372, 32.485973, 54.175255>,  <34.627422, 32.380100, 54.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440372, 32.485973, 54.175255>,  <34.128624, 32.662430, 54.353230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440372, 32.485973, 54.175255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601917, -0.329941, -0.727210,
		0.174000, 0.834584, -0.522679,
		0.779372, -0.441144, -0.444940,
		34.674183, 32.353630, 54.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265358, 32.971176, 53.659576>,  <34.128624, 32.662430, 54.353230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265358, 32.971176, 53.659576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336872, 32.586544, 53.742897>,  <34.379780, 32.355762, 53.792889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336872, 32.586544, 53.742897>,  <34.265358, 32.971176, 53.659576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336872, 32.586544, 53.742897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438356, -0.267390, -0.858106,
		0.880840, 0.062107, -0.469323,
		0.178786, -0.961585, 0.208303,
		34.390507, 32.298069, 53.805389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545956, 32.592331, 53.093258>,  <34.265358, 32.971176, 53.659576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545956, 32.592331, 53.093258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349155, 32.302780, 53.286728>,  <34.231075, 32.129051, 53.402809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349155, 32.302780, 53.286728>,  <34.545956, 32.592331, 53.093258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349155, 32.302780, 53.286728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335310, -0.355152, -0.872602,
		0.803432, -0.591503, -0.067987,
		-0.492000, -0.723873, 0.483677,
		34.201557, 32.085617, 53.431831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735058, 31.901600, 52.852905>,  <34.545956, 32.592331, 53.093258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735058, 31.901600, 52.852905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358601, 31.925358, 52.986008>,  <34.132729, 31.939613, 53.065868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358601, 31.925358, 52.986008>,  <34.735058, 31.901600, 52.852905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358601, 31.925358, 52.986008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337810, -0.199393, -0.919851,
		0.011717, -0.978118, 0.207720,
		-0.941141, 0.059392, 0.332755,
		34.076260, 31.943176, 53.085835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412529, 31.251595, 52.830341>,  <34.735058, 31.901600, 52.852905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412529, 31.251595, 52.830341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176609, 31.572672, 52.794983>,  <34.035057, 31.765318, 52.773769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176609, 31.572672, 52.794983>,  <34.412529, 31.251595, 52.830341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176609, 31.572672, 52.794983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356567, -0.357069, -0.863343,
		-0.724565, -0.477683, 0.496815,
		-0.589802, 0.802696, -0.088394,
		33.999668, 31.813480, 52.768463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748676, 30.938301, 52.871891>,  <34.412529, 31.251595, 52.830341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748676, 30.938301, 52.871891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736145, 31.297808, 52.696968>,  <33.728626, 31.513512, 52.592014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736145, 31.297808, 52.696968>,  <33.748676, 30.938301, 52.871891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736145, 31.297808, 52.696968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537791, -0.383949, -0.750576,
		-0.842496, 0.211669, 0.495375,
		-0.031325, 0.898765, -0.437309,
		33.726746, 31.567438, 52.565777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061165, 30.925795, 52.556591>,  <33.748676, 30.938301, 52.871891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061165, 30.925795, 52.556591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272816, 31.218170, 52.384193>,  <33.399807, 31.393597, 52.280754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272816, 31.218170, 52.384193>,  <33.061165, 30.925795, 52.556591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272816, 31.218170, 52.384193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403613, -0.229984, -0.885553,
		-0.746408, 0.642520, 0.173328,
		0.529123, 0.730941, -0.430991,
		33.431553, 31.437452, 52.254894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622463, 31.301826, 52.145706>,  <33.061165, 30.925795, 52.556591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622463, 31.301826, 52.145706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979095, 31.383322, 51.983929>,  <33.193073, 31.432219, 51.886864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979095, 31.383322, 51.983929>,  <32.622463, 31.301826, 52.145706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979095, 31.383322, 51.983929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358947, -0.226590, -0.905436,
		-0.276115, 0.952443, -0.128892,
		0.891581, 0.203739, -0.404442,
		33.246571, 31.444443, 51.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449951, 31.469004, 51.425980>,  <32.622463, 31.301826, 52.145706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449951, 31.469004, 51.425980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847958, 31.448709, 51.391632>,  <33.086761, 31.436533, 51.371021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847958, 31.448709, 51.391632>,  <32.449951, 31.469004, 51.425980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847958, 31.448709, 51.391632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089568, -0.075770, -0.993094,
		0.043877, 0.995834, -0.079937,
		0.995014, -0.050734, -0.085871,
		33.146461, 31.433489, 51.365871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585308, 31.808666, 50.823971>,  <32.449951, 31.469004, 51.425980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585308, 31.808666, 50.823971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928734, 31.612934, 50.885185>,  <33.134789, 31.495495, 50.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928734, 31.612934, 50.885185>,  <32.585308, 31.808666, 50.823971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928734, 31.612934, 50.885185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173415, -0.003732, -0.984842,
		0.482486, 0.872090, 0.081653,
		0.858565, -0.489332, 0.153034,
		33.186302, 31.466135, 50.931095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017349, 32.277767, 50.519398>,  <32.585308, 31.808666, 50.823971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017349, 32.277767, 50.519398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154652, 31.902143, 50.526897>,  <33.237034, 31.676771, 50.531399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154652, 31.902143, 50.526897>,  <33.017349, 32.277767, 50.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154652, 31.902143, 50.526897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359905, 0.113067, -0.926113,
		0.867551, 0.324641, 0.376781,
		0.343255, -0.939055, 0.018748,
		33.257629, 31.620426, 50.532520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560230, 32.384506, 50.200497>,  <33.017349, 32.277767, 50.519398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560230, 32.384506, 50.200497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524212, 31.988663, 50.155655>,  <33.502602, 31.751156, 50.128750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524212, 31.988663, 50.155655>,  <33.560230, 32.384506, 50.200497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524212, 31.988663, 50.155655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463119, 0.058046, -0.884393,
		0.881710, -0.131549, 0.453081,
		-0.090041, -0.989609, -0.112102,
		33.497200, 31.691780, 50.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205650, 32.150192, 49.996513>,  <33.560230, 32.384506, 50.200497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205650, 32.150192, 49.996513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923748, 31.904547, 49.854424>,  <33.754608, 31.757158, 49.769169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923748, 31.904547, 49.854424>,  <34.205650, 32.150192, 49.996513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923748, 31.904547, 49.854424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348972, 0.135864, -0.927232,
		0.617692, -0.777432, 0.118559,
		-0.704752, -0.614117, -0.355224,
		33.712322, 31.720312, 49.747856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560768, 31.820930, 49.435284>,  <34.205650, 32.150192, 49.996513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560768, 31.820930, 49.435284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180630, 31.719717, 49.362823>,  <33.952545, 31.658989, 49.319347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180630, 31.719717, 49.362823>,  <34.560768, 31.820930, 49.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180630, 31.719717, 49.362823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197076, -0.038865, -0.979618,
		0.240836, -0.966677, 0.086802,
		-0.950347, -0.253034, -0.181149,
		33.895527, 31.643806, 49.308479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622051, 31.398821, 48.877842>,  <34.560768, 31.820930, 49.435284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622051, 31.398821, 48.877842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234203, 31.495838, 48.865177>,  <34.001495, 31.554049, 48.857578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234203, 31.495838, 48.865177>,  <34.622051, 31.398821, 48.877842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234203, 31.495838, 48.865177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034775, 0.008573, -0.999358,
		-0.242115, -0.970103, -0.016747,
		-0.969625, 0.242542, -0.031659,
		33.943317, 31.568600, 48.855679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392128, 30.986300, 48.342083>,  <34.622051, 31.398821, 48.877842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392128, 30.986300, 48.342083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115955, 31.273687, 48.375786>,  <33.950253, 31.446119, 48.396008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115955, 31.273687, 48.375786>,  <34.392128, 30.986300, 48.342083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115955, 31.273687, 48.375786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043845, 0.074699, -0.996242,
		-0.722064, -0.691535, -0.020074,
		-0.690436, 0.718470, 0.084257,
		33.908825, 31.489229, 48.401062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790348, 30.872471, 47.935154>,  <34.392128, 30.986300, 48.342083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790348, 30.872471, 47.935154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755375, 31.267628, 47.986423>,  <33.734390, 31.504721, 48.017185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755375, 31.267628, 47.986423>,  <33.790348, 30.872471, 47.935154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755375, 31.267628, 47.986423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112432, 0.118056, -0.986621,
		-0.989805, -0.100672, 0.100749,
		-0.087431, 0.987891, 0.128171,
		33.729145, 31.563995, 48.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404404, 31.103916, 47.353554>,  <33.790348, 30.872471, 47.935154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404404, 31.103916, 47.353554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546085, 31.443047, 47.511402>,  <33.631096, 31.646524, 47.606113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546085, 31.443047, 47.511402>,  <33.404404, 31.103916, 47.353554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546085, 31.443047, 47.511402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208771, 0.483023, -0.850355,
		-0.911566, 0.218815, 0.348091,
		0.354206, 0.847826, 0.394625,
		33.652348, 31.697395, 47.629791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952312, 31.666817, 47.118866>,  <33.404404, 31.103916, 47.353554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952312, 31.666817, 47.118866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282997, 31.847704, 47.252758>,  <33.481407, 31.956236, 47.333096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282997, 31.847704, 47.252758>,  <32.952312, 31.666817, 47.118866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282997, 31.847704, 47.252758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069674, 0.672658, -0.736666,
		-0.558294, 0.585689, 0.587602,
		0.826712, 0.452217, 0.334733,
		33.531010, 31.983370, 47.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910801, 32.397110, 47.134586>,  <32.952312, 31.666817, 47.118866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910801, 32.397110, 47.134586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293404, 32.291069, 47.085907>,  <33.522964, 32.227444, 47.056702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293404, 32.291069, 47.085907>,  <32.910801, 32.397110, 47.134586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293404, 32.291069, 47.085907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063475, 0.596367, -0.800199,
		0.284707, 0.757674, 0.587258,
		0.956511, -0.265099, -0.121696,
		33.580357, 32.211540, 47.049397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148445, 33.034386, 46.889393>,  <32.910801, 32.397110, 47.134586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148445, 33.034386, 46.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426819, 32.768917, 46.779694>,  <33.593845, 32.609634, 46.713875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426819, 32.768917, 46.779694>,  <33.148445, 33.034386, 46.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426819, 32.768917, 46.779694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109206, 0.475274, -0.873034,
		0.709750, 0.577628, 0.403238,
		0.695938, -0.663672, -0.274245,
		33.635601, 32.569817, 46.697418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841198, 33.389668, 46.696815>,  <33.148445, 33.034386, 46.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841198, 33.389668, 46.696815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829994, 33.030643, 46.520813>,  <33.823273, 32.815228, 46.415211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829994, 33.030643, 46.520813>,  <33.841198, 33.389668, 46.696815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829994, 33.030643, 46.520813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204721, 0.425694, -0.881405,
		0.978419, -0.114769, 0.171824,
		-0.028014, -0.897560, -0.440003,
		33.821590, 32.761375, 46.388813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279255, 33.473461, 46.124573>,  <33.841198, 33.389668, 46.696815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279255, 33.473461, 46.124573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080486, 33.133301, 46.055412>,  <33.961227, 32.929203, 46.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080486, 33.133301, 46.055412>,  <34.279255, 33.473461, 46.124573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080486, 33.133301, 46.055412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148779, 0.112800, -0.982416,
		0.854949, -0.513903, 0.070469,
		-0.496917, -0.850400, -0.172897,
		33.931412, 32.878181, 46.003544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674755, 33.067562, 45.657215>,  <34.279255, 33.473461, 46.124573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674755, 33.067562, 45.657215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293198, 32.947815, 45.648571>,  <34.064262, 32.875969, 45.643387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293198, 32.947815, 45.648571>,  <34.674755, 33.067562, 45.657215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293198, 32.947815, 45.648571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020335, 0.007361, -0.999766,
		0.299456, -0.954110, -0.000934,
		-0.953893, -0.299367, -0.021606,
		34.007030, 32.858006, 45.642090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708946, 32.616405, 45.165440>,  <34.674755, 33.067562, 45.657215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708946, 32.616405, 45.165440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333542, 32.752380, 45.189590>,  <34.108299, 32.833965, 45.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333542, 32.752380, 45.189590>,  <34.708946, 32.616405, 45.165440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333542, 32.752380, 45.189590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006870, 0.193237, -0.981128,
		-0.345190, -0.920381, -0.183690,
		-0.938508, 0.339937, 0.060380,
		34.051991, 32.854362, 45.207703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400505, 32.454899, 44.468719>,  <34.708946, 32.616405, 45.165440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400505, 32.454899, 44.468719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127853, 32.697285, 44.632763>,  <33.964260, 32.842716, 44.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127853, 32.697285, 44.632763>,  <34.400505, 32.454899, 44.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127853, 32.697285, 44.632763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287031, 0.294115, -0.911652,
		-0.673045, -0.739125, -0.026548,
		-0.681633, 0.605962, 0.410105,
		33.923363, 32.879074, 44.755795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729553, 32.207672, 44.210735>,  <34.400505, 32.454899, 44.468719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729553, 32.207672, 44.210735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677319, 32.584755, 44.333530>,  <33.645977, 32.811005, 44.407207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677319, 32.584755, 44.333530>,  <33.729553, 32.207672, 44.210735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677319, 32.584755, 44.333530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455711, 0.217923, -0.863040,
		-0.880498, -0.252597, 0.401147,
		-0.130582, 0.942711, 0.306992,
		33.638145, 32.867569, 44.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162945, 32.418835, 43.956676>,  <33.729553, 32.207672, 44.210735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162945, 32.418835, 43.956676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307003, 32.783371, 44.036423>,  <33.393436, 33.002094, 44.084270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307003, 32.783371, 44.036423>,  <33.162945, 32.418835, 43.956676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307003, 32.783371, 44.036423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435915, 0.353342, -0.827725,
		-0.824786, 0.211195, 0.524523,
		0.360147, 0.911343, 0.199369,
		33.415047, 33.056774, 44.096233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532402, 32.747864, 43.900795>,  <33.162945, 32.418835, 43.956676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532402, 32.747864, 43.900795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842659, 32.991257, 43.833725>,  <33.028812, 33.137295, 43.793484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842659, 32.991257, 43.833725>,  <32.532402, 32.747864, 43.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842659, 32.991257, 43.833725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481072, 0.397972, -0.781145,
		-0.408585, 0.686558, 0.601412,
		0.775647, 0.608487, -0.167679,
		33.075352, 33.173801, 43.783421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243641, 33.395233, 43.605450>,  <32.532402, 32.747864, 43.900795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243641, 33.395233, 43.605450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632221, 33.410717, 43.511829>,  <32.865372, 33.420006, 43.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632221, 33.410717, 43.511829>,  <32.243641, 33.395233, 43.605450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632221, 33.410717, 43.511829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223207, 0.483317, -0.846513,
		0.080356, 0.874590, 0.478159,
		0.971453, 0.038706, -0.234052,
		32.923656, 33.422329, 43.441612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503136, 34.103596, 43.553818>,  <32.243641, 33.395233, 43.605450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503136, 34.103596, 43.553818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719551, 33.861122, 43.320641>,  <32.849400, 33.715637, 43.180733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719551, 33.861122, 43.320641>,  <32.503136, 34.103596, 43.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719551, 33.861122, 43.320641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158989, 0.606934, -0.778688,
		0.825835, 0.513980, 0.231996,
		0.541036, -0.606182, -0.582944,
		32.881863, 33.679268, 43.145756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706577, 34.568569, 43.089725>,  <32.503136, 34.103596, 43.553818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706577, 34.568569, 43.089725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844158, 34.246765, 42.896038>,  <32.926704, 34.053684, 42.779827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844158, 34.246765, 42.896038>,  <32.706577, 34.568569, 43.089725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844158, 34.246765, 42.896038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201107, 0.440600, -0.874887,
		0.917199, 0.398297, -0.010247,
		0.343950, -0.804507, -0.484218,
		32.947342, 34.005413, 42.750774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049397, 34.871876, 42.613884>,  <32.706577, 34.568569, 43.089725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049397, 34.871876, 42.613884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023087, 34.497166, 42.476410>,  <33.007301, 34.272339, 42.393925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023087, 34.497166, 42.476410>,  <33.049397, 34.871876, 42.613884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023087, 34.497166, 42.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049813, 0.340919, -0.938772,
		0.996591, -0.078865, 0.024241,
		-0.065772, -0.936779, -0.343685,
		33.003353, 34.216133, 42.373302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565464, 34.772682, 42.076645>,  <33.049397, 34.871876, 42.613884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565464, 34.772682, 42.076645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281025, 34.501873, 42.000774>,  <33.110363, 34.339386, 41.955254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281025, 34.501873, 42.000774>,  <33.565464, 34.772682, 42.076645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281025, 34.501873, 42.000774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120249, 0.382908, -0.915927,
		0.692736, -0.628503, -0.353696,
		-0.711096, -0.677027, -0.189677,
		33.067696, 34.298763, 41.943871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681526, 34.434437, 41.442307>,  <33.565464, 34.772682, 42.076645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681526, 34.434437, 41.442307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288509, 34.411469, 41.513084>,  <33.052700, 34.397686, 41.555553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288509, 34.411469, 41.513084>,  <33.681526, 34.434437, 41.442307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288509, 34.411469, 41.513084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184193, 0.433668, -0.882046,
		-0.026089, -0.899241, -0.436674,
		-0.982544, -0.057420, 0.176948,
		32.993748, 34.394241, 41.566170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313641, 33.986217, 40.826084>,  <33.681526, 34.434437, 41.442307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313641, 33.986217, 40.826084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011299, 34.190697, 40.989727>,  <32.829895, 34.313385, 41.087914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011299, 34.190697, 40.989727>,  <33.313641, 33.986217, 40.826084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011299, 34.190697, 40.989727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360117, 0.197247, -0.911817,
		-0.546814, -0.836522, 0.035002,
		-0.755851, 0.511199, 0.409103,
		32.784546, 34.344055, 41.112457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795048, 33.741280, 40.403133>,  <33.313641, 33.986217, 40.826084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795048, 33.741280, 40.403133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636257, 34.072903, 40.560650>,  <32.540985, 34.271877, 40.655159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636257, 34.072903, 40.560650>,  <32.795048, 33.741280, 40.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636257, 34.072903, 40.560650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386547, 0.238125, -0.890998,
		-0.832463, -0.505922, 0.225941,
		-0.396973, 0.829060, 0.393793,
		32.517166, 34.321621, 40.678787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067806, 33.760269, 40.204857>,  <32.795048, 33.741280, 40.403133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067806, 33.760269, 40.204857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198498, 34.129505, 40.286007>,  <32.276913, 34.351048, 40.334698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198498, 34.129505, 40.286007>,  <32.067806, 33.760269, 40.204857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198498, 34.129505, 40.286007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266074, 0.295814, -0.917442,
		-0.906893, 0.245770, 0.342260,
		0.326725, 0.923088, 0.202878,
		32.296516, 34.406433, 40.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523401, 34.165062, 40.166782>,  <32.067806, 33.760269, 40.204857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523401, 34.165062, 40.166782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856552, 34.371582, 40.087036>,  <32.056442, 34.495495, 40.039188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856552, 34.371582, 40.087036>,  <31.523401, 34.165062, 40.166782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856552, 34.371582, 40.087036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345855, 0.204307, -0.915775,
		-0.432087, 0.831679, 0.348729,
		0.832878, 0.516304, -0.199362,
		32.106415, 34.526474, 40.027229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270588, 34.770550, 39.794693>,  <31.523401, 34.165062, 40.166782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270588, 34.770550, 39.794693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659740, 34.824848, 39.719784>,  <31.893232, 34.857426, 39.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659740, 34.824848, 39.719784>,  <31.270588, 34.770550, 39.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659740, 34.824848, 39.719784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210764, 0.186795, -0.959524,
		-0.095271, 0.972975, 0.210341,
		0.972883, 0.135747, -0.187272,
		31.951605, 34.865574, 39.663601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281954, 35.312931, 39.448696>,  <31.270588, 34.770550, 39.794693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281954, 35.312931, 39.448696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618116, 35.114571, 39.361240>,  <31.819815, 34.995556, 39.308769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618116, 35.114571, 39.361240>,  <31.281954, 35.312931, 39.448696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618116, 35.114571, 39.361240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210271, 0.073463, -0.974879,
		0.499504, 0.865267, -0.042535,
		0.840406, -0.495899, -0.218636,
		31.870237, 34.965801, 39.295650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495199, 35.680149, 38.849792>,  <31.281954, 35.312931, 39.448696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495199, 35.680149, 38.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727226, 35.356003, 38.816730>,  <31.866444, 35.161514, 38.796894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727226, 35.356003, 38.816730>,  <31.495199, 35.680149, 38.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727226, 35.356003, 38.816730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031783, 0.123911, -0.991784,
		0.813947, 0.572677, 0.097633,
		0.580070, -0.810362, -0.082655,
		31.901247, 35.112896, 38.791935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102287, 35.847504, 38.421200>,  <31.495199, 35.680149, 38.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102287, 35.847504, 38.421200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032578, 35.453644, 38.417358>,  <31.990753, 35.217327, 38.415054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032578, 35.453644, 38.417358>,  <32.102287, 35.847504, 38.421200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032578, 35.453644, 38.417358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036951, 0.016281, -0.999184,
		0.984004, -0.173775, -0.039222,
		-0.174272, -0.984651, -0.009600,
		31.980295, 35.158249, 38.414478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530876, 35.519188, 38.002308>,  <32.102287, 35.847504, 38.421200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530876, 35.519188, 38.002308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186722, 35.317551, 38.032310>,  <31.980228, 35.196568, 38.050312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186722, 35.317551, 38.032310>,  <32.530876, 35.519188, 38.002308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186722, 35.317551, 38.032310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217396, 0.229907, -0.948621,
		0.460947, -0.832488, -0.307396,
		-0.860388, -0.504091, 0.075004,
		31.928606, 35.166325, 38.054813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193066, 35.576328, 37.934563>,  <32.530876, 35.519188, 38.002308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193066, 35.576328, 37.934563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356968, 35.325520, 37.669552>,  <33.455307, 35.175034, 37.510544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356968, 35.325520, 37.669552>,  <33.193066, 35.576328, 37.934563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356968, 35.325520, 37.669552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481166, -0.468473, 0.740953,
		-0.774972, -0.622394, 0.109745,
		0.409752, -0.627024, -0.662529,
		33.479893, 35.137413, 37.470795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075905, 34.928345, 38.188019>,  <33.193066, 35.576328, 37.934563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075905, 34.928345, 38.188019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421181, 34.967960, 37.989994>,  <33.628345, 34.991730, 37.871178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421181, 34.967960, 37.989994>,  <33.075905, 34.928345, 38.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421181, 34.967960, 37.989994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498650, -0.320776, 0.805265,
		-0.079049, -0.941962, -0.326279,
		0.863192, 0.099044, -0.495066,
		33.680138, 34.997673, 37.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539040, 34.294209, 38.261738>,  <33.075905, 34.928345, 38.188019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539040, 34.294209, 38.261738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815132, 34.572445, 38.182014>,  <33.980789, 34.739388, 38.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815132, 34.572445, 38.182014>,  <33.539040, 34.294209, 38.261738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815132, 34.572445, 38.182014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631179, -0.444107, 0.635910,
		0.353821, -0.564727, -0.745583,
		0.690234, 0.695595, -0.199310,
		34.022202, 34.781124, 38.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163761, 33.909313, 38.016052>,  <33.539040, 34.294209, 38.261738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163761, 33.909313, 38.016052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243172, 34.265530, 38.179771>,  <34.290817, 34.479259, 38.278004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243172, 34.265530, 38.179771>,  <34.163761, 33.909313, 38.016052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243172, 34.265530, 38.179771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554947, -0.446356, 0.701998,
		0.807849, 0.087772, -0.582817,
		0.198528, 0.890541, 0.409297,
		34.302731, 34.532692, 38.302559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744091, 33.757103, 38.331860>,  <34.163761, 33.909313, 38.016052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744091, 33.757103, 38.331860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670002, 34.116135, 38.491879>,  <34.625549, 34.331554, 38.587891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670002, 34.116135, 38.491879>,  <34.744091, 33.757103, 38.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670002, 34.116135, 38.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617889, -0.210180, 0.757653,
		0.764138, 0.387521, -0.515675,
		-0.185222, 0.897581, 0.400051,
		34.614437, 34.385410, 38.611893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424248, 34.205318, 38.423923>,  <34.744091, 33.757103, 38.331860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424248, 34.205318, 38.423923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151806, 34.359879, 38.672691>,  <34.988338, 34.452614, 38.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151806, 34.359879, 38.672691>,  <35.424248, 34.205318, 38.423923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151806, 34.359879, 38.672691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577558, -0.238531, 0.780724,
		0.450019, 0.890953, -0.060703,
		-0.681109, 0.386401, 0.621921,
		34.947472, 34.475800, 38.859268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758240, 34.666595, 38.867210>,  <35.424248, 34.205318, 38.423923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758240, 34.666595, 38.867210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417461, 34.560322, 39.047703>,  <35.212994, 34.496559, 39.155998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417461, 34.560322, 39.047703>,  <35.758240, 34.666595, 38.867210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417461, 34.560322, 39.047703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519930, -0.326868, 0.789196,
		-0.062185, 0.906956, 0.416609,
		-0.851942, -0.265684, 0.451228,
		35.161880, 34.480618, 39.183071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871414, 34.749569, 39.521786>,  <35.758240, 34.666595, 38.867210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871414, 34.749569, 39.521786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536217, 34.539593, 39.581394>,  <35.335098, 34.413609, 39.617161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536217, 34.539593, 39.581394>,  <35.871414, 34.749569, 39.521786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536217, 34.539593, 39.581394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287835, -0.193202, 0.937989,
		-0.463598, 0.828920, 0.312998,
		-0.837990, -0.524942, 0.149024,
		35.284821, 34.382111, 39.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553677, 34.956623, 40.239777>,  <35.871414, 34.749569, 39.521786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553677, 34.956623, 40.239777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435452, 34.584343, 40.153572>,  <35.364517, 34.360977, 40.101849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435452, 34.584343, 40.153572>,  <35.553677, 34.956623, 40.239777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435452, 34.584343, 40.153572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301997, -0.305049, 0.903185,
		-0.906332, 0.201867, 0.371230,
		-0.295566, -0.930696, -0.215512,
		35.346783, 34.305134, 40.088917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443665, 34.692932, 40.908066>,  <35.553677, 34.956623, 40.239777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443665, 34.692932, 40.908066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429840, 34.353996, 40.696095>,  <35.421547, 34.150635, 40.568909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429840, 34.353996, 40.696095>,  <35.443665, 34.692932, 40.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429840, 34.353996, 40.696095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438619, -0.489313, 0.753781,
		-0.898009, -0.206388, 0.388568,
		-0.034560, -0.847335, -0.529933,
		35.419472, 34.099796, 40.537113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300514, 34.190659, 41.320999>,  <35.443665, 34.692932, 40.908066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300514, 34.190659, 41.320999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414391, 33.938923, 41.031757>,  <35.482716, 33.787880, 40.858212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414391, 33.938923, 41.031757>,  <35.300514, 34.190659, 41.320999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414391, 33.938923, 41.031757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379519, -0.618695, 0.687882,
		-0.880294, -0.470265, 0.062712,
		0.284687, -0.629339, -0.723108,
		35.499798, 33.750122, 40.814823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991882, 33.462681, 41.414421>,  <35.300514, 34.190659, 41.320999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991882, 33.462681, 41.414421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333138, 33.476055, 41.206177>,  <35.537891, 33.484081, 41.081230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333138, 33.476055, 41.206177>,  <34.991882, 33.462681, 41.414421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333138, 33.476055, 41.206177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409018, -0.662309, 0.627735,
		-0.323815, -0.748484, -0.578719,
		0.853140, 0.033437, -0.520608,
		35.589081, 33.486084, 41.049995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152100, 32.827652, 41.338966>,  <34.991882, 33.462681, 41.414421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152100, 32.827652, 41.338966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490829, 33.031624, 41.278492>,  <35.694069, 33.154007, 41.242207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490829, 33.031624, 41.278492>,  <35.152100, 32.827652, 41.338966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490829, 33.031624, 41.278492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482781, -0.617680, 0.620801,
		0.223180, -0.598701, -0.769251,
		0.846825, 0.509930, -0.151188,
		35.744877, 33.184605, 41.233135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527969, 32.294086, 41.214527>,  <35.152100, 32.827652, 41.338966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527969, 32.294086, 41.214527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777374, 32.591736, 41.310452>,  <35.927017, 32.770325, 41.368008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777374, 32.591736, 41.310452>,  <35.527969, 32.294086, 41.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777374, 32.591736, 41.310452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408455, -0.571598, 0.711646,
		0.666632, -0.345766, -0.660340,
		0.623512, 0.744125, 0.239815,
		35.964428, 32.814972, 41.382397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039974, 31.984921, 41.518806>,  <35.527969, 32.294086, 41.214527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039974, 31.984921, 41.518806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124775, 32.357151, 41.638195>,  <36.175655, 32.580490, 41.709827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124775, 32.357151, 41.638195>,  <36.039974, 31.984921, 41.518806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124775, 32.357151, 41.638195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321623, -0.354841, 0.877865,
		0.922829, -0.090113, -0.374521,
		0.212002, 0.930574, 0.298475,
		36.188374, 32.636322, 41.727737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709061, 31.961975, 41.920788>,  <36.039974, 31.984921, 41.518806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709061, 31.961975, 41.920788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527256, 32.305470, 42.015438>,  <36.418175, 32.511566, 42.072227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527256, 32.305470, 42.015438>,  <36.709061, 31.961975, 41.920788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527256, 32.305470, 42.015438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210281, -0.154696, 0.965324,
		0.865564, 0.488509, -0.110264,
		-0.454512, 0.858736, 0.236623,
		36.390903, 32.563091, 42.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185020, 32.289845, 42.423939>,  <36.709061, 31.961975, 41.920788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185020, 32.289845, 42.423939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812611, 32.430229, 42.463970>,  <36.589165, 32.514458, 42.487988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812611, 32.430229, 42.463970>,  <37.185020, 32.289845, 42.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812611, 32.430229, 42.463970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132101, 0.068456, 0.988870,
		0.340202, 0.933885, -0.110096,
		-0.931027, 0.350959, 0.100078,
		36.533302, 32.535519, 42.493992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370121, 32.897911, 42.879936>,  <37.185020, 32.289845, 42.423939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370121, 32.897911, 42.879936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982658, 32.809116, 42.924519>,  <36.750179, 32.755840, 42.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982658, 32.809116, 42.924519>,  <37.370121, 32.897911, 42.879936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982658, 32.809116, 42.924519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112948, 0.006020, 0.993583,
		-0.221234, 0.975031, 0.019242,
		-0.968658, -0.221988, 0.111460,
		36.692062, 32.742519, 42.957958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093441, 33.324078, 43.503288>,  <37.370121, 32.897911, 42.879936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093441, 33.324078, 43.503288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857388, 33.004776, 43.455067>,  <36.715755, 32.813194, 43.426132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857388, 33.004776, 43.455067>,  <37.093441, 33.324078, 43.503288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857388, 33.004776, 43.455067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028963, -0.128297, 0.991313,
		-0.806786, 0.588498, 0.052593,
		-0.590133, -0.798254, -0.120553,
		36.680347, 32.765301, 43.418900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612984, 33.346409, 44.021069>,  <37.093441, 33.324078, 43.503288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612984, 33.346409, 44.021069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574684, 32.965744, 43.904327>,  <36.551704, 32.737347, 43.834282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574684, 32.965744, 43.904327>,  <36.612984, 33.346409, 44.021069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574684, 32.965744, 43.904327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010370, -0.292226, 0.956293,
		-0.995351, 0.094593, 0.018112,
		-0.095751, -0.951660, -0.291848,
		36.545959, 32.680244, 43.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122463, 33.088570, 44.493629>,  <36.612984, 33.346409, 44.021069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122463, 33.088570, 44.493629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274364, 32.754124, 44.335285>,  <36.365505, 32.553455, 44.240280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274364, 32.754124, 44.335285>,  <36.122463, 33.088570, 44.493629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274364, 32.754124, 44.335285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030793, -0.439104, 0.897909,
		-0.924577, -0.328790, -0.192495,
		0.379749, -0.836113, -0.395861,
		36.388290, 32.503288, 44.216526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662838, 32.657749, 44.677387>,  <36.122463, 33.088570, 44.493629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662838, 32.657749, 44.677387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011620, 32.467411, 44.631302>,  <36.220886, 32.353210, 44.603649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011620, 32.467411, 44.631302>,  <35.662838, 32.657749, 44.677387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011620, 32.467411, 44.631302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086519, -0.381384, 0.920359,
		-0.481886, -0.792541, -0.373718,
		0.871952, -0.475842, -0.115214,
		36.273205, 32.324657, 44.596737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624569, 31.975004, 44.791412>,  <35.662838, 32.657749, 44.677387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624569, 31.975004, 44.791412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001110, 32.055504, 44.899750>,  <36.227036, 32.103802, 44.964752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001110, 32.055504, 44.899750>,  <35.624569, 31.975004, 44.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001110, 32.055504, 44.899750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203207, -0.302670, 0.931181,
		0.269373, -0.931606, -0.244025,
		0.941353, 0.201247, 0.270840,
		36.283516, 32.115879, 44.981003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742935, 31.481230, 45.422886>,  <35.624569, 31.975004, 44.791412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742935, 31.481230, 45.422886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070225, 31.710720, 45.437534>,  <36.266598, 31.848415, 45.446323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070225, 31.710720, 45.437534>,  <35.742935, 31.481230, 45.422886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070225, 31.710720, 45.437534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064611, 0.028476, 0.997504,
		0.571253, -0.818551, 0.060369,
		0.818227, 0.573728, 0.036620,
		36.315693, 31.882839, 45.448521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390488, 31.165131, 45.873112>,  <35.742935, 31.481230, 45.422886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390488, 31.165131, 45.873112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407539, 31.564568, 45.885765>,  <36.417770, 31.804230, 45.893356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407539, 31.564568, 45.885765>,  <36.390488, 31.165131, 45.873112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407539, 31.564568, 45.885765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022794, -0.032623, 0.999208,
		0.998831, -0.041878, -0.024152,
		0.042633, 0.998590, 0.031630,
		36.420330, 31.864145, 45.895252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921452, 31.296335, 46.370674>,  <36.390488, 31.165131, 45.873112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921452, 31.296335, 46.370674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743328, 31.652376, 46.331848>,  <36.636456, 31.866001, 46.308552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743328, 31.652376, 46.331848>,  <36.921452, 31.296335, 46.370674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743328, 31.652376, 46.331848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032263, 0.124285, 0.991722,
		0.894797, 0.438489, -0.084063,
		-0.445307, 0.890102, -0.097063,
		36.609737, 31.919407, 46.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224052, 31.657751, 46.885559>,  <36.921452, 31.296335, 46.370674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224052, 31.657751, 46.885559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893410, 31.874266, 46.823944>,  <36.695023, 32.004173, 46.786976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893410, 31.874266, 46.823944>,  <37.224052, 31.657751, 46.885559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893410, 31.874266, 46.823944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167891, 0.024066, 0.985512,
		0.537150, 0.840495, 0.070984,
		-0.826609, 0.541285, -0.154039,
		36.645428, 32.036652, 46.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339478, 32.430244, 47.122993>,  <37.224052, 31.657751, 46.885559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339478, 32.430244, 47.122993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948330, 32.346649, 47.127071>,  <36.713642, 32.296494, 47.129520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948330, 32.346649, 47.127071>,  <37.339478, 32.430244, 47.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948330, 32.346649, 47.127071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039993, 0.234523, 0.971288,
		-0.205378, 0.949381, -0.237690,
		-0.977865, -0.208987, 0.010197,
		36.654972, 32.283955, 47.130131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953472, 33.031742, 47.334450>,  <37.339478, 32.430244, 47.122993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953472, 33.031742, 47.334450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722874, 32.721035, 47.435863>,  <36.584515, 32.534611, 47.496712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722874, 32.721035, 47.435863>,  <36.953472, 33.031742, 47.334450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722874, 32.721035, 47.435863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025087, 0.326969, 0.944702,
		-0.816717, 0.538254, -0.207982,
		-0.576493, -0.776771, 0.253538,
		36.549927, 32.488003, 47.511925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543312, 33.274616, 47.898888>,  <36.953472, 33.031742, 47.334450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543312, 33.274616, 47.898888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482391, 32.879356, 47.906521>,  <36.445839, 32.642200, 47.911102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482391, 32.879356, 47.906521>,  <36.543312, 33.274616, 47.898888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482391, 32.879356, 47.906521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087203, 0.032668, 0.995655,
		-0.984480, 0.149972, -0.091145,
		-0.152297, -0.988150, 0.019083,
		36.436703, 32.582912, 47.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855938, 33.205334, 48.233349>,  <36.543312, 33.274616, 47.898888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855938, 33.205334, 48.233349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044697, 32.853374, 48.255585>,  <36.157951, 32.642200, 48.268925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044697, 32.853374, 48.255585>,  <35.855938, 33.205334, 48.233349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044697, 32.853374, 48.255585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062865, 0.029312, 0.997592,
		-0.879408, -0.474258, -0.041482,
		0.471900, -0.879898, 0.055591,
		36.186268, 32.589405, 48.272263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517307, 32.802784, 48.807777>,  <35.855938, 33.205334, 48.233349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517307, 32.802784, 48.807777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855564, 32.593884, 48.763702>,  <36.058517, 32.468544, 48.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855564, 32.593884, 48.763702>,  <35.517307, 32.802784, 48.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855564, 32.593884, 48.763702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078771, -0.326289, 0.941982,
		-0.527906, -0.787900, -0.317062,
		0.845642, -0.522254, -0.110187,
		36.109257, 32.437206, 48.730648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521671, 32.278881, 49.206726>,  <35.517307, 32.802784, 48.807777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521671, 32.278881, 49.206726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915539, 32.275970, 49.137020>,  <36.151859, 32.274223, 49.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915539, 32.275970, 49.137020>,  <35.521671, 32.278881, 49.206726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915539, 32.275970, 49.137020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160631, -0.351475, 0.922314,
		-0.067957, -0.936169, -0.344920,
		0.984672, -0.007272, -0.174263,
		36.210941, 32.273788, 49.084740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723957, 31.637953, 49.365349>,  <35.521671, 32.278881, 49.206726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723957, 31.637953, 49.365349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033440, 31.889381, 49.397022>,  <36.219131, 32.040237, 49.416027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033440, 31.889381, 49.397022>,  <35.723957, 31.637953, 49.365349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033440, 31.889381, 49.397022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174375, -0.331444, 0.927220,
		0.609069, -0.703593, -0.366049,
		0.773711, 0.628571, 0.079183,
		36.265553, 32.077953, 49.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250828, 31.294567, 49.701214>,  <35.723957, 31.637953, 49.365349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250828, 31.294567, 49.701214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376980, 31.670519, 49.753613>,  <36.452671, 31.896090, 49.785053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376980, 31.670519, 49.753613>,  <36.250828, 31.294567, 49.701214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376980, 31.670519, 49.753613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159983, -0.188730, 0.968910,
		0.935382, -0.284619, -0.209887,
		0.315382, 0.939879, 0.131000,
		36.471596, 31.952482, 49.792912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903976, 31.213737, 49.891979>,  <36.250828, 31.294567, 49.701214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903976, 31.213737, 49.891979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770477, 31.566923, 50.024029>,  <36.690376, 31.778835, 50.103260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770477, 31.566923, 50.024029>,  <36.903976, 31.213737, 49.891979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770477, 31.566923, 50.024029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220064, -0.267549, 0.938078,
		0.916615, 0.385731, -0.105015,
		-0.333749, 0.882966, 0.330125,
		36.670353, 31.831814, 50.123066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409527, 31.468750, 50.293312>,  <36.903976, 31.213737, 49.891979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409527, 31.468750, 50.293312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104465, 31.696148, 50.416714>,  <36.921429, 31.832586, 50.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104465, 31.696148, 50.416714>,  <37.409527, 31.468750, 50.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104465, 31.696148, 50.416714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261089, -0.165795, 0.950970,
		0.591769, 0.805808, -0.021984,
		-0.762655, 0.568494, 0.308500,
		36.875668, 31.866695, 50.509262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665119, 31.925812, 50.759186>,  <37.409527, 31.468750, 50.293312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665119, 31.925812, 50.759186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278843, 31.933990, 50.862743>,  <37.047077, 31.938898, 50.924877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278843, 31.933990, 50.862743>,  <37.665119, 31.925812, 50.759186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278843, 31.933990, 50.862743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225713, -0.426971, 0.875642,
		0.128443, 0.904034, 0.407706,
		-0.965689, 0.020446, 0.258894,
		36.989136, 31.940125, 50.940411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675762, 31.875643, 51.450813>,  <37.665119, 31.925812, 50.759186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675762, 31.875643, 51.450813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288811, 31.807755, 51.375576>,  <37.056641, 31.767021, 51.330433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288811, 31.807755, 51.375576>,  <37.675762, 31.875643, 51.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288811, 31.807755, 51.375576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085175, -0.481330, 0.872391,
		-0.238598, 0.859951, 0.451171,
		-0.967376, -0.169722, -0.188091,
		36.998596, 31.756838, 51.319149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558510, 32.698483, 51.380116>,  <37.675762, 31.875643, 51.450813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558510, 32.698483, 51.380116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957531, 32.726269, 51.376942>,  <38.196945, 32.742943, 51.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957531, 32.726269, 51.376942>,  <37.558510, 32.698483, 51.380116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957531, 32.726269, 51.376942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046520, 0.574634, -0.817088,
		-0.052202, 0.815457, 0.576459,
		0.997552, 0.069470, -0.007938,
		38.256798, 32.747108, 51.374561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638855, 33.382580, 51.216175>,  <37.558510, 32.698483, 51.380116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638855, 33.382580, 51.216175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990841, 33.217068, 51.122833>,  <38.202030, 33.117760, 51.066830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990841, 33.217068, 51.122833>,  <37.638855, 33.382580, 51.216175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990841, 33.217068, 51.122833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122848, 0.672724, -0.729624,
		0.458886, 0.613375, 0.642803,
		0.879962, -0.413781, -0.233352,
		38.254829, 33.092934, 51.052826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075493, 33.983685, 51.204132>,  <37.638855, 33.382580, 51.216175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075493, 33.983685, 51.204132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272137, 33.694168, 51.010456>,  <38.390125, 33.520458, 50.894253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272137, 33.694168, 51.010456>,  <38.075493, 33.983685, 51.204132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272137, 33.694168, 51.010456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117691, 0.606140, -0.786602,
		0.862825, 0.329719, 0.383170,
		0.491612, -0.723795, -0.484188,
		38.419621, 33.477028, 50.865200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523876, 34.317474, 50.771172>,  <38.075493, 33.983685, 51.204132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523876, 34.317474, 50.771172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560745, 33.952942, 50.610683>,  <38.582867, 33.734222, 50.514389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560745, 33.952942, 50.610683>,  <38.523876, 34.317474, 50.771172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560745, 33.952942, 50.610683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111334, 0.409845, -0.905335,
		0.989499, 0.038779, 0.139240,
		0.092175, -0.911330, -0.401224,
		38.588398, 33.679543, 50.490314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106266, 34.324867, 50.409321>,  <38.523876, 34.317474, 50.771172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106266, 34.324867, 50.409321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893097, 34.028721, 50.245445>,  <38.765194, 33.851032, 50.147118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893097, 34.028721, 50.245445>,  <39.106266, 34.324867, 50.409321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893097, 34.028721, 50.245445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297117, 0.289614, -0.909860,
		0.792283, -0.606614, 0.065633,
		-0.532926, -0.740367, -0.409692,
		38.733219, 33.806610, 50.122540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550358, 34.033077, 49.918774>,  <39.106266, 34.324867, 50.409321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550358, 34.033077, 49.918774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183468, 33.937229, 49.791477>,  <38.963333, 33.879719, 49.715099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183468, 33.937229, 49.791477>,  <39.550358, 34.033077, 49.918774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183468, 33.937229, 49.791477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263226, 0.235064, -0.935659,
		0.299015, -0.941979, -0.152531,
		-0.917225, -0.239626, -0.318241,
		38.908298, 33.865341, 49.696007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724987, 33.730381, 49.418331>,  <39.550358, 34.033077, 49.918774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724987, 33.730381, 49.418331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340927, 33.785534, 49.321091>,  <39.110493, 33.818626, 49.262745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340927, 33.785534, 49.321091>,  <39.724987, 33.730381, 49.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340927, 33.785534, 49.321091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268773, 0.217055, -0.938429,
		-0.076630, -0.966372, -0.245465,
		-0.960150, 0.137886, -0.243102,
		39.052883, 33.826900, 49.248161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623135, 33.305130, 48.738873>,  <39.724987, 33.730381, 49.418331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623135, 33.305130, 48.738873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330833, 33.574192, 48.785423>,  <39.155453, 33.735630, 48.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330833, 33.574192, 48.785423>,  <39.623135, 33.305130, 48.738873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330833, 33.574192, 48.785423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078375, 0.252017, -0.964544,
		-0.678133, -0.695718, -0.236881,
		-0.730748, 0.672654, 0.116374,
		39.111610, 33.775990, 48.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197563, 33.092972, 48.170925>,  <39.623135, 33.305130, 48.738873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197563, 33.092972, 48.170925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112247, 33.470779, 48.270832>,  <39.061058, 33.697464, 48.330776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112247, 33.470779, 48.270832>,  <39.197563, 33.092972, 48.170925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112247, 33.470779, 48.270832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002231, 0.255179, -0.966891,
		-0.976986, -0.206789, -0.052321,
		-0.213294, 0.944522, 0.249767,
		39.048260, 33.754135, 48.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480343, 33.222225, 47.947948>,  <39.197563, 33.092972, 48.170925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480343, 33.222225, 47.947948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668751, 33.572914, 47.986954>,  <38.781796, 33.783325, 48.010357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668751, 33.572914, 47.986954>,  <38.480343, 33.222225, 47.947948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668751, 33.572914, 47.986954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314622, 0.270235, -0.909937,
		-0.824110, 0.397916, 0.403120,
		0.471015, 0.876719, 0.097510,
		38.810055, 33.835930, 48.016209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072475, 33.754639, 47.806923>,  <38.480343, 33.222225, 47.947948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072475, 33.754639, 47.806923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451210, 33.813946, 47.692722>,  <38.678452, 33.849529, 47.624203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451210, 33.813946, 47.692722>,  <38.072475, 33.754639, 47.806923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451210, 33.813946, 47.692722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304620, 0.127802, -0.943861,
		-0.103452, 0.980655, 0.166172,
		0.946839, 0.148263, -0.285506,
		38.735260, 33.858425, 47.607071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077797, 34.176403, 47.260094>,  <38.072475, 33.754639, 47.806923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077797, 34.176403, 47.260094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451595, 34.041618, 47.214191>,  <38.675873, 33.960747, 47.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451595, 34.041618, 47.214191>,  <38.077797, 34.176403, 47.260094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451595, 34.041618, 47.214191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076445, 0.124892, -0.989221,
		0.347666, 0.933197, 0.090951,
		0.934497, -0.336965, -0.114759,
		38.731945, 33.940529, 47.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388367, 34.684174, 46.952660>,  <38.077797, 34.176403, 47.260094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388367, 34.684174, 46.952660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562763, 34.337822, 46.854546>,  <38.667400, 34.130013, 46.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562763, 34.337822, 46.854546>,  <38.388367, 34.684174, 46.952660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562763, 34.337822, 46.854546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229340, 0.156660, -0.960656,
		0.870239, 0.475092, -0.130278,
		0.435991, -0.865878, -0.245289,
		38.693562, 34.078060, 46.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694225, 34.806221, 46.273315>,  <38.388367, 34.684174, 46.952660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694225, 34.806221, 46.273315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681110, 34.407974, 46.308338>,  <38.673241, 34.169025, 46.329350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681110, 34.407974, 46.308338>,  <38.694225, 34.806221, 46.273315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681110, 34.407974, 46.308338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109352, -0.083500, -0.990490,
		0.993462, -0.042048, -0.106136,
		-0.032786, -0.995620, 0.087553,
		38.671276, 34.109287, 46.334602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255707, 34.546360, 45.868912>,  <38.694225, 34.806221, 46.273315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255707, 34.546360, 45.868912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983040, 34.256779, 45.911285>,  <38.819439, 34.083031, 45.936710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983040, 34.256779, 45.911285>,  <39.255707, 34.546360, 45.868912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983040, 34.256779, 45.911285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097746, -0.053387, -0.993778,
		0.725106, -0.687778, -0.034372,
		-0.681664, -0.723954, 0.105938,
		38.778542, 34.039593, 45.943066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538250, 33.906288, 45.561390>,  <39.255707, 34.546360, 45.868912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538250, 33.906288, 45.561390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139679, 33.875443, 45.575199>,  <38.900536, 33.856934, 45.583485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139679, 33.875443, 45.575199>,  <39.538250, 33.906288, 45.561390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139679, 33.875443, 45.575199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045256, 0.142121, -0.988814,
		0.071344, -0.986841, -0.145103,
		-0.996425, -0.077112, 0.034521,
		38.840752, 33.852306, 45.585556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346367, 33.537731, 44.935783>,  <39.538250, 33.906288, 45.561390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346367, 33.537731, 44.935783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986858, 33.667118, 45.054157>,  <38.771152, 33.744751, 45.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986858, 33.667118, 45.054157>,  <39.346367, 33.537731, 44.935783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986858, 33.667118, 45.054157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285081, 0.081628, -0.955021,
		-0.333078, -0.942711, 0.018850,
		-0.898770, 0.323471, 0.295937,
		38.717228, 33.764160, 45.142937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849098, 33.195385, 44.565872>,  <39.346367, 33.537731, 44.935783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849098, 33.195385, 44.565872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637882, 33.512032, 44.688847>,  <38.511154, 33.702019, 44.762630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637882, 33.512032, 44.688847>,  <38.849098, 33.195385, 44.565872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637882, 33.512032, 44.688847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485345, 0.015763, -0.874181,
		-0.696862, -0.610815, 0.375884,
		-0.528038, 0.791616, 0.307441,
		38.479469, 33.749516, 44.781078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176239, 33.042877, 44.363663>,  <38.849098, 33.195385, 44.565872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176239, 33.042877, 44.363663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195866, 33.440533, 44.402187>,  <38.207642, 33.679127, 44.425301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195866, 33.440533, 44.402187>,  <38.176239, 33.042877, 44.363663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195866, 33.440533, 44.402187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496867, 0.107946, -0.861087,
		-0.866438, -0.005604, 0.499253,
		0.049067, 0.994141, 0.096313,
		38.210587, 33.738773, 44.431080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596622, 33.207870, 44.022549>,  <38.176239, 33.042877, 44.363663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596622, 33.207870, 44.022549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818253, 33.539181, 44.055908>,  <37.951229, 33.737968, 44.075924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818253, 33.539181, 44.055908>,  <37.596622, 33.207870, 44.022549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818253, 33.539181, 44.055908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330920, 0.311067, -0.890915,
		-0.763869, 0.466035, 0.446448,
		0.554073, 0.828280, 0.083394,
		37.984474, 33.787666, 44.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192402, 33.933617, 43.928539>,  <37.596622, 33.207870, 44.022549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192402, 33.933617, 43.928539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576790, 33.984222, 43.830120>,  <37.807423, 34.014587, 43.771069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576790, 33.984222, 43.830120>,  <37.192402, 33.933617, 43.928539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576790, 33.984222, 43.830120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275524, 0.356892, -0.892589,
		-0.025116, 0.925539, 0.377819,
		0.960966, 0.126516, -0.246045,
		37.865078, 34.022179, 43.756306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099003, 34.416977, 43.392021>,  <37.192402, 33.933617, 43.928539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099003, 34.416977, 43.392021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480934, 34.302540, 43.359886>,  <37.710094, 34.233879, 43.340607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480934, 34.302540, 43.359886>,  <37.099003, 34.416977, 43.392021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480934, 34.302540, 43.359886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014226, 0.314043, -0.949302,
		0.296815, 0.905278, 0.303928,
		0.954829, -0.286091, -0.080334,
		37.767384, 34.216713, 43.335785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381924, 34.875431, 42.972263>,  <37.099003, 34.416977, 43.392021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381924, 34.875431, 42.972263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660522, 34.591427, 42.930759>,  <37.827682, 34.421024, 42.905857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660522, 34.591427, 42.930759>,  <37.381924, 34.875431, 42.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660522, 34.591427, 42.930759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035326, 0.178359, -0.983331,
		0.716686, 0.681226, 0.149309,
		0.696501, -0.710014, -0.103762,
		37.869473, 34.378422, 42.899632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895370, 35.174591, 42.507687>,  <37.381924, 34.875431, 42.972263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895370, 35.174591, 42.507687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955956, 34.779228, 42.503555>,  <37.992306, 34.542011, 42.501076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955956, 34.779228, 42.503555>,  <37.895370, 35.174591, 42.507687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955956, 34.779228, 42.503555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206180, 0.041810, -0.977621,
		0.966720, 0.145948, 0.210123,
		0.151467, -0.988409, -0.010327,
		38.001396, 34.482704, 42.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425320, 35.263657, 42.084991>,  <37.895370, 35.174591, 42.507687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425320, 35.263657, 42.084991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333302, 34.875004, 42.063019>,  <38.278091, 34.641811, 42.049835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333302, 34.875004, 42.063019>,  <38.425320, 35.263657, 42.084991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333302, 34.875004, 42.063019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286071, -0.013561, -0.958112,
		0.930185, -0.236121, 0.281075,
		-0.230042, -0.971629, -0.054933,
		38.264290, 34.583515, 42.046539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000610, 34.888035, 41.865929>,  <38.425320, 35.263657, 42.084991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000610, 34.888035, 41.865929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684406, 34.665844, 41.762749>,  <38.494682, 34.532532, 41.700840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684406, 34.665844, 41.762749>,  <39.000610, 34.888035, 41.865929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684406, 34.665844, 41.762749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248495, 0.094036, -0.964058,
		0.559766, -0.826199, 0.063696,
		-0.790514, -0.555475, -0.257945,
		38.447250, 34.499203, 41.685364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177563, 34.491062, 41.359097>,  <39.000610, 34.888035, 41.865929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177563, 34.491062, 41.359097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781174, 34.476604, 41.307468>,  <38.543339, 34.467930, 41.276493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781174, 34.476604, 41.307468>,  <39.177563, 34.491062, 41.359097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781174, 34.476604, 41.307468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127569, 0.041131, -0.990976,
		0.041131, -0.998500, -0.036148,
		0.990976, 0.036148, 0.129069,
		38.483879, 34.465759, 41.268749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067833, 33.910213, 40.877560>,  <39.177563, 34.491062, 41.359097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067833, 33.910213, 40.877560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736725, 34.134632, 40.875389>,  <38.538059, 34.269283, 40.874088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736725, 34.134632, 40.875389>,  <39.067833, 33.910213, 40.877560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736725, 34.134632, 40.875389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097818, 0.134786, -0.986035,
		-0.552480, -0.816738, -0.166452,
		-0.827767, 0.561046, -0.005425,
		38.488396, 34.302944, 40.873760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589199, 33.660999, 40.341663>,  <39.067833, 33.910213, 40.877560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589199, 33.660999, 40.341663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488010, 34.046093, 40.379932>,  <38.427296, 34.277149, 40.402893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488010, 34.046093, 40.379932>,  <38.589199, 33.660999, 40.341663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488010, 34.046093, 40.379932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101427, 0.124733, -0.986993,
		-0.962141, -0.239981, -0.129201,
		-0.252975, 0.962731, 0.095670,
		38.412117, 34.334911, 40.408634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066273, 33.775803, 39.726151>,  <38.589199, 33.660999, 40.341663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066273, 33.775803, 39.726151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197044, 34.136326, 39.839821>,  <38.275509, 34.352638, 39.908024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197044, 34.136326, 39.839821>,  <38.066273, 33.775803, 39.726151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197044, 34.136326, 39.839821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173803, 0.238230, -0.955531,
		-0.928928, 0.361786, -0.078765,
		0.326933, 0.901309, 0.284178,
		38.295124, 34.406719, 39.925076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814541, 34.164417, 39.249348>,  <38.066273, 33.775803, 39.726151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814541, 34.164417, 39.249348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064262, 34.418350, 39.431442>,  <38.214096, 34.570709, 39.540699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064262, 34.418350, 39.431442>,  <37.814541, 34.164417, 39.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064262, 34.418350, 39.431442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220669, 0.415709, -0.882322,
		-0.749370, 0.651290, 0.119440,
		0.624300, 0.634828, 0.455239,
		38.251553, 34.608799, 39.568012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550438, 34.870537, 39.114826>,  <37.814541, 34.164417, 39.249348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550438, 34.870537, 39.114826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946041, 34.856342, 39.172245>,  <38.183403, 34.847824, 39.206696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946041, 34.856342, 39.172245>,  <37.550438, 34.870537, 39.114826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946041, 34.856342, 39.172245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146883, 0.347884, -0.925960,
		-0.017080, 0.936866, 0.349272,
		0.989006, -0.035487, 0.143552,
		38.242744, 34.845695, 39.215309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653084, 35.401516, 38.745888>,  <37.550438, 34.870537, 39.114826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653084, 35.401516, 38.745888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020336, 35.245129, 38.771732>,  <38.240688, 35.151299, 38.787239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020336, 35.245129, 38.771732>,  <37.653084, 35.401516, 38.745888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020336, 35.245129, 38.771732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221268, 0.370553, -0.902070,
		0.328736, 0.842519, 0.426725,
		0.918135, -0.390964, 0.064609,
		38.295776, 35.127838, 38.791115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130512, 35.911362, 38.603630>,  <37.653084, 35.401516, 38.745888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130512, 35.911362, 38.603630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340633, 35.581745, 38.518768>,  <38.466705, 35.383976, 38.467850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340633, 35.581745, 38.518768>,  <38.130512, 35.911362, 38.603630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340633, 35.581745, 38.518768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254816, 0.390226, -0.884755,
		0.811867, 0.410701, 0.414966,
		0.525300, -0.824044, -0.212158,
		38.498222, 35.334534, 38.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682537, 36.131966, 38.146412>,  <38.130512, 35.911362, 38.603630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682537, 36.131966, 38.146412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675922, 35.734707, 38.100117>,  <38.671955, 35.496353, 38.072338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675922, 35.734707, 38.100117>,  <38.682537, 36.131966, 38.146412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675922, 35.734707, 38.100117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307341, 0.105102, -0.945778,
		0.951456, -0.051209, 0.303496,
		-0.016534, -0.993142, -0.115738,
		38.670963, 35.436764, 38.065395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428593, 35.925541, 37.886898>,  <38.682537, 36.131966, 38.146412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428593, 35.925541, 37.886898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157581, 35.651512, 37.779839>,  <38.994976, 35.487095, 37.715603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157581, 35.651512, 37.779839>,  <39.428593, 35.925541, 37.886898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157581, 35.651512, 37.779839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451990, -0.100741, -0.886316,
		0.580225, -0.721478, 0.377899,
		-0.677528, -0.685070, -0.267648,
		38.954323, 35.445992, 37.699543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787861, 35.363312, 37.652138>,  <39.428593, 35.925541, 37.886898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787861, 35.363312, 37.652138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420418, 35.318077, 37.500679>,  <39.199951, 35.290936, 37.409805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420418, 35.318077, 37.500679>,  <39.787861, 35.363312, 37.652138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420418, 35.318077, 37.500679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394679, -0.214793, -0.893360,
		0.019702, -0.970090, 0.241945,
		-0.918608, -0.113092, -0.378643,
		39.144836, 35.284149, 37.387085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714825, 34.700520, 37.356903>,  <39.787861, 35.363312, 37.652138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714825, 34.700520, 37.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461441, 34.933548, 37.153202>,  <39.309410, 35.073364, 37.030979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461441, 34.933548, 37.153202>,  <39.714825, 34.700520, 37.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461441, 34.933548, 37.153202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437177, -0.273572, -0.856758,
		-0.638441, -0.765355, -0.081390,
		-0.633458, 0.582571, -0.509256,
		39.271404, 35.108318, 37.000427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572414, 34.357273, 36.727642>,  <39.714825, 34.700520, 37.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572414, 34.357273, 36.727642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475864, 34.736324, 36.643986>,  <39.417934, 34.963757, 36.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475864, 34.736324, 36.643986>,  <39.572414, 34.357273, 36.727642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475864, 34.736324, 36.643986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459929, -0.078058, -0.884518,
		-0.854519, -0.309689, -0.417001,
		-0.241376, 0.947628, -0.209137,
		39.403450, 35.020615, 36.581245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240166, 34.395962, 36.131027>,  <39.572414, 34.357273, 36.727642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240166, 34.395962, 36.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390404, 34.765156, 36.164566>,  <39.480545, 34.986671, 36.184689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390404, 34.765156, 36.164566>,  <39.240166, 34.395962, 36.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390404, 34.765156, 36.164566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534752, -0.141935, -0.833003,
		-0.756948, 0.357707, -0.546877,
		0.375592, 0.922984, 0.083846,
		39.503082, 35.042049, 36.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136261, 34.795979, 35.508144>,  <39.240166, 34.395962, 36.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136261, 34.795979, 35.508144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468414, 34.910084, 35.699596>,  <39.667706, 34.978546, 35.814468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468414, 34.910084, 35.699596>,  <39.136261, 34.795979, 35.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468414, 34.910084, 35.699596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533668, -0.160201, -0.830382,
		-0.160201, 0.944965, -0.285265,
		0.830382, 0.285265, 0.478633,
		39.717529, 34.995663, 35.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625786, 35.095219, 35.043606>,  <39.136261, 34.795979, 35.508144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625786, 35.095219, 35.043606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861252, 34.982639, 35.346725>,  <40.002529, 34.915092, 35.528599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861252, 34.982639, 35.346725>,  <39.625786, 35.095219, 35.043606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861252, 34.982639, 35.346725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671723, -0.351238, -0.652242,
		0.449741, 0.892983, -0.017706,
		0.588661, -0.281446, 0.757804,
		40.037849, 34.898205, 35.574066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 35.306854, 34.842598>,  <39.625786, 35.095219, 35.043606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335590, 35.306854, 34.842598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351250, 35.008522, 35.108589>,  <40.360645, 34.829521, 35.268185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351250, 35.008522, 35.108589>,  <40.335590, 35.306854, 34.842598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351250, 35.008522, 35.108589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537589, -0.545251, -0.643195,
		0.842298, 0.382665, 0.379608,
		0.039147, -0.745834, 0.664980,
		40.362995, 34.784771, 35.308083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048462, 35.071003, 34.842762>,  <40.335590, 35.306854, 34.842598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048462, 35.071003, 34.842762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793015, 34.781124, 34.946289>,  <40.639748, 34.607197, 35.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793015, 34.781124, 34.946289>,  <41.048462, 35.071003, 34.842762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793015, 34.781124, 34.946289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429567, -0.614777, -0.661455,
		0.638471, -0.311233, 0.703910,
		-0.638614, -0.724696, 0.258822,
		40.601429, 34.563717, 35.023937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393612, 34.551743, 35.014725>,  <41.048462, 35.071003, 34.842762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393612, 34.551743, 35.014725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034485, 34.431324, 34.886169>,  <40.819008, 34.359074, 34.809036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034485, 34.431324, 34.886169>,  <41.393612, 34.551743, 35.014725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034485, 34.431324, 34.886169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440357, -0.609162, -0.659550,
		0.002775, -0.733684, 0.679485,
		-0.897818, -0.301047, -0.321393,
		40.765141, 34.341011, 34.789753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285515, 33.863457, 35.140579>,  <41.393612, 34.551743, 35.014725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285515, 33.863457, 35.140579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119591, 33.997082, 34.802032>,  <41.020035, 34.077255, 34.598904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119591, 33.997082, 34.802032>,  <41.285515, 33.863457, 35.140579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119591, 33.997082, 34.802032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470224, -0.717629, -0.513711,
		-0.778987, -0.611074, 0.140597,
		-0.414812, 0.334062, -0.846365,
		40.995148, 34.097301, 34.548122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097317, 33.298859, 34.765667>,  <41.285515, 33.863457, 35.140579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097317, 33.298859, 34.765667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106213, 33.551144, 34.455387>,  <41.111549, 33.702515, 34.269218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106213, 33.551144, 34.455387>,  <41.097317, 33.298859, 34.765667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106213, 33.551144, 34.455387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498701, -0.679466, -0.538167,
		-0.866489, -0.374870, -0.329651,
		0.022244, 0.630713, -0.775697,
		41.112885, 33.740356, 34.222679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584858, 32.954926, 34.271358>,  <41.097317, 33.298859, 34.765667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584858, 32.954926, 34.271358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982830, 32.971161, 34.234554>,  <42.221615, 32.980904, 34.212471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982830, 32.971161, 34.234554>,  <41.584858, 32.954926, 34.271358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982830, 32.971161, 34.234554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091375, -0.017287, -0.995666,
		-0.042006, 0.999026, -0.013491,
		0.994930, 0.040591, -0.092012,
		42.281311, 32.983337, 34.206951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668888, 33.434799, 33.780281>,  <41.584858, 32.954926, 34.271358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668888, 33.434799, 33.780281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017223, 33.238182, 33.778439>,  <42.226227, 33.120213, 33.777332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017223, 33.238182, 33.778439>,  <41.668888, 33.434799, 33.780281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017223, 33.238182, 33.778439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069559, 0.132491, -0.988740,
		0.486620, 0.860715, 0.149570,
		0.870840, -0.491545, -0.004603,
		42.278477, 33.090717, 33.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074902, 33.873577, 33.456623>,  <41.668888, 33.434799, 33.780281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074902, 33.873577, 33.456623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245693, 33.514000, 33.417461>,  <42.348167, 33.298252, 33.393963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245693, 33.514000, 33.417461>,  <42.074902, 33.873577, 33.456623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245693, 33.514000, 33.417461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022608, 0.118847, -0.992655,
		0.903978, 0.421632, 0.071069,
		0.426982, -0.898945, -0.097903,
		42.373787, 33.244316, 33.388092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644154, 34.037552, 32.921806>,  <42.074902, 33.873577, 33.456623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644154, 34.037552, 32.921806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565922, 33.648819, 32.974415>,  <42.518982, 33.415581, 33.005981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565922, 33.648819, 32.974415>,  <42.644154, 34.037552, 32.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565922, 33.648819, 32.974415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201057, -0.171001, -0.964539,
		0.959857, -0.162199, 0.228837,
		-0.195579, -0.971828, 0.131525,
		42.507248, 33.357269, 33.013874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252083, 33.647961, 32.583385>,  <42.644154, 34.037552, 32.921806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252083, 33.647961, 32.583385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925365, 33.418015, 32.602863>,  <42.729336, 33.280045, 32.614552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925365, 33.418015, 32.602863>,  <43.252083, 33.647961, 32.583385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925365, 33.418015, 32.602863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103324, -0.228805, -0.967973,
		0.567598, -0.785605, 0.246285,
		-0.816796, -0.574867, 0.048697,
		42.680328, 33.245556, 32.617474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439892, 33.196938, 32.069309>,  <43.252083, 33.647961, 32.583385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439892, 33.196938, 32.069309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048630, 33.141743, 32.131489>,  <42.813873, 33.108627, 32.168797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048630, 33.141743, 32.131489>,  <43.439892, 33.196938, 32.069309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048630, 33.141743, 32.131489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176932, 0.160231, -0.971093,
		0.109079, -0.977389, -0.181143,
		-0.978160, -0.137975, 0.155453,
		42.755180, 33.100349, 32.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225807, 32.762581, 31.572554>,  <43.439892, 33.196938, 32.069309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225807, 32.762581, 31.572554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870045, 32.906898, 31.684826>,  <42.656586, 32.993488, 31.752190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870045, 32.906898, 31.684826>,  <43.225807, 32.762581, 31.572554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870045, 32.906898, 31.684826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308554, -0.020813, -0.950979,
		-0.337268, -0.932412, 0.129836,
		-0.889407, 0.360796, 0.280680,
		42.603222, 33.015137, 31.769030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620655, 32.351532, 31.269857>,  <43.225807, 32.762581, 31.572554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620655, 32.351532, 31.269857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449108, 32.706749, 31.336143>,  <42.346180, 32.919880, 31.375916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449108, 32.706749, 31.336143>,  <42.620655, 32.351532, 31.269857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449108, 32.706749, 31.336143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148289, 0.111750, -0.982610,
		-0.891115, -0.445980, 0.083760,
		-0.428864, 0.888039, 0.165716,
		42.320450, 32.973160, 31.385859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098061, 32.332703, 30.821165>,  <42.620655, 32.351532, 31.269857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098061, 32.332703, 30.821165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148586, 32.712379, 30.936455>,  <42.178902, 32.940186, 31.005629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148586, 32.712379, 30.936455>,  <42.098061, 32.332703, 30.821165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148586, 32.712379, 30.936455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035104, 0.286091, -0.957559,
		-0.991369, 0.131071, 0.002817,
		0.126314, 0.949196, 0.288223,
		42.186481, 32.997139, 31.022923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538033, 32.680138, 30.464403>,  <42.098061, 32.332703, 30.821165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538033, 32.680138, 30.464403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817051, 32.954025, 30.548861>,  <41.984463, 33.118359, 30.599535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817051, 32.954025, 30.548861>,  <41.538033, 32.680138, 30.464403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817051, 32.954025, 30.548861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022864, 0.315792, -0.948553,
		-0.716171, 0.656836, 0.235936,
		0.697550, 0.684720, 0.211143,
		42.026318, 33.159443, 30.612204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385750, 33.273396, 30.139969>,  <41.538033, 32.680138, 30.464403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385750, 33.273396, 30.139969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776855, 33.337410, 30.194178>,  <42.011520, 33.375820, 30.226702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776855, 33.337410, 30.194178>,  <41.385750, 33.273396, 30.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776855, 33.337410, 30.194178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063098, 0.391772, -0.917896,
		-0.199990, 0.906037, 0.372962,
		0.977764, 0.160037, 0.135520,
		42.070183, 33.385422, 30.234833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655304, 33.802052, 29.662113>,  <41.385750, 33.273396, 30.139969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655304, 33.802052, 29.662113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022255, 33.694702, 29.779686>,  <42.242424, 33.630291, 29.850229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022255, 33.694702, 29.779686>,  <41.655304, 33.802052, 29.662113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022255, 33.694702, 29.779686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319159, 0.054744, -0.946118,
		0.237825, 0.961757, 0.135876,
		0.917375, -0.268377, 0.293934,
		42.297466, 33.614189, 29.867867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196709, 34.334679, 29.328337>,  <41.655304, 33.802052, 29.662113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196709, 34.334679, 29.328337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388252, 33.992676, 29.407999>,  <42.503178, 33.787476, 29.455797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388252, 33.992676, 29.407999>,  <42.196709, 34.334679, 29.328337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388252, 33.992676, 29.407999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545963, 0.112385, -0.830238,
		0.687475, 0.506297, 0.520617,
		0.478856, -0.855005, 0.199157,
		42.531910, 33.736176, 29.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008991, 34.516525, 29.192373>,  <42.196709, 34.334679, 29.328337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008991, 34.516525, 29.192373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955994, 34.120312, 29.206676>,  <42.924194, 33.882584, 29.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955994, 34.120312, 29.206676>,  <43.008991, 34.516525, 29.192373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955994, 34.120312, 29.206676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464756, -0.093951, -0.880440,
		0.875470, -0.100034, 0.472806,
		-0.132494, -0.990538, 0.035760,
		42.916245, 33.823151, 29.217405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730076, 34.165962, 29.109516>,  <43.008991, 34.516525, 29.192373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730076, 34.165962, 29.109516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447399, 33.901600, 29.008484>,  <43.277794, 33.742981, 28.947865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447399, 33.901600, 29.008484>,  <43.730076, 34.165962, 29.109516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447399, 33.901600, 29.008484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486107, -0.194144, -0.852061,
		0.514094, -0.724923, 0.458469,
		-0.706688, -0.660904, -0.252582,
		43.235394, 33.703327, 28.932709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138054, 33.684776, 28.814337>,  <43.730076, 34.165962, 29.109516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138054, 33.684776, 28.814337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778118, 33.602604, 28.660406>,  <43.562157, 33.553299, 28.568048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778118, 33.602604, 28.660406>,  <44.138054, 33.684776, 28.814337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778118, 33.602604, 28.660406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420009, -0.169710, -0.891510,
		0.117837, -0.963844, 0.238995,
		-0.899837, -0.205433, -0.384826,
		43.508167, 33.540974, 28.544958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293751, 33.113518, 28.416121>,  <44.138054, 33.684776, 28.814337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293751, 33.113518, 28.416121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931301, 33.205250, 28.273941>,  <43.713829, 33.260288, 28.188633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931301, 33.205250, 28.273941>,  <44.293751, 33.113518, 28.416121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931301, 33.205250, 28.273941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224596, -0.451236, -0.863680,
		-0.358456, -0.862436, 0.357372,
		-0.906127, 0.229327, -0.355448,
		43.659462, 33.274048, 28.167307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065800, 32.557465, 28.074665>,  <44.293751, 33.113518, 28.416121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065800, 32.557465, 28.074665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832783, 32.826263, 27.891771>,  <43.692974, 32.987545, 27.782034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832783, 32.826263, 27.891771>,  <44.065800, 32.557465, 28.074665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832783, 32.826263, 27.891771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176991, -0.444167, -0.878288,
		-0.793297, -0.592565, 0.139807,
		-0.582540, 0.671999, -0.457235,
		43.658020, 33.027863, 27.754601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518703, 32.207787, 27.736908>,  <44.065800, 32.557465, 28.074665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518703, 32.207787, 27.736908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584312, 32.568314, 27.576550>,  <43.623680, 32.784630, 27.480333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584312, 32.568314, 27.576550>,  <43.518703, 32.207787, 27.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584312, 32.568314, 27.576550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237575, -0.430535, -0.870745,
		-0.957420, 0.047582, -0.284751,
		0.164027, 0.901319, -0.400898,
		43.633522, 32.838711, 27.456280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228004, 32.103756, 27.174381>,  <43.518703, 32.207787, 27.736908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228004, 32.103756, 27.174381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435081, 32.440460, 27.113142>,  <43.559326, 32.642483, 27.076399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435081, 32.440460, 27.113142>,  <43.228004, 32.103756, 27.174381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435081, 32.440460, 27.113142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289493, -0.340732, -0.894481,
		-0.805101, 0.418746, -0.420077,
		0.517693, 0.841757, -0.153099,
		43.590389, 32.692986, 27.067213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904942, 32.517006, 26.648441>,  <43.228004, 32.103756, 27.174381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904942, 32.517006, 26.648441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288261, 32.630764, 26.659630>,  <43.518253, 32.699020, 26.666344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288261, 32.630764, 26.659630>,  <42.904942, 32.517006, 26.648441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288261, 32.630764, 26.659630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125409, -0.330582, -0.935408,
		-0.256778, 0.899908, -0.352463,
		0.958299, 0.284395, 0.027971,
		43.575752, 32.716084, 26.668020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115589, 32.560833, 25.939484>,  <42.904942, 32.517006, 26.648441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115589, 32.560833, 25.939484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428600, 32.802315, 25.878574>,  <43.616409, 32.947205, 25.842028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428600, 32.802315, 25.878574>,  <43.115589, 32.560833, 25.939484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428600, 32.802315, 25.878574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617300, -0.720411, 0.316147,
		0.081158, -0.341394, -0.936410,
		0.782531, 0.603703, -0.152275,
		43.663361, 32.983425, 25.832891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702564, 32.319038, 25.507084>,  <43.115589, 32.560833, 25.939484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702564, 32.319038, 25.507084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840958, 32.558060, 25.796421>,  <43.923992, 32.701473, 25.970022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840958, 32.558060, 25.796421>,  <43.702564, 32.319038, 25.507084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840958, 32.558060, 25.796421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418218, -0.788349, 0.451219,
		0.839874, 0.146400, -0.522665,
		0.345984, 0.597556, 0.723341,
		43.944752, 32.737328, 26.013424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341526, 32.106144, 25.585808>,  <43.702564, 32.319038, 25.507084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341526, 32.106144, 25.585808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274982, 32.270695, 25.944269>,  <44.235054, 32.369427, 26.159346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274982, 32.270695, 25.944269>,  <44.341526, 32.106144, 25.585808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274982, 32.270695, 25.944269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364563, -0.818764, 0.443531,
		0.916197, 0.400491, -0.013762,
		-0.166362, 0.411379, 0.896154,
		44.225075, 32.394108, 26.213116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716324, 31.700958, 25.247181>,  <44.341526, 32.106144, 25.585808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716324, 31.700958, 25.247181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780460, 31.346319, 25.073637>,  <44.818943, 31.133535, 24.969511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780460, 31.346319, 25.073637>,  <44.716324, 31.700958, 25.247181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780460, 31.346319, 25.073637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288984, -0.378119, 0.879496,
		-0.943810, -0.266402, 0.195583,
		0.160346, -0.886598, -0.433859,
		44.828564, 31.080339, 24.943480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569687, 31.131128, 25.736731>,  <44.716324, 31.700958, 25.247181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569687, 31.131128, 25.736731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861538, 30.984785, 25.505632>,  <45.036648, 30.896978, 25.366974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861538, 30.984785, 25.505632>,  <44.569687, 31.131128, 25.736731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861538, 30.984785, 25.505632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423920, -0.420950, 0.801931,
		-0.536594, -0.830030, -0.152043,
		0.729629, -0.365858, -0.577746,
		45.080425, 30.875027, 25.332308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565830, 30.487663, 25.893505>,  <44.569687, 31.131128, 25.736731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565830, 30.487663, 25.893505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926365, 30.604670, 25.765743>,  <45.142685, 30.674873, 25.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926365, 30.604670, 25.765743>,  <44.565830, 30.487663, 25.893505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926365, 30.604670, 25.765743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406588, -0.317371, 0.856715,
		0.149231, -0.902059, -0.404993,
		0.901341, 0.292514, -0.319405,
		45.196766, 30.692423, 25.669922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890568, 29.885778, 26.012306>,  <44.565830, 30.487663, 25.893505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890568, 29.885778, 26.012306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110256, 30.220007, 26.006990>,  <45.242069, 30.420544, 26.003801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110256, 30.220007, 26.006990>,  <44.890568, 29.885778, 26.012306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110256, 30.220007, 26.006990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292187, -0.177111, 0.939819,
		0.782930, -0.520054, -0.341416,
		0.549225, 0.835569, -0.013288,
		45.275024, 30.470678, 26.003004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689857, 29.952980, 26.199976>,  <44.890568, 29.885778, 26.012306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689857, 29.952980, 26.199976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529922, 30.307808, 26.292271>,  <45.433960, 30.520704, 26.347649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529922, 30.307808, 26.292271>,  <45.689857, 29.952980, 26.199976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529922, 30.307808, 26.292271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265247, -0.128984, 0.955514,
		0.877368, 0.443252, -0.183720,
		-0.399836, 0.887069, 0.230738,
		45.409973, 30.573929, 26.361492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220806, 30.314011, 26.582218>,  <45.689857, 29.952980, 26.199976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220806, 30.314011, 26.582218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852398, 30.455240, 26.648022>,  <45.631355, 30.539978, 26.687504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852398, 30.455240, 26.648022>,  <46.220806, 30.314011, 26.582218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852398, 30.455240, 26.648022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078315, -0.245864, 0.966135,
		0.381564, 0.902712, 0.198795,
		-0.921019, 0.353074, 0.164509,
		45.576092, 30.561163, 26.697374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228596, 30.751675, 27.115955>,  <46.220806, 30.314011, 26.582218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228596, 30.751675, 27.115955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836983, 30.671909, 27.099339>,  <45.602013, 30.624050, 27.089369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836983, 30.671909, 27.099339>,  <46.228596, 30.751675, 27.115955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836983, 30.671909, 27.099339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070628, 0.141049, 0.987480,
		-0.191059, 0.969711, -0.152176,
		-0.979034, -0.199415, -0.041540,
		45.543274, 30.612085, 27.086876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746037, 31.356867, 27.190475>,  <46.228596, 30.751675, 27.115955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746037, 31.356867, 27.190475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553585, 31.029951, 27.317316>,  <45.438114, 30.833801, 27.393421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553585, 31.029951, 27.317316>,  <45.746037, 31.356867, 27.190475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553585, 31.029951, 27.317316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079666, 0.400985, 0.912614,
		-0.873023, 0.413821, -0.258035,
		-0.481127, -0.817290, 0.317101,
		45.409248, 30.784763, 27.412447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094196, 31.543205, 27.480274>,  <45.746037, 31.356867, 27.190475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094196, 31.543205, 27.480274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217403, 31.199127, 27.642849>,  <45.291328, 30.992682, 27.740395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217403, 31.199127, 27.642849>,  <45.094196, 31.543205, 27.480274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217403, 31.199127, 27.642849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061146, 0.408426, 0.910741,
		-0.949413, -0.305379, 0.073206,
		0.308020, -0.860193, 0.406438,
		45.309811, 30.941069, 27.764780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677124, 31.342493, 28.129328>,  <45.094196, 31.543205, 27.480274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677124, 31.342493, 28.129328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032997, 31.161814, 28.155937>,  <45.246521, 31.053406, 28.171902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032997, 31.161814, 28.155937>,  <44.677124, 31.342493, 28.129328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032997, 31.161814, 28.155937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031527, 0.206130, 0.978016,
		-0.455482, -0.868031, 0.197632,
		0.889687, -0.451700, 0.066522,
		45.299904, 31.026304, 28.175894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591316, 30.960382, 28.696526>,  <44.677124, 31.342493, 28.129328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591316, 30.960382, 28.696526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986465, 30.989624, 28.641741>,  <45.223557, 31.007170, 28.608870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986465, 30.989624, 28.641741>,  <44.591316, 30.960382, 28.696526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986465, 30.989624, 28.641741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112392, 0.271825, 0.955761,
		0.107099, -0.959566, 0.260313,
		0.987876, 0.073104, -0.136960,
		45.282829, 31.011555, 28.600653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917202, 30.677908, 29.278309>,  <44.591316, 30.960382, 28.696526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917202, 30.677908, 29.278309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220108, 30.875826, 29.107790>,  <45.401852, 30.994576, 29.005478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220108, 30.875826, 29.107790>,  <44.917202, 30.677908, 29.278309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220108, 30.875826, 29.107790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232878, 0.405254, 0.884046,
		0.610180, -0.768731, 0.191657,
		0.757263, 0.494794, -0.426298,
		45.447289, 31.024263, 28.979900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372833, 30.648666, 29.881800>,  <44.917202, 30.677908, 29.278309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372833, 30.648666, 29.881800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505566, 30.932152, 29.632767>,  <45.585205, 31.102243, 29.483347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505566, 30.932152, 29.632767>,  <45.372833, 30.648666, 29.881800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505566, 30.932152, 29.632767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380709, 0.503233, 0.775768,
		0.863103, -0.494449, -0.102825,
		0.331833, 0.708714, -0.622584,
		45.605114, 31.144766, 29.445992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093647, 30.605251, 29.858545>,  <45.372833, 30.648666, 29.881800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093647, 30.605251, 29.858545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966175, 30.976889, 29.783472>,  <45.889690, 31.199871, 29.738428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966175, 30.976889, 29.783472>,  <46.093647, 30.605251, 29.858545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966175, 30.976889, 29.783472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334534, 0.295511, 0.894852,
		0.886864, 0.222387, -0.404988,
		-0.318682, 0.929095, -0.187682,
		45.870571, 31.255617, 29.727167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564617, 31.074709, 30.189823>,  <46.093647, 30.605251, 29.858545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564617, 31.074709, 30.189823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258636, 31.325069, 30.129028>,  <46.075050, 31.475286, 30.092552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258636, 31.325069, 30.129028>,  <46.564617, 31.074709, 30.189823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258636, 31.325069, 30.129028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083361, 0.330190, 0.940226,
		0.638673, 0.706556, -0.304754,
		-0.764949, 0.625902, -0.151985,
		46.029152, 31.512840, 30.083433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802418, 31.706072, 30.443909>,  <46.564617, 31.074709, 30.189823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802418, 31.706072, 30.443909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403801, 31.727446, 30.469362>,  <46.164631, 31.740271, 30.484634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403801, 31.727446, 30.469362>,  <46.802418, 31.706072, 30.443909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403801, 31.727446, 30.469362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081409, 0.474432, 0.876520,
		0.016648, 0.878669, -0.477142,
		-0.996542, 0.053436, 0.063633,
		46.104839, 31.743477, 30.488453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725075, 32.311710, 30.762180>,  <46.802418, 31.706072, 30.443909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725075, 32.311710, 30.762180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374306, 32.122200, 30.794538>,  <46.163845, 32.008495, 30.813953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374306, 32.122200, 30.794538>,  <46.725075, 32.311710, 30.762180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374306, 32.122200, 30.794538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194328, 0.503440, 0.841894,
		-0.439593, 0.722556, -0.533546,
		-0.876924, -0.473773, 0.080896,
		46.111229, 31.980068, 30.818808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169842, 32.817333, 30.778149>,  <46.725075, 32.311710, 30.762180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169842, 32.817333, 30.778149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065334, 32.475620, 30.957903>,  <46.002628, 32.270592, 31.065756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065334, 32.475620, 30.957903>,  <46.169842, 32.817333, 30.778149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065334, 32.475620, 30.957903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415311, 0.519746, 0.746579,
		-0.871352, 0.008424, -0.490586,
		-0.261269, -0.854279, 0.449384,
		45.986954, 32.219337, 31.092718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632767, 33.031021, 31.119177>,  <46.169842, 32.817333, 30.778149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632767, 33.031021, 31.119177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692402, 32.679623, 31.300735>,  <45.728184, 32.468784, 31.409670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692402, 32.679623, 31.300735>,  <45.632767, 33.031021, 31.119177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692402, 32.679623, 31.300735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400767, 0.365953, 0.839920,
		-0.903969, -0.307127, -0.297512,
		0.149086, -0.878494, 0.453896,
		45.737129, 32.416073, 31.436905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996338, 32.932350, 31.349905>,  <45.632767, 33.031021, 31.119177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996338, 32.932350, 31.349905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248909, 32.714207, 31.570406>,  <45.400452, 32.583321, 31.702707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248909, 32.714207, 31.570406>,  <44.996338, 32.932350, 31.349905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248909, 32.714207, 31.570406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339036, 0.445186, 0.828773,
		-0.697389, -0.710206, 0.096207,
		0.631429, -0.545359, 0.551253,
		45.438339, 32.550598, 31.735783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685867, 32.594818, 31.856855>,  <44.996338, 32.932350, 31.349905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685867, 32.594818, 31.856855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059494, 32.621407, 31.997202>,  <45.283669, 32.637360, 32.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059494, 32.621407, 31.997202>,  <44.685867, 32.594818, 31.856855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059494, 32.621407, 31.997202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346735, 0.403908, 0.846542,
		-0.085444, -0.912381, 0.400325,
		0.934063, 0.066475, 0.350866,
		45.339714, 32.641350, 32.102463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492455, 32.356274, 32.458778>,  <44.685867, 32.594818, 31.856855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492455, 32.356274, 32.458778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854172, 32.523235, 32.494621>,  <45.071201, 32.623413, 32.516125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854172, 32.523235, 32.494621>,  <44.492455, 32.356274, 32.458778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854172, 32.523235, 32.494621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251732, 0.351827, 0.901581,
		0.344752, -0.837870, 0.423224,
		0.904310, 0.417362, 0.089626,
		45.125458, 32.648457, 32.521503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601799, 32.378159, 33.224998>,  <44.492455, 32.356274, 32.458778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601799, 32.378159, 33.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871956, 32.635483, 33.080780>,  <45.034050, 32.789875, 32.994247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871956, 32.635483, 33.080780>,  <44.601799, 32.378159, 33.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871956, 32.635483, 33.080780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096610, 0.561883, 0.821556,
		0.731100, -0.520043, 0.441644,
		0.675396, 0.643306, -0.360551,
		45.074574, 32.828476, 32.972614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164673, 32.397732, 33.703476>,  <44.601799, 32.378159, 33.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164673, 32.397732, 33.703476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162418, 32.744015, 33.503269>,  <45.161064, 32.951786, 33.383144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162418, 32.744015, 33.503269>,  <45.164673, 32.397732, 33.703476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162418, 32.744015, 33.503269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028091, 0.500467, 0.865299,
		0.999589, -0.009182, -0.027140,
		-0.005638, 0.865707, -0.500520,
		45.160728, 33.003727, 33.353115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604321, 32.825058, 34.073959>,  <45.164673, 32.397732, 33.703476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604321, 32.825058, 34.073959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375610, 33.078781, 33.865833>,  <45.238384, 33.231014, 33.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375610, 33.078781, 33.865833>,  <45.604321, 32.825058, 34.073959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375610, 33.078781, 33.865833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073332, 0.592162, 0.802475,
		0.817126, 0.496991, -0.292069,
		-0.571776, 0.634305, -0.520317,
		45.204079, 33.269073, 33.709740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883854, 33.463242, 34.237755>,  <45.604321, 32.825058, 34.073959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883854, 33.463242, 34.237755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526009, 33.551392, 34.082264>,  <45.311302, 33.604282, 33.988972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526009, 33.551392, 34.082264>,  <45.883854, 33.463242, 34.237755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526009, 33.551392, 34.082264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116940, 0.724151, 0.679654,
		0.431273, 0.653484, -0.622063,
		-0.894611, 0.220372, -0.388725,
		45.257626, 33.617504, 33.965645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840637, 34.164658, 34.278404>,  <45.883854, 33.463242, 34.237755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840637, 34.164658, 34.278404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462894, 34.033100, 34.276882>,  <45.236248, 33.954166, 34.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462894, 34.033100, 34.276882>,  <45.840637, 34.164658, 34.278404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462894, 34.033100, 34.276882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198771, 0.561443, 0.803288,
		-0.262063, 0.759348, -0.595578,
		-0.944359, -0.328896, -0.003804,
		45.179588, 33.934433, 34.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417492, 34.719723, 34.521526>,  <45.840637, 34.164658, 34.278404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417492, 34.719723, 34.521526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220123, 34.378731, 34.590591>,  <45.101704, 34.174133, 34.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220123, 34.378731, 34.590591>,  <45.417492, 34.719723, 34.521526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220123, 34.378731, 34.590591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372564, 0.386519, 0.843682,
		-0.785960, 0.351962, -0.508320,
		-0.493419, -0.852482, 0.172661,
		45.072098, 34.122986, 34.642391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171360, 34.810429, 34.622150>,  <45.417492, 34.719723, 34.521526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171360, 34.810429, 34.622150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449726, 35.087326, 34.545727>,  <46.616745, 35.253464, 34.499870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449726, 35.087326, 34.545727>,  <46.171360, 34.810429, 34.622150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449726, 35.087326, 34.545727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617061, -0.440333, 0.652182,
		0.367335, -0.571761, -0.733590,
		0.695917, 0.692239, -0.191062,
		46.658501, 35.294998, 34.488407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685722, 34.455254, 34.814445>,  <46.171360, 34.810429, 34.622150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685722, 34.455254, 34.814445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851902, 34.816929, 34.774738>,  <46.951611, 35.033932, 34.750912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851902, 34.816929, 34.774738>,  <46.685722, 34.455254, 34.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851902, 34.816929, 34.774738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769531, -0.291177, 0.568364,
		0.485001, -0.312516, -0.816767,
		0.415447, 0.904184, -0.099270,
		46.976536, 35.088184, 34.744957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364952, 34.545597, 34.404217>,  <46.685722, 34.455254, 34.814445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364952, 34.545597, 34.404217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323059, 34.805523, 34.705357>,  <47.297924, 34.961479, 34.886040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323059, 34.805523, 34.705357>,  <47.364952, 34.545597, 34.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323059, 34.805523, 34.705357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863183, -0.316565, 0.393322,
		0.493909, 0.691037, -0.527751,
		-0.104733, 0.649811, 0.752846,
		47.291637, 35.000465, 34.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.022633, 35.040989, 34.463573>,  <47.364952, 34.545597, 34.404217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.022633, 35.040989, 34.463573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828247, 34.965687, 34.804958>,  <47.711617, 34.920506, 35.009789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828247, 34.965687, 34.804958>,  <48.022633, 35.040989, 34.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828247, 34.965687, 34.804958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806362, -0.473204, 0.354765,
		0.337075, 0.860603, 0.381764,
		-0.485964, -0.188257, 0.853462,
		47.682457, 34.909210, 35.060997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.548279, 37.737949, 45.724247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160992, 37.820602, 45.780613>,  <35.928619, 37.870193, 45.814430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160992, 37.820602, 45.780613>,  <36.548279, 37.737949, 45.724247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160992, 37.820602, 45.780613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160421, -0.080842, -0.983732,
		-0.191883, -0.975072, 0.111422,
		-0.968218, 0.206636, 0.140910,
		35.870525, 37.882591, 45.822887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255718, 37.163754, 45.440807>,  <36.548279, 37.737949, 45.724247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255718, 37.163754, 45.440807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991142, 37.463753, 45.440376>,  <35.832397, 37.643753, 45.440117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991142, 37.463753, 45.440376>,  <36.255718, 37.163754, 45.440807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991142, 37.463753, 45.440376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005809, 0.003692, -0.999976,
		-0.749978, -0.661428, -0.006799,
		-0.661438, 0.749999, -0.001073,
		35.792709, 37.688751, 45.440056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806149, 36.890125, 45.012184>,  <36.255718, 37.163754, 45.440807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806149, 36.890125, 45.012184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729137, 37.282604, 45.017715>,  <35.682930, 37.518089, 45.021034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729137, 37.282604, 45.017715>,  <35.806149, 36.890125, 45.012184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729137, 37.282604, 45.017715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159127, -0.017314, -0.987106,
		-0.968303, -0.192248, 0.159467,
		-0.192530, 0.981194, 0.013827,
		35.671379, 37.576962, 45.021862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156349, 36.980389, 44.743664>,  <35.806149, 36.890125, 45.012184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156349, 36.980389, 44.743664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314140, 37.346600, 44.712177>,  <35.408817, 37.566326, 44.693283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314140, 37.346600, 44.712177>,  <35.156349, 36.980389, 44.743664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314140, 37.346600, 44.712177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124073, -0.031815, -0.991763,
		-0.910490, 0.400997, 0.101042,
		0.394480, 0.915527, -0.078720,
		35.432484, 37.621258, 44.688560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763000, 37.267967, 44.253056>,  <35.156349, 36.980389, 44.743664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763000, 37.267967, 44.253056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066006, 37.528957, 44.244617>,  <35.247810, 37.685551, 44.239555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066006, 37.528957, 44.244617>,  <34.763000, 37.267967, 44.253056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066006, 37.528957, 44.244617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118638, 0.105811, -0.987284,
		-0.641948, 0.750385, 0.157562,
		0.757514, 0.652477, -0.021099,
		35.293259, 37.724701, 44.238289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525166, 37.938938, 44.023731>,  <34.763000, 37.267967, 44.253056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525166, 37.938938, 44.023731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914845, 37.935375, 43.933514>,  <35.148651, 37.933239, 43.879383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914845, 37.935375, 43.933514>,  <34.525166, 37.938938, 44.023731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914845, 37.935375, 43.933514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213121, 0.292833, -0.932110,
		0.074350, 0.956122, 0.283377,
		0.974193, -0.008909, -0.225541,
		35.207104, 37.932701, 43.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510033, 38.296787, 43.423637>,  <34.525166, 37.938938, 44.023731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510033, 38.296787, 43.423637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879765, 38.144485, 43.413551>,  <35.101604, 38.053104, 43.407501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879765, 38.144485, 43.413551>,  <34.510033, 38.296787, 43.423637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879765, 38.144485, 43.413551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022606, 0.120603, -0.992443,
		0.380916, 0.916778, 0.120084,
		0.924333, -0.380753, -0.025215,
		35.157066, 38.030258, 43.405987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872826, 38.726360, 42.958435>,  <34.510033, 38.296787, 43.423637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872826, 38.726360, 42.958435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093834, 38.393787, 42.981869>,  <35.226440, 38.194244, 42.995930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093834, 38.393787, 42.981869>,  <34.872826, 38.726360, 42.958435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093834, 38.393787, 42.981869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282836, 0.120913, -0.951516,
		0.784042, 0.542304, 0.301968,
		0.552523, -0.831436, 0.058582,
		35.259590, 38.144356, 42.999443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438889, 38.828861, 42.557362>,  <34.872826, 38.726360, 42.958435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438889, 38.828861, 42.557362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444786, 38.429081, 42.569180>,  <35.448326, 38.189213, 42.576271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444786, 38.429081, 42.569180>,  <35.438889, 38.828861, 42.557362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444786, 38.429081, 42.569180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202432, -0.025948, -0.978952,
		0.979185, 0.020415, 0.201939,
		0.014746, -0.999455, 0.029541,
		35.449211, 38.129246, 42.578041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955303, 38.630524, 42.096355>,  <35.438889, 38.828861, 42.557362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955303, 38.630524, 42.096355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734844, 38.302849, 42.159817>,  <35.602570, 38.106243, 42.197895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734844, 38.302849, 42.159817>,  <35.955303, 38.630524, 42.096355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734844, 38.302849, 42.159817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081543, -0.242111, -0.966816,
		0.830415, -0.519919, 0.200237,
		-0.551145, -0.819187, 0.158657,
		35.569500, 38.057095, 42.207413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352726, 37.951599, 41.930515>,  <35.955303, 38.630524, 42.096355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352726, 37.951599, 41.930515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956631, 37.932220, 41.878246>,  <35.718971, 37.920593, 41.846886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956631, 37.932220, 41.878246>,  <36.352726, 37.951599, 41.930515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956631, 37.932220, 41.878246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136170, -0.136805, -0.981194,
		0.029659, -0.989413, 0.142067,
		-0.990242, -0.048447, -0.130670,
		35.659557, 37.917686, 41.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255085, 37.357830, 41.610760>,  <36.352726, 37.951599, 41.930515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255085, 37.357830, 41.610760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931648, 37.584881, 41.548820>,  <35.737587, 37.721111, 41.511658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931648, 37.584881, 41.548820>,  <36.255085, 37.357830, 41.610760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931648, 37.584881, 41.548820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158685, -0.043030, -0.986391,
		-0.566563, -0.822162, -0.055280,
		-0.808595, 0.567624, -0.154844,
		35.689068, 37.755169, 41.502369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806602, 36.869610, 41.175629>,  <36.255085, 37.357830, 41.610760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806602, 36.869610, 41.175629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595081, 37.207638, 41.144054>,  <35.468170, 37.410454, 41.125111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595081, 37.207638, 41.144054>,  <35.806602, 36.869610, 41.175629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595081, 37.207638, 41.144054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266893, 0.077280, -0.960623,
		-0.805690, -0.529047, -0.266408,
		-0.528802, 0.845066, -0.078936,
		35.436440, 37.461159, 41.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421745, 36.760262, 40.521271>,  <35.806602, 36.869610, 41.175629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421745, 36.760262, 40.521271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441265, 37.153805, 40.590141>,  <35.452976, 37.389931, 40.631462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441265, 37.153805, 40.590141>,  <35.421745, 36.760262, 40.521271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441265, 37.153805, 40.590141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239074, 0.155866, -0.958410,
		-0.969774, 0.087931, -0.227609,
		0.048797, 0.983857, 0.172177,
		35.455906, 37.448963, 40.641796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950905, 36.955635, 40.130539>,  <35.421745, 36.760262, 40.521271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950905, 36.955635, 40.130539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170551, 37.288254, 40.164001>,  <35.302338, 37.487827, 40.184078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170551, 37.288254, 40.164001>,  <34.950905, 36.955635, 40.130539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170551, 37.288254, 40.164001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120228, 0.177655, -0.976721,
		-0.827053, 0.526275, 0.197528,
		0.549116, 0.831549, 0.083657,
		35.335285, 37.537720, 40.189098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608513, 37.484253, 39.811485>,  <34.950905, 36.955635, 40.130539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608513, 37.484253, 39.811485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984821, 37.619514, 39.821209>,  <35.210606, 37.700672, 39.827042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984821, 37.619514, 39.821209>,  <34.608513, 37.484253, 39.811485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984821, 37.619514, 39.821209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078809, 0.287865, -0.954423,
		-0.329742, 0.895982, 0.297466,
		0.940776, 0.338157, 0.024309,
		35.267056, 37.720963, 39.828503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618771, 38.079063, 39.376793>,  <34.608513, 37.484253, 39.811485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618771, 38.079063, 39.376793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002296, 37.972027, 39.414867>,  <35.232414, 37.907806, 39.437714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002296, 37.972027, 39.414867>,  <34.618771, 38.079063, 39.376793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002296, 37.972027, 39.414867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127945, 0.107741, -0.985912,
		0.253567, 0.957489, 0.137541,
		0.958819, -0.267593, 0.095186,
		35.289944, 37.891750, 39.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966351, 38.638435, 39.084137>,  <34.618771, 38.079063, 39.376793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966351, 38.638435, 39.084137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236031, 38.343021, 39.085487>,  <35.397839, 38.165771, 39.086296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236031, 38.343021, 39.085487>,  <34.966351, 38.638435, 39.084137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236031, 38.343021, 39.085487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382198, 0.344991, -0.857266,
		0.631960, 0.579261, 0.514862,
		0.674204, -0.738537, 0.003372,
		35.438293, 38.121460, 39.086498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694038, 38.936260, 39.027950>,  <34.966351, 38.638435, 39.084137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694038, 38.936260, 39.027950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678841, 38.558716, 38.896690>,  <35.669720, 38.332188, 38.817932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678841, 38.558716, 38.896690>,  <35.694038, 38.936260, 39.027950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678841, 38.558716, 38.896690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417598, 0.283343, -0.863325,
		0.907837, -0.169840, 0.383387,
		-0.037997, -0.943860, -0.328154,
		35.667442, 38.275558, 38.798244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241035, 38.956993, 38.521095>,  <35.694038, 38.936260, 39.027950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241035, 38.956993, 38.521095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017540, 38.631443, 38.457310>,  <35.883442, 38.436115, 38.419037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017540, 38.631443, 38.457310>,  <36.241035, 38.956993, 38.521095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017540, 38.631443, 38.457310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209985, 0.047183, -0.976565,
		0.802323, -0.579126, 0.144538,
		-0.558735, -0.813872, -0.159463,
		35.849918, 38.387283, 38.409470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653549, 38.555401, 38.102856>,  <36.241035, 38.956993, 38.521095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653549, 38.555401, 38.102856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291199, 38.405849, 38.023262>,  <36.073788, 38.316120, 37.975506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291199, 38.405849, 38.023262>,  <36.653549, 38.555401, 38.102856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291199, 38.405849, 38.023262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170694, 0.107693, -0.979421,
		0.387614, -0.921204, -0.033739,
		-0.905880, -0.373879, -0.198987,
		36.019436, 38.293686, 37.963566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837296, 38.015949, 37.584198>,  <36.653549, 38.555401, 38.102856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837296, 38.015949, 37.584198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454052, 38.127014, 37.556099>,  <36.224106, 38.193653, 37.539238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454052, 38.127014, 37.556099>,  <36.837296, 38.015949, 37.584198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454052, 38.127014, 37.556099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105544, 0.114259, -0.987829,
		-0.266256, -0.953860, -0.138777,
		-0.958107, 0.277662, -0.070252,
		36.166618, 38.210312, 37.535023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566673, 37.765038, 37.377373>,  <36.837296, 38.015949, 37.584198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566673, 37.765038, 37.377373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961517, 37.721428, 37.330517>,  <38.198425, 37.695263, 37.302402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961517, 37.721428, 37.330517>,  <37.566673, 37.765038, 37.377373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961517, 37.721428, 37.330517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096481, -0.178535, 0.979192,
		-0.127662, -0.977876, -0.165716,
		0.987114, -0.109017, -0.117139,
		38.257652, 37.688721, 37.295376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772209, 37.174057, 37.753559>,  <37.566673, 37.765038, 37.377373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772209, 37.174057, 37.753559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 37.388107, 37.754169>,  <38.312859, 37.516537, 37.754536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 37.388107, 37.754169>,  <37.772209, 37.174057, 37.753559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110115, 37.388107, 37.754169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129474, -0.207155, 0.969703,
		0.519233, -0.818977, -0.244283,
		0.844769, 0.535130, 0.001526,
		38.363544, 37.548645, 37.754627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287861, 36.768459, 38.078094>,  <37.772209, 37.174057, 37.753559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287861, 36.768459, 38.078094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397583, 37.153053, 38.085091>,  <38.463417, 37.383808, 38.089291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397583, 37.153053, 38.085091>,  <38.287861, 36.768459, 38.078094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397583, 37.153053, 38.085091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231575, -0.083701, 0.969210,
		0.933342, -0.261813, -0.245615,
		0.274310, 0.961482, 0.017493,
		38.479877, 37.441498, 38.090340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922482, 36.796585, 38.434837>,  <38.287861, 36.768459, 38.078094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922482, 36.796585, 38.434837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753418, 37.158737, 38.451046>,  <38.651981, 37.376030, 38.460773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753418, 37.158737, 38.451046>,  <38.922482, 36.796585, 38.434837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753418, 37.158737, 38.451046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136002, 0.019152, 0.990523,
		0.896027, 0.424163, -0.131229,
		-0.422657, 0.905383, 0.040526,
		38.626621, 37.430351, 38.463203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394936, 37.122200, 38.740940>,  <38.922482, 36.796585, 38.434837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394936, 37.122200, 38.740940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065868, 37.336540, 38.816917>,  <38.868427, 37.465145, 38.862503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065868, 37.336540, 38.816917>,  <39.394936, 37.122200, 38.740940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065868, 37.336540, 38.816917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160587, -0.101467, 0.981792,
		0.545369, 0.838192, -0.002577,
		-0.822669, 0.535852, 0.189940,
		38.819069, 37.497295, 38.873901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587151, 37.513618, 39.358742>,  <39.394936, 37.122200, 38.740940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587151, 37.513618, 39.358742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194427, 37.582657, 39.327061>,  <38.958794, 37.624081, 39.308052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194427, 37.582657, 39.327061>,  <39.587151, 37.513618, 39.358742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194427, 37.582657, 39.327061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046855, 0.184030, 0.981803,
		0.184030, 0.967649, -0.172594,
		-0.981803, 0.172594, -0.079206,
		38.899887, 37.634434, 39.303299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488670, 38.218220, 39.640297>,  <39.587151, 37.513618, 39.358742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488670, 38.218220, 39.640297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174835, 37.974609, 39.686775>,  <38.986534, 37.828442, 39.714664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174835, 37.974609, 39.686775>,  <39.488670, 38.218220, 39.640297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174835, 37.974609, 39.686775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039132, 0.235680, 0.971042,
		-0.618776, 0.757325, -0.208745,
		-0.784592, -0.609026, 0.116198,
		38.939457, 37.791901, 39.721634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194458, 38.437580, 40.217983>,  <39.488670, 38.218220, 39.640297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194458, 38.437580, 40.217983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000660, 38.089237, 40.184834>,  <38.884380, 37.880230, 40.164944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000660, 38.089237, 40.184834>,  <39.194458, 38.437580, 40.217983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000660, 38.089237, 40.184834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010177, -0.089113, 0.995969,
		-0.874733, 0.483389, 0.034313,
		-0.484498, -0.870858, -0.082870,
		38.855309, 37.827980, 40.159973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595604, 38.614685, 40.610611>,  <39.194458, 38.437580, 40.217983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595604, 38.614685, 40.610611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661346, 38.220276, 40.599716>,  <38.700794, 37.983631, 40.593182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661346, 38.220276, 40.599716>,  <38.595604, 38.614685, 40.610611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661346, 38.220276, 40.599716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108207, -0.045467, 0.993088,
		-0.980447, -0.160276, -0.114168,
		0.164359, -0.986025, -0.027235,
		38.710655, 37.924469, 40.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006363, 38.262947, 41.017921>,  <38.595604, 38.614685, 40.610611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006363, 38.262947, 41.017921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270477, 37.962551, 41.020378>,  <38.428944, 37.782314, 41.021854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270477, 37.962551, 41.020378>,  <38.006363, 38.262947, 41.017921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270477, 37.962551, 41.020378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249206, -0.211373, 0.945102,
		-0.708466, -0.625565, -0.326718,
		0.660282, -0.750993, 0.006144,
		38.468563, 37.737255, 41.022221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695354, 37.693081, 41.407215>,  <38.006363, 38.262947, 41.017921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695354, 37.693081, 41.407215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088467, 37.622265, 41.428352>,  <38.324333, 37.579777, 41.441036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088467, 37.622265, 41.428352>,  <37.695354, 37.693081, 41.407215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088467, 37.622265, 41.428352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087019, -0.191235, 0.977679,
		-0.162979, -0.965447, -0.203348,
		0.982785, -0.177037, 0.052845,
		38.383301, 37.569153, 41.444206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867413, 36.974960, 41.822319>,  <37.695354, 37.693081, 41.407215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867413, 36.974960, 41.822319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211765, 37.178417, 41.817169>,  <38.418377, 37.300491, 41.814079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211765, 37.178417, 41.817169>,  <37.867413, 36.974960, 41.822319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211765, 37.178417, 41.817169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140153, -0.212742, 0.967005,
		0.489120, -0.834281, -0.254434,
		0.860883, 0.508641, -0.012871,
		38.470032, 37.331009, 41.813309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322235, 36.532532, 42.216808>,  <37.867413, 36.974960, 41.822319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322235, 36.532532, 42.216808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407867, 36.923206, 42.210541>,  <38.459248, 37.157612, 42.206779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407867, 36.923206, 42.210541>,  <38.322235, 36.532532, 42.216808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407867, 36.923206, 42.210541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166597, -0.020704, 0.985808,
		0.962505, -0.213650, -0.167146,
		0.214079, 0.976691, -0.015666,
		38.472092, 37.216213, 42.205841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922676, 36.556530, 42.667034>,  <38.322235, 36.532532, 42.216808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922676, 36.556530, 42.667034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782490, 36.930988, 42.655678>,  <38.698380, 37.155663, 42.648865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782490, 36.930988, 42.655678>,  <38.922676, 36.556530, 42.667034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782490, 36.930988, 42.655678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185275, 0.099011, 0.977686,
		0.918069, 0.337381, -0.208144,
		-0.350461, 0.936147, -0.028391,
		38.677353, 37.211834, 42.647160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420925, 36.951553, 43.092190>,  <38.922676, 36.556530, 42.667034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420925, 36.951553, 43.092190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086514, 37.170494, 43.076916>,  <38.885868, 37.301857, 43.067749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086514, 37.170494, 43.076916>,  <39.420925, 36.951553, 43.092190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086514, 37.170494, 43.076916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021190, 0.101757, 0.994583,
		0.548274, 0.830692, -0.096670,
		-0.836030, 0.547353, -0.038188,
		38.835705, 37.334702, 43.065460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479828, 37.349667, 43.633274>,  <39.420925, 36.951553, 43.092190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479828, 37.349667, 43.633274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090862, 37.411716, 43.563599>,  <38.857483, 37.448948, 43.521793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090862, 37.411716, 43.563599>,  <39.479828, 37.349667, 43.633274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090862, 37.411716, 43.563599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151100, 0.149940, 0.977081,
		0.177687, 0.976450, -0.122365,
		-0.972418, 0.155125, -0.174184,
		38.799137, 37.458256, 43.511345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318176, 37.957047, 44.017239>,  <39.479828, 37.349667, 43.633274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318176, 37.957047, 44.017239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993187, 37.729233, 43.967403>,  <38.798195, 37.592545, 43.937504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993187, 37.729233, 43.967403>,  <39.318176, 37.957047, 44.017239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993187, 37.729233, 43.967403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282511, 0.197684, 0.938674,
		-0.509980, 0.797841, -0.321513,
		-0.812470, -0.569536, -0.124584,
		38.749447, 37.558372, 43.930027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852238, 38.224266, 44.460854>,  <39.318176, 37.957047, 44.017239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852238, 38.224266, 44.460854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682980, 37.867241, 44.398533>,  <38.581425, 37.653027, 44.361141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682980, 37.867241, 44.398533>,  <38.852238, 38.224266, 44.460854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682980, 37.867241, 44.398533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490259, 0.080938, 0.867810,
		-0.761969, 0.443591, -0.471837,
		-0.423142, -0.892567, -0.155803,
		38.556038, 37.599472, 44.351791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.975220, 38.329945, 44.712009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087009, 37.945976, 44.703594>,  <38.154083, 37.715595, 44.698544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087009, 37.945976, 44.703594>,  <37.975220, 38.329945, 44.712009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087009, 37.945976, 44.703594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258664, -0.096372, 0.961148,
		-0.924657, -0.263170, -0.275231,
		0.279470, -0.959924, -0.021039,
		38.170849, 37.658001, 44.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459808, 37.977291, 45.030670>,  <37.975220, 38.329945, 44.712009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459808, 37.977291, 45.030670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743343, 37.695290, 45.039707>,  <37.913464, 37.526089, 45.045128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743343, 37.695290, 45.039707>,  <37.459808, 37.977291, 45.030670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743343, 37.695290, 45.039707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405085, -0.380652, 0.831270,
		-0.577454, -0.598387, -0.555410,
		0.708839, -0.705008, 0.022588,
		37.955994, 37.483788, 45.046482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178070, 37.378647, 45.340328>,  <37.459808, 37.977291, 45.030670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178070, 37.378647, 45.340328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566200, 37.303448, 45.401161>,  <37.799076, 37.258327, 45.437660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566200, 37.303448, 45.401161>,  <37.178070, 37.378647, 45.340328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566200, 37.303448, 45.401161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182762, -0.158340, 0.970323,
		-0.158340, -0.969322, -0.188000,
		-0.970323, 0.188000, -0.152083,
		37.857296, 37.247047, 45.446785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219711, 36.693432, 45.671051>,  <37.178070, 37.378647, 45.340328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219711, 36.693432, 45.671051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571171, 36.875092, 45.730015>,  <37.782047, 36.984089, 45.765392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571171, 36.875092, 45.730015>,  <37.219711, 36.693432, 45.671051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571171, 36.875092, 45.730015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085292, -0.453040, 0.887401,
		0.469797, -0.767138, -0.436796,
		0.878645, 0.454153, 0.147406,
		37.834763, 37.011337, 45.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577721, 36.198364, 45.927559>,  <37.219711, 36.693432, 45.671051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577721, 36.198364, 45.927559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765530, 36.534321, 46.036469>,  <37.878216, 36.735893, 46.101814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765530, 36.534321, 46.036469>,  <37.577721, 36.198364, 45.927559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765530, 36.534321, 46.036469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060372, -0.338199, 0.939136,
		0.880853, -0.424509, -0.209498,
		0.469524, 0.839889, 0.272276,
		37.906387, 36.786289, 46.118153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107559, 35.980045, 46.347122>,  <37.577721, 36.198364, 45.927559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107559, 35.980045, 46.347122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091801, 36.368858, 46.439735>,  <38.082344, 36.602146, 46.495304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091801, 36.368858, 46.439735>,  <38.107559, 35.980045, 46.347122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091801, 36.368858, 46.439735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229286, -0.216735, 0.948923,
		0.972561, 0.090476, -0.214333,
		-0.039401, 0.972029, 0.231533,
		38.079979, 36.660465, 46.509193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520832, 36.017536, 46.918495>,  <38.107559, 35.980045, 46.347122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520832, 36.017536, 46.918495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327721, 36.367531, 46.932980>,  <38.211853, 36.577530, 46.941669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327721, 36.367531, 46.932980>,  <38.520832, 36.017536, 46.918495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327721, 36.367531, 46.932980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044400, -0.016838, 0.998872,
		0.874614, 0.483846, -0.030720,
		-0.482783, 0.874991, 0.036210,
		38.182884, 36.630028, 46.943844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940308, 36.496754, 47.365490>,  <38.520832, 36.017536, 46.918495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940308, 36.496754, 47.365490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559536, 36.619198, 47.369884>,  <38.331074, 36.692665, 47.372520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559536, 36.619198, 47.369884>,  <38.940308, 36.496754, 47.365490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559536, 36.619198, 47.369884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035092, 0.073356, 0.996688,
		0.304294, 0.949165, -0.080572,
		-0.951932, 0.306114, 0.010986,
		38.273956, 36.711033, 47.373180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905788, 37.050747, 47.799370>,  <38.940308, 36.496754, 47.365490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905788, 37.050747, 47.799370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521515, 36.941471, 47.779530>,  <38.290951, 36.875904, 47.767628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521515, 36.941471, 47.779530>,  <38.905788, 37.050747, 47.799370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521515, 36.941471, 47.779530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082976, 0.112008, 0.990237,
		-0.264970, 0.955416, -0.130272,
		-0.960680, -0.273193, -0.049598,
		38.233311, 36.859512, 47.764648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506115, 37.584393, 48.181526>,  <38.905788, 37.050747, 47.799370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506115, 37.584393, 48.181526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258480, 37.270454, 48.170498>,  <38.109901, 37.082092, 48.163879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258480, 37.270454, 48.170498>,  <38.506115, 37.584393, 48.181526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258480, 37.270454, 48.170498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118665, 0.058782, 0.991193,
		-0.776308, 0.616903, -0.129524,
		-0.619084, -0.784841, -0.027572,
		38.072754, 37.035004, 48.162228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936680, 37.746281, 48.615154>,  <38.506115, 37.584393, 48.181526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936680, 37.746281, 48.615154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952915, 37.348698, 48.574371>,  <37.962658, 37.110146, 48.549900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952915, 37.348698, 48.574371>,  <37.936680, 37.746281, 48.615154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952915, 37.348698, 48.574371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151901, -0.106994, 0.982588,
		-0.987562, -0.024393, -0.155326,
		0.040587, -0.993960, -0.101958,
		37.965092, 37.050510, 48.543785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387558, 37.507668, 49.114464>,  <37.936680, 37.746281, 48.615154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387558, 37.507668, 49.114464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637581, 37.203140, 49.045525>,  <37.787594, 37.020424, 49.004162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637581, 37.203140, 49.045525>,  <37.387558, 37.507668, 49.114464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637581, 37.203140, 49.045525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129995, -0.116182, 0.984684,
		-0.769680, -0.637886, 0.026347,
		0.625055, -0.761317, -0.172345,
		37.825096, 36.974747, 48.993820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203030, 37.046646, 49.616722>,  <37.387558, 37.507668, 49.114464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203030, 37.046646, 49.616722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546337, 36.879585, 49.497425>,  <37.752319, 36.779350, 49.425846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546337, 36.879585, 49.497425>,  <37.203030, 37.046646, 49.616722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546337, 36.879585, 49.497425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235152, -0.196499, 0.951888,
		-0.456163, -0.887104, -0.070437,
		0.858265, -0.417652, -0.298240,
		37.803818, 36.754288, 49.407951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293137, 36.360027, 49.959587>,  <37.203030, 37.046646, 49.616722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293137, 36.360027, 49.959587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.667229, 36.447044, 49.847862>,  <37.891685, 36.499256, 49.780827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.667229, 36.447044, 49.847862>,  <37.293137, 36.360027, 49.959587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667229, 36.447044, 49.847862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351853, -0.483666, 0.801416,
		0.039251, -0.847786, -0.528884,
		0.935232, 0.217546, -0.279311,
		37.947800, 36.512306, 49.764069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648003, 35.718594, 50.086098>,  <37.293137, 36.360027, 49.959587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648003, 35.718594, 50.086098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940998, 35.990021, 50.064178>,  <38.116795, 36.152878, 50.051025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940998, 35.990021, 50.064178>,  <37.648003, 35.718594, 50.086098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940998, 35.990021, 50.064178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409171, -0.374491, 0.832067,
		0.544094, -0.631901, -0.551962,
		0.732489, 0.678570, -0.054797,
		38.160744, 36.193592, 50.047741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231506, 35.405853, 50.067867>,  <37.648003, 35.718594, 50.086098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231506, 35.405853, 50.067867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342152, 35.762012, 50.212463>,  <38.408539, 35.975708, 50.299221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342152, 35.762012, 50.212463>,  <38.231506, 35.405853, 50.067867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342152, 35.762012, 50.212463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461229, -0.453020, 0.762916,
		0.843062, -0.044300, -0.535989,
		0.276611, 0.890399, 0.361492,
		38.425137, 36.029133, 50.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950855, 35.274368, 50.243603>,  <38.231506, 35.405853, 50.067867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950855, 35.274368, 50.243603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842674, 35.603485, 50.443554>,  <38.777763, 35.800953, 50.563522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842674, 35.603485, 50.443554>,  <38.950855, 35.274368, 50.243603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842674, 35.603485, 50.443554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482742, -0.333332, 0.809846,
		0.832955, 0.460338, -0.307042,
		-0.270455, 0.822787, 0.499875,
		38.761539, 35.850323, 50.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533009, 35.467716, 50.727882>,  <38.950855, 35.274368, 50.243603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533009, 35.467716, 50.727882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241463, 35.685780, 50.893559>,  <39.066536, 35.816620, 50.992962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241463, 35.685780, 50.893559>,  <39.533009, 35.467716, 50.727882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241463, 35.685780, 50.893559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304672, -0.283494, 0.909289,
		0.613128, 0.788943, 0.040535,
		-0.728868, 0.545161, 0.414187,
		39.022800, 35.849327, 51.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800308, 35.883717, 51.138775>,  <39.533009, 35.467716, 50.727882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800308, 35.883717, 51.138775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431232, 35.850880, 51.289455>,  <39.209785, 35.831177, 51.379864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431232, 35.850880, 51.289455>,  <39.800308, 35.883717, 51.138775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431232, 35.850880, 51.289455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376445, -0.402810, 0.834286,
		0.083247, 0.911594, 0.402574,
		-0.922691, -0.082096, 0.376698,
		39.154427, 35.826252, 51.402466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931454, 35.986881, 51.821835>,  <39.800308, 35.883717, 51.138775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931454, 35.986881, 51.821835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570530, 35.814854, 51.810036>,  <39.353973, 35.711636, 51.802956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570530, 35.814854, 51.810036>,  <39.931454, 35.986881, 51.821835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570530, 35.814854, 51.810036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209288, -0.496858, 0.842218,
		-0.376871, 0.753770, 0.538330,
		-0.902312, -0.430074, -0.029496,
		39.299835, 35.685833, 51.801186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737331, 35.890232, 52.608383>,  <39.931454, 35.986881, 51.821835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737331, 35.890232, 52.608383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.475773, 35.662079, 52.409557>,  <39.318836, 35.525185, 52.290260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.475773, 35.662079, 52.409557>,  <39.737331, 35.890232, 52.608383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475773, 35.662079, 52.409557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040421, -0.629711, 0.775777,
		-0.755501, 0.527373, 0.388712,
		-0.653900, -0.570388, -0.497064,
		39.279602, 35.490963, 52.260437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178875, 35.827602, 53.058640>,  <39.737331, 35.890232, 52.608383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178875, 35.827602, 53.058640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134712, 35.520245, 52.806488>,  <39.108215, 35.335831, 52.655197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134712, 35.520245, 52.806488>,  <39.178875, 35.827602, 53.058640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134712, 35.520245, 52.806488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152312, -0.613686, 0.774719,
		-0.982146, 0.181549, -0.049281,
		-0.110407, -0.768394, -0.630382,
		39.101589, 35.289726, 52.617374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529110, 35.376328, 53.110699>,  <39.178875, 35.827602, 53.058640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529110, 35.376328, 53.110699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849884, 35.173336, 52.984608>,  <39.042347, 35.051540, 52.908955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849884, 35.173336, 52.984608>,  <38.529110, 35.376328, 53.110699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849884, 35.173336, 52.984608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031486, -0.562822, 0.825978,
		-0.596585, -0.652453, -0.467324,
		0.801932, -0.507480, -0.315228,
		39.090466, 35.021091, 52.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743523, 35.254841, 53.269001>,  <38.529110, 35.376328, 53.110699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743523, 35.254841, 53.269001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384590, 35.114029, 53.375488>,  <37.169231, 35.029541, 53.439381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384590, 35.114029, 53.375488>,  <37.743523, 35.254841, 53.269001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384590, 35.114029, 53.375488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295490, 0.031119, -0.954839,
		0.327845, -0.935472, -0.131945,
		-0.897331, -0.352028, 0.266220,
		37.115391, 35.008419, 53.455353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473061, 34.768280, 52.751266>,  <37.743523, 35.254841, 53.269001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473061, 34.768280, 52.751266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182083, 34.958881, 52.948761>,  <37.007496, 35.073242, 53.067257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182083, 34.958881, 52.948761>,  <37.473061, 34.768280, 52.751266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182083, 34.958881, 52.948761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434650, 0.236784, -0.868915,
		-0.530952, -0.846684, 0.034868,
		-0.727440, 0.476507, 0.493732,
		36.963852, 35.101833, 53.096882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948376, 34.775421, 52.265179>,  <37.473061, 34.768280, 52.751266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948376, 34.775421, 52.265179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816818, 35.040329, 52.534470>,  <36.737885, 35.199272, 52.696045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816818, 35.040329, 52.534470>,  <36.948376, 34.775421, 52.265179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816818, 35.040329, 52.534470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664813, 0.343940, -0.663120,
		-0.670712, -0.665665, 0.327164,
		-0.328891, 0.662265, 0.673228,
		36.718151, 35.239010, 52.736439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099895, 34.755547, 52.293922>,  <36.948376, 34.775421, 52.265179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099895, 34.755547, 52.293922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274197, 35.091934, 52.422234>,  <36.378777, 35.293766, 52.499222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274197, 35.091934, 52.422234>,  <36.099895, 34.755547, 52.293922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274197, 35.091934, 52.422234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558370, 0.532099, -0.636469,
		-0.705936, 0.098226, 0.701432,
		0.435749, 0.840965, 0.320781,
		36.404922, 35.344223, 52.518467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533386, 35.156227, 52.250385>,  <36.099895, 34.755547, 52.293922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533386, 35.156227, 52.250385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841454, 35.410732, 52.268307>,  <36.026295, 35.563435, 52.279060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841454, 35.410732, 52.268307>,  <35.533386, 35.156227, 52.250385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841454, 35.410732, 52.268307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497130, 0.642797, -0.582815,
		-0.399624, 0.426593, 0.811369,
		0.770170, 0.636263, 0.044804,
		36.072506, 35.601612, 52.281750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194187, 35.799625, 52.374882>,  <35.533386, 35.156227, 52.250385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194187, 35.799625, 52.374882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555855, 35.848804, 52.211246>,  <35.772858, 35.878311, 52.113064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555855, 35.848804, 52.211246>,  <35.194187, 35.799625, 52.374882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555855, 35.848804, 52.211246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425237, 0.349985, -0.834676,
		0.040551, 0.928652, 0.368730,
		0.904173, 0.122951, -0.409090,
		35.827106, 35.885689, 52.088520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038334, 36.391705, 51.935253>,  <35.194187, 35.799625, 52.374882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038334, 36.391705, 51.935253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.389324, 36.246517, 51.809845>,  <35.599918, 36.159405, 51.734600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.389324, 36.246517, 51.809845>,  <35.038334, 36.391705, 51.935253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389324, 36.246517, 51.809845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219422, 0.277471, -0.935342,
		0.426493, 0.889530, 0.163830,
		0.877473, -0.362969, -0.313522,
		35.652565, 36.137627, 51.715790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465630, 36.975601, 51.669682>,  <35.038334, 36.391705, 51.935253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465630, 36.975601, 51.669682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566387, 36.622154, 51.511814>,  <35.626842, 36.410084, 51.417091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566387, 36.622154, 51.511814>,  <35.465630, 36.975601, 51.669682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566387, 36.622154, 51.511814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158212, 0.364735, -0.917571,
		0.954735, 0.293571, -0.047926,
		0.251892, -0.883620, -0.394672,
		35.641956, 36.357067, 51.393414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962139, 37.119797, 51.312572>,  <35.465630, 36.975601, 51.669682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962139, 37.119797, 51.312572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871986, 36.774628, 51.131657>,  <35.817894, 36.567524, 51.023109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871986, 36.774628, 51.131657>,  <35.962139, 37.119797, 51.312572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871986, 36.774628, 51.131657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050010, 0.473867, -0.879176,
		0.972987, -0.175527, -0.149954,
		-0.225377, -0.862926, -0.452288,
		35.804375, 36.515751, 50.995972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421844, 37.096085, 50.742496>,  <35.962139, 37.119797, 51.312572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421844, 37.096085, 50.742496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145874, 36.824192, 50.642921>,  <35.980293, 36.661057, 50.583176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145874, 36.824192, 50.642921>,  <36.421844, 37.096085, 50.742496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145874, 36.824192, 50.642921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123391, 0.228435, -0.965708,
		0.713288, -0.696982, -0.073730,
		-0.689924, -0.679730, -0.248942,
		35.938896, 36.620274, 50.568237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708981, 36.815868, 50.181644>,  <36.421844, 37.096085, 50.742496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708981, 36.815868, 50.181644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326988, 36.698971, 50.161259>,  <36.097794, 36.628834, 50.149029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326988, 36.698971, 50.161259>,  <36.708981, 36.815868, 50.181644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326988, 36.698971, 50.161259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016813, 0.224842, -0.974250,
		0.296178, -0.929537, -0.219634,
		-0.954985, -0.292244, -0.050964,
		36.040493, 36.611298, 50.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625080, 36.353500, 49.628845>,  <36.708981, 36.815868, 50.181644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625080, 36.353500, 49.628845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245247, 36.470825, 49.673130>,  <36.017345, 36.541218, 49.699699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245247, 36.470825, 49.673130>,  <36.625080, 36.353500, 49.628845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245247, 36.470825, 49.673130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033365, 0.256587, -0.965945,
		-0.311729, -0.920941, -0.233865,
		-0.949585, 0.293311, 0.110713,
		35.960373, 36.558819, 49.706345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166573, 36.100796, 49.049946>,  <36.625080, 36.353500, 49.628845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166573, 36.100796, 49.049946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945072, 36.409859, 49.174118>,  <35.812172, 36.595295, 49.248623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945072, 36.409859, 49.174118>,  <36.166573, 36.100796, 49.049946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945072, 36.409859, 49.174118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005029, 0.375905, -0.926645,
		-0.832668, -0.511568, -0.212043,
		-0.553749, 0.772654, 0.310431,
		35.778946, 36.641655, 49.267246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596432, 36.198151, 48.508789>,  <36.166573, 36.100796, 49.049946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596432, 36.198151, 48.508789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627708, 36.539013, 48.715755>,  <35.646473, 36.743530, 48.839935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627708, 36.539013, 48.715755>,  <35.596432, 36.198151, 48.508789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627708, 36.539013, 48.715755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090210, 0.522928, -0.847590,
		-0.992849, 0.019595, 0.117759,
		0.078189, 0.852152, 0.517421,
		35.651165, 36.794659, 48.870983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016151, 36.626675, 48.341442>,  <35.596432, 36.198151, 48.508789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016151, 36.626675, 48.341442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307678, 36.861626, 48.482193>,  <35.482594, 37.002594, 48.566643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307678, 36.861626, 48.482193>,  <35.016151, 36.626675, 48.341442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307678, 36.861626, 48.482193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089214, 0.590986, -0.801733,
		-0.678872, 0.552925, 0.483122,
		0.728817, 0.587376, 0.351875,
		35.526321, 37.037838, 48.587757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692112, 37.285397, 48.333477>,  <35.016151, 36.626675, 48.341442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692112, 37.285397, 48.333477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087513, 37.344086, 48.348125>,  <35.324753, 37.379299, 48.356915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087513, 37.344086, 48.348125>,  <34.692112, 37.285397, 48.333477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087513, 37.344086, 48.348125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070546, 0.661595, -0.746536,
		-0.133763, 0.735366, 0.664337,
		0.988499, 0.146725, 0.036619,
		35.384064, 37.388103, 48.359112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806690, 37.927376, 48.123440>,  <34.692112, 37.285397, 48.333477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806690, 37.927376, 48.123440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178562, 37.793377, 48.062168>,  <35.401688, 37.712978, 48.025406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178562, 37.793377, 48.062168>,  <34.806690, 37.927376, 48.123440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178562, 37.793377, 48.062168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060763, 0.549619, -0.833203,
		0.363313, 0.765307, 0.531327,
		0.929684, -0.334998, -0.153182,
		35.457466, 37.692879, 48.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299946, 38.471092, 47.905384>,  <34.806690, 37.927376, 48.123440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299946, 38.471092, 47.905384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433117, 38.130489, 47.743351>,  <35.513020, 37.926128, 47.646133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433117, 38.130489, 47.743351>,  <35.299946, 38.471092, 47.905384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433117, 38.130489, 47.743351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162697, 0.475016, -0.864806,
		0.928809, 0.222017, 0.296686,
		0.332933, -0.851509, -0.405078,
		35.532997, 37.875038, 47.621826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557217, 38.640301, 47.299164>,  <35.299946, 38.471092, 47.905384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557217, 38.640301, 47.299164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604702, 38.250233, 47.224384>,  <35.633194, 38.016193, 47.179516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604702, 38.250233, 47.224384>,  <35.557217, 38.640301, 47.299164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604702, 38.250233, 47.224384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123274, 0.201294, -0.971743,
		0.985247, 0.092310, 0.144109,
		0.118710, -0.975172, -0.186945,
		35.640316, 37.957680, 47.168301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887257, 38.721439, 46.704376>,  <35.557217, 38.640301, 47.299164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887257, 38.721439, 46.704376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782970, 38.335445, 46.692902>,  <35.720398, 38.103848, 46.686016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782970, 38.335445, 46.692902>,  <35.887257, 38.721439, 46.704376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782970, 38.335445, 46.692902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121307, -0.003268, -0.992610,
		0.957764, -0.262268, 0.117912,
		-0.260715, -0.964989, -0.028685,
		35.704758, 38.045948, 46.684296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426376, 38.354450, 46.311817>,  <35.887257, 38.721439, 46.704376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426376, 38.354450, 46.311817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074883, 38.163536, 46.309925>,  <35.863987, 38.048988, 46.308792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074883, 38.163536, 46.309925>,  <36.426376, 38.354450, 46.311817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074883, 38.163536, 46.309925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025730, 0.057259, -0.998028,
		0.476612, -0.876883, -0.062597,
		-0.878738, -0.477282, -0.004728,
		35.811260, 38.020351, 46.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.743652, 33.265289, 26.569916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384663, 33.092308, 26.604631>,  <44.169270, 32.988518, 26.625460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384663, 33.092308, 26.604631>,  <44.743652, 33.265289, 26.569916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384663, 33.092308, 26.604631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186022, 0.549512, 0.814513,
		-0.399929, 0.714857, -0.573617,
		-0.897470, -0.432453, 0.086787,
		44.115421, 32.962574, 26.630667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296158, 33.760647, 26.805157>,  <44.743652, 33.265289, 26.569916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296158, 33.760647, 26.805157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058838, 33.447372, 26.879581>,  <43.916447, 33.259407, 26.924236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058838, 33.447372, 26.879581>,  <44.296158, 33.760647, 26.805157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058838, 33.447372, 26.879581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403484, 0.489335, 0.773144,
		-0.696559, 0.383635, -0.606325,
		-0.593301, -0.783183, 0.186060,
		43.880848, 33.212418, 26.935400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703773, 34.115738, 27.002333>,  <44.296158, 33.760647, 26.805157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703773, 34.115738, 27.002333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682728, 33.740349, 27.138863>,  <43.670101, 33.515114, 27.220779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682728, 33.740349, 27.138863>,  <43.703773, 34.115738, 27.002333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682728, 33.740349, 27.138863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476768, 0.323933, 0.817165,
		-0.877453, -0.119736, -0.464478,
		-0.052616, -0.938472, 0.341322,
		43.666943, 33.458809, 27.241259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111217, 34.092358, 27.279505>,  <43.703773, 34.115738, 27.002333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111217, 34.092358, 27.279505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294369, 33.774334, 27.438616>,  <43.404259, 33.583519, 27.534082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294369, 33.774334, 27.438616>,  <43.111217, 34.092358, 27.279505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294369, 33.774334, 27.438616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376074, 0.232209, 0.897022,
		-0.805554, -0.560319, -0.192678,
		0.457877, -0.795061, 0.397778,
		43.431732, 33.535816, 27.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581886, 33.748898, 27.613136>,  <43.111217, 34.092358, 27.279505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581886, 33.748898, 27.613136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911545, 33.601898, 27.785521>,  <43.109341, 33.513699, 27.888950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911545, 33.601898, 27.785521>,  <42.581886, 33.748898, 27.613136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911545, 33.601898, 27.785521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471450, -0.023445, 0.881581,
		-0.313880, -0.929727, -0.192581,
		0.824145, -0.367503, 0.430961,
		43.158787, 33.491646, 27.914808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396881, 33.231991, 27.983936>,  <42.581886, 33.748898, 27.613136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396881, 33.231991, 27.983936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731693, 33.355419, 28.164675>,  <42.932579, 33.429474, 28.273117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731693, 33.355419, 28.164675>,  <42.396881, 33.231991, 27.983936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731693, 33.355419, 28.164675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428514, -0.143810, 0.892017,
		0.340227, -0.940269, 0.011852,
		0.837031, 0.308567, 0.451846,
		42.982803, 33.447990, 28.300228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504852, 32.797508, 28.502495>,  <42.396881, 33.231991, 27.983936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504852, 32.797508, 28.502495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733902, 33.095821, 28.638676>,  <42.871330, 33.274811, 28.720385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733902, 33.095821, 28.638676>,  <42.504852, 32.797508, 28.502495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733902, 33.095821, 28.638676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213188, -0.265529, 0.940237,
		0.791614, -0.610982, 0.006944,
		0.572624, 0.745785, 0.340451,
		42.905689, 33.319557, 28.740810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626263, 32.552353, 29.040894>,  <42.504852, 32.797508, 28.502495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626263, 32.552353, 29.040894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740437, 32.929218, 29.111158>,  <42.808941, 33.155338, 29.153318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740437, 32.929218, 29.111158>,  <42.626263, 32.552353, 29.040894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740437, 32.929218, 29.111158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413448, -0.044307, 0.909449,
		0.864631, -0.332218, 0.376888,
		0.285436, 0.942162, 0.175664,
		42.826069, 33.211868, 29.163858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061523, 32.546932, 29.630442>,  <42.626263, 32.552353, 29.040894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061523, 32.546932, 29.630442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897232, 32.910412, 29.600584>,  <42.798656, 33.128498, 29.582670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897232, 32.910412, 29.600584>,  <43.061523, 32.546932, 29.630442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897232, 32.910412, 29.600584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361732, -0.087257, 0.928189,
		0.836930, 0.408235, 0.364544,
		-0.410729, 0.908697, -0.074644,
		42.774014, 33.183022, 29.578192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390167, 32.989769, 30.060341>,  <43.061523, 32.546932, 29.630442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390167, 32.989769, 30.060341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043789, 33.178829, 29.994938>,  <42.835960, 33.292267, 29.955696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043789, 33.178829, 29.994938>,  <43.390167, 32.989769, 30.060341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043789, 33.178829, 29.994938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157243, 0.053054, 0.986134,
		0.474771, 0.879652, 0.028379,
		-0.865949, 0.472650, -0.163508,
		42.784004, 33.320625, 29.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296406, 33.549789, 30.551651>,  <43.390167, 32.989769, 30.060341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296406, 33.549789, 30.551651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915916, 33.489857, 30.443781>,  <42.687622, 33.453896, 30.379059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915916, 33.489857, 30.443781>,  <43.296406, 33.549789, 30.551651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915916, 33.489857, 30.443781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253465, -0.118749, 0.960028,
		-0.175871, 0.981554, 0.074979,
		-0.951223, -0.149836, -0.269674,
		42.630550, 33.444904, 30.362879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843838, 34.111622, 30.851202>,  <43.296406, 33.549789, 30.551651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843838, 34.111622, 30.851202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617500, 33.786270, 30.797182>,  <42.481697, 33.591061, 30.764771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617500, 33.786270, 30.797182>,  <42.843838, 34.111622, 30.851202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617500, 33.786270, 30.797182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326071, 0.070314, 0.942727,
		-0.757296, 0.577472, -0.305006,
		-0.565845, -0.813376, -0.135048,
		42.447746, 33.542255, 30.756668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295418, 34.245186, 31.260611>,  <42.843838, 34.111622, 30.851202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295418, 34.245186, 31.260611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264446, 33.851791, 31.195189>,  <42.245861, 33.615753, 31.155935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264446, 33.851791, 31.195189>,  <42.295418, 34.245186, 31.260611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264446, 33.851791, 31.195189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301296, -0.133296, 0.944168,
		-0.950382, 0.122387, -0.286001,
		-0.077431, -0.983490, -0.163557,
		42.241219, 33.556744, 31.146122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681412, 34.080830, 31.651484>,  <42.295418, 34.245186, 31.260611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681412, 34.080830, 31.651484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.885635, 33.743126, 31.586294>,  <42.008171, 33.540504, 31.547180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.885635, 33.743126, 31.586294>,  <41.681412, 34.080830, 31.651484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885635, 33.743126, 31.586294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245139, -0.324593, 0.913535,
		-0.824157, -0.426464, -0.372684,
		0.510560, -0.844256, -0.162973,
		42.038803, 33.489849, 31.537403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462849, 33.561935, 32.074776>,  <41.681412, 34.080830, 31.651484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462849, 33.561935, 32.074776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812447, 33.382374, 32.000347>,  <42.022205, 33.274635, 31.955690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812447, 33.382374, 32.000347>,  <41.462849, 33.561935, 32.074776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812447, 33.382374, 32.000347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108552, -0.553587, 0.825686,
		-0.473661, -0.701445, -0.532560,
		0.873992, -0.448906, -0.186069,
		42.074642, 33.247700, 31.944527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482754, 32.918533, 32.407349>,  <41.462849, 33.561935, 32.074776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482754, 32.918533, 32.407349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875141, 32.969147, 32.348427>,  <42.110573, 32.999516, 32.313072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875141, 32.969147, 32.348427>,  <41.482754, 32.918533, 32.407349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875141, 32.969147, 32.348427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187775, -0.424740, 0.885628,
		0.049497, -0.896429, -0.440415,
		0.980964, 0.126535, -0.147304,
		42.169430, 33.007107, 32.304237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799450, 32.273567, 32.702023>,  <41.482754, 32.918533, 32.407349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799450, 32.273567, 32.702023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083733, 32.553902, 32.677639>,  <42.254303, 32.722103, 32.663010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083733, 32.553902, 32.677639>,  <41.799450, 32.273567, 32.702023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083733, 32.553902, 32.677639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337064, -0.263180, 0.903949,
		0.617481, -0.662992, -0.423272,
		0.710708, 0.700841, -0.060962,
		42.296944, 32.764153, 32.659351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488800, 32.072048, 32.863567>,  <41.799450, 32.273567, 32.702023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488800, 32.072048, 32.863567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492584, 32.466568, 32.929440>,  <42.494854, 32.703281, 32.968964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492584, 32.466568, 32.929440>,  <42.488800, 32.072048, 32.863567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492584, 32.466568, 32.929440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247786, -0.161860, 0.955198,
		0.968769, 0.031770, -0.245922,
		0.009458, 0.986302, 0.164677,
		42.495422, 32.762459, 32.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013893, 32.086758, 33.350784>,  <42.488800, 32.072048, 32.863567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013893, 32.086758, 33.350784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865986, 32.458206, 33.363022>,  <42.777241, 32.681076, 33.370365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865986, 32.458206, 33.363022>,  <43.013893, 32.086758, 33.350784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865986, 32.458206, 33.363022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181512, 0.039909, 0.982578,
		0.911222, 0.368879, -0.183313,
		-0.369768, 0.928620, 0.030590,
		42.755054, 32.736794, 33.372200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442333, 32.465153, 33.853310>,  <43.013893, 32.086758, 33.350784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442333, 32.465153, 33.853310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.099483, 32.670326, 33.834377>,  <42.893776, 32.793430, 33.823017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.099483, 32.670326, 33.834377>,  <43.442333, 32.465153, 33.853310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099483, 32.670326, 33.834377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050950, 0.175845, 0.983099,
		0.512589, 0.840223, -0.176854,
		-0.857121, 0.512937, -0.047327,
		42.842346, 32.824207, 33.820179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588062, 33.025620, 34.157936>,  <43.442333, 32.465153, 33.853310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588062, 33.025620, 34.157936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189030, 33.000137, 34.168995>,  <42.949608, 32.984848, 34.175629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189030, 33.000137, 34.168995>,  <43.588062, 33.025620, 34.157936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189030, 33.000137, 34.168995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018471, 0.140387, 0.989924,
		-0.066944, 0.988045, -0.138872,
		-0.997586, -0.063705, 0.027648,
		42.889755, 32.981026, 34.177288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252762, 33.697865, 34.361950>,  <43.588062, 33.025620, 34.157936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252762, 33.697865, 34.361950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037731, 33.370522, 34.443245>,  <42.908714, 33.174118, 34.492023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037731, 33.370522, 34.443245>,  <43.252762, 33.697865, 34.361950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037731, 33.370522, 34.443245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044892, 0.212910, 0.976040,
		-0.842018, 0.533821, -0.077718,
		-0.537577, -0.818355, 0.203238,
		42.876457, 33.125015, 34.504215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944927, 33.801296, 34.190643>,  <43.252762, 33.697865, 34.361950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944927, 33.801296, 34.190643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336216, 33.884300, 34.192646>,  <44.570988, 33.934101, 34.193848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336216, 33.884300, 34.192646>,  <43.944927, 33.801296, 34.190643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336216, 33.884300, 34.192646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107997, -0.488203, -0.866022,
		-0.177263, 0.847701, -0.499981,
		0.978220, 0.207510, 0.005009,
		44.629681, 33.946552, 34.194149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129543, 33.899796, 33.465111>,  <43.944927, 33.801296, 34.190643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129543, 33.899796, 33.465111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492634, 33.847054, 33.624432>,  <44.710487, 33.815407, 33.720024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.492634, 33.847054, 33.624432>,  <44.129543, 33.899796, 33.465111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492634, 33.847054, 33.624432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333823, -0.348067, -0.876020,
		0.254146, 0.928150, -0.271933,
		0.907729, -0.131859, 0.398297,
		44.764954, 33.807495, 33.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659000, 34.283260, 33.002659>,  <44.129543, 33.899796, 33.465111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659000, 34.283260, 33.002659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807022, 33.976418, 33.212269>,  <44.895836, 33.792313, 33.338036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807022, 33.976418, 33.212269>,  <44.659000, 34.283260, 33.002659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807022, 33.976418, 33.212269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261718, -0.455141, -0.851088,
		0.891384, 0.452092, 0.032341,
		0.370050, -0.767111, 0.524026,
		44.918037, 33.746284, 33.369476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392513, 34.096264, 32.721233>,  <44.659000, 34.283260, 33.002659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392513, 34.096264, 32.721233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300224, 33.758263, 32.914204>,  <45.244850, 33.555462, 33.029987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300224, 33.758263, 32.914204>,  <45.392513, 34.096264, 32.721233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300224, 33.758263, 32.914204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439784, -0.532834, -0.722965,
		0.867963, 0.045364, 0.494553,
		-0.230718, -0.845003, 0.482430,
		45.231010, 33.504761, 33.058933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855820, 33.659389, 32.361874>,  <45.392513, 34.096264, 32.721233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855820, 33.659389, 32.361874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620041, 33.404060, 32.559902>,  <45.478573, 33.250862, 32.678719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620041, 33.404060, 32.559902>,  <45.855820, 33.659389, 32.361874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620041, 33.404060, 32.559902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340667, -0.752123, -0.564142,
		0.732463, -0.163874, 0.660790,
		-0.589443, -0.638323, 0.495076,
		45.443207, 33.212563, 32.708424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351425, 33.187164, 32.657379>,  <45.855820, 33.659389, 32.361874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351425, 33.187164, 32.657379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.976109, 33.052547, 32.625519>,  <45.750919, 32.971779, 32.606403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.976109, 33.052547, 32.625519>,  <46.351425, 33.187164, 32.657379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976109, 33.052547, 32.625519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314760, -0.735591, -0.599859,
		0.143289, -0.587915, 0.796131,
		-0.938293, -0.336543, -0.079650,
		45.694622, 32.951584, 32.601624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489933, 32.493080, 32.572372>,  <46.351425, 33.187164, 32.657379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489933, 32.493080, 32.572372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.111897, 32.504475, 32.442150>,  <45.885075, 32.511311, 32.364017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.111897, 32.504475, 32.442150>,  <46.489933, 32.493080, 32.572372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.111897, 32.504475, 32.442150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231249, -0.645610, -0.727813,
		-0.230911, -0.763136, 0.603576,
		-0.945095, 0.028484, -0.325553,
		45.828369, 32.513020, 32.344482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282566, 31.803778, 32.452888>,  <46.489933, 32.493080, 32.572372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282566, 31.803778, 32.452888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030270, 32.028378, 32.238640>,  <45.878891, 32.163136, 32.110092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030270, 32.028378, 32.238640>,  <46.282566, 31.803778, 32.452888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030270, 32.028378, 32.238640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143440, -0.593977, -0.791590,
		-0.762622, -0.576117, 0.294104,
		-0.630740, 0.561498, -0.535618,
		45.841049, 32.196827, 32.077953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805595, 31.264761, 32.090179>,  <46.282566, 31.803778, 32.452888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805595, 31.264761, 32.090179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778000, 31.614914, 31.898787>,  <45.761444, 31.825005, 31.783949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778000, 31.614914, 31.898787>,  <45.805595, 31.264761, 32.090179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778000, 31.614914, 31.898787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126404, -0.468094, -0.874591,
		-0.989577, -0.120820, -0.078358,
		-0.068989, 0.875380, -0.478487,
		45.757301, 31.877527, 31.755241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348930, 31.158813, 31.521910>,  <45.805595, 31.264761, 32.090179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348930, 31.158813, 31.521910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520645, 31.497730, 31.396811>,  <45.623672, 31.701080, 31.321751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520645, 31.497730, 31.396811>,  <45.348930, 31.158813, 31.521910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520645, 31.497730, 31.396811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132347, -0.283526, -0.949788,
		-0.893419, 0.449122, -0.009578,
		0.429286, 0.847291, -0.312747,
		45.649429, 31.751917, 31.302986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889362, 31.526299, 30.956484>,  <45.348930, 31.158813, 31.521910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889362, 31.526299, 30.956484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256859, 31.676830, 30.908663>,  <45.477356, 31.767149, 30.879971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256859, 31.676830, 30.908663>,  <44.889362, 31.526299, 30.956484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256859, 31.676830, 30.908663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115124, -0.034322, -0.992758,
		-0.377710, 0.925849, 0.011792,
		0.918739, 0.376332, -0.119551,
		45.532482, 31.789730, 30.872797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826889, 31.920008, 30.367764>,  <44.889362, 31.526299, 30.956484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826889, 31.920008, 30.367764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222027, 31.877131, 30.412786>,  <45.459110, 31.851404, 30.439800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222027, 31.877131, 30.412786>,  <44.826889, 31.920008, 30.367764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222027, 31.877131, 30.412786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093905, -0.165490, -0.981731,
		0.123862, 0.980369, -0.153412,
		0.987846, -0.107193, 0.112560,
		45.518379, 31.844973, 30.446554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055702, 32.374043, 29.875761>,  <44.826889, 31.920008, 30.367764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055702, 32.374043, 29.875761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332565, 32.092625, 29.940187>,  <45.498684, 31.923775, 29.978844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332565, 32.092625, 29.940187>,  <45.055702, 32.374043, 29.875761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332565, 32.092625, 29.940187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055596, -0.170527, -0.983783,
		0.719601, 0.689889, -0.078918,
		0.692159, -0.703544, 0.161067,
		45.540215, 31.881561, 29.988508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480011, 32.423340, 29.356810>,  <45.055702, 32.374043, 29.875761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480011, 32.423340, 29.356810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572826, 32.055893, 29.484747>,  <45.628517, 31.835424, 29.561510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572826, 32.055893, 29.484747>,  <45.480011, 32.423340, 29.356810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572826, 32.055893, 29.484747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072828, -0.311488, -0.947455,
		0.969976, 0.243143, -0.005377,
		0.232042, -0.918617, 0.319844,
		45.642441, 31.780308, 29.580700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966431, 32.188072, 28.825630>,  <45.480011, 32.423340, 29.356810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966431, 32.188072, 28.825630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850163, 31.851845, 29.008478>,  <45.780403, 31.650108, 29.118187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850163, 31.851845, 29.008478>,  <45.966431, 32.188072, 28.825630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850163, 31.851845, 29.008478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190290, -0.518990, -0.833330,
		0.937710, -0.155239, 0.310806,
		-0.290671, -0.840566, 0.457121,
		45.762962, 31.599674, 29.145615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482487, 31.633844, 28.529596>,  <45.966431, 32.188072, 28.825630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482487, 31.633844, 28.529596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175644, 31.426123, 28.680258>,  <45.991539, 31.301489, 28.770655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175644, 31.426123, 28.680258>,  <46.482487, 31.633844, 28.529596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175644, 31.426123, 28.680258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036709, -0.621698, -0.782396,
		0.640466, -0.586357, 0.495973,
		-0.767109, -0.519305, 0.376652,
		45.945511, 31.270330, 28.793253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554371, 30.841476, 28.357491>,  <46.482487, 31.633844, 28.529596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554371, 30.841476, 28.357491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167328, 30.908871, 28.432692>,  <45.935101, 30.949308, 28.477812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167328, 30.908871, 28.432692>,  <46.554371, 30.841476, 28.357491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167328, 30.908871, 28.432692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252398, -0.629838, -0.734575,
		-0.005355, -0.758233, 0.651962,
		-0.967609, 0.168488, 0.188004,
		45.877045, 30.959417, 28.489092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278851, 30.224792, 28.265005>,  <46.554371, 30.841476, 28.357491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278851, 30.224792, 28.265005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964451, 30.471054, 28.242472>,  <45.775810, 30.618811, 28.228951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964451, 30.471054, 28.242472>,  <46.278851, 30.224792, 28.265005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964451, 30.471054, 28.242472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395711, -0.571019, -0.719270,
		-0.474988, -0.543056, 0.692442,
		-0.786002, 0.615652, -0.056334,
		45.728649, 30.655750, 28.225571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678932, 29.785418, 28.268852>,  <46.278851, 30.224792, 28.265005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678932, 29.785418, 28.268852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588223, 30.134291, 28.095476>,  <45.533798, 30.343615, 27.991451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588223, 30.134291, 28.095476>,  <45.678932, 29.785418, 28.268852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588223, 30.134291, 28.095476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385026, -0.489066, -0.782668,
		-0.894611, -0.010604, 0.446721,
		-0.226775, 0.872182, -0.433441,
		45.520191, 30.395945, 27.965445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088951, 29.589697, 27.884531>,  <45.678932, 29.785418, 28.268852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088951, 29.589697, 27.884531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180119, 29.951778, 27.741056>,  <45.234818, 30.169027, 27.654972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180119, 29.951778, 27.741056>,  <45.088951, 29.589697, 27.884531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180119, 29.951778, 27.741056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288127, -0.289184, -0.912883,
		-0.930073, 0.311412, 0.194903,
		0.227920, 0.905204, -0.358689,
		45.248493, 30.223339, 27.633450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.522564, 38.065063, 41.915318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 37.828457, 41.877190>,  <39.010155, 37.686493, 41.854313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 37.828457, 41.877190>,  <39.522564, 38.065063, 41.915318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202309, 37.828457, 41.877190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194668, -0.106355, -0.975086,
		0.566644, -0.799245, 0.200301,
		-0.800636, -0.591519, -0.095322,
		38.962116, 37.651001, 41.848595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717365, 37.483894, 41.370007>,  <39.522564, 38.065063, 41.915318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717365, 37.483894, 41.370007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318089, 37.471462, 41.390614>,  <39.078522, 37.464005, 41.402977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318089, 37.471462, 41.390614>,  <39.717365, 37.483894, 41.370007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318089, 37.471462, 41.390614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054070, 0.087630, -0.994685,
		0.026396, -0.995668, -0.089152,
		-0.998188, -0.031076, 0.051522,
		39.018631, 37.462139, 41.406071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506218, 36.908604, 40.992565>,  <39.717365, 37.483894, 41.370007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506218, 36.908604, 40.992565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204292, 37.169601, 41.019424>,  <39.023136, 37.326202, 41.035542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204292, 37.169601, 41.019424>,  <39.506218, 36.908604, 40.992565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204292, 37.169601, 41.019424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111601, -0.026872, -0.993390,
		-0.646380, -0.757314, 0.093102,
		-0.754810, 0.652498, 0.067147,
		38.977848, 37.365349, 41.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010921, 36.667030, 40.584431>,  <39.506218, 36.908604, 40.992565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010921, 36.667030, 40.584431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885361, 37.046654, 40.595367>,  <38.810024, 37.274429, 40.601929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885361, 37.046654, 40.595367>,  <39.010921, 36.667030, 40.584431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885361, 37.046654, 40.595367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111464, -0.008241, -0.993734,
		-0.942891, -0.314979, 0.108373,
		-0.313898, 0.949063, 0.027338,
		38.791191, 37.331371, 40.603569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320148, 36.646706, 40.173172>,  <39.010921, 36.667030, 40.584431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320148, 36.646706, 40.173172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466576, 37.018906, 40.168037>,  <38.554432, 37.242226, 40.164955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466576, 37.018906, 40.168037>,  <38.320148, 36.646706, 40.173172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466576, 37.018906, 40.168037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064728, 0.011700, -0.997834,
		-0.928333, 0.366108, 0.064512,
		0.366070, 0.930499, -0.012836,
		38.576397, 37.298054, 40.164188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871624, 37.019405, 39.725185>,  <38.320148, 36.646706, 40.173172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871624, 37.019405, 39.725185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194088, 37.255936, 39.733635>,  <38.387566, 37.397854, 39.738705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194088, 37.255936, 39.733635>,  <37.871624, 37.019405, 39.725185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194088, 37.255936, 39.733635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030474, 0.077149, -0.996554,
		-0.590916, 0.802735, 0.080214,
		0.806157, 0.591324, 0.021126,
		38.435936, 37.433334, 39.739971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673523, 37.527035, 39.242889>,  <37.871624, 37.019405, 39.725185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673523, 37.527035, 39.242889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064781, 37.584187, 39.303322>,  <38.299534, 37.618477, 39.339581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064781, 37.584187, 39.303322>,  <37.673523, 37.527035, 39.242889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064781, 37.584187, 39.303322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109902, 0.261590, -0.958902,
		-0.176527, 0.954545, 0.240170,
		0.978141, 0.142877, 0.151084,
		38.358223, 37.627048, 39.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787025, 38.264656, 38.955688>,  <37.673523, 37.527035, 39.242889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787025, 38.264656, 38.955688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117268, 38.039379, 38.941875>,  <38.315414, 37.904213, 38.933586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117268, 38.039379, 38.941875>,  <37.787025, 38.264656, 38.955688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117268, 38.039379, 38.941875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134978, 0.256552, -0.957059,
		0.547868, 0.785491, 0.287828,
		0.825604, -0.563193, -0.034533,
		38.364948, 37.870422, 38.931515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357761, 38.699471, 38.596779>,  <37.787025, 38.264656, 38.955688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357761, 38.699471, 38.596779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422684, 38.306580, 38.559055>,  <38.461636, 38.070847, 38.536423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422684, 38.306580, 38.559055>,  <38.357761, 38.699471, 38.596779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422684, 38.306580, 38.559055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199842, 0.126316, -0.971652,
		0.966292, 0.138857, 0.216791,
		0.162305, -0.982223, -0.094308,
		38.471375, 38.011913, 38.530762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954372, 38.632904, 38.152058>,  <38.357761, 38.699471, 38.596779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954372, 38.632904, 38.152058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791584, 38.268288, 38.128513>,  <38.693913, 38.049519, 38.114388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791584, 38.268288, 38.128513>,  <38.954372, 38.632904, 38.152058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791584, 38.268288, 38.128513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100658, 0.019293, -0.994734,
		0.907880, -0.410749, 0.083903,
		-0.406968, -0.911544, -0.058861,
		38.669495, 37.994823, 38.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412502, 38.263493, 37.659359>,  <38.954372, 38.632904, 38.152058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412502, 38.263493, 37.659359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094631, 38.021259, 37.676098>,  <38.903908, 37.875919, 37.686142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094631, 38.021259, 37.676098>,  <39.412502, 38.263493, 37.659359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094631, 38.021259, 37.676098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021295, -0.096700, -0.995086,
		0.606657, -0.789882, 0.089741,
		-0.794678, -0.605587, 0.041843,
		38.856228, 37.839584, 37.688652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582096, 37.683369, 37.268780>,  <39.412502, 38.263493, 37.659359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582096, 37.683369, 37.268780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183384, 37.660305, 37.291039>,  <38.944157, 37.646465, 37.304394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183384, 37.660305, 37.291039>,  <39.582096, 37.683369, 37.268780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183384, 37.660305, 37.291039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035926, -0.299185, -0.953518,
		0.071631, -0.952451, 0.296151,
		-0.996784, -0.057662, 0.055649,
		38.884350, 37.643005, 37.307732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883121, 37.135056, 36.813286>,  <39.582096, 37.683369, 37.268780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883121, 37.135056, 36.813286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945110, 37.014286, 37.189548>,  <39.982304, 36.941826, 37.415306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945110, 37.014286, 37.189548>,  <39.883121, 37.135056, 36.813286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945110, 37.014286, 37.189548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697716, -0.707542, -0.112148,
		0.699410, -0.638928, -0.320305,
		0.154975, -0.301919, 0.940652,
		39.991604, 36.923710, 37.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908092, 36.298084, 36.887024>,  <39.883121, 37.135056, 36.813286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908092, 36.298084, 36.887024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778049, 36.456738, 37.230415>,  <39.700024, 36.551929, 37.436451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778049, 36.456738, 37.230415>,  <39.908092, 36.298084, 36.887024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778049, 36.456738, 37.230415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704755, -0.706932, 0.059726,
		0.630576, -0.585601, 0.509358,
		-0.325106, 0.396634, 0.858480,
		39.680519, 36.575729, 37.487961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576626, 36.266571, 36.206352>,  <39.908092, 36.298084, 36.887024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576626, 36.266571, 36.206352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497318, 35.875305, 36.181408>,  <39.449734, 35.640545, 36.166443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497318, 35.875305, 36.181408>,  <39.576626, 36.266571, 36.206352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497318, 35.875305, 36.181408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589429, 0.068162, 0.804939,
		-0.783110, 0.196351, -0.590072,
		-0.198272, -0.978162, -0.062357,
		39.437836, 35.581856, 36.162701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841175, 36.143864, 36.432064>,  <39.576626, 36.266571, 36.206352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841175, 36.143864, 36.432064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000229, 35.777134, 36.446568>,  <39.095661, 35.557095, 36.455269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000229, 35.777134, 36.446568>,  <38.841175, 36.143864, 36.432064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000229, 35.777134, 36.446568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634901, -0.246399, 0.732248,
		-0.662412, -0.314187, -0.680072,
		0.397632, -0.916828, 0.036260,
		39.119518, 35.502087, 36.457447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266178, 35.803017, 36.544529>,  <38.841175, 36.143864, 36.432064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266178, 35.803017, 36.544529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584522, 35.598362, 36.674038>,  <38.775528, 35.475567, 36.751743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584522, 35.598362, 36.674038>,  <38.266178, 35.803017, 36.544529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584522, 35.598362, 36.674038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517984, -0.298445, 0.801638,
		-0.313510, -0.805709, -0.502538,
		0.795867, -0.511628, 0.323779,
		38.823280, 35.444870, 36.771168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019962, 35.143360, 36.840622>,  <38.266178, 35.803017, 36.544529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019962, 35.143360, 36.840622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375660, 35.197433, 37.015427>,  <38.589077, 35.229877, 37.120308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375660, 35.197433, 37.015427>,  <38.019962, 35.143360, 36.840622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375660, 35.197433, 37.015427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371527, -0.343904, 0.862379,
		0.266864, -0.929224, -0.255591,
		0.889242, 0.135179, 0.437008,
		38.642433, 35.237988, 37.146530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129513, 34.545937, 37.303139>,  <38.019962, 35.143360, 36.840622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129513, 34.545937, 37.303139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369183, 34.840054, 37.429844>,  <38.512985, 35.016521, 37.505867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369183, 34.840054, 37.429844>,  <38.129513, 34.545937, 37.303139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369183, 34.840054, 37.429844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211992, -0.235815, 0.948394,
		0.772041, -0.635405, 0.014581,
		0.599176, 0.735290, 0.316759,
		38.548935, 35.060642, 37.524872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604038, 34.139328, 37.833668>,  <38.129513, 34.545937, 37.303139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604038, 34.139328, 37.833668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605358, 34.534660, 37.894592>,  <38.606152, 34.771858, 37.931149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605358, 34.534660, 37.894592>,  <38.604038, 34.139328, 37.833668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605358, 34.534660, 37.894592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197677, -0.148663, 0.968929,
		0.980262, -0.033310, 0.194879,
		0.003304, 0.988327, 0.152313,
		38.606350, 34.831158, 37.940285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134258, 34.225677, 38.373043>,  <38.604038, 34.139328, 37.833668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134258, 34.225677, 38.373043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925972, 34.567066, 38.364632>,  <38.800999, 34.771900, 38.359585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925972, 34.567066, 38.364632>,  <39.134258, 34.225677, 38.373043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925972, 34.567066, 38.364632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092039, -0.031632, 0.995253,
		0.848752, 0.520183, 0.095024,
		-0.520720, 0.853468, -0.021030,
		38.769756, 34.823109, 38.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467205, 34.703381, 38.819427>,  <39.134258, 34.225677, 38.373043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467205, 34.703381, 38.819427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083416, 34.815300, 38.806000>,  <38.853142, 34.882454, 38.797943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083416, 34.815300, 38.806000>,  <39.467205, 34.703381, 38.819427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083416, 34.815300, 38.806000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043231, -0.028411, 0.998661,
		0.278473, 0.959637, 0.039356,
		-0.959471, 0.279802, -0.033574,
		38.795574, 34.899242, 38.795929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470985, 35.061234, 39.515289>,  <39.467205, 34.703381, 38.819427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470985, 35.061234, 39.515289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089886, 35.005768, 39.407188>,  <38.861225, 34.972488, 39.342327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089886, 35.005768, 39.407188>,  <39.470985, 35.061234, 39.515289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089886, 35.005768, 39.407188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212614, -0.330966, 0.919378,
		-0.216931, 0.933398, 0.285846,
		-0.952752, -0.138667, -0.270251,
		38.804062, 34.964169, 39.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197651, 35.369667, 40.108330>,  <39.470985, 35.061234, 39.515289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197651, 35.369667, 40.108330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940594, 35.111279, 39.943539>,  <38.786358, 34.956245, 39.844666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940594, 35.111279, 39.943539>,  <39.197651, 35.369667, 40.108330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940594, 35.111279, 39.943539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260501, -0.321452, 0.910389,
		-0.720518, 0.692378, 0.038303,
		-0.642646, -0.645973, -0.411977,
		38.747799, 34.917488, 39.819946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620945, 35.618210, 40.259762>,  <39.197651, 35.369667, 40.108330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620945, 35.618210, 40.259762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510471, 35.247131, 40.159286>,  <38.444187, 35.024483, 40.098999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510471, 35.247131, 40.159286>,  <38.620945, 35.618210, 40.259762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510471, 35.247131, 40.159286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366802, -0.139834, 0.919730,
		-0.888358, 0.346150, -0.301662,
		-0.276182, -0.927700, -0.251191,
		38.427616, 34.968822, 40.083931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944771, 35.519249, 40.631161>,  <38.620945, 35.618210, 40.259762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944771, 35.519249, 40.631161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064075, 35.148579, 40.539680>,  <38.135658, 34.926174, 40.484795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064075, 35.148579, 40.539680>,  <37.944771, 35.519249, 40.631161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064075, 35.148579, 40.539680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357628, -0.330648, 0.873370,
		-0.884953, -0.178706, -0.430027,
		0.298264, -0.926680, -0.228697,
		38.153553, 34.870575, 40.471073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381622, 34.913490, 40.756584>,  <37.944771, 35.519249, 40.631161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381622, 34.913490, 40.756584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738701, 34.737366, 40.794994>,  <37.952946, 34.631691, 40.818043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738701, 34.737366, 40.794994>,  <37.381622, 34.913490, 40.756584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738701, 34.737366, 40.794994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272918, -0.358628, 0.892694,
		-0.358628, -0.823109, -0.440314,
		-0.892694, 0.440314, -0.096028,
		38.006508, 34.605270, 40.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184071, 34.409050, 41.115128>,  <37.381622, 34.913490, 40.756584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184071, 34.409050, 41.115128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581039, 34.429214, 41.159962>,  <37.819221, 34.441315, 41.186863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581039, 34.429214, 41.159962>,  <37.184071, 34.409050, 41.115128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581039, 34.429214, 41.159962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096877, -0.240372, 0.965834,
		0.075633, -0.969371, -0.233666,
		0.992419, 0.050412, 0.112090,
		37.878765, 34.444340, 41.193588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846764, 33.762363, 40.937286>,  <37.184071, 34.409050, 41.115128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846764, 33.762363, 40.937286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509335, 33.579624, 41.050190>,  <36.306877, 33.469978, 41.117931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509335, 33.579624, 41.050190>,  <36.846764, 33.762363, 40.937286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509335, 33.579624, 41.050190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381425, 0.139737, -0.913777,
		0.378019, -0.878499, -0.292133,
		-0.843574, -0.456852, 0.282258,
		36.256264, 33.442570, 41.134869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673809, 33.342651, 40.351589>,  <36.846764, 33.762363, 40.937286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673809, 33.342651, 40.351589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339340, 33.397820, 40.563927>,  <36.138660, 33.430920, 40.691330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339340, 33.397820, 40.563927>,  <36.673809, 33.342651, 40.351589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339340, 33.397820, 40.563927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489971, 0.247074, -0.835992,
		-0.246461, -0.959130, -0.139018,
		-0.836173, 0.137925, 0.530840,
		36.088490, 33.439198, 40.723179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068680, 33.095142, 39.895580>,  <36.673809, 33.342651, 40.351589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068680, 33.095142, 39.895580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884109, 33.313709, 40.175156>,  <35.773369, 33.444851, 40.342899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884109, 33.313709, 40.175156>,  <36.068680, 33.095142, 39.895580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884109, 33.313709, 40.175156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708288, 0.247518, -0.661108,
		-0.534242, -0.800099, 0.272812,
		-0.461426, 0.546421, 0.698935,
		35.745682, 33.477634, 40.384834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410561, 32.974361, 39.892162>,  <36.068680, 33.095142, 39.895580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410561, 32.974361, 39.892162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401005, 33.324665, 40.085026>,  <35.395271, 33.534847, 40.200745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401005, 33.324665, 40.085026>,  <35.410561, 32.974361, 39.892162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401005, 33.324665, 40.085026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699896, 0.329730, -0.633579,
		-0.713845, -0.352595, 0.605064,
		-0.023889, 0.875760, 0.482156,
		35.393837, 33.587395, 40.229671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736492, 33.220860, 39.740459>,  <35.410561, 32.974361, 39.892162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736492, 33.220860, 39.740459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936192, 33.551277, 39.845070>,  <35.056011, 33.749527, 39.907837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936192, 33.551277, 39.845070>,  <34.736492, 33.220860, 39.740459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936192, 33.551277, 39.845070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573236, 0.541226, -0.615203,
		-0.649732, 0.157224, 0.743726,
		0.499249, 0.826048, 0.261526,
		35.085968, 33.799091, 39.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249905, 33.647076, 39.767990>,  <34.736492, 33.220860, 39.740459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249905, 33.647076, 39.767990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584164, 33.865524, 39.744495>,  <34.784718, 33.996593, 39.730396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584164, 33.865524, 39.744495>,  <34.249905, 33.647076, 39.767990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584164, 33.865524, 39.744495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413888, 0.555759, -0.720991,
		-0.361104, 0.626804, 0.690450,
		0.835644, 0.546122, -0.058740,
		34.834858, 34.029362, 39.726875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005020, 34.236698, 39.696590>,  <34.249905, 33.647076, 39.767990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005020, 34.236698, 39.696590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370094, 34.300453, 39.546070>,  <34.589138, 34.338707, 39.455757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370094, 34.300453, 39.546070>,  <34.005020, 34.236698, 39.696590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370094, 34.300453, 39.546070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363108, 0.738777, -0.567769,
		0.187507, 0.654832, 0.732145,
		0.912685, 0.159387, -0.376300,
		34.643898, 34.348270, 39.433182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123314, 34.961094, 39.648457>,  <34.005020, 34.236698, 39.696590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123314, 34.961094, 39.648457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347946, 34.767715, 39.379860>,  <34.482727, 34.651688, 39.218700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347946, 34.767715, 39.379860>,  <34.123314, 34.961094, 39.648457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347946, 34.767715, 39.379860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322598, 0.619397, -0.715735,
		0.761940, 0.618569, 0.191886,
		0.561585, -0.483445, -0.671493,
		34.516422, 34.622681, 39.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399902, 35.542080, 39.210392>,  <34.123314, 34.961094, 39.648457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399902, 35.542080, 39.210392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469315, 35.212448, 38.994698>,  <34.510963, 35.014668, 38.865280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469315, 35.212448, 38.994698>,  <34.399902, 35.542080, 39.210392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469315, 35.212448, 38.994698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271442, 0.486313, -0.830553,
		0.946682, 0.290498, -0.139301,
		0.173530, -0.824082, -0.539237,
		34.521374, 34.965225, 38.832928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767078, 35.714348, 38.622673>,  <34.399902, 35.542080, 39.210392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767078, 35.714348, 38.622673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605358, 35.362377, 38.522865>,  <34.508327, 35.151196, 38.462978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605358, 35.362377, 38.522865>,  <34.767078, 35.714348, 38.622673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605358, 35.362377, 38.522865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362574, 0.404656, -0.839520,
		0.839691, -0.248948, -0.482643,
		-0.404302, -0.879931, -0.249524,
		34.484066, 35.098396, 38.448009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917839, 35.606171, 37.798054>,  <34.767078, 35.714348, 38.622673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917839, 35.606171, 37.798054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612801, 35.376633, 37.917492>,  <34.429779, 35.238911, 37.989155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612801, 35.376633, 37.917492>,  <34.917839, 35.606171, 37.798054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612801, 35.376633, 37.917492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364337, -0.000399, -0.931267,
		0.534521, -0.818965, -0.208769,
		-0.762591, -0.573844, 0.298593,
		34.384022, 35.204479, 38.007069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845936, 35.074638, 37.261036>,  <34.917839, 35.606171, 37.798054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845936, 35.074638, 37.261036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487427, 35.070305, 37.438385>,  <34.272320, 35.067707, 37.544792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487427, 35.070305, 37.438385>,  <34.845936, 35.074638, 37.261036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487427, 35.070305, 37.438385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443413, 0.001709, -0.896316,
		0.008972, -0.999940, -0.006346,
		-0.896273, -0.010856, 0.443371,
		34.218544, 35.067055, 37.571396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.314468, 31.551579, 44.468666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994083, 31.790033, 44.490837>,  <36.801853, 31.933107, 44.504139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994083, 31.790033, 44.490837>,  <37.314468, 31.551579, 44.468666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994083, 31.790033, 44.490837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052302, 0.161900, -0.985420,
		-0.596421, -0.786389, -0.160856,
		-0.800966, 0.596138, 0.055431,
		36.753792, 31.968874, 44.507465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032730, 31.497988, 43.812244>,  <37.314468, 31.551579, 44.468666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032730, 31.497988, 43.812244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850914, 31.830545, 43.940109>,  <36.741825, 32.030079, 44.016827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850914, 31.830545, 43.940109>,  <37.032730, 31.497988, 43.812244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850914, 31.830545, 43.940109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289287, 0.201634, -0.935765,
		-0.842443, -0.517813, 0.148861,
		-0.454536, 0.831392, 0.319662,
		36.714554, 32.079964, 44.036007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430069, 31.461180, 43.370243>,  <37.032730, 31.497988, 43.812244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430069, 31.461180, 43.370243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471565, 31.827795, 43.524746>,  <36.496464, 32.047764, 43.617447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471565, 31.827795, 43.524746>,  <36.430069, 31.461180, 43.370243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471565, 31.827795, 43.524746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283137, 0.399501, -0.871913,
		-0.953452, -0.018910, 0.300951,
		0.103742, 0.916538, 0.386259,
		36.502689, 32.102757, 43.640625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758144, 31.776203, 43.350498>,  <36.430069, 31.461180, 43.370243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758144, 31.776203, 43.350498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061001, 32.037136, 43.336636>,  <36.242714, 32.193695, 43.328316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061001, 32.037136, 43.336636>,  <35.758144, 31.776203, 43.350498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061001, 32.037136, 43.336636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245630, 0.235129, -0.940415,
		-0.605313, 0.720540, 0.338258,
		0.757140, 0.652332, -0.034660,
		36.288143, 32.232834, 43.326237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443386, 32.462097, 43.255688>,  <35.758144, 31.776203, 43.350498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443386, 32.462097, 43.255688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825294, 32.500366, 43.143082>,  <36.054440, 32.523327, 43.075520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825294, 32.500366, 43.143082>,  <35.443386, 32.462097, 43.255688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825294, 32.500366, 43.143082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288129, 0.531426, -0.796598,
		0.073388, 0.841685, 0.534959,
		0.954775, 0.095676, -0.281514,
		36.111729, 32.529068, 43.058628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337990, 32.902863, 42.822453>,  <35.443386, 32.462097, 43.255688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337990, 32.902863, 42.822453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719051, 32.814903, 42.738453>,  <35.947689, 32.762127, 42.688053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719051, 32.814903, 42.738453>,  <35.337990, 32.902863, 42.822453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719051, 32.814903, 42.738453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075534, 0.497845, -0.863971,
		0.294531, 0.838925, 0.457663,
		0.952652, -0.219897, -0.209998,
		36.004848, 32.748936, 42.675453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670250, 33.526886, 42.541500>,  <35.337990, 32.902863, 42.822453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670250, 33.526886, 42.541500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916641, 33.242031, 42.406784>,  <36.064476, 33.071117, 42.325954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916641, 33.242031, 42.406784>,  <35.670250, 33.526886, 42.541500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916641, 33.242031, 42.406784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074318, 0.478155, -0.875125,
		0.784250, 0.514028, 0.347458,
		0.615978, -0.712139, -0.336791,
		36.101433, 33.028389, 42.305748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245483, 33.748798, 42.309017>,  <35.670250, 33.526886, 42.541500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245483, 33.748798, 42.309017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269009, 33.403931, 42.107738>,  <36.283123, 33.197010, 41.986973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269009, 33.403931, 42.107738>,  <36.245483, 33.748798, 42.309017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269009, 33.403931, 42.107738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040365, 0.505710, -0.861758,
		0.997452, 0.030375, 0.064546,
		0.058817, -0.862168, -0.503196,
		36.286655, 33.145279, 41.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758045, 33.795593, 41.743874>,  <36.245483, 33.748798, 42.309017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758045, 33.795593, 41.743874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492790, 33.515972, 41.636860>,  <36.333637, 33.348198, 41.572651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492790, 33.515972, 41.636860>,  <36.758045, 33.795593, 41.743874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492790, 33.515972, 41.636860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034168, 0.385327, -0.922147,
		0.747719, -0.602368, -0.279410,
		-0.663136, -0.699054, -0.267535,
		36.293850, 33.306255, 41.556599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442368, 33.710922, 41.417984>,  <36.758045, 33.795593, 41.743874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442368, 33.710922, 41.417984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746906, 33.955383, 41.504562>,  <37.929630, 34.102058, 41.556511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746906, 33.955383, 41.504562>,  <37.442368, 33.710922, 41.417984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746906, 33.955383, 41.504562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037649, -0.291611, 0.955796,
		0.647252, -0.735840, -0.199008,
		0.761345, 0.611148, 0.216450,
		37.975311, 34.138729, 41.569496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828201, 33.266212, 41.787270>,  <37.442368, 33.710922, 41.417984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828201, 33.266212, 41.787270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.938133, 33.639511, 41.879810>,  <38.004093, 33.863491, 41.935333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.938133, 33.639511, 41.879810>,  <37.828201, 33.266212, 41.787270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938133, 33.639511, 41.879810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010739, -0.237621, 0.971299,
		0.961432, -0.269428, -0.055284,
		0.274832, 0.933244, 0.231350,
		38.020584, 33.919483, 41.949215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340641, 33.217785, 42.192764>,  <37.828201, 33.266212, 41.787270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340641, 33.217785, 42.192764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234097, 33.590294, 42.292191>,  <38.170170, 33.813801, 42.351845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234097, 33.590294, 42.292191>,  <38.340641, 33.217785, 42.192764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234097, 33.590294, 42.292191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056155, -0.242446, 0.968538,
		0.962236, 0.271940, 0.012282,
		-0.266362, 0.931273, 0.248561,
		38.154186, 33.869675, 42.366760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746326, 33.412128, 42.759712>,  <38.340641, 33.217785, 42.192764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746326, 33.412128, 42.759712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491432, 33.716530, 42.808369>,  <38.338493, 33.899170, 42.837563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491432, 33.716530, 42.808369>,  <38.746326, 33.412128, 42.759712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491432, 33.716530, 42.808369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043788, -0.121827, 0.991585,
		0.769420, 0.637204, 0.044310,
		-0.637240, 0.761005, 0.121638,
		38.300259, 33.944832, 42.844860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060688, 33.943378, 43.167744>,  <38.746326, 33.412128, 42.759712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060688, 33.943378, 43.167744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670036, 34.008801, 43.223518>,  <38.435646, 34.048054, 43.256981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670036, 34.008801, 43.223518>,  <39.060688, 33.943378, 43.167744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670036, 34.008801, 43.223518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144704, 0.020715, 0.989258,
		0.158905, 0.986318, -0.043898,
		-0.976632, 0.163551, 0.139432,
		38.377048, 34.057865, 43.265347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091568, 34.365028, 43.651863>,  <39.060688, 33.943378, 43.167744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091568, 34.365028, 43.651863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701488, 34.277985, 43.668053>,  <38.467442, 34.225758, 43.677765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701488, 34.277985, 43.668053>,  <39.091568, 34.365028, 43.651863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701488, 34.277985, 43.668053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033327, 0.036409, 0.998781,
		-0.218814, 0.975358, -0.028254,
		-0.975197, -0.217606, 0.040473,
		38.408928, 34.212704, 43.680195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751255, 34.840023, 44.117069>,  <39.091568, 34.365028, 43.651863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751255, 34.840023, 44.117069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507416, 34.523464, 44.098820>,  <38.361111, 34.333530, 44.087868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507416, 34.523464, 44.098820>,  <38.751255, 34.840023, 44.117069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507416, 34.523464, 44.098820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010877, -0.065903, 0.997767,
		-0.792634, 0.607744, 0.048782,
		-0.609601, -0.791394, -0.045627,
		38.324535, 34.286045, 44.085133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258450, 35.034042, 44.548569>,  <38.751255, 34.840023, 44.117069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258450, 35.034042, 44.548569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260536, 34.635612, 44.513241>,  <38.261787, 34.396553, 44.492043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260536, 34.635612, 44.513241>,  <38.258450, 35.034042, 44.548569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260536, 34.635612, 44.513241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001387, -0.088332, 0.996090,
		-0.999986, -0.005070, -0.001842,
		0.005213, -0.996078, -0.088324,
		38.262100, 34.336788, 44.486744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887325, 34.868511, 45.014660>,  <38.258450, 35.034042, 44.548569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887325, 34.868511, 45.014660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064137, 34.516701, 44.944172>,  <38.170223, 34.305614, 44.901878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064137, 34.516701, 44.944172>,  <37.887325, 34.868511, 45.014660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064137, 34.516701, 44.944172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234318, -0.076414, 0.969152,
		-0.865856, -0.469683, 0.172311,
		0.442027, -0.879522, -0.176219,
		38.196743, 34.252846, 44.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617828, 34.352242, 45.497803>,  <37.887325, 34.868511, 45.014660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617828, 34.352242, 45.497803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957638, 34.175831, 45.382011>,  <38.161526, 34.069984, 45.312538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957638, 34.175831, 45.382011>,  <37.617828, 34.352242, 45.497803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957638, 34.175831, 45.382011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200351, -0.237894, 0.950403,
		-0.488022, -0.865389, -0.113736,
		0.849526, -0.441031, -0.289479,
		38.212494, 34.043522, 45.295166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588242, 33.628304, 45.614967>,  <37.617828, 34.352242, 45.497803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588242, 33.628304, 45.614967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973804, 33.734768, 45.617455>,  <38.205143, 33.798645, 45.618946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973804, 33.734768, 45.617455>,  <37.588242, 33.628304, 45.614967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973804, 33.734768, 45.617455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052963, -0.214579, 0.975270,
		0.260912, -0.939742, -0.220931,
		0.963909, 0.266161, 0.006215,
		38.262978, 33.814617, 45.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902519, 33.094635, 46.020424>,  <37.588242, 33.628304, 45.614967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902519, 33.094635, 46.020424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158222, 33.402187, 46.015160>,  <38.311646, 33.586720, 46.012001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158222, 33.402187, 46.015160>,  <37.902519, 33.094635, 46.020424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158222, 33.402187, 46.015160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266728, -0.205648, 0.941576,
		0.721253, -0.605419, -0.336544,
		0.639258, 0.768880, -0.013158,
		38.349998, 33.632851, 46.011211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570129, 32.842354, 46.303627>,  <37.902519, 33.094635, 46.020424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570129, 32.842354, 46.303627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588131, 33.240795, 46.333988>,  <38.598930, 33.479858, 46.352203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588131, 33.240795, 46.333988>,  <38.570129, 32.842354, 46.303627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588131, 33.240795, 46.333988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427894, -0.087878, 0.899547,
		0.902708, -0.008004, -0.430179,
		0.045004, 0.996099, 0.075903,
		38.601631, 33.539623, 46.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216774, 32.952827, 46.480270>,  <38.570129, 32.842354, 46.303627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216774, 32.952827, 46.480270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065590, 33.311504, 46.572430>,  <38.974880, 33.526711, 46.627724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065590, 33.311504, 46.572430>,  <39.216774, 32.952827, 46.480270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065590, 33.311504, 46.572430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272084, -0.130287, 0.953413,
		0.884938, 0.423043, -0.194732,
		-0.377963, 0.896694, 0.230399,
		38.952202, 33.580513, 46.641548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.766277, 37.716801, 47.992825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907814, 37.350555, 47.916470>,  <32.992737, 37.130806, 47.870659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907814, 37.350555, 47.916470>,  <32.766277, 37.716801, 47.992825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907814, 37.350555, 47.916470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095648, 0.238443, -0.966435,
		0.930400, 0.323711, 0.171950,
		0.353846, -0.915618, -0.190885,
		33.013969, 37.075871, 47.859203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220940, 37.820206, 47.468258>,  <32.766277, 37.716801, 47.992825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220940, 37.820206, 47.468258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193008, 37.421368, 47.456112>,  <33.176250, 37.182064, 47.448826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193008, 37.421368, 47.456112>,  <33.220940, 37.820206, 47.468258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193008, 37.421368, 47.456112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162956, 0.018627, -0.986457,
		0.984159, -0.073827, 0.161183,
		-0.069825, -0.997097, -0.030362,
		33.172062, 37.122238, 47.447002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851566, 37.479862, 47.174728>,  <33.220940, 37.820206, 47.468258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851566, 37.479862, 47.174728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534901, 37.241497, 47.120823>,  <33.344902, 37.098480, 47.088478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534901, 37.241497, 47.120823>,  <33.851566, 37.479862, 47.174728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534901, 37.241497, 47.120823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225619, -0.080163, -0.970912,
		0.567774, -0.799039, 0.197910,
		-0.791662, -0.595911, -0.134764,
		33.297401, 37.062725, 47.080395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127495, 37.031765, 46.721844>,  <33.851566, 37.479862, 47.174728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127495, 37.031765, 46.721844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745785, 36.916031, 46.691795>,  <33.516758, 36.846588, 46.673767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745785, 36.916031, 46.691795>,  <34.127495, 37.031765, 46.721844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745785, 36.916031, 46.691795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126155, -0.161990, -0.978695,
		0.271007, -0.943420, 0.191084,
		-0.954275, -0.289339, -0.075117,
		33.459503, 36.829227, 46.669262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089581, 36.527252, 46.169758>,  <34.127495, 37.031765, 46.721844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089581, 36.527252, 46.169758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.710121, 36.649654, 46.201832>,  <33.482445, 36.723095, 46.221077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.710121, 36.649654, 46.201832>,  <34.089581, 36.527252, 46.169758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710121, 36.649654, 46.201832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128824, -0.142206, -0.981418,
		-0.288917, -0.941349, 0.174325,
		-0.948647, 0.306006, 0.080183,
		33.425526, 36.741455, 46.225887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864597, 36.086525, 45.683529>,  <34.089581, 36.527252, 46.169758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864597, 36.086525, 45.683529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590973, 36.375404, 45.724480>,  <33.426800, 36.548733, 45.749050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590973, 36.375404, 45.724480>,  <33.864597, 36.086525, 45.683529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590973, 36.375404, 45.724480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132184, 0.015295, -0.991107,
		-0.717347, -0.691512, 0.085001,
		-0.684062, 0.722204, 0.102378,
		33.385754, 36.592064, 45.755192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349377, 35.905838, 45.215160>,  <33.864597, 36.086525, 45.683529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349377, 35.905838, 45.215160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304466, 36.300468, 45.262608>,  <33.277519, 36.537247, 45.291077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304466, 36.300468, 45.262608>,  <33.349377, 35.905838, 45.215160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304466, 36.300468, 45.262608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316663, 0.077625, -0.945357,
		-0.941870, -0.143703, 0.303695,
		-0.112276, 0.986572, 0.118618,
		33.270782, 36.596439, 45.298195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701267, 36.038971, 44.859322>,  <33.349377, 35.905838, 45.215160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701267, 36.038971, 44.859322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913986, 36.376389, 44.889317>,  <33.041618, 36.578838, 44.907314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913986, 36.376389, 44.889317>,  <32.701267, 36.038971, 44.859322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913986, 36.376389, 44.889317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224733, 0.225938, -0.947865,
		-0.816512, 0.487216, 0.309725,
		0.531793, 0.843548, 0.074988,
		33.073524, 36.629452, 44.911812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240532, 36.561340, 44.591961>,  <32.701267, 36.038971, 44.859322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240532, 36.561340, 44.591961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.617279, 36.695107, 44.578995>,  <32.843327, 36.775368, 44.571213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.617279, 36.695107, 44.578995>,  <32.240532, 36.561340, 44.591961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617279, 36.695107, 44.578995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138768, 0.299324, -0.944007,
		-0.305988, 0.893628, 0.328330,
		0.941868, 0.334417, -0.032417,
		32.899837, 36.795433, 44.569271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185719, 37.154266, 44.117001>,  <32.240532, 36.561340, 44.591961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185719, 37.154266, 44.117001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578484, 37.082325, 44.140678>,  <32.814140, 37.039158, 44.154884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578484, 37.082325, 44.140678>,  <32.185719, 37.154266, 44.117001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578484, 37.082325, 44.140678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107732, 0.273593, -0.955793,
		0.155712, 0.944880, 0.288020,
		0.981910, -0.179858, 0.059192,
		32.873058, 37.028366, 44.158436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481026, 37.750889, 43.710484>,  <32.185719, 37.154266, 44.117001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481026, 37.750889, 43.710484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759583, 37.463829, 43.712379>,  <32.926716, 37.291595, 43.713516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759583, 37.463829, 43.712379>,  <32.481026, 37.750889, 43.710484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759583, 37.463829, 43.712379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235482, 0.222265, -0.946122,
		0.677927, 0.659988, 0.323777,
		0.696393, -0.717645, 0.004736,
		32.968502, 37.248535, 43.713799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131706, 38.053871, 43.367752>,  <32.481026, 37.750889, 43.710484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131706, 38.053871, 43.367752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 37.654499, 43.353374>,  <33.159260, 37.414875, 43.344749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 37.654499, 43.353374>,  <33.131706, 38.053871, 43.367752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148926, 37.654499, 43.353374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258425, 0.045881, -0.964941,
		0.965072, 0.032254, 0.259994,
		0.043052, -0.998426, -0.035943,
		33.161842, 37.354973, 43.342590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708591, 37.918007, 42.984943>,  <33.131706, 38.053871, 43.367752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708591, 37.918007, 42.984943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508678, 37.573647, 42.946842>,  <33.388729, 37.367031, 42.923981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508678, 37.573647, 42.946842>,  <33.708591, 37.918007, 42.984943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508678, 37.573647, 42.946842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158472, 0.017231, -0.987213,
		0.851531, -0.508486, 0.127816,
		-0.499781, -0.860898, -0.095254,
		33.358746, 37.315376, 42.918266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097809, 37.502880, 42.492695>,  <33.708591, 37.918007, 42.984943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097809, 37.502880, 42.492695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739594, 37.324886, 42.493492>,  <33.524666, 37.218090, 42.493973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739594, 37.324886, 42.493492>,  <34.097809, 37.502880, 42.492695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739594, 37.324886, 42.493492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022281, -0.049320, -0.998535,
		0.444433, -0.894178, 0.054083,
		-0.895535, -0.444987, 0.001996,
		33.470932, 37.191391, 42.494091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701942, 37.126663, 42.450703>,  <34.097809, 37.502880, 42.492695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701942, 37.126663, 42.450703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998837, 37.374931, 42.349625>,  <35.176975, 37.523891, 42.288979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998837, 37.374931, 42.349625>,  <34.701942, 37.126663, 42.450703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998837, 37.374931, 42.349625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318140, 0.005515, 0.948028,
		0.589803, -0.784055, -0.193365,
		0.742240, 0.620666, -0.252692,
		35.221508, 37.561131, 42.273815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401993, 36.905811, 42.714527>,  <34.701942, 37.126663, 42.450703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401993, 36.905811, 42.714527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390419, 37.301926, 42.660133>,  <35.383472, 37.539597, 42.627499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390419, 37.301926, 42.660133>,  <35.401993, 36.905811, 42.714527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390419, 37.301926, 42.660133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328585, 0.137904, 0.934352,
		0.944031, -0.017645, -0.329384,
		-0.028937, 0.990288, -0.135984,
		35.381737, 37.599010, 42.619339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977474, 37.097397, 43.092831>,  <35.401993, 36.905811, 42.714527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977474, 37.097397, 43.092831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753006, 37.426437, 43.056141>,  <35.618324, 37.623863, 43.034126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753006, 37.426437, 43.056141>,  <35.977474, 37.097397, 43.092831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753006, 37.426437, 43.056141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127119, 0.195161, 0.972498,
		0.817881, 0.534077, -0.214087,
		-0.561170, 0.822602, -0.091727,
		35.584656, 37.673218, 43.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332382, 37.439713, 43.458797>,  <35.977474, 37.097397, 43.092831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332382, 37.439713, 43.458797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005440, 37.669537, 43.441776>,  <35.809273, 37.807430, 43.431564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005440, 37.669537, 43.441776>,  <36.332382, 37.439713, 43.458797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005440, 37.669537, 43.441776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053963, 0.149886, 0.987230,
		0.573597, 0.804624, -0.153515,
		-0.817358, 0.574556, -0.042554,
		35.760231, 37.841904, 43.429008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464458, 38.035961, 43.740047>,  <36.332382, 37.439713, 43.458797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464458, 38.035961, 43.740047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066151, 38.028717, 43.776066>,  <35.827164, 38.024368, 43.797676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066151, 38.028717, 43.776066>,  <36.464458, 38.035961, 43.740047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066151, 38.028717, 43.776066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090183, -0.006710, 0.995903,
		-0.017434, 0.999813, 0.008315,
		-0.995773, -0.018112, 0.090049,
		35.767418, 38.023285, 43.803082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359512, 38.527065, 44.201859>,  <36.464458, 38.035961, 43.740047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359512, 38.527065, 44.201859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030167, 38.303070, 44.238678>,  <35.832558, 38.168671, 44.260769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030167, 38.303070, 44.238678>,  <36.359512, 38.527065, 44.201859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030167, 38.303070, 44.238678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204971, -0.142197, 0.968383,
		-0.529198, 0.816204, 0.231863,
		-0.823369, -0.559992, 0.092048,
		35.783157, 38.135071, 44.266293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864983, 38.881935, 44.735714>,  <36.359512, 38.527065, 44.201859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864983, 38.881935, 44.735714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727055, 38.507103, 44.713917>,  <35.644299, 38.282204, 44.700840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727055, 38.507103, 44.713917>,  <35.864983, 38.881935, 44.735714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727055, 38.507103, 44.713917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040951, -0.042977, 0.998237,
		-0.937774, 0.346447, -0.023556,
		-0.344824, -0.937085, -0.054490,
		35.623608, 38.225979, 44.697571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275284, 38.890102, 45.143681>,  <35.864983, 38.881935, 44.735714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275284, 38.890102, 45.143681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401440, 38.512840, 45.101749>,  <35.477135, 38.286484, 45.076591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401440, 38.512840, 45.101749>,  <35.275284, 38.890102, 45.143681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401440, 38.512840, 45.101749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255400, -0.190750, 0.947832,
		-0.913947, -0.272167, -0.301042,
		0.315392, -0.943154, -0.104824,
		35.496056, 38.229893, 45.070301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811989, 38.545879, 45.447594>,  <35.275284, 38.890102, 45.143681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811989, 38.545879, 45.447594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108685, 38.277611, 45.445942>,  <35.286701, 38.116650, 45.444950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108685, 38.277611, 45.445942>,  <34.811989, 38.545879, 45.447594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108685, 38.277611, 45.445942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156956, -0.179568, 0.971144,
		-0.652062, -0.719689, -0.238460,
		0.741741, -0.670674, -0.004130,
		35.331207, 38.076408, 45.444702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580830, 38.074390, 45.932247>,  <34.811989, 38.545879, 45.447594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580830, 38.074390, 45.932247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975964, 38.017746, 45.906548>,  <35.213043, 37.983761, 45.891129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975964, 38.017746, 45.906548>,  <34.580830, 38.074390, 45.932247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975964, 38.017746, 45.906548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027170, -0.249636, 0.967959,
		-0.153107, -0.957930, -0.242752,
		0.987836, -0.141605, -0.064248,
		35.272316, 37.975266, 45.887272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668270, 37.378998, 46.223789>,  <34.580830, 38.074390, 45.932247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668270, 37.378998, 46.223789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030491, 37.547955, 46.239582>,  <35.247826, 37.649326, 46.249058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030491, 37.547955, 46.239582>,  <34.668270, 37.378998, 46.223789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030491, 37.547955, 46.239582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132711, -0.370455, 0.919321,
		0.402937, -0.827256, -0.391523,
		0.905555, 0.422388, 0.039484,
		35.302158, 37.674671, 46.251427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077572, 36.895573, 46.576050>,  <34.668270, 37.378998, 46.223789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077572, 36.895573, 46.576050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291302, 37.230003, 46.625793>,  <35.419540, 37.430664, 46.655640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291302, 37.230003, 46.625793>,  <35.077572, 36.895573, 46.576050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291302, 37.230003, 46.625793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214007, -0.276143, 0.936988,
		0.817738, -0.474044, -0.326478,
		0.534328, 0.836079, 0.124364,
		35.451599, 37.480827, 46.663101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807392, 36.694126, 46.950390>,  <35.077572, 36.895573, 46.576050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807392, 36.694126, 46.950390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723011, 37.081062, 47.006599>,  <35.672382, 37.313225, 47.040325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723011, 37.081062, 47.006599>,  <35.807392, 36.694126, 46.950390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723011, 37.081062, 47.006599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377247, -0.052058, 0.924648,
		0.901767, 0.248071, -0.353945,
		-0.210953, 0.967342, 0.140528,
		35.659725, 37.371265, 47.048759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307373, 36.806717, 47.361134>,  <35.807392, 36.694126, 46.950390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307373, 36.806717, 47.361134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062473, 37.114403, 47.434307>,  <35.915535, 37.299015, 47.478210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062473, 37.114403, 47.434307>,  <36.307373, 36.806717, 47.361134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062473, 37.114403, 47.434307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173702, -0.094859, 0.980219,
		0.771351, 0.631911, -0.075537,
		-0.612246, 0.769214, 0.182934,
		35.878799, 37.345165, 47.489189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055805, 37.145405, 47.312603>,  <36.307373, 36.806717, 47.361134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055805, 37.145405, 47.312603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437389, 37.029057, 47.341862>,  <37.666340, 36.959248, 47.359417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437389, 37.029057, 47.341862>,  <37.055805, 37.145405, 47.312603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437389, 37.029057, 47.341862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124424, 0.161904, -0.978931,
		0.272904, 0.942963, 0.190642,
		0.953961, -0.290875, 0.073143,
		37.723579, 36.941795, 47.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466862, 37.690426, 46.939442>,  <37.055805, 37.145405, 47.312603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466862, 37.690426, 46.939442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697720, 37.364468, 46.960773>,  <37.836235, 37.168892, 46.973572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697720, 37.364468, 46.960773>,  <37.466862, 37.690426, 46.939442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697720, 37.364468, 46.960773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244048, 0.109789, -0.963528,
		0.779324, 0.569109, 0.262239,
		0.577144, -0.814899, 0.053329,
		37.870861, 37.119999, 46.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157131, 37.956333, 46.717487>,  <37.466862, 37.690426, 46.939442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157131, 37.956333, 46.717487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131020, 37.561565, 46.658516>,  <38.115353, 37.324707, 46.623135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131020, 37.561565, 46.658516>,  <38.157131, 37.956333, 46.717487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131020, 37.561565, 46.658516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135377, 0.137618, -0.981191,
		0.988642, -0.084007, 0.124623,
		-0.065277, -0.986917, -0.147427,
		38.111435, 37.265491, 46.614288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674034, 37.821918, 46.432663>,  <38.157131, 37.956333, 46.717487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674034, 37.821918, 46.432663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428253, 37.523216, 46.330845>,  <38.280785, 37.343994, 46.269753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428253, 37.523216, 46.330845>,  <38.674034, 37.821918, 46.432663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428253, 37.523216, 46.330845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040476, 0.292380, -0.955445,
		0.787912, -0.597383, -0.149429,
		-0.614457, -0.746758, -0.254549,
		38.243916, 37.299191, 46.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013241, 37.605293, 45.944672>,  <38.674034, 37.821918, 46.432663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013241, 37.605293, 45.944672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656994, 37.428257, 45.902870>,  <38.443245, 37.322037, 45.877789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656994, 37.428257, 45.902870>,  <39.013241, 37.605293, 45.944672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656994, 37.428257, 45.902870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087122, 0.059477, -0.994421,
		0.446337, -0.894749, -0.014411,
		-0.890613, -0.442591, -0.104499,
		38.389809, 37.295479, 45.871521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178810, 37.070259, 45.499111>,  <39.013241, 37.605293, 45.944672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178810, 37.070259, 45.499111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780807, 37.109215, 45.490410>,  <38.542004, 37.132587, 45.485191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780807, 37.109215, 45.490410>,  <39.178810, 37.070259, 45.499111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780807, 37.109215, 45.490410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001940, -0.199047, -0.979988,
		-0.099768, -0.975139, 0.197864,
		-0.995009, 0.097388, -0.021750,
		38.482304, 37.138432, 45.483883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850418, 36.564404, 45.178043>,  <39.178810, 37.070259, 45.499111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850418, 36.564404, 45.178043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576691, 36.849567, 45.116772>,  <38.412453, 37.020668, 45.080009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576691, 36.849567, 45.116772>,  <38.850418, 36.564404, 45.178043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576691, 36.849567, 45.116772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115630, -0.101312, -0.988112,
		-0.719956, -0.693896, -0.013104,
		-0.684319, 0.712912, -0.153176,
		38.371395, 37.063442, 45.070820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590569, 36.438152, 44.530239>,  <38.850418, 36.564404, 45.178043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590569, 36.438152, 44.530239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448582, 36.807049, 44.591515>,  <38.363388, 37.028385, 44.628281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448582, 36.807049, 44.591515>,  <38.590569, 36.438152, 44.530239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448582, 36.807049, 44.591515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029183, 0.152845, -0.987819,
		-0.934422, -0.355118, -0.027342,
		-0.354971, 0.922242, 0.153185,
		38.342091, 37.083721, 44.637470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921703, 36.500256, 44.290997>,  <38.590569, 36.438152, 44.530239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921703, 36.500256, 44.290997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098377, 36.859119, 44.289593>,  <38.204384, 37.074440, 44.288750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098377, 36.859119, 44.289593>,  <37.921703, 36.500256, 44.290997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098377, 36.859119, 44.289593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065515, -0.036150, -0.997197,
		-0.894774, 0.440218, -0.074744,
		0.441686, 0.897163, -0.003505,
		38.230885, 37.128269, 44.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706158, 36.761421, 43.667023>,  <37.921703, 36.500256, 44.290997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706158, 36.761421, 43.667023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013416, 36.998760, 43.763260>,  <38.197773, 37.141163, 43.821003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013416, 36.998760, 43.763260>,  <37.706158, 36.761421, 43.667023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013416, 36.998760, 43.763260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222574, 0.104870, -0.969259,
		-0.600343, 0.798082, -0.051510,
		0.768147, 0.593352, 0.240590,
		38.243862, 37.176765, 43.835438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541866, 37.464554, 43.385849>,  <37.706158, 36.761421, 43.667023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541866, 37.464554, 43.385849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940639, 37.433662, 43.391018>,  <38.179901, 37.415127, 43.394119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940639, 37.433662, 43.391018>,  <37.541866, 37.464554, 43.385849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940639, 37.433662, 43.391018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036891, 0.317697, -0.947474,
		0.069065, 0.945042, 0.319571,
		0.996930, -0.077227, 0.012922,
		38.239719, 37.410496, 43.394894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776016, 38.071064, 42.864231>,  <37.541866, 37.464554, 43.385849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776016, 38.071064, 42.864231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087158, 37.841263, 42.966129>,  <38.273842, 37.703384, 43.027267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087158, 37.841263, 42.966129>,  <37.776016, 38.071064, 42.864231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087158, 37.841263, 42.966129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470786, 0.264177, -0.841767,
		0.416298, 0.774700, 0.475957,
		0.777854, -0.574500, 0.254741,
		38.320515, 37.668911, 43.042553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318874, 38.465736, 42.553192>,  <37.776016, 38.071064, 42.864231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318874, 38.465736, 42.553192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434376, 38.083755, 42.580601>,  <38.503677, 37.854568, 42.597046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434376, 38.083755, 42.580601>,  <38.318874, 38.465736, 42.553192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434376, 38.083755, 42.580601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206544, -0.007754, -0.978406,
		0.934860, 0.296668, 0.195000,
		0.288750, -0.954949, 0.068524,
		38.521000, 37.797272, 42.601158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010914, 38.429749, 42.338249>,  <38.318874, 38.465736, 42.553192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010914, 38.429749, 42.338249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.840523, 38.072491, 42.280521>,  <38.738289, 37.858135, 42.245884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.840523, 38.072491, 42.280521>,  <39.010914, 38.429749, 42.338249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840523, 38.072491, 42.280521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311719, 0.004864, -0.950162,
		0.849336, -0.449738, 0.276339,
		-0.425980, -0.893147, -0.144323,
		38.712730, 37.804546, 42.237225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.800983, 42.501877, 34.801041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680536, 42.425335, 34.427364>,  <26.608269, 42.379410, 34.203159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680536, 42.425335, 34.427364>,  <26.800983, 42.501877, 34.801041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680536, 42.425335, 34.427364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108618, -0.980166, 0.165762,
		-0.947381, -0.051556, 0.315930,
		-0.301118, -0.191356, -0.934190,
		26.590200, 42.367928, 34.147106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253618, 42.112808, 34.721962>,  <26.800983, 42.501877, 34.801041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253618, 42.112808, 34.721962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439541, 42.035885, 34.376251>,  <26.551094, 41.989731, 34.168823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439541, 42.035885, 34.376251>,  <26.253618, 42.112808, 34.721962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439541, 42.035885, 34.376251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066395, -0.980950, 0.182560,
		-0.882919, -0.027472, -0.468720,
		0.464806, -0.192307, -0.864276,
		26.578983, 41.978191, 34.116970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815170, 41.689678, 34.436302>,  <26.253618, 42.112808, 34.721962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815170, 41.689678, 34.436302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.158737, 41.620003, 34.243671>,  <26.364878, 41.578197, 34.128094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.158737, 41.620003, 34.243671>,  <25.815170, 41.689678, 34.436302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158737, 41.620003, 34.243671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126583, -0.983410, 0.129933,
		-0.496222, -0.050642, -0.866718,
		0.858919, -0.174187, -0.481579,
		26.416412, 41.567745, 34.099197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682472, 41.076591, 34.238644>,  <25.815170, 41.689678, 34.436302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682472, 41.076591, 34.238644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073931, 41.094421, 34.158382>,  <26.308805, 41.105118, 34.110226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073931, 41.094421, 34.158382>,  <25.682472, 41.076591, 34.238644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073931, 41.094421, 34.158382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103383, -0.950482, 0.293080,
		-0.177650, -0.307566, -0.934796,
		0.978648, 0.044576, -0.200650,
		26.367525, 41.107796, 34.098186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861200, 40.529545, 33.697048>,  <25.682472, 41.076591, 34.238644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861200, 40.529545, 33.697048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138674, 40.629246, 33.967361>,  <26.305157, 40.689068, 34.129547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138674, 40.629246, 33.967361>,  <25.861200, 40.529545, 33.697048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138674, 40.629246, 33.967361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013063, -0.933706, 0.357801,
		0.720163, -0.257028, -0.644439,
		0.693681, 0.249257, 0.675779,
		26.346779, 40.704021, 34.170094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266270, 39.976933, 33.686520>,  <25.861200, 40.529545, 33.697048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266270, 39.976933, 33.686520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.366449, 40.164856, 34.025120>,  <26.426558, 40.277611, 34.228279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.366449, 40.164856, 34.025120>,  <26.266270, 39.976933, 33.686520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366449, 40.164856, 34.025120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067608, -0.880716, 0.468795,
		0.965766, -0.060180, -0.252338,
		0.250450, 0.469807, 0.846497,
		26.441584, 40.305798, 34.279068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843052, 39.621311, 33.853317>,  <26.266270, 39.976933, 33.686520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843052, 39.621311, 33.853317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817835, 39.823574, 34.197491>,  <26.802706, 39.944931, 34.403996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817835, 39.823574, 34.197491>,  <26.843052, 39.621311, 33.853317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817835, 39.823574, 34.197491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019121, -0.861374, 0.507610,
		0.997828, 0.048452, 0.044633,
		-0.063041, 0.505654, 0.860430,
		26.798923, 39.975269, 34.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379082, 39.428047, 34.335583>,  <26.843052, 39.621311, 33.853317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379082, 39.428047, 34.335583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039753, 39.539700, 34.515553>,  <26.836155, 39.606689, 34.623535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039753, 39.539700, 34.515553>,  <27.379082, 39.428047, 34.335583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039753, 39.539700, 34.515553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033504, -0.819751, 0.571740,
		0.528418, 0.500094, 0.686061,
		-0.848323, 0.279132, 0.449927,
		26.785255, 39.623440, 34.650532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477375, 39.093536, 34.981342>,  <27.379082, 39.428047, 34.335583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477375, 39.093536, 34.981342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096130, 39.207180, 35.023026>,  <26.867384, 39.275368, 35.048035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096130, 39.207180, 35.023026>,  <27.477375, 39.093536, 34.981342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096130, 39.207180, 35.023026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167608, -0.782323, 0.599898,
		0.251963, 0.554303, 0.793261,
		-0.953112, 0.284110, 0.104211,
		26.810196, 39.292412, 35.054287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256556, 39.024456, 35.682487>,  <27.477375, 39.093536, 34.981342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256556, 39.024456, 35.682487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918718, 39.011044, 35.468742>,  <26.716017, 39.002995, 35.340496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918718, 39.011044, 35.468742>,  <27.256556, 39.024456, 35.682487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918718, 39.011044, 35.468742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259917, -0.846870, 0.463955,
		-0.468090, 0.530742, 0.706544,
		-0.844591, -0.033530, -0.534360,
		26.665340, 39.000984, 35.308434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715006, 38.696075, 36.145756>,  <27.256556, 39.024456, 35.682487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715006, 38.696075, 36.145756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607262, 38.651390, 35.763142>,  <26.542614, 38.624580, 35.533573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607262, 38.651390, 35.763142>,  <26.715006, 38.696075, 36.145756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607262, 38.651390, 35.763142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221355, -0.959475, 0.174386,
		-0.937254, 0.258707, 0.233720,
		-0.269363, -0.111709, -0.956538,
		26.526453, 38.617878, 35.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055771, 38.386604, 36.215824>,  <26.715006, 38.696075, 36.145756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055771, 38.386604, 36.215824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221853, 38.316811, 35.858688>,  <26.321503, 38.274933, 35.644409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221853, 38.316811, 35.858688>,  <26.055771, 38.386604, 36.215824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221853, 38.316811, 35.858688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151792, -0.980964, 0.121116,
		-0.896973, 0.085237, -0.433789,
		0.415208, -0.174483, -0.892837,
		26.346416, 38.264465, 35.590836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732195, 37.830086, 36.029003>,  <26.055771, 38.386604, 36.215824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732195, 37.830086, 36.029003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.022011, 37.820938, 35.753460>,  <26.195900, 37.815449, 35.588135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.022011, 37.820938, 35.753460>,  <25.732195, 37.830086, 36.029003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022011, 37.820938, 35.753460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003097, -0.999547, 0.029930,
		-0.689227, -0.019552, -0.724282,
		0.724539, -0.022871, -0.688854,
		26.239372, 37.814075, 35.546803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491837, 37.280216, 35.614262>,  <25.732195, 37.830086, 36.029003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491837, 37.280216, 35.614262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883205, 37.327572, 35.546532>,  <26.118027, 37.355988, 35.505894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883205, 37.327572, 35.546532>,  <25.491837, 37.280216, 35.614262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883205, 37.327572, 35.546532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101386, -0.989205, -0.105808,
		-0.180019, 0.086358, -0.979865,
		0.978424, 0.118392, -0.169320,
		26.176733, 37.363091, 35.495735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635433, 36.857880, 35.020920>,  <25.491837, 37.280216, 35.614262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635433, 36.857880, 35.020920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998915, 36.913643, 35.178310>,  <26.217003, 36.947102, 35.272743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998915, 36.913643, 35.178310>,  <25.635433, 36.857880, 35.020920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998915, 36.913643, 35.178310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233014, -0.951470, -0.201022,
		0.346356, 0.274354, -0.897088,
		0.908704, 0.139409, 0.393475,
		26.271526, 36.955467, 35.296352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987053, 36.559433, 34.614136>,  <25.635433, 36.857880, 35.020920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987053, 36.559433, 34.614136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224201, 36.561409, 34.936249>,  <26.366489, 36.562595, 35.129517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224201, 36.561409, 34.936249>,  <25.987053, 36.559433, 34.614136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224201, 36.561409, 34.936249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346084, -0.904491, -0.249243,
		0.727140, 0.426464, -0.537955,
		0.592869, 0.004943, 0.805284,
		26.402061, 36.562893, 35.177834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605242, 36.466404, 34.307667>,  <25.987053, 36.559433, 34.614136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605242, 36.466404, 34.307667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646957, 36.385231, 34.697117>,  <26.671988, 36.336529, 34.930786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646957, 36.385231, 34.697117>,  <26.605242, 36.466404, 34.307667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646957, 36.385231, 34.697117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442377, -0.867321, -0.228160,
		0.890745, 0.454503, -0.000680,
		0.104289, -0.202931, 0.973624,
		26.678244, 36.324352, 34.989204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276798, 36.153702, 34.371529>,  <26.605242, 36.466404, 34.307667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276798, 36.153702, 34.371529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076982, 36.034252, 34.696808>,  <26.957092, 35.962582, 34.891975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076982, 36.034252, 34.696808>,  <27.276798, 36.153702, 34.371529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076982, 36.034252, 34.696808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373206, -0.921315, -0.109066,
		0.781778, 0.249006, 0.571680,
		-0.499540, -0.298619, 0.813195,
		26.927120, 35.944668, 34.940765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690201, 35.693031, 34.669674>,  <27.276798, 36.153702, 34.371529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690201, 35.693031, 34.669674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376572, 35.618298, 34.906425>,  <27.188395, 35.573456, 35.048477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376572, 35.618298, 34.906425>,  <27.690201, 35.693031, 34.669674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376572, 35.618298, 34.906425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337125, -0.928882, 0.153377,
		0.521127, 0.319795, 0.791301,
		-0.784075, -0.186839, 0.591877,
		27.141350, 35.562244, 35.083988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935114, 35.482582, 35.378036>,  <27.690201, 35.693031, 34.669674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935114, 35.482582, 35.378036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576427, 35.322369, 35.302700>,  <27.361216, 35.226238, 35.257496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576427, 35.322369, 35.302700>,  <27.935114, 35.482582, 35.378036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576427, 35.322369, 35.302700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304678, -0.867258, 0.393745,
		-0.321053, 0.295692, 0.899717,
		-0.896714, -0.400537, -0.188345,
		27.307413, 35.202206, 35.246197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277676, 36.057755, 35.095524>,  <27.935114, 35.482582, 35.378036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277676, 36.057755, 35.095524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667992, 36.122917, 35.153896>,  <28.902182, 36.162014, 35.188919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667992, 36.122917, 35.153896>,  <28.277676, 36.057755, 35.095524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667992, 36.122917, 35.153896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192920, 0.955442, 0.223409,
		-0.103038, -0.246154, 0.963738,
		0.975790, 0.162905, 0.145935,
		28.960728, 36.171787, 35.197678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322506, 36.524162, 35.668003>,  <28.277676, 36.057755, 35.095524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322506, 36.524162, 35.668003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685507, 36.573769, 35.507473>,  <28.903307, 36.603531, 35.411156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685507, 36.573769, 35.507473>,  <28.322506, 36.524162, 35.668003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685507, 36.573769, 35.507473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005354, 0.951933, 0.306259,
		0.420013, -0.280080, 0.863217,
		0.907502, 0.124011, -0.401324,
		28.957758, 36.610973, 35.387077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854166, 36.752941, 36.235569>,  <28.322506, 36.524162, 35.668003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854166, 36.752941, 36.235569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989883, 36.858372, 35.874371>,  <29.071314, 36.921631, 35.657650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989883, 36.858372, 35.874371>,  <28.854166, 36.752941, 36.235569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989883, 36.858372, 35.874371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121281, 0.939672, 0.319855,
		0.932827, -0.218044, 0.286864,
		0.339300, 0.263579, -0.902996,
		29.091671, 36.937447, 35.603470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449945, 37.153542, 36.375607>,  <28.854166, 36.752941, 36.235569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449945, 37.153542, 36.375607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352175, 37.225700, 35.994511>,  <29.293512, 37.268993, 35.765854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352175, 37.225700, 35.994511>,  <29.449945, 37.153542, 36.375607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352175, 37.225700, 35.994511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084814, 0.982755, 0.164316,
		0.965951, -0.040643, -0.255512,
		-0.244427, 0.180393, -0.952740,
		29.278847, 37.279819, 35.708687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949375, 37.680035, 36.124058>,  <29.449945, 37.153542, 36.375607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949375, 37.680035, 36.124058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687826, 37.737812, 35.826984>,  <29.530897, 37.772476, 35.648739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687826, 37.737812, 35.826984>,  <29.949375, 37.680035, 36.124058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687826, 37.737812, 35.826984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131905, 0.988338, 0.076086,
		0.745017, -0.048214, -0.665302,
		-0.653874, 0.144442, -0.742688,
		29.491663, 37.781143, 35.604179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185539, 38.265255, 35.654587>,  <29.949375, 37.680035, 36.124058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185539, 38.265255, 35.654587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787392, 38.244030, 35.622517>,  <29.548504, 38.231297, 35.603275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787392, 38.244030, 35.622517>,  <30.185539, 38.265255, 35.654587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787392, 38.244030, 35.622517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070644, 0.969288, 0.235565,
		0.065214, 0.240138, -0.968546,
		-0.995368, -0.053059, -0.080176,
		29.488781, 38.228111, 35.598465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976229, 38.769150, 35.173080>,  <30.185539, 38.265255, 35.654587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976229, 38.769150, 35.173080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635496, 38.692154, 35.367947>,  <29.431057, 38.645958, 35.484867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635496, 38.692154, 35.367947>,  <29.976229, 38.769150, 35.173080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635496, 38.692154, 35.367947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077065, 0.965965, 0.246926,
		-0.518114, 0.172796, -0.837675,
		-0.851833, -0.192491, 0.487164,
		29.379946, 38.634407, 35.514095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579885, 39.275524, 35.020874>,  <29.976229, 38.769150, 35.173080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579885, 39.275524, 35.020874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411499, 39.130447, 35.353439>,  <29.310467, 39.043400, 35.552979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411499, 39.130447, 35.353439>,  <29.579885, 39.275524, 35.020874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411499, 39.130447, 35.353439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170557, 0.931883, 0.320164,
		-0.890897, -0.007025, -0.454150,
		-0.420966, -0.362691, 0.831410,
		29.285210, 39.021641, 35.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923059, 39.610203, 35.103451>,  <29.579885, 39.275524, 35.020874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923059, 39.610203, 35.103451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010715, 39.469429, 35.467453>,  <29.063309, 39.384964, 35.685856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010715, 39.469429, 35.467453>,  <28.923059, 39.610203, 35.103451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010715, 39.469429, 35.467453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219672, 0.890937, 0.397462,
		-0.950643, -0.287004, 0.117929,
		0.219140, -0.351939, 0.910009,
		29.076458, 39.363846, 35.740456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323065, 39.746681, 35.456039>,  <28.923059, 39.610203, 35.103451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323065, 39.746681, 35.456039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633364, 39.719730, 35.707012>,  <28.819544, 39.703560, 35.857597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633364, 39.719730, 35.707012>,  <28.323065, 39.746681, 35.456039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633364, 39.719730, 35.707012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261826, 0.870293, 0.417178,
		-0.574162, -0.487903, 0.657486,
		0.775748, -0.067381, 0.627435,
		28.866089, 39.699516, 35.895241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073668, 39.679092, 36.167198>,  <28.323065, 39.746681, 35.456039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073668, 39.679092, 36.167198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454430, 39.800419, 36.184517>,  <28.682886, 39.873215, 36.194908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454430, 39.800419, 36.184517>,  <28.073668, 39.679092, 36.167198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454430, 39.800419, 36.184517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289426, 0.843806, 0.451911,
		0.100536, -0.442708, 0.891012,
		0.951906, 0.303315, 0.043299,
		28.740002, 39.891415, 36.197506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138195, 39.970539, 36.860786>,  <28.073668, 39.679092, 36.167198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138195, 39.970539, 36.860786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445108, 40.114632, 36.648556>,  <28.629257, 40.201088, 36.521217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445108, 40.114632, 36.648556>,  <28.138195, 39.970539, 36.860786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445108, 40.114632, 36.648556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148562, 0.904669, 0.399378,
		0.623860, -0.227614, 0.747656,
		0.767286, 0.360230, -0.530573,
		28.675295, 40.222702, 36.489384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395378, 40.430668, 37.295876>,  <28.138195, 39.970539, 36.860786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395378, 40.430668, 37.295876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550598, 40.537502, 36.943039>,  <28.643730, 40.601601, 36.731339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550598, 40.537502, 36.943039>,  <28.395378, 40.430668, 37.295876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550598, 40.537502, 36.943039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034931, 0.952140, 0.303660,
		0.920977, -0.148648, 0.360147,
		0.388049, 0.267084, -0.882091,
		28.667013, 40.617626, 36.678413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942980, 40.942684, 37.458042>,  <28.395378, 40.430668, 37.295876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942980, 40.942684, 37.458042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878853, 41.009510, 37.068913>,  <28.840376, 41.049606, 36.835434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878853, 41.009510, 37.068913>,  <28.942980, 40.942684, 37.458042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878853, 41.009510, 37.068913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228855, 0.965008, 0.128005,
		0.960168, -0.202114, -0.192942,
		-0.160319, 0.167062, -0.972825,
		28.830757, 41.059628, 36.777065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495375, 41.300777, 37.280544>,  <28.942980, 40.942684, 37.458042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495375, 41.300777, 37.280544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190027, 41.366947, 37.030773>,  <29.006819, 41.406651, 36.880913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190027, 41.366947, 37.030773>,  <29.495375, 41.300777, 37.280544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190027, 41.366947, 37.030773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062168, 0.980980, 0.183883,
		0.642966, 0.101551, -0.759132,
		-0.763367, 0.165424, -0.624424,
		28.961018, 41.416576, 36.843445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554302, 42.096344, 37.128326>,  <29.495375, 41.300777, 37.280544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554302, 42.096344, 37.128326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196648, 41.991241, 36.983284>,  <28.982056, 41.928181, 36.896259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196648, 41.991241, 36.983284>,  <29.554302, 42.096344, 37.128326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196648, 41.991241, 36.983284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400813, 0.830679, 0.386421,
		0.199675, 0.490849, -0.848054,
		-0.894135, -0.262753, -0.362605,
		28.928408, 41.912415, 36.874504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300295, 42.618855, 36.620663>,  <29.554302, 42.096344, 37.128326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300295, 42.618855, 36.620663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981243, 42.428509, 36.768898>,  <28.789812, 42.314301, 36.857841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981243, 42.428509, 36.768898>,  <29.300295, 42.618855, 36.620663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981243, 42.428509, 36.768898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434175, 0.879502, 0.194853,
		-0.418659, -0.005480, -0.908127,
		-0.797632, -0.475863, 0.370591,
		28.741953, 42.285751, 36.880074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675163, 43.091320, 36.445190>,  <29.300295, 42.618855, 36.620663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675163, 43.091320, 36.445190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514299, 42.844978, 36.716187>,  <28.417780, 42.697174, 36.878784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514299, 42.844978, 36.716187>,  <28.675163, 43.091320, 36.445190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514299, 42.844978, 36.716187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579117, 0.744238, 0.332766,
		-0.709147, -0.258518, -0.655957,
		-0.402162, -0.615856, 0.677486,
		28.393650, 42.660221, 36.919434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931837, 43.154190, 36.457024>,  <28.675163, 43.091320, 36.445190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931837, 43.154190, 36.457024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043045, 43.005898, 36.811481>,  <28.109770, 42.916920, 37.024158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043045, 43.005898, 36.811481>,  <27.931837, 43.154190, 36.457024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043045, 43.005898, 36.811481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532336, 0.708433, 0.463401,
		-0.799576, -0.600564, -0.000396,
		0.278022, -0.370735, 0.886148,
		28.126451, 42.894676, 37.077328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378466, 43.013405, 36.768681>,  <27.931837, 43.154190, 36.457024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378466, 43.013405, 36.768681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620821, 43.035721, 37.086117>,  <27.766233, 43.049110, 37.276577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620821, 43.035721, 37.086117>,  <27.378466, 43.013405, 36.768681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620821, 43.035721, 37.086117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585759, 0.706279, 0.397563,
		-0.538319, -0.705732, 0.460603,
		0.605887, 0.055787, 0.793592,
		27.802588, 43.052456, 37.324196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014032, 42.939930, 37.330765>,  <27.378466, 43.013405, 36.768681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014032, 42.939930, 37.330765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327551, 43.139988, 37.478016>,  <27.515661, 43.260021, 37.566364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327551, 43.139988, 37.478016>,  <27.014032, 42.939930, 37.330765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327551, 43.139988, 37.478016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614898, 0.542016, 0.572816,
		0.086962, -0.675331, 0.732370,
		0.783797, 0.500147, 0.368125,
		27.562691, 43.290031, 37.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852530, 43.003857, 38.016521>,  <27.014032, 42.939930, 37.330765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852530, 43.003857, 38.016521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115196, 43.294060, 37.934128>,  <27.272797, 43.468182, 37.884693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115196, 43.294060, 37.934128>,  <26.852530, 43.003857, 38.016521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115196, 43.294060, 37.934128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576660, 0.659030, 0.482848,
		0.486056, -0.198291, 0.851135,
		0.656668, 0.725506, -0.205979,
		27.312197, 43.511711, 37.872334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.010811, 34.028873, 47.667824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662228, 34.169685, 47.531216>,  <39.453079, 34.254173, 47.449249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662228, 34.169685, 47.531216>,  <40.010811, 34.028873, 47.667824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662228, 34.169685, 47.531216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419025, -0.172458, 0.891446,
		0.254921, 0.919962, 0.297800,
		-0.871455, 0.352034, -0.341524,
		39.400791, 34.275295, 47.428757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762928, 34.656158, 48.067638>,  <40.010811, 34.028873, 47.667824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762928, 34.656158, 48.067638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423534, 34.516552, 47.908508>,  <39.219898, 34.432789, 47.813030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423534, 34.516552, 47.908508>,  <39.762928, 34.656158, 48.067638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423534, 34.516552, 47.908508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408393, -0.046294, 0.911632,
		-0.336587, 0.935974, -0.103254,
		-0.848484, -0.349011, -0.397827,
		39.168991, 34.411850, 47.789162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175449, 35.003662, 48.281590>,  <39.762928, 34.656158, 48.067638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175449, 35.003662, 48.281590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.058132, 34.633732, 48.184700>,  <38.987743, 34.411774, 48.126568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.058132, 34.633732, 48.184700>,  <39.175449, 35.003662, 48.281590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058132, 34.633732, 48.184700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361287, -0.127357, 0.923716,
		-0.885128, 0.358431, -0.296776,
		-0.293293, -0.924828, -0.242224,
		38.970146, 34.356285, 48.112034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669418, 34.987926, 48.718510>,  <39.175449, 35.003662, 48.281590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669418, 34.987926, 48.718510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765182, 34.615570, 48.608150>,  <38.822643, 34.392155, 48.541935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765182, 34.615570, 48.608150>,  <38.669418, 34.987926, 48.718510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765182, 34.615570, 48.608150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303532, -0.341684, 0.889449,
		-0.922253, -0.129199, -0.364359,
		0.239412, -0.930892, -0.275903,
		38.837006, 34.336304, 48.525379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061363, 34.492306, 48.726959>,  <38.669418, 34.987926, 48.718510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061363, 34.492306, 48.726959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393059, 34.272739, 48.769024>,  <38.592075, 34.140999, 48.794262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393059, 34.272739, 48.769024>,  <38.061363, 34.492306, 48.726959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393059, 34.272739, 48.769024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334860, -0.337313, 0.879823,
		-0.447478, -0.764794, -0.463523,
		0.829236, -0.548917, 0.105159,
		38.641830, 34.108067, 48.800571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776112, 34.013138, 49.037571>,  <38.061363, 34.492306, 48.726959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776112, 34.013138, 49.037571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168331, 33.954617, 49.089897>,  <38.403664, 33.919506, 49.121292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168331, 33.954617, 49.089897>,  <37.776112, 34.013138, 49.037571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168331, 33.954617, 49.089897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172177, -0.321408, 0.931156,
		-0.094182, -0.935571, -0.340346,
		0.980553, -0.146298, 0.130813,
		38.462498, 33.910728, 49.129143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731297, 33.488415, 49.459305>,  <37.776112, 34.013138, 49.037571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731297, 33.488415, 49.459305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119671, 33.566784, 49.514290>,  <38.352695, 33.613808, 49.547279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119671, 33.566784, 49.514290>,  <37.731297, 33.488415, 49.459305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119671, 33.566784, 49.514290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042513, -0.424031, 0.904649,
		0.235534, -0.884200, -0.403377,
		0.970936, 0.195927, 0.137463,
		38.410954, 33.625561, 49.555531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042965, 32.841015, 49.580139>,  <37.731297, 33.488415, 49.459305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042965, 32.841015, 49.580139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260738, 33.131359, 49.748287>,  <38.391403, 33.305565, 49.849178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260738, 33.131359, 49.748287>,  <38.042965, 32.841015, 49.580139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260738, 33.131359, 49.748287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132597, -0.420381, 0.897607,
		0.828256, -0.544430, -0.132623,
		0.544436, 0.725862, 0.420373,
		38.424068, 33.349117, 49.874397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591530, 32.476963, 49.923126>,  <38.042965, 32.841015, 49.580139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591530, 32.476963, 49.923126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.603539, 32.830780, 50.109325>,  <38.610744, 33.043068, 50.221046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.603539, 32.830780, 50.109325>,  <38.591530, 32.476963, 49.923126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603539, 32.830780, 50.109325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002583, -0.465776, 0.884899,
		0.999546, -0.025361, -0.016266,
		0.030019, 0.884539, 0.465499,
		38.612545, 33.096142, 50.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179619, 32.475948, 50.219082>,  <38.591530, 32.476963, 49.923126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179619, 32.475948, 50.219082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956234, 32.753788, 50.400482>,  <38.822205, 32.920490, 50.509323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956234, 32.753788, 50.400482>,  <39.179619, 32.475948, 50.219082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956234, 32.753788, 50.400482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263271, -0.370017, 0.890941,
		0.786646, 0.616947, 0.023772,
		-0.558459, 0.694596, 0.453496,
		38.788696, 32.962166, 50.536530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461990, 32.572582, 50.906307>,  <39.179619, 32.475948, 50.219082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461990, 32.572582, 50.906307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091827, 32.720772, 50.938244>,  <38.869732, 32.809685, 50.957405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091827, 32.720772, 50.938244>,  <39.461990, 32.572582, 50.906307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091827, 32.720772, 50.938244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063511, -0.359291, 0.931062,
		0.373621, 0.856538, 0.356019,
		-0.925405, 0.370476, 0.079839,
		38.814205, 32.831913, 50.962196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525036, 32.968590, 51.511482>,  <39.461990, 32.572582, 50.906307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525036, 32.968590, 51.511482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136131, 32.889561, 51.461399>,  <38.902790, 32.842144, 51.431351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136131, 32.889561, 51.461399>,  <39.525036, 32.968590, 51.511482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136131, 32.889561, 51.461399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075711, -0.240645, 0.967656,
		-0.221316, 0.950292, 0.219011,
		-0.972259, -0.197576, -0.125206,
		38.844452, 32.830288, 51.423836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039471, 33.448208, 51.914326>,  <39.525036, 32.968590, 51.511482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039471, 33.448208, 51.914326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913734, 33.076458, 51.836918>,  <38.838295, 32.853409, 51.790474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913734, 33.076458, 51.836918>,  <39.039471, 33.448208, 51.914326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913734, 33.076458, 51.836918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082766, -0.229905, 0.969687,
		-0.945697, 0.288791, 0.149188,
		-0.314336, -0.929378, -0.193518,
		38.819435, 32.797646, 51.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301670, 33.902046, 52.382946>,  <39.039471, 33.448208, 51.914326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301670, 33.902046, 52.382946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111942, 34.229534, 52.512390>,  <38.998104, 34.426025, 52.590057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111942, 34.229534, 52.512390>,  <39.301670, 33.902046, 52.382946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111942, 34.229534, 52.512390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034418, 0.384556, -0.922460,
		-0.879678, -0.426404, -0.210582,
		-0.474322, 0.818716, 0.323610,
		38.969646, 34.475147, 52.609474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981136, 34.192810, 51.890324>,  <39.301670, 33.902046, 52.382946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981136, 34.192810, 51.890324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007938, 34.532551, 52.099747>,  <39.024021, 34.736397, 52.225399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007938, 34.532551, 52.099747>,  <38.981136, 34.192810, 51.890324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007938, 34.532551, 52.099747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051744, 0.526987, -0.848297,
		-0.996410, 0.029752, 0.079261,
		0.067008, 0.849353, 0.523555,
		39.028042, 34.787357, 52.256813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596504, 34.690079, 51.518562>,  <38.981136, 34.192810, 51.890324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596504, 34.690079, 51.518562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800625, 34.938217, 51.756809>,  <38.923096, 35.087101, 51.899757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800625, 34.938217, 51.756809>,  <38.596504, 34.690079, 51.518562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800625, 34.938217, 51.756809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126987, 0.739341, -0.661248,
		-0.850568, 0.261800, 0.456064,
		0.510302, 0.620350, 0.595615,
		38.953716, 35.124321, 51.935493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107967, 35.156384, 51.802559>,  <38.596504, 34.690079, 51.518562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107967, 35.156384, 51.802559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460114, 35.344200, 51.775780>,  <38.671402, 35.456890, 51.759712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460114, 35.344200, 51.775780>,  <38.107967, 35.156384, 51.802559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460114, 35.344200, 51.775780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393100, 0.643383, -0.656909,
		-0.265371, 0.604641, 0.750991,
		0.880369, 0.469539, -0.066949,
		38.724224, 35.485062, 51.755695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926983, 35.843040, 51.721714>,  <38.107967, 35.156384, 51.802559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926983, 35.843040, 51.721714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316788, 35.840782, 51.632004>,  <38.550671, 35.839428, 51.578178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316788, 35.840782, 51.632004>,  <37.926983, 35.843040, 51.721714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316788, 35.840782, 51.632004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172317, 0.621310, -0.764382,
		0.143657, 0.783544, 0.604500,
		0.974510, -0.005643, -0.224274,
		38.609142, 35.839088, 51.564720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020584, 36.446304, 51.536282>,  <37.926983, 35.843040, 51.721714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020584, 36.446304, 51.536282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348854, 36.280884, 51.378567>,  <38.545818, 36.181633, 51.283939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348854, 36.280884, 51.378567>,  <38.020584, 36.446304, 51.536282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348854, 36.280884, 51.378567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143438, 0.518849, -0.842747,
		0.553092, 0.748180, 0.366490,
		0.820679, -0.413548, -0.394288,
		38.595058, 36.156818, 51.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502701, 36.911850, 51.321144>,  <38.020584, 36.446304, 51.536282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502701, 36.911850, 51.321144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565472, 36.597614, 51.081738>,  <38.603134, 36.409073, 50.938095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565472, 36.597614, 51.081738>,  <38.502701, 36.911850, 51.321144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565472, 36.597614, 51.081738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209128, 0.565848, -0.797547,
		0.965215, 0.250323, -0.075492,
		0.156928, -0.785592, -0.598514,
		38.612549, 36.361938, 50.902184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857944, 37.211720, 50.702084>,  <38.502701, 36.911850, 51.321144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857944, 37.211720, 50.702084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721325, 36.850182, 50.599007>,  <38.639355, 36.633259, 50.537159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721325, 36.850182, 50.599007>,  <38.857944, 37.211720, 50.702084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721325, 36.850182, 50.599007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249318, 0.351486, -0.902385,
		0.906194, -0.243957, -0.345394,
		-0.341544, -0.903849, -0.257691,
		38.618862, 36.579025, 50.521698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079620, 37.187473, 50.040222>,  <38.857944, 37.211720, 50.702084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079620, 37.187473, 50.040222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824131, 36.879734, 50.035606>,  <38.670837, 36.695091, 50.032837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824131, 36.879734, 50.035606>,  <39.079620, 37.187473, 50.040222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824131, 36.879734, 50.035606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218032, 0.195349, -0.956191,
		0.737902, -0.608223, -0.292517,
		-0.638720, -0.769353, -0.011537,
		38.632515, 36.648930, 50.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149620, 36.809547, 49.522999>,  <39.079620, 37.187473, 50.040222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149620, 36.809547, 49.522999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766586, 36.727890, 49.604343>,  <38.536766, 36.678898, 49.653149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766586, 36.727890, 49.604343>,  <39.149620, 36.809547, 49.522999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766586, 36.727890, 49.604343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198930, -0.042202, -0.979105,
		0.208460, -0.978031, -0.000198,
		-0.957586, -0.204143, 0.203357,
		38.479309, 36.666649, 49.665352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950760, 36.222370, 49.155361>,  <39.149620, 36.809547, 49.522999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950760, 36.222370, 49.155361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604637, 36.407784, 49.231655>,  <38.396965, 36.519032, 49.277431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604637, 36.407784, 49.231655>,  <38.950760, 36.222370, 49.155361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604637, 36.407784, 49.231655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270256, -0.110968, -0.956372,
		-0.422144, -0.879104, 0.221294,
		-0.865307, 0.463533, 0.190739,
		38.345043, 36.546844, 49.288876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556705, 35.931698, 48.678890>,  <38.950760, 36.222370, 49.155361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556705, 35.931698, 48.678890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.328098, 36.237434, 48.798321>,  <38.190933, 36.420876, 48.869980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.328098, 36.237434, 48.798321>,  <38.556705, 35.931698, 48.678890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328098, 36.237434, 48.798321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370103, 0.084648, -0.925126,
		-0.732385, -0.639233, 0.234506,
		-0.571521, 0.764340, 0.298577,
		38.156643, 36.466736, 48.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832577, 35.795090, 48.518524>,  <38.556705, 35.931698, 48.678890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832577, 35.795090, 48.518524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888866, 36.191040, 48.511089>,  <37.922642, 36.428612, 48.506630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888866, 36.191040, 48.511089>,  <37.832577, 35.795090, 48.518524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888866, 36.191040, 48.511089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199181, 0.009920, -0.979913,
		-0.969806, 0.141599, 0.198560,
		0.140724, 0.989874, -0.018583,
		37.931084, 36.488003, 48.505516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316364, 36.006626, 48.174503>,  <37.832577, 35.795090, 48.518524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316364, 36.006626, 48.174503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570847, 36.313927, 48.146111>,  <37.723534, 36.498306, 48.129074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570847, 36.313927, 48.146111>,  <37.316364, 36.006626, 48.174503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570847, 36.313927, 48.146111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193815, 0.070089, -0.978531,
		-0.746781, 0.636303, 0.193489,
		0.636203, 0.768249, -0.070984,
		37.761707, 36.544403, 48.124817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932907, 36.575134, 47.724777>,  <37.316364, 36.006626, 48.174503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932907, 36.575134, 47.724777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327232, 36.641968, 47.731285>,  <37.563828, 36.682068, 47.735191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327232, 36.641968, 47.731285>,  <36.932907, 36.575134, 47.724777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327232, 36.641968, 47.731285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010842, 0.160107, -0.987040,
		-0.167523, 0.972856, 0.159646,
		0.985808, 0.167083, 0.016274,
		37.622974, 36.692093, 47.736168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607208, 37.188530, 47.903797>,  <36.932907, 36.575134, 47.724777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607208, 37.188530, 47.903797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229572, 37.319401, 47.920040>,  <36.002991, 37.397923, 47.929787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229572, 37.319401, 47.920040>,  <36.607208, 37.188530, 47.903797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229572, 37.319401, 47.920040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000694, -0.121193, 0.992629,
		0.329684, 0.937160, 0.114190,
		-0.944091, 0.327174, 0.040606,
		35.946346, 37.417553, 47.932220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652264, 37.528488, 48.539715>,  <36.607208, 37.188530, 47.903797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652264, 37.528488, 48.539715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260155, 37.494473, 48.468342>,  <36.024891, 37.474064, 48.425518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260155, 37.494473, 48.468342>,  <36.652264, 37.528488, 48.539715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260155, 37.494473, 48.468342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163371, -0.159613, 0.973568,
		-0.111273, 0.983510, 0.142571,
		-0.980270, -0.085040, -0.178437,
		35.966072, 37.468960, 48.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353603, 37.942822, 49.084610>,  <36.652264, 37.528488, 48.539715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353603, 37.942822, 49.084610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119762, 37.660088, 48.925301>,  <35.979458, 37.490448, 48.829716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119762, 37.660088, 48.925301>,  <36.353603, 37.942822, 49.084610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119762, 37.660088, 48.925301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070716, -0.444640, 0.892914,
		-0.808229, 0.550168, 0.209955,
		-0.584607, -0.706831, -0.398277,
		35.944382, 37.448040, 48.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801315, 37.963867, 49.454441>,  <36.353603, 37.942822, 49.084610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801315, 37.963867, 49.454441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759003, 37.599495, 49.294937>,  <35.733616, 37.380871, 49.199234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759003, 37.599495, 49.294937>,  <35.801315, 37.963867, 49.454441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759003, 37.599495, 49.294937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123460, -0.385877, 0.914252,
		-0.986695, 0.145944, -0.071644,
		-0.105784, -0.910933, -0.398761,
		35.727268, 37.326214, 49.175308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343678, 37.732014, 49.827492>,  <35.801315, 37.963867, 49.454441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343678, 37.732014, 49.827492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474503, 37.392078, 49.662182>,  <35.552998, 37.188118, 49.562996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474503, 37.392078, 49.662182>,  <35.343678, 37.732014, 49.827492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474503, 37.392078, 49.662182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095467, -0.464807, 0.880251,
		-0.940169, -0.248440, -0.233151,
		0.327060, -0.849843, -0.413279,
		35.572620, 37.137127, 49.538197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867069, 37.111488, 50.007339>,  <35.343678, 37.732014, 49.827492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867069, 37.111488, 50.007339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221634, 36.952148, 49.913025>,  <35.434372, 36.856544, 49.856434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221634, 36.952148, 49.913025>,  <34.867069, 37.111488, 50.007339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221634, 36.952148, 49.913025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039044, -0.571893, 0.819398,
		-0.461252, -0.717116, -0.522485,
		0.886409, -0.398349, -0.235788,
		35.487556, 36.832642, 49.842289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753590, 36.379528, 50.199154>,  <34.867069, 37.111488, 50.007339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753590, 36.379528, 50.199154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150131, 36.422840, 50.169521>,  <35.388058, 36.448830, 50.151741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150131, 36.422840, 50.169521>,  <34.753590, 36.379528, 50.199154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150131, 36.422840, 50.169521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109312, -0.369491, 0.922782,
		0.072552, -0.922904, -0.378134,
		0.991356, 0.108284, -0.074077,
		35.447536, 36.455326, 50.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479969, 35.774380, 49.934521>,  <34.753590, 36.379528, 50.199154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479969, 35.774380, 49.934521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109459, 35.649586, 50.019070>,  <33.887154, 35.574707, 50.069798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109459, 35.649586, 50.019070>,  <34.479969, 35.774380, 49.934521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109459, 35.649586, 50.019070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358543, 0.556917, -0.749193,
		0.116024, -0.769744, -0.627720,
		-0.926275, -0.311989, 0.211371,
		33.831577, 35.555988, 50.082481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220779, 35.573833, 49.284214>,  <34.479969, 35.774380, 49.934521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220779, 35.573833, 49.284214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918095, 35.641216, 49.536884>,  <33.736485, 35.681644, 49.688488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918095, 35.641216, 49.536884>,  <34.220779, 35.573833, 49.284214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918095, 35.641216, 49.536884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408657, 0.632306, -0.658171,
		-0.510287, -0.756182, -0.409629,
		-0.756707, 0.168459, 0.631676,
		33.691082, 35.691753, 49.726387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557053, 35.240681, 48.965912>,  <34.220779, 35.573833, 49.284214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557053, 35.240681, 48.965912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503239, 35.548630, 49.215454>,  <33.470951, 35.733398, 49.365181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503239, 35.548630, 49.215454>,  <33.557053, 35.240681, 48.965912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503239, 35.548630, 49.215454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595002, 0.440682, -0.672140,
		-0.792385, -0.461620, 0.398790,
		-0.134534, 0.769874, 0.623855,
		33.462879, 35.779591, 49.402611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852196, 35.435726, 48.897957>,  <33.557053, 35.240681, 48.965912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852196, 35.435726, 48.897957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032139, 35.755733, 49.056751>,  <33.140106, 35.947739, 49.152027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032139, 35.755733, 49.056751>,  <32.852196, 35.435726, 48.897957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032139, 35.755733, 49.056751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492835, 0.593067, -0.636699,
		-0.744808, 0.090779, 0.661075,
		0.449860, 0.800020, 0.396982,
		33.167095, 35.995739, 49.175846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337646, 35.979420, 48.799564>,  <32.852196, 35.435726, 48.897957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337646, 35.979420, 48.799564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677437, 36.182381, 48.857433>,  <32.881313, 36.304157, 48.892155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677437, 36.182381, 48.857433>,  <32.337646, 35.979420, 48.799564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677437, 36.182381, 48.857433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197217, 0.559678, -0.804901,
		-0.489377, 0.655215, 0.575503,
		0.849480, 0.507399, 0.144674,
		32.932281, 36.334599, 48.900837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182278, 36.747097, 48.682384>,  <32.337646, 35.979420, 48.799564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182278, 36.747097, 48.682384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580257, 36.733932, 48.644455>,  <32.819046, 36.726032, 48.621696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580257, 36.733932, 48.644455>,  <32.182278, 36.747097, 48.682384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580257, 36.733932, 48.644455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064246, 0.517011, -0.853564,
		0.077116, 0.855346, 0.512286,
		0.994950, -0.032911, -0.094823,
		32.878742, 36.724060, 48.616009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423031, 37.396839, 48.516792>,  <32.182278, 36.747097, 48.682384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423031, 37.396839, 48.516792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691780, 37.129715, 48.388660>,  <32.853031, 36.969440, 48.311779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691780, 37.129715, 48.388660>,  <32.423031, 37.396839, 48.516792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691780, 37.129715, 48.388660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172860, 0.279170, -0.944555,
		0.720212, 0.689994, 0.072129,
		0.671873, -0.667812, -0.320334,
		32.893341, 36.929371, 48.292561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.897758, 31.200169, 50.968838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223030, 31.397924, 51.091682>,  <36.418194, 31.516577, 51.165390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223030, 31.397924, 51.091682>,  <35.897758, 31.200169, 50.968838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223030, 31.397924, 51.091682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228794, 0.756731, -0.612381,
		-0.535152, 0.427713, 0.728473,
		0.813182, 0.494388, 0.307108,
		36.466984, 31.546240, 51.183815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699390, 31.909355, 50.980503>,  <35.897758, 31.200169, 50.968838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699390, 31.909355, 50.980503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099377, 31.906525, 50.982594>,  <36.339367, 31.904827, 50.983849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099377, 31.906525, 50.982594>,  <35.699390, 31.909355, 50.980503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099377, 31.906525, 50.982594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008762, 0.747917, -0.663734,
		0.000788, 0.663754, 0.747951,
		0.999961, -0.007076, 0.005227,
		36.399364, 31.904402, 50.984161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910084, 32.617386, 50.894222>,  <35.699390, 31.909355, 50.980503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910084, 32.617386, 50.894222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208565, 32.376774, 50.780136>,  <36.387653, 32.232407, 50.711685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208565, 32.376774, 50.780136>,  <35.910084, 32.617386, 50.894222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208565, 32.376774, 50.780136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042506, 0.470606, -0.881319,
		0.664362, 0.645518, 0.376735,
		0.746201, -0.601529, -0.285214,
		36.432426, 32.196316, 50.694572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383335, 33.128433, 50.550285>,  <35.910084, 32.617386, 50.894222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383335, 33.128433, 50.550285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.456070, 32.757523, 50.419384>,  <36.499710, 32.534977, 50.340843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.456070, 32.757523, 50.419384>,  <36.383335, 33.128433, 50.550285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456070, 32.757523, 50.419384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180580, 0.358633, -0.915846,
		0.966605, 0.107443, 0.232661,
		0.181841, -0.927275, -0.327254,
		36.510624, 32.479340, 50.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852997, 33.177242, 49.979954>,  <36.383335, 33.128433, 50.550285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852997, 33.177242, 49.979954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746727, 32.794292, 49.934593>,  <36.682964, 32.564522, 49.907379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746727, 32.794292, 49.934593>,  <36.852997, 33.177242, 49.979954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746727, 32.794292, 49.934593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132920, 0.080126, -0.987882,
		0.954855, -0.277530, 0.105966,
		-0.265676, -0.957370, -0.113398,
		36.667023, 32.507080, 49.900574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319244, 32.856655, 49.555798>,  <36.852997, 33.177242, 49.979954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319244, 32.856655, 49.555798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999447, 32.619408, 49.517830>,  <36.807568, 32.477058, 49.495049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999447, 32.619408, 49.517830>,  <37.319244, 32.856655, 49.555798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999447, 32.619408, 49.517830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151233, -0.045832, -0.987435,
		0.581320, -0.803807, 0.126342,
		-0.799497, -0.593123, -0.094919,
		36.759598, 32.441471, 49.489353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448727, 32.464542, 49.008442>,  <37.319244, 32.856655, 49.555798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448727, 32.464542, 49.008442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.058163, 32.380535, 49.028496>,  <36.823826, 32.330132, 49.040527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.058163, 32.380535, 49.028496>,  <37.448727, 32.464542, 49.008442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058163, 32.380535, 49.028496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040099, -0.051770, -0.997854,
		0.212165, -0.976325, 0.042127,
		-0.976411, -0.210020, 0.050133,
		36.765240, 32.317528, 49.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305035, 31.921997, 48.559597>,  <37.448727, 32.464542, 49.008442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305035, 31.921997, 48.559597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936420, 32.065598, 48.618778>,  <36.715252, 32.151760, 48.654289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936420, 32.065598, 48.618778>,  <37.305035, 31.921997, 48.559597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936420, 32.065598, 48.618778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190021, -0.084657, -0.978123,
		-0.338626, -0.929489, 0.146232,
		-0.921534, 0.359005, 0.147955,
		36.659962, 32.173298, 48.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755142, 31.366737, 48.332432>,  <37.305035, 31.921997, 48.559597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755142, 31.366737, 48.332432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619350, 31.742748, 48.319187>,  <36.537876, 31.968355, 48.311241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619350, 31.742748, 48.319187>,  <36.755142, 31.366737, 48.332432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619350, 31.742748, 48.319187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377299, -0.168339, -0.910663,
		-0.861625, -0.296660, 0.411820,
		-0.339483, 0.940029, -0.033116,
		36.517506, 32.024757, 48.309254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132130, 31.308767, 47.991898>,  <36.755142, 31.366737, 48.332432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132130, 31.308767, 47.991898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.231316, 31.693411, 47.944862>,  <36.290825, 31.924196, 47.916641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.231316, 31.693411, 47.944862>,  <36.132130, 31.308767, 47.991898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231316, 31.693411, 47.944862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232791, -0.058675, -0.970755,
		-0.940385, 0.268083, 0.209305,
		0.247962, 0.961607, -0.117585,
		36.305706, 31.981894, 47.909588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641434, 31.579409, 47.529495>,  <36.132130, 31.308767, 47.991898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641434, 31.579409, 47.529495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936253, 31.849133, 47.547680>,  <36.113144, 32.010967, 47.558590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936253, 31.849133, 47.547680>,  <35.641434, 31.579409, 47.529495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936253, 31.849133, 47.547680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058824, 0.131024, -0.989632,
		-0.673274, 0.726733, 0.136237,
		0.737049, 0.674308, 0.045466,
		36.157368, 32.051426, 47.561321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391697, 32.331841, 47.224495>,  <35.641434, 31.579409, 47.529495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391697, 32.331841, 47.224495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.778381, 32.239113, 47.181175>,  <36.010391, 32.183475, 47.155182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.778381, 32.239113, 47.181175>,  <35.391697, 32.331841, 47.224495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778381, 32.239113, 47.181175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073556, 0.153618, -0.985389,
		0.245072, 0.960552, 0.131453,
		0.966710, -0.231822, -0.108302,
		36.068394, 32.169567, 47.148685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954147, 32.175888, 47.653816>,  <35.391697, 32.331841, 47.224495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954147, 32.175888, 47.653816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566349, 32.172504, 47.555840>,  <34.333668, 32.170475, 47.497051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566349, 32.172504, 47.555840>,  <34.954147, 32.175888, 47.653816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566349, 32.172504, 47.555840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243248, 0.155518, 0.957416,
		0.029994, 0.987797, -0.152832,
		-0.969500, -0.008459, -0.244944,
		34.275497, 32.169968, 47.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526344, 32.699127, 47.967243>,  <34.954147, 32.175888, 47.653816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526344, 32.699127, 47.967243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261791, 32.408798, 47.891605>,  <34.103062, 32.234600, 47.846222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261791, 32.408798, 47.891605>,  <34.526344, 32.699127, 47.967243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261791, 32.408798, 47.891605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287913, 0.012884, 0.957570,
		-0.692593, 0.687758, -0.217496,
		-0.661378, -0.725826, -0.189091,
		34.063377, 32.191051, 47.834877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839222, 32.835003, 48.282143>,  <34.526344, 32.699127, 47.967243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839222, 32.835003, 48.282143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.837658, 32.442299, 48.206112>,  <33.836720, 32.206676, 48.160492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.837658, 32.442299, 48.206112>,  <33.839222, 32.835003, 48.282143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837658, 32.442299, 48.206112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415765, -0.171276, 0.893199,
		-0.909464, 0.082517, -0.407513,
		-0.003907, -0.981761, -0.190077,
		33.836487, 32.147770, 48.149090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110146, 32.537643, 48.480503>,  <33.839222, 32.835003, 48.282143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110146, 32.537643, 48.480503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.359413, 32.225281, 48.463303>,  <33.508972, 32.037865, 48.452984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.359413, 32.225281, 48.463303>,  <33.110146, 32.537643, 48.480503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359413, 32.225281, 48.463303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334660, -0.315944, 0.887796,
		-0.706869, -0.538857, -0.458224,
		0.623169, -0.780905, -0.042997,
		33.546364, 31.991009, 48.450405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770432, 31.906685, 48.567783>,  <33.110146, 32.537643, 48.480503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770432, 31.906685, 48.567783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.143581, 31.828888, 48.689053>,  <33.367470, 31.782209, 48.761814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.143581, 31.828888, 48.689053>,  <32.770432, 31.906685, 48.567783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143581, 31.828888, 48.689053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356465, -0.377611, 0.854601,
		-0.051729, -0.905309, -0.421593,
		0.932875, -0.194490, 0.303177,
		33.423443, 31.770540, 48.780006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623661, 31.389463, 49.141964>,  <32.770432, 31.906685, 48.567783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623661, 31.389463, 49.141964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.014080, 31.467779, 49.179920>,  <33.248329, 31.514769, 49.202694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.014080, 31.467779, 49.179920>,  <32.623661, 31.389463, 49.141964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014080, 31.467779, 49.179920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018623, -0.509723, 0.860137,
		0.216774, -0.837765, -0.501158,
		0.976044, 0.195789, 0.094893,
		33.306892, 31.526516, 49.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933926, 30.757084, 49.383801>,  <32.623661, 31.389463, 49.141964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933926, 30.757084, 49.383801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.168777, 31.063169, 49.489426>,  <33.309689, 31.246820, 49.552799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.168777, 31.063169, 49.489426>,  <32.933926, 30.757084, 49.383801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168777, 31.063169, 49.489426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006643, -0.321637, 0.946840,
		0.809467, -0.557670, -0.183759,
		0.587128, 0.765214, 0.264059,
		33.344917, 31.292734, 49.568642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375229, 30.446060, 49.826546>,  <32.933926, 30.757084, 49.383801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375229, 30.446060, 49.826546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397839, 30.830944, 49.933098>,  <33.411404, 31.061874, 49.997028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397839, 30.830944, 49.933098>,  <33.375229, 30.446060, 49.826546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397839, 30.830944, 49.933098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012400, -0.267466, 0.963488,
		0.998324, -0.051158, -0.027050,
		0.056525, 0.962208, 0.266383,
		33.414795, 31.119606, 50.013012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667358, 30.286457, 50.488968>,  <33.375229, 30.446060, 49.826546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667358, 30.286457, 50.488968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592411, 30.678745, 50.511166>,  <33.547443, 30.914118, 50.524487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592411, 30.678745, 50.511166>,  <33.667358, 30.286457, 50.488968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592411, 30.678745, 50.511166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094866, -0.038167, 0.994758,
		0.977697, 0.191655, -0.085886,
		-0.187373, 0.980720, 0.055497,
		33.536198, 30.972961, 50.527813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979534, 30.463379, 51.197704>,  <33.667358, 30.286457, 50.488968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979534, 30.463379, 51.197704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.787903, 30.790163, 51.069290>,  <33.672924, 30.986233, 50.992241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.787903, 30.790163, 51.069290>,  <33.979534, 30.463379, 51.197704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787903, 30.790163, 51.069290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058893, 0.394833, 0.916864,
		0.875796, 0.420339, -0.237267,
		-0.479075, 0.816959, -0.321038,
		33.644180, 31.035252, 50.972980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360920, 31.019989, 51.294724>,  <33.979534, 30.463379, 51.197704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360920, 31.019989, 51.294724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986725, 31.160389, 51.311016>,  <33.762207, 31.244629, 51.320793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986725, 31.160389, 51.311016>,  <34.360920, 31.019989, 51.294724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986725, 31.160389, 51.311016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232538, 0.524736, 0.818888,
		0.266056, 0.775533, -0.572506,
		-0.935489, 0.351000, 0.040732,
		33.706078, 31.265690, 51.323235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388344, 31.835335, 51.339546>,  <34.360920, 31.019989, 51.294724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388344, 31.835335, 51.339546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055717, 31.692589, 51.509792>,  <33.856140, 31.606941, 51.611938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055717, 31.692589, 51.509792>,  <34.388344, 31.835335, 51.339546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055717, 31.692589, 51.509792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294851, 0.365764, 0.882768,
		-0.470704, 0.859572, -0.198934,
		-0.831565, -0.356866, 0.425612,
		33.806248, 31.585529, 51.637478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209713, 32.323730, 51.652515>,  <34.388344, 31.835335, 51.339546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209713, 32.323730, 51.652515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996819, 32.038593, 51.835194>,  <33.869080, 31.867510, 51.944801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996819, 32.038593, 51.835194>,  <34.209713, 32.323730, 51.652515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996819, 32.038593, 51.835194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162381, 0.443481, 0.881452,
		-0.830875, 0.543303, -0.120286,
		-0.532239, -0.712844, 0.456700,
		33.837147, 31.824739, 51.972202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789436, 32.576973, 52.196053>,  <34.209713, 32.323730, 51.652515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789436, 32.576973, 52.196053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594307, 32.912510, 52.292690>,  <33.477230, 33.113831, 52.350674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594307, 32.912510, 52.292690>,  <33.789436, 32.576973, 52.196053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594307, 32.912510, 52.292690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327707, 0.432498, -0.839973,
		-0.809095, -0.330588, -0.485879,
		-0.487826, 0.838843, 0.241595,
		33.447960, 33.164162, 52.365170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358589, 32.835575, 51.587662>,  <33.789436, 32.576973, 52.196053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358589, 32.835575, 51.587662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440414, 33.158798, 51.808640>,  <33.489510, 33.352734, 51.941227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440414, 33.158798, 51.808640>,  <33.358589, 32.835575, 51.587662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440414, 33.158798, 51.808640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139230, 0.534624, -0.833542,
		-0.968901, 0.247430, -0.003140,
		0.204565, 0.808056, 0.552447,
		33.501785, 33.401215, 51.974373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834156, 33.393494, 51.492878>,  <33.358589, 32.835575, 51.587662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834156, 33.393494, 51.492878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.178032, 33.558151, 51.613857>,  <33.384357, 33.656944, 51.686447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.178032, 33.558151, 51.613857>,  <32.834156, 33.393494, 51.492878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178032, 33.558151, 51.613857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003028, 0.587982, -0.808868,
		-0.510802, 0.696294, 0.504238,
		0.859693, 0.411645, 0.302451,
		33.435940, 33.681644, 51.704594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677513, 34.163185, 51.645050>,  <32.834156, 33.393494, 51.492878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677513, 34.163185, 51.645050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073929, 34.124920, 51.607750>,  <33.311779, 34.101959, 51.585369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073929, 34.124920, 51.607750>,  <32.677513, 34.163185, 51.645050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073929, 34.124920, 51.607750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013356, 0.765458, -0.643347,
		0.132922, 0.636335, 0.759874,
		0.991036, -0.095664, -0.093247,
		33.371239, 34.096222, 51.579777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916939, 34.916340, 51.690929>,  <32.677513, 34.163185, 51.645050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916939, 34.916340, 51.690929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187286, 34.685219, 51.507912>,  <33.349495, 34.546547, 51.398102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187286, 34.685219, 51.507912>,  <32.916939, 34.916340, 51.690929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187286, 34.685219, 51.507912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087260, 0.679168, -0.728778,
		0.731838, 0.452633, 0.509447,
		0.675869, -0.577802, -0.457544,
		33.390045, 34.511879, 51.370647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485138, 35.309532, 51.670231>,  <32.916939, 34.916340, 51.690929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485138, 35.309532, 51.670231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542053, 35.044964, 51.375671>,  <33.576202, 34.886223, 51.198936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542053, 35.044964, 51.375671>,  <33.485138, 35.309532, 51.670231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542053, 35.044964, 51.375671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249311, 0.743930, -0.620010,
		0.957914, -0.095373, 0.270749,
		0.142286, -0.661417, -0.736398,
		33.584740, 34.846539, 51.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068867, 35.587147, 51.305569>,  <33.485138, 35.309532, 51.670231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068867, 35.587147, 51.305569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884571, 35.328178, 51.062729>,  <33.773994, 35.172798, 50.917027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884571, 35.328178, 51.062729>,  <34.068867, 35.587147, 51.305569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884571, 35.328178, 51.062729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149695, 0.617538, -0.772165,
		0.874822, -0.446643, -0.187606,
		-0.460736, -0.647423, -0.607096,
		33.746349, 35.133953, 50.880600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394714, 35.815601, 50.697948>,  <34.068867, 35.587147, 51.305569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394714, 35.815601, 50.697948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098312, 35.575657, 50.577225>,  <33.920471, 35.431690, 50.504791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098312, 35.575657, 50.577225>,  <34.394714, 35.815601, 50.697948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098312, 35.575657, 50.577225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066974, 0.513228, -0.855635,
		0.668155, -0.613814, -0.420478,
		-0.741002, -0.599858, -0.301806,
		33.876011, 35.395699, 50.486683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081093, 35.717190, 50.344048>,  <34.394714, 35.815601, 50.697948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081093, 35.717190, 50.344048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376846, 35.983215, 50.385986>,  <35.554298, 36.142830, 50.411148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376846, 35.983215, 50.385986>,  <35.081093, 35.717190, 50.344048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376846, 35.983215, 50.385986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260824, -0.426503, 0.866063,
		0.620708, -0.613009, -0.488816,
		0.739387, 0.665067, 0.104847,
		35.598663, 36.182735, 50.417439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691376, 35.324539, 50.405071>,  <35.081093, 35.717190, 50.344048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691376, 35.324539, 50.405071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700089, 35.680073, 50.588154>,  <35.705315, 35.893394, 50.698002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700089, 35.680073, 50.588154>,  <35.691376, 35.324539, 50.405071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700089, 35.680073, 50.588154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352069, -0.435306, 0.828587,
		0.935721, 0.143095, -0.322414,
		0.021782, 0.888838, 0.457704,
		35.706623, 35.946724, 50.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306293, 35.272202, 50.869896>,  <35.691376, 35.324539, 50.405071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306293, 35.272202, 50.869896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.115940, 35.597000, 51.005070>,  <36.001728, 35.791878, 51.086174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.115940, 35.597000, 51.005070>,  <36.306293, 35.272202, 50.869896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115940, 35.597000, 51.005070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551769, -0.023574, 0.833664,
		0.684896, 0.583190, -0.436814,
		-0.475887, 0.811994, 0.337932,
		35.973175, 35.840599, 51.106449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773323, 35.703140, 51.208206>,  <36.306293, 35.272202, 50.869896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773323, 35.703140, 51.208206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432987, 35.842022, 51.365952>,  <36.228786, 35.925350, 51.460598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432987, 35.842022, 51.365952>,  <36.773323, 35.703140, 51.208206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432987, 35.842022, 51.365952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430359, 0.029904, 0.902162,
		0.301445, 0.937311, -0.174868,
		-0.850836, 0.347208, 0.394366,
		36.177738, 35.946186, 51.484261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942116, 36.308372, 51.515694>,  <36.773323, 35.703140, 51.208206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942116, 36.308372, 51.515694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608196, 36.184742, 51.697941>,  <36.407845, 36.110565, 51.807289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608196, 36.184742, 51.697941>,  <36.942116, 36.308372, 51.515694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608196, 36.184742, 51.697941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496131, -0.063546, 0.865919,
		-0.238683, 0.948912, 0.206390,
		-0.834796, -0.309076, 0.455617,
		36.357758, 36.092018, 51.834625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022030, 36.432163, 52.281906>,  <36.942116, 36.308372, 51.515694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022030, 36.432163, 52.281906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.720715, 36.169090, 52.281212>,  <36.539925, 36.011246, 52.280796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.720715, 36.169090, 52.281212>,  <37.022030, 36.432163, 52.281906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720715, 36.169090, 52.281212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361322, -0.416048, 0.834476,
		-0.549542, 0.627978, 0.551042,
		-0.753293, -0.657683, -0.001733,
		36.494728, 35.971786, 52.280693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919083, 36.457603, 52.968307>,  <37.022030, 36.432163, 52.281906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919083, 36.457603, 52.968307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758564, 36.122803, 52.819504>,  <36.662254, 35.921921, 52.730221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758564, 36.122803, 52.819504>,  <36.919083, 36.457603, 52.968307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758564, 36.122803, 52.819504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120573, -0.450882, 0.884402,
		-0.907977, 0.310054, 0.281857,
		-0.401297, -0.837002, -0.372007,
		36.638176, 35.871704, 52.707901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230827, 36.245991, 53.397808>,  <36.919083, 36.457603, 52.968307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230827, 36.245991, 53.397808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424355, 35.938595, 53.230312>,  <36.540470, 35.754158, 53.129814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424355, 35.938595, 53.230312>,  <36.230827, 36.245991, 53.397808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424355, 35.938595, 53.230312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023672, -0.466796, 0.884048,
		-0.874848, -0.437631, -0.207653,
		0.483818, -0.768492, -0.418736,
		36.569500, 35.708046, 53.104691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984882, 35.736542, 53.818027>,  <36.230827, 36.245991, 53.397808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984882, 35.736542, 53.818027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282009, 35.569294, 53.608879>,  <36.460285, 35.468945, 53.483391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282009, 35.569294, 53.608879>,  <35.984882, 35.736542, 53.818027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282009, 35.569294, 53.608879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284802, -0.509458, 0.811998,
		-0.605897, -0.752081, -0.259352,
		0.742817, -0.418123, -0.522873,
		36.504856, 35.443859, 53.452019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.857922, 38.413486, 37.601448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252106, 38.355076, 37.566700>,  <35.488617, 38.320030, 37.545849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252106, 38.355076, 37.566700>,  <34.857922, 38.413486, 37.601448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252106, 38.355076, 37.566700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002285, -0.499832, 0.866120,
		-0.169900, -0.853723, -0.492230,
		0.985459, -0.146029, -0.086872,
		35.547745, 38.311268, 37.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970203, 37.621090, 37.571663>,  <34.857922, 38.413486, 37.601448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970203, 37.621090, 37.571663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288677, 37.824734, 37.702442>,  <35.479763, 37.946922, 37.780910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288677, 37.824734, 37.702442>,  <34.970203, 37.621090, 37.571663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288677, 37.824734, 37.702442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109036, -0.410794, 0.905185,
		0.595150, -0.756342, -0.271556,
		0.796183, 0.509112, 0.326953,
		35.527531, 37.977467, 37.800529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172066, 37.287228, 38.065258>,  <34.970203, 37.621090, 37.571663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172066, 37.287228, 38.065258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345612, 37.636234, 38.155117>,  <35.449741, 37.845638, 38.209034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345612, 37.636234, 38.155117>,  <35.172066, 37.287228, 38.065258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345612, 37.636234, 38.155117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104578, -0.296423, 0.949314,
		0.894887, -0.388383, -0.219855,
		0.433868, 0.872520, 0.224649,
		35.475773, 37.897991, 38.222511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767899, 37.056614, 38.381634>,  <35.172066, 37.287228, 38.065258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767899, 37.056614, 38.381634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739979, 37.431393, 38.518604>,  <35.723225, 37.656261, 38.600788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739979, 37.431393, 38.518604>,  <35.767899, 37.056614, 38.381634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739979, 37.431393, 38.518604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070473, -0.337779, 0.938583,
		0.995068, 0.089648, -0.042451,
		-0.069802, 0.936947, 0.342431,
		35.719040, 37.712475, 38.621334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280537, 37.124916, 38.905190>,  <35.767899, 37.056614, 38.381634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280537, 37.124916, 38.905190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057953, 37.448402, 38.981430>,  <35.924400, 37.642494, 39.027176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057953, 37.448402, 38.981430>,  <36.280537, 37.124916, 38.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057953, 37.448402, 38.981430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032641, -0.207942, 0.977596,
		0.830232, 0.550217, 0.089315,
		-0.556462, 0.808716, 0.190600,
		35.891014, 37.691017, 39.038609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507042, 37.540878, 39.499119>,  <36.280537, 37.124916, 38.905190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507042, 37.540878, 39.499119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132244, 37.678307, 39.473824>,  <35.907364, 37.760761, 39.458645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132244, 37.678307, 39.473824>,  <36.507042, 37.540878, 39.499119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132244, 37.678307, 39.473824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104385, -0.102599, 0.989231,
		0.333380, 0.933506, 0.131998,
		-0.936996, 0.343569, -0.063240,
		35.851147, 37.781376, 39.454853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484493, 38.151741, 39.881432>,  <36.507042, 37.540878, 39.499119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484493, 38.151741, 39.881432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114880, 37.999352, 39.868645>,  <35.893112, 37.907917, 39.860973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114880, 37.999352, 39.868645>,  <36.484493, 38.151741, 39.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114880, 37.999352, 39.868645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054350, 0.048136, 0.997361,
		-0.378426, 0.923334, -0.065186,
		-0.924034, -0.380970, -0.031967,
		35.837669, 37.885059, 39.859055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089092, 38.549282, 40.395359>,  <36.484493, 38.151741, 39.881432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089092, 38.549282, 40.395359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828716, 38.252689, 40.330257>,  <35.672489, 38.074734, 40.291199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828716, 38.252689, 40.330257>,  <36.089092, 38.549282, 40.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828716, 38.252689, 40.330257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160904, -0.074755, 0.984135,
		-0.741882, 0.666799, -0.070645,
		-0.650939, -0.741479, -0.162750,
		35.633434, 38.030247, 40.281433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492283, 38.730949, 40.749752>,  <36.089092, 38.549282, 40.395359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492283, 38.730949, 40.749752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462070, 38.334721, 40.704048>,  <35.443943, 38.096981, 40.676628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462070, 38.334721, 40.704048>,  <35.492283, 38.730949, 40.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462070, 38.334721, 40.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279014, -0.089010, 0.956153,
		-0.957312, 0.104102, -0.269661,
		-0.075535, -0.990576, -0.114256,
		35.439411, 38.037548, 40.669773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885330, 38.615891, 41.093704>,  <35.492283, 38.730949, 40.749752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885330, 38.615891, 41.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064468, 38.258247, 41.094326>,  <35.171951, 38.043663, 41.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064468, 38.258247, 41.094326>,  <34.885330, 38.615891, 41.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064468, 38.258247, 41.094326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195005, -0.095978, 0.976095,
		-0.872586, -0.437445, -0.217339,
		0.447848, -0.894109, 0.001555,
		35.198822, 37.990013, 41.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499485, 38.227875, 41.535515>,  <34.885330, 38.615891, 41.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499485, 38.227875, 41.535515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856449, 38.051399, 41.497654>,  <35.070629, 37.945515, 41.474937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856449, 38.051399, 41.497654>,  <34.499485, 38.227875, 41.535515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856449, 38.051399, 41.497654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022334, -0.252695, 0.967288,
		-0.450675, -0.861103, -0.235360,
		0.892408, -0.441189, -0.094652,
		35.124172, 37.919044, 41.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435150, 37.595589, 41.776958>,  <34.499485, 38.227875, 41.535515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435150, 37.595589, 41.776958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822350, 37.689693, 41.811893>,  <35.054668, 37.746155, 41.832855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822350, 37.689693, 41.811893>,  <34.435150, 37.595589, 41.776958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822350, 37.689693, 41.811893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051586, -0.154034, 0.986718,
		0.245589, -0.959649, -0.136969,
		0.968000, 0.235261, 0.087333,
		35.112751, 37.760273, 41.838093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096558, 36.949783, 41.946053>,  <34.435150, 37.595589, 41.776958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096558, 36.949783, 41.946053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707317, 37.001976, 42.021999>,  <33.473774, 37.033291, 42.067566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707317, 37.001976, 42.021999>,  <34.096558, 36.949783, 41.946053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707317, 37.001976, 42.021999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207602, -0.139364, -0.968235,
		-0.099879, -0.981607, 0.162704,
		-0.973101, 0.130484, 0.189863,
		33.415386, 37.041122, 42.078957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732399, 36.458271, 41.431778>,  <34.096558, 36.949783, 41.946053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732399, 36.458271, 41.431778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476772, 36.745472, 41.542091>,  <33.323395, 36.917793, 41.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476772, 36.745472, 41.542091>,  <33.732399, 36.458271, 41.431778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476772, 36.745472, 41.542091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375208, 0.021981, -0.926680,
		-0.671422, -0.695692, 0.255353,
		-0.639071, 0.718004, 0.275788,
		33.285049, 36.960873, 41.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135456, 36.266224, 41.254921>,  <33.732399, 36.458271, 41.431778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135456, 36.266224, 41.254921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074158, 36.661442, 41.261635>,  <33.037380, 36.898571, 41.265663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074158, 36.661442, 41.261635>,  <33.135456, 36.266224, 41.254921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074158, 36.661442, 41.261635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445424, -0.053904, -0.893696,
		-0.882107, -0.144433, 0.448360,
		-0.153247, 0.988045, 0.016785,
		33.028183, 36.957855, 41.266670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574890, 36.340687, 41.063290>,  <33.135456, 36.266224, 41.254921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574890, 36.340687, 41.063290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705059, 36.709782, 40.980675>,  <32.783161, 36.931240, 40.931107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705059, 36.709782, 40.980675>,  <32.574890, 36.340687, 41.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705059, 36.709782, 40.980675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412179, -0.058158, -0.909244,
		-0.851005, 0.381017, 0.361407,
		0.325419, 0.922737, -0.206540,
		32.802685, 36.986603, 40.918713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991339, 36.669392, 40.772144>,  <32.574890, 36.340687, 41.063290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991339, 36.669392, 40.772144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284294, 36.918011, 40.660942>,  <32.460068, 37.067181, 40.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284294, 36.918011, 40.660942>,  <31.991339, 36.669392, 40.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284294, 36.918011, 40.660942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481895, 0.184725, -0.856536,
		-0.481024, 0.761285, 0.434811,
		0.732389, 0.621547, -0.278003,
		32.504009, 37.104473, 40.577541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658842, 37.214428, 40.419403>,  <31.991339, 36.669392, 40.772144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658842, 37.214428, 40.419403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036068, 37.239269, 40.288700>,  <32.262405, 37.254173, 40.210278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036068, 37.239269, 40.288700>,  <31.658842, 37.214428, 40.419403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036068, 37.239269, 40.288700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332577, 0.163550, -0.928786,
		-0.004236, 0.984579, 0.174891,
		0.943066, 0.062099, -0.326756,
		32.318989, 37.257900, 40.190674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581266, 37.633797, 39.897419>,  <31.658842, 37.214428, 40.419403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581266, 37.633797, 39.897419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939140, 37.477058, 39.811634>,  <32.153866, 37.383015, 39.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939140, 37.477058, 39.811634>,  <31.581266, 37.633797, 39.897419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939140, 37.477058, 39.811634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215864, 0.041060, -0.975560,
		0.391077, 0.919113, -0.047850,
		0.894685, -0.391848, -0.214461,
		32.207546, 37.359505, 39.747295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779131, 38.058731, 39.270054>,  <31.581266, 37.633797, 39.897419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779131, 38.058731, 39.270054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011665, 37.733421, 39.280064>,  <32.151188, 37.538235, 39.286072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011665, 37.733421, 39.280064>,  <31.779131, 38.058731, 39.270054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011665, 37.733421, 39.280064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046579, 0.002556, -0.998911,
		0.812329, 0.581869, 0.039368,
		0.581336, -0.813278, 0.025027,
		32.186066, 37.489437, 39.287571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255219, 38.245392, 38.791397>,  <31.779131, 38.058731, 39.270054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255219, 38.245392, 38.791397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272205, 37.851845, 38.860909>,  <32.282398, 37.615715, 38.902615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272205, 37.851845, 38.860909>,  <32.255219, 38.245392, 38.791397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272205, 37.851845, 38.860909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063962, -0.176256, -0.982264,
		0.997048, 0.030594, -0.070415,
		0.042463, -0.983869, 0.173779,
		32.284943, 37.556683, 38.913044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684536, 37.900486, 38.226940>,  <32.255219, 38.245392, 38.791397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684536, 37.900486, 38.226940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476791, 37.594509, 38.379322>,  <32.352142, 37.410923, 38.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476791, 37.594509, 38.379322>,  <32.684536, 37.900486, 38.226940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476791, 37.594509, 38.379322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257329, -0.285109, -0.923307,
		0.814888, -0.577564, -0.048766,
		-0.519365, -0.764940, 0.380955,
		32.320980, 37.365028, 38.493610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922222, 37.336403, 37.976650>,  <32.684536, 37.900486, 38.226940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922222, 37.336403, 37.976650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551395, 37.224621, 38.076607>,  <32.328899, 37.157551, 38.136581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551395, 37.224621, 38.076607>,  <32.922222, 37.336403, 37.976650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551395, 37.224621, 38.076607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204755, -0.180928, -0.961946,
		0.314031, -0.942959, 0.110513,
		-0.927070, -0.279453, 0.249892,
		32.273273, 37.140785, 38.151573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860367, 36.646904, 37.635513>,  <32.922222, 37.336403, 37.976650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860367, 36.646904, 37.635513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496277, 36.789989, 37.718975>,  <32.277824, 36.875839, 37.769051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496277, 36.789989, 37.718975>,  <32.860367, 36.646904, 37.635513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496277, 36.789989, 37.718975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330079, -0.322419, -0.887183,
		-0.250080, -0.876407, 0.411546,
		-0.910224, 0.357710, 0.208653,
		32.223209, 36.897305, 37.781570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505028, 36.322559, 37.300789>,  <32.860367, 36.646904, 37.635513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505028, 36.322559, 37.300789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220135, 36.598644, 37.351891>,  <32.049198, 36.764297, 37.382553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220135, 36.598644, 37.351891>,  <32.505028, 36.322559, 37.300789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220135, 36.598644, 37.351891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381149, -0.227443, -0.896100,
		-0.589446, -0.686929, 0.425068,
		-0.712236, 0.690216, 0.127757,
		32.006466, 36.805710, 37.390217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938656, 36.015553, 37.083603>,  <32.505028, 36.322559, 37.300789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938656, 36.015553, 37.083603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833426, 36.401291, 37.072128>,  <31.770287, 36.632736, 37.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833426, 36.401291, 37.072128>,  <31.938656, 36.015553, 37.083603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833426, 36.401291, 37.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468941, -0.153798, -0.869736,
		-0.843140, -0.215354, 0.492683,
		-0.263075, 0.964349, -0.028684,
		31.754503, 36.690594, 37.063522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150417, 36.049858, 37.033833>,  <31.938656, 36.015553, 37.083603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150417, 36.049858, 37.033833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354664, 36.369907, 36.907932>,  <31.477211, 36.561939, 36.832394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354664, 36.369907, 36.907932>,  <31.150417, 36.049858, 37.033833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354664, 36.369907, 36.907932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478912, -0.039357, -0.876980,
		-0.714083, 0.598539, 0.363094,
		0.510616, 0.800126, -0.314752,
		31.507849, 36.609947, 36.813507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262079, 35.371403, 37.463879>,  <31.150417, 36.049858, 37.033833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262079, 35.371403, 37.463879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513556, 35.092247, 37.326649>,  <31.664442, 34.924755, 37.244308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513556, 35.092247, 37.326649>,  <31.262079, 35.371403, 37.463879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513556, 35.092247, 37.326649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000928, -0.441843, 0.897092,
		-0.777654, -0.563675, -0.278431,
		0.628691, -0.697886, -0.343078,
		31.702164, 34.882881, 37.223724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027092, 34.681129, 37.611961>,  <31.262079, 35.371403, 37.463879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027092, 34.681129, 37.611961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427088, 34.679371, 37.612202>,  <31.667086, 34.678314, 37.612347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427088, 34.679371, 37.612202>,  <31.027092, 34.681129, 37.611961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427088, 34.679371, 37.612202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001659, -0.245593, 0.969372,
		-0.004117, -0.969363, -0.245598,
		0.999990, -0.004398, 0.000597,
		31.727085, 34.678051, 37.612381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201389, 34.181046, 38.065651>,  <31.027092, 34.681129, 37.611961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201389, 34.181046, 38.065651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522291, 34.419300, 38.049629>,  <31.714832, 34.562252, 38.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522291, 34.419300, 38.049629>,  <31.201389, 34.181046, 38.065651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522291, 34.419300, 38.049629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105310, -0.075166, 0.991594,
		0.587623, -0.799727, -0.123029,
		0.802253, 0.595640, -0.040050,
		31.762966, 34.597992, 38.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863840, 33.845131, 38.394157>,  <31.201389, 34.181046, 38.065651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863840, 33.845131, 38.394157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913488, 34.241905, 38.383839>,  <31.943277, 34.479969, 38.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913488, 34.241905, 38.383839>,  <31.863840, 33.845131, 38.394157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913488, 34.241905, 38.383839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472630, -0.036241, 0.880515,
		0.872476, -0.121481, -0.473315,
		0.124119, 0.991932, -0.025796,
		31.950724, 34.539486, 38.376099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603813, 34.105228, 38.405220>,  <31.863840, 33.845131, 38.394157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603813, 34.105228, 38.405220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382030, 34.408627, 38.542194>,  <32.248962, 34.590668, 38.624378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382030, 34.408627, 38.542194>,  <32.603813, 34.105228, 38.405220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382030, 34.408627, 38.542194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521159, -0.004343, 0.853449,
		0.648826, 0.651661, -0.392890,
		-0.554453, 0.758498, 0.342437,
		32.215694, 34.636177, 38.644924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004044, 34.499481, 38.868362>,  <32.603813, 34.105228, 38.405220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004044, 34.499481, 38.868362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658092, 34.638275, 39.013466>,  <32.450523, 34.721550, 39.100529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658092, 34.638275, 39.013466>,  <33.004044, 34.499481, 38.868362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658092, 34.638275, 39.013466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413074, 0.081326, 0.907059,
		0.285232, 0.934339, -0.213666,
		-0.864877, 0.346982, 0.362754,
		32.398628, 34.742371, 39.122292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230873, 34.886078, 39.506550>,  <33.004044, 34.499481, 38.868362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230873, 34.886078, 39.506550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833054, 34.884373, 39.548241>,  <32.594364, 34.883350, 39.573254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833054, 34.884373, 39.548241>,  <33.230873, 34.886078, 39.506550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833054, 34.884373, 39.548241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103540, 0.081183, 0.991307,
		-0.012683, 0.996690, -0.080299,
		-0.994544, -0.004259, 0.104227,
		32.534691, 34.883095, 39.579510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933979, 35.526783, 39.872128>,  <33.230873, 34.886078, 39.506550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933979, 35.526783, 39.872128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694595, 35.212894, 39.936695>,  <32.550964, 35.024559, 39.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694595, 35.212894, 39.936695>,  <32.933979, 35.526783, 39.872128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694595, 35.212894, 39.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105239, 0.122734, 0.986844,
		-0.794211, 0.607573, 0.009132,
		-0.598459, -0.784724, 0.161417,
		32.515057, 34.977478, 39.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448963, 35.633617, 40.524487>,  <32.933979, 35.526783, 39.872128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448963, 35.633617, 40.524487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428303, 35.236588, 40.480446>,  <32.415905, 34.998367, 40.454021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428303, 35.236588, 40.480446>,  <32.448963, 35.633617, 40.524487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428303, 35.236588, 40.480446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144553, -0.116515, 0.982613,
		-0.988148, 0.034842, 0.149498,
		-0.051655, -0.992577, -0.110097,
		32.412807, 34.938816, 40.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171593, 35.447289, 41.217186>,  <32.448963, 35.633617, 40.524487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171593, 35.447289, 41.217186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266178, 35.097343, 41.048096>,  <32.322929, 34.887375, 40.946640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266178, 35.097343, 41.048096>,  <32.171593, 35.447289, 41.217186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266178, 35.097343, 41.048096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194572, -0.383619, 0.902761,
		-0.951959, -0.295724, 0.079510,
		0.236467, -0.874862, -0.422730,
		32.337120, 34.834885, 40.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846615, 34.932964, 41.699184>,  <32.171593, 35.447289, 41.217186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846615, 34.932964, 41.699184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102459, 34.709923, 41.487534>,  <32.255966, 34.576099, 41.360542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102459, 34.709923, 41.487534>,  <31.846615, 34.932964, 41.699184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102459, 34.709923, 41.487534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189296, -0.552897, 0.811463,
		-0.745027, -0.619182, -0.248087,
		0.639610, -0.557600, -0.529132,
		32.294342, 34.542645, 41.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697063, 34.197163, 41.738983>,  <31.846615, 34.932964, 41.699184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697063, 34.197163, 41.738983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087467, 34.255657, 41.674454>,  <32.321709, 34.290752, 41.635738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087467, 34.255657, 41.674454>,  <31.697063, 34.197163, 41.738983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087467, 34.255657, 41.674454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217165, -0.600154, 0.769841,
		0.015761, -0.786404, -0.617512,
		0.976008, 0.146235, -0.161320,
		32.380268, 34.299526, 41.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094631, 33.502964, 41.661190>,  <31.697063, 34.197163, 41.738983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094631, 33.502964, 41.661190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389725, 33.757164, 41.752316>,  <32.566780, 33.909683, 41.806992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389725, 33.757164, 41.752316>,  <32.094631, 33.502964, 41.661190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389725, 33.757164, 41.752316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382375, -0.671445, 0.634784,
		0.556366, -0.381191, -0.738343,
		0.737731, 0.635496, 0.227811,
		32.611046, 33.947811, 41.820660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505455, 33.047909, 42.108128>,  <32.094631, 33.502964, 41.661190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505455, 33.047909, 42.108128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716415, 33.385494, 42.147263>,  <32.842991, 33.588047, 42.170742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716415, 33.385494, 42.147263>,  <32.505455, 33.047909, 42.108128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716415, 33.385494, 42.147263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498293, -0.400526, 0.768949,
		0.688154, -0.356790, -0.631779,
		0.527397, 0.843967, 0.097837,
		32.874634, 33.638683, 42.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243900, 32.904163, 42.108219>,  <32.505455, 33.047909, 42.108128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243900, 32.904163, 42.108219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145653, 33.231075, 42.316730>,  <33.086704, 33.427223, 42.441837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145653, 33.231075, 42.316730>,  <33.243900, 32.904163, 42.108219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145653, 33.231075, 42.316730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539189, -0.331700, 0.774113,
		0.805571, 0.471206, -0.359194,
		-0.245622, 0.817276, 0.521277,
		33.071968, 33.476257, 42.473114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826771, 33.130726, 42.484966>,  <33.243900, 32.904163, 42.108219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826771, 33.130726, 42.484966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524689, 33.284313, 42.697468>,  <33.343437, 33.376465, 42.824970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524689, 33.284313, 42.697468>,  <33.826771, 33.130726, 42.484966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524689, 33.284313, 42.697468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430882, -0.319963, 0.843780,
		0.493966, 0.866136, 0.076194,
		-0.755208, 0.383968, 0.531253,
		33.298126, 33.399502, 42.856842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136116, 33.552677, 43.046146>,  <33.826771, 33.130726, 42.484966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136116, 33.552677, 43.046146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758121, 33.504917, 43.167965>,  <33.531326, 33.476261, 43.241058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758121, 33.504917, 43.167965>,  <34.136116, 33.552677, 43.046146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758121, 33.504917, 43.167965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320011, -0.144422, 0.936341,
		-0.067815, 0.982286, 0.174685,
		-0.944983, -0.119399, 0.304549,
		33.474625, 33.469097, 43.259331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051872, 34.049191, 43.580887>,  <34.136116, 33.552677, 43.046146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051872, 34.049191, 43.580887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778721, 33.766235, 43.653862>,  <33.614830, 33.596462, 43.697647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778721, 33.766235, 43.653862>,  <34.051872, 34.049191, 43.580887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778721, 33.766235, 43.653862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307950, -0.052277, 0.949965,
		-0.662453, 0.704894, 0.253538,
		-0.682879, -0.707384, 0.182441,
		33.573856, 33.554020, 43.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915981, 34.187958, 44.273499>,  <34.051872, 34.049191, 43.580887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915981, 34.187958, 44.273499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746513, 33.829861, 44.218292>,  <33.644833, 33.615002, 44.185169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746513, 33.829861, 44.218292>,  <33.915981, 34.187958, 44.273499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746513, 33.829861, 44.218292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143871, -0.216936, 0.965526,
		-0.894316, 0.389212, 0.220709,
		-0.423674, -0.895239, -0.138013,
		33.619411, 33.561291, 44.176888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499237, 34.104454, 44.772568>,  <33.915981, 34.187958, 44.273499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499237, 34.104454, 44.772568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533245, 33.721729, 44.661366>,  <33.553650, 33.492096, 44.594646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533245, 33.721729, 44.661366>,  <33.499237, 34.104454, 44.772568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533245, 33.721729, 44.661366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082690, -0.271274, 0.958944,
		-0.992942, -0.104513, 0.056056,
		0.085016, -0.956811, -0.278001,
		33.558750, 33.434685, 44.577965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046066, 33.706684, 45.220764>,  <33.499237, 34.104454, 44.772568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046066, 33.706684, 45.220764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314323, 33.447197, 45.076878>,  <33.475277, 33.291504, 44.990547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314323, 33.447197, 45.076878>,  <33.046066, 33.706684, 45.220764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314323, 33.447197, 45.076878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000387, -0.485245, 0.874378,
		-0.741778, -0.586258, -0.325678,
		0.670645, -0.648721, -0.359717,
		33.515518, 33.252583, 44.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762218, 33.001297, 45.335758>,  <33.046066, 33.706684, 45.220764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762218, 33.001297, 45.335758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158516, 32.963001, 45.297245>,  <33.396294, 32.940025, 45.274136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158516, 32.963001, 45.297245>,  <32.762218, 33.001297, 45.335758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158516, 32.963001, 45.297245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035083, -0.504557, 0.862665,
		-0.131168, -0.858054, -0.496526,
		0.990739, -0.095735, -0.096285,
		33.455738, 32.934280, 45.268360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904533, 32.277435, 45.406223>,  <32.762218, 33.001297, 45.335758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904533, 32.277435, 45.406223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247730, 32.454288, 45.510811>,  <33.453648, 32.560402, 45.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247730, 32.454288, 45.510811>,  <32.904533, 32.277435, 45.406223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247730, 32.454288, 45.510811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123431, -0.671581, 0.730578,
		0.498610, -0.594558, -0.630784,
		0.857993, 0.442132, 0.261470,
		33.505127, 32.586929, 45.589252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298649, 31.723219, 45.701771>,  <32.904533, 32.277435, 45.406223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298649, 31.723219, 45.701771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520203, 32.045135, 45.787109>,  <33.653137, 32.238285, 45.838314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520203, 32.045135, 45.787109>,  <33.298649, 31.723219, 45.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520203, 32.045135, 45.787109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320541, -0.442620, 0.837461,
		0.768415, -0.395471, -0.503131,
		0.553888, 0.804792, 0.213351,
		33.686371, 32.286572, 45.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902748, 31.565073, 45.939934>,  <33.298649, 31.723219, 45.701771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902748, 31.565073, 45.939934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851543, 31.933628, 46.086720>,  <33.820820, 32.154762, 46.174789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851543, 31.933628, 46.086720>,  <33.902748, 31.565073, 45.939934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851543, 31.933628, 46.086720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253579, -0.327303, 0.910258,
		0.958807, 0.209574, -0.191747,
		-0.128008, 0.921386, 0.366964,
		33.813141, 32.210045, 46.196808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452866, 31.609974, 46.309124>,  <33.902748, 31.565073, 45.939934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452866, 31.609974, 46.309124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201077, 31.897419, 46.427345>,  <34.050003, 32.069885, 46.498280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201077, 31.897419, 46.427345>,  <34.452866, 31.609974, 46.309124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201077, 31.897419, 46.427345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267853, -0.156375, 0.950685,
		0.729392, 0.677600, -0.094048,
		-0.629477, 0.718613, 0.295556,
		34.012234, 32.113003, 46.516010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832817, 32.210133, 46.786976>,  <34.452866, 31.609974, 46.309124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832817, 32.210133, 46.786976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445904, 32.177292, 46.882999>,  <34.213757, 32.157589, 46.940613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445904, 32.177292, 46.882999>,  <34.832817, 32.210133, 46.786976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445904, 32.177292, 46.882999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244233, -0.045080, 0.968668,
		-0.068705, 0.995604, 0.063657,
		-0.967280, -0.082100, 0.240062,
		34.155720, 32.152660, 46.955017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561352, 32.641850, 46.496235>,  <34.832817, 32.210133, 46.786976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561352, 32.641850, 46.496235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901985, 32.454617, 46.590637>,  <36.106365, 32.342278, 46.647278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901985, 32.454617, 46.590637>,  <35.561352, 32.641850, 46.496235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901985, 32.454617, 46.590637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303097, 0.072330, -0.950211,
		0.427704, 0.880721, 0.203469,
		0.851587, -0.468080, 0.236008,
		36.157463, 32.314194, 46.661438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100037, 33.117741, 46.243763>,  <35.561352, 32.641850, 46.496235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100037, 33.117741, 46.243763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241432, 32.744884, 46.275166>,  <36.326271, 32.521172, 46.294006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241432, 32.744884, 46.275166>,  <36.100037, 33.117741, 46.243763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241432, 32.744884, 46.275166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240573, 0.009483, -0.970585,
		0.903975, 0.361977, 0.227599,
		0.353488, -0.932139, 0.078510,
		36.347477, 32.465244, 46.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633541, 33.136856, 45.846313>,  <36.100037, 33.117741, 46.243763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633541, 33.136856, 45.846313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552551, 32.745197, 45.852993>,  <36.503960, 32.510201, 45.857002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552551, 32.745197, 45.852993>,  <36.633541, 33.136856, 45.846313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552551, 32.745197, 45.852993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332341, -0.084744, -0.939344,
		0.921170, -0.184640, 0.342569,
		-0.202472, -0.979146, 0.016700,
		36.491810, 32.451454, 45.858002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186626, 32.887451, 45.520985>,  <36.633541, 33.136856, 45.846313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186626, 32.887451, 45.520985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918198, 32.592560, 45.489620>,  <36.757141, 32.415623, 45.470802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918198, 32.592560, 45.489620>,  <37.186626, 32.887451, 45.520985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918198, 32.592560, 45.489620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303618, -0.176800, -0.936247,
		0.676369, -0.652097, 0.342483,
		-0.671075, -0.737232, -0.078406,
		36.716877, 32.371391, 45.466099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565113, 32.279167, 45.347347>,  <37.186626, 32.887451, 45.520985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565113, 32.279167, 45.347347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185844, 32.236294, 45.227692>,  <36.958282, 32.210571, 45.155899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185844, 32.236294, 45.227692>,  <37.565113, 32.279167, 45.347347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185844, 32.236294, 45.227692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306558, -0.060826, -0.949907,
		0.083620, -0.992377, 0.090532,
		-0.948172, -0.107184, -0.299135,
		36.901394, 32.204140, 45.137951>
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
