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
	<4.394481, 3.880989, 2.442963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158211, 4.202209, 2.474487>,  <4.016449, 4.394942, 2.493402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158211, 4.202209, 2.474487>,  <4.394481, 3.880989, 2.442963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.158211, 4.202209, 2.474487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490432, 0.434850, -0.755237,
		-0.640765, -0.407448, -0.650697,
		-0.590675, 0.803052, 0.078811,
		3.981008, 4.443125, 2.498131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.904317, 4.042993, 1.772687>,  <4.394481, 3.880989, 2.442963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.904317, 4.042993, 1.772687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.052597, 4.324631, 2.014954>,  <4.141565, 4.493613, 2.160314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.052597, 4.324631, 2.014954>,  <3.904317, 4.042993, 1.772687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052597, 4.324631, 2.014954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453199, 0.432086, -0.779687,
		-0.810673, 0.563519, -0.158920,
		0.370701, 0.704094, 0.605667,
		4.163807, 4.535859, 2.196654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.279827, 4.390317, 1.338070>,  <3.904317, 4.042993, 1.772687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.279827, 4.390317, 1.338070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.381958, 4.602814, 1.661201>,  <4.443237, 4.730312, 1.855081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.381958, 4.602814, 1.661201>,  <4.279827, 4.390317, 1.338070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.381958, 4.602814, 1.661201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657998, 0.516709, -0.547768,
		-0.708411, 0.671411, -0.217626,
		0.255328, 0.531242, 0.807830,
		4.458557, 4.762187, 1.903550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.264238, 5.078071, 1.262367>,  <4.279827, 4.390317, 1.338070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.264238, 5.078071, 1.262367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.548019, 4.937531, 1.506737>,  <4.718288, 4.853206, 1.653359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.548019, 4.937531, 1.506737>,  <4.264238, 5.078071, 1.262367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.548019, 4.937531, 1.506737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704753, 0.354514, -0.614526,
		-0.000667, 0.866529, 0.499127,
		0.709452, -0.351351, 0.610925,
		4.760855, 4.832125, 1.690014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.675247, 5.639252, 1.509054>,  <4.264238, 5.078071, 1.262367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.675247, 5.639252, 1.509054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.851372, 5.285492, 1.447136>,  <4.957047, 5.073236, 1.409985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.851372, 5.285492, 1.447136>,  <4.675247, 5.639252, 1.509054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851372, 5.285492, 1.447136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649244, 0.432715, -0.625492,
		0.620168, 0.174912, 0.764721,
		0.440312, -0.884400, -0.154795,
		4.983466, 5.020172, 1.400697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.333002, 5.866411, 1.562963>,  <4.675247, 5.639252, 1.509054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.333002, 5.866411, 1.562963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334854, 5.496521, 1.410721>,  <5.335966, 5.274587, 1.319375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334854, 5.496521, 1.410721>,  <5.333002, 5.866411, 1.562963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334854, 5.496521, 1.410721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834212, 0.213453, -0.508457,
		0.551425, -0.315151, 0.772406,
		0.004632, -0.924726, -0.380606,
		5.336244, 5.219103, 1.296539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.954009, 5.677826, 1.593513>,  <5.333002, 5.866411, 1.562963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.954009, 5.677826, 1.593513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.847801, 5.397873, 1.328285>,  <5.784077, 5.229901, 1.169148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.847801, 5.397873, 1.328285>,  <5.954009, 5.677826, 1.593513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.847801, 5.397873, 1.328285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880292, 0.104481, -0.462785,
		0.393174, -0.706574, 0.588360,
		-0.265519, -0.699884, -0.663071,
		5.768146, 5.187908, 1.129364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.484104, 5.177230, 1.639060>,  <5.954009, 5.677826, 1.593513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.484104, 5.177230, 1.639060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.315750, 5.164108, 1.276451>,  <6.214738, 5.156235, 1.058886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.315750, 5.164108, 1.276451>,  <6.484104, 5.177230, 1.639060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.315750, 5.164108, 1.276451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888911, 0.184285, -0.419377,
		0.180812, -0.982325, -0.048411,
		-0.420886, -0.032795, -0.906520,
		6.189485, 5.154267, 1.004495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.931079, 0.686162, 0.223579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.710308, 0.370377, 0.116158>,  <2.577845, 0.180905, 0.051705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.710308, 0.370377, 0.116158>,  <2.931079, 0.686162, 0.223579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.710308, 0.370377, 0.116158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689800, 0.251275, 0.678997,
		-0.468564, 0.560006, -0.683258,
		-0.551928, -0.789465, -0.268553,
		2.544730, 0.133537, 0.035591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.337156, 0.812864, 0.610545>,  <2.931079, 0.686162, 0.223579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.337156, 0.812864, 0.610545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.211102, 0.484421, 0.420189>,  <2.135469, 0.287355, 0.305975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.211102, 0.484421, 0.420189>,  <2.337156, 0.812864, 0.610545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.211102, 0.484421, 0.420189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889592, 0.080880, 0.449538,
		-0.330628, 0.565015, -0.755939,
		-0.315136, -0.821107, -0.475891,
		2.116561, 0.238089, 0.277421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.640350, 0.928240, 0.449762>,  <2.337156, 0.812864, 0.610545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.640350, 0.928240, 0.449762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.684795, 0.544861, 0.344666>,  <1.711463, 0.314834, 0.281607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.684795, 0.544861, 0.344666>,  <1.640350, 0.928240, 0.449762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.684795, 0.544861, 0.344666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883002, -0.216528, 0.416441,
		-0.456028, 0.185730, -0.870370,
		0.111114, -0.958447, -0.262742,
		1.718130, 0.257327, 0.265843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.067827, 0.799275, 0.011529>,  <1.640350, 0.928240, 0.449762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.067827, 0.799275, 0.011529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202316, 0.488297, 0.224144>,  <1.283010, 0.301710, 0.351713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202316, 0.488297, 0.224144>,  <1.067827, 0.799275, 0.011529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.202316, 0.488297, 0.224144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935966, -0.213209, 0.280194,
		-0.104506, -0.591710, -0.799348,
		0.336222, -0.777445, 0.531539,
		1.303183, 0.255063, 0.383605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.601515, 0.265697, -0.112928>,  <1.067827, 0.799275, 0.011529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.601515, 0.265697, -0.112928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.798302, 0.177490, 0.223961>,  <0.916374, 0.124566, 0.426094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.798302, 0.177490, 0.223961>,  <0.601515, 0.265697, -0.112928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.798302, 0.177490, 0.223961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868273, -0.195156, 0.456087,
		0.063791, -0.955661, -0.287478,
		0.491967, -0.220515, 0.842224,
		0.945892, 0.111335, 0.476628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.348387, -0.454542, 0.127475>,  <0.601515, 0.265697, -0.112928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.348387, -0.454542, 0.127475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.493057, -0.254135, 0.441971>,  <0.579859, -0.133891, 0.630669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.493057, -0.254135, 0.441971>,  <0.348387, -0.454542, 0.127475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.493057, -0.254135, 0.441971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742964, -0.354563, 0.567706,
		0.563201, -0.789473, 0.244001,
		0.361675, 0.501017, 0.786240,
		0.601560, -0.103830, 0.677843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.485199, -0.939882, 0.648089>,  <0.348387, -0.454542, 0.127475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.485199, -0.939882, 0.648089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.436348, -0.599991, 0.853241>,  <0.407038, -0.396056, 0.976332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.436348, -0.599991, 0.853241>,  <0.485199, -0.939882, 0.648089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.436348, -0.599991, 0.853241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710155, -0.435814, 0.552943,
		0.693372, -0.296696, 0.656663,
		-0.122127, 0.849728, 0.512881,
		0.399710, -0.345072, 1.007105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.508243, -1.142153, 1.435758>,  <0.485199, -0.939882, 0.648089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.508243, -1.142153, 1.435758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.336418, -0.781357, 1.418365>,  <0.233323, -0.564879, 1.407930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.336418, -0.781357, 1.418365>,  <0.508243, -1.142153, 1.435758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.336418, -0.781357, 1.418365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753627, -0.331546, 0.567559,
		0.497517, 0.276570, 0.822184,
		-0.429562, 0.901990, -0.043481,
		0.207550, -0.510760, 1.405321>
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
