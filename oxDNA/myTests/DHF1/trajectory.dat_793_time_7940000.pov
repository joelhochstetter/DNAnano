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
	<2.799839, -0.971320, 4.345039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193258, -0.924690, 4.289839>,  <3.429310, -0.896712, 4.256719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193258, -0.924690, 4.289839>,  <2.799839, -0.971320, 4.345039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193258, -0.924690, 4.289839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017552, 0.821973, 0.569257,
		0.179793, -0.557469, 0.810495,
		0.983548, 0.116574, -0.138000,
		3.488323, -0.889718, 4.248439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.152734, -0.843605, 4.970860>,  <2.799839, -0.971320, 4.345039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.152734, -0.843605, 4.970860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.392820, -0.696770, 4.686610>,  <3.536872, -0.608669, 4.516060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.392820, -0.696770, 4.686610>,  <3.152734, -0.843605, 4.970860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.392820, -0.696770, 4.686610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059927, 0.865324, 0.497618,
		0.797589, -0.341264, 0.497383,
		0.600217, 0.367088, -0.710624,
		3.572885, -0.586643, 4.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763050, -0.509074, 5.290571>,  <3.152734, -0.843605, 4.970860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763050, -0.509074, 5.290571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.706837, -0.367188, 4.920830>,  <3.673109, -0.282055, 4.698985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.706837, -0.367188, 4.920830>,  <3.763050, -0.509074, 5.290571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.706837, -0.367188, 4.920830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130396, 0.932116, 0.337872,
		0.981452, -0.073050, -0.177246,
		-0.140533, 0.354717, -0.924352,
		3.664677, -0.260772, 4.643524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.276067, -0.016102, 5.166364>,  <3.763050, -0.509074, 5.290571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.276067, -0.016102, 5.166364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968819, 0.079426, 4.928723>,  <3.784470, 0.136743, 4.786139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968819, 0.079426, 4.928723>,  <4.276067, -0.016102, 5.166364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968819, 0.079426, 4.928723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116356, 0.964453, 0.237258,
		0.629645, 0.113115, -0.768604,
		-0.768120, 0.238820, -0.594102,
		3.738383, 0.151072, 4.750493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.486956, 0.414463, 4.682840>,  <4.276067, -0.016102, 5.166364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.486956, 0.414463, 4.682840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107601, 0.503571, 4.773117>,  <3.879988, 0.557035, 4.827283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107601, 0.503571, 4.773117>,  <4.486956, 0.414463, 4.682840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107601, 0.503571, 4.773117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288699, 0.900995, 0.323823,
		-0.131211, 0.372267, -0.918804,
		-0.948386, 0.222768, 0.225693,
		3.823085, 0.570401, 4.840825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.200345, 1.006281, 4.264341>,  <4.486956, 0.414463, 4.682840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.200345, 1.006281, 4.264341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998880, 1.001060, 4.609862>,  <3.878002, 0.997928, 4.817175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998880, 1.001060, 4.609862>,  <4.200345, 1.006281, 4.264341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.998880, 1.001060, 4.609862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220015, 0.964978, 0.142864,
		-0.835416, 0.262004, -0.483150,
		-0.503661, -0.013050, 0.863803,
		3.847782, 0.997145, 4.869003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832064, 1.656830, 4.338855>,  <4.200345, 1.006281, 4.264341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832064, 1.656830, 4.338855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816986, 1.537479, 4.720336>,  <3.807939, 1.465869, 4.949225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816986, 1.537479, 4.720336>,  <3.832064, 1.656830, 4.338855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816986, 1.537479, 4.720336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127460, 0.945151, 0.300740,
		-0.991127, 0.132895, 0.002403,
		-0.037696, -0.298378, 0.953703,
		3.805677, 1.447966, 5.006447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340652, 2.115276, 4.582135>,  <3.832064, 1.656830, 4.338855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340652, 2.115276, 4.582135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.536543, 1.969280, 4.898856>,  <3.654077, 1.881683, 5.088889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.536543, 1.969280, 4.898856>,  <3.340652, 2.115276, 4.582135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.536543, 1.969280, 4.898856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044968, 0.917524, 0.395129,
		-0.870715, -0.157900, 0.465749,
		0.489727, -0.364989, 0.791802,
		3.683461, 1.859784, 5.136397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.720044, 3.137527, 0.143701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.434025, 3.012596, 0.393872>,  <4.262414, 2.937638, 0.543975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.434025, 3.012596, 0.393872>,  <4.720044, 3.137527, 0.143701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434025, 3.012596, 0.393872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262215, -0.949156, -0.174202,
		0.648036, 0.039434, 0.760588,
		-0.715047, -0.312326, 0.625428,
		4.219511, 2.918898, 0.581501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941960, 2.598188, 0.402104>,  <4.720044, 3.137527, 0.143701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941960, 2.598188, 0.402104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.544525, 2.569977, 0.437458>,  <4.306065, 2.553050, 0.458670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.544525, 2.569977, 0.437458>,  <4.941960, 2.598188, 0.402104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.544525, 2.569977, 0.437458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050761, -0.976661, -0.208703,
		0.101041, -0.202878, 0.973977,
		-0.993587, -0.070527, 0.088384,
		4.246449, 2.548819, 0.463973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862725, 1.874114, 0.672989>,  <4.941960, 2.598188, 0.402104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862725, 1.874114, 0.672989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.509441, 2.020432, 0.555592>,  <4.297472, 2.108222, 0.485154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.509441, 2.020432, 0.555592>,  <4.862725, 1.874114, 0.672989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.509441, 2.020432, 0.555592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287597, -0.916775, -0.277150,
		-0.370446, -0.160373, 0.914904,
		-0.883209, 0.365793, -0.293493,
		4.244479, 2.130169, 0.467544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.413098, 1.458755, 1.137563>,  <4.862725, 1.874114, 0.672989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.413098, 1.458755, 1.137563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.177895, 1.576927, 0.836374>,  <4.036772, 1.647830, 0.655661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.177895, 1.576927, 0.836374>,  <4.413098, 1.458755, 1.137563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.177895, 1.576927, 0.836374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414782, -0.909327, -0.032864,
		-0.694406, 0.292995, 0.657232,
		-0.588010, 0.295429, -0.752971,
		4.001492, 1.665556, 0.610482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.712850, 1.207136, 1.287705>,  <4.413098, 1.458755, 1.137563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.712850, 1.207136, 1.287705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757854, 1.257713, 0.893476>,  <3.784857, 1.288060, 0.656939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757854, 1.257713, 0.893476>,  <3.712850, 1.207136, 1.287705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.757854, 1.257713, 0.893476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488717, -0.856566, -0.165684,
		-0.865157, 0.500307, -0.034579,
		0.112512, 0.126444, -0.985572,
		3.791608, 1.295647, 0.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.171330, 0.997408, 0.945907>,  <3.712850, 1.207136, 1.287705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.171330, 0.997408, 0.945907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.385139, 0.984802, 0.608081>,  <3.513425, 0.977239, 0.405386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.385139, 0.984802, 0.608081>,  <3.171330, 0.997408, 0.945907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.385139, 0.984802, 0.608081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412835, -0.881708, -0.228381,
		-0.737462, 0.470742, -0.484305,
		0.534524, -0.031515, -0.844565,
		3.545497, 0.975348, 0.354712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.721327, 0.800661, 0.408632>,  <3.171330, 0.997408, 0.945907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.721327, 0.800661, 0.408632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.074722, 0.713036, 0.243001>,  <3.286759, 0.660460, 0.143622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.074722, 0.713036, 0.243001>,  <2.721327, 0.800661, 0.408632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.074722, 0.713036, 0.243001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362017, -0.880268, -0.306713,
		-0.297309, 0.420880, -0.857011,
		0.883488, -0.219063, -0.414077,
		3.339769, 0.647317, 0.118777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.621472, 0.536040, -0.364354>,  <2.721327, 0.800661, 0.408632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.621472, 0.536040, -0.364354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.957077, 0.388535, -0.204319>,  <3.158440, 0.300031, -0.108297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.957077, 0.388535, -0.204319>,  <2.621472, 0.536040, -0.364354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.957077, 0.388535, -0.204319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272349, -0.921186, -0.277926,
		0.471045, 0.124220, -0.873319,
		0.839013, -0.368763, 0.400089,
		3.208781, 0.277906, -0.084292>
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
