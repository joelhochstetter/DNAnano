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
	<2.963962, 0.147053, 2.943225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743050, -0.060257, 3.204414>,  <2.610502, -0.184643, 3.361128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743050, -0.060257, 3.204414>,  <2.963962, 0.147053, 2.943225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743050, -0.060257, 3.204414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562385, 0.809815, 0.167101,
		-0.615393, -0.274936, -0.738716,
		-0.552282, -0.518275, 0.652974,
		2.577365, -0.215740, 3.400307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.303969, 0.323384, 2.780543>,  <2.963962, 0.147053, 2.943225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.303969, 0.323384, 2.780543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.292816, 0.215309, 3.165504>,  <2.286124, 0.150464, 3.396482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.292816, 0.215309, 3.165504>,  <2.303969, 0.323384, 2.780543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.292816, 0.215309, 3.165504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705350, 0.687530, 0.172583,
		-0.708311, -0.674019, -0.209747,
		-0.027883, -0.270187, 0.962404,
		2.284451, 0.134253, 3.454226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.655174, -0.105581, 2.990723>,  <2.303969, 0.323384, 2.780543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.655174, -0.105581, 2.990723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802704, 0.112648, 3.291740>,  <1.891222, 0.243585, 3.472351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802704, 0.112648, 3.291740>,  <1.655174, -0.105581, 2.990723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802704, 0.112648, 3.291740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842821, 0.537691, 0.023259,
		-0.391946, -0.642838, 0.658132,
		0.368823, 0.545572, 0.752543,
		1.913351, 0.276320, 3.517503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235143, -0.235554, 3.632336>,  <1.655174, -0.105581, 2.990723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235143, -0.235554, 3.632336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.395142, 0.128799, 3.591751>,  <1.491141, 0.347411, 3.567400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.395142, 0.128799, 3.591751>,  <1.235143, -0.235554, 3.632336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.395142, 0.128799, 3.591751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914947, 0.403333, 0.013924,
		0.053605, 0.087262, 0.994742,
		0.399997, 0.910883, -0.101461,
		1.515141, 0.402064, 3.561313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.885323, 0.269967, 4.115643>,  <1.235143, -0.235554, 3.632336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.885323, 0.269967, 4.115643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.053635, 0.486488, 3.824455>,  <1.154621, 0.616401, 3.649743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.053635, 0.486488, 3.824455>,  <0.885323, 0.269967, 4.115643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.053635, 0.486488, 3.824455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796585, 0.604427, -0.011001,
		0.434048, 0.584517, 0.685523,
		0.420779, 0.541302, -0.727968,
		1.179868, 0.648879, 3.606065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.714233, 0.938470, 4.286997>,  <0.885323, 0.269967, 4.115643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.714233, 0.938470, 4.286997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.838329, 0.993340, 3.910713>,  <0.912787, 1.026261, 3.684943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.838329, 0.993340, 3.910713>,  <0.714233, 0.938470, 4.286997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.838329, 0.993340, 3.910713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780043, 0.602354, -0.169419,
		0.543400, 0.786354, 0.293876,
		0.310240, 0.137174, -0.940709,
		0.931401, 1.034492, 3.628500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.825300, 1.740330, 4.179896>,  <0.714233, 0.938470, 4.286997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.825300, 1.740330, 4.179896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755062, 1.550865, 3.834686>,  <0.712919, 1.437186, 3.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755062, 1.550865, 3.834686>,  <0.825300, 1.740330, 4.179896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.755062, 1.550865, 3.834686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614558, 0.737592, -0.279779,
		0.769081, 0.481251, -0.420609,
		-0.175594, -0.473661, -0.863024,
		0.702384, 1.408767, 3.575779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.945214, 2.232482, 3.612260>,  <0.825300, 1.740330, 4.179896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.945214, 2.232482, 3.612260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.705086, 1.952103, 3.458229>,  <0.561009, 1.783875, 3.365810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.705086, 1.952103, 3.458229>,  <0.945214, 2.232482, 3.612260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.705086, 1.952103, 3.458229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548346, 0.711249, -0.439820,
		0.582177, -0.052878, -0.811341,
		-0.600322, -0.700949, -0.385078,
		0.524989, 1.741818, 3.342706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.406740, 2.424885, 3.354635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546301, 2.203201, 3.052345>,  <-0.630037, 2.070191, 2.870972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546301, 2.203201, 3.052345>,  <-0.406740, 2.424885, 3.354635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.546301, 2.203201, 3.052345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761032, -0.638144, 0.116631,
		-0.546899, -0.534437, 0.644421,
		-0.348902, -0.554210, -0.755724,
		-0.650972, 2.036938, 2.825628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.347155, 1.758722, 3.658348>,  <-0.406740, 2.424885, 3.354635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.347155, 1.758722, 3.658348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.378849, 1.766914, 3.259689>,  <-0.397865, 1.771830, 3.020494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.378849, 1.766914, 3.259689>,  <-0.347155, 1.758722, 3.658348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.378849, 1.766914, 3.259689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693911, -0.716661, -0.069894,
		-0.715688, -0.697121, 0.042573,
		-0.079235, 0.020480, -0.996646,
		-0.402619, 1.773059, 2.960696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.537042, 1.134078, 3.451286>,  <-0.347155, 1.758722, 3.658348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.537042, 1.134078, 3.451286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.277988, 1.365707, 3.253197>,  <-0.122556, 1.504685, 3.134343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.277988, 1.365707, 3.253197>,  <-0.537042, 1.134078, 3.451286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.277988, 1.365707, 3.253197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707473, -0.698344, 0.108619,
		-0.282937, -0.420702, -0.861949,
		0.647633, 0.579073, -0.495223,
		-0.083698, 1.539429, 3.104630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.172489, 0.718393, 2.895597>,  <-0.537042, 1.134078, 3.451286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.172489, 0.718393, 2.895597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.058331, 1.030289, 2.992775>,  <0.196822, 1.217426, 3.051081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.058331, 1.030289, 2.992775>,  <-0.172489, 0.718393, 2.895597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.058331, 1.030289, 2.992775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777179, -0.615686, 0.130093,
		0.251016, 0.113741, -0.961277,
		0.577048, 0.779739, 0.242944,
		0.231445, 1.264211, 3.065658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.528848, 0.763740, 2.472143>,  <-0.172489, 0.718393, 2.895597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.528848, 0.763740, 2.472143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.582680, 0.970490, 2.810310>,  <0.614979, 1.094539, 3.013211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.582680, 0.970490, 2.810310>,  <0.528848, 0.763740, 2.472143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.582680, 0.970490, 2.810310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852226, -0.495674, 0.167383,
		0.505567, 0.697961, -0.507201,
		0.134580, 0.516873, 0.845417,
		0.623054, 1.125551, 3.063936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.086926, 1.139001, 2.365294>,  <0.528848, 0.763740, 2.472143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.086926, 1.139001, 2.365294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037331, 1.085770, 2.758621>,  <1.007573, 1.053831, 2.994618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037331, 1.085770, 2.758621>,  <1.086926, 1.139001, 2.365294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037331, 1.085770, 2.758621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859431, -0.509733, 0.039382,
		0.495990, 0.849978, 0.177573,
		-0.123989, -0.133079, 0.983319,
		1.000134, 1.045846, 3.053617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.703559, 1.379328, 2.670632>,  <1.086926, 1.139001, 2.365294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.703559, 1.379328, 2.670632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.539118, 1.142761, 2.948112>,  <1.440453, 1.000821, 3.114601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.539118, 1.142761, 2.948112>,  <1.703559, 1.379328, 2.670632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.539118, 1.142761, 2.948112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911589, -0.266276, 0.313213,
		-0.000523, 0.761134, 0.648595,
		-0.411102, -0.591416, 0.693702,
		1.415787, 0.965337, 3.156223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.082864, 1.519644, 3.209906>,  <1.703559, 1.379328, 2.670632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.082864, 1.519644, 3.209906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904253, 1.167252, 3.272499>,  <1.797087, 0.955816, 3.310055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904253, 1.167252, 3.272499>,  <2.082864, 1.519644, 3.209906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904253, 1.167252, 3.272499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862119, -0.376788, 0.338795,
		-0.239511, 0.286188, 0.927756,
		-0.446526, -0.880981, 0.156484,
		1.770295, 0.902957, 3.319444>
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
