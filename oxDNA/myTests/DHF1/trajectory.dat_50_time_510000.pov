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
	<2.036047, 0.232987, 1.009801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767397, 0.494797, 0.870937>,  <1.606207, 0.651882, 0.787619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767397, 0.494797, 0.870937>,  <2.036047, 0.232987, 1.009801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.767397, 0.494797, 0.870937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192571, -0.298247, -0.934861,
		-0.715428, -0.694728, 0.074267,
		-0.671624, 0.654524, -0.347159,
		1.565910, 0.691154, 0.766790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.851454, 0.953233, 1.153264>,  <2.036047, 0.232987, 1.009801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.851454, 0.953233, 1.153264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.651405, 0.988068, 1.497890>,  <1.531376, 1.008968, 1.704666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.651405, 0.988068, 1.497890>,  <1.851454, 0.953233, 1.153264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.651405, 0.988068, 1.497890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766957, 0.417404, -0.487393,
		-0.402065, -0.904539, -0.141962,
		-0.500121, 0.087085, 0.861566,
		1.501369, 1.014193, 1.756360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459661, 1.456514, 0.972548>,  <1.851454, 0.953233, 1.153264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459661, 1.456514, 0.972548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.686350, 1.711784, 1.180992>,  <2.822363, 1.864947, 1.306058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.686350, 1.711784, 1.180992>,  <2.459661, 1.456514, 0.972548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.686350, 1.711784, 1.180992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737224, 0.675182, -0.025107,
		-0.367866, -0.369946, 0.853121,
		0.566723, 0.638177, 0.521110,
		2.856367, 1.903237, 1.337325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130537, 1.658657, 1.641135>,  <2.459661, 1.456514, 0.972548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130537, 1.658657, 1.641135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.345930, 1.961456, 1.493088>,  <2.475166, 2.143136, 1.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.345930, 1.961456, 1.493088>,  <2.130537, 1.658657, 1.641135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.345930, 1.961456, 1.493088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800553, 0.596673, 0.055648,
		0.262965, 0.266334, 0.927316,
		0.538483, 0.756999, -0.370118,
		2.507475, 2.188556, 1.382052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.053645, 2.225831, 1.987278>,  <2.130537, 1.658657, 1.641135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.053645, 2.225831, 1.987278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130957, 2.302864, 1.602455>,  <2.177344, 2.349084, 1.371561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130957, 2.302864, 1.602455>,  <2.053645, 2.225831, 1.987278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.130957, 2.302864, 1.602455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685493, 0.728035, 0.008020,
		0.701956, 0.657934, 0.272729,
		0.193279, 0.192584, -0.962057,
		2.188940, 2.360639, 1.313838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.183428, 2.991288, 1.951394>,  <2.053645, 2.225831, 1.987278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.183428, 2.991288, 1.951394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028719, 2.852600, 1.609589>,  <1.935893, 2.769387, 1.404506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028719, 2.852600, 1.609589>,  <2.183428, 2.991288, 1.951394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028719, 2.852600, 1.609589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719998, 0.692522, 0.044897,
		0.576202, 0.632613, -0.517487,
		-0.386773, -0.346720, -0.854513,
		1.912687, 2.748584, 1.353235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.117421, 3.473413, 1.337370>,  <2.183428, 2.991288, 1.951394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.117421, 3.473413, 1.337370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825085, 3.200401, 1.339249>,  <1.649683, 3.036594, 1.340376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825085, 3.200401, 1.339249>,  <2.117421, 3.473413, 1.337370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825085, 3.200401, 1.339249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676465, 0.725229, 0.128212,
		-0.090915, 0.090525, -0.991736,
		-0.730842, -0.682531, 0.004698,
		1.605832, 2.995642, 1.340658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.667356, 3.649389, 0.870786>,  <2.117421, 3.473413, 1.337370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.667356, 3.649389, 0.870786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.502645, 3.440163, 1.169273>,  <1.403819, 3.314627, 1.348366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.502645, 3.440163, 1.169273>,  <1.667356, 3.649389, 0.870786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.502645, 3.440163, 1.169273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520045, 0.807314, 0.278920,
		-0.748327, -0.273214, -0.604451,
		-0.411777, -0.523066, 0.746219,
		1.379112, 3.283243, 1.393139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.335258, 2.378802, 5.757190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.320201, 2.766045, 5.658112>,  <4.311167, 2.998390, 5.598664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.320201, 2.766045, 5.658112>,  <4.335258, 2.378802, 5.757190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320201, 2.766045, 5.658112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942589, 0.116707, 0.312898,
		0.331826, -0.221698, -0.916920,
		-0.037642, 0.968106, -0.247697,
		4.308908, 3.056476, 5.583803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.781968, 2.520757, 5.250130>,  <4.335258, 2.378802, 5.757190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.781968, 2.520757, 5.250130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.743471, 2.873955, 5.433895>,  <4.720373, 3.085873, 5.544154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.743471, 2.873955, 5.433895>,  <4.781968, 2.520757, 5.250130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.743471, 2.873955, 5.433895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994158, 0.062623, 0.087906,
		0.048851, 0.465189, -0.883863,
		-0.096243, 0.882994, 0.459412,
		4.714598, 3.138853, 5.571719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.273970, 3.044153, 5.029992>,  <4.781968, 2.520757, 5.250130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.273970, 3.044153, 5.029992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.149148, 3.146988, 5.395840>,  <5.074255, 3.208689, 5.615348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.149148, 3.146988, 5.395840>,  <5.273970, 3.044153, 5.029992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.149148, 3.146988, 5.395840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925527, 0.299638, 0.231551,
		-0.214525, 0.918762, -0.331445,
		-0.312054, 0.257088, 0.914619,
		5.055532, 3.224114, 5.670226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341727, 3.773771, 5.094541>,  <5.273970, 3.044153, 5.029992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341727, 3.773771, 5.094541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.368465, 3.631538, 5.467442>,  <5.384508, 3.546199, 5.691182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.368465, 3.631538, 5.467442>,  <5.341727, 3.773771, 5.094541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.368465, 3.631538, 5.467442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876050, 0.468126, 0.115739,
		-0.477566, 0.808963, 0.342797,
		0.066844, -0.355580, 0.932252,
		5.388518, 3.524864, 5.747117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.293688, 4.442376, 4.602884>,  <5.341727, 3.773771, 5.094541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.293688, 4.442376, 4.602884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.927511, 4.339592, 4.478989>,  <4.707805, 4.277922, 4.404652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.927511, 4.339592, 4.478989>,  <5.293688, 4.442376, 4.602884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.927511, 4.339592, 4.478989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179168, 0.949369, -0.258064,
		0.360368, -0.180747, -0.915131,
		-0.915442, -0.256960, -0.309738,
		4.652879, 4.262504, 4.386067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.092952, 4.517889, 3.761331>,  <5.293688, 4.442376, 4.602884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.092952, 4.517889, 3.761331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799759, 4.568314, 4.028717>,  <4.623843, 4.598568, 4.189148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799759, 4.568314, 4.028717>,  <5.092952, 4.517889, 3.761331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799759, 4.568314, 4.028717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060563, 0.966684, -0.248707,
		-0.677546, -0.222782, -0.700928,
		-0.732983, 0.126060, 0.668465,
		4.579864, 4.606132, 4.229257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.357178, 4.689186, 3.390779>,  <5.092952, 4.517889, 3.761331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.357178, 4.689186, 3.390779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443580, 4.871696, 3.736069>,  <4.495421, 4.981203, 3.943242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443580, 4.871696, 3.736069>,  <4.357178, 4.689186, 3.390779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.443580, 4.871696, 3.736069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279475, 0.875997, -0.393094,
		-0.935540, -0.156339, 0.316738,
		0.216005, 0.456276, 0.863223,
		4.508381, 5.008579, 3.995036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832551, 4.524105, 2.816121>,  <4.357178, 4.689186, 3.390779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832551, 4.524105, 2.816121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.837850, 4.164589, 2.991394>,  <3.841029, 3.948880, 3.096558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.837850, 4.164589, 2.991394>,  <3.832551, 4.524105, 2.816121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.837850, 4.164589, 2.991394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894704, 0.206320, 0.396151,
		-0.446462, 0.386796, 0.806883,
		0.013247, -0.898789, 0.438182,
		3.841824, 3.894952, 3.122849>
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
