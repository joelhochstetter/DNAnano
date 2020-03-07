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
	<5.966956, 2.323391, 2.873883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672508, 2.134239, 3.067589>,  <5.495840, 2.020748, 3.183813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672508, 2.134239, 3.067589>,  <5.966956, 2.323391, 2.873883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.672508, 2.134239, 3.067589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579748, 0.071261, -0.811674,
		0.349317, -0.878239, -0.326609,
		-0.736118, -0.472883, 0.484265,
		5.451673, 1.992375, 3.212868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.674676, 1.646517, 2.634230>,  <5.966956, 2.323391, 2.873883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.674676, 1.646517, 2.634230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.379261, 1.851234, 2.809788>,  <5.202012, 1.974065, 2.915123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.379261, 1.851234, 2.809788>,  <5.674676, 1.646517, 2.634230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.379261, 1.851234, 2.809788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573554, -0.134741, -0.808011,
		-0.354399, -0.848476, 0.393053,
		-0.738538, 0.511795, 0.438895,
		5.157700, 2.004773, 2.941456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.075043, 1.244031, 2.593987>,  <5.674676, 1.646517, 2.634230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.075043, 1.244031, 2.593987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964340, 1.627960, 2.612514>,  <4.897919, 1.858318, 2.623631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964340, 1.627960, 2.612514>,  <5.075043, 1.244031, 2.593987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.964340, 1.627960, 2.612514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519305, -0.108832, -0.847631,
		-0.808535, -0.258640, 0.528561,
		-0.276756, 0.959824, 0.046318,
		4.881313, 1.915907, 2.626410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.326242, 1.319032, 2.519253>,  <5.075043, 1.244031, 2.593987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.326242, 1.319032, 2.519253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539574, 1.614815, 2.354931>,  <4.667573, 1.792285, 2.256337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539574, 1.614815, 2.354931>,  <4.326242, 1.319032, 2.519253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.539574, 1.614815, 2.354931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391681, -0.214572, -0.894732,
		-0.749764, 0.638092, 0.175194,
		0.533329, 0.739458, -0.410807,
		4.699573, 1.836652, 2.231689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.840180, 1.675717, 1.997753>,  <4.326242, 1.319032, 2.519253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.840180, 1.675717, 1.997753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.221630, 1.751694, 1.904354>,  <4.450500, 1.797280, 1.848315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.221630, 1.751694, 1.904354>,  <3.840180, 1.675717, 1.997753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.221630, 1.751694, 1.904354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210416, -0.134018, -0.968382,
		-0.215229, 0.972605, -0.087836,
		0.953626, 0.189942, -0.233496,
		4.507718, 1.808676, 1.834305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.770902, 2.006907, 1.397438>,  <3.840180, 1.675717, 1.997753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.770902, 2.006907, 1.397438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158493, 1.908325, 1.404831>,  <4.391048, 1.849176, 1.409266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158493, 1.908325, 1.404831>,  <3.770902, 2.006907, 1.397438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.158493, 1.908325, 1.404831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049085, -0.265198, -0.962944,
		0.242223, 0.932164, -0.269068,
		0.968978, -0.246455, 0.018482,
		4.449186, 1.834389, 1.410375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.060004, 2.295295, 0.749141>,  <3.770902, 2.006907, 1.397438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.060004, 2.295295, 0.749141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269852, 1.982483, 0.883724>,  <4.395760, 1.794796, 0.964474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269852, 1.982483, 0.883724>,  <4.060004, 2.295295, 0.749141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.269852, 1.982483, 0.883724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016810, -0.404651, -0.914317,
		0.851172, 0.474012, -0.225433,
		0.524619, -0.782030, 0.336459,
		4.427237, 1.747874, 0.984662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.688672, 2.248399, 0.381959>,  <4.060004, 2.295295, 0.749141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.688672, 2.248399, 0.381959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594585, 1.883835, 0.517017>,  <4.538134, 1.665096, 0.598052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594585, 1.883835, 0.517017>,  <4.688672, 2.248399, 0.381959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594585, 1.883835, 0.517017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063283, -0.332295, -0.941050,
		0.969881, -0.242716, 0.020484,
		-0.235215, -0.911411, 0.337646,
		4.524021, 1.610412, 0.618311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.537178, 0.756752, -0.353584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.849272, 0.608093, -0.554825>,  <4.036529, 0.518898, -0.675569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.849272, 0.608093, -0.554825>,  <3.537178, 0.756752, -0.353584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.849272, 0.608093, -0.554825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584374, -0.719919, -0.374464,
		-0.223024, 0.586170, -0.778887,
		0.780235, -0.371647, -0.503102,
		4.083343, 0.496599, -0.705755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.648880, 0.921697, 0.418778>,  <3.537178, 0.756752, -0.353584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.648880, 0.921697, 0.418778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.010864, 0.854782, 0.262287>,  <4.228055, 0.814633, 0.168392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.010864, 0.854782, 0.262287>,  <3.648880, 0.921697, 0.418778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.010864, 0.854782, 0.262287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422141, 0.237797, 0.874786,
		-0.053308, -0.956801, 0.285816,
		0.904962, -0.167288, -0.391228,
		4.282353, 0.804596, 0.144919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.915594, 0.456146, 0.728869>,  <3.648880, 0.921697, 0.418778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.915594, 0.456146, 0.728869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.176922, 0.719681, 0.579681>,  <4.333719, 0.877802, 0.490169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.176922, 0.719681, 0.579681>,  <3.915594, 0.456146, 0.728869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176922, 0.719681, 0.579681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321020, 0.205086, 0.924601,
		0.685653, -0.723790, -0.077514,
		0.653320, 0.658839, -0.372968,
		4.372918, 0.917332, 0.467791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.570487, 0.379446, 1.127226>,  <3.915594, 0.456146, 0.728869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.570487, 0.379446, 1.127226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582377, 0.742027, 0.958721>,  <4.589512, 0.959576, 0.857619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582377, 0.742027, 0.958721>,  <4.570487, 0.379446, 1.127226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582377, 0.742027, 0.958721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375705, 0.380410, 0.845064,
		0.926262, -0.183391, -0.329250,
		0.029727, 0.906452, -0.421261,
		4.591296, 1.013963, 0.832343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.173736, 0.685492, 1.291945>,  <4.570487, 0.379446, 1.127226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.173736, 0.685492, 1.291945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.939095, 0.998672, 1.209110>,  <4.798311, 1.186581, 1.159409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.939095, 0.998672, 1.209110>,  <5.173736, 0.685492, 1.291945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.939095, 0.998672, 1.209110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333495, 0.466540, 0.819220,
		0.738025, 0.411493, -0.534783,
		-0.586601, 0.782952, -0.207088,
		4.763115, 1.233558, 1.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.660374, 1.300397, 1.374370>,  <5.173736, 0.685492, 1.291945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.660374, 1.300397, 1.374370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.279489, 1.420059, 1.399017>,  <5.050958, 1.491856, 1.413806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.279489, 1.420059, 1.399017>,  <5.660374, 1.300397, 1.374370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.279489, 1.420059, 1.399017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233944, 0.584634, 0.776836,
		0.196369, 0.754129, -0.626681,
		-0.952213, 0.299155, 0.061619,
		4.993824, 1.509806, 1.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.752131, 1.940002, 1.436234>,  <5.660374, 1.300397, 1.374370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.752131, 1.940002, 1.436234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.378489, 1.902794, 1.574100>,  <5.154304, 1.880469, 1.656820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.378489, 1.902794, 1.574100>,  <5.752131, 1.940002, 1.436234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.378489, 1.902794, 1.574100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218495, 0.614549, 0.758017,
		-0.282325, 0.783376, -0.553729,
		-0.934105, -0.093020, 0.344666,
		5.098258, 1.874888, 1.677500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.483023, 2.657896, 1.563686>,  <5.752131, 1.940002, 1.436234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.483023, 2.657896, 1.563686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.242727, 2.418167, 1.775318>,  <5.098550, 2.274330, 1.902297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.242727, 2.418167, 1.775318>,  <5.483023, 2.657896, 1.563686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.242727, 2.418167, 1.775318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110266, 0.593367, 0.797344,
		-0.791804, 0.537336, -0.290374,
		-0.600740, -0.599322, 0.529080,
		5.062505, 2.238371, 1.934042>
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
