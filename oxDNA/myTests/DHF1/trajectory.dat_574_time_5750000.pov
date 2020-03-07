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
	<2.866871, -0.186589, 0.883887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.188675, -0.422096, 0.852604>,  <3.381757, -0.563400, 0.833834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.188675, -0.422096, 0.852604>,  <2.866871, -0.186589, 0.883887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.188675, -0.422096, 0.852604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575900, 0.805489, -0.139735,
		0.145266, 0.067379, 0.987096,
		0.804510, -0.588767, -0.078207,
		3.430028, -0.598726, 0.829142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248632, -0.108969, 1.427420>,  <2.866871, -0.186589, 0.883887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248632, -0.108969, 1.427420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.460632, -0.207359, 1.102804>,  <3.587832, -0.266393, 0.908035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.460632, -0.207359, 1.102804>,  <3.248632, -0.108969, 1.427420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.460632, -0.207359, 1.102804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535883, 0.838849, 0.095722,
		0.657213, -0.485622, 0.576405,
		0.530001, -0.245975, -0.811539,
		3.619633, -0.281152, 0.859343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962051, -0.263736, 1.529800>,  <3.248632, -0.108969, 1.427420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962051, -0.263736, 1.529800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.937916, -0.144714, 1.148682>,  <3.923435, -0.073301, 0.920011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.937916, -0.144714, 1.148682>,  <3.962051, -0.263736, 1.529800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.937916, -0.144714, 1.148682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829433, 0.546003, 0.117990,
		0.555338, -0.783161, -0.279746,
		-0.060337, 0.297555, -0.952796,
		3.919815, -0.055448, 0.862843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.637417, -0.338058, 1.204180>,  <3.962051, -0.263736, 1.529800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.637417, -0.338058, 1.204180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427147, -0.053064, 1.018263>,  <4.300985, 0.117932, 0.906713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427147, -0.053064, 1.018263>,  <4.637417, -0.338058, 1.204180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427147, -0.053064, 1.018263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707510, 0.669539, 0.226157,
		0.472330, -0.209961, -0.856050,
		-0.525675, 0.712485, -0.464792,
		4.269444, 0.160681, 0.878825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164458, 0.019994, 0.948223>,  <4.637417, -0.338058, 1.204180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164458, 0.019994, 0.948223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.850731, 0.264418, 0.905416>,  <4.662495, 0.411072, 0.879732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.850731, 0.264418, 0.905416>,  <5.164458, 0.019994, 0.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.850731, 0.264418, 0.905416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596217, 0.790150, 0.142083,
		0.171381, 0.047633, -0.984053,
		-0.784317, 0.611060, -0.107017,
		4.615436, 0.447736, 0.873311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286854, 0.484219, 0.412944>,  <5.164458, 0.019994, 0.948223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286854, 0.484219, 0.412944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054878, 0.686947, 0.668070>,  <4.915693, 0.808583, 0.821145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054878, 0.686947, 0.668070>,  <5.286854, 0.484219, 0.412944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.054878, 0.686947, 0.668070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713149, 0.694307, 0.096729,
		-0.393815, 0.510953, -0.764092,
		-0.579938, 0.506819, 0.637814,
		4.880897, 0.838992, 0.859414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.346650, 1.156620, 0.231164>,  <5.286854, 0.484219, 0.412944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.346650, 1.156620, 0.231164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.215622, 1.191778, 0.607456>,  <5.137005, 1.212873, 0.833231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.215622, 1.191778, 0.607456>,  <5.346650, 1.156620, 0.231164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.215622, 1.191778, 0.607456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595210, 0.792451, 0.133215,
		-0.733773, 0.603569, -0.311900,
		-0.327569, 0.087896, 0.940730,
		5.117351, 1.218147, 0.889675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.994092, 1.805577, 0.379835>,  <5.346650, 1.156620, 0.231164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.994092, 1.805577, 0.379835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.155308, 1.678579, 0.723173>,  <5.252038, 1.602381, 0.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.155308, 1.678579, 0.723173>,  <4.994092, 1.805577, 0.379835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.155308, 1.678579, 0.723173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662988, 0.747826, -0.034695,
		-0.630877, 0.583056, 0.511899,
		0.403040, -0.317494, 0.858345,
		5.276220, 1.583331, 0.980677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.305058, 2.399565, 1.096340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.143852, 2.338875, 1.457352>,  <1.047129, 2.302460, 1.673959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.143852, 2.338875, 1.457352>,  <1.305058, 2.399565, 1.096340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.143852, 2.338875, 1.457352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619124, -0.681057, -0.390957,
		0.673992, -0.716338, 0.180538,
		-0.403013, -0.151727, 0.902529,
		1.022948, 2.293357, 1.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356895, 1.731387, 1.355678>,  <1.305058, 2.399565, 1.096340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356895, 1.731387, 1.355678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.027161, 1.915314, 1.487762>,  <0.829320, 2.025670, 1.567013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.027161, 1.915314, 1.487762>,  <1.356895, 1.731387, 1.355678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.027161, 1.915314, 1.487762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564434, -0.712323, -0.417146,
		0.043406, -0.530250, 0.846729,
		-0.824336, 0.459816, 0.330211,
		0.779860, 2.053259, 1.586826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.030076, 1.254860, 1.780847>,  <1.356895, 1.731387, 1.355678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.030076, 1.254860, 1.780847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761215, 1.519630, 1.648142>,  <0.599899, 1.678493, 1.568519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761215, 1.519630, 1.648142>,  <1.030076, 1.254860, 1.780847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.761215, 1.519630, 1.648142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646935, -0.742970, -0.171668,
		-0.360121, 0.099243, 0.927612,
		-0.672151, 0.661926, -0.331763,
		0.559570, 1.718208, 1.548613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.382230, 1.071382, 2.130000>,  <1.030076, 1.254860, 1.780847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.382230, 1.071382, 2.130000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.286972, 1.270351, 1.796328>,  <0.229818, 1.389733, 1.596124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.286972, 1.270351, 1.796328>,  <0.382230, 1.071382, 2.130000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.286972, 1.270351, 1.796328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808631, -0.577286, -0.113388,
		-0.537963, 0.647541, 0.539711,
		-0.238144, 0.497425, -0.834180,
		0.215529, 1.419579, 1.546074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.393462, 1.334855, 2.126173>,  <0.382230, 1.071382, 2.130000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.393462, 1.334855, 2.126173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.238838, 1.284271, 1.760752>,  <-0.146064, 1.253921, 1.541499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.238838, 1.284271, 1.760752>,  <-0.393462, 1.334855, 2.126173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.238838, 1.284271, 1.760752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741910, -0.631057, -0.226577,
		-0.547851, 0.765360, -0.337763,
		0.386560, -0.126459, -0.913553,
		-0.122870, 1.246333, 1.486686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.981113, 1.261873, 1.698331>,  <-0.393462, 1.334855, 2.126173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.981113, 1.261873, 1.698331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.685112, 1.114758, 1.473074>,  <-0.507511, 1.026489, 1.337920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.685112, 1.114758, 1.473074>,  <-0.981113, 1.261873, 1.698331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.685112, 1.114758, 1.473074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664482, -0.529479, -0.527367,
		-0.104213, 0.764450, -0.636204,
		0.740002, -0.367788, -0.563142,
		-0.463111, 1.004421, 1.304131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.338474, 1.251064, 1.104446>,  <-0.981113, 1.261873, 1.698331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.338474, 1.251064, 1.104446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.043045, 0.991081, 1.032818>,  <-0.865787, 0.835092, 0.989841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.043045, 0.991081, 1.032818>,  <-1.338474, 1.251064, 1.104446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.043045, 0.991081, 1.032818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602099, -0.516427, -0.608918,
		0.303293, 0.557549, -0.772757,
		0.738573, -0.649956, -0.179071,
		-0.821473, 0.796094, 0.979097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.342395, 1.177436, 0.364453>,  <-1.338474, 1.251064, 1.104446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.342395, 1.177436, 0.364453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.171341, 0.860237, 0.538019>,  <-1.068708, 0.669918, 0.642159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.171341, 0.860237, 0.538019>,  <-1.342395, 1.177436, 0.364453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.171341, 0.860237, 0.538019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638711, -0.604751, -0.475736,
		0.639669, -0.073705, -0.765109,
		0.427636, -0.792997, 0.433916,
		-1.043050, 0.622338, 0.668194>
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
