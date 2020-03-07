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
	<1.767292, 2.643763, 2.365127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137001, 2.715103, 2.500130>,  <2.358827, 2.757907, 2.581131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137001, 2.715103, 2.500130>,  <1.767292, 2.643763, 2.365127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.137001, 2.715103, 2.500130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073112, 0.785069, -0.615078,
		-0.374665, 0.593176, 0.712578,
		0.924273, 0.178351, 0.337506,
		2.414283, 2.768608, 2.601382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.868787, 3.314842, 2.289168>,  <1.767292, 2.643763, 2.365127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.868787, 3.314842, 2.289168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.243706, 3.181900, 2.331154>,  <2.468657, 3.102135, 2.356345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.243706, 3.181900, 2.331154>,  <1.868787, 3.314842, 2.289168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.243706, 3.181900, 2.331154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335707, 0.779931, -0.528212,
		0.093689, 0.530328, 0.842600,
		0.937296, -0.332354, 0.104964,
		2.524894, 3.082194, 2.362643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.369583, 3.857165, 2.517143>,  <1.868787, 3.314842, 2.289168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.369583, 3.857165, 2.517143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.608200, 3.586288, 2.344841>,  <2.751370, 3.423762, 2.241460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.608200, 3.586288, 2.344841>,  <2.369583, 3.857165, 2.517143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.608200, 3.586288, 2.344841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405998, 0.717596, -0.565881,
		0.692318, 0.162687, 0.703014,
		0.596542, -0.677192, -0.430754,
		2.787163, 3.383131, 2.215615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.087697, 4.004818, 2.710307>,  <2.369583, 3.857165, 2.517143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.087697, 4.004818, 2.710307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023605, 3.826538, 2.358017>,  <2.985150, 3.719570, 2.146643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023605, 3.826538, 2.358017>,  <3.087697, 4.004818, 2.710307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.023605, 3.826538, 2.358017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426710, 0.773298, -0.468965,
		0.890081, -0.450956, 0.066280,
		-0.160229, -0.445700, -0.880726,
		2.975537, 3.692828, 2.093799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.726771, 3.829676, 2.340532>,  <3.087697, 4.004818, 2.710307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.726771, 3.829676, 2.340532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.422554, 3.940781, 2.105782>,  <3.240024, 4.007443, 1.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.422554, 3.940781, 2.105782>,  <3.726771, 3.829676, 2.340532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.422554, 3.940781, 2.105782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537898, 0.775777, -0.329902,
		0.363652, -0.566584, -0.739419,
		-0.760542, 0.277762, -0.586877,
		3.194391, 4.024109, 1.929718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.931466, 3.779914, 1.634617>,  <3.726771, 3.829676, 2.340532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.931466, 3.779914, 1.634617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.653358, 4.058563, 1.705406>,  <3.486494, 4.225753, 1.747880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.653358, 4.058563, 1.705406>,  <3.931466, 3.779914, 1.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.653358, 4.058563, 1.705406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652249, 0.714953, -0.251819,
		-0.301949, -0.059651, -0.951456,
		-0.695268, 0.696623, 0.176972,
		3.444778, 4.267550, 1.758498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.004204, 4.233376, 1.119403>,  <3.931466, 3.779914, 1.634617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.004204, 4.233376, 1.119403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776138, 4.456512, 1.360641>,  <3.639299, 4.590394, 1.505385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776138, 4.456512, 1.360641>,  <4.004204, 4.233376, 1.119403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.776138, 4.456512, 1.360641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605725, 0.781387, -0.150103,
		-0.554986, 0.279727, -0.783418,
		-0.570165, 0.557841, 0.603097,
		3.605089, 4.623865, 1.541571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891990, 4.825286, 0.741056>,  <4.004204, 4.233376, 1.119403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891990, 4.825286, 0.741056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863014, 4.912262, 1.130409>,  <3.845629, 4.964447, 1.364021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863014, 4.912262, 1.130409>,  <3.891990, 4.825286, 0.741056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.863014, 4.912262, 1.130409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677263, 0.727161, -0.112036,
		-0.732166, 0.651120, -0.199938,
		-0.072439, 0.217440, 0.973382,
		3.841283, 4.977494, 1.422424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.785115, 0.885692, 2.900596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.568172, 0.653488, 2.657661>,  <5.438007, 0.514166, 2.511901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.568172, 0.653488, 2.657661>,  <5.785115, 0.885692, 2.900596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.568172, 0.653488, 2.657661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206395, -0.792800, 0.573471,
		-0.814402, 0.185675, 0.549795,
		-0.542357, -0.580510, -0.607336,
		5.405465, 0.479335, 2.475461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336475, 0.591406, 3.298576>,  <5.785115, 0.885692, 2.900596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336475, 0.591406, 3.298576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.411964, 0.356674, 2.983612>,  <5.457258, 0.215835, 2.794634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.411964, 0.356674, 2.983612>,  <5.336475, 0.591406, 3.298576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.411964, 0.356674, 2.983612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091826, -0.787761, 0.609099,
		-0.977728, -0.187255, -0.094781,
		0.188722, -0.586830, -0.787410,
		5.468581, 0.180625, 2.747389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.844473, -0.049995, 3.125607>,  <5.336475, 0.591406, 3.298576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.844473, -0.049995, 3.125607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235336, -0.110291, 3.065689>,  <5.469854, -0.146468, 3.029739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235336, -0.110291, 3.065689>,  <4.844473, -0.049995, 3.125607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235336, -0.110291, 3.065689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039500, -0.563763, 0.824992,
		-0.208806, -0.812065, -0.544932,
		0.977159, -0.150738, -0.149794,
		5.528484, -0.155512, 3.020751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.278358, 0.185155, 2.603953>,  <4.844473, -0.049995, 3.125607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.278358, 0.185155, 2.603953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.158623, 0.313843, 2.244644>,  <4.086782, 0.391055, 2.029059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.158623, 0.313843, 2.244644>,  <4.278358, 0.185155, 2.603953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.158623, 0.313843, 2.244644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750928, -0.660240, 0.013771,
		-0.588645, 0.678661, 0.439223,
		-0.299338, 0.321719, -0.898273,
		4.068821, 0.410358, 1.975162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.576138, 0.410600, 2.625787>,  <4.278358, 0.185155, 2.603953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.576138, 0.410600, 2.625787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.657394, 0.296158, 2.251221>,  <3.706148, 0.227492, 2.026481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.657394, 0.296158, 2.251221>,  <3.576138, 0.410600, 2.625787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.657394, 0.296158, 2.251221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751449, -0.658683, 0.038233,
		-0.627740, 0.695903, -0.348800,
		0.203142, -0.286106, -0.936417,
		3.718337, 0.210326, 1.970296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.881935, 0.336480, 2.283488>,  <3.576138, 0.410600, 2.625787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.881935, 0.336480, 2.283488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114529, 0.117142, 2.043091>,  <3.254085, -0.014461, 1.898852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114529, 0.117142, 2.043091>,  <2.881935, 0.336480, 2.283488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.114529, 0.117142, 2.043091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627337, -0.772568, 0.097919,
		-0.518001, 0.320087, -0.793233,
		0.581484, -0.548347, -0.600993,
		3.288974, -0.047362, 1.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.466923, 0.182843, 1.732766>,  <2.881935, 0.336480, 2.283488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.466923, 0.182843, 1.732766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755642, -0.092819, 1.758293>,  <2.928874, -0.258216, 1.773610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755642, -0.092819, 1.758293>,  <2.466923, 0.182843, 1.732766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.755642, -0.092819, 1.758293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659281, -0.656580, 0.366404,
		-0.210607, -0.306544, -0.928265,
		0.721799, -0.689154, 0.063819,
		2.972182, -0.299566, 1.777439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.231345, -0.411324, 1.461499>,  <2.466923, 0.182843, 1.732766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.231345, -0.411324, 1.461499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.528751, -0.552277, 1.688835>,  <2.707195, -0.636848, 1.825237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.528751, -0.552277, 1.688835>,  <2.231345, -0.411324, 1.461499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.528751, -0.552277, 1.688835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579254, -0.764048, 0.284069,
		0.334138, -0.540423, -0.772201,
		0.743516, -0.352382, 0.568340,
		2.751806, -0.657991, 1.859337>
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
