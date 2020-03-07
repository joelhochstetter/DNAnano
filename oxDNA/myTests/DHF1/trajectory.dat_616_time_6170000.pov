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
	<1.380090, 2.315734, 4.813543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500618, 2.312969, 4.432144>,  <1.572935, 2.311311, 4.203305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500618, 2.312969, 4.432144>,  <1.380090, 2.315734, 4.813543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.500618, 2.312969, 4.432144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571884, -0.801469, -0.174915,
		-0.762991, 0.597996, -0.245450,
		0.301319, -0.006911, -0.953498,
		1.591014, 2.310896, 4.146095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759070, 2.446452, 4.372178>,  <1.380090, 2.315734, 4.813543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759070, 2.446452, 4.372178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030518, 2.225527, 4.178508>,  <1.193386, 2.092972, 4.062305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030518, 2.225527, 4.178508>,  <0.759070, 2.446452, 4.372178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030518, 2.225527, 4.178508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708257, -0.666675, -0.232198,
		-0.194542, 0.500495, -0.843598,
		0.678620, -0.552313, -0.484176,
		1.234103, 2.059833, 4.033255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.577573, 2.277979, 3.634493>,  <0.759070, 2.446452, 4.372178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.577573, 2.277979, 3.634493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.815737, 1.984962, 3.766475>,  <0.958635, 1.809152, 3.845664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.815737, 1.984962, 3.766475>,  <0.577573, 2.277979, 3.634493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.815737, 1.984962, 3.766475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606114, -0.679131, -0.414013,
		0.527364, 0.046518, -0.848365,
		0.595410, -0.732542, 0.329954,
		0.994360, 1.765200, 3.865461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.748539, 1.925760, 3.111807>,  <0.577573, 2.277979, 3.634493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.748539, 1.925760, 3.111807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737587, 1.696751, 3.439579>,  <0.731016, 1.559345, 3.636242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737587, 1.696751, 3.439579>,  <0.748539, 1.925760, 3.111807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737587, 1.696751, 3.439579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603645, -0.643929, -0.470072,
		0.796783, -0.507516, -0.327971,
		-0.027379, -0.572523, 0.819431,
		0.729373, 1.524994, 3.685408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.765301, 1.231399, 2.895403>,  <0.748539, 1.925760, 3.111807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.765301, 1.231399, 2.895403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.609167, 1.235807, 3.263646>,  <0.515487, 1.238452, 3.484592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.609167, 1.235807, 3.263646>,  <0.765301, 1.231399, 2.895403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.609167, 1.235807, 3.263646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706170, -0.645167, -0.291691,
		0.590730, -0.763962, 0.259614,
		-0.390336, 0.011021, 0.920607,
		0.492066, 1.239114, 3.539828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.681372, 0.524174, 3.049530>,  <0.765301, 1.231399, 2.895403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.681372, 0.524174, 3.049530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.422859, 0.734768, 3.270485>,  <0.267751, 0.861124, 3.403058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.422859, 0.734768, 3.270485>,  <0.681372, 0.524174, 3.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.422859, 0.734768, 3.270485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712070, -0.676334, -0.188489,
		0.274362, -0.515156, 0.811997,
		-0.646283, 0.526485, 0.552388,
		0.228974, 0.892713, 3.436201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.494697, 0.114727, 3.552958>,  <0.681372, 0.524174, 3.049530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.494697, 0.114727, 3.552958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.215269, 0.387211, 3.465364>,  <0.047612, 0.550701, 3.412809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.215269, 0.387211, 3.465364>,  <0.494697, 0.114727, 3.552958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.215269, 0.387211, 3.465364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645606, -0.732011, -0.217608,
		-0.308535, -0.010638, 0.951154,
		-0.698569, 0.681210, -0.218983,
		0.005698, 0.591574, 3.399670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.138214, -0.071665, 3.879526>,  <0.494697, 0.114727, 3.552958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.138214, -0.071665, 3.879526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.273064, 0.163015, 3.585009>,  <-0.353974, 0.303824, 3.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.273064, 0.163015, 3.585009>,  <-0.138214, -0.071665, 3.879526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.273064, 0.163015, 3.585009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770925, -0.620940, -0.141802,
		-0.540389, 0.519823, 0.661637,
		-0.337125, 0.586701, -0.736294,
		-0.374201, 0.339026, 3.364120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.532845, -0.685112, 3.353762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151146, -0.566265, 3.340286>,  <3.922127, -0.494957, 3.332201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151146, -0.566265, 3.340286>,  <4.532845, -0.685112, 3.353762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151146, -0.566265, 3.340286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296242, 0.954683, 0.028654,
		0.040676, 0.017363, -0.999022,
		-0.954246, 0.297118, -0.033689,
		3.864872, -0.477130, 3.330179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427955, -0.217304, 2.818275>,  <4.532845, -0.685112, 3.353762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427955, -0.217304, 2.818275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.192848, -0.143938, 3.133461>,  <4.051784, -0.099918, 3.322572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.192848, -0.143938, 3.133461>,  <4.427955, -0.217304, 2.818275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192848, -0.143938, 3.133461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367180, 0.928353, 0.057798,
		-0.720908, 0.323296, -0.613002,
		-0.587768, 0.183415, 0.787964,
		4.016518, -0.088913, 3.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.964327, 0.468155, 2.713098>,  <4.427955, -0.217304, 2.818275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.964327, 0.468155, 2.713098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.060951, 0.372966, 3.089399>,  <4.118926, 0.315852, 3.315180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.060951, 0.372966, 3.089399>,  <3.964327, 0.468155, 2.713098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.060951, 0.372966, 3.089399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441921, 0.890075, 0.111679,
		-0.863918, 0.388761, 0.320172,
		0.241561, -0.237972, 0.940754,
		4.133420, 0.301574, 3.371625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959951, 1.074037, 3.051612>,  <3.964327, 0.468155, 2.713098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959951, 1.074037, 3.051612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.153297, 0.844944, 3.316439>,  <4.269305, 0.707487, 3.475335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.153297, 0.844944, 3.316439>,  <3.959951, 1.074037, 3.051612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.153297, 0.844944, 3.316439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591616, 0.771157, 0.235174,
		-0.645250, 0.278014, 0.711590,
		0.483366, -0.572734, 0.662067,
		4.298307, 0.673123, 3.515059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015795, 1.505252, 3.568908>,  <3.959951, 1.074037, 3.051612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015795, 1.505252, 3.568908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290237, 1.216458, 3.604673>,  <4.454903, 1.043181, 3.626132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290237, 1.216458, 3.604673>,  <4.015795, 1.505252, 3.568908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.290237, 1.216458, 3.604673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670572, 0.675283, 0.307125,
		-0.282118, -0.150763, 0.947460,
		0.686107, -0.721985, 0.089412,
		4.496069, 0.999862, 3.631497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.388205, 1.551090, 4.194307>,  <4.015795, 1.505252, 3.568908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.388205, 1.551090, 4.194307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.631531, 1.341335, 3.955990>,  <4.777526, 1.215482, 3.812999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.631531, 1.341335, 3.955990>,  <4.388205, 1.551090, 4.194307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.631531, 1.341335, 3.955990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792836, 0.436414, 0.425387,
		0.036945, -0.731136, 0.681231,
		0.608315, -0.524388, -0.595794,
		4.814025, 1.184018, 3.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.887383, 1.259150, 4.712257>,  <4.388205, 1.551090, 4.194307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.887383, 1.259150, 4.712257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.037514, 1.289711, 4.342762>,  <5.127593, 1.308047, 4.121065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.037514, 1.289711, 4.342762>,  <4.887383, 1.259150, 4.712257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.037514, 1.289711, 4.342762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806777, 0.463723, 0.366159,
		0.456334, -0.882680, 0.112409,
		0.375328, 0.076402, -0.923738,
		5.150112, 1.312631, 4.065640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.651993, 0.897307, 4.629445>,  <4.887383, 1.259150, 4.712257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.651993, 0.897307, 4.629445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.612946, 1.214580, 4.389000>,  <5.589517, 1.404943, 4.244733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.612946, 1.214580, 4.389000>,  <5.651993, 0.897307, 4.629445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612946, 1.214580, 4.389000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895279, 0.333792, 0.295057,
		0.434679, -0.509359, -0.742703,
		-0.097618, 0.793181, -0.601111,
		5.583660, 1.452534, 4.208667>
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
