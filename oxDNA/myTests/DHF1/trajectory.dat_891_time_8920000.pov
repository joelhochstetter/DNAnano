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
	<5.827990, 3.294811, 4.297876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.469986, 3.224236, 4.134009>,  <5.255184, 3.181890, 4.035689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.469986, 3.224236, 4.134009>,  <5.827990, 3.294811, 4.297876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.469986, 3.224236, 4.134009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016383, -0.904817, 0.425485,
		-0.445746, 0.387524, 0.806929,
		-0.895009, -0.176439, -0.409668,
		5.201483, 3.171304, 4.011109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.206266, 3.137365, 4.749331>,  <5.827990, 3.294811, 4.297876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.206266, 3.137365, 4.749331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165947, 2.934128, 4.407178>,  <5.141756, 2.812186, 4.201886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165947, 2.934128, 4.407178>,  <5.206266, 3.137365, 4.749331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.165947, 2.934128, 4.407178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169380, -0.838448, 0.517992,
		-0.980383, 0.197097, -0.001547,
		-0.100797, -0.508092, -0.855384,
		5.135708, 2.781700, 4.150563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.592787, 2.792997, 4.803672>,  <5.206266, 3.137365, 4.749331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.592787, 2.792997, 4.803672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.840118, 2.601196, 4.554595>,  <4.988517, 2.486115, 4.405149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.840118, 2.601196, 4.554595>,  <4.592787, 2.792997, 4.803672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.840118, 2.601196, 4.554595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316274, -0.877140, 0.361382,
		-0.719472, -0.026512, -0.694015,
		0.618329, -0.479503, -0.622692,
		5.025617, 2.457345, 4.367787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.153692, 2.385249, 4.460645>,  <4.592787, 2.792997, 4.803672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.153692, 2.385249, 4.460645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530899, 2.252846, 4.447062>,  <4.757223, 2.173404, 4.438912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530899, 2.252846, 4.447062>,  <4.153692, 2.385249, 4.460645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530899, 2.252846, 4.447062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319313, -0.928928, 0.187435,
		-0.093587, -0.165911, -0.981690,
		0.943017, -0.331008, -0.033958,
		4.813804, 2.153543, 4.436874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202474, 1.861807, 3.916806>,  <4.153692, 2.385249, 4.460645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202474, 1.861807, 3.916806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501549, 1.789131, 4.172291>,  <4.680994, 1.745525, 4.325582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501549, 1.789131, 4.172291>,  <4.202474, 1.861807, 3.916806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501549, 1.789131, 4.172291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339618, -0.931158, 0.132681,
		0.570634, -0.316122, -0.757921,
		0.747687, -0.181691, 0.638711,
		4.725855, 1.734624, 4.363904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.388490, 1.151964, 3.815369>,  <4.202474, 1.861807, 3.916806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.388490, 1.151964, 3.815369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.534332, 1.245762, 4.175830>,  <4.621838, 1.302041, 4.392107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.534332, 1.245762, 4.175830>,  <4.388490, 1.151964, 3.815369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.534332, 1.245762, 4.175830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316221, -0.879076, 0.356694,
		0.875824, -0.415015, -0.246364,
		0.364606, 0.234495, 0.901152,
		4.643714, 1.316110, 4.446176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.547424, 0.479132, 4.065189>,  <4.388490, 1.151964, 3.815369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.547424, 0.479132, 4.065189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609962, 0.670937, 4.410587>,  <4.647485, 0.786019, 4.617826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609962, 0.670937, 4.410587>,  <4.547424, 0.479132, 4.065189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609962, 0.670937, 4.410587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415740, -0.761081, 0.497913,
		0.895945, -0.436836, 0.080361,
		0.156345, 0.479511, 0.863496,
		4.656866, 0.814790, 4.669636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.704119, -0.041081, 4.543994>,  <4.547424, 0.479132, 4.065189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.704119, -0.041081, 4.543994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600990, 0.261936, 4.783880>,  <4.539113, 0.443746, 4.927812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600990, 0.261936, 4.783880>,  <4.704119, -0.041081, 4.543994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.600990, 0.261936, 4.783880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540303, -0.627617, 0.560508,
		0.801000, -0.179517, 0.571116,
		-0.257822, 0.757542, 0.599715,
		4.523644, 0.489199, 4.963795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.286942, -0.068468, -0.051679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.307549, 0.167412, 0.270712>,  <3.319913, 0.308940, 0.464147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.307549, 0.167412, 0.270712>,  <3.286942, -0.068468, -0.051679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.307549, 0.167412, 0.270712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684747, 0.566614, -0.458335,
		-0.726958, 0.575503, -0.374604,
		0.051518, 0.589699, 0.805978,
		3.323004, 0.344321, 0.512505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.240231, 0.716534, -0.211274>,  <3.286942, -0.068468, -0.051679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.240231, 0.716534, -0.211274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.449493, 0.656784, 0.124344>,  <3.575051, 0.620934, 0.325714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.449493, 0.656784, 0.124344>,  <3.240231, 0.716534, -0.211274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.449493, 0.656784, 0.124344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746102, 0.556081, -0.366206,
		-0.411874, 0.817595, 0.402367,
		0.523157, -0.149376, 0.839044,
		3.606440, 0.611971, 0.376057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.490487, 1.320321, 0.015813>,  <3.240231, 0.716534, -0.211274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.490487, 1.320321, 0.015813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740120, 1.038483, 0.150908>,  <3.889899, 0.869380, 0.231964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740120, 1.038483, 0.150908>,  <3.490487, 1.320321, 0.015813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740120, 1.038483, 0.150908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781214, 0.554329, -0.287097,
		0.015070, 0.443016, 0.896387,
		0.624082, -0.704596, 0.337737,
		3.927345, 0.827104, 0.252229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.022464, 1.418217, 0.692261>,  <3.490487, 1.320321, 0.015813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.022464, 1.418217, 0.692261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198257, 1.140041, 0.464851>,  <4.303733, 0.973136, 0.328406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198257, 1.140041, 0.464851>,  <4.022464, 1.418217, 0.692261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.198257, 1.140041, 0.464851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731180, 0.644607, -0.223286,
		0.521756, -0.317563, 0.791785,
		0.439483, -0.695439, -0.568524,
		4.330102, 0.931410, 0.294294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.662757, 1.565801, 0.750544>,  <4.022464, 1.418217, 0.692261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.662757, 1.565801, 0.750544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664970, 1.310192, 0.442877>,  <4.666298, 1.156827, 0.258276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664970, 1.310192, 0.442877>,  <4.662757, 1.565801, 0.750544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.664970, 1.310192, 0.442877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822805, 0.440038, -0.359663,
		0.568296, -0.630886, 0.528225,
		0.005533, -0.639022, -0.769169,
		4.666630, 1.118486, 0.212126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354779, 1.454968, 0.584018>,  <4.662757, 1.565801, 0.750544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354779, 1.454968, 0.584018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.133347, 1.410793, 0.253841>,  <5.000487, 1.384288, 0.055736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.133347, 1.410793, 0.253841>,  <5.354779, 1.454968, 0.584018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.133347, 1.410793, 0.253841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509859, 0.738756, -0.440775,
		0.658478, -0.664863, -0.352653,
		-0.553580, -0.110437, -0.825441,
		4.967273, 1.377662, 0.006209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.805754, 1.418627, 0.056347>,  <5.354779, 1.454968, 0.584018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.805754, 1.418627, 0.056347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456718, 1.537472, -0.098734>,  <5.247297, 1.608779, -0.191783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456718, 1.537472, -0.098734>,  <5.805754, 1.418627, 0.056347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.456718, 1.537472, -0.098734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482196, 0.650634, -0.586653,
		0.077951, -0.698856, -0.711003,
		-0.872588, 0.297113, -0.387703,
		5.194942, 1.626606, -0.215045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.000700, 1.560248, -0.605610>,  <5.805754, 1.418627, 0.056347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.000700, 1.560248, -0.605610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.651566, 1.746708, -0.547834>,  <5.442085, 1.858584, -0.513169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.651566, 1.746708, -0.547834>,  <6.000700, 1.560248, -0.605610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.651566, 1.746708, -0.547834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389156, 0.843431, -0.370379,
		-0.294476, -0.267071, -0.917582,
		-0.872835, 0.466151, 0.144438,
		5.389715, 1.886553, -0.504503>
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
